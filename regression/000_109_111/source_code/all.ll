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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_65_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !59, metadata !DIExpression()), !dbg !63
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_file_65b_badSink, void (i8*)** %funcPtr, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !64, metadata !DIExpression()), !dbg !68
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !68
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !68
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !69
  store i8* %arraydecay, i8** %data, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !71, metadata !DIExpression()), !dbg !76
  %1 = load i8*, i8** %data, align 8, !dbg !77
  %call = call i64 @strlen(i8* %1) #7, !dbg !78
  store i64 %call, i64* %dataLen, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !79, metadata !DIExpression()), !dbg !135
  %2 = load i64, i64* %dataLen, align 8, !dbg !136
  %sub = sub i64 100, %2, !dbg !138
  %cmp = icmp ugt i64 %sub, 1, !dbg !139
  br i1 %cmp, label %if.then, label %if.end11, !dbg !140

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !141
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !143
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !144
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !146
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !147

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !148
  %5 = load i64, i64* %dataLen, align 8, !dbg !151
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !152
  %6 = load i64, i64* %dataLen, align 8, !dbg !153
  %sub4 = sub i64 100, %6, !dbg !154
  %conv = trunc i64 %sub4 to i32, !dbg !155
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !156
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !157
  %cmp6 = icmp eq i8* %call5, null, !dbg !158
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !159

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !160
  %8 = load i8*, i8** %data, align 8, !dbg !162
  %9 = load i64, i64* %dataLen, align 8, !dbg !163
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !162
  store i8 0, i8* %arrayidx, align 1, !dbg !164
  br label %if.end, !dbg !165

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !166
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !167
  br label %if.end10, !dbg !168

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !169

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !170
  %12 = load i8*, i8** %data, align 8, !dbg !171
  call void %11(i8* %12), !dbg !170
  ret void, !dbg !172
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
define dso_local void @goodG2B() #0 !dbg !173 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !176, metadata !DIExpression()), !dbg !177
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_file_65b_goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !178, metadata !DIExpression()), !dbg !179
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !179
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !179
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !180
  store i8* %arraydecay, i8** %data, align 8, !dbg !181
  %1 = load i8*, i8** %data, align 8, !dbg !182
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !183
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !184
  %3 = load i8*, i8** %data, align 8, !dbg !185
  call void %2(i8* %3), !dbg !184
  ret void, !dbg !186
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !187 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !190, metadata !DIExpression()), !dbg !191
  store void (i8*)* @CWE606_Unchecked_Loop_Condition__char_file_65b_goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !191
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
  %11 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !237
  %12 = load i8*, i8** %data, align 8, !dbg !238
  call void %11(i8* %12), !dbg !237
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_65_good() #0 !dbg !240 {
entry:
  call void @goodG2B(), !dbg !241
  call void @goodB2G(), !dbg !242
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_65b_badSink(i8* %data) #0 !dbg !244 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32* %i, metadata !247, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %n, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !252, metadata !DIExpression()), !dbg !253
  %0 = load i8*, i8** %data.addr, align 8, !dbg !254
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !256
  %cmp = icmp eq i32 %call, 1, !dbg !257
  br i1 %cmp, label %if.then, label %if.end, !dbg !258

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !259
  store i32 0, i32* %i, align 4, !dbg !261
  br label %for.cond, !dbg !263

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !264
  %2 = load i32, i32* %n, align 4, !dbg !266
  %cmp1 = icmp slt i32 %1, %2, !dbg !267
  br i1 %cmp1, label %for.body, label %for.end, !dbg !268

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !269
  %inc = add nsw i32 %3, 1, !dbg !269
  store i32 %inc, i32* %intVariable, align 4, !dbg !269
  br label %for.inc, !dbg !271

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !272
  %inc2 = add nsw i32 %4, 1, !dbg !272
  store i32 %inc2, i32* %i, align 4, !dbg !272
  br label %for.cond, !dbg !273, !llvm.loop !274

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !277
  call void @printIntLine(i32 %5), !dbg !278
  br label %if.end, !dbg !279

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !280
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_65b_goodG2BSink(i8* %data) #0 !dbg !281 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata i32* %i, metadata !284, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata i32* %n, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load i8*, i8** %data.addr, align 8, !dbg !291
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !293
  %cmp = icmp eq i32 %call, 1, !dbg !294
  br i1 %cmp, label %if.then, label %if.end, !dbg !295

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !296
  store i32 0, i32* %i, align 4, !dbg !298
  br label %for.cond, !dbg !300

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !301
  %2 = load i32, i32* %n, align 4, !dbg !303
  %cmp1 = icmp slt i32 %1, %2, !dbg !304
  br i1 %cmp1, label %for.body, label %for.end, !dbg !305

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !306
  %inc = add nsw i32 %3, 1, !dbg !306
  store i32 %inc, i32* %intVariable, align 4, !dbg !306
  br label %for.inc, !dbg !308

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !309
  %inc2 = add nsw i32 %4, 1, !dbg !309
  store i32 %inc2, i32* %i, align 4, !dbg !309
  br label %for.cond, !dbg !310, !llvm.loop !311

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !313
  call void @printIntLine(i32 %5), !dbg !314
  br label %if.end, !dbg !315

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_65b_goodB2GSink(i8* %data) #0 !dbg !317 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !318, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.declare(metadata i32* %i, metadata !320, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata i32* %n, metadata !323, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !325, metadata !DIExpression()), !dbg !326
  %0 = load i8*, i8** %data.addr, align 8, !dbg !327
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !329
  %cmp = icmp eq i32 %call, 1, !dbg !330
  br i1 %cmp, label %if.then, label %if.end5, !dbg !331

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !332
  %cmp1 = icmp slt i32 %1, 10000, !dbg !335
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !336

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !337
  store i32 0, i32* %i, align 4, !dbg !339
  br label %for.cond, !dbg !341

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !342
  %3 = load i32, i32* %n, align 4, !dbg !344
  %cmp3 = icmp slt i32 %2, %3, !dbg !345
  br i1 %cmp3, label %for.body, label %for.end, !dbg !346

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !347
  %inc = add nsw i32 %4, 1, !dbg !347
  store i32 %inc, i32* %intVariable, align 4, !dbg !347
  br label %for.inc, !dbg !349

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !350
  %inc4 = add nsw i32 %5, 1, !dbg !350
  store i32 %inc4, i32* %i, align 4, !dbg !350
  br label %for.cond, !dbg !351, !llvm.loop !352

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !354
  call void @printIntLine(i32 %6), !dbg !355
  br label %if.end, !dbg !356

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !357

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !359 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !360, metadata !DIExpression()), !dbg !361
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)), !dbg !362
  %0 = load i8*, i8** %line.addr, align 8, !dbg !363
  %cmp = icmp ne i8* %0, null, !dbg !365
  br i1 %cmp, label %if.then, label %if.end, !dbg !366

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !367
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !369
  br label %if.end, !dbg !370

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.13, i64 0, i64 0)), !dbg !371
  ret void, !dbg !372
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !373 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i8*, i8** %line.addr, align 8, !dbg !376
  %cmp = icmp ne i8* %0, null, !dbg !378
  br i1 %cmp, label %if.then, label %if.end, !dbg !379

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !380
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !382
  br label %if.end, !dbg !383

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !384
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !385 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = load i32*, i32** %line.addr, align 8, !dbg !392
  %cmp = icmp ne i32* %0, null, !dbg !394
  br i1 %cmp, label %if.then, label %if.end, !dbg !395

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !396
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.14, i64 0, i64 0), i32* %1), !dbg !398
  br label %if.end, !dbg !399

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !400
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !401 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !406
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.17, i64 0, i64 0), i32 %0), !dbg !407
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !409 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !413, metadata !DIExpression()), !dbg !414
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !415
  %conv = sext i16 %0 to i32, !dbg !415
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !416
  ret void, !dbg !417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !418 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !424
  %conv = fpext float %0 to double, !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !427 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !435 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !443
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !444
  ret void, !dbg !445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !446 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !451
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !452
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !454 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !457, metadata !DIExpression()), !dbg !458
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !459
  %conv = sext i8 %0 to i32, !dbg !459
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !460
  ret void, !dbg !461
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !462 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !465, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !467, metadata !DIExpression()), !dbg !471
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !472
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !473
  store i32 %0, i32* %arrayidx, align 4, !dbg !474
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !475
  store i32 0, i32* %arrayidx1, align 4, !dbg !476
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !477
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !478
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !480 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !483, metadata !DIExpression()), !dbg !484
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !485
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11.18, i64 0, i64 0), i32 %0), !dbg !486
  ret void, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !488 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !491, metadata !DIExpression()), !dbg !492
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !493
  %conv = zext i8 %0 to i32, !dbg !493
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !494
  ret void, !dbg !495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !496 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !500, metadata !DIExpression()), !dbg !501
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !502
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !503
  ret void, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !505 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !515, metadata !DIExpression()), !dbg !516
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !517
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !518
  %1 = load i32, i32* %intOne, align 4, !dbg !518
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !519
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !520
  %3 = load i32, i32* %intTwo, align 4, !dbg !520
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !521
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !523 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !527, metadata !DIExpression()), !dbg !528
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !529, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.declare(metadata i64* %i, metadata !531, metadata !DIExpression()), !dbg !532
  store i64 0, i64* %i, align 8, !dbg !533
  br label %for.cond, !dbg !535

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !536
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !538
  %cmp = icmp ult i64 %0, %1, !dbg !539
  br i1 %cmp, label %for.body, label %for.end, !dbg !540

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !541
  %3 = load i64, i64* %i, align 8, !dbg !543
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !541
  %4 = load i8, i8* %arrayidx, align 1, !dbg !541
  %conv = zext i8 %4 to i32, !dbg !541
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !544
  br label %for.inc, !dbg !545

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !546
  %inc = add i64 %5, 1, !dbg !546
  store i64 %inc, i64* %i, align 8, !dbg !546
  br label %for.cond, !dbg !547, !llvm.loop !548

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !550
  ret void, !dbg !551
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !552 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !555, metadata !DIExpression()), !dbg !556
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !557, metadata !DIExpression()), !dbg !558
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !559, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !561, metadata !DIExpression()), !dbg !562
  store i64 0, i64* %numWritten, align 8, !dbg !562
  br label %while.cond, !dbg !563

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !564
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !565
  %cmp = icmp ult i64 %0, %1, !dbg !566
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !567

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !568
  %2 = load i16*, i16** %call, align 8, !dbg !568
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !568
  %4 = load i64, i64* %numWritten, align 8, !dbg !568
  %mul = mul i64 2, %4, !dbg !568
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !568
  %5 = load i8, i8* %arrayidx, align 1, !dbg !568
  %conv = sext i8 %5 to i32, !dbg !568
  %idxprom = sext i32 %conv to i64, !dbg !568
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !568
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !568
  %conv2 = zext i16 %6 to i32, !dbg !568
  %and = and i32 %conv2, 4096, !dbg !568
  %tobool = icmp ne i32 %and, 0, !dbg !568
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !569

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !570
  %7 = load i16*, i16** %call3, align 8, !dbg !570
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !570
  %9 = load i64, i64* %numWritten, align 8, !dbg !570
  %mul4 = mul i64 2, %9, !dbg !570
  %add = add i64 %mul4, 1, !dbg !570
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !570
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !570
  %conv6 = sext i8 %10 to i32, !dbg !570
  %idxprom7 = sext i32 %conv6 to i64, !dbg !570
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !570
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !570
  %conv9 = zext i16 %11 to i32, !dbg !570
  %and10 = and i32 %conv9, 4096, !dbg !570
  %tobool11 = icmp ne i32 %and10, 0, !dbg !569
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !571
  br i1 %12, label %while.body, label %while.end, !dbg !563

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !572, metadata !DIExpression()), !dbg !574
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !575
  %14 = load i64, i64* %numWritten, align 8, !dbg !576
  %mul12 = mul i64 2, %14, !dbg !577
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !575
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !578
  %15 = load i32, i32* %byte, align 4, !dbg !579
  %conv15 = trunc i32 %15 to i8, !dbg !580
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !581
  %17 = load i64, i64* %numWritten, align 8, !dbg !582
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !581
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !583
  %18 = load i64, i64* %numWritten, align 8, !dbg !584
  %inc = add i64 %18, 1, !dbg !584
  store i64 %inc, i64* %numWritten, align 8, !dbg !584
  br label %while.cond, !dbg !563, !llvm.loop !585

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !587
  ret i64 %19, !dbg !588
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !589 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !592, metadata !DIExpression()), !dbg !593
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !594, metadata !DIExpression()), !dbg !595
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !596, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !598, metadata !DIExpression()), !dbg !599
  store i64 0, i64* %numWritten, align 8, !dbg !599
  br label %while.cond, !dbg !600

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !601
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !602
  %cmp = icmp ult i64 %0, %1, !dbg !603
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !604

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !605
  %3 = load i64, i64* %numWritten, align 8, !dbg !606
  %mul = mul i64 2, %3, !dbg !607
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !605
  %4 = load i32, i32* %arrayidx, align 4, !dbg !605
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !608
  %tobool = icmp ne i32 %call, 0, !dbg !608
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !609

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !610
  %6 = load i64, i64* %numWritten, align 8, !dbg !611
  %mul1 = mul i64 2, %6, !dbg !612
  %add = add i64 %mul1, 1, !dbg !613
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !610
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !610
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !614
  %tobool4 = icmp ne i32 %call3, 0, !dbg !609
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !615
  br i1 %8, label %while.body, label %while.end, !dbg !600

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !616, metadata !DIExpression()), !dbg !618
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !619
  %10 = load i64, i64* %numWritten, align 8, !dbg !620
  %mul5 = mul i64 2, %10, !dbg !621
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !619
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !622
  %11 = load i32, i32* %byte, align 4, !dbg !623
  %conv = trunc i32 %11 to i8, !dbg !624
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !625
  %13 = load i64, i64* %numWritten, align 8, !dbg !626
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !625
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !627
  %14 = load i64, i64* %numWritten, align 8, !dbg !628
  %inc = add i64 %14, 1, !dbg !628
  store i64 %inc, i64* %numWritten, align 8, !dbg !628
  br label %while.cond, !dbg !600, !llvm.loop !629

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !631
  ret i64 %15, !dbg !632
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !633 {
entry:
  ret i32 1, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !637 {
entry:
  ret i32 0, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !639 {
entry:
  %call = call i32 @rand() #8, !dbg !640
  %rem = srem i32 %call, 2, !dbg !641
  ret i32 %rem, !dbg !642
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !645 {
entry:
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !677 {
entry:
  ret void, !dbg !678
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_111/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_65a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_111/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_65b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_111/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_65_bad", scope: !45, file: !45, line: 37, type: !55, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 39, type: !42)
!58 = !DILocation(line: 39, column: 12, scope: !54)
!59 = !DILocalVariable(name: "funcPtr", scope: !54, file: !45, line: 41, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !42}
!63 = !DILocation(line: 41, column: 12, scope: !54)
!64 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 42, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 100)
!68 = !DILocation(line: 42, column: 10, scope: !54)
!69 = !DILocation(line: 43, column: 12, scope: !54)
!70 = !DILocation(line: 43, column: 10, scope: !54)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !45, line: 46, type: !73)
!72 = distinct !DILexicalBlock(scope: !54, file: !45, line: 44, column: 5)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DILocation(line: 46, column: 16, scope: !72)
!77 = !DILocation(line: 46, column: 33, scope: !72)
!78 = !DILocation(line: 46, column: 26, scope: !72)
!79 = !DILocalVariable(name: "pFile", scope: !72, file: !45, line: 47, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !101, !103, !104, !105, !109, !110, !112, !116, !119, !121, !124, !127, !128, !129, !130, !131}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !83, file: !84, line: 51, baseType: !23, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !83, file: !84, line: 54, baseType: !42, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !83, file: !84, line: 55, baseType: !42, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !83, file: !84, line: 56, baseType: !42, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !83, file: !84, line: 57, baseType: !42, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !83, file: !84, line: 58, baseType: !42, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !83, file: !84, line: 59, baseType: !42, size: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !83, file: !84, line: 60, baseType: !42, size: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !83, file: !84, line: 61, baseType: !42, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !83, file: !84, line: 64, baseType: !42, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !83, file: !84, line: 65, baseType: !42, size: 64, offset: 640)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !83, file: !84, line: 66, baseType: !42, size: 64, offset: 704)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !83, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !84, line: 36, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !83, file: !84, line: 70, baseType: !102, size: 64, offset: 832)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !83, file: !84, line: 72, baseType: !23, size: 32, offset: 896)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !83, file: !84, line: 73, baseType: !23, size: 32, offset: 928)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !83, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !107, line: 152, baseType: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!108 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !83, file: !84, line: 77, baseType: !24, size: 16, offset: 1024)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !83, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!111 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !83, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 1)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !83, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !84, line: 43, baseType: null)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !83, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !107, line: 153, baseType: !108)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !83, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !84, line: 37, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !83, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !84, line: 38, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !83, file: !84, line: 93, baseType: !102, size: 64, offset: 1344)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !83, file: !84, line: 94, baseType: !22, size: 64, offset: 1408)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !83, file: !84, line: 95, baseType: !73, size: 64, offset: 1472)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !83, file: !84, line: 96, baseType: !23, size: 32, offset: 1536)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !83, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 20)
!135 = !DILocation(line: 47, column: 16, scope: !72)
!136 = !DILocation(line: 49, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !72, file: !45, line: 49, column: 13)
!138 = !DILocation(line: 49, column: 16, scope: !137)
!139 = !DILocation(line: 49, column: 25, scope: !137)
!140 = !DILocation(line: 49, column: 13, scope: !72)
!141 = !DILocation(line: 51, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !45, line: 50, column: 9)
!143 = !DILocation(line: 51, column: 19, scope: !142)
!144 = !DILocation(line: 52, column: 17, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !45, line: 52, column: 17)
!146 = !DILocation(line: 52, column: 23, scope: !145)
!147 = !DILocation(line: 52, column: 17, scope: !142)
!148 = !DILocation(line: 55, column: 27, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !45, line: 55, column: 21)
!150 = distinct !DILexicalBlock(scope: !145, file: !45, line: 53, column: 13)
!151 = !DILocation(line: 55, column: 32, scope: !149)
!152 = !DILocation(line: 55, column: 31, scope: !149)
!153 = !DILocation(line: 55, column: 51, scope: !149)
!154 = !DILocation(line: 55, column: 50, scope: !149)
!155 = !DILocation(line: 55, column: 41, scope: !149)
!156 = !DILocation(line: 55, column: 61, scope: !149)
!157 = !DILocation(line: 55, column: 21, scope: !149)
!158 = !DILocation(line: 55, column: 68, scope: !149)
!159 = !DILocation(line: 55, column: 21, scope: !150)
!160 = !DILocation(line: 57, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !149, file: !45, line: 56, column: 17)
!162 = !DILocation(line: 59, column: 21, scope: !161)
!163 = !DILocation(line: 59, column: 26, scope: !161)
!164 = !DILocation(line: 59, column: 35, scope: !161)
!165 = !DILocation(line: 60, column: 17, scope: !161)
!166 = !DILocation(line: 61, column: 24, scope: !150)
!167 = !DILocation(line: 61, column: 17, scope: !150)
!168 = !DILocation(line: 62, column: 13, scope: !150)
!169 = !DILocation(line: 63, column: 9, scope: !142)
!170 = !DILocation(line: 66, column: 5, scope: !54)
!171 = !DILocation(line: 66, column: 13, scope: !54)
!172 = !DILocation(line: 67, column: 1, scope: !54)
!173 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 75, type: !55, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!174 = !DILocalVariable(name: "data", scope: !173, file: !45, line: 77, type: !42)
!175 = !DILocation(line: 77, column: 12, scope: !173)
!176 = !DILocalVariable(name: "funcPtr", scope: !173, file: !45, line: 78, type: !60)
!177 = !DILocation(line: 78, column: 12, scope: !173)
!178 = !DILocalVariable(name: "dataBuffer", scope: !173, file: !45, line: 79, type: !65)
!179 = !DILocation(line: 79, column: 10, scope: !173)
!180 = !DILocation(line: 80, column: 12, scope: !173)
!181 = !DILocation(line: 80, column: 10, scope: !173)
!182 = !DILocation(line: 82, column: 12, scope: !173)
!183 = !DILocation(line: 82, column: 5, scope: !173)
!184 = !DILocation(line: 83, column: 5, scope: !173)
!185 = !DILocation(line: 83, column: 13, scope: !173)
!186 = !DILocation(line: 84, column: 1, scope: !173)
!187 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 88, type: !55, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!188 = !DILocalVariable(name: "data", scope: !187, file: !45, line: 90, type: !42)
!189 = !DILocation(line: 90, column: 12, scope: !187)
!190 = !DILocalVariable(name: "funcPtr", scope: !187, file: !45, line: 91, type: !60)
!191 = !DILocation(line: 91, column: 12, scope: !187)
!192 = !DILocalVariable(name: "dataBuffer", scope: !187, file: !45, line: 92, type: !65)
!193 = !DILocation(line: 92, column: 10, scope: !187)
!194 = !DILocation(line: 93, column: 12, scope: !187)
!195 = !DILocation(line: 93, column: 10, scope: !187)
!196 = !DILocalVariable(name: "dataLen", scope: !197, file: !45, line: 96, type: !73)
!197 = distinct !DILexicalBlock(scope: !187, file: !45, line: 94, column: 5)
!198 = !DILocation(line: 96, column: 16, scope: !197)
!199 = !DILocation(line: 96, column: 33, scope: !197)
!200 = !DILocation(line: 96, column: 26, scope: !197)
!201 = !DILocalVariable(name: "pFile", scope: !197, file: !45, line: 97, type: !80)
!202 = !DILocation(line: 97, column: 16, scope: !197)
!203 = !DILocation(line: 99, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !197, file: !45, line: 99, column: 13)
!205 = !DILocation(line: 99, column: 16, scope: !204)
!206 = !DILocation(line: 99, column: 25, scope: !204)
!207 = !DILocation(line: 99, column: 13, scope: !197)
!208 = !DILocation(line: 101, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !45, line: 100, column: 9)
!210 = !DILocation(line: 101, column: 19, scope: !209)
!211 = !DILocation(line: 102, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !45, line: 102, column: 17)
!213 = !DILocation(line: 102, column: 23, scope: !212)
!214 = !DILocation(line: 102, column: 17, scope: !209)
!215 = !DILocation(line: 105, column: 27, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !45, line: 105, column: 21)
!217 = distinct !DILexicalBlock(scope: !212, file: !45, line: 103, column: 13)
!218 = !DILocation(line: 105, column: 32, scope: !216)
!219 = !DILocation(line: 105, column: 31, scope: !216)
!220 = !DILocation(line: 105, column: 51, scope: !216)
!221 = !DILocation(line: 105, column: 50, scope: !216)
!222 = !DILocation(line: 105, column: 41, scope: !216)
!223 = !DILocation(line: 105, column: 61, scope: !216)
!224 = !DILocation(line: 105, column: 21, scope: !216)
!225 = !DILocation(line: 105, column: 68, scope: !216)
!226 = !DILocation(line: 105, column: 21, scope: !217)
!227 = !DILocation(line: 107, column: 21, scope: !228)
!228 = distinct !DILexicalBlock(scope: !216, file: !45, line: 106, column: 17)
!229 = !DILocation(line: 109, column: 21, scope: !228)
!230 = !DILocation(line: 109, column: 26, scope: !228)
!231 = !DILocation(line: 109, column: 35, scope: !228)
!232 = !DILocation(line: 110, column: 17, scope: !228)
!233 = !DILocation(line: 111, column: 24, scope: !217)
!234 = !DILocation(line: 111, column: 17, scope: !217)
!235 = !DILocation(line: 112, column: 13, scope: !217)
!236 = !DILocation(line: 113, column: 9, scope: !209)
!237 = !DILocation(line: 115, column: 5, scope: !187)
!238 = !DILocation(line: 115, column: 13, scope: !187)
!239 = !DILocation(line: 116, column: 1, scope: !187)
!240 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_65_good", scope: !45, file: !45, line: 118, type: !55, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!241 = !DILocation(line: 120, column: 5, scope: !240)
!242 = !DILocation(line: 121, column: 5, scope: !240)
!243 = !DILocation(line: 122, column: 1, scope: !240)
!244 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_65b_badSink", scope: !49, file: !49, line: 34, type: !61, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!245 = !DILocalVariable(name: "data", arg: 1, scope: !244, file: !49, line: 34, type: !42)
!246 = !DILocation(line: 34, column: 68, scope: !244)
!247 = !DILocalVariable(name: "i", scope: !248, file: !49, line: 37, type: !23)
!248 = distinct !DILexicalBlock(scope: !244, file: !49, line: 36, column: 5)
!249 = !DILocation(line: 37, column: 13, scope: !248)
!250 = !DILocalVariable(name: "n", scope: !248, file: !49, line: 37, type: !23)
!251 = !DILocation(line: 37, column: 16, scope: !248)
!252 = !DILocalVariable(name: "intVariable", scope: !248, file: !49, line: 37, type: !23)
!253 = !DILocation(line: 37, column: 19, scope: !248)
!254 = !DILocation(line: 38, column: 20, scope: !255)
!255 = distinct !DILexicalBlock(scope: !248, file: !49, line: 38, column: 13)
!256 = !DILocation(line: 38, column: 13, scope: !255)
!257 = !DILocation(line: 38, column: 36, scope: !255)
!258 = !DILocation(line: 38, column: 13, scope: !248)
!259 = !DILocation(line: 41, column: 25, scope: !260)
!260 = distinct !DILexicalBlock(scope: !255, file: !49, line: 39, column: 9)
!261 = !DILocation(line: 42, column: 20, scope: !262)
!262 = distinct !DILexicalBlock(scope: !260, file: !49, line: 42, column: 13)
!263 = !DILocation(line: 42, column: 18, scope: !262)
!264 = !DILocation(line: 42, column: 25, scope: !265)
!265 = distinct !DILexicalBlock(scope: !262, file: !49, line: 42, column: 13)
!266 = !DILocation(line: 42, column: 29, scope: !265)
!267 = !DILocation(line: 42, column: 27, scope: !265)
!268 = !DILocation(line: 42, column: 13, scope: !262)
!269 = !DILocation(line: 45, column: 28, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !49, line: 43, column: 13)
!271 = !DILocation(line: 46, column: 13, scope: !270)
!272 = !DILocation(line: 42, column: 33, scope: !265)
!273 = !DILocation(line: 42, column: 13, scope: !265)
!274 = distinct !{!274, !268, !275, !276}
!275 = !DILocation(line: 46, column: 13, scope: !262)
!276 = !{!"llvm.loop.mustprogress"}
!277 = !DILocation(line: 47, column: 26, scope: !260)
!278 = !DILocation(line: 47, column: 13, scope: !260)
!279 = !DILocation(line: 48, column: 9, scope: !260)
!280 = !DILocation(line: 50, column: 1, scope: !244)
!281 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_65b_goodG2BSink", scope: !49, file: !49, line: 57, type: !61, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!282 = !DILocalVariable(name: "data", arg: 1, scope: !281, file: !49, line: 57, type: !42)
!283 = !DILocation(line: 57, column: 72, scope: !281)
!284 = !DILocalVariable(name: "i", scope: !285, file: !49, line: 60, type: !23)
!285 = distinct !DILexicalBlock(scope: !281, file: !49, line: 59, column: 5)
!286 = !DILocation(line: 60, column: 13, scope: !285)
!287 = !DILocalVariable(name: "n", scope: !285, file: !49, line: 60, type: !23)
!288 = !DILocation(line: 60, column: 16, scope: !285)
!289 = !DILocalVariable(name: "intVariable", scope: !285, file: !49, line: 60, type: !23)
!290 = !DILocation(line: 60, column: 19, scope: !285)
!291 = !DILocation(line: 61, column: 20, scope: !292)
!292 = distinct !DILexicalBlock(scope: !285, file: !49, line: 61, column: 13)
!293 = !DILocation(line: 61, column: 13, scope: !292)
!294 = !DILocation(line: 61, column: 36, scope: !292)
!295 = !DILocation(line: 61, column: 13, scope: !285)
!296 = !DILocation(line: 64, column: 25, scope: !297)
!297 = distinct !DILexicalBlock(scope: !292, file: !49, line: 62, column: 9)
!298 = !DILocation(line: 65, column: 20, scope: !299)
!299 = distinct !DILexicalBlock(scope: !297, file: !49, line: 65, column: 13)
!300 = !DILocation(line: 65, column: 18, scope: !299)
!301 = !DILocation(line: 65, column: 25, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !49, line: 65, column: 13)
!303 = !DILocation(line: 65, column: 29, scope: !302)
!304 = !DILocation(line: 65, column: 27, scope: !302)
!305 = !DILocation(line: 65, column: 13, scope: !299)
!306 = !DILocation(line: 68, column: 28, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !49, line: 66, column: 13)
!308 = !DILocation(line: 69, column: 13, scope: !307)
!309 = !DILocation(line: 65, column: 33, scope: !302)
!310 = !DILocation(line: 65, column: 13, scope: !302)
!311 = distinct !{!311, !305, !312, !276}
!312 = !DILocation(line: 69, column: 13, scope: !299)
!313 = !DILocation(line: 70, column: 26, scope: !297)
!314 = !DILocation(line: 70, column: 13, scope: !297)
!315 = !DILocation(line: 71, column: 9, scope: !297)
!316 = !DILocation(line: 73, column: 1, scope: !281)
!317 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_65b_goodB2GSink", scope: !49, file: !49, line: 76, type: !61, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!318 = !DILocalVariable(name: "data", arg: 1, scope: !317, file: !49, line: 76, type: !42)
!319 = !DILocation(line: 76, column: 72, scope: !317)
!320 = !DILocalVariable(name: "i", scope: !321, file: !49, line: 79, type: !23)
!321 = distinct !DILexicalBlock(scope: !317, file: !49, line: 78, column: 5)
!322 = !DILocation(line: 79, column: 13, scope: !321)
!323 = !DILocalVariable(name: "n", scope: !321, file: !49, line: 79, type: !23)
!324 = !DILocation(line: 79, column: 16, scope: !321)
!325 = !DILocalVariable(name: "intVariable", scope: !321, file: !49, line: 79, type: !23)
!326 = !DILocation(line: 79, column: 19, scope: !321)
!327 = !DILocation(line: 80, column: 20, scope: !328)
!328 = distinct !DILexicalBlock(scope: !321, file: !49, line: 80, column: 13)
!329 = !DILocation(line: 80, column: 13, scope: !328)
!330 = !DILocation(line: 80, column: 36, scope: !328)
!331 = !DILocation(line: 80, column: 13, scope: !321)
!332 = !DILocation(line: 83, column: 17, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !49, line: 83, column: 17)
!334 = distinct !DILexicalBlock(scope: !328, file: !49, line: 81, column: 9)
!335 = !DILocation(line: 83, column: 19, scope: !333)
!336 = !DILocation(line: 83, column: 17, scope: !334)
!337 = !DILocation(line: 85, column: 29, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !49, line: 84, column: 13)
!339 = !DILocation(line: 86, column: 24, scope: !340)
!340 = distinct !DILexicalBlock(scope: !338, file: !49, line: 86, column: 17)
!341 = !DILocation(line: 86, column: 22, scope: !340)
!342 = !DILocation(line: 86, column: 29, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !49, line: 86, column: 17)
!344 = !DILocation(line: 86, column: 33, scope: !343)
!345 = !DILocation(line: 86, column: 31, scope: !343)
!346 = !DILocation(line: 86, column: 17, scope: !340)
!347 = !DILocation(line: 89, column: 32, scope: !348)
!348 = distinct !DILexicalBlock(scope: !343, file: !49, line: 87, column: 17)
!349 = !DILocation(line: 90, column: 17, scope: !348)
!350 = !DILocation(line: 86, column: 37, scope: !343)
!351 = !DILocation(line: 86, column: 17, scope: !343)
!352 = distinct !{!352, !346, !353, !276}
!353 = !DILocation(line: 90, column: 17, scope: !340)
!354 = !DILocation(line: 91, column: 30, scope: !338)
!355 = !DILocation(line: 91, column: 17, scope: !338)
!356 = !DILocation(line: 92, column: 13, scope: !338)
!357 = !DILocation(line: 93, column: 9, scope: !334)
!358 = !DILocation(line: 95, column: 1, scope: !317)
!359 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !61, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!360 = !DILocalVariable(name: "line", arg: 1, scope: !359, file: !3, line: 11, type: !42)
!361 = !DILocation(line: 11, column: 25, scope: !359)
!362 = !DILocation(line: 13, column: 1, scope: !359)
!363 = !DILocation(line: 14, column: 8, scope: !364)
!364 = distinct !DILexicalBlock(scope: !359, file: !3, line: 14, column: 8)
!365 = !DILocation(line: 14, column: 13, scope: !364)
!366 = !DILocation(line: 14, column: 8, scope: !359)
!367 = !DILocation(line: 16, column: 24, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !3, line: 15, column: 5)
!369 = !DILocation(line: 16, column: 9, scope: !368)
!370 = !DILocation(line: 17, column: 5, scope: !368)
!371 = !DILocation(line: 18, column: 5, scope: !359)
!372 = !DILocation(line: 19, column: 1, scope: !359)
!373 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !61, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!374 = !DILocalVariable(name: "line", arg: 1, scope: !373, file: !3, line: 20, type: !42)
!375 = !DILocation(line: 20, column: 29, scope: !373)
!376 = !DILocation(line: 22, column: 8, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !3, line: 22, column: 8)
!378 = !DILocation(line: 22, column: 13, scope: !377)
!379 = !DILocation(line: 22, column: 8, scope: !373)
!380 = !DILocation(line: 24, column: 24, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !3, line: 23, column: 5)
!382 = !DILocation(line: 24, column: 9, scope: !381)
!383 = !DILocation(line: 25, column: 5, scope: !381)
!384 = !DILocation(line: 26, column: 1, scope: !373)
!385 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !386, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !74, line: 74, baseType: !23)
!390 = !DILocalVariable(name: "line", arg: 1, scope: !385, file: !3, line: 27, type: !388)
!391 = !DILocation(line: 27, column: 29, scope: !385)
!392 = !DILocation(line: 29, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !385, file: !3, line: 29, column: 8)
!394 = !DILocation(line: 29, column: 13, scope: !393)
!395 = !DILocation(line: 29, column: 8, scope: !385)
!396 = !DILocation(line: 31, column: 27, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !3, line: 30, column: 5)
!398 = !DILocation(line: 31, column: 9, scope: !397)
!399 = !DILocation(line: 32, column: 5, scope: !397)
!400 = !DILocation(line: 33, column: 1, scope: !385)
!401 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !402, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !23}
!404 = !DILocalVariable(name: "intNumber", arg: 1, scope: !401, file: !3, line: 35, type: !23)
!405 = !DILocation(line: 35, column: 24, scope: !401)
!406 = !DILocation(line: 37, column: 20, scope: !401)
!407 = !DILocation(line: 37, column: 5, scope: !401)
!408 = !DILocation(line: 38, column: 1, scope: !401)
!409 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !410, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !412}
!412 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!413 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !409, file: !3, line: 40, type: !412)
!414 = !DILocation(line: 40, column: 28, scope: !409)
!415 = !DILocation(line: 42, column: 21, scope: !409)
!416 = !DILocation(line: 42, column: 5, scope: !409)
!417 = !DILocation(line: 43, column: 1, scope: !409)
!418 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !419, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !421}
!421 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!422 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !418, file: !3, line: 45, type: !421)
!423 = !DILocation(line: 45, column: 28, scope: !418)
!424 = !DILocation(line: 47, column: 20, scope: !418)
!425 = !DILocation(line: 47, column: 5, scope: !418)
!426 = !DILocation(line: 48, column: 1, scope: !418)
!427 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !428, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !108}
!430 = !DILocalVariable(name: "longNumber", arg: 1, scope: !427, file: !3, line: 50, type: !108)
!431 = !DILocation(line: 50, column: 26, scope: !427)
!432 = !DILocation(line: 52, column: 21, scope: !427)
!433 = !DILocation(line: 52, column: 5, scope: !427)
!434 = !DILocation(line: 53, column: 1, scope: !427)
!435 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !436, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !438}
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !439, line: 27, baseType: !440)
!439 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !107, line: 44, baseType: !108)
!441 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !435, file: !3, line: 55, type: !438)
!442 = !DILocation(line: 55, column: 33, scope: !435)
!443 = !DILocation(line: 57, column: 29, scope: !435)
!444 = !DILocation(line: 57, column: 5, scope: !435)
!445 = !DILocation(line: 58, column: 1, scope: !435)
!446 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !447, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !73}
!449 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !446, file: !3, line: 60, type: !73)
!450 = !DILocation(line: 60, column: 29, scope: !446)
!451 = !DILocation(line: 62, column: 21, scope: !446)
!452 = !DILocation(line: 62, column: 5, scope: !446)
!453 = !DILocation(line: 63, column: 1, scope: !446)
!454 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !455, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !43}
!457 = !DILocalVariable(name: "charHex", arg: 1, scope: !454, file: !3, line: 65, type: !43)
!458 = !DILocation(line: 65, column: 29, scope: !454)
!459 = !DILocation(line: 67, column: 22, scope: !454)
!460 = !DILocation(line: 67, column: 5, scope: !454)
!461 = !DILocation(line: 68, column: 1, scope: !454)
!462 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !463, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !389}
!465 = !DILocalVariable(name: "wideChar", arg: 1, scope: !462, file: !3, line: 70, type: !389)
!466 = !DILocation(line: 70, column: 29, scope: !462)
!467 = !DILocalVariable(name: "s", scope: !462, file: !3, line: 74, type: !468)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 64, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 2)
!471 = !DILocation(line: 74, column: 13, scope: !462)
!472 = !DILocation(line: 75, column: 16, scope: !462)
!473 = !DILocation(line: 75, column: 9, scope: !462)
!474 = !DILocation(line: 75, column: 14, scope: !462)
!475 = !DILocation(line: 76, column: 9, scope: !462)
!476 = !DILocation(line: 76, column: 14, scope: !462)
!477 = !DILocation(line: 77, column: 21, scope: !462)
!478 = !DILocation(line: 77, column: 5, scope: !462)
!479 = !DILocation(line: 78, column: 1, scope: !462)
!480 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !481, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !7}
!483 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !480, file: !3, line: 80, type: !7)
!484 = !DILocation(line: 80, column: 33, scope: !480)
!485 = !DILocation(line: 82, column: 20, scope: !480)
!486 = !DILocation(line: 82, column: 5, scope: !480)
!487 = !DILocation(line: 83, column: 1, scope: !480)
!488 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !489, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !25}
!491 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !488, file: !3, line: 85, type: !25)
!492 = !DILocation(line: 85, column: 45, scope: !488)
!493 = !DILocation(line: 87, column: 22, scope: !488)
!494 = !DILocation(line: 87, column: 5, scope: !488)
!495 = !DILocation(line: 88, column: 1, scope: !488)
!496 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !497, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !499}
!499 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!500 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !496, file: !3, line: 90, type: !499)
!501 = !DILocation(line: 90, column: 29, scope: !496)
!502 = !DILocation(line: 92, column: 20, scope: !496)
!503 = !DILocation(line: 92, column: 5, scope: !496)
!504 = !DILocation(line: 93, column: 1, scope: !496)
!505 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !506, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !510, line: 100, baseType: !511)
!510 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_111/source_code")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !510, line: 96, size: 64, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !511, file: !510, line: 98, baseType: !23, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !511, file: !510, line: 99, baseType: !23, size: 32, offset: 32)
!515 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !505, file: !3, line: 95, type: !508)
!516 = !DILocation(line: 95, column: 40, scope: !505)
!517 = !DILocation(line: 97, column: 26, scope: !505)
!518 = !DILocation(line: 97, column: 47, scope: !505)
!519 = !DILocation(line: 97, column: 55, scope: !505)
!520 = !DILocation(line: 97, column: 76, scope: !505)
!521 = !DILocation(line: 97, column: 5, scope: !505)
!522 = !DILocation(line: 98, column: 1, scope: !505)
!523 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !524, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !526, !73}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!527 = !DILocalVariable(name: "bytes", arg: 1, scope: !523, file: !3, line: 100, type: !526)
!528 = !DILocation(line: 100, column: 38, scope: !523)
!529 = !DILocalVariable(name: "numBytes", arg: 2, scope: !523, file: !3, line: 100, type: !73)
!530 = !DILocation(line: 100, column: 52, scope: !523)
!531 = !DILocalVariable(name: "i", scope: !523, file: !3, line: 102, type: !73)
!532 = !DILocation(line: 102, column: 12, scope: !523)
!533 = !DILocation(line: 103, column: 12, scope: !534)
!534 = distinct !DILexicalBlock(scope: !523, file: !3, line: 103, column: 5)
!535 = !DILocation(line: 103, column: 10, scope: !534)
!536 = !DILocation(line: 103, column: 17, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !3, line: 103, column: 5)
!538 = !DILocation(line: 103, column: 21, scope: !537)
!539 = !DILocation(line: 103, column: 19, scope: !537)
!540 = !DILocation(line: 103, column: 5, scope: !534)
!541 = !DILocation(line: 105, column: 24, scope: !542)
!542 = distinct !DILexicalBlock(scope: !537, file: !3, line: 104, column: 5)
!543 = !DILocation(line: 105, column: 30, scope: !542)
!544 = !DILocation(line: 105, column: 9, scope: !542)
!545 = !DILocation(line: 106, column: 5, scope: !542)
!546 = !DILocation(line: 103, column: 31, scope: !537)
!547 = !DILocation(line: 103, column: 5, scope: !537)
!548 = distinct !{!548, !540, !549, !276}
!549 = !DILocation(line: 106, column: 5, scope: !534)
!550 = !DILocation(line: 107, column: 5, scope: !523)
!551 = !DILocation(line: 108, column: 1, scope: !523)
!552 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !553, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DISubroutineType(types: !554)
!554 = !{!73, !526, !73, !42}
!555 = !DILocalVariable(name: "bytes", arg: 1, scope: !552, file: !3, line: 113, type: !526)
!556 = !DILocation(line: 113, column: 39, scope: !552)
!557 = !DILocalVariable(name: "numBytes", arg: 2, scope: !552, file: !3, line: 113, type: !73)
!558 = !DILocation(line: 113, column: 53, scope: !552)
!559 = !DILocalVariable(name: "hex", arg: 3, scope: !552, file: !3, line: 113, type: !42)
!560 = !DILocation(line: 113, column: 71, scope: !552)
!561 = !DILocalVariable(name: "numWritten", scope: !552, file: !3, line: 115, type: !73)
!562 = !DILocation(line: 115, column: 12, scope: !552)
!563 = !DILocation(line: 121, column: 5, scope: !552)
!564 = !DILocation(line: 121, column: 12, scope: !552)
!565 = !DILocation(line: 121, column: 25, scope: !552)
!566 = !DILocation(line: 121, column: 23, scope: !552)
!567 = !DILocation(line: 121, column: 34, scope: !552)
!568 = !DILocation(line: 121, column: 37, scope: !552)
!569 = !DILocation(line: 121, column: 67, scope: !552)
!570 = !DILocation(line: 121, column: 70, scope: !552)
!571 = !DILocation(line: 0, scope: !552)
!572 = !DILocalVariable(name: "byte", scope: !573, file: !3, line: 123, type: !23)
!573 = distinct !DILexicalBlock(scope: !552, file: !3, line: 122, column: 5)
!574 = !DILocation(line: 123, column: 13, scope: !573)
!575 = !DILocation(line: 124, column: 17, scope: !573)
!576 = !DILocation(line: 124, column: 25, scope: !573)
!577 = !DILocation(line: 124, column: 23, scope: !573)
!578 = !DILocation(line: 124, column: 9, scope: !573)
!579 = !DILocation(line: 125, column: 45, scope: !573)
!580 = !DILocation(line: 125, column: 29, scope: !573)
!581 = !DILocation(line: 125, column: 9, scope: !573)
!582 = !DILocation(line: 125, column: 15, scope: !573)
!583 = !DILocation(line: 125, column: 27, scope: !573)
!584 = !DILocation(line: 126, column: 9, scope: !573)
!585 = distinct !{!585, !563, !586, !276}
!586 = !DILocation(line: 127, column: 5, scope: !552)
!587 = !DILocation(line: 129, column: 12, scope: !552)
!588 = !DILocation(line: 129, column: 5, scope: !552)
!589 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !590, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DISubroutineType(types: !591)
!591 = !{!73, !526, !73, !388}
!592 = !DILocalVariable(name: "bytes", arg: 1, scope: !589, file: !3, line: 135, type: !526)
!593 = !DILocation(line: 135, column: 41, scope: !589)
!594 = !DILocalVariable(name: "numBytes", arg: 2, scope: !589, file: !3, line: 135, type: !73)
!595 = !DILocation(line: 135, column: 55, scope: !589)
!596 = !DILocalVariable(name: "hex", arg: 3, scope: !589, file: !3, line: 135, type: !388)
!597 = !DILocation(line: 135, column: 76, scope: !589)
!598 = !DILocalVariable(name: "numWritten", scope: !589, file: !3, line: 137, type: !73)
!599 = !DILocation(line: 137, column: 12, scope: !589)
!600 = !DILocation(line: 143, column: 5, scope: !589)
!601 = !DILocation(line: 143, column: 12, scope: !589)
!602 = !DILocation(line: 143, column: 25, scope: !589)
!603 = !DILocation(line: 143, column: 23, scope: !589)
!604 = !DILocation(line: 143, column: 34, scope: !589)
!605 = !DILocation(line: 143, column: 47, scope: !589)
!606 = !DILocation(line: 143, column: 55, scope: !589)
!607 = !DILocation(line: 143, column: 53, scope: !589)
!608 = !DILocation(line: 143, column: 37, scope: !589)
!609 = !DILocation(line: 143, column: 68, scope: !589)
!610 = !DILocation(line: 143, column: 81, scope: !589)
!611 = !DILocation(line: 143, column: 89, scope: !589)
!612 = !DILocation(line: 143, column: 87, scope: !589)
!613 = !DILocation(line: 143, column: 100, scope: !589)
!614 = !DILocation(line: 143, column: 71, scope: !589)
!615 = !DILocation(line: 0, scope: !589)
!616 = !DILocalVariable(name: "byte", scope: !617, file: !3, line: 145, type: !23)
!617 = distinct !DILexicalBlock(scope: !589, file: !3, line: 144, column: 5)
!618 = !DILocation(line: 145, column: 13, scope: !617)
!619 = !DILocation(line: 146, column: 18, scope: !617)
!620 = !DILocation(line: 146, column: 26, scope: !617)
!621 = !DILocation(line: 146, column: 24, scope: !617)
!622 = !DILocation(line: 146, column: 9, scope: !617)
!623 = !DILocation(line: 147, column: 45, scope: !617)
!624 = !DILocation(line: 147, column: 29, scope: !617)
!625 = !DILocation(line: 147, column: 9, scope: !617)
!626 = !DILocation(line: 147, column: 15, scope: !617)
!627 = !DILocation(line: 147, column: 27, scope: !617)
!628 = !DILocation(line: 148, column: 9, scope: !617)
!629 = distinct !{!629, !600, !630, !276}
!630 = !DILocation(line: 149, column: 5, scope: !589)
!631 = !DILocation(line: 151, column: 12, scope: !589)
!632 = !DILocation(line: 151, column: 5, scope: !589)
!633 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !634, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DISubroutineType(types: !635)
!635 = !{!23}
!636 = !DILocation(line: 158, column: 5, scope: !633)
!637 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !634, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 163, column: 5, scope: !637)
!639 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !634, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 168, column: 13, scope: !639)
!641 = !DILocation(line: 168, column: 20, scope: !639)
!642 = !DILocation(line: 168, column: 5, scope: !639)
!643 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DILocation(line: 187, column: 16, scope: !643)
!645 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!646 = !DILocation(line: 188, column: 16, scope: !645)
!647 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DILocation(line: 189, column: 16, scope: !647)
!649 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 190, column: 16, scope: !649)
!651 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 191, column: 16, scope: !651)
!653 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 192, column: 16, scope: !653)
!655 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!656 = !DILocation(line: 193, column: 16, scope: !655)
!657 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 194, column: 16, scope: !657)
!659 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 195, column: 16, scope: !659)
!661 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 198, column: 15, scope: !661)
!663 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 199, column: 15, scope: !663)
!665 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 200, column: 15, scope: !665)
!667 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 201, column: 15, scope: !667)
!669 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 202, column: 15, scope: !669)
!671 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 203, column: 15, scope: !671)
!673 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 204, column: 15, scope: !673)
!675 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 205, column: 15, scope: !675)
!677 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!678 = !DILocation(line: 206, column: 15, scope: !677)
