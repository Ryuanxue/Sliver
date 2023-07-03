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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_63_bad() #0 !dbg !54 {
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
  call void @CWE606_Unchecked_Loop_Condition__char_file_63b_badSink(i8** %data), !dbg !165
  ret void, !dbg !166
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
define dso_local void @goodG2B() #0 !dbg !167 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !170, metadata !DIExpression()), !dbg !171
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !171
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !171
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !172
  store i8* %arraydecay, i8** %data, align 8, !dbg !173
  %1 = load i8*, i8** %data, align 8, !dbg !174
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !175
  call void @CWE606_Unchecked_Loop_Condition__char_file_63b_goodG2BSink(i8** %data), !dbg !176
  ret void, !dbg !177
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !178 {
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
  call void @CWE606_Unchecked_Loop_Condition__char_file_63b_goodB2GSink(i8** %data), !dbg !226
  ret void, !dbg !227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_63_good() #0 !dbg !228 {
entry:
  call void @goodG2B(), !dbg !229
  call void @goodB2G(), !dbg !230
  ret void, !dbg !231
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_63b_badSink(i8** %dataPtr) #0 !dbg !232 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata i8** %data, metadata !237, metadata !DIExpression()), !dbg !238
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !239
  %1 = load i8*, i8** %0, align 8, !dbg !240
  store i8* %1, i8** %data, align 8, !dbg !238
  call void @llvm.dbg.declare(metadata i32* %i, metadata !241, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata i32* %n, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !246, metadata !DIExpression()), !dbg !247
  %2 = load i8*, i8** %data, align 8, !dbg !248
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !250
  %cmp = icmp eq i32 %call, 1, !dbg !251
  br i1 %cmp, label %if.then, label %if.end, !dbg !252

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !253
  store i32 0, i32* %i, align 4, !dbg !255
  br label %for.cond, !dbg !257

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !258
  %4 = load i32, i32* %n, align 4, !dbg !260
  %cmp1 = icmp slt i32 %3, %4, !dbg !261
  br i1 %cmp1, label %for.body, label %for.end, !dbg !262

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !263
  %inc = add nsw i32 %5, 1, !dbg !263
  store i32 %inc, i32* %intVariable, align 4, !dbg !263
  br label %for.inc, !dbg !265

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !266
  %inc2 = add nsw i32 %6, 1, !dbg !266
  store i32 %inc2, i32* %i, align 4, !dbg !266
  br label %for.cond, !dbg !267, !llvm.loop !268

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !271
  call void @printIntLine(i32 %7), !dbg !272
  br label %if.end, !dbg !273

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !274
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_63b_goodG2BSink(i8** %dataPtr) #0 !dbg !275 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata i8** %data, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !280
  %1 = load i8*, i8** %0, align 8, !dbg !281
  store i8* %1, i8** %data, align 8, !dbg !279
  call void @llvm.dbg.declare(metadata i32* %i, metadata !282, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata i32* %n, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !287, metadata !DIExpression()), !dbg !288
  %2 = load i8*, i8** %data, align 8, !dbg !289
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !291
  %cmp = icmp eq i32 %call, 1, !dbg !292
  br i1 %cmp, label %if.then, label %if.end, !dbg !293

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !294
  store i32 0, i32* %i, align 4, !dbg !296
  br label %for.cond, !dbg !298

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !299
  %4 = load i32, i32* %n, align 4, !dbg !301
  %cmp1 = icmp slt i32 %3, %4, !dbg !302
  br i1 %cmp1, label %for.body, label %for.end, !dbg !303

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !304
  %inc = add nsw i32 %5, 1, !dbg !304
  store i32 %inc, i32* %intVariable, align 4, !dbg !304
  br label %for.inc, !dbg !306

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !307
  %inc2 = add nsw i32 %6, 1, !dbg !307
  store i32 %inc2, i32* %i, align 4, !dbg !307
  br label %for.cond, !dbg !308, !llvm.loop !309

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !311
  call void @printIntLine(i32 %7), !dbg !312
  br label %if.end, !dbg !313

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_63b_goodB2GSink(i8** %dataPtr) #0 !dbg !315 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !316, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.declare(metadata i8** %data, metadata !318, metadata !DIExpression()), !dbg !319
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !320
  %1 = load i8*, i8** %0, align 8, !dbg !321
  store i8* %1, i8** %data, align 8, !dbg !319
  call void @llvm.dbg.declare(metadata i32* %i, metadata !322, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata i32* %n, metadata !325, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !327, metadata !DIExpression()), !dbg !328
  %2 = load i8*, i8** %data, align 8, !dbg !329
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !331
  %cmp = icmp eq i32 %call, 1, !dbg !332
  br i1 %cmp, label %if.then, label %if.end5, !dbg !333

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !334
  %cmp1 = icmp slt i32 %3, 10000, !dbg !337
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !338

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !339
  store i32 0, i32* %i, align 4, !dbg !341
  br label %for.cond, !dbg !343

for.cond:                                         ; preds = %for.inc, %if.then2
  %4 = load i32, i32* %i, align 4, !dbg !344
  %5 = load i32, i32* %n, align 4, !dbg !346
  %cmp3 = icmp slt i32 %4, %5, !dbg !347
  br i1 %cmp3, label %for.body, label %for.end, !dbg !348

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !349
  %inc = add nsw i32 %6, 1, !dbg !349
  store i32 %inc, i32* %intVariable, align 4, !dbg !349
  br label %for.inc, !dbg !351

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !352
  %inc4 = add nsw i32 %7, 1, !dbg !352
  store i32 %inc4, i32* %i, align 4, !dbg !352
  br label %for.cond, !dbg !353, !llvm.loop !354

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !356
  call void @printIntLine(i32 %8), !dbg !357
  br label %if.end, !dbg !358

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !359

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !361 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !364, metadata !DIExpression()), !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)), !dbg !366
  %0 = load i8*, i8** %line.addr, align 8, !dbg !367
  %cmp = icmp ne i8* %0, null, !dbg !369
  br i1 %cmp, label %if.then, label %if.end, !dbg !370

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !371
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !373
  br label %if.end, !dbg !374

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.13, i64 0, i64 0)), !dbg !375
  ret void, !dbg !376
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !377 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = load i8*, i8** %line.addr, align 8, !dbg !380
  %cmp = icmp ne i8* %0, null, !dbg !382
  br i1 %cmp, label %if.then, label %if.end, !dbg !383

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !384
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !386
  br label %if.end, !dbg !387

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !388
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !389 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load i32*, i32** %line.addr, align 8, !dbg !396
  %cmp = icmp ne i32* %0, null, !dbg !398
  br i1 %cmp, label %if.then, label %if.end, !dbg !399

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !400
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.14, i64 0, i64 0), i32* %1), !dbg !402
  br label %if.end, !dbg !403

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !404
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !405 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.17, i64 0, i64 0), i32 %0), !dbg !411
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !420
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11.18, i64 0, i64 0), i32 %0), !dbg !490
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

