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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_64_bad() #0 !dbg !55 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !64
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !65
  store i8* %arraydecay, i8** %data, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !72
  %1 = load i8*, i8** %data, align 8, !dbg !73
  %call = call i64 @strlen(i8* %1) #7, !dbg !74
  store i64 %call, i64* %dataLen, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !75, metadata !DIExpression()), !dbg !131
  %2 = load i64, i64* %dataLen, align 8, !dbg !132
  %sub = sub i64 100, %2, !dbg !134
  %cmp = icmp ugt i64 %sub, 1, !dbg !135
  br i1 %cmp, label %if.then, label %if.end11, !dbg !136

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !137
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !139
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !140
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !142
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !143

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !144
  %5 = load i64, i64* %dataLen, align 8, !dbg !147
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !148
  %6 = load i64, i64* %dataLen, align 8, !dbg !149
  %sub4 = sub i64 100, %6, !dbg !150
  %conv = trunc i64 %sub4 to i32, !dbg !151
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !152
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !153
  %cmp6 = icmp eq i8* %call5, null, !dbg !154
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !155

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !156
  %8 = load i8*, i8** %data, align 8, !dbg !158
  %9 = load i64, i64* %dataLen, align 8, !dbg !159
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !158
  store i8 0, i8* %arrayidx, align 1, !dbg !160
  br label %if.end, !dbg !161

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !162
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !163
  br label %if.end10, !dbg !164

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !165

if.end11:                                         ; preds = %if.end10, %entry
  %11 = bitcast i8** %data to i8*, !dbg !166
  call void @CWE606_Unchecked_Loop_Condition__char_file_64b_badSink(i8* %11), !dbg !167
  ret void, !dbg !168
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
define dso_local void @goodG2B() #0 !dbg !169 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !172, metadata !DIExpression()), !dbg !173
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !173
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !173
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !174
  store i8* %arraydecay, i8** %data, align 8, !dbg !175
  %1 = load i8*, i8** %data, align 8, !dbg !176
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !177
  %2 = bitcast i8** %data to i8*, !dbg !178
  call void @CWE606_Unchecked_Loop_Condition__char_file_64b_goodG2BSink(i8* %2), !dbg !179
  ret void, !dbg !180
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !181 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !184, metadata !DIExpression()), !dbg !185
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !185
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !185
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !186
  store i8* %arraydecay, i8** %data, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !188, metadata !DIExpression()), !dbg !190
  %1 = load i8*, i8** %data, align 8, !dbg !191
  %call = call i64 @strlen(i8* %1) #7, !dbg !192
  store i64 %call, i64* %dataLen, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !193, metadata !DIExpression()), !dbg !194
  %2 = load i64, i64* %dataLen, align 8, !dbg !195
  %sub = sub i64 100, %2, !dbg !197
  %cmp = icmp ugt i64 %sub, 1, !dbg !198
  br i1 %cmp, label %if.then, label %if.end11, !dbg !199

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !200
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !202
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !203
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !205
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !206

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !207
  %5 = load i64, i64* %dataLen, align 8, !dbg !210
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !211
  %6 = load i64, i64* %dataLen, align 8, !dbg !212
  %sub4 = sub i64 100, %6, !dbg !213
  %conv = trunc i64 %sub4 to i32, !dbg !214
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !215
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !216
  %cmp6 = icmp eq i8* %call5, null, !dbg !217
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !218

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !219
  %8 = load i8*, i8** %data, align 8, !dbg !221
  %9 = load i64, i64* %dataLen, align 8, !dbg !222
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !221
  store i8 0, i8* %arrayidx, align 1, !dbg !223
  br label %if.end, !dbg !224

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !225
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !226
  br label %if.end10, !dbg !227

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !228

