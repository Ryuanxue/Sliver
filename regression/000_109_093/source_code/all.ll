; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE606_Unchecked_Loop_Condition__char_file_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !9
@CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !11
@CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !13
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1.7 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
@.str.14 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.15 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.16 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.17 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.20 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14.21 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_22_bad() #0 !dbg !63 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !68, metadata !DIExpression()), !dbg !72
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !72
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !72
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !73
  store i8* %arraydecay, i8** %data, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !75, metadata !DIExpression()), !dbg !80
  %1 = load i8*, i8** %data, align 8, !dbg !81
  %call = call i64 @strlen(i8* %1) #7, !dbg !82
  store i64 %call, i64* %dataLen, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !83, metadata !DIExpression()), !dbg !139
  %2 = load i64, i64* %dataLen, align 8, !dbg !140
  %sub = sub i64 100, %2, !dbg !142
  %cmp = icmp ugt i64 %sub, 1, !dbg !143
  br i1 %cmp, label %if.then, label %if.end11, !dbg !144

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !145
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !147
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !148
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !150
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !151

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !152
  %5 = load i64, i64* %dataLen, align 8, !dbg !155
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !156
  %6 = load i64, i64* %dataLen, align 8, !dbg !157
  %sub4 = sub i64 100, %6, !dbg !158
  %conv = trunc i64 %sub4 to i32, !dbg !159
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !160
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !161
  %cmp6 = icmp eq i8* %call5, null, !dbg !162
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !163

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !164
  %8 = load i8*, i8** %data, align 8, !dbg !166
  %9 = load i64, i64* %dataLen, align 8, !dbg !167
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !166
  store i8 0, i8* %arrayidx, align 1, !dbg !168
  br label %if.end, !dbg !169

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !170
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !171
  br label %if.end10, !dbg !172

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !173

if.end11:                                         ; preds = %if.end10, %entry
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_file_22_badGlobal, align 4, !dbg !174
  %11 = load i8*, i8** %data, align 8, !dbg !175
  call void @CWE606_Unchecked_Loop_Condition__char_file_22_badSink(i8* %11), !dbg !176
  ret void, !dbg !177
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
define dso_local void @goodB2G1() #0 !dbg !178 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !181, metadata !DIExpression()), !dbg !182
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !182
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !182
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !183
  store i8* %arraydecay, i8** %data, align 8, !dbg !184
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !185, metadata !DIExpression()), !dbg !187
  %1 = load i8*, i8** %data, align 8, !dbg !188
  %call = call i64 @strlen(i8* %1) #7, !dbg !189
  store i64 %call, i64* %dataLen, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !190, metadata !DIExpression()), !dbg !191
  %2 = load i64, i64* %dataLen, align 8, !dbg !192
  %sub = sub i64 100, %2, !dbg !194
  %cmp = icmp ugt i64 %sub, 1, !dbg !195
  br i1 %cmp, label %if.then, label %if.end11, !dbg !196

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !197
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !199
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !200
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !202
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !203

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !204
  %5 = load i64, i64* %dataLen, align 8, !dbg !207
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !208
  %6 = load i64, i64* %dataLen, align 8, !dbg !209
  %sub4 = sub i64 100, %6, !dbg !210
  %conv = trunc i64 %sub4 to i32, !dbg !211
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !212
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !213
  %cmp6 = icmp eq i8* %call5, null, !dbg !214
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !215

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !216
  %8 = load i8*, i8** %data, align 8, !dbg !218
  %9 = load i64, i64* %dataLen, align 8, !dbg !219
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !218
  store i8 0, i8* %arrayidx, align 1, !dbg !220
  br label %if.end, !dbg !221

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !222
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !223
  br label %if.end10, !dbg !224

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !225

if.end11:                                         ; preds = %if.end10, %entry
  store i32 0, i32* @CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G1Global, align 4, !dbg !226
  %11 = load i8*, i8** %data, align 8, !dbg !227
  call void @CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G1Sink(i8* %11), !dbg !228
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !230 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !233, metadata !DIExpression()), !dbg !234
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !234
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !234
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !235
  store i8* %arraydecay, i8** %data, align 8, !dbg !236
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !237, metadata !DIExpression()), !dbg !239
  %1 = load i8*, i8** %data, align 8, !dbg !240
  %call = call i64 @strlen(i8* %1) #7, !dbg !241
  store i64 %call, i64* %dataLen, align 8, !dbg !239
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !242, metadata !DIExpression()), !dbg !243
  %2 = load i64, i64* %dataLen, align 8, !dbg !244
  %sub = sub i64 100, %2, !dbg !246
  %cmp = icmp ugt i64 %sub, 1, !dbg !247
  br i1 %cmp, label %if.then, label %if.end11, !dbg !248

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !249
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !251
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !252
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !254
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !255

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !256
  %5 = load i64, i64* %dataLen, align 8, !dbg !259
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !260
  %6 = load i64, i64* %dataLen, align 8, !dbg !261
  %sub4 = sub i64 100, %6, !dbg !262
  %conv = trunc i64 %sub4 to i32, !dbg !263
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !264
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !265
  %cmp6 = icmp eq i8* %call5, null, !dbg !266
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !267

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !268
  %8 = load i8*, i8** %data, align 8, !dbg !270
  %9 = load i64, i64* %dataLen, align 8, !dbg !271
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !270
  store i8 0, i8* %arrayidx, align 1, !dbg !272
  br label %if.end, !dbg !273

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !274
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !275
  br label %if.end10, !dbg !276

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !277

if.end11:                                         ; preds = %if.end10, %entry
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Global, align 4, !dbg !278
  %11 = load i8*, i8** %data, align 8, !dbg !279
  call void @CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Sink(i8* %11), !dbg !280
  ret void, !dbg !281
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !282 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !283, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !286
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !286
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !287
  store i8* %arraydecay, i8** %data, align 8, !dbg !288
  %1 = load i8*, i8** %data, align 8, !dbg !289
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !290
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BGlobal, align 4, !dbg !291
  %2 = load i8*, i8** %data, align 8, !dbg !292
  call void @CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink(i8* %2), !dbg !293
  ret void, !dbg !294
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_22_good() #0 !dbg !295 {
entry:
  call void @goodB2G1(), !dbg !296
  call void @goodB2G2(), !dbg !297
  call void @goodG2B(), !dbg !298
  ret void, !dbg !299
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_22_badSink(i8* %data) #0 !dbg !300 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_file_22_badGlobal, align 4, !dbg !305
  %tobool = icmp ne i32 %0, 0, !dbg !305
  br i1 %tobool, label %if.then, label %if.end4, !dbg !307

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !308, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata i32* %n, metadata !312, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !314, metadata !DIExpression()), !dbg !315
  %1 = load i8*, i8** %data.addr, align 8, !dbg !316
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !318
  %cmp = icmp eq i32 %call, 1, !dbg !319
  br i1 %cmp, label %if.then1, label %if.end, !dbg !320

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !321
  store i32 0, i32* %i, align 4, !dbg !323
  br label %for.cond, !dbg !325

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !326
  %3 = load i32, i32* %n, align 4, !dbg !328
  %cmp2 = icmp slt i32 %2, %3, !dbg !329
  br i1 %cmp2, label %for.body, label %for.end, !dbg !330

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !331
  %inc = add nsw i32 %4, 1, !dbg !331
  store i32 %inc, i32* %intVariable, align 4, !dbg !331
  br label %for.inc, !dbg !333

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !334
  %inc3 = add nsw i32 %5, 1, !dbg !334
  store i32 %inc3, i32* %i, align 4, !dbg !334
  br label %for.cond, !dbg !335, !llvm.loop !336

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !339
  call void @printIntLine(i32 %6), !dbg !340
  br label %if.end, !dbg !341

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !342

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !343
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G1Sink(i8* %data) #0 !dbg !344 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !345, metadata !DIExpression()), !dbg !346
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G1Global, align 4, !dbg !347
  %tobool = icmp ne i32 %0, 0, !dbg !347
  br i1 %tobool, label %if.then, label %if.else, !dbg !349

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.7, i64 0, i64 0)), !dbg !350
  br label %if.end7, !dbg !352

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !353, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata i32* %n, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !359, metadata !DIExpression()), !dbg !360
  %1 = load i8*, i8** %data.addr, align 8, !dbg !361
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !363
  %cmp = icmp eq i32 %call, 1, !dbg !364
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !365

