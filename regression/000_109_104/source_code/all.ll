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
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.16 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.18 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.19 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9.22 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16.23 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_52_bad() #0 !dbg !56 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !61, metadata !DIExpression()), !dbg !65
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !66
  store i8* %arraydecay, i8** %data, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !68, metadata !DIExpression()), !dbg !73
  %1 = load i8*, i8** %data, align 8, !dbg !74
  %call = call i64 @strlen(i8* %1) #7, !dbg !75
  store i64 %call, i64* %dataLen, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !76, metadata !DIExpression()), !dbg !132
  %2 = load i64, i64* %dataLen, align 8, !dbg !133
  %sub = sub i64 100, %2, !dbg !135
  %cmp = icmp ugt i64 %sub, 1, !dbg !136
  br i1 %cmp, label %if.then, label %if.end11, !dbg !137

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !138
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !140
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !141
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !143
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !144

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !145
  %5 = load i64, i64* %dataLen, align 8, !dbg !148
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !149
  %6 = load i64, i64* %dataLen, align 8, !dbg !150
  %sub4 = sub i64 100, %6, !dbg !151
  %conv = trunc i64 %sub4 to i32, !dbg !152
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !153
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !154
  %cmp6 = icmp eq i8* %call5, null, !dbg !155
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !156

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !157
  %8 = load i8*, i8** %data, align 8, !dbg !159
  %9 = load i64, i64* %dataLen, align 8, !dbg !160
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !159
  store i8 0, i8* %arrayidx, align 1, !dbg !161
  br label %if.end, !dbg !162

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !163
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !164
  br label %if.end10, !dbg !165

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !166

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !167
  call void @CWE606_Unchecked_Loop_Condition__char_file_52b_badSink(i8* %11), !dbg !168
  ret void, !dbg !169
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
define dso_local void @goodG2B() #0 !dbg !170 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !174
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !174
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !175
  store i8* %arraydecay, i8** %data, align 8, !dbg !176
  %1 = load i8*, i8** %data, align 8, !dbg !177
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !178
  %2 = load i8*, i8** %data, align 8, !dbg !179
  call void @CWE606_Unchecked_Loop_Condition__char_file_52b_goodG2BSink(i8* %2), !dbg !180
  ret void, !dbg !181
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !182 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !185, metadata !DIExpression()), !dbg !186
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !186
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !186
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !187
  store i8* %arraydecay, i8** %data, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !189, metadata !DIExpression()), !dbg !191
  %1 = load i8*, i8** %data, align 8, !dbg !192
  %call = call i64 @strlen(i8* %1) #7, !dbg !193
  store i64 %call, i64* %dataLen, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !194, metadata !DIExpression()), !dbg !195
  %2 = load i64, i64* %dataLen, align 8, !dbg !196
  %sub = sub i64 100, %2, !dbg !198
  %cmp = icmp ugt i64 %sub, 1, !dbg !199
  br i1 %cmp, label %if.then, label %if.end11, !dbg !200

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !201
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !203
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !204
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !206
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !207

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !208
  %5 = load i64, i64* %dataLen, align 8, !dbg !211
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !212
  %6 = load i64, i64* %dataLen, align 8, !dbg !213
  %sub4 = sub i64 100, %6, !dbg !214
  %conv = trunc i64 %sub4 to i32, !dbg !215
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !216
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !217
  %cmp6 = icmp eq i8* %call5, null, !dbg !218
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !219

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !220
  %8 = load i8*, i8** %data, align 8, !dbg !222
  %9 = load i64, i64* %dataLen, align 8, !dbg !223
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !222
  store i8 0, i8* %arrayidx, align 1, !dbg !224
  br label %if.end, !dbg !225

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !226
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !227
  br label %if.end10, !dbg !228

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !229

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !230
  call void @CWE606_Unchecked_Loop_Condition__char_file_52b_goodB2GSink(i8* %11), !dbg !231
  ret void, !dbg !232
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_52_good() #0 !dbg !233 {
entry:
  call void @goodG2B(), !dbg !234
  call void @goodB2G(), !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_52b_badSink(i8* %data) #0 !dbg !237 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !240, metadata !DIExpression()), !dbg !241
  %0 = load i8*, i8** %data.addr, align 8, !dbg !242
  call void @CWE606_Unchecked_Loop_Condition__char_file_52c_badSink(i8* %0), !dbg !243
  ret void, !dbg !244
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_52b_goodG2BSink(i8* %data) #0 !dbg !245 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = load i8*, i8** %data.addr, align 8, !dbg !248
  call void @CWE606_Unchecked_Loop_Condition__char_file_52c_goodG2BSink(i8* %0), !dbg !249
  ret void, !dbg !250
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_52b_goodB2GSink(i8* %data) #0 !dbg !251 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !252, metadata !DIExpression()), !dbg !253
  %0 = load i8*, i8** %data.addr, align 8, !dbg !254
  call void @CWE606_Unchecked_Loop_Condition__char_file_52c_goodB2GSink(i8* %0), !dbg !255
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_52c_badSink(i8* %data) #0 !dbg !257 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i32* %i, metadata !260, metadata !DIExpression()), !dbg !262
  call void @llvm.dbg.declare(metadata i32* %n, metadata !263, metadata !DIExpression()), !dbg !264
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !265, metadata !DIExpression()), !dbg !266
  %0 = load i8*, i8** %data.addr, align 8, !dbg !267
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %n) #8, !dbg !269
  %cmp = icmp eq i32 %call, 1, !dbg !270
  br i1 %cmp, label %if.then, label %if.end, !dbg !271

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !272
  store i32 0, i32* %i, align 4, !dbg !274
  br label %for.cond, !dbg !276

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !277
  %2 = load i32, i32* %n, align 4, !dbg !279
  %cmp1 = icmp slt i32 %1, %2, !dbg !280
  br i1 %cmp1, label %for.body, label %for.end, !dbg !281

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !282
  %inc = add nsw i32 %3, 1, !dbg !282
  store i32 %inc, i32* %intVariable, align 4, !dbg !282
  br label %for.inc, !dbg !284

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !285
  %inc2 = add nsw i32 %4, 1, !dbg !285
  store i32 %inc2, i32* %i, align 4, !dbg !285
  br label %for.cond, !dbg !286, !llvm.loop !287

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !290
  call void @printIntLine(i32 %5), !dbg !291
  br label %if.end, !dbg !292

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !293
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_52c_goodG2BSink(i8* %data) #0 !dbg !294 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata i32* %i, metadata !297, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i32* %n, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load i8*, i8** %data.addr, align 8, !dbg !304
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %n) #8, !dbg !306
  %cmp = icmp eq i32 %call, 1, !dbg !307
  br i1 %cmp, label %if.then, label %if.end, !dbg !308

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !309
  store i32 0, i32* %i, align 4, !dbg !311
  br label %for.cond, !dbg !313

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !314
  %2 = load i32, i32* %n, align 4, !dbg !316
  %cmp1 = icmp slt i32 %1, %2, !dbg !317
  br i1 %cmp1, label %for.body, label %for.end, !dbg !318

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !319
  %inc = add nsw i32 %3, 1, !dbg !319
  store i32 %inc, i32* %intVariable, align 4, !dbg !319
  br label %for.inc, !dbg !321

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !322
  %inc2 = add nsw i32 %4, 1, !dbg !322
  store i32 %inc2, i32* %i, align 4, !dbg !322
  br label %for.cond, !dbg !323, !llvm.loop !324

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !326
  call void @printIntLine(i32 %5), !dbg !327
  br label %if.end, !dbg !328

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !329
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_52c_goodB2GSink(i8* %data) #0 !dbg !330 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !331, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata i32* %i, metadata !333, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata i32* %n, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !338, metadata !DIExpression()), !dbg !339
  %0 = load i8*, i8** %data.addr, align 8, !dbg !340
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %n) #8, !dbg !342
  %cmp = icmp eq i32 %call, 1, !dbg !343
  br i1 %cmp, label %if.then, label %if.end5, !dbg !344

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !345
  %cmp1 = icmp slt i32 %1, 10000, !dbg !348
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !349

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !350
  store i32 0, i32* %i, align 4, !dbg !352
  br label %for.cond, !dbg !354

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !355
  %3 = load i32, i32* %n, align 4, !dbg !357
  %cmp3 = icmp slt i32 %2, %3, !dbg !358
  br i1 %cmp3, label %for.body, label %for.end, !dbg !359

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !360
  %inc = add nsw i32 %4, 1, !dbg !360
  store i32 %inc, i32* %intVariable, align 4, !dbg !360
  br label %for.inc, !dbg !362

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !363
  %inc4 = add nsw i32 %5, 1, !dbg !363
  store i32 %inc4, i32* %i, align 4, !dbg !363
  br label %for.cond, !dbg !364, !llvm.loop !365

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !367
  call void @printIntLine(i32 %6), !dbg !368
  br label %if.end, !dbg !369

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !370

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !372 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !373, metadata !DIExpression()), !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)), !dbg !375
  %0 = load i8*, i8** %line.addr, align 8, !dbg !376
  %cmp = icmp ne i8* %0, null, !dbg !378
  br i1 %cmp, label %if.then, label %if.end, !dbg !379

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !380
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.17, i64 0, i64 0), i8* %1), !dbg !382
  br label %if.end, !dbg !383

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.18, i64 0, i64 0)), !dbg !384
  ret void, !dbg !385
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !386 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !387, metadata !DIExpression()), !dbg !388
  %0 = load i8*, i8** %line.addr, align 8, !dbg !389
  %cmp = icmp ne i8* %0, null, !dbg !391
  br i1 %cmp, label %if.then, label %if.end, !dbg !392

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !393
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.17, i64 0, i64 0), i8* %1), !dbg !395
  br label %if.end, !dbg !396

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !398 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i32*, i32** %line.addr, align 8, !dbg !405
  %cmp = icmp ne i32* %0, null, !dbg !407
  br i1 %cmp, label %if.then, label %if.end, !dbg !408

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !409
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.19, i64 0, i64 0), i32* %1), !dbg !411
  br label %if.end, !dbg !412

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !413
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !414 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !422 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !428
  %conv = sext i16 %0 to i32, !dbg !428
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !429
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !431 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !437
  %conv = fpext float %0 to double, !dbg !437
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !438
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !440 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !445
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !446
  ret void, !dbg !447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !448 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !457
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !459 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !462, metadata !DIExpression()), !dbg !463
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !464
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !465
  ret void, !dbg !466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !467 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !470, metadata !DIExpression()), !dbg !471
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !472
  %conv = sext i8 %0 to i32, !dbg !472
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.22, i64 0, i64 0), i32 %conv), !dbg !473
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !475 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !478, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !480, metadata !DIExpression()), !dbg !484
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !485
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !486
  store i32 %0, i32* %arrayidx, align 4, !dbg !487
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !488
  store i32 0, i32* %arrayidx1, align 4, !dbg !489
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !490
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !491
  ret void, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !493 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !496, metadata !DIExpression()), !dbg !497
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !498
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !499
  ret void, !dbg !500
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !501 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !504, metadata !DIExpression()), !dbg !505
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !506
  %conv = zext i8 %0 to i32, !dbg !506
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9.22, i64 0, i64 0), i32 %conv), !dbg !507
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !509 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !513, metadata !DIExpression()), !dbg !514
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !515
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !516
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !518 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !528, metadata !DIExpression()), !dbg !529
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !530
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !531
  %1 = load i32, i32* %intOne, align 4, !dbg !531
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !532
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !533
  %3 = load i32, i32* %intTwo, align 4, !dbg !533
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !534
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !536 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !540, metadata !DIExpression()), !dbg !541
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !542, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.declare(metadata i64* %i, metadata !544, metadata !DIExpression()), !dbg !545
  store i64 0, i64* %i, align 8, !dbg !546
  br label %for.cond, !dbg !548

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !549
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !551
  %cmp = icmp ult i64 %0, %1, !dbg !552
  br i1 %cmp, label %for.body, label %for.end, !dbg !553

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !554
  %3 = load i64, i64* %i, align 8, !dbg !556
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !554
  %4 = load i8, i8* %arrayidx, align 1, !dbg !554
  %conv = zext i8 %4 to i32, !dbg !554
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !557
  br label %for.inc, !dbg !558

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !559
  %inc = add i64 %5, 1, !dbg !559
  store i64 %inc, i64* %i, align 8, !dbg !559
  br label %for.cond, !dbg !560, !llvm.loop !561

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !563
  ret void, !dbg !564
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !565 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !568, metadata !DIExpression()), !dbg !569
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !570, metadata !DIExpression()), !dbg !571
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !572, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !574, metadata !DIExpression()), !dbg !575
  store i64 0, i64* %numWritten, align 8, !dbg !575
  br label %while.cond, !dbg !576

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !577
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !578
  %cmp = icmp ult i64 %0, %1, !dbg !579
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !580

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !581
  %2 = load i16*, i16** %call, align 8, !dbg !581
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !581
  %4 = load i64, i64* %numWritten, align 8, !dbg !581
  %mul = mul i64 2, %4, !dbg !581
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !581
  %5 = load i8, i8* %arrayidx, align 1, !dbg !581
  %conv = sext i8 %5 to i32, !dbg !581
  %idxprom = sext i32 %conv to i64, !dbg !581
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !581
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !581
  %conv2 = zext i16 %6 to i32, !dbg !581
  %and = and i32 %conv2, 4096, !dbg !581
  %tobool = icmp ne i32 %and, 0, !dbg !581
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !582

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !583
  %7 = load i16*, i16** %call3, align 8, !dbg !583
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !583
  %9 = load i64, i64* %numWritten, align 8, !dbg !583
  %mul4 = mul i64 2, %9, !dbg !583
  %add = add i64 %mul4, 1, !dbg !583
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !583
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !583
  %conv6 = sext i8 %10 to i32, !dbg !583
  %idxprom7 = sext i32 %conv6 to i64, !dbg !583
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !583
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !583
  %conv9 = zext i16 %11 to i32, !dbg !583
  %and10 = and i32 %conv9, 4096, !dbg !583
  %tobool11 = icmp ne i32 %and10, 0, !dbg !582
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !584
  br i1 %12, label %while.body, label %while.end, !dbg !576

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !585, metadata !DIExpression()), !dbg !587
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !588
  %14 = load i64, i64* %numWritten, align 8, !dbg !589
  %mul12 = mul i64 2, %14, !dbg !590
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !588
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !591
  %15 = load i32, i32* %byte, align 4, !dbg !592
  %conv15 = trunc i32 %15 to i8, !dbg !593
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !594
  %17 = load i64, i64* %numWritten, align 8, !dbg !595
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !594
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !596
  %18 = load i64, i64* %numWritten, align 8, !dbg !597
  %inc = add i64 %18, 1, !dbg !597
  store i64 %inc, i64* %numWritten, align 8, !dbg !597
  br label %while.cond, !dbg !576, !llvm.loop !598

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !600
  ret i64 %19, !dbg !601
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !602 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !605, metadata !DIExpression()), !dbg !606
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !607, metadata !DIExpression()), !dbg !608
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !609, metadata !DIExpression()), !dbg !610
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !611, metadata !DIExpression()), !dbg !612
  store i64 0, i64* %numWritten, align 8, !dbg !612
  br label %while.cond, !dbg !613

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !614
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !615
  %cmp = icmp ult i64 %0, %1, !dbg !616
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !617

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !618
  %3 = load i64, i64* %numWritten, align 8, !dbg !619
  %mul = mul i64 2, %3, !dbg !620
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !618
  %4 = load i32, i32* %arrayidx, align 4, !dbg !618
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !621
  %tobool = icmp ne i32 %call, 0, !dbg !621
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !622

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !623
  %6 = load i64, i64* %numWritten, align 8, !dbg !624
  %mul1 = mul i64 2, %6, !dbg !625
  %add = add i64 %mul1, 1, !dbg !626
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !623
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !623
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !627
  %tobool4 = icmp ne i32 %call3, 0, !dbg !622
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !628
  br i1 %8, label %while.body, label %while.end, !dbg !613

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !629, metadata !DIExpression()), !dbg !631
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !632
  %10 = load i64, i64* %numWritten, align 8, !dbg !633
  %mul5 = mul i64 2, %10, !dbg !634
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !632
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16.23, i64 0, i64 0), i32* %byte) #8, !dbg !635
  %11 = load i32, i32* %byte, align 4, !dbg !636
  %conv = trunc i32 %11 to i8, !dbg !637
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !638
  %13 = load i64, i64* %numWritten, align 8, !dbg !639
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !638
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !640
  %14 = load i64, i64* %numWritten, align 8, !dbg !641
  %inc = add i64 %14, 1, !dbg !641
  store i64 %inc, i64* %numWritten, align 8, !dbg !641
  br label %while.cond, !dbg !613, !llvm.loop !642

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !644
  ret i64 %15, !dbg !645
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !646 {
entry:
  ret i32 1, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !650 {
entry:
  ret i32 0, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !652 {
entry:
  %call = call i32 @rand() #8, !dbg !653
  %rem = srem i32 %call, 2, !dbg !654
  ret i32 %rem, !dbg !655
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !656 {
entry:
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !658 {
entry:
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !660 {
entry:
  ret void, !dbg !661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !662 {
entry:
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !664 {
entry:
  ret void, !dbg !665
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !666 {
entry:
  ret void, !dbg !667
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !668 {
entry:
  ret void, !dbg !669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !670 {
entry:
  ret void, !dbg !671
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !672 {
entry:
  ret void, !dbg !673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !674 {
entry:
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !676 {
entry:
  ret void, !dbg !677
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !678 {
entry:
  ret void, !dbg !679
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !680 {
entry:
  ret void, !dbg !681
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !682 {
entry:
  ret void, !dbg !683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !684 {
entry:
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !686 {
entry:
  ret void, !dbg !687
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !688 {
entry:
  ret void, !dbg !689
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !690 {
entry:
  ret void, !dbg !691
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

!llvm.dbg.cu = !{!44, !48, !50, !2}
!llvm.ident = !{!52, !52, !52, !52}
!llvm.module.flags = !{!53, !54, !55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_104/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_52a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_104/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_52b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_104/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_52c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_104/source_code")
!52 = !{!"clang version 12.0.0"}
!53 = !{i32 7, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 4}
!56 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_52_bad", scope: !45, file: !45, line: 37, type: !57, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!57 = !DISubroutineType(types: !58)
!58 = !{null}
!59 = !DILocalVariable(name: "data", scope: !56, file: !45, line: 39, type: !42)
!60 = !DILocation(line: 39, column: 12, scope: !56)
!61 = !DILocalVariable(name: "dataBuffer", scope: !56, file: !45, line: 40, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 40, column: 10, scope: !56)
!66 = !DILocation(line: 41, column: 12, scope: !56)
!67 = !DILocation(line: 41, column: 10, scope: !56)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !45, line: 44, type: !70)
!69 = distinct !DILexicalBlock(scope: !56, file: !45, line: 42, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 44, column: 16, scope: !69)
!74 = !DILocation(line: 44, column: 33, scope: !69)
!75 = !DILocation(line: 44, column: 26, scope: !69)
!76 = !DILocalVariable(name: "pFile", scope: !69, file: !45, line: 45, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !98, !100, !101, !102, !106, !107, !109, !113, !116, !118, !121, !124, !125, !126, !127, !128}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !80, file: !81, line: 51, baseType: !23, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !80, file: !81, line: 54, baseType: !42, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !80, file: !81, line: 55, baseType: !42, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !80, file: !81, line: 56, baseType: !42, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !80, file: !81, line: 57, baseType: !42, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !80, file: !81, line: 58, baseType: !42, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !80, file: !81, line: 59, baseType: !42, size: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !80, file: !81, line: 60, baseType: !42, size: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !80, file: !81, line: 61, baseType: !42, size: 64, offset: 512)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !80, file: !81, line: 64, baseType: !42, size: 64, offset: 576)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !80, file: !81, line: 65, baseType: !42, size: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !80, file: !81, line: 66, baseType: !42, size: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !80, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !81, line: 36, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !80, file: !81, line: 70, baseType: !99, size: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !80, file: !81, line: 72, baseType: !23, size: 32, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !80, file: !81, line: 73, baseType: !23, size: 32, offset: 928)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !80, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !104, line: 152, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!105 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !80, file: !81, line: 77, baseType: !24, size: 16, offset: 1024)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !80, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!108 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !80, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 1)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !80, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !81, line: 43, baseType: null)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !80, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !104, line: 153, baseType: !105)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !80, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !81, line: 37, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !80, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !81, line: 38, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !80, file: !81, line: 93, baseType: !99, size: 64, offset: 1344)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !80, file: !81, line: 94, baseType: !22, size: 64, offset: 1408)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !80, file: !81, line: 95, baseType: !70, size: 64, offset: 1472)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !80, file: !81, line: 96, baseType: !23, size: 32, offset: 1536)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !80, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 20)
!132 = !DILocation(line: 45, column: 16, scope: !69)
!133 = !DILocation(line: 47, column: 17, scope: !134)
!134 = distinct !DILexicalBlock(scope: !69, file: !45, line: 47, column: 13)
!135 = !DILocation(line: 47, column: 16, scope: !134)
!136 = !DILocation(line: 47, column: 25, scope: !134)
!137 = !DILocation(line: 47, column: 13, scope: !69)
!138 = !DILocation(line: 49, column: 21, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !45, line: 48, column: 9)
!140 = !DILocation(line: 49, column: 19, scope: !139)
!141 = !DILocation(line: 50, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !45, line: 50, column: 17)
!143 = !DILocation(line: 50, column: 23, scope: !142)
!144 = !DILocation(line: 50, column: 17, scope: !139)
!145 = !DILocation(line: 53, column: 27, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !45, line: 53, column: 21)
!147 = distinct !DILexicalBlock(scope: !142, file: !45, line: 51, column: 13)
!148 = !DILocation(line: 53, column: 32, scope: !146)
!149 = !DILocation(line: 53, column: 31, scope: !146)
!150 = !DILocation(line: 53, column: 51, scope: !146)
!151 = !DILocation(line: 53, column: 50, scope: !146)
!152 = !DILocation(line: 53, column: 41, scope: !146)
!153 = !DILocation(line: 53, column: 61, scope: !146)
!154 = !DILocation(line: 53, column: 21, scope: !146)
!155 = !DILocation(line: 53, column: 68, scope: !146)
!156 = !DILocation(line: 53, column: 21, scope: !147)
!157 = !DILocation(line: 55, column: 21, scope: !158)
!158 = distinct !DILexicalBlock(scope: !146, file: !45, line: 54, column: 17)
!159 = !DILocation(line: 57, column: 21, scope: !158)
!160 = !DILocation(line: 57, column: 26, scope: !158)
!161 = !DILocation(line: 57, column: 35, scope: !158)
!162 = !DILocation(line: 58, column: 17, scope: !158)
!163 = !DILocation(line: 59, column: 24, scope: !147)
!164 = !DILocation(line: 59, column: 17, scope: !147)
!165 = !DILocation(line: 60, column: 13, scope: !147)
!166 = !DILocation(line: 61, column: 9, scope: !139)
!167 = !DILocation(line: 63, column: 60, scope: !56)
!168 = !DILocation(line: 63, column: 5, scope: !56)
!169 = !DILocation(line: 64, column: 1, scope: !56)
!170 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 72, type: !57, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!171 = !DILocalVariable(name: "data", scope: !170, file: !45, line: 74, type: !42)
!172 = !DILocation(line: 74, column: 12, scope: !170)
!173 = !DILocalVariable(name: "dataBuffer", scope: !170, file: !45, line: 75, type: !62)
!174 = !DILocation(line: 75, column: 10, scope: !170)
!175 = !DILocation(line: 76, column: 12, scope: !170)
!176 = !DILocation(line: 76, column: 10, scope: !170)
!177 = !DILocation(line: 78, column: 12, scope: !170)
!178 = !DILocation(line: 78, column: 5, scope: !170)
!179 = !DILocation(line: 79, column: 64, scope: !170)
!180 = !DILocation(line: 79, column: 5, scope: !170)
!181 = !DILocation(line: 80, column: 1, scope: !170)
!182 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 84, type: !57, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!183 = !DILocalVariable(name: "data", scope: !182, file: !45, line: 86, type: !42)
!184 = !DILocation(line: 86, column: 12, scope: !182)
!185 = !DILocalVariable(name: "dataBuffer", scope: !182, file: !45, line: 87, type: !62)
!186 = !DILocation(line: 87, column: 10, scope: !182)
!187 = !DILocation(line: 88, column: 12, scope: !182)
!188 = !DILocation(line: 88, column: 10, scope: !182)
!189 = !DILocalVariable(name: "dataLen", scope: !190, file: !45, line: 91, type: !70)
!190 = distinct !DILexicalBlock(scope: !182, file: !45, line: 89, column: 5)
!191 = !DILocation(line: 91, column: 16, scope: !190)
!192 = !DILocation(line: 91, column: 33, scope: !190)
!193 = !DILocation(line: 91, column: 26, scope: !190)
!194 = !DILocalVariable(name: "pFile", scope: !190, file: !45, line: 92, type: !77)
!195 = !DILocation(line: 92, column: 16, scope: !190)
!196 = !DILocation(line: 94, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !190, file: !45, line: 94, column: 13)
!198 = !DILocation(line: 94, column: 16, scope: !197)
!199 = !DILocation(line: 94, column: 25, scope: !197)
!200 = !DILocation(line: 94, column: 13, scope: !190)
!201 = !DILocation(line: 96, column: 21, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !45, line: 95, column: 9)
!203 = !DILocation(line: 96, column: 19, scope: !202)
!204 = !DILocation(line: 97, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !45, line: 97, column: 17)
!206 = !DILocation(line: 97, column: 23, scope: !205)
!207 = !DILocation(line: 97, column: 17, scope: !202)
!208 = !DILocation(line: 100, column: 27, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !45, line: 100, column: 21)
!210 = distinct !DILexicalBlock(scope: !205, file: !45, line: 98, column: 13)
!211 = !DILocation(line: 100, column: 32, scope: !209)
!212 = !DILocation(line: 100, column: 31, scope: !209)
!213 = !DILocation(line: 100, column: 51, scope: !209)
!214 = !DILocation(line: 100, column: 50, scope: !209)
!215 = !DILocation(line: 100, column: 41, scope: !209)
!216 = !DILocation(line: 100, column: 61, scope: !209)
!217 = !DILocation(line: 100, column: 21, scope: !209)
!218 = !DILocation(line: 100, column: 68, scope: !209)
!219 = !DILocation(line: 100, column: 21, scope: !210)
!220 = !DILocation(line: 102, column: 21, scope: !221)
!221 = distinct !DILexicalBlock(scope: !209, file: !45, line: 101, column: 17)
!222 = !DILocation(line: 104, column: 21, scope: !221)
!223 = !DILocation(line: 104, column: 26, scope: !221)
!224 = !DILocation(line: 104, column: 35, scope: !221)
!225 = !DILocation(line: 105, column: 17, scope: !221)
!226 = !DILocation(line: 106, column: 24, scope: !210)
!227 = !DILocation(line: 106, column: 17, scope: !210)
!228 = !DILocation(line: 107, column: 13, scope: !210)
!229 = !DILocation(line: 108, column: 9, scope: !202)
!230 = !DILocation(line: 110, column: 64, scope: !182)
!231 = !DILocation(line: 110, column: 5, scope: !182)
!232 = !DILocation(line: 111, column: 1, scope: !182)
!233 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_52_good", scope: !45, file: !45, line: 113, type: !57, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!234 = !DILocation(line: 115, column: 5, scope: !233)
!235 = !DILocation(line: 116, column: 5, scope: !233)
!236 = !DILocation(line: 117, column: 1, scope: !233)
!237 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_52b_badSink", scope: !49, file: !49, line: 37, type: !238, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !42}
!240 = !DILocalVariable(name: "data", arg: 1, scope: !237, file: !49, line: 37, type: !42)
!241 = !DILocation(line: 37, column: 68, scope: !237)
!242 = !DILocation(line: 39, column: 60, scope: !237)
!243 = !DILocation(line: 39, column: 5, scope: !237)
!244 = !DILocation(line: 40, column: 1, scope: !237)
!245 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_52b_goodG2BSink", scope: !49, file: !49, line: 49, type: !238, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!246 = !DILocalVariable(name: "data", arg: 1, scope: !245, file: !49, line: 49, type: !42)
!247 = !DILocation(line: 49, column: 72, scope: !245)
!248 = !DILocation(line: 51, column: 64, scope: !245)
!249 = !DILocation(line: 51, column: 5, scope: !245)
!250 = !DILocation(line: 52, column: 1, scope: !245)
!251 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_52b_goodB2GSink", scope: !49, file: !49, line: 57, type: !238, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!252 = !DILocalVariable(name: "data", arg: 1, scope: !251, file: !49, line: 57, type: !42)
!253 = !DILocation(line: 57, column: 72, scope: !251)
!254 = !DILocation(line: 59, column: 64, scope: !251)
!255 = !DILocation(line: 59, column: 5, scope: !251)
!256 = !DILocation(line: 60, column: 1, scope: !251)
!257 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_52c_badSink", scope: !51, file: !51, line: 34, type: !238, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!258 = !DILocalVariable(name: "data", arg: 1, scope: !257, file: !51, line: 34, type: !42)
!259 = !DILocation(line: 34, column: 68, scope: !257)
!260 = !DILocalVariable(name: "i", scope: !261, file: !51, line: 37, type: !23)
!261 = distinct !DILexicalBlock(scope: !257, file: !51, line: 36, column: 5)
!262 = !DILocation(line: 37, column: 13, scope: !261)
!263 = !DILocalVariable(name: "n", scope: !261, file: !51, line: 37, type: !23)
!264 = !DILocation(line: 37, column: 16, scope: !261)
!265 = !DILocalVariable(name: "intVariable", scope: !261, file: !51, line: 37, type: !23)
!266 = !DILocation(line: 37, column: 19, scope: !261)
!267 = !DILocation(line: 38, column: 20, scope: !268)
!268 = distinct !DILexicalBlock(scope: !261, file: !51, line: 38, column: 13)
!269 = !DILocation(line: 38, column: 13, scope: !268)
!270 = !DILocation(line: 38, column: 36, scope: !268)
!271 = !DILocation(line: 38, column: 13, scope: !261)
!272 = !DILocation(line: 41, column: 25, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !51, line: 39, column: 9)
!274 = !DILocation(line: 42, column: 20, scope: !275)
!275 = distinct !DILexicalBlock(scope: !273, file: !51, line: 42, column: 13)
!276 = !DILocation(line: 42, column: 18, scope: !275)
!277 = !DILocation(line: 42, column: 25, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !51, line: 42, column: 13)
!279 = !DILocation(line: 42, column: 29, scope: !278)
!280 = !DILocation(line: 42, column: 27, scope: !278)
!281 = !DILocation(line: 42, column: 13, scope: !275)
!282 = !DILocation(line: 45, column: 28, scope: !283)
!283 = distinct !DILexicalBlock(scope: !278, file: !51, line: 43, column: 13)
!284 = !DILocation(line: 46, column: 13, scope: !283)
!285 = !DILocation(line: 42, column: 33, scope: !278)
!286 = !DILocation(line: 42, column: 13, scope: !278)
!287 = distinct !{!287, !281, !288, !289}
!288 = !DILocation(line: 46, column: 13, scope: !275)
!289 = !{!"llvm.loop.mustprogress"}
!290 = !DILocation(line: 47, column: 26, scope: !273)
!291 = !DILocation(line: 47, column: 13, scope: !273)
!292 = !DILocation(line: 48, column: 9, scope: !273)
!293 = !DILocation(line: 50, column: 1, scope: !257)
!294 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_52c_goodG2BSink", scope: !51, file: !51, line: 57, type: !238, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!295 = !DILocalVariable(name: "data", arg: 1, scope: !294, file: !51, line: 57, type: !42)
!296 = !DILocation(line: 57, column: 72, scope: !294)
!297 = !DILocalVariable(name: "i", scope: !298, file: !51, line: 60, type: !23)
!298 = distinct !DILexicalBlock(scope: !294, file: !51, line: 59, column: 5)
!299 = !DILocation(line: 60, column: 13, scope: !298)
!300 = !DILocalVariable(name: "n", scope: !298, file: !51, line: 60, type: !23)
!301 = !DILocation(line: 60, column: 16, scope: !298)
!302 = !DILocalVariable(name: "intVariable", scope: !298, file: !51, line: 60, type: !23)
!303 = !DILocation(line: 60, column: 19, scope: !298)
!304 = !DILocation(line: 61, column: 20, scope: !305)
!305 = distinct !DILexicalBlock(scope: !298, file: !51, line: 61, column: 13)
!306 = !DILocation(line: 61, column: 13, scope: !305)
!307 = !DILocation(line: 61, column: 36, scope: !305)
!308 = !DILocation(line: 61, column: 13, scope: !298)
!309 = !DILocation(line: 64, column: 25, scope: !310)
!310 = distinct !DILexicalBlock(scope: !305, file: !51, line: 62, column: 9)
!311 = !DILocation(line: 65, column: 20, scope: !312)
!312 = distinct !DILexicalBlock(scope: !310, file: !51, line: 65, column: 13)
!313 = !DILocation(line: 65, column: 18, scope: !312)
!314 = !DILocation(line: 65, column: 25, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !51, line: 65, column: 13)
!316 = !DILocation(line: 65, column: 29, scope: !315)
!317 = !DILocation(line: 65, column: 27, scope: !315)
!318 = !DILocation(line: 65, column: 13, scope: !312)
!319 = !DILocation(line: 68, column: 28, scope: !320)
!320 = distinct !DILexicalBlock(scope: !315, file: !51, line: 66, column: 13)
!321 = !DILocation(line: 69, column: 13, scope: !320)
!322 = !DILocation(line: 65, column: 33, scope: !315)
!323 = !DILocation(line: 65, column: 13, scope: !315)
!324 = distinct !{!324, !318, !325, !289}
!325 = !DILocation(line: 69, column: 13, scope: !312)
!326 = !DILocation(line: 70, column: 26, scope: !310)
!327 = !DILocation(line: 70, column: 13, scope: !310)
!328 = !DILocation(line: 71, column: 9, scope: !310)
!329 = !DILocation(line: 73, column: 1, scope: !294)
!330 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_52c_goodB2GSink", scope: !51, file: !51, line: 76, type: !238, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!331 = !DILocalVariable(name: "data", arg: 1, scope: !330, file: !51, line: 76, type: !42)
!332 = !DILocation(line: 76, column: 72, scope: !330)
!333 = !DILocalVariable(name: "i", scope: !334, file: !51, line: 79, type: !23)
!334 = distinct !DILexicalBlock(scope: !330, file: !51, line: 78, column: 5)
!335 = !DILocation(line: 79, column: 13, scope: !334)
!336 = !DILocalVariable(name: "n", scope: !334, file: !51, line: 79, type: !23)
!337 = !DILocation(line: 79, column: 16, scope: !334)
!338 = !DILocalVariable(name: "intVariable", scope: !334, file: !51, line: 79, type: !23)
!339 = !DILocation(line: 79, column: 19, scope: !334)
!340 = !DILocation(line: 80, column: 20, scope: !341)
!341 = distinct !DILexicalBlock(scope: !334, file: !51, line: 80, column: 13)
!342 = !DILocation(line: 80, column: 13, scope: !341)
!343 = !DILocation(line: 80, column: 36, scope: !341)
!344 = !DILocation(line: 80, column: 13, scope: !334)
!345 = !DILocation(line: 83, column: 17, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !51, line: 83, column: 17)
!347 = distinct !DILexicalBlock(scope: !341, file: !51, line: 81, column: 9)
!348 = !DILocation(line: 83, column: 19, scope: !346)
!349 = !DILocation(line: 83, column: 17, scope: !347)
!350 = !DILocation(line: 85, column: 29, scope: !351)
!351 = distinct !DILexicalBlock(scope: !346, file: !51, line: 84, column: 13)
!352 = !DILocation(line: 86, column: 24, scope: !353)
!353 = distinct !DILexicalBlock(scope: !351, file: !51, line: 86, column: 17)
!354 = !DILocation(line: 86, column: 22, scope: !353)
!355 = !DILocation(line: 86, column: 29, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !51, line: 86, column: 17)
!357 = !DILocation(line: 86, column: 33, scope: !356)
!358 = !DILocation(line: 86, column: 31, scope: !356)
!359 = !DILocation(line: 86, column: 17, scope: !353)
!360 = !DILocation(line: 89, column: 32, scope: !361)
!361 = distinct !DILexicalBlock(scope: !356, file: !51, line: 87, column: 17)
!362 = !DILocation(line: 90, column: 17, scope: !361)
!363 = !DILocation(line: 86, column: 37, scope: !356)
!364 = !DILocation(line: 86, column: 17, scope: !356)
!365 = distinct !{!365, !359, !366, !289}
!366 = !DILocation(line: 90, column: 17, scope: !353)
!367 = !DILocation(line: 91, column: 30, scope: !351)
!368 = !DILocation(line: 91, column: 17, scope: !351)
!369 = !DILocation(line: 92, column: 13, scope: !351)
!370 = !DILocation(line: 93, column: 9, scope: !347)
!371 = !DILocation(line: 95, column: 1, scope: !330)
!372 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !238, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DILocalVariable(name: "line", arg: 1, scope: !372, file: !3, line: 11, type: !42)
!374 = !DILocation(line: 11, column: 25, scope: !372)
!375 = !DILocation(line: 13, column: 1, scope: !372)
!376 = !DILocation(line: 14, column: 8, scope: !377)
!377 = distinct !DILexicalBlock(scope: !372, file: !3, line: 14, column: 8)
!378 = !DILocation(line: 14, column: 13, scope: !377)
!379 = !DILocation(line: 14, column: 8, scope: !372)
!380 = !DILocation(line: 16, column: 24, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !3, line: 15, column: 5)
!382 = !DILocation(line: 16, column: 9, scope: !381)
!383 = !DILocation(line: 17, column: 5, scope: !381)
!384 = !DILocation(line: 18, column: 5, scope: !372)
!385 = !DILocation(line: 19, column: 1, scope: !372)
!386 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !238, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!387 = !DILocalVariable(name: "line", arg: 1, scope: !386, file: !3, line: 20, type: !42)
!388 = !DILocation(line: 20, column: 29, scope: !386)
!389 = !DILocation(line: 22, column: 8, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !3, line: 22, column: 8)
!391 = !DILocation(line: 22, column: 13, scope: !390)
!392 = !DILocation(line: 22, column: 8, scope: !386)
!393 = !DILocation(line: 24, column: 24, scope: !394)
!394 = distinct !DILexicalBlock(scope: !390, file: !3, line: 23, column: 5)
!395 = !DILocation(line: 24, column: 9, scope: !394)
!396 = !DILocation(line: 25, column: 5, scope: !394)
!397 = !DILocation(line: 26, column: 1, scope: !386)
!398 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !399, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!403 = !DILocalVariable(name: "line", arg: 1, scope: !398, file: !3, line: 27, type: !401)
!404 = !DILocation(line: 27, column: 29, scope: !398)
!405 = !DILocation(line: 29, column: 8, scope: !406)
!406 = distinct !DILexicalBlock(scope: !398, file: !3, line: 29, column: 8)
!407 = !DILocation(line: 29, column: 13, scope: !406)
!408 = !DILocation(line: 29, column: 8, scope: !398)
!409 = !DILocation(line: 31, column: 27, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !3, line: 30, column: 5)
!411 = !DILocation(line: 31, column: 9, scope: !410)
!412 = !DILocation(line: 32, column: 5, scope: !410)
!413 = !DILocation(line: 33, column: 1, scope: !398)
!414 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !415, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !23}
!417 = !DILocalVariable(name: "intNumber", arg: 1, scope: !414, file: !3, line: 35, type: !23)
!418 = !DILocation(line: 35, column: 24, scope: !414)
!419 = !DILocation(line: 37, column: 20, scope: !414)
!420 = !DILocation(line: 37, column: 5, scope: !414)
!421 = !DILocation(line: 38, column: 1, scope: !414)
!422 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !423, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !425}
!425 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!426 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !422, file: !3, line: 40, type: !425)
!427 = !DILocation(line: 40, column: 28, scope: !422)
!428 = !DILocation(line: 42, column: 21, scope: !422)
!429 = !DILocation(line: 42, column: 5, scope: !422)
!430 = !DILocation(line: 43, column: 1, scope: !422)
!431 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !432, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !434}
!434 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!435 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !431, file: !3, line: 45, type: !434)
!436 = !DILocation(line: 45, column: 28, scope: !431)
!437 = !DILocation(line: 47, column: 20, scope: !431)
!438 = !DILocation(line: 47, column: 5, scope: !431)
!439 = !DILocation(line: 48, column: 1, scope: !431)
!440 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !441, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !105}
!443 = !DILocalVariable(name: "longNumber", arg: 1, scope: !440, file: !3, line: 50, type: !105)
!444 = !DILocation(line: 50, column: 26, scope: !440)
!445 = !DILocation(line: 52, column: 21, scope: !440)
!446 = !DILocation(line: 52, column: 5, scope: !440)
!447 = !DILocation(line: 53, column: 1, scope: !440)
!448 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !449, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !451}
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !452, line: 27, baseType: !453)
!452 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !104, line: 44, baseType: !105)
!454 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !448, file: !3, line: 55, type: !451)
!455 = !DILocation(line: 55, column: 33, scope: !448)
!456 = !DILocation(line: 57, column: 29, scope: !448)
!457 = !DILocation(line: 57, column: 5, scope: !448)
!458 = !DILocation(line: 58, column: 1, scope: !448)
!459 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !460, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !70}
!462 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !459, file: !3, line: 60, type: !70)
!463 = !DILocation(line: 60, column: 29, scope: !459)
!464 = !DILocation(line: 62, column: 21, scope: !459)
!465 = !DILocation(line: 62, column: 5, scope: !459)
!466 = !DILocation(line: 63, column: 1, scope: !459)
!467 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !468, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !43}
!470 = !DILocalVariable(name: "charHex", arg: 1, scope: !467, file: !3, line: 65, type: !43)
!471 = !DILocation(line: 65, column: 29, scope: !467)
!472 = !DILocation(line: 67, column: 22, scope: !467)
!473 = !DILocation(line: 67, column: 5, scope: !467)
!474 = !DILocation(line: 68, column: 1, scope: !467)
!475 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !476, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !402}
!478 = !DILocalVariable(name: "wideChar", arg: 1, scope: !475, file: !3, line: 70, type: !402)
!479 = !DILocation(line: 70, column: 29, scope: !475)
!480 = !DILocalVariable(name: "s", scope: !475, file: !3, line: 74, type: !481)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 64, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 2)
!484 = !DILocation(line: 74, column: 13, scope: !475)
!485 = !DILocation(line: 75, column: 16, scope: !475)
!486 = !DILocation(line: 75, column: 9, scope: !475)
!487 = !DILocation(line: 75, column: 14, scope: !475)
!488 = !DILocation(line: 76, column: 9, scope: !475)
!489 = !DILocation(line: 76, column: 14, scope: !475)
!490 = !DILocation(line: 77, column: 21, scope: !475)
!491 = !DILocation(line: 77, column: 5, scope: !475)
!492 = !DILocation(line: 78, column: 1, scope: !475)
!493 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !494, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !7}
!496 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !493, file: !3, line: 80, type: !7)
!497 = !DILocation(line: 80, column: 33, scope: !493)
!498 = !DILocation(line: 82, column: 20, scope: !493)
!499 = !DILocation(line: 82, column: 5, scope: !493)
!500 = !DILocation(line: 83, column: 1, scope: !493)
!501 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !502, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !25}
!504 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !501, file: !3, line: 85, type: !25)
!505 = !DILocation(line: 85, column: 45, scope: !501)
!506 = !DILocation(line: 87, column: 22, scope: !501)
!507 = !DILocation(line: 87, column: 5, scope: !501)
!508 = !DILocation(line: 88, column: 1, scope: !501)
!509 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !510, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !512}
!512 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!513 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !509, file: !3, line: 90, type: !512)
!514 = !DILocation(line: 90, column: 29, scope: !509)
!515 = !DILocation(line: 92, column: 20, scope: !509)
!516 = !DILocation(line: 92, column: 5, scope: !509)
!517 = !DILocation(line: 93, column: 1, scope: !509)
!518 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !519, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !523, line: 100, baseType: !524)
!523 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_104/source_code")
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !523, line: 96, size: 64, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !524, file: !523, line: 98, baseType: !23, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !524, file: !523, line: 99, baseType: !23, size: 32, offset: 32)
!528 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !518, file: !3, line: 95, type: !521)
!529 = !DILocation(line: 95, column: 40, scope: !518)
!530 = !DILocation(line: 97, column: 26, scope: !518)
!531 = !DILocation(line: 97, column: 47, scope: !518)
!532 = !DILocation(line: 97, column: 55, scope: !518)
!533 = !DILocation(line: 97, column: 76, scope: !518)
!534 = !DILocation(line: 97, column: 5, scope: !518)
!535 = !DILocation(line: 98, column: 1, scope: !518)
!536 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !537, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !539, !70}
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!540 = !DILocalVariable(name: "bytes", arg: 1, scope: !536, file: !3, line: 100, type: !539)
!541 = !DILocation(line: 100, column: 38, scope: !536)
!542 = !DILocalVariable(name: "numBytes", arg: 2, scope: !536, file: !3, line: 100, type: !70)
!543 = !DILocation(line: 100, column: 52, scope: !536)
!544 = !DILocalVariable(name: "i", scope: !536, file: !3, line: 102, type: !70)
!545 = !DILocation(line: 102, column: 12, scope: !536)
!546 = !DILocation(line: 103, column: 12, scope: !547)
!547 = distinct !DILexicalBlock(scope: !536, file: !3, line: 103, column: 5)
!548 = !DILocation(line: 103, column: 10, scope: !547)
!549 = !DILocation(line: 103, column: 17, scope: !550)
!550 = distinct !DILexicalBlock(scope: !547, file: !3, line: 103, column: 5)
!551 = !DILocation(line: 103, column: 21, scope: !550)
!552 = !DILocation(line: 103, column: 19, scope: !550)
!553 = !DILocation(line: 103, column: 5, scope: !547)
!554 = !DILocation(line: 105, column: 24, scope: !555)
!555 = distinct !DILexicalBlock(scope: !550, file: !3, line: 104, column: 5)
!556 = !DILocation(line: 105, column: 30, scope: !555)
!557 = !DILocation(line: 105, column: 9, scope: !555)
!558 = !DILocation(line: 106, column: 5, scope: !555)
!559 = !DILocation(line: 103, column: 31, scope: !550)
!560 = !DILocation(line: 103, column: 5, scope: !550)
!561 = distinct !{!561, !553, !562, !289}
!562 = !DILocation(line: 106, column: 5, scope: !547)
!563 = !DILocation(line: 107, column: 5, scope: !536)
!564 = !DILocation(line: 108, column: 1, scope: !536)
!565 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !566, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DISubroutineType(types: !567)
!567 = !{!70, !539, !70, !42}
!568 = !DILocalVariable(name: "bytes", arg: 1, scope: !565, file: !3, line: 113, type: !539)
!569 = !DILocation(line: 113, column: 39, scope: !565)
!570 = !DILocalVariable(name: "numBytes", arg: 2, scope: !565, file: !3, line: 113, type: !70)
!571 = !DILocation(line: 113, column: 53, scope: !565)
!572 = !DILocalVariable(name: "hex", arg: 3, scope: !565, file: !3, line: 113, type: !42)
!573 = !DILocation(line: 113, column: 71, scope: !565)
!574 = !DILocalVariable(name: "numWritten", scope: !565, file: !3, line: 115, type: !70)
!575 = !DILocation(line: 115, column: 12, scope: !565)
!576 = !DILocation(line: 121, column: 5, scope: !565)
!577 = !DILocation(line: 121, column: 12, scope: !565)
!578 = !DILocation(line: 121, column: 25, scope: !565)
!579 = !DILocation(line: 121, column: 23, scope: !565)
!580 = !DILocation(line: 121, column: 34, scope: !565)
!581 = !DILocation(line: 121, column: 37, scope: !565)
!582 = !DILocation(line: 121, column: 67, scope: !565)
!583 = !DILocation(line: 121, column: 70, scope: !565)
!584 = !DILocation(line: 0, scope: !565)
!585 = !DILocalVariable(name: "byte", scope: !586, file: !3, line: 123, type: !23)
!586 = distinct !DILexicalBlock(scope: !565, file: !3, line: 122, column: 5)
!587 = !DILocation(line: 123, column: 13, scope: !586)
!588 = !DILocation(line: 124, column: 17, scope: !586)
!589 = !DILocation(line: 124, column: 25, scope: !586)
!590 = !DILocation(line: 124, column: 23, scope: !586)
!591 = !DILocation(line: 124, column: 9, scope: !586)
!592 = !DILocation(line: 125, column: 45, scope: !586)
!593 = !DILocation(line: 125, column: 29, scope: !586)
!594 = !DILocation(line: 125, column: 9, scope: !586)
!595 = !DILocation(line: 125, column: 15, scope: !586)
!596 = !DILocation(line: 125, column: 27, scope: !586)
!597 = !DILocation(line: 126, column: 9, scope: !586)
!598 = distinct !{!598, !576, !599, !289}
!599 = !DILocation(line: 127, column: 5, scope: !565)
!600 = !DILocation(line: 129, column: 12, scope: !565)
!601 = !DILocation(line: 129, column: 5, scope: !565)
!602 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !603, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!603 = !DISubroutineType(types: !604)
!604 = !{!70, !539, !70, !401}
!605 = !DILocalVariable(name: "bytes", arg: 1, scope: !602, file: !3, line: 135, type: !539)
!606 = !DILocation(line: 135, column: 41, scope: !602)
!607 = !DILocalVariable(name: "numBytes", arg: 2, scope: !602, file: !3, line: 135, type: !70)
!608 = !DILocation(line: 135, column: 55, scope: !602)
!609 = !DILocalVariable(name: "hex", arg: 3, scope: !602, file: !3, line: 135, type: !401)
!610 = !DILocation(line: 135, column: 76, scope: !602)
!611 = !DILocalVariable(name: "numWritten", scope: !602, file: !3, line: 137, type: !70)
!612 = !DILocation(line: 137, column: 12, scope: !602)
!613 = !DILocation(line: 143, column: 5, scope: !602)
!614 = !DILocation(line: 143, column: 12, scope: !602)
!615 = !DILocation(line: 143, column: 25, scope: !602)
!616 = !DILocation(line: 143, column: 23, scope: !602)
!617 = !DILocation(line: 143, column: 34, scope: !602)
!618 = !DILocation(line: 143, column: 47, scope: !602)
!619 = !DILocation(line: 143, column: 55, scope: !602)
!620 = !DILocation(line: 143, column: 53, scope: !602)
!621 = !DILocation(line: 143, column: 37, scope: !602)
!622 = !DILocation(line: 143, column: 68, scope: !602)
!623 = !DILocation(line: 143, column: 81, scope: !602)
!624 = !DILocation(line: 143, column: 89, scope: !602)
!625 = !DILocation(line: 143, column: 87, scope: !602)
!626 = !DILocation(line: 143, column: 100, scope: !602)
!627 = !DILocation(line: 143, column: 71, scope: !602)
!628 = !DILocation(line: 0, scope: !602)
!629 = !DILocalVariable(name: "byte", scope: !630, file: !3, line: 145, type: !23)
!630 = distinct !DILexicalBlock(scope: !602, file: !3, line: 144, column: 5)
!631 = !DILocation(line: 145, column: 13, scope: !630)
!632 = !DILocation(line: 146, column: 18, scope: !630)
!633 = !DILocation(line: 146, column: 26, scope: !630)
!634 = !DILocation(line: 146, column: 24, scope: !630)
!635 = !DILocation(line: 146, column: 9, scope: !630)
!636 = !DILocation(line: 147, column: 45, scope: !630)
!637 = !DILocation(line: 147, column: 29, scope: !630)
!638 = !DILocation(line: 147, column: 9, scope: !630)
!639 = !DILocation(line: 147, column: 15, scope: !630)
!640 = !DILocation(line: 147, column: 27, scope: !630)
!641 = !DILocation(line: 148, column: 9, scope: !630)
!642 = distinct !{!642, !613, !643, !289}
!643 = !DILocation(line: 149, column: 5, scope: !602)
!644 = !DILocation(line: 151, column: 12, scope: !602)
!645 = !DILocation(line: 151, column: 5, scope: !602)
!646 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !647, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!647 = !DISubroutineType(types: !648)
!648 = !{!23}
!649 = !DILocation(line: 158, column: 5, scope: !646)
!650 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !647, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!651 = !DILocation(line: 163, column: 5, scope: !650)
!652 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !647, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!653 = !DILocation(line: 168, column: 13, scope: !652)
!654 = !DILocation(line: 168, column: 20, scope: !652)
!655 = !DILocation(line: 168, column: 5, scope: !652)
!656 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !57, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!657 = !DILocation(line: 187, column: 16, scope: !656)
!658 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !57, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!659 = !DILocation(line: 188, column: 16, scope: !658)
!660 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !57, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!661 = !DILocation(line: 189, column: 16, scope: !660)
!662 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !57, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!663 = !DILocation(line: 190, column: 16, scope: !662)
!664 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !57, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!665 = !DILocation(line: 191, column: 16, scope: !664)
!666 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !57, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!667 = !DILocation(line: 192, column: 16, scope: !666)
!668 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !57, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!669 = !DILocation(line: 193, column: 16, scope: !668)
!670 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !57, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!671 = !DILocation(line: 194, column: 16, scope: !670)
!672 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !57, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!673 = !DILocation(line: 195, column: 16, scope: !672)
!674 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !57, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!675 = !DILocation(line: 198, column: 15, scope: !674)
!676 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !57, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!677 = !DILocation(line: 199, column: 15, scope: !676)
!678 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !57, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!679 = !DILocation(line: 200, column: 15, scope: !678)
!680 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !57, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!681 = !DILocation(line: 201, column: 15, scope: !680)
!682 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !57, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!683 = !DILocation(line: 202, column: 15, scope: !682)
!684 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !57, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!685 = !DILocation(line: 203, column: 15, scope: !684)
!686 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !57, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!687 = !DILocation(line: 204, column: 15, scope: !686)
!688 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !57, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!689 = !DILocation(line: 205, column: 15, scope: !688)
!690 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !57, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!691 = !DILocation(line: 206, column: 15, scope: !690)