if.end11:                                         ; preds = %if.end10, %entry
  %11 = bitcast i8** %data to i8*, !dbg !229
  call void @CWE606_Unchecked_Loop_Condition__char_file_64b_goodB2GSink(i8* %11), !dbg !230
  ret void, !dbg !231
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_64_good() #0 !dbg !232 {
entry:
  call void @goodG2B(), !dbg !233
  call void @goodB2G(), !dbg !234
  ret void, !dbg !235
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_64b_badSink(i8* %dataVoidPtr) #0 !dbg !236 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !239, metadata !DIExpression()), !dbg !240
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !241, metadata !DIExpression()), !dbg !242
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !243
  %1 = bitcast i8* %0 to i8**, !dbg !244
  store i8** %1, i8*** %dataPtr, align 8, !dbg !242
  call void @llvm.dbg.declare(metadata i8** %data, metadata !245, metadata !DIExpression()), !dbg !246
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !247
  %3 = load i8*, i8** %2, align 8, !dbg !248
  store i8* %3, i8** %data, align 8, !dbg !246
  call void @llvm.dbg.declare(metadata i32* %i, metadata !249, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i32* %n, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !254, metadata !DIExpression()), !dbg !255
  %4 = load i8*, i8** %data, align 8, !dbg !256
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !258
  %cmp = icmp eq i32 %call, 1, !dbg !259
  br i1 %cmp, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !261
  store i32 0, i32* %i, align 4, !dbg !263
  br label %for.cond, !dbg !265

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !266
  %6 = load i32, i32* %n, align 4, !dbg !268
  %cmp1 = icmp slt i32 %5, %6, !dbg !269
  br i1 %cmp1, label %for.body, label %for.end, !dbg !270

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !271
  %inc = add nsw i32 %7, 1, !dbg !271
  store i32 %inc, i32* %intVariable, align 4, !dbg !271
  br label %for.inc, !dbg !273

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !274
  %inc2 = add nsw i32 %8, 1, !dbg !274
  store i32 %inc2, i32* %i, align 4, !dbg !274
  br label %for.cond, !dbg !275, !llvm.loop !276

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !279
  call void @printIntLine(i32 %9), !dbg !280
  br label %if.end, !dbg !281

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !282
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_64b_goodG2BSink(i8* %dataVoidPtr) #0 !dbg !283 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !286, metadata !DIExpression()), !dbg !287
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !288
  %1 = bitcast i8* %0 to i8**, !dbg !289
  store i8** %1, i8*** %dataPtr, align 8, !dbg !287
  call void @llvm.dbg.declare(metadata i8** %data, metadata !290, metadata !DIExpression()), !dbg !291
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !292
  %3 = load i8*, i8** %2, align 8, !dbg !293
  store i8* %3, i8** %data, align 8, !dbg !291
  call void @llvm.dbg.declare(metadata i32* %i, metadata !294, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata i32* %n, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !299, metadata !DIExpression()), !dbg !300
  %4 = load i8*, i8** %data, align 8, !dbg !301
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !303
  %cmp = icmp eq i32 %call, 1, !dbg !304
  br i1 %cmp, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !306
  store i32 0, i32* %i, align 4, !dbg !308
  br label %for.cond, !dbg !310

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !311
  %6 = load i32, i32* %n, align 4, !dbg !313
  %cmp1 = icmp slt i32 %5, %6, !dbg !314
  br i1 %cmp1, label %for.body, label %for.end, !dbg !315

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !316
  %inc = add nsw i32 %7, 1, !dbg !316
  store i32 %inc, i32* %intVariable, align 4, !dbg !316
  br label %for.inc, !dbg !318

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !319
  %inc2 = add nsw i32 %8, 1, !dbg !319
  store i32 %inc2, i32* %i, align 4, !dbg !319
  br label %for.cond, !dbg !320, !llvm.loop !321

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !323
  call void @printIntLine(i32 %9), !dbg !324
  br label %if.end, !dbg !325

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !326
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_64b_goodB2GSink(i8* %dataVoidPtr) #0 !dbg !327 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !332
  %1 = bitcast i8* %0 to i8**, !dbg !333
  store i8** %1, i8*** %dataPtr, align 8, !dbg !331
  call void @llvm.dbg.declare(metadata i8** %data, metadata !334, metadata !DIExpression()), !dbg !335
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !336
  %3 = load i8*, i8** %2, align 8, !dbg !337
  store i8* %3, i8** %data, align 8, !dbg !335
  call void @llvm.dbg.declare(metadata i32* %i, metadata !338, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.declare(metadata i32* %n, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !343, metadata !DIExpression()), !dbg !344
  %4 = load i8*, i8** %data, align 8, !dbg !345
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !347
  %cmp = icmp eq i32 %call, 1, !dbg !348
  br i1 %cmp, label %if.then, label %if.end5, !dbg !349

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %n, align 4, !dbg !350
  %cmp1 = icmp slt i32 %5, 10000, !dbg !353
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !354

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !355
  store i32 0, i32* %i, align 4, !dbg !357
  br label %for.cond, !dbg !359

for.cond:                                         ; preds = %for.inc, %if.then2
  %6 = load i32, i32* %i, align 4, !dbg !360
  %7 = load i32, i32* %n, align 4, !dbg !362
  %cmp3 = icmp slt i32 %6, %7, !dbg !363
  br i1 %cmp3, label %for.body, label %for.end, !dbg !364

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !365
  %inc = add nsw i32 %8, 1, !dbg !365
  store i32 %inc, i32* %intVariable, align 4, !dbg !365
  br label %for.inc, !dbg !367

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !368
  %inc4 = add nsw i32 %9, 1, !dbg !368
  store i32 %inc4, i32* %i, align 4, !dbg !368
  br label %for.cond, !dbg !369, !llvm.loop !370

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %intVariable, align 4, !dbg !372
  call void @printIntLine(i32 %10), !dbg !373
  br label %if.end, !dbg !374

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !375

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !377 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)), !dbg !382
  %0 = load i8*, i8** %line.addr, align 8, !dbg !383
  %cmp = icmp ne i8* %0, null, !dbg !385
  br i1 %cmp, label %if.then, label %if.end, !dbg !386

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !387
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !389
  br label %if.end, !dbg !390

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.13, i64 0, i64 0)), !dbg !391
  ret void, !dbg !392
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !393 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load i8*, i8** %line.addr, align 8, !dbg !396
  %cmp = icmp ne i8* %0, null, !dbg !398
  br i1 %cmp, label %if.then, label %if.end, !dbg !399

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !400
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !402
  br label %if.end, !dbg !403

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !405 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load i32*, i32** %line.addr, align 8, !dbg !412
  %cmp = icmp ne i32* %0, null, !dbg !414
  br i1 %cmp, label %if.then, label %if.end, !dbg !415

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !416
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.14, i64 0, i64 0), i32* %1), !dbg !418
  br label %if.end, !dbg !419

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !420
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !421 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !426
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.17, i64 0, i64 0), i32 %0), !dbg !427
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !429 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !433, metadata !DIExpression()), !dbg !434
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !435
  %conv = sext i16 %0 to i32, !dbg !435
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !436
  ret void, !dbg !437
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !438 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !444
  %conv = fpext float %0 to double, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !447 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !452
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !455 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !463
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !464
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !466 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !469, metadata !DIExpression()), !dbg !470
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !471
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !472
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !474 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !477, metadata !DIExpression()), !dbg !478
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !479
  %conv = sext i8 %0 to i32, !dbg !479
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !482 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !485, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !487, metadata !DIExpression()), !dbg !491
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !492
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !493
  store i32 %0, i32* %arrayidx, align 4, !dbg !494
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !495
  store i32 0, i32* %arrayidx1, align 4, !dbg !496
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !497
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !498
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !500 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !503, metadata !DIExpression()), !dbg !504
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !505
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11.18, i64 0, i64 0), i32 %0), !dbg !506
  ret void, !dbg !507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !508 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !511, metadata !DIExpression()), !dbg !512
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !513
  %conv = zext i8 %0 to i32, !dbg !513
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !514
  ret void, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !516 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !520, metadata !DIExpression()), !dbg !521
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !522
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !523
  ret void, !dbg !524
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !525 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !535, metadata !DIExpression()), !dbg !536
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !537
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !538
  %1 = load i32, i32* %intOne, align 4, !dbg !538
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !539
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !540
  %3 = load i32, i32* %intTwo, align 4, !dbg !540
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !541
  ret void, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !543 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !547, metadata !DIExpression()), !dbg !548
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !549, metadata !DIExpression()), !dbg !550
  call void @llvm.dbg.declare(metadata i64* %i, metadata !551, metadata !DIExpression()), !dbg !552
  store i64 0, i64* %i, align 8, !dbg !553
  br label %for.cond, !dbg !555

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !556
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !558
  %cmp = icmp ult i64 %0, %1, !dbg !559
  br i1 %cmp, label %for.body, label %for.end, !dbg !560

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !561
  %3 = load i64, i64* %i, align 8, !dbg !563
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !561
  %4 = load i8, i8* %arrayidx, align 1, !dbg !561
  %conv = zext i8 %4 to i32, !dbg !561
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !564
  br label %for.inc, !dbg !565

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !566
  %inc = add i64 %5, 1, !dbg !566
  store i64 %inc, i64* %i, align 8, !dbg !566
  br label %for.cond, !dbg !567, !llvm.loop !568

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !570
  ret void, !dbg !571
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !572 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !575, metadata !DIExpression()), !dbg !576
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !577, metadata !DIExpression()), !dbg !578
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !579, metadata !DIExpression()), !dbg !580
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !581, metadata !DIExpression()), !dbg !582
  store i64 0, i64* %numWritten, align 8, !dbg !582
  br label %while.cond, !dbg !583

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !584
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !585
  %cmp = icmp ult i64 %0, %1, !dbg !586
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !587

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !588
  %2 = load i16*, i16** %call, align 8, !dbg !588
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !588
  %4 = load i64, i64* %numWritten, align 8, !dbg !588
  %mul = mul i64 2, %4, !dbg !588
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !588
  %5 = load i8, i8* %arrayidx, align 1, !dbg !588
  %conv = sext i8 %5 to i32, !dbg !588
  %idxprom = sext i32 %conv to i64, !dbg !588
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !588
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !588
  %conv2 = zext i16 %6 to i32, !dbg !588
  %and = and i32 %conv2, 4096, !dbg !588
  %tobool = icmp ne i32 %and, 0, !dbg !588
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !589

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !590
  %7 = load i16*, i16** %call3, align 8, !dbg !590
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !590
  %9 = load i64, i64* %numWritten, align 8, !dbg !590
  %mul4 = mul i64 2, %9, !dbg !590
  %add = add i64 %mul4, 1, !dbg !590
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !590
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !590
  %conv6 = sext i8 %10 to i32, !dbg !590
  %idxprom7 = sext i32 %conv6 to i64, !dbg !590
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !590
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !590
  %conv9 = zext i16 %11 to i32, !dbg !590
  %and10 = and i32 %conv9, 4096, !dbg !590
  %tobool11 = icmp ne i32 %and10, 0, !dbg !589
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !591
  br i1 %12, label %while.body, label %while.end, !dbg !583

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !592, metadata !DIExpression()), !dbg !594
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !595
  %14 = load i64, i64* %numWritten, align 8, !dbg !596
  %mul12 = mul i64 2, %14, !dbg !597
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !595
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !598
  %15 = load i32, i32* %byte, align 4, !dbg !599
  %conv15 = trunc i32 %15 to i8, !dbg !600
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !601
  %17 = load i64, i64* %numWritten, align 8, !dbg !602
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !601
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !603
  %18 = load i64, i64* %numWritten, align 8, !dbg !604
  %inc = add i64 %18, 1, !dbg !604
  store i64 %inc, i64* %numWritten, align 8, !dbg !604
  br label %while.cond, !dbg !583, !llvm.loop !605

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !607
  ret i64 %19, !dbg !608
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !609 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !612, metadata !DIExpression()), !dbg !613
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !614, metadata !DIExpression()), !dbg !615
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !616, metadata !DIExpression()), !dbg !617
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !618, metadata !DIExpression()), !dbg !619
  store i64 0, i64* %numWritten, align 8, !dbg !619
  br label %while.cond, !dbg !620

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !621
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !622
  %cmp = icmp ult i64 %0, %1, !dbg !623
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !624

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !625
  %3 = load i64, i64* %numWritten, align 8, !dbg !626
  %mul = mul i64 2, %3, !dbg !627
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !625
  %4 = load i32, i32* %arrayidx, align 4, !dbg !625
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !628
  %tobool = icmp ne i32 %call, 0, !dbg !628
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !629

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !630
  %6 = load i64, i64* %numWritten, align 8, !dbg !631
  %mul1 = mul i64 2, %6, !dbg !632
  %add = add i64 %mul1, 1, !dbg !633
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !630
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !630
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !634
  %tobool4 = icmp ne i32 %call3, 0, !dbg !629
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !635
  br i1 %8, label %while.body, label %while.end, !dbg !620

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !636, metadata !DIExpression()), !dbg !638
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !639
  %10 = load i64, i64* %numWritten, align 8, !dbg !640
  %mul5 = mul i64 2, %10, !dbg !641
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !639
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !642
  %11 = load i32, i32* %byte, align 4, !dbg !643
  %conv = trunc i32 %11 to i8, !dbg !644
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !645
  %13 = load i64, i64* %numWritten, align 8, !dbg !646
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !645
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !647
  %14 = load i64, i64* %numWritten, align 8, !dbg !648
  %inc = add i64 %14, 1, !dbg !648
  store i64 %inc, i64* %numWritten, align 8, !dbg !648
  br label %while.cond, !dbg !620, !llvm.loop !649

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !651
  ret i64 %15, !dbg !652
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !653 {
entry:
  ret i32 1, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !657 {
entry:
  ret i32 0, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !659 {
entry:
  %call = call i32 @rand() #8, !dbg !660
  %rem = srem i32 %call, 2, !dbg !661
  ret i32 %rem, !dbg !662
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !683 {
entry:
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !685 {
entry:
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !687 {
entry:
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !689 {
entry:
  ret void, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !691 {
entry:
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !693 {
entry:
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !695 {
entry:
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !697 {
entry:
  ret void, !dbg !698
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
!llvm.ident = !{!51, !51, !51}
!llvm.module.flags = !{!52, !53, !54}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_110/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_64a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_110/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !50, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_64b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_110/source_code")
!50 = !{!41}
!51 = !{!"clang version 12.0.0"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_64_bad", scope: !45, file: !45, line: 37, type: !56, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !45, line: 39, type: !42)
!59 = !DILocation(line: 39, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !45, line: 40, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 40, column: 10, scope: !55)
!65 = !DILocation(line: 41, column: 12, scope: !55)
!66 = !DILocation(line: 41, column: 10, scope: !55)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 44, type: !69)
!68 = distinct !DILexicalBlock(scope: !55, file: !45, line: 42, column: 5)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 44, column: 16, scope: !68)
!73 = !DILocation(line: 44, column: 33, scope: !68)
!74 = !DILocation(line: 44, column: 26, scope: !68)
!75 = !DILocalVariable(name: "pFile", scope: !68, file: !45, line: 45, type: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !78, line: 7, baseType: !79)
!78 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !80, line: 49, size: 1728, elements: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !97, !99, !100, !101, !105, !106, !108, !112, !115, !117, !120, !123, !124, !125, !126, !127}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !79, file: !80, line: 51, baseType: !23, size: 32)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !79, file: !80, line: 54, baseType: !42, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !79, file: !80, line: 55, baseType: !42, size: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !79, file: !80, line: 56, baseType: !42, size: 64, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !79, file: !80, line: 57, baseType: !42, size: 64, offset: 256)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !79, file: !80, line: 58, baseType: !42, size: 64, offset: 320)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !79, file: !80, line: 59, baseType: !42, size: 64, offset: 384)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !79, file: !80, line: 60, baseType: !42, size: 64, offset: 448)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !79, file: !80, line: 61, baseType: !42, size: 64, offset: 512)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !79, file: !80, line: 64, baseType: !42, size: 64, offset: 576)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !79, file: !80, line: 65, baseType: !42, size: 64, offset: 640)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !79, file: !80, line: 66, baseType: !42, size: 64, offset: 704)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !79, file: !80, line: 68, baseType: !95, size: 64, offset: 768)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !80, line: 36, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !79, file: !80, line: 70, baseType: !98, size: 64, offset: 832)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !79, file: !80, line: 72, baseType: !23, size: 32, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !79, file: !80, line: 73, baseType: !23, size: 32, offset: 928)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !79, file: !80, line: 74, baseType: !102, size: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !103, line: 152, baseType: !104)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!104 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !79, file: !80, line: 77, baseType: !24, size: 16, offset: 1024)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !79, file: !80, line: 78, baseType: !107, size: 8, offset: 1040)
!107 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !79, file: !80, line: 79, baseType: !109, size: 8, offset: 1048)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 1)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !79, file: !80, line: 81, baseType: !113, size: 64, offset: 1088)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !80, line: 43, baseType: null)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !79, file: !80, line: 89, baseType: !116, size: 64, offset: 1152)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !103, line: 153, baseType: !104)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !79, file: !80, line: 91, baseType: !118, size: 64, offset: 1216)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !80, line: 37, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !79, file: !80, line: 92, baseType: !121, size: 64, offset: 1280)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !80, line: 38, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !79, file: !80, line: 93, baseType: !98, size: 64, offset: 1344)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !79, file: !80, line: 94, baseType: !22, size: 64, offset: 1408)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !79, file: !80, line: 95, baseType: !69, size: 64, offset: 1472)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !79, file: !80, line: 96, baseType: !23, size: 32, offset: 1536)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !79, file: !80, line: 98, baseType: !128, size: 160, offset: 1568)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 20)
!131 = !DILocation(line: 45, column: 16, scope: !68)
!132 = !DILocation(line: 47, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !68, file: !45, line: 47, column: 13)
!134 = !DILocation(line: 47, column: 16, scope: !133)
!135 = !DILocation(line: 47, column: 25, scope: !133)
!136 = !DILocation(line: 47, column: 13, scope: !68)
!137 = !DILocation(line: 49, column: 21, scope: !138)
!138 = distinct !DILexicalBlock(scope: !133, file: !45, line: 48, column: 9)
!139 = !DILocation(line: 49, column: 19, scope: !138)
!140 = !DILocation(line: 50, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !45, line: 50, column: 17)
!142 = !DILocation(line: 50, column: 23, scope: !141)
!143 = !DILocation(line: 50, column: 17, scope: !138)
!144 = !DILocation(line: 53, column: 27, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !45, line: 53, column: 21)
!146 = distinct !DILexicalBlock(scope: !141, file: !45, line: 51, column: 13)
!147 = !DILocation(line: 53, column: 32, scope: !145)
!148 = !DILocation(line: 53, column: 31, scope: !145)
!149 = !DILocation(line: 53, column: 51, scope: !145)
!150 = !DILocation(line: 53, column: 50, scope: !145)
!151 = !DILocation(line: 53, column: 41, scope: !145)
!152 = !DILocation(line: 53, column: 61, scope: !145)
!153 = !DILocation(line: 53, column: 21, scope: !145)
!154 = !DILocation(line: 53, column: 68, scope: !145)
!155 = !DILocation(line: 53, column: 21, scope: !146)
!156 = !DILocation(line: 55, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !145, file: !45, line: 54, column: 17)
!158 = !DILocation(line: 57, column: 21, scope: !157)
!159 = !DILocation(line: 57, column: 26, scope: !157)
!160 = !DILocation(line: 57, column: 35, scope: !157)
!161 = !DILocation(line: 58, column: 17, scope: !157)
!162 = !DILocation(line: 59, column: 24, scope: !146)
!163 = !DILocation(line: 59, column: 17, scope: !146)
!164 = !DILocation(line: 60, column: 13, scope: !146)
!165 = !DILocation(line: 61, column: 9, scope: !138)
!166 = !DILocation(line: 63, column: 60, scope: !55)
!167 = !DILocation(line: 63, column: 5, scope: !55)
!168 = !DILocation(line: 64, column: 1, scope: !55)
!169 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 72, type: !56, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!170 = !DILocalVariable(name: "data", scope: !169, file: !45, line: 74, type: !42)
!171 = !DILocation(line: 74, column: 12, scope: !169)
!172 = !DILocalVariable(name: "dataBuffer", scope: !169, file: !45, line: 75, type: !61)
!173 = !DILocation(line: 75, column: 10, scope: !169)
!174 = !DILocation(line: 76, column: 12, scope: !169)
!175 = !DILocation(line: 76, column: 10, scope: !169)
!176 = !DILocation(line: 78, column: 12, scope: !169)
!177 = !DILocation(line: 78, column: 5, scope: !169)
!178 = !DILocation(line: 79, column: 64, scope: !169)
!179 = !DILocation(line: 79, column: 5, scope: !169)
!180 = !DILocation(line: 80, column: 1, scope: !169)
!181 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 84, type: !56, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!182 = !DILocalVariable(name: "data", scope: !181, file: !45, line: 86, type: !42)
!183 = !DILocation(line: 86, column: 12, scope: !181)
!184 = !DILocalVariable(name: "dataBuffer", scope: !181, file: !45, line: 87, type: !61)
!185 = !DILocation(line: 87, column: 10, scope: !181)
!186 = !DILocation(line: 88, column: 12, scope: !181)
!187 = !DILocation(line: 88, column: 10, scope: !181)
!188 = !DILocalVariable(name: "dataLen", scope: !189, file: !45, line: 91, type: !69)
!189 = distinct !DILexicalBlock(scope: !181, file: !45, line: 89, column: 5)
!190 = !DILocation(line: 91, column: 16, scope: !189)
!191 = !DILocation(line: 91, column: 33, scope: !189)
!192 = !DILocation(line: 91, column: 26, scope: !189)
!193 = !DILocalVariable(name: "pFile", scope: !189, file: !45, line: 92, type: !76)
!194 = !DILocation(line: 92, column: 16, scope: !189)
!195 = !DILocation(line: 94, column: 17, scope: !196)
!196 = distinct !DILexicalBlock(scope: !189, file: !45, line: 94, column: 13)
!197 = !DILocation(line: 94, column: 16, scope: !196)
!198 = !DILocation(line: 94, column: 25, scope: !196)
!199 = !DILocation(line: 94, column: 13, scope: !189)
!200 = !DILocation(line: 96, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !45, line: 95, column: 9)
!202 = !DILocation(line: 96, column: 19, scope: !201)
!203 = !DILocation(line: 97, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !45, line: 97, column: 17)
!205 = !DILocation(line: 97, column: 23, scope: !204)
!206 = !DILocation(line: 97, column: 17, scope: !201)
!207 = !DILocation(line: 100, column: 27, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !45, line: 100, column: 21)
!209 = distinct !DILexicalBlock(scope: !204, file: !45, line: 98, column: 13)
!210 = !DILocation(line: 100, column: 32, scope: !208)
!211 = !DILocation(line: 100, column: 31, scope: !208)
!212 = !DILocation(line: 100, column: 51, scope: !208)
!213 = !DILocation(line: 100, column: 50, scope: !208)
!214 = !DILocation(line: 100, column: 41, scope: !208)
!215 = !DILocation(line: 100, column: 61, scope: !208)
!216 = !DILocation(line: 100, column: 21, scope: !208)
!217 = !DILocation(line: 100, column: 68, scope: !208)
!218 = !DILocation(line: 100, column: 21, scope: !209)
!219 = !DILocation(line: 102, column: 21, scope: !220)
!220 = distinct !DILexicalBlock(scope: !208, file: !45, line: 101, column: 17)
!221 = !DILocation(line: 104, column: 21, scope: !220)
!222 = !DILocation(line: 104, column: 26, scope: !220)
!223 = !DILocation(line: 104, column: 35, scope: !220)
!224 = !DILocation(line: 105, column: 17, scope: !220)
!225 = !DILocation(line: 106, column: 24, scope: !209)
!226 = !DILocation(line: 106, column: 17, scope: !209)
!227 = !DILocation(line: 107, column: 13, scope: !209)
!228 = !DILocation(line: 108, column: 9, scope: !201)
!229 = !DILocation(line: 110, column: 64, scope: !181)
!230 = !DILocation(line: 110, column: 5, scope: !181)
!231 = !DILocation(line: 111, column: 1, scope: !181)
!232 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_64_good", scope: !45, file: !45, line: 113, type: !56, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!233 = !DILocation(line: 115, column: 5, scope: !232)
!234 = !DILocation(line: 116, column: 5, scope: !232)
!235 = !DILocation(line: 117, column: 1, scope: !232)
!236 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_64b_badSink", scope: !49, file: !49, line: 34, type: !237, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !22}
!239 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !236, file: !49, line: 34, type: !22)
!240 = !DILocation(line: 34, column: 68, scope: !236)
!241 = !DILocalVariable(name: "dataPtr", scope: !236, file: !49, line: 37, type: !41)
!242 = !DILocation(line: 37, column: 14, scope: !236)
!243 = !DILocation(line: 37, column: 34, scope: !236)
!244 = !DILocation(line: 37, column: 24, scope: !236)
!245 = !DILocalVariable(name: "data", scope: !236, file: !49, line: 39, type: !42)
!246 = !DILocation(line: 39, column: 12, scope: !236)
!247 = !DILocation(line: 39, column: 21, scope: !236)
!248 = !DILocation(line: 39, column: 20, scope: !236)
!249 = !DILocalVariable(name: "i", scope: !250, file: !49, line: 41, type: !23)
!250 = distinct !DILexicalBlock(scope: !236, file: !49, line: 40, column: 5)
!251 = !DILocation(line: 41, column: 13, scope: !250)
!252 = !DILocalVariable(name: "n", scope: !250, file: !49, line: 41, type: !23)
!253 = !DILocation(line: 41, column: 16, scope: !250)
!254 = !DILocalVariable(name: "intVariable", scope: !250, file: !49, line: 41, type: !23)
!255 = !DILocation(line: 41, column: 19, scope: !250)
!256 = !DILocation(line: 42, column: 20, scope: !257)
!257 = distinct !DILexicalBlock(scope: !250, file: !49, line: 42, column: 13)
!258 = !DILocation(line: 42, column: 13, scope: !257)
!259 = !DILocation(line: 42, column: 36, scope: !257)
!260 = !DILocation(line: 42, column: 13, scope: !250)
!261 = !DILocation(line: 45, column: 25, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !49, line: 43, column: 9)
!263 = !DILocation(line: 46, column: 20, scope: !264)
!264 = distinct !DILexicalBlock(scope: !262, file: !49, line: 46, column: 13)
!265 = !DILocation(line: 46, column: 18, scope: !264)
!266 = !DILocation(line: 46, column: 25, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !49, line: 46, column: 13)
!268 = !DILocation(line: 46, column: 29, scope: !267)
!269 = !DILocation(line: 46, column: 27, scope: !267)
!270 = !DILocation(line: 46, column: 13, scope: !264)
!271 = !DILocation(line: 49, column: 28, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !49, line: 47, column: 13)
!273 = !DILocation(line: 50, column: 13, scope: !272)
!274 = !DILocation(line: 46, column: 33, scope: !267)
!275 = !DILocation(line: 46, column: 13, scope: !267)
!276 = distinct !{!276, !270, !277, !278}
!277 = !DILocation(line: 50, column: 13, scope: !264)
!278 = !{!"llvm.loop.mustprogress"}
!279 = !DILocation(line: 51, column: 26, scope: !262)
!280 = !DILocation(line: 51, column: 13, scope: !262)
!281 = !DILocation(line: 52, column: 9, scope: !262)
!282 = !DILocation(line: 54, column: 1, scope: !236)
!283 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_64b_goodG2BSink", scope: !49, file: !49, line: 61, type: !237, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!284 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !283, file: !49, line: 61, type: !22)
!285 = !DILocation(line: 61, column: 72, scope: !283)
!286 = !DILocalVariable(name: "dataPtr", scope: !283, file: !49, line: 64, type: !41)
!287 = !DILocation(line: 64, column: 14, scope: !283)
!288 = !DILocation(line: 64, column: 34, scope: !283)
!289 = !DILocation(line: 64, column: 24, scope: !283)
!290 = !DILocalVariable(name: "data", scope: !283, file: !49, line: 66, type: !42)
!291 = !DILocation(line: 66, column: 12, scope: !283)
!292 = !DILocation(line: 66, column: 21, scope: !283)
!293 = !DILocation(line: 66, column: 20, scope: !283)
!294 = !DILocalVariable(name: "i", scope: !295, file: !49, line: 68, type: !23)
!295 = distinct !DILexicalBlock(scope: !283, file: !49, line: 67, column: 5)
!296 = !DILocation(line: 68, column: 13, scope: !295)
!297 = !DILocalVariable(name: "n", scope: !295, file: !49, line: 68, type: !23)
!298 = !DILocation(line: 68, column: 16, scope: !295)
!299 = !DILocalVariable(name: "intVariable", scope: !295, file: !49, line: 68, type: !23)
!300 = !DILocation(line: 68, column: 19, scope: !295)
!301 = !DILocation(line: 69, column: 20, scope: !302)
!302 = distinct !DILexicalBlock(scope: !295, file: !49, line: 69, column: 13)
!303 = !DILocation(line: 69, column: 13, scope: !302)
!304 = !DILocation(line: 69, column: 36, scope: !302)
!305 = !DILocation(line: 69, column: 13, scope: !295)
!306 = !DILocation(line: 72, column: 25, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !49, line: 70, column: 9)
!308 = !DILocation(line: 73, column: 20, scope: !309)
!309 = distinct !DILexicalBlock(scope: !307, file: !49, line: 73, column: 13)
!310 = !DILocation(line: 73, column: 18, scope: !309)
!311 = !DILocation(line: 73, column: 25, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !49, line: 73, column: 13)
!313 = !DILocation(line: 73, column: 29, scope: !312)
!314 = !DILocation(line: 73, column: 27, scope: !312)
!315 = !DILocation(line: 73, column: 13, scope: !309)
!316 = !DILocation(line: 76, column: 28, scope: !317)
!317 = distinct !DILexicalBlock(scope: !312, file: !49, line: 74, column: 13)
!318 = !DILocation(line: 77, column: 13, scope: !317)
!319 = !DILocation(line: 73, column: 33, scope: !312)
!320 = !DILocation(line: 73, column: 13, scope: !312)
!321 = distinct !{!321, !315, !322, !278}
!322 = !DILocation(line: 77, column: 13, scope: !309)
!323 = !DILocation(line: 78, column: 26, scope: !307)
!324 = !DILocation(line: 78, column: 13, scope: !307)
!325 = !DILocation(line: 79, column: 9, scope: !307)
!326 = !DILocation(line: 81, column: 1, scope: !283)
!327 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_64b_goodB2GSink", scope: !49, file: !49, line: 84, type: !237, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!328 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !327, file: !49, line: 84, type: !22)
!329 = !DILocation(line: 84, column: 72, scope: !327)
!330 = !DILocalVariable(name: "dataPtr", scope: !327, file: !49, line: 87, type: !41)
!331 = !DILocation(line: 87, column: 14, scope: !327)
!332 = !DILocation(line: 87, column: 34, scope: !327)
!333 = !DILocation(line: 87, column: 24, scope: !327)
!334 = !DILocalVariable(name: "data", scope: !327, file: !49, line: 89, type: !42)
!335 = !DILocation(line: 89, column: 12, scope: !327)
!336 = !DILocation(line: 89, column: 21, scope: !327)
!337 = !DILocation(line: 89, column: 20, scope: !327)
!338 = !DILocalVariable(name: "i", scope: !339, file: !49, line: 91, type: !23)
!339 = distinct !DILexicalBlock(scope: !327, file: !49, line: 90, column: 5)
!340 = !DILocation(line: 91, column: 13, scope: !339)
!341 = !DILocalVariable(name: "n", scope: !339, file: !49, line: 91, type: !23)
!342 = !DILocation(line: 91, column: 16, scope: !339)
!343 = !DILocalVariable(name: "intVariable", scope: !339, file: !49, line: 91, type: !23)
!344 = !DILocation(line: 91, column: 19, scope: !339)
!345 = !DILocation(line: 92, column: 20, scope: !346)
!346 = distinct !DILexicalBlock(scope: !339, file: !49, line: 92, column: 13)
!347 = !DILocation(line: 92, column: 13, scope: !346)
!348 = !DILocation(line: 92, column: 36, scope: !346)
!349 = !DILocation(line: 92, column: 13, scope: !339)
!350 = !DILocation(line: 95, column: 17, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !49, line: 95, column: 17)
!352 = distinct !DILexicalBlock(scope: !346, file: !49, line: 93, column: 9)
!353 = !DILocation(line: 95, column: 19, scope: !351)
!354 = !DILocation(line: 95, column: 17, scope: !352)
!355 = !DILocation(line: 97, column: 29, scope: !356)
!356 = distinct !DILexicalBlock(scope: !351, file: !49, line: 96, column: 13)
!357 = !DILocation(line: 98, column: 24, scope: !358)
!358 = distinct !DILexicalBlock(scope: !356, file: !49, line: 98, column: 17)
!359 = !DILocation(line: 98, column: 22, scope: !358)
!360 = !DILocation(line: 98, column: 29, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !49, line: 98, column: 17)
!362 = !DILocation(line: 98, column: 33, scope: !361)
!363 = !DILocation(line: 98, column: 31, scope: !361)
!364 = !DILocation(line: 98, column: 17, scope: !358)
!365 = !DILocation(line: 101, column: 32, scope: !366)
!366 = distinct !DILexicalBlock(scope: !361, file: !49, line: 99, column: 17)
!367 = !DILocation(line: 102, column: 17, scope: !366)
!368 = !DILocation(line: 98, column: 37, scope: !361)
!369 = !DILocation(line: 98, column: 17, scope: !361)
!370 = distinct !{!370, !364, !371, !278}
!371 = !DILocation(line: 102, column: 17, scope: !358)
!372 = !DILocation(line: 103, column: 30, scope: !356)
!373 = !DILocation(line: 103, column: 17, scope: !356)
!374 = !DILocation(line: 104, column: 13, scope: !356)
!375 = !DILocation(line: 105, column: 9, scope: !352)
!376 = !DILocation(line: 107, column: 1, scope: !327)
!377 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !378, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !42}
!380 = !DILocalVariable(name: "line", arg: 1, scope: !377, file: !3, line: 11, type: !42)
!381 = !DILocation(line: 11, column: 25, scope: !377)
!382 = !DILocation(line: 13, column: 1, scope: !377)
!383 = !DILocation(line: 14, column: 8, scope: !384)
!384 = distinct !DILexicalBlock(scope: !377, file: !3, line: 14, column: 8)
!385 = !DILocation(line: 14, column: 13, scope: !384)
!386 = !DILocation(line: 14, column: 8, scope: !377)
!387 = !DILocation(line: 16, column: 24, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !3, line: 15, column: 5)
!389 = !DILocation(line: 16, column: 9, scope: !388)
!390 = !DILocation(line: 17, column: 5, scope: !388)
!391 = !DILocation(line: 18, column: 5, scope: !377)
!392 = !DILocation(line: 19, column: 1, scope: !377)
!393 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !378, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!394 = !DILocalVariable(name: "line", arg: 1, scope: !393, file: !3, line: 20, type: !42)
!395 = !DILocation(line: 20, column: 29, scope: !393)
!396 = !DILocation(line: 22, column: 8, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !3, line: 22, column: 8)
!398 = !DILocation(line: 22, column: 13, scope: !397)
!399 = !DILocation(line: 22, column: 8, scope: !393)
!400 = !DILocation(line: 24, column: 24, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !3, line: 23, column: 5)
!402 = !DILocation(line: 24, column: 9, scope: !401)
!403 = !DILocation(line: 25, column: 5, scope: !401)
!404 = !DILocation(line: 26, column: 1, scope: !393)
!405 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !406, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !408}
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !23)
!410 = !DILocalVariable(name: "line", arg: 1, scope: !405, file: !3, line: 27, type: !408)
!411 = !DILocation(line: 27, column: 29, scope: !405)
!412 = !DILocation(line: 29, column: 8, scope: !413)
!413 = distinct !DILexicalBlock(scope: !405, file: !3, line: 29, column: 8)
!414 = !DILocation(line: 29, column: 13, scope: !413)
!415 = !DILocation(line: 29, column: 8, scope: !405)
!416 = !DILocation(line: 31, column: 27, scope: !417)
!417 = distinct !DILexicalBlock(scope: !413, file: !3, line: 30, column: 5)
!418 = !DILocation(line: 31, column: 9, scope: !417)
!419 = !DILocation(line: 32, column: 5, scope: !417)
!420 = !DILocation(line: 33, column: 1, scope: !405)
!421 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !422, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !23}
!424 = !DILocalVariable(name: "intNumber", arg: 1, scope: !421, file: !3, line: 35, type: !23)
!425 = !DILocation(line: 35, column: 24, scope: !421)
!426 = !DILocation(line: 37, column: 20, scope: !421)
!427 = !DILocation(line: 37, column: 5, scope: !421)
!428 = !DILocation(line: 38, column: 1, scope: !421)
!429 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !430, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !432}
!432 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!433 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !429, file: !3, line: 40, type: !432)
!434 = !DILocation(line: 40, column: 28, scope: !429)
!435 = !DILocation(line: 42, column: 21, scope: !429)
!436 = !DILocation(line: 42, column: 5, scope: !429)
!437 = !DILocation(line: 43, column: 1, scope: !429)
!438 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !439, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !441}
!441 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!442 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !438, file: !3, line: 45, type: !441)
!443 = !DILocation(line: 45, column: 28, scope: !438)
!444 = !DILocation(line: 47, column: 20, scope: !438)
!445 = !DILocation(line: 47, column: 5, scope: !438)
!446 = !DILocation(line: 48, column: 1, scope: !438)
!447 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !448, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !104}
!450 = !DILocalVariable(name: "longNumber", arg: 1, scope: !447, file: !3, line: 50, type: !104)
!451 = !DILocation(line: 50, column: 26, scope: !447)
!452 = !DILocation(line: 52, column: 21, scope: !447)
!453 = !DILocation(line: 52, column: 5, scope: !447)
!454 = !DILocation(line: 53, column: 1, scope: !447)
!455 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !456, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !458}
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !459, line: 27, baseType: !460)
!459 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !103, line: 44, baseType: !104)
!461 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !455, file: !3, line: 55, type: !458)
!462 = !DILocation(line: 55, column: 33, scope: !455)
!463 = !DILocation(line: 57, column: 29, scope: !455)
!464 = !DILocation(line: 57, column: 5, scope: !455)
!465 = !DILocation(line: 58, column: 1, scope: !455)
!466 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !467, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !69}
!469 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !466, file: !3, line: 60, type: !69)
!470 = !DILocation(line: 60, column: 29, scope: !466)
!471 = !DILocation(line: 62, column: 21, scope: !466)
!472 = !DILocation(line: 62, column: 5, scope: !466)
!473 = !DILocation(line: 63, column: 1, scope: !466)
!474 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !475, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !43}
!477 = !DILocalVariable(name: "charHex", arg: 1, scope: !474, file: !3, line: 65, type: !43)
!478 = !DILocation(line: 65, column: 29, scope: !474)
!479 = !DILocation(line: 67, column: 22, scope: !474)
!480 = !DILocation(line: 67, column: 5, scope: !474)
!481 = !DILocation(line: 68, column: 1, scope: !474)
!482 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !483, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !409}
!485 = !DILocalVariable(name: "wideChar", arg: 1, scope: !482, file: !3, line: 70, type: !409)
!486 = !DILocation(line: 70, column: 29, scope: !482)
!487 = !DILocalVariable(name: "s", scope: !482, file: !3, line: 74, type: !488)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, size: 64, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 2)
!491 = !DILocation(line: 74, column: 13, scope: !482)
!492 = !DILocation(line: 75, column: 16, scope: !482)
!493 = !DILocation(line: 75, column: 9, scope: !482)
!494 = !DILocation(line: 75, column: 14, scope: !482)
!495 = !DILocation(line: 76, column: 9, scope: !482)
!496 = !DILocation(line: 76, column: 14, scope: !482)
!497 = !DILocation(line: 77, column: 21, scope: !482)
!498 = !DILocation(line: 77, column: 5, scope: !482)
!499 = !DILocation(line: 78, column: 1, scope: !482)
!500 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !501, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !7}
!503 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !500, file: !3, line: 80, type: !7)
!504 = !DILocation(line: 80, column: 33, scope: !500)
!505 = !DILocation(line: 82, column: 20, scope: !500)
!506 = !DILocation(line: 82, column: 5, scope: !500)
!507 = !DILocation(line: 83, column: 1, scope: !500)
!508 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !509, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !25}
!511 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !508, file: !3, line: 85, type: !25)
!512 = !DILocation(line: 85, column: 45, scope: !508)
!513 = !DILocation(line: 87, column: 22, scope: !508)
!514 = !DILocation(line: 87, column: 5, scope: !508)
!515 = !DILocation(line: 88, column: 1, scope: !508)
!516 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !517, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !519}
!519 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!520 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !516, file: !3, line: 90, type: !519)
!521 = !DILocation(line: 90, column: 29, scope: !516)
!522 = !DILocation(line: 92, column: 20, scope: !516)
!523 = !DILocation(line: 92, column: 5, scope: !516)
!524 = !DILocation(line: 93, column: 1, scope: !516)
!525 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !526, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !530, line: 100, baseType: !531)
!530 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_110/source_code")
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !530, line: 96, size: 64, elements: !532)
!532 = !{!533, !534}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !531, file: !530, line: 98, baseType: !23, size: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !531, file: !530, line: 99, baseType: !23, size: 32, offset: 32)
!535 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !525, file: !3, line: 95, type: !528)
!536 = !DILocation(line: 95, column: 40, scope: !525)
!537 = !DILocation(line: 97, column: 26, scope: !525)
!538 = !DILocation(line: 97, column: 47, scope: !525)
!539 = !DILocation(line: 97, column: 55, scope: !525)
!540 = !DILocation(line: 97, column: 76, scope: !525)
!541 = !DILocation(line: 97, column: 5, scope: !525)
!542 = !DILocation(line: 98, column: 1, scope: !525)
!543 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !544, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DISubroutineType(types: !545)
!545 = !{null, !546, !69}
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!547 = !DILocalVariable(name: "bytes", arg: 1, scope: !543, file: !3, line: 100, type: !546)
!548 = !DILocation(line: 100, column: 38, scope: !543)
!549 = !DILocalVariable(name: "numBytes", arg: 2, scope: !543, file: !3, line: 100, type: !69)
!550 = !DILocation(line: 100, column: 52, scope: !543)
!551 = !DILocalVariable(name: "i", scope: !543, file: !3, line: 102, type: !69)
!552 = !DILocation(line: 102, column: 12, scope: !543)
!553 = !DILocation(line: 103, column: 12, scope: !554)
!554 = distinct !DILexicalBlock(scope: !543, file: !3, line: 103, column: 5)
!555 = !DILocation(line: 103, column: 10, scope: !554)
!556 = !DILocation(line: 103, column: 17, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !3, line: 103, column: 5)
!558 = !DILocation(line: 103, column: 21, scope: !557)
!559 = !DILocation(line: 103, column: 19, scope: !557)
!560 = !DILocation(line: 103, column: 5, scope: !554)
!561 = !DILocation(line: 105, column: 24, scope: !562)
!562 = distinct !DILexicalBlock(scope: !557, file: !3, line: 104, column: 5)
!563 = !DILocation(line: 105, column: 30, scope: !562)
!564 = !DILocation(line: 105, column: 9, scope: !562)
!565 = !DILocation(line: 106, column: 5, scope: !562)
!566 = !DILocation(line: 103, column: 31, scope: !557)
!567 = !DILocation(line: 103, column: 5, scope: !557)
!568 = distinct !{!568, !560, !569, !278}
!569 = !DILocation(line: 106, column: 5, scope: !554)
!570 = !DILocation(line: 107, column: 5, scope: !543)
!571 = !DILocation(line: 108, column: 1, scope: !543)
!572 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !573, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DISubroutineType(types: !574)
!574 = !{!69, !546, !69, !42}
!575 = !DILocalVariable(name: "bytes", arg: 1, scope: !572, file: !3, line: 113, type: !546)
!576 = !DILocation(line: 113, column: 39, scope: !572)
!577 = !DILocalVariable(name: "numBytes", arg: 2, scope: !572, file: !3, line: 113, type: !69)
!578 = !DILocation(line: 113, column: 53, scope: !572)
!579 = !DILocalVariable(name: "hex", arg: 3, scope: !572, file: !3, line: 113, type: !42)
!580 = !DILocation(line: 113, column: 71, scope: !572)
!581 = !DILocalVariable(name: "numWritten", scope: !572, file: !3, line: 115, type: !69)
!582 = !DILocation(line: 115, column: 12, scope: !572)
!583 = !DILocation(line: 121, column: 5, scope: !572)
!584 = !DILocation(line: 121, column: 12, scope: !572)
!585 = !DILocation(line: 121, column: 25, scope: !572)
!586 = !DILocation(line: 121, column: 23, scope: !572)
!587 = !DILocation(line: 121, column: 34, scope: !572)
!588 = !DILocation(line: 121, column: 37, scope: !572)
!589 = !DILocation(line: 121, column: 67, scope: !572)
!590 = !DILocation(line: 121, column: 70, scope: !572)
!591 = !DILocation(line: 0, scope: !572)
!592 = !DILocalVariable(name: "byte", scope: !593, file: !3, line: 123, type: !23)
!593 = distinct !DILexicalBlock(scope: !572, file: !3, line: 122, column: 5)
!594 = !DILocation(line: 123, column: 13, scope: !593)
!595 = !DILocation(line: 124, column: 17, scope: !593)
!596 = !DILocation(line: 124, column: 25, scope: !593)
!597 = !DILocation(line: 124, column: 23, scope: !593)
!598 = !DILocation(line: 124, column: 9, scope: !593)
!599 = !DILocation(line: 125, column: 45, scope: !593)
!600 = !DILocation(line: 125, column: 29, scope: !593)
!601 = !DILocation(line: 125, column: 9, scope: !593)
!602 = !DILocation(line: 125, column: 15, scope: !593)
!603 = !DILocation(line: 125, column: 27, scope: !593)
!604 = !DILocation(line: 126, column: 9, scope: !593)
!605 = distinct !{!605, !583, !606, !278}
!606 = !DILocation(line: 127, column: 5, scope: !572)
!607 = !DILocation(line: 129, column: 12, scope: !572)
!608 = !DILocation(line: 129, column: 5, scope: !572)
!609 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !610, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DISubroutineType(types: !611)
!611 = !{!69, !546, !69, !408}
!612 = !DILocalVariable(name: "bytes", arg: 1, scope: !609, file: !3, line: 135, type: !546)
!613 = !DILocation(line: 135, column: 41, scope: !609)
!614 = !DILocalVariable(name: "numBytes", arg: 2, scope: !609, file: !3, line: 135, type: !69)
!615 = !DILocation(line: 135, column: 55, scope: !609)
!616 = !DILocalVariable(name: "hex", arg: 3, scope: !609, file: !3, line: 135, type: !408)
!617 = !DILocation(line: 135, column: 76, scope: !609)
!618 = !DILocalVariable(name: "numWritten", scope: !609, file: !3, line: 137, type: !69)
!619 = !DILocation(line: 137, column: 12, scope: !609)
!620 = !DILocation(line: 143, column: 5, scope: !609)
!621 = !DILocation(line: 143, column: 12, scope: !609)
!622 = !DILocation(line: 143, column: 25, scope: !609)
!623 = !DILocation(line: 143, column: 23, scope: !609)
!624 = !DILocation(line: 143, column: 34, scope: !609)
!625 = !DILocation(line: 143, column: 47, scope: !609)
!626 = !DILocation(line: 143, column: 55, scope: !609)
!627 = !DILocation(line: 143, column: 53, scope: !609)
!628 = !DILocation(line: 143, column: 37, scope: !609)
!629 = !DILocation(line: 143, column: 68, scope: !609)
!630 = !DILocation(line: 143, column: 81, scope: !609)
!631 = !DILocation(line: 143, column: 89, scope: !609)
!632 = !DILocation(line: 143, column: 87, scope: !609)
!633 = !DILocation(line: 143, column: 100, scope: !609)
!634 = !DILocation(line: 143, column: 71, scope: !609)
!635 = !DILocation(line: 0, scope: !609)
!636 = !DILocalVariable(name: "byte", scope: !637, file: !3, line: 145, type: !23)
!637 = distinct !DILexicalBlock(scope: !609, file: !3, line: 144, column: 5)
!638 = !DILocation(line: 145, column: 13, scope: !637)
!639 = !DILocation(line: 146, column: 18, scope: !637)
!640 = !DILocation(line: 146, column: 26, scope: !637)
!641 = !DILocation(line: 146, column: 24, scope: !637)
!642 = !DILocation(line: 146, column: 9, scope: !637)
!643 = !DILocation(line: 147, column: 45, scope: !637)
!644 = !DILocation(line: 147, column: 29, scope: !637)
!645 = !DILocation(line: 147, column: 9, scope: !637)
!646 = !DILocation(line: 147, column: 15, scope: !637)
!647 = !DILocation(line: 147, column: 27, scope: !637)
!648 = !DILocation(line: 148, column: 9, scope: !637)
!649 = distinct !{!649, !620, !650, !278}
!650 = !DILocation(line: 149, column: 5, scope: !609)
!651 = !DILocation(line: 151, column: 12, scope: !609)
!652 = !DILocation(line: 151, column: 5, scope: !609)
!653 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !654, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DISubroutineType(types: !655)
!655 = !{!23}
!656 = !DILocation(line: 158, column: 5, scope: !653)
!657 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !654, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 163, column: 5, scope: !657)
!659 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !654, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 168, column: 13, scope: !659)
!661 = !DILocation(line: 168, column: 20, scope: !659)
!662 = !DILocation(line: 168, column: 5, scope: !659)
!663 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 187, column: 16, scope: !663)
!665 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 188, column: 16, scope: !665)
!667 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 189, column: 16, scope: !667)
!669 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 190, column: 16, scope: !669)
!671 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 191, column: 16, scope: !671)
!673 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 192, column: 16, scope: !673)
!675 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 193, column: 16, scope: !675)
!677 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!678 = !DILocation(line: 194, column: 16, scope: !677)
!679 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!680 = !DILocation(line: 195, column: 16, scope: !679)
!681 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DILocation(line: 198, column: 15, scope: !681)
!683 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!684 = !DILocation(line: 199, column: 15, scope: !683)
!685 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!686 = !DILocation(line: 200, column: 15, scope: !685)
!687 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!688 = !DILocation(line: 201, column: 15, scope: !687)
!689 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!690 = !DILocation(line: 202, column: 15, scope: !689)
!691 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!692 = !DILocation(line: 203, column: 15, scope: !691)
!693 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!694 = !DILocation(line: 204, column: 15, scope: !693)
!695 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!696 = !DILocation(line: 205, column: 15, scope: !695)
!697 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!698 = !DILocation(line: 206, column: 15, scope: !697)