if.then1:                                         ; preds = %if.else
  %2 = load i32, i32* %n, align 4, !dbg !366
  %cmp2 = icmp slt i32 %2, 10000, !dbg !369
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !370

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !371
  store i32 0, i32* %i, align 4, !dbg !373
  br label %for.cond, !dbg !375

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !376
  %4 = load i32, i32* %n, align 4, !dbg !378
  %cmp4 = icmp slt i32 %3, %4, !dbg !379
  br i1 %cmp4, label %for.body, label %for.end, !dbg !380

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !381
  %inc = add nsw i32 %5, 1, !dbg !381
  store i32 %inc, i32* %intVariable, align 4, !dbg !381
  br label %for.inc, !dbg !383

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !384
  %inc5 = add nsw i32 %6, 1, !dbg !384
  store i32 %inc5, i32* %i, align 4, !dbg !384
  br label %for.cond, !dbg !385, !llvm.loop !386

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !388
  call void @printIntLine(i32 %7), !dbg !389
  br label %if.end, !dbg !390

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !391

if.end6:                                          ; preds = %if.end, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Sink(i8* %data) #0 !dbg !393 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Global, align 4, !dbg !396
  %tobool = icmp ne i32 %0, 0, !dbg !396
  br i1 %tobool, label %if.then, label %if.end7, !dbg !398

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !399, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata i32* %n, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !405, metadata !DIExpression()), !dbg !406
  %1 = load i8*, i8** %data.addr, align 8, !dbg !407
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !409
  %cmp = icmp eq i32 %call, 1, !dbg !410
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !411

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* %n, align 4, !dbg !412
  %cmp2 = icmp slt i32 %2, 10000, !dbg !415
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !416

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !417
  store i32 0, i32* %i, align 4, !dbg !419
  br label %for.cond, !dbg !421

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !422
  %4 = load i32, i32* %n, align 4, !dbg !424
  %cmp4 = icmp slt i32 %3, %4, !dbg !425
  br i1 %cmp4, label %for.body, label %for.end, !dbg !426

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !427
  %inc = add nsw i32 %5, 1, !dbg !427
  store i32 %inc, i32* %intVariable, align 4, !dbg !427
  br label %for.inc, !dbg !429

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !430
  %inc5 = add nsw i32 %6, 1, !dbg !430
  store i32 %inc5, i32* %i, align 4, !dbg !430
  br label %for.cond, !dbg !431, !llvm.loop !432

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !434
  call void @printIntLine(i32 %7), !dbg !435
  br label %if.end, !dbg !436

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !437

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end7, !dbg !438

