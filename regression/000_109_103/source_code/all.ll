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
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_51_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !59, metadata !DIExpression()), !dbg !63
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !64
  store i8* %arraydecay, i8** %data, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !66, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i64 @strlen(i8* %1) #7, !dbg !73
  store i64 %call, i64* %dataLen, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !74, metadata !DIExpression()), !dbg !130
  %2 = load i64, i64* %dataLen, align 8, !dbg !131
  %sub = sub i64 100, %2, !dbg !133
  %cmp = icmp ugt i64 %sub, 1, !dbg !134
  br i1 %cmp, label %if.then, label %if.end11, !dbg !135

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !136
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !138
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !139
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !141
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !142

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !143
  %5 = load i64, i64* %dataLen, align 8, !dbg !146
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !147
  %6 = load i64, i64* %dataLen, align 8, !dbg !148
  %sub4 = sub i64 100, %6, !dbg !149
  %conv = trunc i64 %sub4 to i32, !dbg !150
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !151
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !152
  %cmp6 = icmp eq i8* %call5, null, !dbg !153
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !154

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !155
  %8 = load i8*, i8** %data, align 8, !dbg !157
  %9 = load i64, i64* %dataLen, align 8, !dbg !158
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !157
  store i8 0, i8* %arrayidx, align 1, !dbg !159
  br label %if.end, !dbg !160

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !161
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !162
  br label %if.end10, !dbg !163

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !164

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !165
  call void @CWE606_Unchecked_Loop_Condition__char_file_51b_badSink(i8* %11), !dbg !166
  ret void, !dbg !167
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
define dso_local void @goodG2B() #0 !dbg !168 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !171, metadata !DIExpression()), !dbg !172
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !172
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !172
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !173
  store i8* %arraydecay, i8** %data, align 8, !dbg !174
  %1 = load i8*, i8** %data, align 8, !dbg !175
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !176
  %2 = load i8*, i8** %data, align 8, !dbg !177
  call void @CWE606_Unchecked_Loop_Condition__char_file_51b_goodG2BSink(i8* %2), !dbg !178
  ret void, !dbg !179
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !180 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !183, metadata !DIExpression()), !dbg !184
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !184
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !184
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !185
  store i8* %arraydecay, i8** %data, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !187, metadata !DIExpression()), !dbg !189
  %1 = load i8*, i8** %data, align 8, !dbg !190
  %call = call i64 @strlen(i8* %1) #7, !dbg !191
  store i64 %call, i64* %dataLen, align 8, !dbg !189
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !192, metadata !DIExpression()), !dbg !193
  %2 = load i64, i64* %dataLen, align 8, !dbg !194
  %sub = sub i64 100, %2, !dbg !196
  %cmp = icmp ugt i64 %sub, 1, !dbg !197
  br i1 %cmp, label %if.then, label %if.end11, !dbg !198

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !199
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !201
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !202
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !204
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !205

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !206
  %5 = load i64, i64* %dataLen, align 8, !dbg !209
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !210
  %6 = load i64, i64* %dataLen, align 8, !dbg !211
  %sub4 = sub i64 100, %6, !dbg !212
  %conv = trunc i64 %sub4 to i32, !dbg !213
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !214
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !215
  %cmp6 = icmp eq i8* %call5, null, !dbg !216
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !217

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !218
  %8 = load i8*, i8** %data, align 8, !dbg !220
  %9 = load i64, i64* %dataLen, align 8, !dbg !221
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !220
  store i8 0, i8* %arrayidx, align 1, !dbg !222
  br label %if.end, !dbg !223

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !224
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !225
  br label %if.end10, !dbg !226

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !227

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !228
  call void @CWE606_Unchecked_Loop_Condition__char_file_51b_goodB2GSink(i8* %11), !dbg !229
  ret void, !dbg !230
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_51_good() #0 !dbg !231 {
entry:
  call void @goodG2B(), !dbg !232
  call void @goodB2G(), !dbg !233
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_51b_badSink(i8* %data) #0 !dbg !235 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %i, metadata !240, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i32* %n, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load i8*, i8** %data.addr, align 8, !dbg !247
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !249
  %cmp = icmp eq i32 %call, 1, !dbg !250
  br i1 %cmp, label %if.then, label %if.end, !dbg !251

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !252
  store i32 0, i32* %i, align 4, !dbg !254
  br label %for.cond, !dbg !256

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !257
  %2 = load i32, i32* %n, align 4, !dbg !259
  %cmp1 = icmp slt i32 %1, %2, !dbg !260
  br i1 %cmp1, label %for.body, label %for.end, !dbg !261

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !262
  %inc = add nsw i32 %3, 1, !dbg !262
  store i32 %inc, i32* %intVariable, align 4, !dbg !262
  br label %for.inc, !dbg !264

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !265
  %inc2 = add nsw i32 %4, 1, !dbg !265
  store i32 %inc2, i32* %i, align 4, !dbg !265
  br label %for.cond, !dbg !266, !llvm.loop !267

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !270
  call void @printIntLine(i32 %5), !dbg !271
  br label %if.end, !dbg !272

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !273
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_51b_goodG2BSink(i8* %data) #0 !dbg !274 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i32* %i, metadata !277, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata i32* %n, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !282, metadata !DIExpression()), !dbg !283
  %0 = load i8*, i8** %data.addr, align 8, !dbg !284
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !286
  %cmp = icmp eq i32 %call, 1, !dbg !287
  br i1 %cmp, label %if.then, label %if.end, !dbg !288

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !289
  store i32 0, i32* %i, align 4, !dbg !291
  br label %for.cond, !dbg !293

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !294
  %2 = load i32, i32* %n, align 4, !dbg !296
  %cmp1 = icmp slt i32 %1, %2, !dbg !297
  br i1 %cmp1, label %for.body, label %for.end, !dbg !298

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !299
  %inc = add nsw i32 %3, 1, !dbg !299
  store i32 %inc, i32* %intVariable, align 4, !dbg !299
  br label %for.inc, !dbg !301

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !302
  %inc2 = add nsw i32 %4, 1, !dbg !302
  store i32 %inc2, i32* %i, align 4, !dbg !302
  br label %for.cond, !dbg !303, !llvm.loop !304

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !306
  call void @printIntLine(i32 %5), !dbg !307
  br label %if.end, !dbg !308

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_51b_goodB2GSink(i8* %data) #0 !dbg !310 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !311, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata i32* %i, metadata !313, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata i32* %n, metadata !316, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !318, metadata !DIExpression()), !dbg !319
  %0 = load i8*, i8** %data.addr, align 8, !dbg !320
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !322
  %cmp = icmp eq i32 %call, 1, !dbg !323
  br i1 %cmp, label %if.then, label %if.end5, !dbg !324

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !325
  %cmp1 = icmp slt i32 %1, 10000, !dbg !328
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !329

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !330
  store i32 0, i32* %i, align 4, !dbg !332
  br label %for.cond, !dbg !334

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !335
  %3 = load i32, i32* %n, align 4, !dbg !337
  %cmp3 = icmp slt i32 %2, %3, !dbg !338
  br i1 %cmp3, label %for.body, label %for.end, !dbg !339

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !340
  %inc = add nsw i32 %4, 1, !dbg !340
  store i32 %inc, i32* %intVariable, align 4, !dbg !340
  br label %for.inc, !dbg !342

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !343
  %inc4 = add nsw i32 %5, 1, !dbg !343
  store i32 %inc4, i32* %i, align 4, !dbg !343
  br label %for.cond, !dbg !344, !llvm.loop !345

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !347
  call void @printIntLine(i32 %6), !dbg !348
  br label %if.end, !dbg !349

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !350

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !352 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)), !dbg !355
  %0 = load i8*, i8** %line.addr, align 8, !dbg !356
  %cmp = icmp ne i8* %0, null, !dbg !358
  br i1 %cmp, label %if.then, label %if.end, !dbg !359

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !360
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !362
  br label %if.end, !dbg !363

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.13, i64 0, i64 0)), !dbg !364
  ret void, !dbg !365
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !366 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load i8*, i8** %line.addr, align 8, !dbg !369
  %cmp = icmp ne i8* %0, null, !dbg !371
  br i1 %cmp, label %if.then, label %if.end, !dbg !372

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !375
  br label %if.end, !dbg !376

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !377
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !378 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load i32*, i32** %line.addr, align 8, !dbg !385
  %cmp = icmp ne i32* %0, null, !dbg !387
  br i1 %cmp, label %if.then, label %if.end, !dbg !388

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !389
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.14, i64 0, i64 0), i32* %1), !dbg !391
  br label %if.end, !dbg !392

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !393
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !394 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !397, metadata !DIExpression()), !dbg !398
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !399
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.17, i64 0, i64 0), i32 %0), !dbg !400
  ret void, !dbg !401
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !402 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !408
  %conv = sext i16 %0 to i32, !dbg !408
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !411 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !415, metadata !DIExpression()), !dbg !416
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !417
  %conv = fpext float %0 to double, !dbg !417
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !418
  ret void, !dbg !419
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !420 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !425
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !426
  ret void, !dbg !427
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !428 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !439 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !447 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !452
  %conv = sext i8 %0 to i32, !dbg !452
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !455 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !458, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !460, metadata !DIExpression()), !dbg !464
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !465
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !466
  store i32 %0, i32* %arrayidx, align 4, !dbg !467
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !468
  store i32 0, i32* %arrayidx1, align 4, !dbg !469
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !470
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !471
  ret void, !dbg !472
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !473 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !478
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11.18, i64 0, i64 0), i32 %0), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !481 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !484, metadata !DIExpression()), !dbg !485
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !486
  %conv = zext i8 %0 to i32, !dbg !486
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !487
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !489 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !493, metadata !DIExpression()), !dbg !494
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !495
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !496
  ret void, !dbg !497
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !498 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !508, metadata !DIExpression()), !dbg !509
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !510
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !511
  %1 = load i32, i32* %intOne, align 4, !dbg !511
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !512
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !513
  %3 = load i32, i32* %intTwo, align 4, !dbg !513
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !514
  ret void, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !516 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !520, metadata !DIExpression()), !dbg !521
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !522, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.declare(metadata i64* %i, metadata !524, metadata !DIExpression()), !dbg !525
  store i64 0, i64* %i, align 8, !dbg !526
  br label %for.cond, !dbg !528

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !529
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !531
  %cmp = icmp ult i64 %0, %1, !dbg !532
  br i1 %cmp, label %for.body, label %for.end, !dbg !533

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !534
  %3 = load i64, i64* %i, align 8, !dbg !536
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !534
  %4 = load i8, i8* %arrayidx, align 1, !dbg !534
  %conv = zext i8 %4 to i32, !dbg !534
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !537
  br label %for.inc, !dbg !538

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !539
  %inc = add i64 %5, 1, !dbg !539
  store i64 %inc, i64* %i, align 8, !dbg !539
  br label %for.cond, !dbg !540, !llvm.loop !541

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !543
  ret void, !dbg !544
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !545 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !548, metadata !DIExpression()), !dbg !549
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !550, metadata !DIExpression()), !dbg !551
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !554, metadata !DIExpression()), !dbg !555
  store i64 0, i64* %numWritten, align 8, !dbg !555
  br label %while.cond, !dbg !556

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !557
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !558
  %cmp = icmp ult i64 %0, %1, !dbg !559
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !560

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !561
  %2 = load i16*, i16** %call, align 8, !dbg !561
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !561
  %4 = load i64, i64* %numWritten, align 8, !dbg !561
  %mul = mul i64 2, %4, !dbg !561
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !561
  %5 = load i8, i8* %arrayidx, align 1, !dbg !561
  %conv = sext i8 %5 to i32, !dbg !561
  %idxprom = sext i32 %conv to i64, !dbg !561
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !561
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !561
  %conv2 = zext i16 %6 to i32, !dbg !561
  %and = and i32 %conv2, 4096, !dbg !561
  %tobool = icmp ne i32 %and, 0, !dbg !561
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !562

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !563
  %7 = load i16*, i16** %call3, align 8, !dbg !563
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !563
  %9 = load i64, i64* %numWritten, align 8, !dbg !563
  %mul4 = mul i64 2, %9, !dbg !563
  %add = add i64 %mul4, 1, !dbg !563
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !563
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !563
  %conv6 = sext i8 %10 to i32, !dbg !563
  %idxprom7 = sext i32 %conv6 to i64, !dbg !563
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !563
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !563
  %conv9 = zext i16 %11 to i32, !dbg !563
  %and10 = and i32 %conv9, 4096, !dbg !563
  %tobool11 = icmp ne i32 %and10, 0, !dbg !562
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !564
  br i1 %12, label %while.body, label %while.end, !dbg !556

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !565, metadata !DIExpression()), !dbg !567
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !568
  %14 = load i64, i64* %numWritten, align 8, !dbg !569
  %mul12 = mul i64 2, %14, !dbg !570
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !568
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !571
  %15 = load i32, i32* %byte, align 4, !dbg !572
  %conv15 = trunc i32 %15 to i8, !dbg !573
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !574
  %17 = load i64, i64* %numWritten, align 8, !dbg !575
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !574
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !576
  %18 = load i64, i64* %numWritten, align 8, !dbg !577
  %inc = add i64 %18, 1, !dbg !577
  store i64 %inc, i64* %numWritten, align 8, !dbg !577
  br label %while.cond, !dbg !556, !llvm.loop !578

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !580
  ret i64 %19, !dbg !581
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !582 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !585, metadata !DIExpression()), !dbg !586
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !587, metadata !DIExpression()), !dbg !588
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !589, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !591, metadata !DIExpression()), !dbg !592
  store i64 0, i64* %numWritten, align 8, !dbg !592
  br label %while.cond, !dbg !593

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !594
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !595
  %cmp = icmp ult i64 %0, %1, !dbg !596
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !597

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !598
  %3 = load i64, i64* %numWritten, align 8, !dbg !599
  %mul = mul i64 2, %3, !dbg !600
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !598
  %4 = load i32, i32* %arrayidx, align 4, !dbg !598
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !601
  %tobool = icmp ne i32 %call, 0, !dbg !601
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !602

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !603
  %6 = load i64, i64* %numWritten, align 8, !dbg !604
  %mul1 = mul i64 2, %6, !dbg !605
  %add = add i64 %mul1, 1, !dbg !606
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !603
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !603
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !607
  %tobool4 = icmp ne i32 %call3, 0, !dbg !602
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !608
  br i1 %8, label %while.body, label %while.end, !dbg !593

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !609, metadata !DIExpression()), !dbg !611
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !612
  %10 = load i64, i64* %numWritten, align 8, !dbg !613
  %mul5 = mul i64 2, %10, !dbg !614
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !612
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !615
  %11 = load i32, i32* %byte, align 4, !dbg !616
  %conv = trunc i32 %11 to i8, !dbg !617
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !618
  %13 = load i64, i64* %numWritten, align 8, !dbg !619
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !618
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !620
  %14 = load i64, i64* %numWritten, align 8, !dbg !621
  %inc = add i64 %14, 1, !dbg !621
  store i64 %inc, i64* %numWritten, align 8, !dbg !621
  br label %while.cond, !dbg !593, !llvm.loop !622

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !624
  ret i64 %15, !dbg !625
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !626 {
entry:
  ret i32 1, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !630 {
entry:
  ret i32 0, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !632 {
entry:
  %call = call i32 @rand() #8, !dbg !633
  %rem = srem i32 %call, 2, !dbg !634
  ret i32 %rem, !dbg !635
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !636 {
entry:
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !638 {
entry:
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !640 {
entry:
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !642 {
entry:
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !644 {
entry:
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !646 {
entry:
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !648 {
entry:
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !650 {
entry:
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !652 {
entry:
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !654 {
entry:
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !656 {
entry:
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !658 {
entry:
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !660 {
entry:
  ret void, !dbg !661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !662 {
entry:
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !664 {
entry:
  ret void, !dbg !665
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !666 {
entry:
  ret void, !dbg !667
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !668 {
entry:
  ret void, !dbg !669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !670 {
entry:
  ret void, !dbg !671
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

!llvm.dbg.cu = !{!44, !48, !2}
!llvm.ident = !{!50, !50, !50}
!llvm.module.flags = !{!51, !52, !53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_103/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_51a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_103/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_51b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_103/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_51_bad", scope: !45, file: !45, line: 37, type: !55, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 39, type: !42)
!58 = !DILocation(line: 39, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 40, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 100)
!63 = !DILocation(line: 40, column: 10, scope: !54)
!64 = !DILocation(line: 41, column: 12, scope: !54)
!65 = !DILocation(line: 41, column: 10, scope: !54)
!66 = !DILocalVariable(name: "dataLen", scope: !67, file: !45, line: 44, type: !68)
!67 = distinct !DILexicalBlock(scope: !54, file: !45, line: 42, column: 5)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 44, column: 16, scope: !67)
!72 = !DILocation(line: 44, column: 33, scope: !67)
!73 = !DILocation(line: 44, column: 26, scope: !67)
!74 = !DILocalVariable(name: "pFile", scope: !67, file: !45, line: 45, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !77, line: 7, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !79, line: 49, size: 1728, elements: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !96, !98, !99, !100, !104, !105, !107, !111, !114, !116, !119, !122, !123, !124, !125, !126}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !78, file: !79, line: 51, baseType: !23, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !78, file: !79, line: 54, baseType: !42, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !78, file: !79, line: 55, baseType: !42, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !78, file: !79, line: 56, baseType: !42, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !78, file: !79, line: 57, baseType: !42, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !78, file: !79, line: 58, baseType: !42, size: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !78, file: !79, line: 59, baseType: !42, size: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !78, file: !79, line: 60, baseType: !42, size: 64, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !78, file: !79, line: 61, baseType: !42, size: 64, offset: 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !78, file: !79, line: 64, baseType: !42, size: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !78, file: !79, line: 65, baseType: !42, size: 64, offset: 640)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !78, file: !79, line: 66, baseType: !42, size: 64, offset: 704)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !78, file: !79, line: 68, baseType: !94, size: 64, offset: 768)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !79, line: 36, flags: DIFlagFwdDecl)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !78, file: !79, line: 70, baseType: !97, size: 64, offset: 832)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !78, file: !79, line: 72, baseType: !23, size: 32, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !78, file: !79, line: 73, baseType: !23, size: 32, offset: 928)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !78, file: !79, line: 74, baseType: !101, size: 64, offset: 960)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !102, line: 152, baseType: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!103 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !78, file: !79, line: 77, baseType: !24, size: 16, offset: 1024)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !78, file: !79, line: 78, baseType: !106, size: 8, offset: 1040)
!106 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !78, file: !79, line: 79, baseType: !108, size: 8, offset: 1048)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 1)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !78, file: !79, line: 81, baseType: !112, size: 64, offset: 1088)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !79, line: 43, baseType: null)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !78, file: !79, line: 89, baseType: !115, size: 64, offset: 1152)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !102, line: 153, baseType: !103)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !78, file: !79, line: 91, baseType: !117, size: 64, offset: 1216)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !79, line: 37, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !78, file: !79, line: 92, baseType: !120, size: 64, offset: 1280)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !79, line: 38, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !78, file: !79, line: 93, baseType: !97, size: 64, offset: 1344)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !78, file: !79, line: 94, baseType: !22, size: 64, offset: 1408)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !78, file: !79, line: 95, baseType: !68, size: 64, offset: 1472)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !78, file: !79, line: 96, baseType: !23, size: 32, offset: 1536)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !78, file: !79, line: 98, baseType: !127, size: 160, offset: 1568)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 20)
!130 = !DILocation(line: 45, column: 16, scope: !67)
!131 = !DILocation(line: 47, column: 17, scope: !132)
!132 = distinct !DILexicalBlock(scope: !67, file: !45, line: 47, column: 13)
!133 = !DILocation(line: 47, column: 16, scope: !132)
!134 = !DILocation(line: 47, column: 25, scope: !132)
!135 = !DILocation(line: 47, column: 13, scope: !67)
!136 = !DILocation(line: 49, column: 21, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !45, line: 48, column: 9)
!138 = !DILocation(line: 49, column: 19, scope: !137)
!139 = !DILocation(line: 50, column: 17, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !45, line: 50, column: 17)
!141 = !DILocation(line: 50, column: 23, scope: !140)
!142 = !DILocation(line: 50, column: 17, scope: !137)
!143 = !DILocation(line: 53, column: 27, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !45, line: 53, column: 21)
!145 = distinct !DILexicalBlock(scope: !140, file: !45, line: 51, column: 13)
!146 = !DILocation(line: 53, column: 32, scope: !144)
!147 = !DILocation(line: 53, column: 31, scope: !144)
!148 = !DILocation(line: 53, column: 51, scope: !144)
!149 = !DILocation(line: 53, column: 50, scope: !144)
!150 = !DILocation(line: 53, column: 41, scope: !144)
!151 = !DILocation(line: 53, column: 61, scope: !144)
!152 = !DILocation(line: 53, column: 21, scope: !144)
!153 = !DILocation(line: 53, column: 68, scope: !144)
!154 = !DILocation(line: 53, column: 21, scope: !145)
!155 = !DILocation(line: 55, column: 21, scope: !156)
!156 = distinct !DILexicalBlock(scope: !144, file: !45, line: 54, column: 17)
!157 = !DILocation(line: 57, column: 21, scope: !156)
!158 = !DILocation(line: 57, column: 26, scope: !156)
!159 = !DILocation(line: 57, column: 35, scope: !156)
!160 = !DILocation(line: 58, column: 17, scope: !156)
!161 = !DILocation(line: 59, column: 24, scope: !145)
!162 = !DILocation(line: 59, column: 17, scope: !145)
!163 = !DILocation(line: 60, column: 13, scope: !145)
!164 = !DILocation(line: 61, column: 9, scope: !137)
!165 = !DILocation(line: 63, column: 60, scope: !54)
!166 = !DILocation(line: 63, column: 5, scope: !54)
!167 = !DILocation(line: 64, column: 1, scope: !54)
!168 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 72, type: !55, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!169 = !DILocalVariable(name: "data", scope: !168, file: !45, line: 74, type: !42)
!170 = !DILocation(line: 74, column: 12, scope: !168)
!171 = !DILocalVariable(name: "dataBuffer", scope: !168, file: !45, line: 75, type: !60)
!172 = !DILocation(line: 75, column: 10, scope: !168)
!173 = !DILocation(line: 76, column: 12, scope: !168)
!174 = !DILocation(line: 76, column: 10, scope: !168)
!175 = !DILocation(line: 78, column: 12, scope: !168)
!176 = !DILocation(line: 78, column: 5, scope: !168)
!177 = !DILocation(line: 79, column: 64, scope: !168)
!178 = !DILocation(line: 79, column: 5, scope: !168)
!179 = !DILocation(line: 80, column: 1, scope: !168)
!180 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 84, type: !55, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!181 = !DILocalVariable(name: "data", scope: !180, file: !45, line: 86, type: !42)
!182 = !DILocation(line: 86, column: 12, scope: !180)
!183 = !DILocalVariable(name: "dataBuffer", scope: !180, file: !45, line: 87, type: !60)
!184 = !DILocation(line: 87, column: 10, scope: !180)
!185 = !DILocation(line: 88, column: 12, scope: !180)
!186 = !DILocation(line: 88, column: 10, scope: !180)
!187 = !DILocalVariable(name: "dataLen", scope: !188, file: !45, line: 91, type: !68)
!188 = distinct !DILexicalBlock(scope: !180, file: !45, line: 89, column: 5)
!189 = !DILocation(line: 91, column: 16, scope: !188)
!190 = !DILocation(line: 91, column: 33, scope: !188)
!191 = !DILocation(line: 91, column: 26, scope: !188)
!192 = !DILocalVariable(name: "pFile", scope: !188, file: !45, line: 92, type: !75)
!193 = !DILocation(line: 92, column: 16, scope: !188)
!194 = !DILocation(line: 94, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !188, file: !45, line: 94, column: 13)
!196 = !DILocation(line: 94, column: 16, scope: !195)
!197 = !DILocation(line: 94, column: 25, scope: !195)
!198 = !DILocation(line: 94, column: 13, scope: !188)
!199 = !DILocation(line: 96, column: 21, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !45, line: 95, column: 9)
!201 = !DILocation(line: 96, column: 19, scope: !200)
!202 = !DILocation(line: 97, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !45, line: 97, column: 17)
!204 = !DILocation(line: 97, column: 23, scope: !203)
!205 = !DILocation(line: 97, column: 17, scope: !200)
!206 = !DILocation(line: 100, column: 27, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !45, line: 100, column: 21)
!208 = distinct !DILexicalBlock(scope: !203, file: !45, line: 98, column: 13)
!209 = !DILocation(line: 100, column: 32, scope: !207)
!210 = !DILocation(line: 100, column: 31, scope: !207)
!211 = !DILocation(line: 100, column: 51, scope: !207)
!212 = !DILocation(line: 100, column: 50, scope: !207)
!213 = !DILocation(line: 100, column: 41, scope: !207)
!214 = !DILocation(line: 100, column: 61, scope: !207)
!215 = !DILocation(line: 100, column: 21, scope: !207)
!216 = !DILocation(line: 100, column: 68, scope: !207)
!217 = !DILocation(line: 100, column: 21, scope: !208)
!218 = !DILocation(line: 102, column: 21, scope: !219)
!219 = distinct !DILexicalBlock(scope: !207, file: !45, line: 101, column: 17)
!220 = !DILocation(line: 104, column: 21, scope: !219)
!221 = !DILocation(line: 104, column: 26, scope: !219)
!222 = !DILocation(line: 104, column: 35, scope: !219)
!223 = !DILocation(line: 105, column: 17, scope: !219)
!224 = !DILocation(line: 106, column: 24, scope: !208)
!225 = !DILocation(line: 106, column: 17, scope: !208)
!226 = !DILocation(line: 107, column: 13, scope: !208)
!227 = !DILocation(line: 108, column: 9, scope: !200)
!228 = !DILocation(line: 110, column: 64, scope: !180)
!229 = !DILocation(line: 110, column: 5, scope: !180)
!230 = !DILocation(line: 111, column: 1, scope: !180)
!231 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_51_good", scope: !45, file: !45, line: 113, type: !55, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!232 = !DILocation(line: 115, column: 5, scope: !231)
!233 = !DILocation(line: 116, column: 5, scope: !231)
!234 = !DILocation(line: 117, column: 1, scope: !231)
!235 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_51b_badSink", scope: !49, file: !49, line: 34, type: !236, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !42}
!238 = !DILocalVariable(name: "data", arg: 1, scope: !235, file: !49, line: 34, type: !42)
!239 = !DILocation(line: 34, column: 68, scope: !235)
!240 = !DILocalVariable(name: "i", scope: !241, file: !49, line: 37, type: !23)
!241 = distinct !DILexicalBlock(scope: !235, file: !49, line: 36, column: 5)
!242 = !DILocation(line: 37, column: 13, scope: !241)
!243 = !DILocalVariable(name: "n", scope: !241, file: !49, line: 37, type: !23)
!244 = !DILocation(line: 37, column: 16, scope: !241)
!245 = !DILocalVariable(name: "intVariable", scope: !241, file: !49, line: 37, type: !23)
!246 = !DILocation(line: 37, column: 19, scope: !241)
!247 = !DILocation(line: 38, column: 20, scope: !248)
!248 = distinct !DILexicalBlock(scope: !241, file: !49, line: 38, column: 13)
!249 = !DILocation(line: 38, column: 13, scope: !248)
!250 = !DILocation(line: 38, column: 36, scope: !248)
!251 = !DILocation(line: 38, column: 13, scope: !241)
!252 = !DILocation(line: 41, column: 25, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !49, line: 39, column: 9)
!254 = !DILocation(line: 42, column: 20, scope: !255)
!255 = distinct !DILexicalBlock(scope: !253, file: !49, line: 42, column: 13)
!256 = !DILocation(line: 42, column: 18, scope: !255)
!257 = !DILocation(line: 42, column: 25, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !49, line: 42, column: 13)
!259 = !DILocation(line: 42, column: 29, scope: !258)
!260 = !DILocation(line: 42, column: 27, scope: !258)
!261 = !DILocation(line: 42, column: 13, scope: !255)
!262 = !DILocation(line: 45, column: 28, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !49, line: 43, column: 13)
!264 = !DILocation(line: 46, column: 13, scope: !263)
!265 = !DILocation(line: 42, column: 33, scope: !258)
!266 = !DILocation(line: 42, column: 13, scope: !258)
!267 = distinct !{!267, !261, !268, !269}
!268 = !DILocation(line: 46, column: 13, scope: !255)
!269 = !{!"llvm.loop.mustprogress"}
!270 = !DILocation(line: 47, column: 26, scope: !253)
!271 = !DILocation(line: 47, column: 13, scope: !253)
!272 = !DILocation(line: 48, column: 9, scope: !253)
!273 = !DILocation(line: 50, column: 1, scope: !235)
!274 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_51b_goodG2BSink", scope: !49, file: !49, line: 57, type: !236, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!275 = !DILocalVariable(name: "data", arg: 1, scope: !274, file: !49, line: 57, type: !42)
!276 = !DILocation(line: 57, column: 72, scope: !274)
!277 = !DILocalVariable(name: "i", scope: !278, file: !49, line: 60, type: !23)
!278 = distinct !DILexicalBlock(scope: !274, file: !49, line: 59, column: 5)
!279 = !DILocation(line: 60, column: 13, scope: !278)
!280 = !DILocalVariable(name: "n", scope: !278, file: !49, line: 60, type: !23)
!281 = !DILocation(line: 60, column: 16, scope: !278)
!282 = !DILocalVariable(name: "intVariable", scope: !278, file: !49, line: 60, type: !23)
!283 = !DILocation(line: 60, column: 19, scope: !278)
!284 = !DILocation(line: 61, column: 20, scope: !285)
!285 = distinct !DILexicalBlock(scope: !278, file: !49, line: 61, column: 13)
!286 = !DILocation(line: 61, column: 13, scope: !285)
!287 = !DILocation(line: 61, column: 36, scope: !285)
!288 = !DILocation(line: 61, column: 13, scope: !278)
!289 = !DILocation(line: 64, column: 25, scope: !290)
!290 = distinct !DILexicalBlock(scope: !285, file: !49, line: 62, column: 9)
!291 = !DILocation(line: 65, column: 20, scope: !292)
!292 = distinct !DILexicalBlock(scope: !290, file: !49, line: 65, column: 13)
!293 = !DILocation(line: 65, column: 18, scope: !292)
!294 = !DILocation(line: 65, column: 25, scope: !295)
!295 = distinct !DILexicalBlock(scope: !292, file: !49, line: 65, column: 13)
!296 = !DILocation(line: 65, column: 29, scope: !295)
!297 = !DILocation(line: 65, column: 27, scope: !295)
!298 = !DILocation(line: 65, column: 13, scope: !292)
!299 = !DILocation(line: 68, column: 28, scope: !300)
!300 = distinct !DILexicalBlock(scope: !295, file: !49, line: 66, column: 13)
!301 = !DILocation(line: 69, column: 13, scope: !300)
!302 = !DILocation(line: 65, column: 33, scope: !295)
!303 = !DILocation(line: 65, column: 13, scope: !295)
!304 = distinct !{!304, !298, !305, !269}
!305 = !DILocation(line: 69, column: 13, scope: !292)
!306 = !DILocation(line: 70, column: 26, scope: !290)
!307 = !DILocation(line: 70, column: 13, scope: !290)
!308 = !DILocation(line: 71, column: 9, scope: !290)
!309 = !DILocation(line: 73, column: 1, scope: !274)
!310 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_51b_goodB2GSink", scope: !49, file: !49, line: 76, type: !236, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!311 = !DILocalVariable(name: "data", arg: 1, scope: !310, file: !49, line: 76, type: !42)
!312 = !DILocation(line: 76, column: 72, scope: !310)
!313 = !DILocalVariable(name: "i", scope: !314, file: !49, line: 79, type: !23)
!314 = distinct !DILexicalBlock(scope: !310, file: !49, line: 78, column: 5)
!315 = !DILocation(line: 79, column: 13, scope: !314)
!316 = !DILocalVariable(name: "n", scope: !314, file: !49, line: 79, type: !23)
!317 = !DILocation(line: 79, column: 16, scope: !314)
!318 = !DILocalVariable(name: "intVariable", scope: !314, file: !49, line: 79, type: !23)
!319 = !DILocation(line: 79, column: 19, scope: !314)
!320 = !DILocation(line: 80, column: 20, scope: !321)
!321 = distinct !DILexicalBlock(scope: !314, file: !49, line: 80, column: 13)
!322 = !DILocation(line: 80, column: 13, scope: !321)
!323 = !DILocation(line: 80, column: 36, scope: !321)
!324 = !DILocation(line: 80, column: 13, scope: !314)
!325 = !DILocation(line: 83, column: 17, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !49, line: 83, column: 17)
!327 = distinct !DILexicalBlock(scope: !321, file: !49, line: 81, column: 9)
!328 = !DILocation(line: 83, column: 19, scope: !326)
!329 = !DILocation(line: 83, column: 17, scope: !327)
!330 = !DILocation(line: 85, column: 29, scope: !331)
!331 = distinct !DILexicalBlock(scope: !326, file: !49, line: 84, column: 13)
!332 = !DILocation(line: 86, column: 24, scope: !333)
!333 = distinct !DILexicalBlock(scope: !331, file: !49, line: 86, column: 17)
!334 = !DILocation(line: 86, column: 22, scope: !333)
!335 = !DILocation(line: 86, column: 29, scope: !336)
!336 = distinct !DILexicalBlock(scope: !333, file: !49, line: 86, column: 17)
!337 = !DILocation(line: 86, column: 33, scope: !336)
!338 = !DILocation(line: 86, column: 31, scope: !336)
!339 = !DILocation(line: 86, column: 17, scope: !333)
!340 = !DILocation(line: 89, column: 32, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !49, line: 87, column: 17)
!342 = !DILocation(line: 90, column: 17, scope: !341)
!343 = !DILocation(line: 86, column: 37, scope: !336)
!344 = !DILocation(line: 86, column: 17, scope: !336)
!345 = distinct !{!345, !339, !346, !269}
!346 = !DILocation(line: 90, column: 17, scope: !333)
!347 = !DILocation(line: 91, column: 30, scope: !331)
!348 = !DILocation(line: 91, column: 17, scope: !331)
!349 = !DILocation(line: 92, column: 13, scope: !331)
!350 = !DILocation(line: 93, column: 9, scope: !327)
!351 = !DILocation(line: 95, column: 1, scope: !310)
!352 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !236, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!353 = !DILocalVariable(name: "line", arg: 1, scope: !352, file: !3, line: 11, type: !42)
!354 = !DILocation(line: 11, column: 25, scope: !352)
!355 = !DILocation(line: 13, column: 1, scope: !352)
!356 = !DILocation(line: 14, column: 8, scope: !357)
!357 = distinct !DILexicalBlock(scope: !352, file: !3, line: 14, column: 8)
!358 = !DILocation(line: 14, column: 13, scope: !357)
!359 = !DILocation(line: 14, column: 8, scope: !352)
!360 = !DILocation(line: 16, column: 24, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !3, line: 15, column: 5)
!362 = !DILocation(line: 16, column: 9, scope: !361)
!363 = !DILocation(line: 17, column: 5, scope: !361)
!364 = !DILocation(line: 18, column: 5, scope: !352)
!365 = !DILocation(line: 19, column: 1, scope: !352)
!366 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !236, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!367 = !DILocalVariable(name: "line", arg: 1, scope: !366, file: !3, line: 20, type: !42)
!368 = !DILocation(line: 20, column: 29, scope: !366)
!369 = !DILocation(line: 22, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !3, line: 22, column: 8)
!371 = !DILocation(line: 22, column: 13, scope: !370)
!372 = !DILocation(line: 22, column: 8, scope: !366)
!373 = !DILocation(line: 24, column: 24, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !3, line: 23, column: 5)
!375 = !DILocation(line: 24, column: 9, scope: !374)
!376 = !DILocation(line: 25, column: 5, scope: !374)
!377 = !DILocation(line: 26, column: 1, scope: !366)
!378 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !379, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!383 = !DILocalVariable(name: "line", arg: 1, scope: !378, file: !3, line: 27, type: !381)
!384 = !DILocation(line: 27, column: 29, scope: !378)
!385 = !DILocation(line: 29, column: 8, scope: !386)
!386 = distinct !DILexicalBlock(scope: !378, file: !3, line: 29, column: 8)
!387 = !DILocation(line: 29, column: 13, scope: !386)
!388 = !DILocation(line: 29, column: 8, scope: !378)
!389 = !DILocation(line: 31, column: 27, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !3, line: 30, column: 5)
!391 = !DILocation(line: 31, column: 9, scope: !390)
!392 = !DILocation(line: 32, column: 5, scope: !390)
!393 = !DILocation(line: 33, column: 1, scope: !378)
!394 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !395, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !23}
!397 = !DILocalVariable(name: "intNumber", arg: 1, scope: !394, file: !3, line: 35, type: !23)
!398 = !DILocation(line: 35, column: 24, scope: !394)
!399 = !DILocation(line: 37, column: 20, scope: !394)
!400 = !DILocation(line: 37, column: 5, scope: !394)
!401 = !DILocation(line: 38, column: 1, scope: !394)
!402 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !403, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !405}
!405 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!406 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !402, file: !3, line: 40, type: !405)
!407 = !DILocation(line: 40, column: 28, scope: !402)
!408 = !DILocation(line: 42, column: 21, scope: !402)
!409 = !DILocation(line: 42, column: 5, scope: !402)
!410 = !DILocation(line: 43, column: 1, scope: !402)
!411 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !412, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !414}
!414 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!415 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !411, file: !3, line: 45, type: !414)
!416 = !DILocation(line: 45, column: 28, scope: !411)
!417 = !DILocation(line: 47, column: 20, scope: !411)
!418 = !DILocation(line: 47, column: 5, scope: !411)
!419 = !DILocation(line: 48, column: 1, scope: !411)
!420 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !421, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !103}
!423 = !DILocalVariable(name: "longNumber", arg: 1, scope: !420, file: !3, line: 50, type: !103)
!424 = !DILocation(line: 50, column: 26, scope: !420)
!425 = !DILocation(line: 52, column: 21, scope: !420)
!426 = !DILocation(line: 52, column: 5, scope: !420)
!427 = !DILocation(line: 53, column: 1, scope: !420)
!428 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !429, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !431}
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !432, line: 27, baseType: !433)
!432 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !102, line: 44, baseType: !103)
!434 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !428, file: !3, line: 55, type: !431)
!435 = !DILocation(line: 55, column: 33, scope: !428)
!436 = !DILocation(line: 57, column: 29, scope: !428)
!437 = !DILocation(line: 57, column: 5, scope: !428)
!438 = !DILocation(line: 58, column: 1, scope: !428)
!439 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !440, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !68}
!442 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !439, file: !3, line: 60, type: !68)
!443 = !DILocation(line: 60, column: 29, scope: !439)
!444 = !DILocation(line: 62, column: 21, scope: !439)
!445 = !DILocation(line: 62, column: 5, scope: !439)
!446 = !DILocation(line: 63, column: 1, scope: !439)
!447 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !448, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !43}
!450 = !DILocalVariable(name: "charHex", arg: 1, scope: !447, file: !3, line: 65, type: !43)
!451 = !DILocation(line: 65, column: 29, scope: !447)
!452 = !DILocation(line: 67, column: 22, scope: !447)
!453 = !DILocation(line: 67, column: 5, scope: !447)
!454 = !DILocation(line: 68, column: 1, scope: !447)
!455 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !456, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !382}
!458 = !DILocalVariable(name: "wideChar", arg: 1, scope: !455, file: !3, line: 70, type: !382)
!459 = !DILocation(line: 70, column: 29, scope: !455)
!460 = !DILocalVariable(name: "s", scope: !455, file: !3, line: 74, type: !461)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 64, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 2)
!464 = !DILocation(line: 74, column: 13, scope: !455)
!465 = !DILocation(line: 75, column: 16, scope: !455)
!466 = !DILocation(line: 75, column: 9, scope: !455)
!467 = !DILocation(line: 75, column: 14, scope: !455)
!468 = !DILocation(line: 76, column: 9, scope: !455)
!469 = !DILocation(line: 76, column: 14, scope: !455)
!470 = !DILocation(line: 77, column: 21, scope: !455)
!471 = !DILocation(line: 77, column: 5, scope: !455)
!472 = !DILocation(line: 78, column: 1, scope: !455)
!473 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !474, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !7}
!476 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !473, file: !3, line: 80, type: !7)
!477 = !DILocation(line: 80, column: 33, scope: !473)
!478 = !DILocation(line: 82, column: 20, scope: !473)
!479 = !DILocation(line: 82, column: 5, scope: !473)
!480 = !DILocation(line: 83, column: 1, scope: !473)
!481 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !482, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !25}
!484 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !481, file: !3, line: 85, type: !25)
!485 = !DILocation(line: 85, column: 45, scope: !481)
!486 = !DILocation(line: 87, column: 22, scope: !481)
!487 = !DILocation(line: 87, column: 5, scope: !481)
!488 = !DILocation(line: 88, column: 1, scope: !481)
!489 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !490, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !492}
!492 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!493 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !489, file: !3, line: 90, type: !492)
!494 = !DILocation(line: 90, column: 29, scope: !489)
!495 = !DILocation(line: 92, column: 20, scope: !489)
!496 = !DILocation(line: 92, column: 5, scope: !489)
!497 = !DILocation(line: 93, column: 1, scope: !489)
!498 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !499, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !503, line: 100, baseType: !504)
!503 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_103/source_code")
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !503, line: 96, size: 64, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !504, file: !503, line: 98, baseType: !23, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !504, file: !503, line: 99, baseType: !23, size: 32, offset: 32)
!508 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !498, file: !3, line: 95, type: !501)
!509 = !DILocation(line: 95, column: 40, scope: !498)
!510 = !DILocation(line: 97, column: 26, scope: !498)
!511 = !DILocation(line: 97, column: 47, scope: !498)
!512 = !DILocation(line: 97, column: 55, scope: !498)
!513 = !DILocation(line: 97, column: 76, scope: !498)
!514 = !DILocation(line: 97, column: 5, scope: !498)
!515 = !DILocation(line: 98, column: 1, scope: !498)
!516 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !517, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !519, !68}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!520 = !DILocalVariable(name: "bytes", arg: 1, scope: !516, file: !3, line: 100, type: !519)
!521 = !DILocation(line: 100, column: 38, scope: !516)
!522 = !DILocalVariable(name: "numBytes", arg: 2, scope: !516, file: !3, line: 100, type: !68)
!523 = !DILocation(line: 100, column: 52, scope: !516)
!524 = !DILocalVariable(name: "i", scope: !516, file: !3, line: 102, type: !68)
!525 = !DILocation(line: 102, column: 12, scope: !516)
!526 = !DILocation(line: 103, column: 12, scope: !527)
!527 = distinct !DILexicalBlock(scope: !516, file: !3, line: 103, column: 5)
!528 = !DILocation(line: 103, column: 10, scope: !527)
!529 = !DILocation(line: 103, column: 17, scope: !530)
!530 = distinct !DILexicalBlock(scope: !527, file: !3, line: 103, column: 5)
!531 = !DILocation(line: 103, column: 21, scope: !530)
!532 = !DILocation(line: 103, column: 19, scope: !530)
!533 = !DILocation(line: 103, column: 5, scope: !527)
!534 = !DILocation(line: 105, column: 24, scope: !535)
!535 = distinct !DILexicalBlock(scope: !530, file: !3, line: 104, column: 5)
!536 = !DILocation(line: 105, column: 30, scope: !535)
!537 = !DILocation(line: 105, column: 9, scope: !535)
!538 = !DILocation(line: 106, column: 5, scope: !535)
!539 = !DILocation(line: 103, column: 31, scope: !530)
!540 = !DILocation(line: 103, column: 5, scope: !530)
!541 = distinct !{!541, !533, !542, !269}
!542 = !DILocation(line: 106, column: 5, scope: !527)
!543 = !DILocation(line: 107, column: 5, scope: !516)
!544 = !DILocation(line: 108, column: 1, scope: !516)
!545 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !546, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DISubroutineType(types: !547)
!547 = !{!68, !519, !68, !42}
!548 = !DILocalVariable(name: "bytes", arg: 1, scope: !545, file: !3, line: 113, type: !519)
!549 = !DILocation(line: 113, column: 39, scope: !545)
!550 = !DILocalVariable(name: "numBytes", arg: 2, scope: !545, file: !3, line: 113, type: !68)
!551 = !DILocation(line: 113, column: 53, scope: !545)
!552 = !DILocalVariable(name: "hex", arg: 3, scope: !545, file: !3, line: 113, type: !42)
!553 = !DILocation(line: 113, column: 71, scope: !545)
!554 = !DILocalVariable(name: "numWritten", scope: !545, file: !3, line: 115, type: !68)
!555 = !DILocation(line: 115, column: 12, scope: !545)
!556 = !DILocation(line: 121, column: 5, scope: !545)
!557 = !DILocation(line: 121, column: 12, scope: !545)
!558 = !DILocation(line: 121, column: 25, scope: !545)
!559 = !DILocation(line: 121, column: 23, scope: !545)
!560 = !DILocation(line: 121, column: 34, scope: !545)
!561 = !DILocation(line: 121, column: 37, scope: !545)
!562 = !DILocation(line: 121, column: 67, scope: !545)
!563 = !DILocation(line: 121, column: 70, scope: !545)
!564 = !DILocation(line: 0, scope: !545)
!565 = !DILocalVariable(name: "byte", scope: !566, file: !3, line: 123, type: !23)
!566 = distinct !DILexicalBlock(scope: !545, file: !3, line: 122, column: 5)
!567 = !DILocation(line: 123, column: 13, scope: !566)
!568 = !DILocation(line: 124, column: 17, scope: !566)
!569 = !DILocation(line: 124, column: 25, scope: !566)
!570 = !DILocation(line: 124, column: 23, scope: !566)
!571 = !DILocation(line: 124, column: 9, scope: !566)
!572 = !DILocation(line: 125, column: 45, scope: !566)
!573 = !DILocation(line: 125, column: 29, scope: !566)
!574 = !DILocation(line: 125, column: 9, scope: !566)
!575 = !DILocation(line: 125, column: 15, scope: !566)
!576 = !DILocation(line: 125, column: 27, scope: !566)
!577 = !DILocation(line: 126, column: 9, scope: !566)
!578 = distinct !{!578, !556, !579, !269}
!579 = !DILocation(line: 127, column: 5, scope: !545)
!580 = !DILocation(line: 129, column: 12, scope: !545)
!581 = !DILocation(line: 129, column: 5, scope: !545)
!582 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !583, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DISubroutineType(types: !584)
!584 = !{!68, !519, !68, !381}
!585 = !DILocalVariable(name: "bytes", arg: 1, scope: !582, file: !3, line: 135, type: !519)
!586 = !DILocation(line: 135, column: 41, scope: !582)
!587 = !DILocalVariable(name: "numBytes", arg: 2, scope: !582, file: !3, line: 135, type: !68)
!588 = !DILocation(line: 135, column: 55, scope: !582)
!589 = !DILocalVariable(name: "hex", arg: 3, scope: !582, file: !3, line: 135, type: !381)
!590 = !DILocation(line: 135, column: 76, scope: !582)
!591 = !DILocalVariable(name: "numWritten", scope: !582, file: !3, line: 137, type: !68)
!592 = !DILocation(line: 137, column: 12, scope: !582)
!593 = !DILocation(line: 143, column: 5, scope: !582)
!594 = !DILocation(line: 143, column: 12, scope: !582)
!595 = !DILocation(line: 143, column: 25, scope: !582)
!596 = !DILocation(line: 143, column: 23, scope: !582)
!597 = !DILocation(line: 143, column: 34, scope: !582)
!598 = !DILocation(line: 143, column: 47, scope: !582)
!599 = !DILocation(line: 143, column: 55, scope: !582)
!600 = !DILocation(line: 143, column: 53, scope: !582)
!601 = !DILocation(line: 143, column: 37, scope: !582)
!602 = !DILocation(line: 143, column: 68, scope: !582)
!603 = !DILocation(line: 143, column: 81, scope: !582)
!604 = !DILocation(line: 143, column: 89, scope: !582)
!605 = !DILocation(line: 143, column: 87, scope: !582)
!606 = !DILocation(line: 143, column: 100, scope: !582)
!607 = !DILocation(line: 143, column: 71, scope: !582)
!608 = !DILocation(line: 0, scope: !582)
!609 = !DILocalVariable(name: "byte", scope: !610, file: !3, line: 145, type: !23)
!610 = distinct !DILexicalBlock(scope: !582, file: !3, line: 144, column: 5)
!611 = !DILocation(line: 145, column: 13, scope: !610)
!612 = !DILocation(line: 146, column: 18, scope: !610)
!613 = !DILocation(line: 146, column: 26, scope: !610)
!614 = !DILocation(line: 146, column: 24, scope: !610)
!615 = !DILocation(line: 146, column: 9, scope: !610)
!616 = !DILocation(line: 147, column: 45, scope: !610)
!617 = !DILocation(line: 147, column: 29, scope: !610)
!618 = !DILocation(line: 147, column: 9, scope: !610)
!619 = !DILocation(line: 147, column: 15, scope: !610)
!620 = !DILocation(line: 147, column: 27, scope: !610)
!621 = !DILocation(line: 148, column: 9, scope: !610)
!622 = distinct !{!622, !593, !623, !269}
!623 = !DILocation(line: 149, column: 5, scope: !582)
!624 = !DILocation(line: 151, column: 12, scope: !582)
!625 = !DILocation(line: 151, column: 5, scope: !582)
!626 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !627, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!627 = !DISubroutineType(types: !628)
!628 = !{!23}
!629 = !DILocation(line: 158, column: 5, scope: !626)
!630 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !627, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!631 = !DILocation(line: 163, column: 5, scope: !630)
!632 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !627, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DILocation(line: 168, column: 13, scope: !632)
!634 = !DILocation(line: 168, column: 20, scope: !632)
!635 = !DILocation(line: 168, column: 5, scope: !632)
!636 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!637 = !DILocation(line: 187, column: 16, scope: !636)
!638 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!639 = !DILocation(line: 188, column: 16, scope: !638)
!640 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!641 = !DILocation(line: 189, column: 16, scope: !640)
!642 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!643 = !DILocation(line: 190, column: 16, scope: !642)
!644 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!645 = !DILocation(line: 191, column: 16, scope: !644)
!646 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!647 = !DILocation(line: 192, column: 16, scope: !646)
!648 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!649 = !DILocation(line: 193, column: 16, scope: !648)
!650 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!651 = !DILocation(line: 194, column: 16, scope: !650)
!652 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!653 = !DILocation(line: 195, column: 16, scope: !652)
!654 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!655 = !DILocation(line: 198, column: 15, scope: !654)
!656 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!657 = !DILocation(line: 199, column: 15, scope: !656)
!658 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!659 = !DILocation(line: 200, column: 15, scope: !658)
!660 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!661 = !DILocation(line: 201, column: 15, scope: !660)
!662 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!663 = !DILocation(line: 202, column: 15, scope: !662)
!664 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!665 = !DILocation(line: 203, column: 15, scope: !664)
!666 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!667 = !DILocation(line: 204, column: 15, scope: !666)
!668 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!669 = !DILocation(line: 205, column: 15, scope: !668)
!670 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!671 = !DILocation(line: 206, column: 15, scope: !670)
