; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE606_Unchecked_Loop_Condition__char_file_68_badData = dso_local global i8* null, align 8, !dbg !0
@CWE606_Unchecked_Loop_Condition__char_file_68_goodG2BData = dso_local global i8* null, align 8, !dbg !9
@CWE606_Unchecked_Loop_Condition__char_file_68_goodB2GData = dso_local global i8* null, align 8, !dbg !13
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
@.str.11 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.13 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.14 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11.18 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_68_bad() #0 !dbg !61 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !66, metadata !DIExpression()), !dbg !70
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !70
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !70
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !71
  store i8* %arraydecay, i8** %data, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !73, metadata !DIExpression()), !dbg !78
  %1 = load i8*, i8** %data, align 8, !dbg !79
  %call = call i64 @strlen(i8* %1) #7, !dbg !80
  store i64 %call, i64* %dataLen, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !81, metadata !DIExpression()), !dbg !137
  %2 = load i64, i64* %dataLen, align 8, !dbg !138
  %sub = sub i64 100, %2, !dbg !140
  %cmp = icmp ugt i64 %sub, 1, !dbg !141
  br i1 %cmp, label %if.then, label %if.end11, !dbg !142

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !143
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !145
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !146
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !148
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !149

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !150
  %5 = load i64, i64* %dataLen, align 8, !dbg !153
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !154
  %6 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub4 = sub i64 100, %6, !dbg !156
  %conv = trunc i64 %sub4 to i32, !dbg !157
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !158
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !159
  %cmp6 = icmp eq i8* %call5, null, !dbg !160
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !161

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !162
  %8 = load i8*, i8** %data, align 8, !dbg !164
  %9 = load i64, i64* %dataLen, align 8, !dbg !165
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !164
  store i8 0, i8* %arrayidx, align 1, !dbg !166
  br label %if.end, !dbg !167

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !168
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !169
  br label %if.end10, !dbg !170

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !171

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !172
  store i8* %11, i8** @CWE606_Unchecked_Loop_Condition__char_file_68_badData, align 8, !dbg !173
  call void (...) bitcast (void ()* @CWE606_Unchecked_Loop_Condition__char_file_68b_badSink to void (...)*)(), !dbg !174
  ret void, !dbg !175
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !176 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !179, metadata !DIExpression()), !dbg !180
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !180
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !180
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !181
  store i8* %arraydecay, i8** %data, align 8, !dbg !182
  %1 = load i8*, i8** %data, align 8, !dbg !183
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !184
  %2 = load i8*, i8** %data, align 8, !dbg !185
  store i8* %2, i8** @CWE606_Unchecked_Loop_Condition__char_file_68_goodG2BData, align 8, !dbg !186
  call void (...) bitcast (void ()* @CWE606_Unchecked_Loop_Condition__char_file_68b_goodG2BSink to void (...)*)(), !dbg !187
  ret void, !dbg !188
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !189 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !192, metadata !DIExpression()), !dbg !193
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !193
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !193
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !194
  store i8* %arraydecay, i8** %data, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !196, metadata !DIExpression()), !dbg !198
  %1 = load i8*, i8** %data, align 8, !dbg !199
  %call = call i64 @strlen(i8* %1) #7, !dbg !200
  store i64 %call, i64* %dataLen, align 8, !dbg !198
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !201, metadata !DIExpression()), !dbg !202
  %2 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub = sub i64 100, %2, !dbg !205
  %cmp = icmp ugt i64 %sub, 1, !dbg !206
  br i1 %cmp, label %if.then, label %if.end11, !dbg !207

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !208
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !210
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !211
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !213
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !214

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !215
  %5 = load i64, i64* %dataLen, align 8, !dbg !218
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !219
  %6 = load i64, i64* %dataLen, align 8, !dbg !220
  %sub4 = sub i64 100, %6, !dbg !221
  %conv = trunc i64 %sub4 to i32, !dbg !222
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !223
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !224
  %cmp6 = icmp eq i8* %call5, null, !dbg !225
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !226

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !227
  %8 = load i8*, i8** %data, align 8, !dbg !229
  %9 = load i64, i64* %dataLen, align 8, !dbg !230
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !229
  store i8 0, i8* %arrayidx, align 1, !dbg !231
  br label %if.end, !dbg !232

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !233
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !234
  br label %if.end10, !dbg !235

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !236

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !237
  store i8* %11, i8** @CWE606_Unchecked_Loop_Condition__char_file_68_goodB2GData, align 8, !dbg !238
  call void (...) bitcast (void ()* @CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink to void (...)*)(), !dbg !239
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_68_good() #0 !dbg !241 {
entry:
  call void @goodG2B(), !dbg !242
  call void @goodB2G(), !dbg !243
  ret void, !dbg !244
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_68b_badSink() #0 !dbg !245 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_file_68_badData, align 8, !dbg !248
  store i8* %0, i8** %data, align 8, !dbg !247
  call void @llvm.dbg.declare(metadata i32* %i, metadata !249, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %n, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !254, metadata !DIExpression()), !dbg !255
  %1 = load i8*, i8** %data, align 8, !dbg !256
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !258
  %cmp = icmp eq i32 %call, 1, !dbg !259
  br i1 %cmp, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !261
  store i32 0, i32* %i, align 4, !dbg !263
  br label %for.cond, !dbg !265

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !266
  %3 = load i32, i32* %n, align 4, !dbg !268
  %cmp1 = icmp slt i32 %2, %3, !dbg !269
  br i1 %cmp1, label %for.body, label %for.end, !dbg !270

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !271
  %inc = add nsw i32 %4, 1, !dbg !271
  store i32 %inc, i32* %intVariable, align 4, !dbg !271
  br label %for.inc, !dbg !273

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !274
  %inc2 = add nsw i32 %5, 1, !dbg !274
  store i32 %inc2, i32* %i, align 4, !dbg !274
  br label %for.cond, !dbg !275, !llvm.loop !276

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !279
  call void @printIntLine(i32 %6), !dbg !280
  br label %if.end, !dbg !281

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !282
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_68b_goodG2BSink() #0 !dbg !283 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !284, metadata !DIExpression()), !dbg !285
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_file_68_goodG2BData, align 8, !dbg !286
  store i8* %0, i8** %data, align 8, !dbg !285
  call void @llvm.dbg.declare(metadata i32* %i, metadata !287, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata i32* %n, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !292, metadata !DIExpression()), !dbg !293
  %1 = load i8*, i8** %data, align 8, !dbg !294
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !296
  %cmp = icmp eq i32 %call, 1, !dbg !297
  br i1 %cmp, label %if.then, label %if.end, !dbg !298

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !299
  store i32 0, i32* %i, align 4, !dbg !301
  br label %for.cond, !dbg !303

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !304
  %3 = load i32, i32* %n, align 4, !dbg !306
  %cmp1 = icmp slt i32 %2, %3, !dbg !307
  br i1 %cmp1, label %for.body, label %for.end, !dbg !308

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !309
  %inc = add nsw i32 %4, 1, !dbg !309
  store i32 %inc, i32* %intVariable, align 4, !dbg !309
  br label %for.inc, !dbg !311

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !312
  %inc2 = add nsw i32 %5, 1, !dbg !312
  store i32 %inc2, i32* %i, align 4, !dbg !312
  br label %for.cond, !dbg !313, !llvm.loop !314

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !316
  call void @printIntLine(i32 %6), !dbg !317
  br label %if.end, !dbg !318

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink() #0 !dbg !320 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_file_68_goodB2GData, align 8, !dbg !323
  store i8* %0, i8** %data, align 8, !dbg !322
  call void @llvm.dbg.declare(metadata i32* %i, metadata !324, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata i32* %n, metadata !327, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !329, metadata !DIExpression()), !dbg !330
  %1 = load i8*, i8** %data, align 8, !dbg !331
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !333
  %cmp = icmp eq i32 %call, 1, !dbg !334
  br i1 %cmp, label %if.then, label %if.end5, !dbg !335

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !336
  %cmp1 = icmp slt i32 %2, 10000, !dbg !339
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !340

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !341
  store i32 0, i32* %i, align 4, !dbg !343
  br label %for.cond, !dbg !345

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !346
  %4 = load i32, i32* %n, align 4, !dbg !348
  %cmp3 = icmp slt i32 %3, %4, !dbg !349
  br i1 %cmp3, label %for.body, label %for.end, !dbg !350

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !351
  %inc = add nsw i32 %5, 1, !dbg !351
  store i32 %inc, i32* %intVariable, align 4, !dbg !351
  br label %for.inc, !dbg !353

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !354
  %inc4 = add nsw i32 %6, 1, !dbg !354
  store i32 %inc4, i32* %i, align 4, !dbg !354
  br label %for.cond, !dbg !355, !llvm.loop !356

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !358
  call void @printIntLine(i32 %7), !dbg !359
  br label %if.end, !dbg !360

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !361

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !363 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !366, metadata !DIExpression()), !dbg !367
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)), !dbg !368
  %0 = load i8*, i8** %line.addr, align 8, !dbg !369
  %cmp = icmp ne i8* %0, null, !dbg !371
  br i1 %cmp, label %if.then, label %if.end, !dbg !372

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !373
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !375
  br label %if.end, !dbg !376

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.13, i64 0, i64 0)), !dbg !377
  ret void, !dbg !378
}