if.end7:                                          ; preds = %if.end6, %entry
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink(i8* %data) #0 !dbg !440 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BGlobal, align 4, !dbg !443
  %tobool = icmp ne i32 %0, 0, !dbg !443
  br i1 %tobool, label %if.then, label %if.end4, !dbg !445

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !446, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata i32* %n, metadata !450, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !452, metadata !DIExpression()), !dbg !453
  %1 = load i8*, i8** %data.addr, align 8, !dbg !454
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !456
  %cmp = icmp eq i32 %call, 1, !dbg !457
  br i1 %cmp, label %if.then1, label %if.end, !dbg !458

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !459
  store i32 0, i32* %i, align 4, !dbg !461
  br label %for.cond, !dbg !463

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !464
  %3 = load i32, i32* %n, align 4, !dbg !466
  %cmp2 = icmp slt i32 %2, %3, !dbg !467
  br i1 %cmp2, label %for.body, label %for.end, !dbg !468

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !469
  %inc = add nsw i32 %4, 1, !dbg !469
  store i32 %inc, i32* %intVariable, align 4, !dbg !469
  br label %for.inc, !dbg !471

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !472
  %inc3 = add nsw i32 %5, 1, !dbg !472
  store i32 %inc3, i32* %i, align 4, !dbg !472
  br label %for.cond, !dbg !473, !llvm.loop !474

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !476
  call void @printIntLine(i32 %6), !dbg !477
  br label %if.end, !dbg !478

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !479

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !481 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !482, metadata !DIExpression()), !dbg !483
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0)), !dbg !484
  %0 = load i8*, i8** %line.addr, align 8, !dbg !485
  %cmp = icmp ne i8* %0, null, !dbg !487
  br i1 %cmp, label %if.then, label %if.end, !dbg !488

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !489
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.15, i64 0, i64 0), i8* %1), !dbg !491
  br label %if.end, !dbg !492

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.16, i64 0, i64 0)), !dbg !493
  ret void, !dbg !494
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !495 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !496, metadata !DIExpression()), !dbg !497
  %0 = load i8*, i8** %line.addr, align 8, !dbg !498
  %cmp = icmp ne i8* %0, null, !dbg !500
  br i1 %cmp, label %if.then, label %if.end, !dbg !501

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !502
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.15, i64 0, i64 0), i8* %1), !dbg !504
  br label %if.end, !dbg !505

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !507 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !512, metadata !DIExpression()), !dbg !513
  %0 = load i32*, i32** %line.addr, align 8, !dbg !514
  %cmp = icmp ne i32* %0, null, !dbg !516
  br i1 %cmp, label %if.then, label %if.end, !dbg !517

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !518
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.17, i64 0, i64 0), i32* %1), !dbg !520
  br label %if.end, !dbg !521

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !522
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !523 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !526, metadata !DIExpression()), !dbg !527
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !528
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.20, i64 0, i64 0), i32 %0), !dbg !529
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !531 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !535, metadata !DIExpression()), !dbg !536
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !537
  %conv = sext i16 %0 to i32, !dbg !537
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !538
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !540 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !544, metadata !DIExpression()), !dbg !545
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !546
  %conv = fpext float %0 to double, !dbg !546
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !547
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !549 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !552, metadata !DIExpression()), !dbg !553
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !554
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !555
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !557 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !563, metadata !DIExpression()), !dbg !564
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !565
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !566
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !568 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !571, metadata !DIExpression()), !dbg !572
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !573
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !574
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !576 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !579, metadata !DIExpression()), !dbg !580
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !581
  %conv = sext i8 %0 to i32, !dbg !581
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !582
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !584 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !587, metadata !DIExpression()), !dbg !588
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !589, metadata !DIExpression()), !dbg !593
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !594
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !595
  store i32 %0, i32* %arrayidx, align 4, !dbg !596
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !597
  store i32 0, i32* %arrayidx1, align 4, !dbg !598
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !599
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !600
  ret void, !dbg !601
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !602 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !605, metadata !DIExpression()), !dbg !606
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !607
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !608
  ret void, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !610 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !613, metadata !DIExpression()), !dbg !614
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !615
  %conv = zext i8 %0 to i32, !dbg !615
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !616
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !618 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !622, metadata !DIExpression()), !dbg !623
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !624
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !625
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !627 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !637, metadata !DIExpression()), !dbg !638
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !639
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !640
  %1 = load i32, i32* %intOne, align 4, !dbg !640
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !641
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !642
  %3 = load i32, i32* %intTwo, align 4, !dbg !642
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !643
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !645 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !649, metadata !DIExpression()), !dbg !650
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !651, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.declare(metadata i64* %i, metadata !653, metadata !DIExpression()), !dbg !654
  store i64 0, i64* %i, align 8, !dbg !655
  br label %for.cond, !dbg !657

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !658
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !660
  %cmp = icmp ult i64 %0, %1, !dbg !661
  br i1 %cmp, label %for.body, label %for.end, !dbg !662

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !663
  %3 = load i64, i64* %i, align 8, !dbg !665
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !663
  %4 = load i8, i8* %arrayidx, align 1, !dbg !663
  %conv = zext i8 %4 to i32, !dbg !663
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14.21, i64 0, i64 0), i32 %conv), !dbg !666
  br label %for.inc, !dbg !667

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !668
  %inc = add i64 %5, 1, !dbg !668
  store i64 %inc, i64* %i, align 8, !dbg !668
  br label %for.cond, !dbg !669, !llvm.loop !670

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !672
  ret void, !dbg !673
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !674 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !677, metadata !DIExpression()), !dbg !678
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !679, metadata !DIExpression()), !dbg !680
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !681, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !683, metadata !DIExpression()), !dbg !684
  store i64 0, i64* %numWritten, align 8, !dbg !684
  br label %while.cond, !dbg !685

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !686
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !687
  %cmp = icmp ult i64 %0, %1, !dbg !688
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !689

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !690
  %2 = load i16*, i16** %call, align 8, !dbg !690
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !690
  %4 = load i64, i64* %numWritten, align 8, !dbg !690
  %mul = mul i64 2, %4, !dbg !690
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !690
  %5 = load i8, i8* %arrayidx, align 1, !dbg !690
  %conv = sext i8 %5 to i32, !dbg !690
  %idxprom = sext i32 %conv to i64, !dbg !690
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !690
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !690
  %conv2 = zext i16 %6 to i32, !dbg !690
  %and = and i32 %conv2, 4096, !dbg !690
  %tobool = icmp ne i32 %and, 0, !dbg !690
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !691

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !692
  %7 = load i16*, i16** %call3, align 8, !dbg !692
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !692
  %9 = load i64, i64* %numWritten, align 8, !dbg !692
  %mul4 = mul i64 2, %9, !dbg !692
  %add = add i64 %mul4, 1, !dbg !692
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !692
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !692
  %conv6 = sext i8 %10 to i32, !dbg !692
  %idxprom7 = sext i32 %conv6 to i64, !dbg !692
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !692
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !692
  %conv9 = zext i16 %11 to i32, !dbg !692
  %and10 = and i32 %conv9, 4096, !dbg !692
  %tobool11 = icmp ne i32 %and10, 0, !dbg !691
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !693
  br i1 %12, label %while.body, label %while.end, !dbg !685

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !694, metadata !DIExpression()), !dbg !696
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !697
  %14 = load i64, i64* %numWritten, align 8, !dbg !698
  %mul12 = mul i64 2, %14, !dbg !699
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !697
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14.21, i64 0, i64 0), i32* %byte) #8, !dbg !700
  %15 = load i32, i32* %byte, align 4, !dbg !701
  %conv15 = trunc i32 %15 to i8, !dbg !702
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !703
  %17 = load i64, i64* %numWritten, align 8, !dbg !704
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !703
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !705
  %18 = load i64, i64* %numWritten, align 8, !dbg !706
  %inc = add i64 %18, 1, !dbg !706
  store i64 %inc, i64* %numWritten, align 8, !dbg !706
  br label %while.cond, !dbg !685, !llvm.loop !707

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !709
  ret i64 %19, !dbg !710
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !711 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !714, metadata !DIExpression()), !dbg !715
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !716, metadata !DIExpression()), !dbg !717
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !718, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !720, metadata !DIExpression()), !dbg !721
  store i64 0, i64* %numWritten, align 8, !dbg !721
  br label %while.cond, !dbg !722

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !723
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !724
  %cmp = icmp ult i64 %0, %1, !dbg !725
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !726

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !727
  %3 = load i64, i64* %numWritten, align 8, !dbg !728
  %mul = mul i64 2, %3, !dbg !729
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !727
  %4 = load i32, i32* %arrayidx, align 4, !dbg !727
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !730
  %tobool = icmp ne i32 %call, 0, !dbg !730
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !731

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !732
  %6 = load i64, i64* %numWritten, align 8, !dbg !733
  %mul1 = mul i64 2, %6, !dbg !734
  %add = add i64 %mul1, 1, !dbg !735
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !732
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !732
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !736
  %tobool4 = icmp ne i32 %call3, 0, !dbg !731
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !737
  br i1 %8, label %while.body, label %while.end, !dbg !722

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !738, metadata !DIExpression()), !dbg !740
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !741
  %10 = load i64, i64* %numWritten, align 8, !dbg !742
  %mul5 = mul i64 2, %10, !dbg !743
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !741
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !744
  %11 = load i32, i32* %byte, align 4, !dbg !745
  %conv = trunc i32 %11 to i8, !dbg !746
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !747
  %13 = load i64, i64* %numWritten, align 8, !dbg !748
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !747
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !749
  %14 = load i64, i64* %numWritten, align 8, !dbg !750
  %inc = add i64 %14, 1, !dbg !750
  store i64 %inc, i64* %numWritten, align 8, !dbg !750
  br label %while.cond, !dbg !722, !llvm.loop !751

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !753
  ret i64 %15, !dbg !754
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !755 {
entry:
  ret i32 1, !dbg !758
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !759 {
entry:
  ret i32 0, !dbg !760
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !761 {
entry:
  %call = call i32 @rand() #8, !dbg !762
  %rem = srem i32 %call, 2, !dbg !763
  ret i32 %rem, !dbg !764
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !765 {
entry:
  ret void, !dbg !766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !767 {
entry:
  ret void, !dbg !768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !769 {
entry:
  ret void, !dbg !770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !771 {
entry:
  ret void, !dbg !772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !773 {
entry:
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !775 {
entry:
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !777 {
entry:
  ret void, !dbg !778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !779 {
entry:
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !781 {
entry:
  ret void, !dbg !782
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !783 {
entry:
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !785 {
entry:
  ret void, !dbg !786
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !787 {
entry:
  ret void, !dbg !788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !789 {
entry:
  ret void, !dbg !790
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !791 {
entry:
  ret void, !dbg !792
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !793 {
entry:
  ret void, !dbg !794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !795 {
entry:
  ret void, !dbg !796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !797 {
entry:
  ret void, !dbg !798
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !799 {
entry:
  ret void, !dbg !800
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

!llvm.dbg.cu = !{!2, !57, !17}
!llvm.ident = !{!59, !59, !59}
!llvm.module.flags = !{!60, !61, !62}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_file_22_badGlobal", scope: !2, file: !3, line: 36, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_22a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_093/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G1Global", scope: !2, file: !3, line: 74, type: !7, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Global", scope: !2, file: !3, line: 75, type: !7, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BGlobal", scope: !2, file: !3, line: 76, type: !7, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !7, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_093/source_code")
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
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!57 = distinct !DICompileUnit(language: DW_LANG_C99, file: !58, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!58 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_22b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_093/source_code")
!59 = !{!"clang version 12.0.0"}
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_22_bad", scope: !3, file: !3, line: 39, type: !64, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !DILocalVariable(name: "data", scope: !63, file: !3, line: 41, type: !55)
!67 = !DILocation(line: 41, column: 12, scope: !63)
!68 = !DILocalVariable(name: "dataBuffer", scope: !63, file: !3, line: 42, type: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 100)
!72 = !DILocation(line: 42, column: 10, scope: !63)
!73 = !DILocation(line: 43, column: 12, scope: !63)
!74 = !DILocation(line: 43, column: 10, scope: !63)
!75 = !DILocalVariable(name: "dataLen", scope: !76, file: !3, line: 46, type: !77)
!76 = distinct !DILexicalBlock(scope: !63, file: !3, line: 44, column: 5)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DILocation(line: 46, column: 16, scope: !76)
!81 = !DILocation(line: 46, column: 33, scope: !76)
!82 = !DILocation(line: 46, column: 26, scope: !76)
!83 = !DILocalVariable(name: "pFile", scope: !76, file: !3, line: 47, type: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !86, line: 7, baseType: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !88, line: 49, size: 1728, elements: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !105, !107, !108, !109, !113, !114, !116, !120, !123, !125, !128, !131, !132, !133, !134, !135}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !87, file: !88, line: 51, baseType: !7, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !87, file: !88, line: 54, baseType: !55, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !87, file: !88, line: 55, baseType: !55, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !87, file: !88, line: 56, baseType: !55, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !87, file: !88, line: 57, baseType: !55, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !87, file: !88, line: 58, baseType: !55, size: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !87, file: !88, line: 59, baseType: !55, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !87, file: !88, line: 60, baseType: !55, size: 64, offset: 448)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !87, file: !88, line: 61, baseType: !55, size: 64, offset: 512)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !87, file: !88, line: 64, baseType: !55, size: 64, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !87, file: !88, line: 65, baseType: !55, size: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !87, file: !88, line: 66, baseType: !55, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !87, file: !88, line: 68, baseType: !103, size: 64, offset: 768)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !88, line: 36, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !87, file: !88, line: 70, baseType: !106, size: 64, offset: 832)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !87, file: !88, line: 72, baseType: !7, size: 32, offset: 896)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !87, file: !88, line: 73, baseType: !7, size: 32, offset: 928)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !87, file: !88, line: 74, baseType: !110, size: 64, offset: 960)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !111, line: 152, baseType: !112)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!112 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !87, file: !88, line: 77, baseType: !37, size: 16, offset: 1024)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !87, file: !88, line: 78, baseType: !115, size: 8, offset: 1040)
!115 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !87, file: !88, line: 79, baseType: !117, size: 8, offset: 1048)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 8, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 1)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !87, file: !88, line: 81, baseType: !121, size: 64, offset: 1088)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !88, line: 43, baseType: null)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !87, file: !88, line: 89, baseType: !124, size: 64, offset: 1152)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !111, line: 153, baseType: !112)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !87, file: !88, line: 91, baseType: !126, size: 64, offset: 1216)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !88, line: 37, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !87, file: !88, line: 92, baseType: !129, size: 64, offset: 1280)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !88, line: 38, flags: DIFlagFwdDecl)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !87, file: !88, line: 93, baseType: !106, size: 64, offset: 1344)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !87, file: !88, line: 94, baseType: !6, size: 64, offset: 1408)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !87, file: !88, line: 95, baseType: !77, size: 64, offset: 1472)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !87, file: !88, line: 96, baseType: !7, size: 32, offset: 1536)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !87, file: !88, line: 98, baseType: !136, size: 160, offset: 1568)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 160, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 20)
!139 = !DILocation(line: 47, column: 16, scope: !76)
!140 = !DILocation(line: 49, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !76, file: !3, line: 49, column: 13)
!142 = !DILocation(line: 49, column: 16, scope: !141)
!143 = !DILocation(line: 49, column: 25, scope: !141)
!144 = !DILocation(line: 49, column: 13, scope: !76)
!145 = !DILocation(line: 51, column: 21, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !3, line: 50, column: 9)
!147 = !DILocation(line: 51, column: 19, scope: !146)
!148 = !DILocation(line: 52, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !3, line: 52, column: 17)
!150 = !DILocation(line: 52, column: 23, scope: !149)
!151 = !DILocation(line: 52, column: 17, scope: !146)
!152 = !DILocation(line: 55, column: 27, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 55, column: 21)
!154 = distinct !DILexicalBlock(scope: !149, file: !3, line: 53, column: 13)
!155 = !DILocation(line: 55, column: 32, scope: !153)
!156 = !DILocation(line: 55, column: 31, scope: !153)
!157 = !DILocation(line: 55, column: 51, scope: !153)
!158 = !DILocation(line: 55, column: 50, scope: !153)
!159 = !DILocation(line: 55, column: 41, scope: !153)
!160 = !DILocation(line: 55, column: 61, scope: !153)
!161 = !DILocation(line: 55, column: 21, scope: !153)
!162 = !DILocation(line: 55, column: 68, scope: !153)
!163 = !DILocation(line: 55, column: 21, scope: !154)
!164 = !DILocation(line: 57, column: 21, scope: !165)
!165 = distinct !DILexicalBlock(scope: !153, file: !3, line: 56, column: 17)
!166 = !DILocation(line: 59, column: 21, scope: !165)
!167 = !DILocation(line: 59, column: 26, scope: !165)
!168 = !DILocation(line: 59, column: 35, scope: !165)
!169 = !DILocation(line: 60, column: 17, scope: !165)
!170 = !DILocation(line: 61, column: 24, scope: !154)
!171 = !DILocation(line: 61, column: 17, scope: !154)
!172 = !DILocation(line: 62, column: 13, scope: !154)
!173 = !DILocation(line: 63, column: 9, scope: !146)
!174 = !DILocation(line: 65, column: 61, scope: !63)
!175 = !DILocation(line: 66, column: 59, scope: !63)
!176 = !DILocation(line: 66, column: 5, scope: !63)
!177 = !DILocation(line: 67, column: 1, scope: !63)
!178 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 80, type: !64, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!179 = !DILocalVariable(name: "data", scope: !178, file: !3, line: 82, type: !55)
!180 = !DILocation(line: 82, column: 12, scope: !178)
!181 = !DILocalVariable(name: "dataBuffer", scope: !178, file: !3, line: 83, type: !69)
!182 = !DILocation(line: 83, column: 10, scope: !178)
!183 = !DILocation(line: 84, column: 12, scope: !178)
!184 = !DILocation(line: 84, column: 10, scope: !178)
!185 = !DILocalVariable(name: "dataLen", scope: !186, file: !3, line: 87, type: !77)
!186 = distinct !DILexicalBlock(scope: !178, file: !3, line: 85, column: 5)
!187 = !DILocation(line: 87, column: 16, scope: !186)
!188 = !DILocation(line: 87, column: 33, scope: !186)
!189 = !DILocation(line: 87, column: 26, scope: !186)
!190 = !DILocalVariable(name: "pFile", scope: !186, file: !3, line: 88, type: !84)
!191 = !DILocation(line: 88, column: 16, scope: !186)
!192 = !DILocation(line: 90, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !186, file: !3, line: 90, column: 13)
!194 = !DILocation(line: 90, column: 16, scope: !193)
!195 = !DILocation(line: 90, column: 25, scope: !193)
!196 = !DILocation(line: 90, column: 13, scope: !186)
!197 = !DILocation(line: 92, column: 21, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !3, line: 91, column: 9)
!199 = !DILocation(line: 92, column: 19, scope: !198)
!200 = !DILocation(line: 93, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 93, column: 17)
!202 = !DILocation(line: 93, column: 23, scope: !201)
!203 = !DILocation(line: 93, column: 17, scope: !198)
!204 = !DILocation(line: 96, column: 27, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 96, column: 21)
!206 = distinct !DILexicalBlock(scope: !201, file: !3, line: 94, column: 13)
!207 = !DILocation(line: 96, column: 32, scope: !205)
!208 = !DILocation(line: 96, column: 31, scope: !205)
!209 = !DILocation(line: 96, column: 51, scope: !205)
!210 = !DILocation(line: 96, column: 50, scope: !205)
!211 = !DILocation(line: 96, column: 41, scope: !205)
!212 = !DILocation(line: 96, column: 61, scope: !205)
!213 = !DILocation(line: 96, column: 21, scope: !205)
!214 = !DILocation(line: 96, column: 68, scope: !205)
!215 = !DILocation(line: 96, column: 21, scope: !206)
!216 = !DILocation(line: 98, column: 21, scope: !217)
!217 = distinct !DILexicalBlock(scope: !205, file: !3, line: 97, column: 17)
!218 = !DILocation(line: 100, column: 21, scope: !217)
!219 = !DILocation(line: 100, column: 26, scope: !217)
!220 = !DILocation(line: 100, column: 35, scope: !217)
!221 = !DILocation(line: 101, column: 17, scope: !217)
!222 = !DILocation(line: 102, column: 24, scope: !206)
!223 = !DILocation(line: 102, column: 17, scope: !206)
!224 = !DILocation(line: 103, column: 13, scope: !206)
!225 = !DILocation(line: 104, column: 9, scope: !198)
!226 = !DILocation(line: 106, column: 66, scope: !178)
!227 = !DILocation(line: 107, column: 64, scope: !178)
!228 = !DILocation(line: 107, column: 5, scope: !178)
!229 = !DILocation(line: 108, column: 1, scope: !178)
!230 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 112, type: !64, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!231 = !DILocalVariable(name: "data", scope: !230, file: !3, line: 114, type: !55)
!232 = !DILocation(line: 114, column: 12, scope: !230)
!233 = !DILocalVariable(name: "dataBuffer", scope: !230, file: !3, line: 115, type: !69)
!234 = !DILocation(line: 115, column: 10, scope: !230)
!235 = !DILocation(line: 116, column: 12, scope: !230)
!236 = !DILocation(line: 116, column: 10, scope: !230)
!237 = !DILocalVariable(name: "dataLen", scope: !238, file: !3, line: 119, type: !77)
!238 = distinct !DILexicalBlock(scope: !230, file: !3, line: 117, column: 5)
!239 = !DILocation(line: 119, column: 16, scope: !238)
!240 = !DILocation(line: 119, column: 33, scope: !238)
!241 = !DILocation(line: 119, column: 26, scope: !238)
!242 = !DILocalVariable(name: "pFile", scope: !238, file: !3, line: 120, type: !84)
!243 = !DILocation(line: 120, column: 16, scope: !238)
!244 = !DILocation(line: 122, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !238, file: !3, line: 122, column: 13)
!246 = !DILocation(line: 122, column: 16, scope: !245)
!247 = !DILocation(line: 122, column: 25, scope: !245)
!248 = !DILocation(line: 122, column: 13, scope: !238)
!249 = !DILocation(line: 124, column: 21, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !3, line: 123, column: 9)
!251 = !DILocation(line: 124, column: 19, scope: !250)
!252 = !DILocation(line: 125, column: 17, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !3, line: 125, column: 17)
!254 = !DILocation(line: 125, column: 23, scope: !253)
!255 = !DILocation(line: 125, column: 17, scope: !250)
!256 = !DILocation(line: 128, column: 27, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 128, column: 21)
!258 = distinct !DILexicalBlock(scope: !253, file: !3, line: 126, column: 13)
!259 = !DILocation(line: 128, column: 32, scope: !257)
!260 = !DILocation(line: 128, column: 31, scope: !257)
!261 = !DILocation(line: 128, column: 51, scope: !257)
!262 = !DILocation(line: 128, column: 50, scope: !257)
!263 = !DILocation(line: 128, column: 41, scope: !257)
!264 = !DILocation(line: 128, column: 61, scope: !257)
!265 = !DILocation(line: 128, column: 21, scope: !257)
!266 = !DILocation(line: 128, column: 68, scope: !257)
!267 = !DILocation(line: 128, column: 21, scope: !258)
!268 = !DILocation(line: 130, column: 21, scope: !269)
!269 = distinct !DILexicalBlock(scope: !257, file: !3, line: 129, column: 17)
!270 = !DILocation(line: 132, column: 21, scope: !269)
!271 = !DILocation(line: 132, column: 26, scope: !269)
!272 = !DILocation(line: 132, column: 35, scope: !269)
!273 = !DILocation(line: 133, column: 17, scope: !269)
!274 = !DILocation(line: 134, column: 24, scope: !258)
!275 = !DILocation(line: 134, column: 17, scope: !258)
!276 = !DILocation(line: 135, column: 13, scope: !258)
!277 = !DILocation(line: 136, column: 9, scope: !250)
!278 = !DILocation(line: 138, column: 66, scope: !230)
!279 = !DILocation(line: 139, column: 64, scope: !230)
!280 = !DILocation(line: 139, column: 5, scope: !230)
!281 = !DILocation(line: 140, column: 1, scope: !230)
!282 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 144, type: !64, scopeLine: 145, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!283 = !DILocalVariable(name: "data", scope: !282, file: !3, line: 146, type: !55)
!284 = !DILocation(line: 146, column: 12, scope: !282)
!285 = !DILocalVariable(name: "dataBuffer", scope: !282, file: !3, line: 147, type: !69)
!286 = !DILocation(line: 147, column: 10, scope: !282)
!287 = !DILocation(line: 148, column: 12, scope: !282)
!288 = !DILocation(line: 148, column: 10, scope: !282)
!289 = !DILocation(line: 150, column: 12, scope: !282)
!290 = !DILocation(line: 150, column: 5, scope: !282)
!291 = !DILocation(line: 151, column: 65, scope: !282)
!292 = !DILocation(line: 152, column: 63, scope: !282)
!293 = !DILocation(line: 152, column: 5, scope: !282)
!294 = !DILocation(line: 153, column: 1, scope: !282)
!295 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_22_good", scope: !3, file: !3, line: 155, type: !64, scopeLine: 156, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!296 = !DILocation(line: 157, column: 5, scope: !295)
!297 = !DILocation(line: 158, column: 5, scope: !295)
!298 = !DILocation(line: 159, column: 5, scope: !295)
!299 = !DILocation(line: 160, column: 1, scope: !295)
!300 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_22_badSink", scope: !58, file: !58, line: 31, type: !301, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !55}
!303 = !DILocalVariable(name: "data", arg: 1, scope: !300, file: !58, line: 31, type: !55)
!304 = !DILocation(line: 31, column: 67, scope: !300)
!305 = !DILocation(line: 33, column: 8, scope: !306)
!306 = distinct !DILexicalBlock(scope: !300, file: !58, line: 33, column: 8)
!307 = !DILocation(line: 33, column: 8, scope: !300)
!308 = !DILocalVariable(name: "i", scope: !309, file: !58, line: 36, type: !7)
!309 = distinct !DILexicalBlock(scope: !310, file: !58, line: 35, column: 9)
!310 = distinct !DILexicalBlock(scope: !306, file: !58, line: 34, column: 5)
!311 = !DILocation(line: 36, column: 17, scope: !309)
!312 = !DILocalVariable(name: "n", scope: !309, file: !58, line: 36, type: !7)
!313 = !DILocation(line: 36, column: 20, scope: !309)
!314 = !DILocalVariable(name: "intVariable", scope: !309, file: !58, line: 36, type: !7)
!315 = !DILocation(line: 36, column: 23, scope: !309)
!316 = !DILocation(line: 37, column: 24, scope: !317)
!317 = distinct !DILexicalBlock(scope: !309, file: !58, line: 37, column: 17)
!318 = !DILocation(line: 37, column: 17, scope: !317)
!319 = !DILocation(line: 37, column: 40, scope: !317)
!320 = !DILocation(line: 37, column: 17, scope: !309)
!321 = !DILocation(line: 40, column: 29, scope: !322)
!322 = distinct !DILexicalBlock(scope: !317, file: !58, line: 38, column: 13)
!323 = !DILocation(line: 41, column: 24, scope: !324)
!324 = distinct !DILexicalBlock(scope: !322, file: !58, line: 41, column: 17)
!325 = !DILocation(line: 41, column: 22, scope: !324)
!326 = !DILocation(line: 41, column: 29, scope: !327)
!327 = distinct !DILexicalBlock(scope: !324, file: !58, line: 41, column: 17)
!328 = !DILocation(line: 41, column: 33, scope: !327)
!329 = !DILocation(line: 41, column: 31, scope: !327)
!330 = !DILocation(line: 41, column: 17, scope: !324)
!331 = !DILocation(line: 44, column: 32, scope: !332)
!332 = distinct !DILexicalBlock(scope: !327, file: !58, line: 42, column: 17)
!333 = !DILocation(line: 45, column: 17, scope: !332)
!334 = !DILocation(line: 41, column: 37, scope: !327)
!335 = !DILocation(line: 41, column: 17, scope: !327)
!336 = distinct !{!336, !330, !337, !338}
!337 = !DILocation(line: 45, column: 17, scope: !324)
!338 = !{!"llvm.loop.mustprogress"}
!339 = !DILocation(line: 46, column: 30, scope: !322)
!340 = !DILocation(line: 46, column: 17, scope: !322)
!341 = !DILocation(line: 47, column: 13, scope: !322)
!342 = !DILocation(line: 49, column: 5, scope: !310)
!343 = !DILocation(line: 50, column: 1, scope: !300)
!344 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G1Sink", scope: !58, file: !58, line: 62, type: !301, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!345 = !DILocalVariable(name: "data", arg: 1, scope: !344, file: !58, line: 62, type: !55)
!346 = !DILocation(line: 62, column: 72, scope: !344)
!347 = !DILocation(line: 64, column: 8, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !58, line: 64, column: 8)
!349 = !DILocation(line: 64, column: 8, scope: !344)
!350 = !DILocation(line: 67, column: 9, scope: !351)
!351 = distinct !DILexicalBlock(scope: !348, file: !58, line: 65, column: 5)
!352 = !DILocation(line: 68, column: 5, scope: !351)
!353 = !DILocalVariable(name: "i", scope: !354, file: !58, line: 72, type: !7)
!354 = distinct !DILexicalBlock(scope: !355, file: !58, line: 71, column: 9)
!355 = distinct !DILexicalBlock(scope: !348, file: !58, line: 70, column: 5)
!356 = !DILocation(line: 72, column: 17, scope: !354)
!357 = !DILocalVariable(name: "n", scope: !354, file: !58, line: 72, type: !7)
!358 = !DILocation(line: 72, column: 20, scope: !354)
!359 = !DILocalVariable(name: "intVariable", scope: !354, file: !58, line: 72, type: !7)
!360 = !DILocation(line: 72, column: 23, scope: !354)
!361 = !DILocation(line: 73, column: 24, scope: !362)
!362 = distinct !DILexicalBlock(scope: !354, file: !58, line: 73, column: 17)
!363 = !DILocation(line: 73, column: 17, scope: !362)
!364 = !DILocation(line: 73, column: 40, scope: !362)
!365 = !DILocation(line: 73, column: 17, scope: !354)
!366 = !DILocation(line: 76, column: 21, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !58, line: 76, column: 21)
!368 = distinct !DILexicalBlock(scope: !362, file: !58, line: 74, column: 13)
!369 = !DILocation(line: 76, column: 23, scope: !367)
!370 = !DILocation(line: 76, column: 21, scope: !368)
!371 = !DILocation(line: 78, column: 33, scope: !372)
!372 = distinct !DILexicalBlock(scope: !367, file: !58, line: 77, column: 17)
!373 = !DILocation(line: 79, column: 28, scope: !374)
!374 = distinct !DILexicalBlock(scope: !372, file: !58, line: 79, column: 21)
!375 = !DILocation(line: 79, column: 26, scope: !374)
!376 = !DILocation(line: 79, column: 33, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !58, line: 79, column: 21)
!378 = !DILocation(line: 79, column: 37, scope: !377)
!379 = !DILocation(line: 79, column: 35, scope: !377)
!380 = !DILocation(line: 79, column: 21, scope: !374)
!381 = !DILocation(line: 82, column: 36, scope: !382)
!382 = distinct !DILexicalBlock(scope: !377, file: !58, line: 80, column: 21)
!383 = !DILocation(line: 83, column: 21, scope: !382)
!384 = !DILocation(line: 79, column: 41, scope: !377)
!385 = !DILocation(line: 79, column: 21, scope: !377)
!386 = distinct !{!386, !380, !387, !338}
!387 = !DILocation(line: 83, column: 21, scope: !374)
!388 = !DILocation(line: 84, column: 34, scope: !372)
!389 = !DILocation(line: 84, column: 21, scope: !372)
!390 = !DILocation(line: 85, column: 17, scope: !372)
!391 = !DILocation(line: 86, column: 13, scope: !368)
!392 = !DILocation(line: 89, column: 1, scope: !344)
!393 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Sink", scope: !58, file: !58, line: 92, type: !301, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!394 = !DILocalVariable(name: "data", arg: 1, scope: !393, file: !58, line: 92, type: !55)
!395 = !DILocation(line: 92, column: 72, scope: !393)
!396 = !DILocation(line: 94, column: 8, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !58, line: 94, column: 8)
!398 = !DILocation(line: 94, column: 8, scope: !393)
!399 = !DILocalVariable(name: "i", scope: !400, file: !58, line: 97, type: !7)
!400 = distinct !DILexicalBlock(scope: !401, file: !58, line: 96, column: 9)
!401 = distinct !DILexicalBlock(scope: !397, file: !58, line: 95, column: 5)
!402 = !DILocation(line: 97, column: 17, scope: !400)
!403 = !DILocalVariable(name: "n", scope: !400, file: !58, line: 97, type: !7)
!404 = !DILocation(line: 97, column: 20, scope: !400)
!405 = !DILocalVariable(name: "intVariable", scope: !400, file: !58, line: 97, type: !7)
!406 = !DILocation(line: 97, column: 23, scope: !400)
!407 = !DILocation(line: 98, column: 24, scope: !408)
!408 = distinct !DILexicalBlock(scope: !400, file: !58, line: 98, column: 17)
!409 = !DILocation(line: 98, column: 17, scope: !408)
!410 = !DILocation(line: 98, column: 40, scope: !408)
!411 = !DILocation(line: 98, column: 17, scope: !400)
!412 = !DILocation(line: 101, column: 21, scope: !413)
!413 = distinct !DILexicalBlock(scope: !414, file: !58, line: 101, column: 21)
!414 = distinct !DILexicalBlock(scope: !408, file: !58, line: 99, column: 13)
!415 = !DILocation(line: 101, column: 23, scope: !413)
!416 = !DILocation(line: 101, column: 21, scope: !414)
!417 = !DILocation(line: 103, column: 33, scope: !418)
!418 = distinct !DILexicalBlock(scope: !413, file: !58, line: 102, column: 17)
!419 = !DILocation(line: 104, column: 28, scope: !420)
!420 = distinct !DILexicalBlock(scope: !418, file: !58, line: 104, column: 21)
!421 = !DILocation(line: 104, column: 26, scope: !420)
!422 = !DILocation(line: 104, column: 33, scope: !423)
!423 = distinct !DILexicalBlock(scope: !420, file: !58, line: 104, column: 21)
!424 = !DILocation(line: 104, column: 37, scope: !423)
!425 = !DILocation(line: 104, column: 35, scope: !423)
!426 = !DILocation(line: 104, column: 21, scope: !420)
!427 = !DILocation(line: 107, column: 36, scope: !428)
!428 = distinct !DILexicalBlock(scope: !423, file: !58, line: 105, column: 21)
!429 = !DILocation(line: 108, column: 21, scope: !428)
!430 = !DILocation(line: 104, column: 41, scope: !423)
!431 = !DILocation(line: 104, column: 21, scope: !423)
!432 = distinct !{!432, !426, !433, !338}
!433 = !DILocation(line: 108, column: 21, scope: !420)
!434 = !DILocation(line: 109, column: 34, scope: !418)
!435 = !DILocation(line: 109, column: 21, scope: !418)
!436 = !DILocation(line: 110, column: 17, scope: !418)
!437 = !DILocation(line: 111, column: 13, scope: !414)
!438 = !DILocation(line: 113, column: 5, scope: !401)
!439 = !DILocation(line: 114, column: 1, scope: !393)
!440 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink", scope: !58, file: !58, line: 117, type: !301, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!441 = !DILocalVariable(name: "data", arg: 1, scope: !440, file: !58, line: 117, type: !55)
!442 = !DILocation(line: 117, column: 71, scope: !440)
!443 = !DILocation(line: 119, column: 8, scope: !444)
!444 = distinct !DILexicalBlock(scope: !440, file: !58, line: 119, column: 8)
!445 = !DILocation(line: 119, column: 8, scope: !440)
!446 = !DILocalVariable(name: "i", scope: !447, file: !58, line: 122, type: !7)
!447 = distinct !DILexicalBlock(scope: !448, file: !58, line: 121, column: 9)
!448 = distinct !DILexicalBlock(scope: !444, file: !58, line: 120, column: 5)
!449 = !DILocation(line: 122, column: 17, scope: !447)
!450 = !DILocalVariable(name: "n", scope: !447, file: !58, line: 122, type: !7)
!451 = !DILocation(line: 122, column: 20, scope: !447)
!452 = !DILocalVariable(name: "intVariable", scope: !447, file: !58, line: 122, type: !7)
!453 = !DILocation(line: 122, column: 23, scope: !447)
!454 = !DILocation(line: 123, column: 24, scope: !455)
!455 = distinct !DILexicalBlock(scope: !447, file: !58, line: 123, column: 17)
!456 = !DILocation(line: 123, column: 17, scope: !455)
!457 = !DILocation(line: 123, column: 40, scope: !455)
!458 = !DILocation(line: 123, column: 17, scope: !447)
!459 = !DILocation(line: 126, column: 29, scope: !460)
!460 = distinct !DILexicalBlock(scope: !455, file: !58, line: 124, column: 13)
!461 = !DILocation(line: 127, column: 24, scope: !462)
!462 = distinct !DILexicalBlock(scope: !460, file: !58, line: 127, column: 17)
!463 = !DILocation(line: 127, column: 22, scope: !462)
!464 = !DILocation(line: 127, column: 29, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !58, line: 127, column: 17)
!466 = !DILocation(line: 127, column: 33, scope: !465)
!467 = !DILocation(line: 127, column: 31, scope: !465)
!468 = !DILocation(line: 127, column: 17, scope: !462)
!469 = !DILocation(line: 130, column: 32, scope: !470)
!470 = distinct !DILexicalBlock(scope: !465, file: !58, line: 128, column: 17)
!471 = !DILocation(line: 131, column: 17, scope: !470)
!472 = !DILocation(line: 127, column: 37, scope: !465)
!473 = !DILocation(line: 127, column: 17, scope: !465)
!474 = distinct !{!474, !468, !475, !338}
!475 = !DILocation(line: 131, column: 17, scope: !462)
!476 = !DILocation(line: 132, column: 30, scope: !460)
!477 = !DILocation(line: 132, column: 17, scope: !460)
!478 = !DILocation(line: 133, column: 13, scope: !460)
!479 = !DILocation(line: 135, column: 5, scope: !448)
!480 = !DILocation(line: 136, column: 1, scope: !440)
!481 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !301, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!482 = !DILocalVariable(name: "line", arg: 1, scope: !481, file: !18, line: 11, type: !55)
!483 = !DILocation(line: 11, column: 25, scope: !481)
!484 = !DILocation(line: 13, column: 1, scope: !481)
!485 = !DILocation(line: 14, column: 8, scope: !486)
!486 = distinct !DILexicalBlock(scope: !481, file: !18, line: 14, column: 8)
!487 = !DILocation(line: 14, column: 13, scope: !486)
!488 = !DILocation(line: 14, column: 8, scope: !481)
!489 = !DILocation(line: 16, column: 24, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !18, line: 15, column: 5)
!491 = !DILocation(line: 16, column: 9, scope: !490)
!492 = !DILocation(line: 17, column: 5, scope: !490)
!493 = !DILocation(line: 18, column: 5, scope: !481)
!494 = !DILocation(line: 19, column: 1, scope: !481)
!495 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !301, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!496 = !DILocalVariable(name: "line", arg: 1, scope: !495, file: !18, line: 20, type: !55)
!497 = !DILocation(line: 20, column: 29, scope: !495)
!498 = !DILocation(line: 22, column: 8, scope: !499)
!499 = distinct !DILexicalBlock(scope: !495, file: !18, line: 22, column: 8)
!500 = !DILocation(line: 22, column: 13, scope: !499)
!501 = !DILocation(line: 22, column: 8, scope: !495)
!502 = !DILocation(line: 24, column: 24, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !18, line: 23, column: 5)
!504 = !DILocation(line: 24, column: 9, scope: !503)
!505 = !DILocation(line: 25, column: 5, scope: !503)
!506 = !DILocation(line: 26, column: 1, scope: !495)
!507 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !508, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !510}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !78, line: 74, baseType: !7)
!512 = !DILocalVariable(name: "line", arg: 1, scope: !507, file: !18, line: 27, type: !510)
!513 = !DILocation(line: 27, column: 29, scope: !507)
!514 = !DILocation(line: 29, column: 8, scope: !515)
!515 = distinct !DILexicalBlock(scope: !507, file: !18, line: 29, column: 8)
!516 = !DILocation(line: 29, column: 13, scope: !515)
!517 = !DILocation(line: 29, column: 8, scope: !507)
!518 = !DILocation(line: 31, column: 27, scope: !519)
!519 = distinct !DILexicalBlock(scope: !515, file: !18, line: 30, column: 5)
!520 = !DILocation(line: 31, column: 9, scope: !519)
!521 = !DILocation(line: 32, column: 5, scope: !519)
!522 = !DILocation(line: 33, column: 1, scope: !507)
!523 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !524, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !7}
!526 = !DILocalVariable(name: "intNumber", arg: 1, scope: !523, file: !18, line: 35, type: !7)
!527 = !DILocation(line: 35, column: 24, scope: !523)
!528 = !DILocation(line: 37, column: 20, scope: !523)
!529 = !DILocation(line: 37, column: 5, scope: !523)
!530 = !DILocation(line: 38, column: 1, scope: !523)
!531 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !532, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !534}
!534 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!535 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !531, file: !18, line: 40, type: !534)
!536 = !DILocation(line: 40, column: 28, scope: !531)
!537 = !DILocation(line: 42, column: 21, scope: !531)
!538 = !DILocation(line: 42, column: 5, scope: !531)
!539 = !DILocation(line: 43, column: 1, scope: !531)
!540 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !541, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!541 = !DISubroutineType(types: !542)
!542 = !{null, !543}
!543 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!544 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !540, file: !18, line: 45, type: !543)
!545 = !DILocation(line: 45, column: 28, scope: !540)
!546 = !DILocation(line: 47, column: 20, scope: !540)
!547 = !DILocation(line: 47, column: 5, scope: !540)
!548 = !DILocation(line: 48, column: 1, scope: !540)
!549 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !550, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !112}
!552 = !DILocalVariable(name: "longNumber", arg: 1, scope: !549, file: !18, line: 50, type: !112)
!553 = !DILocation(line: 50, column: 26, scope: !549)
!554 = !DILocation(line: 52, column: 21, scope: !549)
!555 = !DILocation(line: 52, column: 5, scope: !549)
!556 = !DILocation(line: 53, column: 1, scope: !549)
!557 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !558, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !560}
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !561, line: 27, baseType: !562)
!561 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !111, line: 44, baseType: !112)
!563 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !557, file: !18, line: 55, type: !560)
!564 = !DILocation(line: 55, column: 33, scope: !557)
!565 = !DILocation(line: 57, column: 29, scope: !557)
!566 = !DILocation(line: 57, column: 5, scope: !557)
!567 = !DILocation(line: 58, column: 1, scope: !557)
!568 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !569, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!569 = !DISubroutineType(types: !570)
!570 = !{null, !77}
!571 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !568, file: !18, line: 60, type: !77)
!572 = !DILocation(line: 60, column: 29, scope: !568)
!573 = !DILocation(line: 62, column: 21, scope: !568)
!574 = !DILocation(line: 62, column: 5, scope: !568)
!575 = !DILocation(line: 63, column: 1, scope: !568)
!576 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !577, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !56}
!579 = !DILocalVariable(name: "charHex", arg: 1, scope: !576, file: !18, line: 65, type: !56)
!580 = !DILocation(line: 65, column: 29, scope: !576)
!581 = !DILocation(line: 67, column: 22, scope: !576)
!582 = !DILocation(line: 67, column: 5, scope: !576)
!583 = !DILocation(line: 68, column: 1, scope: !576)
!584 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !585, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !511}
!587 = !DILocalVariable(name: "wideChar", arg: 1, scope: !584, file: !18, line: 70, type: !511)
!588 = !DILocation(line: 70, column: 29, scope: !584)
!589 = !DILocalVariable(name: "s", scope: !584, file: !18, line: 74, type: !590)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 64, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 2)
!593 = !DILocation(line: 74, column: 13, scope: !584)
!594 = !DILocation(line: 75, column: 16, scope: !584)
!595 = !DILocation(line: 75, column: 9, scope: !584)
!596 = !DILocation(line: 75, column: 14, scope: !584)
!597 = !DILocation(line: 76, column: 9, scope: !584)
!598 = !DILocation(line: 76, column: 14, scope: !584)
!599 = !DILocation(line: 77, column: 21, scope: !584)
!600 = !DILocation(line: 77, column: 5, scope: !584)
!601 = !DILocation(line: 78, column: 1, scope: !584)
!602 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !603, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !22}
!605 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !602, file: !18, line: 80, type: !22)
!606 = !DILocation(line: 80, column: 33, scope: !602)
!607 = !DILocation(line: 82, column: 20, scope: !602)
!608 = !DILocation(line: 82, column: 5, scope: !602)
!609 = !DILocation(line: 83, column: 1, scope: !602)
!610 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !611, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !38}
!613 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !610, file: !18, line: 85, type: !38)
!614 = !DILocation(line: 85, column: 45, scope: !610)
!615 = !DILocation(line: 87, column: 22, scope: !610)
!616 = !DILocation(line: 87, column: 5, scope: !610)
!617 = !DILocation(line: 88, column: 1, scope: !610)
!618 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !619, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !621}
!621 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!622 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !618, file: !18, line: 90, type: !621)
!623 = !DILocation(line: 90, column: 29, scope: !618)
!624 = !DILocation(line: 92, column: 20, scope: !618)
!625 = !DILocation(line: 92, column: 5, scope: !618)
!626 = !DILocation(line: 93, column: 1, scope: !618)
!627 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !628, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !630}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !632, line: 100, baseType: !633)
!632 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_093/source_code")
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !632, line: 96, size: 64, elements: !634)
!634 = !{!635, !636}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !633, file: !632, line: 98, baseType: !7, size: 32)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !633, file: !632, line: 99, baseType: !7, size: 32, offset: 32)
!637 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !627, file: !18, line: 95, type: !630)
!638 = !DILocation(line: 95, column: 40, scope: !627)
!639 = !DILocation(line: 97, column: 26, scope: !627)
!640 = !DILocation(line: 97, column: 47, scope: !627)
!641 = !DILocation(line: 97, column: 55, scope: !627)
!642 = !DILocation(line: 97, column: 76, scope: !627)
!643 = !DILocation(line: 97, column: 5, scope: !627)
!644 = !DILocation(line: 98, column: 1, scope: !627)
!645 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !646, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !648, !77}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!649 = !DILocalVariable(name: "bytes", arg: 1, scope: !645, file: !18, line: 100, type: !648)
!650 = !DILocation(line: 100, column: 38, scope: !645)
!651 = !DILocalVariable(name: "numBytes", arg: 2, scope: !645, file: !18, line: 100, type: !77)
!652 = !DILocation(line: 100, column: 52, scope: !645)
!653 = !DILocalVariable(name: "i", scope: !645, file: !18, line: 102, type: !77)
!654 = !DILocation(line: 102, column: 12, scope: !645)
!655 = !DILocation(line: 103, column: 12, scope: !656)
!656 = distinct !DILexicalBlock(scope: !645, file: !18, line: 103, column: 5)
!657 = !DILocation(line: 103, column: 10, scope: !656)
!658 = !DILocation(line: 103, column: 17, scope: !659)
!659 = distinct !DILexicalBlock(scope: !656, file: !18, line: 103, column: 5)
!660 = !DILocation(line: 103, column: 21, scope: !659)
!661 = !DILocation(line: 103, column: 19, scope: !659)
!662 = !DILocation(line: 103, column: 5, scope: !656)
!663 = !DILocation(line: 105, column: 24, scope: !664)
!664 = distinct !DILexicalBlock(scope: !659, file: !18, line: 104, column: 5)
!665 = !DILocation(line: 105, column: 30, scope: !664)
!666 = !DILocation(line: 105, column: 9, scope: !664)
!667 = !DILocation(line: 106, column: 5, scope: !664)
!668 = !DILocation(line: 103, column: 31, scope: !659)
!669 = !DILocation(line: 103, column: 5, scope: !659)
!670 = distinct !{!670, !662, !671, !338}
!671 = !DILocation(line: 106, column: 5, scope: !656)
!672 = !DILocation(line: 107, column: 5, scope: !645)
!673 = !DILocation(line: 108, column: 1, scope: !645)
!674 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !675, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!675 = !DISubroutineType(types: !676)
!676 = !{!77, !648, !77, !55}
!677 = !DILocalVariable(name: "bytes", arg: 1, scope: !674, file: !18, line: 113, type: !648)
!678 = !DILocation(line: 113, column: 39, scope: !674)
!679 = !DILocalVariable(name: "numBytes", arg: 2, scope: !674, file: !18, line: 113, type: !77)
!680 = !DILocation(line: 113, column: 53, scope: !674)
!681 = !DILocalVariable(name: "hex", arg: 3, scope: !674, file: !18, line: 113, type: !55)
!682 = !DILocation(line: 113, column: 71, scope: !674)
!683 = !DILocalVariable(name: "numWritten", scope: !674, file: !18, line: 115, type: !77)
!684 = !DILocation(line: 115, column: 12, scope: !674)
!685 = !DILocation(line: 121, column: 5, scope: !674)
!686 = !DILocation(line: 121, column: 12, scope: !674)
!687 = !DILocation(line: 121, column: 25, scope: !674)
!688 = !DILocation(line: 121, column: 23, scope: !674)
!689 = !DILocation(line: 121, column: 34, scope: !674)
!690 = !DILocation(line: 121, column: 37, scope: !674)
!691 = !DILocation(line: 121, column: 67, scope: !674)
!692 = !DILocation(line: 121, column: 70, scope: !674)
!693 = !DILocation(line: 0, scope: !674)
!694 = !DILocalVariable(name: "byte", scope: !695, file: !18, line: 123, type: !7)
!695 = distinct !DILexicalBlock(scope: !674, file: !18, line: 122, column: 5)
!696 = !DILocation(line: 123, column: 13, scope: !695)
!697 = !DILocation(line: 124, column: 17, scope: !695)
!698 = !DILocation(line: 124, column: 25, scope: !695)
!699 = !DILocation(line: 124, column: 23, scope: !695)
!700 = !DILocation(line: 124, column: 9, scope: !695)
!701 = !DILocation(line: 125, column: 45, scope: !695)
!702 = !DILocation(line: 125, column: 29, scope: !695)
!703 = !DILocation(line: 125, column: 9, scope: !695)
!704 = !DILocation(line: 125, column: 15, scope: !695)
!705 = !DILocation(line: 125, column: 27, scope: !695)
!706 = !DILocation(line: 126, column: 9, scope: !695)
!707 = distinct !{!707, !685, !708, !338}
!708 = !DILocation(line: 127, column: 5, scope: !674)
!709 = !DILocation(line: 129, column: 12, scope: !674)
!710 = !DILocation(line: 129, column: 5, scope: !674)
!711 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !712, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!712 = !DISubroutineType(types: !713)
!713 = !{!77, !648, !77, !510}
!714 = !DILocalVariable(name: "bytes", arg: 1, scope: !711, file: !18, line: 135, type: !648)
!715 = !DILocation(line: 135, column: 41, scope: !711)
!716 = !DILocalVariable(name: "numBytes", arg: 2, scope: !711, file: !18, line: 135, type: !77)
!717 = !DILocation(line: 135, column: 55, scope: !711)
!718 = !DILocalVariable(name: "hex", arg: 3, scope: !711, file: !18, line: 135, type: !510)
!719 = !DILocation(line: 135, column: 76, scope: !711)
!720 = !DILocalVariable(name: "numWritten", scope: !711, file: !18, line: 137, type: !77)
!721 = !DILocation(line: 137, column: 12, scope: !711)
!722 = !DILocation(line: 143, column: 5, scope: !711)
!723 = !DILocation(line: 143, column: 12, scope: !711)
!724 = !DILocation(line: 143, column: 25, scope: !711)
!725 = !DILocation(line: 143, column: 23, scope: !711)
!726 = !DILocation(line: 143, column: 34, scope: !711)
!727 = !DILocation(line: 143, column: 47, scope: !711)
!728 = !DILocation(line: 143, column: 55, scope: !711)
!729 = !DILocation(line: 143, column: 53, scope: !711)
!730 = !DILocation(line: 143, column: 37, scope: !711)
!731 = !DILocation(line: 143, column: 68, scope: !711)
!732 = !DILocation(line: 143, column: 81, scope: !711)
!733 = !DILocation(line: 143, column: 89, scope: !711)
!734 = !DILocation(line: 143, column: 87, scope: !711)
!735 = !DILocation(line: 143, column: 100, scope: !711)
!736 = !DILocation(line: 143, column: 71, scope: !711)
!737 = !DILocation(line: 0, scope: !711)
!738 = !DILocalVariable(name: "byte", scope: !739, file: !18, line: 145, type: !7)
!739 = distinct !DILexicalBlock(scope: !711, file: !18, line: 144, column: 5)
!740 = !DILocation(line: 145, column: 13, scope: !739)
!741 = !DILocation(line: 146, column: 18, scope: !739)
!742 = !DILocation(line: 146, column: 26, scope: !739)
!743 = !DILocation(line: 146, column: 24, scope: !739)
!744 = !DILocation(line: 146, column: 9, scope: !739)
!745 = !DILocation(line: 147, column: 45, scope: !739)
!746 = !DILocation(line: 147, column: 29, scope: !739)
!747 = !DILocation(line: 147, column: 9, scope: !739)
!748 = !DILocation(line: 147, column: 15, scope: !739)
!749 = !DILocation(line: 147, column: 27, scope: !739)
!750 = !DILocation(line: 148, column: 9, scope: !739)
!751 = distinct !{!751, !722, !752, !338}
!752 = !DILocation(line: 149, column: 5, scope: !711)
!753 = !DILocation(line: 151, column: 12, scope: !711)
!754 = !DILocation(line: 151, column: 5, scope: !711)
!755 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !756, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!756 = !DISubroutineType(types: !757)
!757 = !{!7}
!758 = !DILocation(line: 158, column: 5, scope: !755)
!759 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !756, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!760 = !DILocation(line: 163, column: 5, scope: !759)
!761 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !756, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!762 = !DILocation(line: 168, column: 13, scope: !761)
!763 = !DILocation(line: 168, column: 20, scope: !761)
!764 = !DILocation(line: 168, column: 5, scope: !761)
!765 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !64, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!766 = !DILocation(line: 187, column: 16, scope: !765)
!767 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !64, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!768 = !DILocation(line: 188, column: 16, scope: !767)
!769 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !64, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!770 = !DILocation(line: 189, column: 16, scope: !769)
!771 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !64, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!772 = !DILocation(line: 190, column: 16, scope: !771)
!773 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !64, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!774 = !DILocation(line: 191, column: 16, scope: !773)
!775 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !64, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!776 = !DILocation(line: 192, column: 16, scope: !775)
!777 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !64, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!778 = !DILocation(line: 193, column: 16, scope: !777)
!779 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !64, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!780 = !DILocation(line: 194, column: 16, scope: !779)
!781 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !64, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!782 = !DILocation(line: 195, column: 16, scope: !781)
!783 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !64, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!784 = !DILocation(line: 198, column: 15, scope: !783)
!785 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !64, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!786 = !DILocation(line: 199, column: 15, scope: !785)
!787 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !64, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!788 = !DILocation(line: 200, column: 15, scope: !787)
!789 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !64, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!790 = !DILocation(line: 201, column: 15, scope: !789)
!791 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !64, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!792 = !DILocation(line: 202, column: 15, scope: !791)
!793 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !64, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!794 = !DILocation(line: 203, column: 15, scope: !793)
!795 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !64, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!796 = !DILocation(line: 204, column: 15, scope: !795)
!797 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !64, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!798 = !DILocation(line: 205, column: 15, scope: !797)
!799 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !64, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!800 = !DILocation(line: 206, column: 15, scope: !799)