declare dso_local i32 @puts(i8*) #4

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
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !582
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
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !612
  %tobool = icmp ne i32 %call, 0, !dbg !612
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !613

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !614
  %6 = load i64, i64* %numWritten, align 8, !dbg !615
  %mul1 = mul i64 2, %6, !dbg !616
  %add = add i64 %mul1, 1, !dbg !617
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !614
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !614
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !618
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
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !626
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
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

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
  %call = call i32 @rand() #8, !dbg !644
  %rem = srem i32 %call, 2, !dbg !645
  ret i32 %rem, !dbg !646
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_109/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_63a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_109/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_63b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_109/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_63_bad", scope: !45, file: !45, line: 37, type: !55, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!165 = !DILocation(line: 63, column: 5, scope: !54)
!166 = !DILocation(line: 64, column: 1, scope: !54)
!167 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 72, type: !55, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!168 = !DILocalVariable(name: "data", scope: !167, file: !45, line: 74, type: !42)
!169 = !DILocation(line: 74, column: 12, scope: !167)
!170 = !DILocalVariable(name: "dataBuffer", scope: !167, file: !45, line: 75, type: !60)
!171 = !DILocation(line: 75, column: 10, scope: !167)
!172 = !DILocation(line: 76, column: 12, scope: !167)
!173 = !DILocation(line: 76, column: 10, scope: !167)
!174 = !DILocation(line: 78, column: 12, scope: !167)
!175 = !DILocation(line: 78, column: 5, scope: !167)
!176 = !DILocation(line: 79, column: 5, scope: !167)
!177 = !DILocation(line: 80, column: 1, scope: !167)
!178 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 84, type: !55, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!179 = !DILocalVariable(name: "data", scope: !178, file: !45, line: 86, type: !42)
!180 = !DILocation(line: 86, column: 12, scope: !178)
!181 = !DILocalVariable(name: "dataBuffer", scope: !178, file: !45, line: 87, type: !60)
!182 = !DILocation(line: 87, column: 10, scope: !178)
!183 = !DILocation(line: 88, column: 12, scope: !178)
!184 = !DILocation(line: 88, column: 10, scope: !178)
!185 = !DILocalVariable(name: "dataLen", scope: !186, file: !45, line: 91, type: !68)
!186 = distinct !DILexicalBlock(scope: !178, file: !45, line: 89, column: 5)
!187 = !DILocation(line: 91, column: 16, scope: !186)
!188 = !DILocation(line: 91, column: 33, scope: !186)
!189 = !DILocation(line: 91, column: 26, scope: !186)
!190 = !DILocalVariable(name: "pFile", scope: !186, file: !45, line: 92, type: !75)
!191 = !DILocation(line: 92, column: 16, scope: !186)
!192 = !DILocation(line: 94, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !186, file: !45, line: 94, column: 13)
!194 = !DILocation(line: 94, column: 16, scope: !193)
!195 = !DILocation(line: 94, column: 25, scope: !193)
!196 = !DILocation(line: 94, column: 13, scope: !186)
!197 = !DILocation(line: 96, column: 21, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !45, line: 95, column: 9)
!199 = !DILocation(line: 96, column: 19, scope: !198)
!200 = !DILocation(line: 97, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !45, line: 97, column: 17)
!202 = !DILocation(line: 97, column: 23, scope: !201)
!203 = !DILocation(line: 97, column: 17, scope: !198)
!204 = !DILocation(line: 100, column: 27, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !45, line: 100, column: 21)
!206 = distinct !DILexicalBlock(scope: !201, file: !45, line: 98, column: 13)
!207 = !DILocation(line: 100, column: 32, scope: !205)
!208 = !DILocation(line: 100, column: 31, scope: !205)
!209 = !DILocation(line: 100, column: 51, scope: !205)
!210 = !DILocation(line: 100, column: 50, scope: !205)
!211 = !DILocation(line: 100, column: 41, scope: !205)
!212 = !DILocation(line: 100, column: 61, scope: !205)
!213 = !DILocation(line: 100, column: 21, scope: !205)
!214 = !DILocation(line: 100, column: 68, scope: !205)
!215 = !DILocation(line: 100, column: 21, scope: !206)
!216 = !DILocation(line: 102, column: 21, scope: !217)
!217 = distinct !DILexicalBlock(scope: !205, file: !45, line: 101, column: 17)
!218 = !DILocation(line: 104, column: 21, scope: !217)
!219 = !DILocation(line: 104, column: 26, scope: !217)
!220 = !DILocation(line: 104, column: 35, scope: !217)
!221 = !DILocation(line: 105, column: 17, scope: !217)
!222 = !DILocation(line: 106, column: 24, scope: !206)
!223 = !DILocation(line: 106, column: 17, scope: !206)
!224 = !DILocation(line: 107, column: 13, scope: !206)
!225 = !DILocation(line: 108, column: 9, scope: !198)
!226 = !DILocation(line: 110, column: 5, scope: !178)
!227 = !DILocation(line: 111, column: 1, scope: !178)
!228 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_63_good", scope: !45, file: !45, line: 113, type: !55, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!229 = !DILocation(line: 115, column: 5, scope: !228)
!230 = !DILocation(line: 116, column: 5, scope: !228)
!231 = !DILocation(line: 117, column: 1, scope: !228)
!232 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_63b_badSink", scope: !49, file: !49, line: 34, type: !233, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !41}
!235 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !232, file: !49, line: 34, type: !41)
!236 = !DILocation(line: 34, column: 70, scope: !232)
!237 = !DILocalVariable(name: "data", scope: !232, file: !49, line: 36, type: !42)
!238 = !DILocation(line: 36, column: 12, scope: !232)
!239 = !DILocation(line: 36, column: 20, scope: !232)
!240 = !DILocation(line: 36, column: 19, scope: !232)
!241 = !DILocalVariable(name: "i", scope: !242, file: !49, line: 38, type: !23)
!242 = distinct !DILexicalBlock(scope: !232, file: !49, line: 37, column: 5)
!243 = !DILocation(line: 38, column: 13, scope: !242)
!244 = !DILocalVariable(name: "n", scope: !242, file: !49, line: 38, type: !23)
!245 = !DILocation(line: 38, column: 16, scope: !242)
!246 = !DILocalVariable(name: "intVariable", scope: !242, file: !49, line: 38, type: !23)
!247 = !DILocation(line: 38, column: 19, scope: !242)
!248 = !DILocation(line: 39, column: 20, scope: !249)
!249 = distinct !DILexicalBlock(scope: !242, file: !49, line: 39, column: 13)
!250 = !DILocation(line: 39, column: 13, scope: !249)
!251 = !DILocation(line: 39, column: 36, scope: !249)
!252 = !DILocation(line: 39, column: 13, scope: !242)
!253 = !DILocation(line: 42, column: 25, scope: !254)
!254 = distinct !DILexicalBlock(scope: !249, file: !49, line: 40, column: 9)
!255 = !DILocation(line: 43, column: 20, scope: !256)
!256 = distinct !DILexicalBlock(scope: !254, file: !49, line: 43, column: 13)
!257 = !DILocation(line: 43, column: 18, scope: !256)
!258 = !DILocation(line: 43, column: 25, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !49, line: 43, column: 13)
!260 = !DILocation(line: 43, column: 29, scope: !259)
!261 = !DILocation(line: 43, column: 27, scope: !259)
!262 = !DILocation(line: 43, column: 13, scope: !256)
!263 = !DILocation(line: 46, column: 28, scope: !264)
!264 = distinct !DILexicalBlock(scope: !259, file: !49, line: 44, column: 13)
!265 = !DILocation(line: 47, column: 13, scope: !264)
!266 = !DILocation(line: 43, column: 33, scope: !259)
!267 = !DILocation(line: 43, column: 13, scope: !259)
!268 = distinct !{!268, !262, !269, !270}
!269 = !DILocation(line: 47, column: 13, scope: !256)
!270 = !{!"llvm.loop.mustprogress"}
!271 = !DILocation(line: 48, column: 26, scope: !254)
!272 = !DILocation(line: 48, column: 13, scope: !254)
!273 = !DILocation(line: 49, column: 9, scope: !254)
!274 = !DILocation(line: 51, column: 1, scope: !232)
!275 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_63b_goodG2BSink", scope: !49, file: !49, line: 58, type: !233, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!276 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !275, file: !49, line: 58, type: !41)
!277 = !DILocation(line: 58, column: 74, scope: !275)
!278 = !DILocalVariable(name: "data", scope: !275, file: !49, line: 60, type: !42)
!279 = !DILocation(line: 60, column: 12, scope: !275)
!280 = !DILocation(line: 60, column: 20, scope: !275)
!281 = !DILocation(line: 60, column: 19, scope: !275)
!282 = !DILocalVariable(name: "i", scope: !283, file: !49, line: 62, type: !23)
!283 = distinct !DILexicalBlock(scope: !275, file: !49, line: 61, column: 5)
!284 = !DILocation(line: 62, column: 13, scope: !283)
!285 = !DILocalVariable(name: "n", scope: !283, file: !49, line: 62, type: !23)
!286 = !DILocation(line: 62, column: 16, scope: !283)
!287 = !DILocalVariable(name: "intVariable", scope: !283, file: !49, line: 62, type: !23)
!288 = !DILocation(line: 62, column: 19, scope: !283)
!289 = !DILocation(line: 63, column: 20, scope: !290)
!290 = distinct !DILexicalBlock(scope: !283, file: !49, line: 63, column: 13)
!291 = !DILocation(line: 63, column: 13, scope: !290)
!292 = !DILocation(line: 63, column: 36, scope: !290)
!293 = !DILocation(line: 63, column: 13, scope: !283)
!294 = !DILocation(line: 66, column: 25, scope: !295)
!295 = distinct !DILexicalBlock(scope: !290, file: !49, line: 64, column: 9)
!296 = !DILocation(line: 67, column: 20, scope: !297)
!297 = distinct !DILexicalBlock(scope: !295, file: !49, line: 67, column: 13)
!298 = !DILocation(line: 67, column: 18, scope: !297)
!299 = !DILocation(line: 67, column: 25, scope: !300)
!300 = distinct !DILexicalBlock(scope: !297, file: !49, line: 67, column: 13)
!301 = !DILocation(line: 67, column: 29, scope: !300)
!302 = !DILocation(line: 67, column: 27, scope: !300)
!303 = !DILocation(line: 67, column: 13, scope: !297)
!304 = !DILocation(line: 70, column: 28, scope: !305)
!305 = distinct !DILexicalBlock(scope: !300, file: !49, line: 68, column: 13)
!306 = !DILocation(line: 71, column: 13, scope: !305)
!307 = !DILocation(line: 67, column: 33, scope: !300)
!308 = !DILocation(line: 67, column: 13, scope: !300)
!309 = distinct !{!309, !303, !310, !270}
!310 = !DILocation(line: 71, column: 13, scope: !297)
!311 = !DILocation(line: 72, column: 26, scope: !295)
!312 = !DILocation(line: 72, column: 13, scope: !295)
!313 = !DILocation(line: 73, column: 9, scope: !295)
!314 = !DILocation(line: 75, column: 1, scope: !275)
!315 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_63b_goodB2GSink", scope: !49, file: !49, line: 78, type: !233, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!316 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !315, file: !49, line: 78, type: !41)
!317 = !DILocation(line: 78, column: 74, scope: !315)
!318 = !DILocalVariable(name: "data", scope: !315, file: !49, line: 80, type: !42)
!319 = !DILocation(line: 80, column: 12, scope: !315)
!320 = !DILocation(line: 80, column: 20, scope: !315)
!321 = !DILocation(line: 80, column: 19, scope: !315)
!322 = !DILocalVariable(name: "i", scope: !323, file: !49, line: 82, type: !23)
!323 = distinct !DILexicalBlock(scope: !315, file: !49, line: 81, column: 5)
!324 = !DILocation(line: 82, column: 13, scope: !323)
!325 = !DILocalVariable(name: "n", scope: !323, file: !49, line: 82, type: !23)
!326 = !DILocation(line: 82, column: 16, scope: !323)
!327 = !DILocalVariable(name: "intVariable", scope: !323, file: !49, line: 82, type: !23)
!328 = !DILocation(line: 82, column: 19, scope: !323)
!329 = !DILocation(line: 83, column: 20, scope: !330)
!330 = distinct !DILexicalBlock(scope: !323, file: !49, line: 83, column: 13)
!331 = !DILocation(line: 83, column: 13, scope: !330)
!332 = !DILocation(line: 83, column: 36, scope: !330)
!333 = !DILocation(line: 83, column: 13, scope: !323)
!334 = !DILocation(line: 86, column: 17, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !49, line: 86, column: 17)
!336 = distinct !DILexicalBlock(scope: !330, file: !49, line: 84, column: 9)
!337 = !DILocation(line: 86, column: 19, scope: !335)
!338 = !DILocation(line: 86, column: 17, scope: !336)
!339 = !DILocation(line: 88, column: 29, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !49, line: 87, column: 13)
!341 = !DILocation(line: 89, column: 24, scope: !342)
!342 = distinct !DILexicalBlock(scope: !340, file: !49, line: 89, column: 17)
!343 = !DILocation(line: 89, column: 22, scope: !342)
!344 = !DILocation(line: 89, column: 29, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !49, line: 89, column: 17)
!346 = !DILocation(line: 89, column: 33, scope: !345)
!347 = !DILocation(line: 89, column: 31, scope: !345)
!348 = !DILocation(line: 89, column: 17, scope: !342)
!349 = !DILocation(line: 92, column: 32, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !49, line: 90, column: 17)
!351 = !DILocation(line: 93, column: 17, scope: !350)
!352 = !DILocation(line: 89, column: 37, scope: !345)
!353 = !DILocation(line: 89, column: 17, scope: !345)
!354 = distinct !{!354, !348, !355, !270}
!355 = !DILocation(line: 93, column: 17, scope: !342)
!356 = !DILocation(line: 94, column: 30, scope: !340)
!357 = !DILocation(line: 94, column: 17, scope: !340)
!358 = !DILocation(line: 95, column: 13, scope: !340)
!359 = !DILocation(line: 96, column: 9, scope: !336)
!360 = !DILocation(line: 98, column: 1, scope: !315)
!361 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !362, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !42}
!364 = !DILocalVariable(name: "line", arg: 1, scope: !361, file: !3, line: 11, type: !42)
!365 = !DILocation(line: 11, column: 25, scope: !361)
!366 = !DILocation(line: 13, column: 1, scope: !361)
!367 = !DILocation(line: 14, column: 8, scope: !368)
!368 = distinct !DILexicalBlock(scope: !361, file: !3, line: 14, column: 8)
!369 = !DILocation(line: 14, column: 13, scope: !368)
!370 = !DILocation(line: 14, column: 8, scope: !361)
!371 = !DILocation(line: 16, column: 24, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !3, line: 15, column: 5)
!373 = !DILocation(line: 16, column: 9, scope: !372)
!374 = !DILocation(line: 17, column: 5, scope: !372)
!375 = !DILocation(line: 18, column: 5, scope: !361)
!376 = !DILocation(line: 19, column: 1, scope: !361)
!377 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !362, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!378 = !DILocalVariable(name: "line", arg: 1, scope: !377, file: !3, line: 20, type: !42)
!379 = !DILocation(line: 20, column: 29, scope: !377)
!380 = !DILocation(line: 22, column: 8, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !3, line: 22, column: 8)
!382 = !DILocation(line: 22, column: 13, scope: !381)
!383 = !DILocation(line: 22, column: 8, scope: !377)
!384 = !DILocation(line: 24, column: 24, scope: !385)
!385 = distinct !DILexicalBlock(scope: !381, file: !3, line: 23, column: 5)
!386 = !DILocation(line: 24, column: 9, scope: !385)
!387 = !DILocation(line: 25, column: 5, scope: !385)
!388 = !DILocation(line: 26, column: 1, scope: !377)
!389 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !390, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !392}
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!394 = !DILocalVariable(name: "line", arg: 1, scope: !389, file: !3, line: 27, type: !392)
!395 = !DILocation(line: 27, column: 29, scope: !389)
!396 = !DILocation(line: 29, column: 8, scope: !397)
!397 = distinct !DILexicalBlock(scope: !389, file: !3, line: 29, column: 8)
!398 = !DILocation(line: 29, column: 13, scope: !397)
!399 = !DILocation(line: 29, column: 8, scope: !389)
!400 = !DILocation(line: 31, column: 27, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !3, line: 30, column: 5)
!402 = !DILocation(line: 31, column: 9, scope: !401)
!403 = !DILocation(line: 32, column: 5, scope: !401)
!404 = !DILocation(line: 33, column: 1, scope: !389)
!405 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !406, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !23}
!408 = !DILocalVariable(name: "intNumber", arg: 1, scope: !405, file: !3, line: 35, type: !23)
!409 = !DILocation(line: 35, column: 24, scope: !405)
!410 = !DILocation(line: 37, column: 20, scope: !405)
!411 = !DILocation(line: 37, column: 5, scope: !405)
!412 = !DILocation(line: 38, column: 1, scope: !405)
!413 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !414, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !416}
!416 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!417 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !413, file: !3, line: 40, type: !416)
!418 = !DILocation(line: 40, column: 28, scope: !413)
!419 = !DILocation(line: 42, column: 21, scope: !413)
!420 = !DILocation(line: 42, column: 5, scope: !413)
!421 = !DILocation(line: 43, column: 1, scope: !413)
!422 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !423, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !425}
!425 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!426 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !422, file: !3, line: 45, type: !425)
!427 = !DILocation(line: 45, column: 28, scope: !422)
!428 = !DILocation(line: 47, column: 20, scope: !422)
!429 = !DILocation(line: 47, column: 5, scope: !422)
!430 = !DILocation(line: 48, column: 1, scope: !422)
!431 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !432, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !103}
!434 = !DILocalVariable(name: "longNumber", arg: 1, scope: !431, file: !3, line: 50, type: !103)
!435 = !DILocation(line: 50, column: 26, scope: !431)
!436 = !DILocation(line: 52, column: 21, scope: !431)
!437 = !DILocation(line: 52, column: 5, scope: !431)
!438 = !DILocation(line: 53, column: 1, scope: !431)
!439 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !440, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !442}
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !443, line: 27, baseType: !444)
!443 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !102, line: 44, baseType: !103)
!445 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !439, file: !3, line: 55, type: !442)
!446 = !DILocation(line: 55, column: 33, scope: !439)
!447 = !DILocation(line: 57, column: 29, scope: !439)
!448 = !DILocation(line: 57, column: 5, scope: !439)
!449 = !DILocation(line: 58, column: 1, scope: !439)
!450 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !451, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !68}
!453 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !450, file: !3, line: 60, type: !68)
!454 = !DILocation(line: 60, column: 29, scope: !450)
!455 = !DILocation(line: 62, column: 21, scope: !450)
!456 = !DILocation(line: 62, column: 5, scope: !450)
!457 = !DILocation(line: 63, column: 1, scope: !450)
!458 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !459, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !43}
!461 = !DILocalVariable(name: "charHex", arg: 1, scope: !458, file: !3, line: 65, type: !43)
!462 = !DILocation(line: 65, column: 29, scope: !458)
!463 = !DILocation(line: 67, column: 22, scope: !458)
!464 = !DILocation(line: 67, column: 5, scope: !458)
!465 = !DILocation(line: 68, column: 1, scope: !458)
!466 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !467, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !393}
!469 = !DILocalVariable(name: "wideChar", arg: 1, scope: !466, file: !3, line: 70, type: !393)
!470 = !DILocation(line: 70, column: 29, scope: !466)
!471 = !DILocalVariable(name: "s", scope: !466, file: !3, line: 74, type: !472)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 64, elements: !473)
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
!484 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !485, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !7}
!487 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !484, file: !3, line: 80, type: !7)
!488 = !DILocation(line: 80, column: 33, scope: !484)
!489 = !DILocation(line: 82, column: 20, scope: !484)
!490 = !DILocation(line: 82, column: 5, scope: !484)
!491 = !DILocation(line: 83, column: 1, scope: !484)
!492 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !493, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !25}
!495 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !492, file: !3, line: 85, type: !25)
!496 = !DILocation(line: 85, column: 45, scope: !492)
!497 = !DILocation(line: 87, column: 22, scope: !492)
!498 = !DILocation(line: 87, column: 5, scope: !492)
!499 = !DILocation(line: 88, column: 1, scope: !492)
!500 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !501, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !503}
!503 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!504 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !500, file: !3, line: 90, type: !503)
!505 = !DILocation(line: 90, column: 29, scope: !500)
!506 = !DILocation(line: 92, column: 20, scope: !500)
!507 = !DILocation(line: 92, column: 5, scope: !500)
!508 = !DILocation(line: 93, column: 1, scope: !500)
!509 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !510, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !514, line: 100, baseType: !515)
!514 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_109/source_code")
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !514, line: 96, size: 64, elements: !516)
!516 = !{!517, !518}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !515, file: !514, line: 98, baseType: !23, size: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !515, file: !514, line: 99, baseType: !23, size: 32, offset: 32)
!519 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !509, file: !3, line: 95, type: !512)
!520 = !DILocation(line: 95, column: 40, scope: !509)
!521 = !DILocation(line: 97, column: 26, scope: !509)
!522 = !DILocation(line: 97, column: 47, scope: !509)
!523 = !DILocation(line: 97, column: 55, scope: !509)
!524 = !DILocation(line: 97, column: 76, scope: !509)
!525 = !DILocation(line: 97, column: 5, scope: !509)
!526 = !DILocation(line: 98, column: 1, scope: !509)
!527 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !528, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !530, !68}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!531 = !DILocalVariable(name: "bytes", arg: 1, scope: !527, file: !3, line: 100, type: !530)
!532 = !DILocation(line: 100, column: 38, scope: !527)
!533 = !DILocalVariable(name: "numBytes", arg: 2, scope: !527, file: !3, line: 100, type: !68)
!534 = !DILocation(line: 100, column: 52, scope: !527)
!535 = !DILocalVariable(name: "i", scope: !527, file: !3, line: 102, type: !68)
!536 = !DILocation(line: 102, column: 12, scope: !527)
!537 = !DILocation(line: 103, column: 12, scope: !538)
!538 = distinct !DILexicalBlock(scope: !527, file: !3, line: 103, column: 5)
!539 = !DILocation(line: 103, column: 10, scope: !538)
!540 = !DILocation(line: 103, column: 17, scope: !541)
!541 = distinct !DILexicalBlock(scope: !538, file: !3, line: 103, column: 5)
!542 = !DILocation(line: 103, column: 21, scope: !541)
!543 = !DILocation(line: 103, column: 19, scope: !541)
!544 = !DILocation(line: 103, column: 5, scope: !538)
!545 = !DILocation(line: 105, column: 24, scope: !546)
!546 = distinct !DILexicalBlock(scope: !541, file: !3, line: 104, column: 5)
!547 = !DILocation(line: 105, column: 30, scope: !546)
!548 = !DILocation(line: 105, column: 9, scope: !546)
!549 = !DILocation(line: 106, column: 5, scope: !546)
!550 = !DILocation(line: 103, column: 31, scope: !541)
!551 = !DILocation(line: 103, column: 5, scope: !541)
!552 = distinct !{!552, !544, !553, !270}
!553 = !DILocation(line: 106, column: 5, scope: !538)
!554 = !DILocation(line: 107, column: 5, scope: !527)
!555 = !DILocation(line: 108, column: 1, scope: !527)
!556 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !557, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DISubroutineType(types: !558)
!558 = !{!68, !530, !68, !42}
!559 = !DILocalVariable(name: "bytes", arg: 1, scope: !556, file: !3, line: 113, type: !530)
!560 = !DILocation(line: 113, column: 39, scope: !556)
!561 = !DILocalVariable(name: "numBytes", arg: 2, scope: !556, file: !3, line: 113, type: !68)
!562 = !DILocation(line: 113, column: 53, scope: !556)
!563 = !DILocalVariable(name: "hex", arg: 3, scope: !556, file: !3, line: 113, type: !42)
!564 = !DILocation(line: 113, column: 71, scope: !556)
!565 = !DILocalVariable(name: "numWritten", scope: !556, file: !3, line: 115, type: !68)
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
!576 = !DILocalVariable(name: "byte", scope: !577, file: !3, line: 123, type: !23)
!577 = distinct !DILexicalBlock(scope: !556, file: !3, line: 122, column: 5)
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
!589 = distinct !{!589, !567, !590, !270}
!590 = !DILocation(line: 127, column: 5, scope: !556)
!591 = !DILocation(line: 129, column: 12, scope: !556)
!592 = !DILocation(line: 129, column: 5, scope: !556)
!593 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !594, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DISubroutineType(types: !595)
!595 = !{!68, !530, !68, !392}
!596 = !DILocalVariable(name: "bytes", arg: 1, scope: !593, file: !3, line: 135, type: !530)
!597 = !DILocation(line: 135, column: 41, scope: !593)
!598 = !DILocalVariable(name: "numBytes", arg: 2, scope: !593, file: !3, line: 135, type: !68)
!599 = !DILocation(line: 135, column: 55, scope: !593)
!600 = !DILocalVariable(name: "hex", arg: 3, scope: !593, file: !3, line: 135, type: !392)
!601 = !DILocation(line: 135, column: 76, scope: !593)
!602 = !DILocalVariable(name: "numWritten", scope: !593, file: !3, line: 137, type: !68)
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
!620 = !DILocalVariable(name: "byte", scope: !621, file: !3, line: 145, type: !23)
!621 = distinct !DILexicalBlock(scope: !593, file: !3, line: 144, column: 5)
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
!633 = distinct !{!633, !604, !634, !270}
!634 = !DILocation(line: 149, column: 5, scope: !593)
!635 = !DILocation(line: 151, column: 12, scope: !593)
!636 = !DILocation(line: 151, column: 5, scope: !593)
!637 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !638, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DISubroutineType(types: !639)
!639 = !{!23}
!640 = !DILocation(line: 158, column: 5, scope: !637)
!641 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !638, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DILocation(line: 163, column: 5, scope: !641)
!643 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !638, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DILocation(line: 168, column: 13, scope: !643)
!645 = !DILocation(line: 168, column: 20, scope: !643)
!646 = !DILocation(line: 168, column: 5, scope: !643)
!647 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DILocation(line: 187, column: 16, scope: !647)
!649 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 188, column: 16, scope: !649)
!651 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 189, column: 16, scope: !651)
!653 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 190, column: 16, scope: !653)
!655 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!656 = !DILocation(line: 191, column: 16, scope: !655)
!657 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 192, column: 16, scope: !657)
!659 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 193, column: 16, scope: !659)
!661 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 194, column: 16, scope: !661)
!663 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 195, column: 16, scope: !663)
!665 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 198, column: 15, scope: !665)
!667 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 199, column: 15, scope: !667)
!669 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 200, column: 15, scope: !669)
!671 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 201, column: 15, scope: !671)
!673 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 202, column: 15, scope: !673)
!675 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 203, column: 15, scope: !675)
!677 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!678 = !DILocation(line: 204, column: 15, scope: !677)
!679 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!680 = !DILocation(line: 205, column: 15, scope: !679)
!681 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DILocation(line: 206, column: 15, scope: !681)