declare dso_local i32 @printf(i8*, ...) #4

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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !388
  br label %if.end, !dbg !389

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !390
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !391 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load i32*, i32** %line.addr, align 8, !dbg !398
  %cmp = icmp ne i32* %0, null, !dbg !400
  br i1 %cmp, label %if.then, label %if.end, !dbg !401

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !402
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.14, i64 0, i64 0), i32* %1), !dbg !404
  br label %if.end, !dbg !405

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !406
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !407 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.17, i64 0, i64 0), i32 %0), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !415 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !419, metadata !DIExpression()), !dbg !420
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !421
  %conv = sext i16 %0 to i32, !dbg !421
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !424 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !430
  %conv = fpext float %0 to double, !dbg !430
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !431
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !433 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !436, metadata !DIExpression()), !dbg !437
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !438
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !439
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !441 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !447, metadata !DIExpression()), !dbg !448
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !449
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !450
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !452 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !457
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !458
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !460 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !463, metadata !DIExpression()), !dbg !464
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !465
  %conv = sext i8 %0 to i32, !dbg !465
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !466
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !468 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !473, metadata !DIExpression()), !dbg !477
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !478
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !479
  store i32 %0, i32* %arrayidx, align 4, !dbg !480
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !481
  store i32 0, i32* %arrayidx1, align 4, !dbg !482
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !483
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !486 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !489, metadata !DIExpression()), !dbg !490
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !491
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11.18, i64 0, i64 0), i32 %0), !dbg !492
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !494 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !499
  %conv = zext i8 %0 to i32, !dbg !499
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !500
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !502 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !508
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !509
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !511 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !521, metadata !DIExpression()), !dbg !522
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !523
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !524
  %1 = load i32, i32* %intOne, align 4, !dbg !524
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !525
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !526
  %3 = load i32, i32* %intTwo, align 4, !dbg !526
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !527
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !529 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !533, metadata !DIExpression()), !dbg !534
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata i64* %i, metadata !537, metadata !DIExpression()), !dbg !538
  store i64 0, i64* %i, align 8, !dbg !539
  br label %for.cond, !dbg !541

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !542
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !544
  %cmp = icmp ult i64 %0, %1, !dbg !545
  br i1 %cmp, label %for.body, label %for.end, !dbg !546

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !547
  %3 = load i64, i64* %i, align 8, !dbg !549
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !547
  %4 = load i8, i8* %arrayidx, align 1, !dbg !547
  %conv = zext i8 %4 to i32, !dbg !547
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !550
  br label %for.inc, !dbg !551

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !552
  %inc = add i64 %5, 1, !dbg !552
  store i64 %inc, i64* %i, align 8, !dbg !552
  br label %for.cond, !dbg !553, !llvm.loop !554

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !556
  ret void, !dbg !557
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !558 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !561, metadata !DIExpression()), !dbg !562
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !563, metadata !DIExpression()), !dbg !564
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !565, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !567, metadata !DIExpression()), !dbg !568
  store i64 0, i64* %numWritten, align 8, !dbg !568
  br label %while.cond, !dbg !569

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !570
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !571
  %cmp = icmp ult i64 %0, %1, !dbg !572
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !573

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !574
  %2 = load i16*, i16** %call, align 8, !dbg !574
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !574
  %4 = load i64, i64* %numWritten, align 8, !dbg !574
  %mul = mul i64 2, %4, !dbg !574
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !574
  %5 = load i8, i8* %arrayidx, align 1, !dbg !574
  %conv = sext i8 %5 to i32, !dbg !574
  %idxprom = sext i32 %conv to i64, !dbg !574
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !574
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !574
  %conv2 = zext i16 %6 to i32, !dbg !574
  %and = and i32 %conv2, 4096, !dbg !574
  %tobool = icmp ne i32 %and, 0, !dbg !574
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !575

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !576
  %7 = load i16*, i16** %call3, align 8, !dbg !576
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !576
  %9 = load i64, i64* %numWritten, align 8, !dbg !576
  %mul4 = mul i64 2, %9, !dbg !576
  %add = add i64 %mul4, 1, !dbg !576
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !576
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !576
  %conv6 = sext i8 %10 to i32, !dbg !576
  %idxprom7 = sext i32 %conv6 to i64, !dbg !576
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !576
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !576
  %conv9 = zext i16 %11 to i32, !dbg !576
  %and10 = and i32 %conv9, 4096, !dbg !576
  %tobool11 = icmp ne i32 %and10, 0, !dbg !575
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !577
  br i1 %12, label %while.body, label %while.end, !dbg !569

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !578, metadata !DIExpression()), !dbg !580
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !581
  %14 = load i64, i64* %numWritten, align 8, !dbg !582
  %mul12 = mul i64 2, %14, !dbg !583
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !581
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !584
  %15 = load i32, i32* %byte, align 4, !dbg !585
  %conv15 = trunc i32 %15 to i8, !dbg !586
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !587
  %17 = load i64, i64* %numWritten, align 8, !dbg !588
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !587
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !589
  %18 = load i64, i64* %numWritten, align 8, !dbg !590
  %inc = add i64 %18, 1, !dbg !590
  store i64 %inc, i64* %numWritten, align 8, !dbg !590
  br label %while.cond, !dbg !569, !llvm.loop !591

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !593
  ret i64 %19, !dbg !594
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !595 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !598, metadata !DIExpression()), !dbg !599
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !600, metadata !DIExpression()), !dbg !601
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !602, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !604, metadata !DIExpression()), !dbg !605
  store i64 0, i64* %numWritten, align 8, !dbg !605
  br label %while.cond, !dbg !606

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !607
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !608
  %cmp = icmp ult i64 %0, %1, !dbg !609
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !610

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !611
  %3 = load i64, i64* %numWritten, align 8, !dbg !612
  %mul = mul i64 2, %3, !dbg !613
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !611
  %4 = load i32, i32* %arrayidx, align 4, !dbg !611
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !614
  %tobool = icmp ne i32 %call, 0, !dbg !614
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !615

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !616
  %6 = load i64, i64* %numWritten, align 8, !dbg !617
  %mul1 = mul i64 2, %6, !dbg !618
  %add = add i64 %mul1, 1, !dbg !619
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !616
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !616
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !620
  %tobool4 = icmp ne i32 %call3, 0, !dbg !615
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !621
  br i1 %8, label %while.body, label %while.end, !dbg !606

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !622, metadata !DIExpression()), !dbg !624
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !625
  %10 = load i64, i64* %numWritten, align 8, !dbg !626
  %mul5 = mul i64 2, %10, !dbg !627
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !625
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !628
  %11 = load i32, i32* %byte, align 4, !dbg !629
  %conv = trunc i32 %11 to i8, !dbg !630
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !631
  %13 = load i64, i64* %numWritten, align 8, !dbg !632
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !631
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !633
  %14 = load i64, i64* %numWritten, align 8, !dbg !634
  %inc = add i64 %14, 1, !dbg !634
  store i64 %inc, i64* %numWritten, align 8, !dbg !634
  br label %while.cond, !dbg !606, !llvm.loop !635

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !637
  ret i64 %15, !dbg !638
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !639 {
entry:
  ret i32 1, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !643 {
entry:
  ret i32 0, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !645 {
entry:
  %call = call i32 @rand() #8, !dbg !646
  %rem = srem i32 %call, 2, !dbg !647
  ret i32 %rem, !dbg !648
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !683 {
entry:
  ret void, !dbg !684
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

!llvm.dbg.cu = !{!2, !55, !17}
!llvm.ident = !{!57, !57, !57}
!llvm.module.flags = !{!58, !59, !60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_file_68_badData", scope: !2, file: !3, line: 33, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_114/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_file_68_goodG2BData", scope: !2, file: !3, line: 34, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_file_68_goodB2GData", scope: !2, file: !3, line: 35, type: !11, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !7, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_114/source_code")
!19 = !{!20}
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 46, baseType: !22, size: 32, elements: !23)
!21 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!22 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!23 = !{!24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35}
!24 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!29 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!32 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!34 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!35 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!36 = !{!6, !7, !37, !38}
!37 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!38 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !{!15, !40, !42, !44, !46, !48, !50, !52}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !17, file: !18, line: 175, type: !7, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !17, file: !18, line: 176, type: !7, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalTrue", scope: !17, file: !18, line: 181, type: !7, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalFalse", scope: !17, file: !18, line: 182, type: !7, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalFive", scope: !17, file: !18, line: 183, type: !7, isLocal: false, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "globalArgc", scope: !17, file: !18, line: 214, type: !7, isLocal: false, isDefinition: true)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "globalArgv", scope: !17, file: !18, line: 215, type: !54, isLocal: false, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!56 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_68b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_114/source_code")
!57 = !{!"clang version 12.0.0"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_68_bad", scope: !3, file: !3, line: 41, type: !62, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{null}
!64 = !DILocalVariable(name: "data", scope: !61, file: !3, line: 43, type: !11)
!65 = !DILocation(line: 43, column: 12, scope: !61)
!66 = !DILocalVariable(name: "dataBuffer", scope: !61, file: !3, line: 44, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 100)
!70 = !DILocation(line: 44, column: 10, scope: !61)
!71 = !DILocation(line: 45, column: 12, scope: !61)
!72 = !DILocation(line: 45, column: 10, scope: !61)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !3, line: 48, type: !75)
!74 = distinct !DILexicalBlock(scope: !61, file: !3, line: 46, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 48, column: 16, scope: !74)
!79 = !DILocation(line: 48, column: 33, scope: !74)
!80 = !DILocation(line: 48, column: 26, scope: !74)
!81 = !DILocalVariable(name: "pFile", scope: !74, file: !3, line: 49, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !84, line: 7, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !86, line: 49, size: 1728, elements: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !103, !105, !106, !107, !111, !112, !114, !118, !121, !123, !126, !129, !130, !131, !132, !133}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !85, file: !86, line: 51, baseType: !7, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !85, file: !86, line: 54, baseType: !11, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !85, file: !86, line: 55, baseType: !11, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !85, file: !86, line: 56, baseType: !11, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !85, file: !86, line: 57, baseType: !11, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !85, file: !86, line: 58, baseType: !11, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !85, file: !86, line: 59, baseType: !11, size: 64, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !85, file: !86, line: 60, baseType: !11, size: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !85, file: !86, line: 61, baseType: !11, size: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !85, file: !86, line: 64, baseType: !11, size: 64, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !85, file: !86, line: 65, baseType: !11, size: 64, offset: 640)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !85, file: !86, line: 66, baseType: !11, size: 64, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !85, file: !86, line: 68, baseType: !101, size: 64, offset: 768)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !86, line: 36, flags: DIFlagFwdDecl)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !85, file: !86, line: 70, baseType: !104, size: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !85, file: !86, line: 72, baseType: !7, size: 32, offset: 896)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !85, file: !86, line: 73, baseType: !7, size: 32, offset: 928)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !85, file: !86, line: 74, baseType: !108, size: 64, offset: 960)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !109, line: 152, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!110 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !85, file: !86, line: 77, baseType: !37, size: 16, offset: 1024)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !85, file: !86, line: 78, baseType: !113, size: 8, offset: 1040)
!113 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !85, file: !86, line: 79, baseType: !115, size: 8, offset: 1048)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8, elements: !116)
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
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !85, file: !86, line: 94, baseType: !6, size: 64, offset: 1408)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !85, file: !86, line: 95, baseType: !75, size: 64, offset: 1472)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !85, file: !86, line: 96, baseType: !7, size: 32, offset: 1536)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !85, file: !86, line: 98, baseType: !134, size: 160, offset: 1568)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 160, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 20)
!137 = !DILocation(line: 49, column: 16, scope: !74)
!138 = !DILocation(line: 51, column: 17, scope: !139)
!139 = distinct !DILexicalBlock(scope: !74, file: !3, line: 51, column: 13)
!140 = !DILocation(line: 51, column: 16, scope: !139)
!141 = !DILocation(line: 51, column: 25, scope: !139)
!142 = !DILocation(line: 51, column: 13, scope: !74)
!143 = !DILocation(line: 53, column: 21, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !3, line: 52, column: 9)
!145 = !DILocation(line: 53, column: 19, scope: !144)
!146 = !DILocation(line: 54, column: 17, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !3, line: 54, column: 17)
!148 = !DILocation(line: 54, column: 23, scope: !147)
!149 = !DILocation(line: 54, column: 17, scope: !144)
!150 = !DILocation(line: 57, column: 27, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 57, column: 21)
!152 = distinct !DILexicalBlock(scope: !147, file: !3, line: 55, column: 13)
!153 = !DILocation(line: 57, column: 32, scope: !151)
!154 = !DILocation(line: 57, column: 31, scope: !151)
!155 = !DILocation(line: 57, column: 51, scope: !151)
!156 = !DILocation(line: 57, column: 50, scope: !151)
!157 = !DILocation(line: 57, column: 41, scope: !151)
!158 = !DILocation(line: 57, column: 61, scope: !151)
!159 = !DILocation(line: 57, column: 21, scope: !151)
!160 = !DILocation(line: 57, column: 68, scope: !151)
!161 = !DILocation(line: 57, column: 21, scope: !152)
!162 = !DILocation(line: 59, column: 21, scope: !163)
!163 = distinct !DILexicalBlock(scope: !151, file: !3, line: 58, column: 17)
!164 = !DILocation(line: 61, column: 21, scope: !163)
!165 = !DILocation(line: 61, column: 26, scope: !163)
!166 = !DILocation(line: 61, column: 35, scope: !163)
!167 = !DILocation(line: 62, column: 17, scope: !163)
!168 = !DILocation(line: 63, column: 24, scope: !152)
!169 = !DILocation(line: 63, column: 17, scope: !152)
!170 = !DILocation(line: 64, column: 13, scope: !152)
!171 = !DILocation(line: 65, column: 9, scope: !144)
!172 = !DILocation(line: 67, column: 61, scope: !61)
!173 = !DILocation(line: 67, column: 59, scope: !61)
!174 = !DILocation(line: 68, column: 5, scope: !61)
!175 = !DILocation(line: 69, column: 1, scope: !61)
!176 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 78, type: !62, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!177 = !DILocalVariable(name: "data", scope: !176, file: !3, line: 80, type: !11)
!178 = !DILocation(line: 80, column: 12, scope: !176)
!179 = !DILocalVariable(name: "dataBuffer", scope: !176, file: !3, line: 81, type: !67)
!180 = !DILocation(line: 81, column: 10, scope: !176)
!181 = !DILocation(line: 82, column: 12, scope: !176)
!182 = !DILocation(line: 82, column: 10, scope: !176)
!183 = !DILocation(line: 84, column: 12, scope: !176)
!184 = !DILocation(line: 84, column: 5, scope: !176)
!185 = !DILocation(line: 85, column: 65, scope: !176)
!186 = !DILocation(line: 85, column: 63, scope: !176)
!187 = !DILocation(line: 86, column: 5, scope: !176)
!188 = !DILocation(line: 87, column: 1, scope: !176)
!189 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 90, type: !62, scopeLine: 91, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!190 = !DILocalVariable(name: "data", scope: !189, file: !3, line: 92, type: !11)
!191 = !DILocation(line: 92, column: 12, scope: !189)
!192 = !DILocalVariable(name: "dataBuffer", scope: !189, file: !3, line: 93, type: !67)
!193 = !DILocation(line: 93, column: 10, scope: !189)
!194 = !DILocation(line: 94, column: 12, scope: !189)
!195 = !DILocation(line: 94, column: 10, scope: !189)
!196 = !DILocalVariable(name: "dataLen", scope: !197, file: !3, line: 97, type: !75)
!197 = distinct !DILexicalBlock(scope: !189, file: !3, line: 95, column: 5)
!198 = !DILocation(line: 97, column: 16, scope: !197)
!199 = !DILocation(line: 97, column: 33, scope: !197)
!200 = !DILocation(line: 97, column: 26, scope: !197)
!201 = !DILocalVariable(name: "pFile", scope: !197, file: !3, line: 98, type: !82)
!202 = !DILocation(line: 98, column: 16, scope: !197)
!203 = !DILocation(line: 100, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !197, file: !3, line: 100, column: 13)
!205 = !DILocation(line: 100, column: 16, scope: !204)
!206 = !DILocation(line: 100, column: 25, scope: !204)
!207 = !DILocation(line: 100, column: 13, scope: !197)
!208 = !DILocation(line: 102, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !3, line: 101, column: 9)
!210 = !DILocation(line: 102, column: 19, scope: !209)
!211 = !DILocation(line: 103, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !3, line: 103, column: 17)
!213 = !DILocation(line: 103, column: 23, scope: !212)
!214 = !DILocation(line: 103, column: 17, scope: !209)
!215 = !DILocation(line: 106, column: 27, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !3, line: 106, column: 21)
!217 = distinct !DILexicalBlock(scope: !212, file: !3, line: 104, column: 13)
!218 = !DILocation(line: 106, column: 32, scope: !216)
!219 = !DILocation(line: 106, column: 31, scope: !216)
!220 = !DILocation(line: 106, column: 51, scope: !216)
!221 = !DILocation(line: 106, column: 50, scope: !216)
!222 = !DILocation(line: 106, column: 41, scope: !216)
!223 = !DILocation(line: 106, column: 61, scope: !216)
!224 = !DILocation(line: 106, column: 21, scope: !216)
!225 = !DILocation(line: 106, column: 68, scope: !216)
!226 = !DILocation(line: 106, column: 21, scope: !217)
!227 = !DILocation(line: 108, column: 21, scope: !228)
!228 = distinct !DILexicalBlock(scope: !216, file: !3, line: 107, column: 17)
!229 = !DILocation(line: 110, column: 21, scope: !228)
!230 = !DILocation(line: 110, column: 26, scope: !228)
!231 = !DILocation(line: 110, column: 35, scope: !228)
!232 = !DILocation(line: 111, column: 17, scope: !228)
!233 = !DILocation(line: 112, column: 24, scope: !217)
!234 = !DILocation(line: 112, column: 17, scope: !217)
!235 = !DILocation(line: 113, column: 13, scope: !217)
!236 = !DILocation(line: 114, column: 9, scope: !209)
!237 = !DILocation(line: 116, column: 65, scope: !189)
!238 = !DILocation(line: 116, column: 63, scope: !189)
!239 = !DILocation(line: 117, column: 5, scope: !189)
!240 = !DILocation(line: 118, column: 1, scope: !189)
!241 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_68_good", scope: !3, file: !3, line: 120, type: !62, scopeLine: 121, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!242 = !DILocation(line: 122, column: 5, scope: !241)
!243 = !DILocation(line: 123, column: 5, scope: !241)
!244 = !DILocation(line: 124, column: 1, scope: !241)
!245 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_68b_badSink", scope: !56, file: !56, line: 38, type: !62, scopeLine: 39, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!246 = !DILocalVariable(name: "data", scope: !245, file: !56, line: 40, type: !11)
!247 = !DILocation(line: 40, column: 12, scope: !245)
!248 = !DILocation(line: 40, column: 19, scope: !245)
!249 = !DILocalVariable(name: "i", scope: !250, file: !56, line: 42, type: !7)
!250 = distinct !DILexicalBlock(scope: !245, file: !56, line: 41, column: 5)
!251 = !DILocation(line: 42, column: 13, scope: !250)
!252 = !DILocalVariable(name: "n", scope: !250, file: !56, line: 42, type: !7)
!253 = !DILocation(line: 42, column: 16, scope: !250)
!254 = !DILocalVariable(name: "intVariable", scope: !250, file: !56, line: 42, type: !7)
!255 = !DILocation(line: 42, column: 19, scope: !250)
!256 = !DILocation(line: 43, column: 20, scope: !257)
!257 = distinct !DILexicalBlock(scope: !250, file: !56, line: 43, column: 13)
!258 = !DILocation(line: 43, column: 13, scope: !257)
!259 = !DILocation(line: 43, column: 36, scope: !257)
!260 = !DILocation(line: 43, column: 13, scope: !250)
!261 = !DILocation(line: 46, column: 25, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !56, line: 44, column: 9)
!263 = !DILocation(line: 47, column: 20, scope: !264)
!264 = distinct !DILexicalBlock(scope: !262, file: !56, line: 47, column: 13)
!265 = !DILocation(line: 47, column: 18, scope: !264)
!266 = !DILocation(line: 47, column: 25, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !56, line: 47, column: 13)
!268 = !DILocation(line: 47, column: 29, scope: !267)
!269 = !DILocation(line: 47, column: 27, scope: !267)
!270 = !DILocation(line: 47, column: 13, scope: !264)
!271 = !DILocation(line: 50, column: 28, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !56, line: 48, column: 13)
!273 = !DILocation(line: 51, column: 13, scope: !272)
!274 = !DILocation(line: 47, column: 33, scope: !267)
!275 = !DILocation(line: 47, column: 13, scope: !267)
!276 = distinct !{!276, !270, !277, !278}
!277 = !DILocation(line: 51, column: 13, scope: !264)
!278 = !{!"llvm.loop.mustprogress"}
!279 = !DILocation(line: 52, column: 26, scope: !262)
!280 = !DILocation(line: 52, column: 13, scope: !262)
!281 = !DILocation(line: 53, column: 9, scope: !262)
!282 = !DILocation(line: 55, column: 1, scope: !245)
!283 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_68b_goodG2BSink", scope: !56, file: !56, line: 62, type: !62, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!284 = !DILocalVariable(name: "data", scope: !283, file: !56, line: 64, type: !11)
!285 = !DILocation(line: 64, column: 12, scope: !283)
!286 = !DILocation(line: 64, column: 19, scope: !283)
!287 = !DILocalVariable(name: "i", scope: !288, file: !56, line: 66, type: !7)
!288 = distinct !DILexicalBlock(scope: !283, file: !56, line: 65, column: 5)
!289 = !DILocation(line: 66, column: 13, scope: !288)
!290 = !DILocalVariable(name: "n", scope: !288, file: !56, line: 66, type: !7)
!291 = !DILocation(line: 66, column: 16, scope: !288)
!292 = !DILocalVariable(name: "intVariable", scope: !288, file: !56, line: 66, type: !7)
!293 = !DILocation(line: 66, column: 19, scope: !288)
!294 = !DILocation(line: 67, column: 20, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !56, line: 67, column: 13)
!296 = !DILocation(line: 67, column: 13, scope: !295)
!297 = !DILocation(line: 67, column: 36, scope: !295)
!298 = !DILocation(line: 67, column: 13, scope: !288)
!299 = !DILocation(line: 70, column: 25, scope: !300)
!300 = distinct !DILexicalBlock(scope: !295, file: !56, line: 68, column: 9)
!301 = !DILocation(line: 71, column: 20, scope: !302)
!302 = distinct !DILexicalBlock(scope: !300, file: !56, line: 71, column: 13)
!303 = !DILocation(line: 71, column: 18, scope: !302)
!304 = !DILocation(line: 71, column: 25, scope: !305)
!305 = distinct !DILexicalBlock(scope: !302, file: !56, line: 71, column: 13)
!306 = !DILocation(line: 71, column: 29, scope: !305)
!307 = !DILocation(line: 71, column: 27, scope: !305)
!308 = !DILocation(line: 71, column: 13, scope: !302)
!309 = !DILocation(line: 74, column: 28, scope: !310)
!310 = distinct !DILexicalBlock(scope: !305, file: !56, line: 72, column: 13)
!311 = !DILocation(line: 75, column: 13, scope: !310)
!312 = !DILocation(line: 71, column: 33, scope: !305)
!313 = !DILocation(line: 71, column: 13, scope: !305)
!314 = distinct !{!314, !308, !315, !278}
!315 = !DILocation(line: 75, column: 13, scope: !302)
!316 = !DILocation(line: 76, column: 26, scope: !300)
!317 = !DILocation(line: 76, column: 13, scope: !300)
!318 = !DILocation(line: 77, column: 9, scope: !300)
!319 = !DILocation(line: 79, column: 1, scope: !283)
!320 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_68b_goodB2GSink", scope: !56, file: !56, line: 82, type: !62, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!321 = !DILocalVariable(name: "data", scope: !320, file: !56, line: 84, type: !11)
!322 = !DILocation(line: 84, column: 12, scope: !320)
!323 = !DILocation(line: 84, column: 19, scope: !320)
!324 = !DILocalVariable(name: "i", scope: !325, file: !56, line: 86, type: !7)
!325 = distinct !DILexicalBlock(scope: !320, file: !56, line: 85, column: 5)
!326 = !DILocation(line: 86, column: 13, scope: !325)
!327 = !DILocalVariable(name: "n", scope: !325, file: !56, line: 86, type: !7)
!328 = !DILocation(line: 86, column: 16, scope: !325)
!329 = !DILocalVariable(name: "intVariable", scope: !325, file: !56, line: 86, type: !7)
!330 = !DILocation(line: 86, column: 19, scope: !325)
!331 = !DILocation(line: 87, column: 20, scope: !332)
!332 = distinct !DILexicalBlock(scope: !325, file: !56, line: 87, column: 13)
!333 = !DILocation(line: 87, column: 13, scope: !332)
!334 = !DILocation(line: 87, column: 36, scope: !332)
!335 = !DILocation(line: 87, column: 13, scope: !325)
!336 = !DILocation(line: 90, column: 17, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !56, line: 90, column: 17)
!338 = distinct !DILexicalBlock(scope: !332, file: !56, line: 88, column: 9)
!339 = !DILocation(line: 90, column: 19, scope: !337)
!340 = !DILocation(line: 90, column: 17, scope: !338)
!341 = !DILocation(line: 92, column: 29, scope: !342)
!342 = distinct !DILexicalBlock(scope: !337, file: !56, line: 91, column: 13)
!343 = !DILocation(line: 93, column: 24, scope: !344)
!344 = distinct !DILexicalBlock(scope: !342, file: !56, line: 93, column: 17)
!345 = !DILocation(line: 93, column: 22, scope: !344)
!346 = !DILocation(line: 93, column: 29, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !56, line: 93, column: 17)
!348 = !DILocation(line: 93, column: 33, scope: !347)
!349 = !DILocation(line: 93, column: 31, scope: !347)
!350 = !DILocation(line: 93, column: 17, scope: !344)
!351 = !DILocation(line: 96, column: 32, scope: !352)
!352 = distinct !DILexicalBlock(scope: !347, file: !56, line: 94, column: 17)
!353 = !DILocation(line: 97, column: 17, scope: !352)
!354 = !DILocation(line: 93, column: 37, scope: !347)
!355 = !DILocation(line: 93, column: 17, scope: !347)
!356 = distinct !{!356, !350, !357, !278}
!357 = !DILocation(line: 97, column: 17, scope: !344)
!358 = !DILocation(line: 98, column: 30, scope: !342)
!359 = !DILocation(line: 98, column: 17, scope: !342)
!360 = !DILocation(line: 99, column: 13, scope: !342)
!361 = !DILocation(line: 100, column: 9, scope: !338)
!362 = !DILocation(line: 102, column: 1, scope: !320)
!363 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !364, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !11}
!366 = !DILocalVariable(name: "line", arg: 1, scope: !363, file: !18, line: 11, type: !11)
!367 = !DILocation(line: 11, column: 25, scope: !363)
!368 = !DILocation(line: 13, column: 1, scope: !363)
!369 = !DILocation(line: 14, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !363, file: !18, line: 14, column: 8)
!371 = !DILocation(line: 14, column: 13, scope: !370)
!372 = !DILocation(line: 14, column: 8, scope: !363)
!373 = !DILocation(line: 16, column: 24, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !18, line: 15, column: 5)
!375 = !DILocation(line: 16, column: 9, scope: !374)
!376 = !DILocation(line: 17, column: 5, scope: !374)
!377 = !DILocation(line: 18, column: 5, scope: !363)
!378 = !DILocation(line: 19, column: 1, scope: !363)
!379 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !364, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!380 = !DILocalVariable(name: "line", arg: 1, scope: !379, file: !18, line: 20, type: !11)
!381 = !DILocation(line: 20, column: 29, scope: !379)
!382 = !DILocation(line: 22, column: 8, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !18, line: 22, column: 8)
!384 = !DILocation(line: 22, column: 13, scope: !383)
!385 = !DILocation(line: 22, column: 8, scope: !379)
!386 = !DILocation(line: 24, column: 24, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !18, line: 23, column: 5)
!388 = !DILocation(line: 24, column: 9, scope: !387)
!389 = !DILocation(line: 25, column: 5, scope: !387)
!390 = !DILocation(line: 26, column: 1, scope: !379)
!391 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !392, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !7)
!396 = !DILocalVariable(name: "line", arg: 1, scope: !391, file: !18, line: 27, type: !394)
!397 = !DILocation(line: 27, column: 29, scope: !391)
!398 = !DILocation(line: 29, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !391, file: !18, line: 29, column: 8)
!400 = !DILocation(line: 29, column: 13, scope: !399)
!401 = !DILocation(line: 29, column: 8, scope: !391)
!402 = !DILocation(line: 31, column: 27, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !18, line: 30, column: 5)
!404 = !DILocation(line: 31, column: 9, scope: !403)
!405 = !DILocation(line: 32, column: 5, scope: !403)
!406 = !DILocation(line: 33, column: 1, scope: !391)
!407 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !408, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !7}
!410 = !DILocalVariable(name: "intNumber", arg: 1, scope: !407, file: !18, line: 35, type: !7)
!411 = !DILocation(line: 35, column: 24, scope: !407)
!412 = !DILocation(line: 37, column: 20, scope: !407)
!413 = !DILocation(line: 37, column: 5, scope: !407)
!414 = !DILocation(line: 38, column: 1, scope: !407)
!415 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !416, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !418}
!418 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!419 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !415, file: !18, line: 40, type: !418)
!420 = !DILocation(line: 40, column: 28, scope: !415)
!421 = !DILocation(line: 42, column: 21, scope: !415)
!422 = !DILocation(line: 42, column: 5, scope: !415)
!423 = !DILocation(line: 43, column: 1, scope: !415)
!424 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !425, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !427}
!427 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!428 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !424, file: !18, line: 45, type: !427)
!429 = !DILocation(line: 45, column: 28, scope: !424)
!430 = !DILocation(line: 47, column: 20, scope: !424)
!431 = !DILocation(line: 47, column: 5, scope: !424)
!432 = !DILocation(line: 48, column: 1, scope: !424)
!433 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !434, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !110}
!436 = !DILocalVariable(name: "longNumber", arg: 1, scope: !433, file: !18, line: 50, type: !110)
!437 = !DILocation(line: 50, column: 26, scope: !433)
!438 = !DILocation(line: 52, column: 21, scope: !433)
!439 = !DILocation(line: 52, column: 5, scope: !433)
!440 = !DILocation(line: 53, column: 1, scope: !433)
!441 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !442, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !444}
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !445, line: 27, baseType: !446)
!445 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !109, line: 44, baseType: !110)
!447 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !441, file: !18, line: 55, type: !444)
!448 = !DILocation(line: 55, column: 33, scope: !441)
!449 = !DILocation(line: 57, column: 29, scope: !441)
!450 = !DILocation(line: 57, column: 5, scope: !441)
!451 = !DILocation(line: 58, column: 1, scope: !441)
!452 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !453, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !75}
!455 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !452, file: !18, line: 60, type: !75)
!456 = !DILocation(line: 60, column: 29, scope: !452)
!457 = !DILocation(line: 62, column: 21, scope: !452)
!458 = !DILocation(line: 62, column: 5, scope: !452)
!459 = !DILocation(line: 63, column: 1, scope: !452)
!460 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !461, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !12}
!463 = !DILocalVariable(name: "charHex", arg: 1, scope: !460, file: !18, line: 65, type: !12)
!464 = !DILocation(line: 65, column: 29, scope: !460)
!465 = !DILocation(line: 67, column: 22, scope: !460)
!466 = !DILocation(line: 67, column: 5, scope: !460)
!467 = !DILocation(line: 68, column: 1, scope: !460)
!468 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !469, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !395}
!471 = !DILocalVariable(name: "wideChar", arg: 1, scope: !468, file: !18, line: 70, type: !395)
!472 = !DILocation(line: 70, column: 29, scope: !468)
!473 = !DILocalVariable(name: "s", scope: !468, file: !18, line: 74, type: !474)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 64, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 2)
!477 = !DILocation(line: 74, column: 13, scope: !468)
!478 = !DILocation(line: 75, column: 16, scope: !468)
!479 = !DILocation(line: 75, column: 9, scope: !468)
!480 = !DILocation(line: 75, column: 14, scope: !468)
!481 = !DILocation(line: 76, column: 9, scope: !468)
!482 = !DILocation(line: 76, column: 14, scope: !468)
!483 = !DILocation(line: 77, column: 21, scope: !468)
!484 = !DILocation(line: 77, column: 5, scope: !468)
!485 = !DILocation(line: 78, column: 1, scope: !468)
!486 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !487, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !22}
!489 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !486, file: !18, line: 80, type: !22)
!490 = !DILocation(line: 80, column: 33, scope: !486)
!491 = !DILocation(line: 82, column: 20, scope: !486)
!492 = !DILocation(line: 82, column: 5, scope: !486)
!493 = !DILocation(line: 83, column: 1, scope: !486)
!494 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !495, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !38}
!497 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !494, file: !18, line: 85, type: !38)
!498 = !DILocation(line: 85, column: 45, scope: !494)
!499 = !DILocation(line: 87, column: 22, scope: !494)
!500 = !DILocation(line: 87, column: 5, scope: !494)
!501 = !DILocation(line: 88, column: 1, scope: !494)
!502 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !503, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !505}
!505 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!506 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !502, file: !18, line: 90, type: !505)
!507 = !DILocation(line: 90, column: 29, scope: !502)
!508 = !DILocation(line: 92, column: 20, scope: !502)
!509 = !DILocation(line: 92, column: 5, scope: !502)
!510 = !DILocation(line: 93, column: 1, scope: !502)
!511 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !512, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !516, line: 100, baseType: !517)
!516 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_114/source_code")
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !516, line: 96, size: 64, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !517, file: !516, line: 98, baseType: !7, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !517, file: !516, line: 99, baseType: !7, size: 32, offset: 32)
!521 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !511, file: !18, line: 95, type: !514)
!522 = !DILocation(line: 95, column: 40, scope: !511)
!523 = !DILocation(line: 97, column: 26, scope: !511)
!524 = !DILocation(line: 97, column: 47, scope: !511)
!525 = !DILocation(line: 97, column: 55, scope: !511)
!526 = !DILocation(line: 97, column: 76, scope: !511)
!527 = !DILocation(line: 97, column: 5, scope: !511)
!528 = !DILocation(line: 98, column: 1, scope: !511)
!529 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !530, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !532, !75}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!533 = !DILocalVariable(name: "bytes", arg: 1, scope: !529, file: !18, line: 100, type: !532)
!534 = !DILocation(line: 100, column: 38, scope: !529)
!535 = !DILocalVariable(name: "numBytes", arg: 2, scope: !529, file: !18, line: 100, type: !75)
!536 = !DILocation(line: 100, column: 52, scope: !529)
!537 = !DILocalVariable(name: "i", scope: !529, file: !18, line: 102, type: !75)
!538 = !DILocation(line: 102, column: 12, scope: !529)
!539 = !DILocation(line: 103, column: 12, scope: !540)
!540 = distinct !DILexicalBlock(scope: !529, file: !18, line: 103, column: 5)
!541 = !DILocation(line: 103, column: 10, scope: !540)
!542 = !DILocation(line: 103, column: 17, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !18, line: 103, column: 5)
!544 = !DILocation(line: 103, column: 21, scope: !543)
!545 = !DILocation(line: 103, column: 19, scope: !543)
!546 = !DILocation(line: 103, column: 5, scope: !540)
!547 = !DILocation(line: 105, column: 24, scope: !548)
!548 = distinct !DILexicalBlock(scope: !543, file: !18, line: 104, column: 5)
!549 = !DILocation(line: 105, column: 30, scope: !548)
!550 = !DILocation(line: 105, column: 9, scope: !548)
!551 = !DILocation(line: 106, column: 5, scope: !548)
!552 = !DILocation(line: 103, column: 31, scope: !543)
!553 = !DILocation(line: 103, column: 5, scope: !543)
!554 = distinct !{!554, !546, !555, !278}
!555 = !DILocation(line: 106, column: 5, scope: !540)
!556 = !DILocation(line: 107, column: 5, scope: !529)
!557 = !DILocation(line: 108, column: 1, scope: !529)
!558 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !559, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!559 = !DISubroutineType(types: !560)
!560 = !{!75, !532, !75, !11}
!561 = !DILocalVariable(name: "bytes", arg: 1, scope: !558, file: !18, line: 113, type: !532)
!562 = !DILocation(line: 113, column: 39, scope: !558)
!563 = !DILocalVariable(name: "numBytes", arg: 2, scope: !558, file: !18, line: 113, type: !75)
!564 = !DILocation(line: 113, column: 53, scope: !558)
!565 = !DILocalVariable(name: "hex", arg: 3, scope: !558, file: !18, line: 113, type: !11)
!566 = !DILocation(line: 113, column: 71, scope: !558)
!567 = !DILocalVariable(name: "numWritten", scope: !558, file: !18, line: 115, type: !75)
!568 = !DILocation(line: 115, column: 12, scope: !558)
!569 = !DILocation(line: 121, column: 5, scope: !558)
!570 = !DILocation(line: 121, column: 12, scope: !558)
!571 = !DILocation(line: 121, column: 25, scope: !558)
!572 = !DILocation(line: 121, column: 23, scope: !558)
!573 = !DILocation(line: 121, column: 34, scope: !558)
!574 = !DILocation(line: 121, column: 37, scope: !558)
!575 = !DILocation(line: 121, column: 67, scope: !558)
!576 = !DILocation(line: 121, column: 70, scope: !558)
!577 = !DILocation(line: 0, scope: !558)
!578 = !DILocalVariable(name: "byte", scope: !579, file: !18, line: 123, type: !7)
!579 = distinct !DILexicalBlock(scope: !558, file: !18, line: 122, column: 5)
!580 = !DILocation(line: 123, column: 13, scope: !579)
!581 = !DILocation(line: 124, column: 17, scope: !579)
!582 = !DILocation(line: 124, column: 25, scope: !579)
!583 = !DILocation(line: 124, column: 23, scope: !579)
!584 = !DILocation(line: 124, column: 9, scope: !579)
!585 = !DILocation(line: 125, column: 45, scope: !579)
!586 = !DILocation(line: 125, column: 29, scope: !579)
!587 = !DILocation(line: 125, column: 9, scope: !579)
!588 = !DILocation(line: 125, column: 15, scope: !579)
!589 = !DILocation(line: 125, column: 27, scope: !579)
!590 = !DILocation(line: 126, column: 9, scope: !579)
!591 = distinct !{!591, !569, !592, !278}
!592 = !DILocation(line: 127, column: 5, scope: !558)
!593 = !DILocation(line: 129, column: 12, scope: !558)
!594 = !DILocation(line: 129, column: 5, scope: !558)
!595 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !596, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!596 = !DISubroutineType(types: !597)
!597 = !{!75, !532, !75, !394}
!598 = !DILocalVariable(name: "bytes", arg: 1, scope: !595, file: !18, line: 135, type: !532)
!599 = !DILocation(line: 135, column: 41, scope: !595)
!600 = !DILocalVariable(name: "numBytes", arg: 2, scope: !595, file: !18, line: 135, type: !75)
!601 = !DILocation(line: 135, column: 55, scope: !595)
!602 = !DILocalVariable(name: "hex", arg: 3, scope: !595, file: !18, line: 135, type: !394)
!603 = !DILocation(line: 135, column: 76, scope: !595)
!604 = !DILocalVariable(name: "numWritten", scope: !595, file: !18, line: 137, type: !75)
!605 = !DILocation(line: 137, column: 12, scope: !595)
!606 = !DILocation(line: 143, column: 5, scope: !595)
!607 = !DILocation(line: 143, column: 12, scope: !595)
!608 = !DILocation(line: 143, column: 25, scope: !595)
!609 = !DILocation(line: 143, column: 23, scope: !595)
!610 = !DILocation(line: 143, column: 34, scope: !595)
!611 = !DILocation(line: 143, column: 47, scope: !595)
!612 = !DILocation(line: 143, column: 55, scope: !595)
!613 = !DILocation(line: 143, column: 53, scope: !595)
!614 = !DILocation(line: 143, column: 37, scope: !595)
!615 = !DILocation(line: 143, column: 68, scope: !595)
!616 = !DILocation(line: 143, column: 81, scope: !595)
!617 = !DILocation(line: 143, column: 89, scope: !595)
!618 = !DILocation(line: 143, column: 87, scope: !595)
!619 = !DILocation(line: 143, column: 100, scope: !595)
!620 = !DILocation(line: 143, column: 71, scope: !595)
!621 = !DILocation(line: 0, scope: !595)
!622 = !DILocalVariable(name: "byte", scope: !623, file: !18, line: 145, type: !7)
!623 = distinct !DILexicalBlock(scope: !595, file: !18, line: 144, column: 5)
!624 = !DILocation(line: 145, column: 13, scope: !623)
!625 = !DILocation(line: 146, column: 18, scope: !623)
!626 = !DILocation(line: 146, column: 26, scope: !623)
!627 = !DILocation(line: 146, column: 24, scope: !623)
!628 = !DILocation(line: 146, column: 9, scope: !623)
!629 = !DILocation(line: 147, column: 45, scope: !623)
!630 = !DILocation(line: 147, column: 29, scope: !623)
!631 = !DILocation(line: 147, column: 9, scope: !623)
!632 = !DILocation(line: 147, column: 15, scope: !623)
!633 = !DILocation(line: 147, column: 27, scope: !623)
!634 = !DILocation(line: 148, column: 9, scope: !623)
!635 = distinct !{!635, !606, !636, !278}
!636 = !DILocation(line: 149, column: 5, scope: !595)
!637 = !DILocation(line: 151, column: 12, scope: !595)
!638 = !DILocation(line: 151, column: 5, scope: !595)
!639 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !640, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!640 = !DISubroutineType(types: !641)
!641 = !{!7}
!642 = !DILocation(line: 158, column: 5, scope: !639)
!643 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !640, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!644 = !DILocation(line: 163, column: 5, scope: !643)
!645 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !640, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!646 = !DILocation(line: 168, column: 13, scope: !645)
!647 = !DILocation(line: 168, column: 20, scope: !645)
!648 = !DILocation(line: 168, column: 5, scope: !645)
!649 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !62, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!650 = !DILocation(line: 187, column: 16, scope: !649)
!651 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !62, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!652 = !DILocation(line: 188, column: 16, scope: !651)
!653 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !62, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!654 = !DILocation(line: 189, column: 16, scope: !653)
!655 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !62, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!656 = !DILocation(line: 190, column: 16, scope: !655)
!657 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !62, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!658 = !DILocation(line: 191, column: 16, scope: !657)
!659 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !62, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!660 = !DILocation(line: 192, column: 16, scope: !659)
!661 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !62, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!662 = !DILocation(line: 193, column: 16, scope: !661)
!663 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !62, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!664 = !DILocation(line: 194, column: 16, scope: !663)
!665 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !62, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!666 = !DILocation(line: 195, column: 16, scope: !665)
!667 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !62, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!668 = !DILocation(line: 198, column: 15, scope: !667)
!669 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !62, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!670 = !DILocation(line: 199, column: 15, scope: !669)
!671 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !62, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!672 = !DILocation(line: 200, column: 15, scope: !671)
!673 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !62, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!674 = !DILocation(line: 201, column: 15, scope: !673)
!675 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !62, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!676 = !DILocation(line: 202, column: 15, scope: !675)
!677 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !62, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!678 = !DILocation(line: 203, column: 15, scope: !677)
!679 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !62, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!680 = !DILocation(line: 204, column: 15, scope: !679)
!681 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !62, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!682 = !DILocation(line: 205, column: 15, scope: !681)
!683 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !62, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!684 = !DILocation(line: 206, column: 15, scope: !683)
