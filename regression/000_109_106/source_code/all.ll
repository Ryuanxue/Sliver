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
@.str.21 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.28 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.29 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.30 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.31 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54_bad() #0 !dbg !60 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !65, metadata !DIExpression()), !dbg !69
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !69
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !69
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !70
  store i8* %arraydecay, i8** %data, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !72, metadata !DIExpression()), !dbg !77
  %1 = load i8*, i8** %data, align 8, !dbg !78
  %call = call i64 @strlen(i8* %1) #7, !dbg !79
  store i64 %call, i64* %dataLen, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !80, metadata !DIExpression()), !dbg !136
  %2 = load i64, i64* %dataLen, align 8, !dbg !137
  %sub = sub i64 100, %2, !dbg !139
  %cmp = icmp ugt i64 %sub, 1, !dbg !140
  br i1 %cmp, label %if.then, label %if.end11, !dbg !141

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !142
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !144
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !145
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !147
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !148

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !149
  %5 = load i64, i64* %dataLen, align 8, !dbg !152
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !153
  %6 = load i64, i64* %dataLen, align 8, !dbg !154
  %sub4 = sub i64 100, %6, !dbg !155
  %conv = trunc i64 %sub4 to i32, !dbg !156
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !157
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !158
  %cmp6 = icmp eq i8* %call5, null, !dbg !159
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !160

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !161
  %8 = load i8*, i8** %data, align 8, !dbg !163
  %9 = load i64, i64* %dataLen, align 8, !dbg !164
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !163
  store i8 0, i8* %arrayidx, align 1, !dbg !165
  br label %if.end, !dbg !166

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !167
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !168
  br label %if.end10, !dbg !169

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !170

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !171
  call void @CWE606_Unchecked_Loop_Condition__char_file_54b_badSink(i8* %11), !dbg !172
  ret void, !dbg !173
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
define dso_local void @goodG2B() #0 !dbg !174 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !177, metadata !DIExpression()), !dbg !178
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !178
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !178
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !179
  store i8* %arraydecay, i8** %data, align 8, !dbg !180
  %1 = load i8*, i8** %data, align 8, !dbg !181
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !182
  %2 = load i8*, i8** %data, align 8, !dbg !183
  call void @CWE606_Unchecked_Loop_Condition__char_file_54b_goodG2BSink(i8* %2), !dbg !184
  ret void, !dbg !185
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !186 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !189, metadata !DIExpression()), !dbg !190
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !190
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !190
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !191
  store i8* %arraydecay, i8** %data, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !193, metadata !DIExpression()), !dbg !195
  %1 = load i8*, i8** %data, align 8, !dbg !196
  %call = call i64 @strlen(i8* %1) #7, !dbg !197
  store i64 %call, i64* %dataLen, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !198, metadata !DIExpression()), !dbg !199
  %2 = load i64, i64* %dataLen, align 8, !dbg !200
  %sub = sub i64 100, %2, !dbg !202
  %cmp = icmp ugt i64 %sub, 1, !dbg !203
  br i1 %cmp, label %if.then, label %if.end11, !dbg !204

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !205
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !207
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !208
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !210
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !211

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !212
  %5 = load i64, i64* %dataLen, align 8, !dbg !215
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !216
  %6 = load i64, i64* %dataLen, align 8, !dbg !217
  %sub4 = sub i64 100, %6, !dbg !218
  %conv = trunc i64 %sub4 to i32, !dbg !219
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !220
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !221
  %cmp6 = icmp eq i8* %call5, null, !dbg !222
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !223

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !224
  %8 = load i8*, i8** %data, align 8, !dbg !226
  %9 = load i64, i64* %dataLen, align 8, !dbg !227
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !226
  store i8 0, i8* %arrayidx, align 1, !dbg !228
  br label %if.end, !dbg !229

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !230
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !231
  br label %if.end10, !dbg !232

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !233

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !234
  call void @CWE606_Unchecked_Loop_Condition__char_file_54b_goodB2GSink(i8* %11), !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54_good() #0 !dbg !237 {
entry:
  call void @goodG2B(), !dbg !238
  call void @goodB2G(), !dbg !239
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54b_badSink(i8* %data) #0 !dbg !241 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = load i8*, i8** %data.addr, align 8, !dbg !246
  call void @CWE606_Unchecked_Loop_Condition__char_file_54c_badSink(i8* %0), !dbg !247
  ret void, !dbg !248
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54b_goodG2BSink(i8* %data) #0 !dbg !249 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !250, metadata !DIExpression()), !dbg !251
  %0 = load i8*, i8** %data.addr, align 8, !dbg !252
  call void @CWE606_Unchecked_Loop_Condition__char_file_54c_goodG2BSink(i8* %0), !dbg !253
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54b_goodB2GSink(i8* %data) #0 !dbg !255 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = load i8*, i8** %data.addr, align 8, !dbg !258
  call void @CWE606_Unchecked_Loop_Condition__char_file_54c_goodB2GSink(i8* %0), !dbg !259
  ret void, !dbg !260
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54c_badSink(i8* %data) #0 !dbg !261 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !262, metadata !DIExpression()), !dbg !263
  %0 = load i8*, i8** %data.addr, align 8, !dbg !264
  call void @CWE606_Unchecked_Loop_Condition__char_file_54d_badSink(i8* %0), !dbg !265
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54c_goodG2BSink(i8* %data) #0 !dbg !267 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = load i8*, i8** %data.addr, align 8, !dbg !270
  call void @CWE606_Unchecked_Loop_Condition__char_file_54d_goodG2BSink(i8* %0), !dbg !271
  ret void, !dbg !272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54c_goodB2GSink(i8* %data) #0 !dbg !273 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !274, metadata !DIExpression()), !dbg !275
  %0 = load i8*, i8** %data.addr, align 8, !dbg !276
  call void @CWE606_Unchecked_Loop_Condition__char_file_54d_goodB2GSink(i8* %0), !dbg !277
  ret void, !dbg !278
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54d_badSink(i8* %data) #0 !dbg !279 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load i8*, i8** %data.addr, align 8, !dbg !282
  call void @CWE606_Unchecked_Loop_Condition__char_file_54e_badSink(i8* %0), !dbg !283
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54d_goodG2BSink(i8* %data) #0 !dbg !285 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !286, metadata !DIExpression()), !dbg !287
  %0 = load i8*, i8** %data.addr, align 8, !dbg !288
  call void @CWE606_Unchecked_Loop_Condition__char_file_54e_goodG2BSink(i8* %0), !dbg !289
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54d_goodB2GSink(i8* %data) #0 !dbg !291 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !292, metadata !DIExpression()), !dbg !293
  %0 = load i8*, i8** %data.addr, align 8, !dbg !294
  call void @CWE606_Unchecked_Loop_Condition__char_file_54e_goodB2GSink(i8* %0), !dbg !295
  ret void, !dbg !296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54e_badSink(i8* %data) #0 !dbg !297 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata i32* %i, metadata !300, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata i32* %n, metadata !303, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !305, metadata !DIExpression()), !dbg !306
  %0 = load i8*, i8** %data.addr, align 8, !dbg !307
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* %n) #8, !dbg !309
  %cmp = icmp eq i32 %call, 1, !dbg !310
  br i1 %cmp, label %if.then, label %if.end, !dbg !311

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !312
  store i32 0, i32* %i, align 4, !dbg !314
  br label %for.cond, !dbg !316

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !317
  %2 = load i32, i32* %n, align 4, !dbg !319
  %cmp1 = icmp slt i32 %1, %2, !dbg !320
  br i1 %cmp1, label %for.body, label %for.end, !dbg !321

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !322
  %inc = add nsw i32 %3, 1, !dbg !322
  store i32 %inc, i32* %intVariable, align 4, !dbg !322
  br label %for.inc, !dbg !324

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !325
  %inc2 = add nsw i32 %4, 1, !dbg !325
  store i32 %inc2, i32* %i, align 4, !dbg !325
  br label %for.cond, !dbg !326, !llvm.loop !327

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !330
  call void @printIntLine(i32 %5), !dbg !331
  br label %if.end, !dbg !332

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !333
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54e_goodG2BSink(i8* %data) #0 !dbg !334 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata i32* %i, metadata !337, metadata !DIExpression()), !dbg !339
  call void @llvm.dbg.declare(metadata i32* %n, metadata !340, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i8*, i8** %data.addr, align 8, !dbg !344
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* %n) #8, !dbg !346
  %cmp = icmp eq i32 %call, 1, !dbg !347
  br i1 %cmp, label %if.then, label %if.end, !dbg !348

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !349
  store i32 0, i32* %i, align 4, !dbg !351
  br label %for.cond, !dbg !353

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !354
  %2 = load i32, i32* %n, align 4, !dbg !356
  %cmp1 = icmp slt i32 %1, %2, !dbg !357
  br i1 %cmp1, label %for.body, label %for.end, !dbg !358

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !359
  %inc = add nsw i32 %3, 1, !dbg !359
  store i32 %inc, i32* %intVariable, align 4, !dbg !359
  br label %for.inc, !dbg !361

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !362
  %inc2 = add nsw i32 %4, 1, !dbg !362
  store i32 %inc2, i32* %i, align 4, !dbg !362
  br label %for.cond, !dbg !363, !llvm.loop !364

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !366
  call void @printIntLine(i32 %5), !dbg !367
  br label %if.end, !dbg !368

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_54e_goodB2GSink(i8* %data) #0 !dbg !370 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata i32* %i, metadata !373, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata i32* %n, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !378, metadata !DIExpression()), !dbg !379
  %0 = load i8*, i8** %data.addr, align 8, !dbg !380
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i64 0, i64 0), i32* %n) #8, !dbg !382
  %cmp = icmp eq i32 %call, 1, !dbg !383
  br i1 %cmp, label %if.then, label %if.end5, !dbg !384

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !385
  %cmp1 = icmp slt i32 %1, 10000, !dbg !388
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !389

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !390
  store i32 0, i32* %i, align 4, !dbg !392
  br label %for.cond, !dbg !394

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !395
  %3 = load i32, i32* %n, align 4, !dbg !397
  %cmp3 = icmp slt i32 %2, %3, !dbg !398
  br i1 %cmp3, label %for.body, label %for.end, !dbg !399

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !400
  %inc = add nsw i32 %4, 1, !dbg !400
  store i32 %inc, i32* %intVariable, align 4, !dbg !400
  br label %for.inc, !dbg !402

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !403
  %inc4 = add nsw i32 %5, 1, !dbg !403
  store i32 %inc4, i32* %i, align 4, !dbg !403
  br label %for.cond, !dbg !404, !llvm.loop !405

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !407
  call void @printIntLine(i32 %6), !dbg !408
  br label %if.end, !dbg !409

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !410

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !411
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !412 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !413, metadata !DIExpression()), !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)), !dbg !415
  %0 = load i8*, i8** %line.addr, align 8, !dbg !416
  %cmp = icmp ne i8* %0, null, !dbg !418
  br i1 %cmp, label %if.then, label %if.end, !dbg !419

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !420
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.29, i64 0, i64 0), i8* %1), !dbg !422
  br label %if.end, !dbg !423

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.30, i64 0, i64 0)), !dbg !424
  ret void, !dbg !425
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !426 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !427, metadata !DIExpression()), !dbg !428
  %0 = load i8*, i8** %line.addr, align 8, !dbg !429
  %cmp = icmp ne i8* %0, null, !dbg !431
  br i1 %cmp, label %if.then, label %if.end, !dbg !432

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !433
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.29, i64 0, i64 0), i8* %1), !dbg !435
  br label %if.end, !dbg !436

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !437
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !438 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = load i32*, i32** %line.addr, align 8, !dbg !445
  %cmp = icmp ne i32* %0, null, !dbg !447
  br i1 %cmp, label %if.then, label %if.end, !dbg !448

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !449
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.31, i64 0, i64 0), i32* %1), !dbg !451
  br label %if.end, !dbg !452

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !453
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !454 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !457, metadata !DIExpression()), !dbg !458
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !459
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !460
  ret void, !dbg !461
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !462 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !466, metadata !DIExpression()), !dbg !467
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !468
  %conv = sext i16 %0 to i32, !dbg !468
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !469
  ret void, !dbg !470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !471 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !475, metadata !DIExpression()), !dbg !476
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !477
  %conv = fpext float %0 to double, !dbg !477
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !478
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !480 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !483, metadata !DIExpression()), !dbg !484
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !485
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !486
  ret void, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !488 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !496
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !497
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !499 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !502, metadata !DIExpression()), !dbg !503
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !504
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !505
  ret void, !dbg !506
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !507 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !512
  %conv = sext i8 %0 to i32, !dbg !512
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !513
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !515 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !518, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !520, metadata !DIExpression()), !dbg !524
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !525
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !526
  store i32 %0, i32* %arrayidx, align 4, !dbg !527
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !528
  store i32 0, i32* %arrayidx1, align 4, !dbg !529
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !530
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !533 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !536, metadata !DIExpression()), !dbg !537
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !538
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !539
  ret void, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !541 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !544, metadata !DIExpression()), !dbg !545
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !546
  %conv = zext i8 %0 to i32, !dbg !546
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !547
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !549 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !553, metadata !DIExpression()), !dbg !554
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !555
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !556
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !558 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !568, metadata !DIExpression()), !dbg !569
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !570
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !571
  %1 = load i32, i32* %intOne, align 4, !dbg !571
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !572
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !573
  %3 = load i32, i32* %intTwo, align 4, !dbg !573
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !574
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !576 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !580, metadata !DIExpression()), !dbg !581
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !582, metadata !DIExpression()), !dbg !583
  call void @llvm.dbg.declare(metadata i64* %i, metadata !584, metadata !DIExpression()), !dbg !585
  store i64 0, i64* %i, align 8, !dbg !586
  br label %for.cond, !dbg !588

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !589
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !591
  %cmp = icmp ult i64 %0, %1, !dbg !592
  br i1 %cmp, label %for.body, label %for.end, !dbg !593

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !594
  %3 = load i64, i64* %i, align 8, !dbg !596
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !594
  %4 = load i8, i8* %arrayidx, align 1, !dbg !594
  %conv = zext i8 %4 to i32, !dbg !594
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !597
  br label %for.inc, !dbg !598

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !599
  %inc = add i64 %5, 1, !dbg !599
  store i64 %inc, i64* %i, align 8, !dbg !599
  br label %for.cond, !dbg !600, !llvm.loop !601

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !603
  ret void, !dbg !604
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !605 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !608, metadata !DIExpression()), !dbg !609
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !610, metadata !DIExpression()), !dbg !611
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !612, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !614, metadata !DIExpression()), !dbg !615
  store i64 0, i64* %numWritten, align 8, !dbg !615
  br label %while.cond, !dbg !616

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !617
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !618
  %cmp = icmp ult i64 %0, %1, !dbg !619
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !620

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !621
  %2 = load i16*, i16** %call, align 8, !dbg !621
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !621
  %4 = load i64, i64* %numWritten, align 8, !dbg !621
  %mul = mul i64 2, %4, !dbg !621
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !621
  %5 = load i8, i8* %arrayidx, align 1, !dbg !621
  %conv = sext i8 %5 to i32, !dbg !621
  %idxprom = sext i32 %conv to i64, !dbg !621
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !621
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !621
  %conv2 = zext i16 %6 to i32, !dbg !621
  %and = and i32 %conv2, 4096, !dbg !621
  %tobool = icmp ne i32 %and, 0, !dbg !621
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !622

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !623
  %7 = load i16*, i16** %call3, align 8, !dbg !623
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !623
  %9 = load i64, i64* %numWritten, align 8, !dbg !623
  %mul4 = mul i64 2, %9, !dbg !623
  %add = add i64 %mul4, 1, !dbg !623
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !623
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !623
  %conv6 = sext i8 %10 to i32, !dbg !623
  %idxprom7 = sext i32 %conv6 to i64, !dbg !623
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !623
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !623
  %conv9 = zext i16 %11 to i32, !dbg !623
  %and10 = and i32 %conv9, 4096, !dbg !623
  %tobool11 = icmp ne i32 %and10, 0, !dbg !622
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !624
  br i1 %12, label %while.body, label %while.end, !dbg !616

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !625, metadata !DIExpression()), !dbg !627
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !628
  %14 = load i64, i64* %numWritten, align 8, !dbg !629
  %mul12 = mul i64 2, %14, !dbg !630
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !628
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !631
  %15 = load i32, i32* %byte, align 4, !dbg !632
  %conv15 = trunc i32 %15 to i8, !dbg !633
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !634
  %17 = load i64, i64* %numWritten, align 8, !dbg !635
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !634
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !636
  %18 = load i64, i64* %numWritten, align 8, !dbg !637
  %inc = add i64 %18, 1, !dbg !637
  store i64 %inc, i64* %numWritten, align 8, !dbg !637
  br label %while.cond, !dbg !616, !llvm.loop !638

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !640
  ret i64 %19, !dbg !641
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !642 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !645, metadata !DIExpression()), !dbg !646
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !647, metadata !DIExpression()), !dbg !648
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !649, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !651, metadata !DIExpression()), !dbg !652
  store i64 0, i64* %numWritten, align 8, !dbg !652
  br label %while.cond, !dbg !653

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !654
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !655
  %cmp = icmp ult i64 %0, %1, !dbg !656
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !657

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !658
  %3 = load i64, i64* %numWritten, align 8, !dbg !659
  %mul = mul i64 2, %3, !dbg !660
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !658
  %4 = load i32, i32* %arrayidx, align 4, !dbg !658
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !661
  %tobool = icmp ne i32 %call, 0, !dbg !661
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !662

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !663
  %6 = load i64, i64* %numWritten, align 8, !dbg !664
  %mul1 = mul i64 2, %6, !dbg !665
  %add = add i64 %mul1, 1, !dbg !666
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !663
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !663
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !667
  %tobool4 = icmp ne i32 %call3, 0, !dbg !662
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !668
  br i1 %8, label %while.body, label %while.end, !dbg !653

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !669, metadata !DIExpression()), !dbg !671
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !672
  %10 = load i64, i64* %numWritten, align 8, !dbg !673
  %mul5 = mul i64 2, %10, !dbg !674
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !672
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !675
  %11 = load i32, i32* %byte, align 4, !dbg !676
  %conv = trunc i32 %11 to i8, !dbg !677
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !678
  %13 = load i64, i64* %numWritten, align 8, !dbg !679
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !678
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !680
  %14 = load i64, i64* %numWritten, align 8, !dbg !681
  %inc = add i64 %14, 1, !dbg !681
  store i64 %inc, i64* %numWritten, align 8, !dbg !681
  br label %while.cond, !dbg !653, !llvm.loop !682

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !684
  ret i64 %15, !dbg !685
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !686 {
entry:
  ret i32 1, !dbg !689
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !690 {
entry:
  ret i32 0, !dbg !691
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !692 {
entry:
  %call = call i32 @rand() #8, !dbg !693
  %rem = srem i32 %call, 2, !dbg !694
  ret i32 %rem, !dbg !695
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !696 {
entry:
  ret void, !dbg !697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !698 {
entry:
  ret void, !dbg !699
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !700 {
entry:
  ret void, !dbg !701
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !702 {
entry:
  ret void, !dbg !703
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !704 {
entry:
  ret void, !dbg !705
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !706 {
entry:
  ret void, !dbg !707
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !708 {
entry:
  ret void, !dbg !709
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !710 {
entry:
  ret void, !dbg !711
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !712 {
entry:
  ret void, !dbg !713
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !714 {
entry:
  ret void, !dbg !715
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !716 {
entry:
  ret void, !dbg !717
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !718 {
entry:
  ret void, !dbg !719
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !720 {
entry:
  ret void, !dbg !721
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !722 {
entry:
  ret void, !dbg !723
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !724 {
entry:
  ret void, !dbg !725
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !726 {
entry:
  ret void, !dbg !727
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !728 {
entry:
  ret void, !dbg !729
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !730 {
entry:
  ret void, !dbg !731
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

!llvm.dbg.cu = !{!44, !48, !50, !52, !54, !2}
!llvm.ident = !{!56, !56, !56, !56, !56, !56}
!llvm.module.flags = !{!57, !58, !59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_106/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_54a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_106/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_54b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_106/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_54c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_106/source_code")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_54d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_106/source_code")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_54e.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_106/source_code")
!56 = !{!"clang version 12.0.0"}
!57 = !{i32 7, !"Dwarf Version", i32 4}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54_bad", scope: !45, file: !45, line: 37, type: !61, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!61 = !DISubroutineType(types: !62)
!62 = !{null}
!63 = !DILocalVariable(name: "data", scope: !60, file: !45, line: 39, type: !42)
!64 = !DILocation(line: 39, column: 12, scope: !60)
!65 = !DILocalVariable(name: "dataBuffer", scope: !60, file: !45, line: 40, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 100)
!69 = !DILocation(line: 40, column: 10, scope: !60)
!70 = !DILocation(line: 41, column: 12, scope: !60)
!71 = !DILocation(line: 41, column: 10, scope: !60)
!72 = !DILocalVariable(name: "dataLen", scope: !73, file: !45, line: 44, type: !74)
!73 = distinct !DILexicalBlock(scope: !60, file: !45, line: 42, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 44, column: 16, scope: !73)
!78 = !DILocation(line: 44, column: 33, scope: !73)
!79 = !DILocation(line: 44, column: 26, scope: !73)
!80 = !DILocalVariable(name: "pFile", scope: !73, file: !45, line: 45, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !83, line: 7, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !85, line: 49, size: 1728, elements: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !102, !104, !105, !106, !110, !111, !113, !117, !120, !122, !125, !128, !129, !130, !131, !132}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !84, file: !85, line: 51, baseType: !23, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !84, file: !85, line: 54, baseType: !42, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !84, file: !85, line: 55, baseType: !42, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !84, file: !85, line: 56, baseType: !42, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !84, file: !85, line: 57, baseType: !42, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !84, file: !85, line: 58, baseType: !42, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !84, file: !85, line: 59, baseType: !42, size: 64, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !84, file: !85, line: 60, baseType: !42, size: 64, offset: 448)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !84, file: !85, line: 61, baseType: !42, size: 64, offset: 512)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !84, file: !85, line: 64, baseType: !42, size: 64, offset: 576)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !84, file: !85, line: 65, baseType: !42, size: 64, offset: 640)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !84, file: !85, line: 66, baseType: !42, size: 64, offset: 704)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !84, file: !85, line: 68, baseType: !100, size: 64, offset: 768)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !85, line: 36, flags: DIFlagFwdDecl)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !84, file: !85, line: 70, baseType: !103, size: 64, offset: 832)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !84, file: !85, line: 72, baseType: !23, size: 32, offset: 896)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !84, file: !85, line: 73, baseType: !23, size: 32, offset: 928)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !84, file: !85, line: 74, baseType: !107, size: 64, offset: 960)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !108, line: 152, baseType: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!109 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !84, file: !85, line: 77, baseType: !24, size: 16, offset: 1024)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !84, file: !85, line: 78, baseType: !112, size: 8, offset: 1040)
!112 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !84, file: !85, line: 79, baseType: !114, size: 8, offset: 1048)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 1)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !84, file: !85, line: 81, baseType: !118, size: 64, offset: 1088)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !85, line: 43, baseType: null)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !84, file: !85, line: 89, baseType: !121, size: 64, offset: 1152)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !108, line: 153, baseType: !109)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !84, file: !85, line: 91, baseType: !123, size: 64, offset: 1216)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !85, line: 37, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !84, file: !85, line: 92, baseType: !126, size: 64, offset: 1280)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !85, line: 38, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !84, file: !85, line: 93, baseType: !103, size: 64, offset: 1344)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !84, file: !85, line: 94, baseType: !22, size: 64, offset: 1408)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !84, file: !85, line: 95, baseType: !74, size: 64, offset: 1472)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !84, file: !85, line: 96, baseType: !23, size: 32, offset: 1536)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !84, file: !85, line: 98, baseType: !133, size: 160, offset: 1568)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 20)
!136 = !DILocation(line: 45, column: 16, scope: !73)
!137 = !DILocation(line: 47, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !73, file: !45, line: 47, column: 13)
!139 = !DILocation(line: 47, column: 16, scope: !138)
!140 = !DILocation(line: 47, column: 25, scope: !138)
!141 = !DILocation(line: 47, column: 13, scope: !73)
!142 = !DILocation(line: 49, column: 21, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !45, line: 48, column: 9)
!144 = !DILocation(line: 49, column: 19, scope: !143)
!145 = !DILocation(line: 50, column: 17, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !45, line: 50, column: 17)
!147 = !DILocation(line: 50, column: 23, scope: !146)
!148 = !DILocation(line: 50, column: 17, scope: !143)
!149 = !DILocation(line: 53, column: 27, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !45, line: 53, column: 21)
!151 = distinct !DILexicalBlock(scope: !146, file: !45, line: 51, column: 13)
!152 = !DILocation(line: 53, column: 32, scope: !150)
!153 = !DILocation(line: 53, column: 31, scope: !150)
!154 = !DILocation(line: 53, column: 51, scope: !150)
!155 = !DILocation(line: 53, column: 50, scope: !150)
!156 = !DILocation(line: 53, column: 41, scope: !150)
!157 = !DILocation(line: 53, column: 61, scope: !150)
!158 = !DILocation(line: 53, column: 21, scope: !150)
!159 = !DILocation(line: 53, column: 68, scope: !150)
!160 = !DILocation(line: 53, column: 21, scope: !151)
!161 = !DILocation(line: 55, column: 21, scope: !162)
!162 = distinct !DILexicalBlock(scope: !150, file: !45, line: 54, column: 17)
!163 = !DILocation(line: 57, column: 21, scope: !162)
!164 = !DILocation(line: 57, column: 26, scope: !162)
!165 = !DILocation(line: 57, column: 35, scope: !162)
!166 = !DILocation(line: 58, column: 17, scope: !162)
!167 = !DILocation(line: 59, column: 24, scope: !151)
!168 = !DILocation(line: 59, column: 17, scope: !151)
!169 = !DILocation(line: 60, column: 13, scope: !151)
!170 = !DILocation(line: 61, column: 9, scope: !143)
!171 = !DILocation(line: 63, column: 60, scope: !60)
!172 = !DILocation(line: 63, column: 5, scope: !60)
!173 = !DILocation(line: 64, column: 1, scope: !60)
!174 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 72, type: !61, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!175 = !DILocalVariable(name: "data", scope: !174, file: !45, line: 74, type: !42)
!176 = !DILocation(line: 74, column: 12, scope: !174)
!177 = !DILocalVariable(name: "dataBuffer", scope: !174, file: !45, line: 75, type: !66)
!178 = !DILocation(line: 75, column: 10, scope: !174)
!179 = !DILocation(line: 76, column: 12, scope: !174)
!180 = !DILocation(line: 76, column: 10, scope: !174)
!181 = !DILocation(line: 78, column: 12, scope: !174)
!182 = !DILocation(line: 78, column: 5, scope: !174)
!183 = !DILocation(line: 79, column: 64, scope: !174)
!184 = !DILocation(line: 79, column: 5, scope: !174)
!185 = !DILocation(line: 80, column: 1, scope: !174)
!186 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 84, type: !61, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!187 = !DILocalVariable(name: "data", scope: !186, file: !45, line: 86, type: !42)
!188 = !DILocation(line: 86, column: 12, scope: !186)
!189 = !DILocalVariable(name: "dataBuffer", scope: !186, file: !45, line: 87, type: !66)
!190 = !DILocation(line: 87, column: 10, scope: !186)
!191 = !DILocation(line: 88, column: 12, scope: !186)
!192 = !DILocation(line: 88, column: 10, scope: !186)
!193 = !DILocalVariable(name: "dataLen", scope: !194, file: !45, line: 91, type: !74)
!194 = distinct !DILexicalBlock(scope: !186, file: !45, line: 89, column: 5)
!195 = !DILocation(line: 91, column: 16, scope: !194)
!196 = !DILocation(line: 91, column: 33, scope: !194)
!197 = !DILocation(line: 91, column: 26, scope: !194)
!198 = !DILocalVariable(name: "pFile", scope: !194, file: !45, line: 92, type: !81)
!199 = !DILocation(line: 92, column: 16, scope: !194)
!200 = !DILocation(line: 94, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !194, file: !45, line: 94, column: 13)
!202 = !DILocation(line: 94, column: 16, scope: !201)
!203 = !DILocation(line: 94, column: 25, scope: !201)
!204 = !DILocation(line: 94, column: 13, scope: !194)
!205 = !DILocation(line: 96, column: 21, scope: !206)
!206 = distinct !DILexicalBlock(scope: !201, file: !45, line: 95, column: 9)
!207 = !DILocation(line: 96, column: 19, scope: !206)
!208 = !DILocation(line: 97, column: 17, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !45, line: 97, column: 17)
!210 = !DILocation(line: 97, column: 23, scope: !209)
!211 = !DILocation(line: 97, column: 17, scope: !206)
!212 = !DILocation(line: 100, column: 27, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !45, line: 100, column: 21)
!214 = distinct !DILexicalBlock(scope: !209, file: !45, line: 98, column: 13)
!215 = !DILocation(line: 100, column: 32, scope: !213)
!216 = !DILocation(line: 100, column: 31, scope: !213)
!217 = !DILocation(line: 100, column: 51, scope: !213)
!218 = !DILocation(line: 100, column: 50, scope: !213)
!219 = !DILocation(line: 100, column: 41, scope: !213)
!220 = !DILocation(line: 100, column: 61, scope: !213)
!221 = !DILocation(line: 100, column: 21, scope: !213)
!222 = !DILocation(line: 100, column: 68, scope: !213)
!223 = !DILocation(line: 100, column: 21, scope: !214)
!224 = !DILocation(line: 102, column: 21, scope: !225)
!225 = distinct !DILexicalBlock(scope: !213, file: !45, line: 101, column: 17)
!226 = !DILocation(line: 104, column: 21, scope: !225)
!227 = !DILocation(line: 104, column: 26, scope: !225)
!228 = !DILocation(line: 104, column: 35, scope: !225)
!229 = !DILocation(line: 105, column: 17, scope: !225)
!230 = !DILocation(line: 106, column: 24, scope: !214)
!231 = !DILocation(line: 106, column: 17, scope: !214)
!232 = !DILocation(line: 107, column: 13, scope: !214)
!233 = !DILocation(line: 108, column: 9, scope: !206)
!234 = !DILocation(line: 110, column: 64, scope: !186)
!235 = !DILocation(line: 110, column: 5, scope: !186)
!236 = !DILocation(line: 111, column: 1, scope: !186)
!237 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54_good", scope: !45, file: !45, line: 113, type: !61, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!238 = !DILocation(line: 115, column: 5, scope: !237)
!239 = !DILocation(line: 116, column: 5, scope: !237)
!240 = !DILocation(line: 117, column: 1, scope: !237)
!241 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54b_badSink", scope: !49, file: !49, line: 37, type: !242, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !42}
!244 = !DILocalVariable(name: "data", arg: 1, scope: !241, file: !49, line: 37, type: !42)
!245 = !DILocation(line: 37, column: 68, scope: !241)
!246 = !DILocation(line: 39, column: 60, scope: !241)
!247 = !DILocation(line: 39, column: 5, scope: !241)
!248 = !DILocation(line: 40, column: 1, scope: !241)
!249 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54b_goodG2BSink", scope: !49, file: !49, line: 49, type: !242, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!250 = !DILocalVariable(name: "data", arg: 1, scope: !249, file: !49, line: 49, type: !42)
!251 = !DILocation(line: 49, column: 72, scope: !249)
!252 = !DILocation(line: 51, column: 64, scope: !249)
!253 = !DILocation(line: 51, column: 5, scope: !249)
!254 = !DILocation(line: 52, column: 1, scope: !249)
!255 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54b_goodB2GSink", scope: !49, file: !49, line: 57, type: !242, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!256 = !DILocalVariable(name: "data", arg: 1, scope: !255, file: !49, line: 57, type: !42)
!257 = !DILocation(line: 57, column: 72, scope: !255)
!258 = !DILocation(line: 59, column: 64, scope: !255)
!259 = !DILocation(line: 59, column: 5, scope: !255)
!260 = !DILocation(line: 60, column: 1, scope: !255)
!261 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54c_badSink", scope: !51, file: !51, line: 37, type: !242, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!262 = !DILocalVariable(name: "data", arg: 1, scope: !261, file: !51, line: 37, type: !42)
!263 = !DILocation(line: 37, column: 68, scope: !261)
!264 = !DILocation(line: 39, column: 60, scope: !261)
!265 = !DILocation(line: 39, column: 5, scope: !261)
!266 = !DILocation(line: 40, column: 1, scope: !261)
!267 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54c_goodG2BSink", scope: !51, file: !51, line: 49, type: !242, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!268 = !DILocalVariable(name: "data", arg: 1, scope: !267, file: !51, line: 49, type: !42)
!269 = !DILocation(line: 49, column: 72, scope: !267)
!270 = !DILocation(line: 51, column: 64, scope: !267)
!271 = !DILocation(line: 51, column: 5, scope: !267)
!272 = !DILocation(line: 52, column: 1, scope: !267)
!273 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54c_goodB2GSink", scope: !51, file: !51, line: 57, type: !242, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!274 = !DILocalVariable(name: "data", arg: 1, scope: !273, file: !51, line: 57, type: !42)
!275 = !DILocation(line: 57, column: 72, scope: !273)
!276 = !DILocation(line: 59, column: 64, scope: !273)
!277 = !DILocation(line: 59, column: 5, scope: !273)
!278 = !DILocation(line: 60, column: 1, scope: !273)
!279 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54d_badSink", scope: !53, file: !53, line: 37, type: !242, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!280 = !DILocalVariable(name: "data", arg: 1, scope: !279, file: !53, line: 37, type: !42)
!281 = !DILocation(line: 37, column: 68, scope: !279)
!282 = !DILocation(line: 39, column: 60, scope: !279)
!283 = !DILocation(line: 39, column: 5, scope: !279)
!284 = !DILocation(line: 40, column: 1, scope: !279)
!285 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54d_goodG2BSink", scope: !53, file: !53, line: 49, type: !242, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!286 = !DILocalVariable(name: "data", arg: 1, scope: !285, file: !53, line: 49, type: !42)
!287 = !DILocation(line: 49, column: 72, scope: !285)
!288 = !DILocation(line: 51, column: 64, scope: !285)
!289 = !DILocation(line: 51, column: 5, scope: !285)
!290 = !DILocation(line: 52, column: 1, scope: !285)
!291 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54d_goodB2GSink", scope: !53, file: !53, line: 57, type: !242, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!292 = !DILocalVariable(name: "data", arg: 1, scope: !291, file: !53, line: 57, type: !42)
!293 = !DILocation(line: 57, column: 72, scope: !291)
!294 = !DILocation(line: 59, column: 64, scope: !291)
!295 = !DILocation(line: 59, column: 5, scope: !291)
!296 = !DILocation(line: 60, column: 1, scope: !291)
!297 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54e_badSink", scope: !55, file: !55, line: 34, type: !242, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!298 = !DILocalVariable(name: "data", arg: 1, scope: !297, file: !55, line: 34, type: !42)
!299 = !DILocation(line: 34, column: 68, scope: !297)
!300 = !DILocalVariable(name: "i", scope: !301, file: !55, line: 37, type: !23)
!301 = distinct !DILexicalBlock(scope: !297, file: !55, line: 36, column: 5)
!302 = !DILocation(line: 37, column: 13, scope: !301)
!303 = !DILocalVariable(name: "n", scope: !301, file: !55, line: 37, type: !23)
!304 = !DILocation(line: 37, column: 16, scope: !301)
!305 = !DILocalVariable(name: "intVariable", scope: !301, file: !55, line: 37, type: !23)
!306 = !DILocation(line: 37, column: 19, scope: !301)
!307 = !DILocation(line: 38, column: 20, scope: !308)
!308 = distinct !DILexicalBlock(scope: !301, file: !55, line: 38, column: 13)
!309 = !DILocation(line: 38, column: 13, scope: !308)
!310 = !DILocation(line: 38, column: 36, scope: !308)
!311 = !DILocation(line: 38, column: 13, scope: !301)
!312 = !DILocation(line: 41, column: 25, scope: !313)
!313 = distinct !DILexicalBlock(scope: !308, file: !55, line: 39, column: 9)
!314 = !DILocation(line: 42, column: 20, scope: !315)
!315 = distinct !DILexicalBlock(scope: !313, file: !55, line: 42, column: 13)
!316 = !DILocation(line: 42, column: 18, scope: !315)
!317 = !DILocation(line: 42, column: 25, scope: !318)
!318 = distinct !DILexicalBlock(scope: !315, file: !55, line: 42, column: 13)
!319 = !DILocation(line: 42, column: 29, scope: !318)
!320 = !DILocation(line: 42, column: 27, scope: !318)
!321 = !DILocation(line: 42, column: 13, scope: !315)
!322 = !DILocation(line: 45, column: 28, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !55, line: 43, column: 13)
!324 = !DILocation(line: 46, column: 13, scope: !323)
!325 = !DILocation(line: 42, column: 33, scope: !318)
!326 = !DILocation(line: 42, column: 13, scope: !318)
!327 = distinct !{!327, !321, !328, !329}
!328 = !DILocation(line: 46, column: 13, scope: !315)
!329 = !{!"llvm.loop.mustprogress"}
!330 = !DILocation(line: 47, column: 26, scope: !313)
!331 = !DILocation(line: 47, column: 13, scope: !313)
!332 = !DILocation(line: 48, column: 9, scope: !313)
!333 = !DILocation(line: 50, column: 1, scope: !297)
!334 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54e_goodG2BSink", scope: !55, file: !55, line: 57, type: !242, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!335 = !DILocalVariable(name: "data", arg: 1, scope: !334, file: !55, line: 57, type: !42)
!336 = !DILocation(line: 57, column: 72, scope: !334)
!337 = !DILocalVariable(name: "i", scope: !338, file: !55, line: 60, type: !23)
!338 = distinct !DILexicalBlock(scope: !334, file: !55, line: 59, column: 5)
!339 = !DILocation(line: 60, column: 13, scope: !338)
!340 = !DILocalVariable(name: "n", scope: !338, file: !55, line: 60, type: !23)
!341 = !DILocation(line: 60, column: 16, scope: !338)
!342 = !DILocalVariable(name: "intVariable", scope: !338, file: !55, line: 60, type: !23)
!343 = !DILocation(line: 60, column: 19, scope: !338)
!344 = !DILocation(line: 61, column: 20, scope: !345)
!345 = distinct !DILexicalBlock(scope: !338, file: !55, line: 61, column: 13)
!346 = !DILocation(line: 61, column: 13, scope: !345)
!347 = !DILocation(line: 61, column: 36, scope: !345)
!348 = !DILocation(line: 61, column: 13, scope: !338)
!349 = !DILocation(line: 64, column: 25, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !55, line: 62, column: 9)
!351 = !DILocation(line: 65, column: 20, scope: !352)
!352 = distinct !DILexicalBlock(scope: !350, file: !55, line: 65, column: 13)
!353 = !DILocation(line: 65, column: 18, scope: !352)
!354 = !DILocation(line: 65, column: 25, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !55, line: 65, column: 13)
!356 = !DILocation(line: 65, column: 29, scope: !355)
!357 = !DILocation(line: 65, column: 27, scope: !355)
!358 = !DILocation(line: 65, column: 13, scope: !352)
!359 = !DILocation(line: 68, column: 28, scope: !360)
!360 = distinct !DILexicalBlock(scope: !355, file: !55, line: 66, column: 13)
!361 = !DILocation(line: 69, column: 13, scope: !360)
!362 = !DILocation(line: 65, column: 33, scope: !355)
!363 = !DILocation(line: 65, column: 13, scope: !355)
!364 = distinct !{!364, !358, !365, !329}
!365 = !DILocation(line: 69, column: 13, scope: !352)
!366 = !DILocation(line: 70, column: 26, scope: !350)
!367 = !DILocation(line: 70, column: 13, scope: !350)
!368 = !DILocation(line: 71, column: 9, scope: !350)
!369 = !DILocation(line: 73, column: 1, scope: !334)
!370 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_54e_goodB2GSink", scope: !55, file: !55, line: 76, type: !242, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!371 = !DILocalVariable(name: "data", arg: 1, scope: !370, file: !55, line: 76, type: !42)
!372 = !DILocation(line: 76, column: 72, scope: !370)
!373 = !DILocalVariable(name: "i", scope: !374, file: !55, line: 79, type: !23)
!374 = distinct !DILexicalBlock(scope: !370, file: !55, line: 78, column: 5)
!375 = !DILocation(line: 79, column: 13, scope: !374)
!376 = !DILocalVariable(name: "n", scope: !374, file: !55, line: 79, type: !23)
!377 = !DILocation(line: 79, column: 16, scope: !374)
!378 = !DILocalVariable(name: "intVariable", scope: !374, file: !55, line: 79, type: !23)
!379 = !DILocation(line: 79, column: 19, scope: !374)
!380 = !DILocation(line: 80, column: 20, scope: !381)
!381 = distinct !DILexicalBlock(scope: !374, file: !55, line: 80, column: 13)
!382 = !DILocation(line: 80, column: 13, scope: !381)
!383 = !DILocation(line: 80, column: 36, scope: !381)
!384 = !DILocation(line: 80, column: 13, scope: !374)
!385 = !DILocation(line: 83, column: 17, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !55, line: 83, column: 17)
!387 = distinct !DILexicalBlock(scope: !381, file: !55, line: 81, column: 9)
!388 = !DILocation(line: 83, column: 19, scope: !386)
!389 = !DILocation(line: 83, column: 17, scope: !387)
!390 = !DILocation(line: 85, column: 29, scope: !391)
!391 = distinct !DILexicalBlock(scope: !386, file: !55, line: 84, column: 13)
!392 = !DILocation(line: 86, column: 24, scope: !393)
!393 = distinct !DILexicalBlock(scope: !391, file: !55, line: 86, column: 17)
!394 = !DILocation(line: 86, column: 22, scope: !393)
!395 = !DILocation(line: 86, column: 29, scope: !396)
!396 = distinct !DILexicalBlock(scope: !393, file: !55, line: 86, column: 17)
!397 = !DILocation(line: 86, column: 33, scope: !396)
!398 = !DILocation(line: 86, column: 31, scope: !396)
!399 = !DILocation(line: 86, column: 17, scope: !393)
!400 = !DILocation(line: 89, column: 32, scope: !401)
!401 = distinct !DILexicalBlock(scope: !396, file: !55, line: 87, column: 17)
!402 = !DILocation(line: 90, column: 17, scope: !401)
!403 = !DILocation(line: 86, column: 37, scope: !396)
!404 = !DILocation(line: 86, column: 17, scope: !396)
!405 = distinct !{!405, !399, !406, !329}
!406 = !DILocation(line: 90, column: 17, scope: !393)
!407 = !DILocation(line: 91, column: 30, scope: !391)
!408 = !DILocation(line: 91, column: 17, scope: !391)
!409 = !DILocation(line: 92, column: 13, scope: !391)
!410 = !DILocation(line: 93, column: 9, scope: !387)
!411 = !DILocation(line: 95, column: 1, scope: !370)
!412 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !242, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!413 = !DILocalVariable(name: "line", arg: 1, scope: !412, file: !3, line: 11, type: !42)
!414 = !DILocation(line: 11, column: 25, scope: !412)
!415 = !DILocation(line: 13, column: 1, scope: !412)
!416 = !DILocation(line: 14, column: 8, scope: !417)
!417 = distinct !DILexicalBlock(scope: !412, file: !3, line: 14, column: 8)
!418 = !DILocation(line: 14, column: 13, scope: !417)
!419 = !DILocation(line: 14, column: 8, scope: !412)
!420 = !DILocation(line: 16, column: 24, scope: !421)
!421 = distinct !DILexicalBlock(scope: !417, file: !3, line: 15, column: 5)
!422 = !DILocation(line: 16, column: 9, scope: !421)
!423 = !DILocation(line: 17, column: 5, scope: !421)
!424 = !DILocation(line: 18, column: 5, scope: !412)
!425 = !DILocation(line: 19, column: 1, scope: !412)
!426 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !242, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!427 = !DILocalVariable(name: "line", arg: 1, scope: !426, file: !3, line: 20, type: !42)
!428 = !DILocation(line: 20, column: 29, scope: !426)
!429 = !DILocation(line: 22, column: 8, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !3, line: 22, column: 8)
!431 = !DILocation(line: 22, column: 13, scope: !430)
!432 = !DILocation(line: 22, column: 8, scope: !426)
!433 = !DILocation(line: 24, column: 24, scope: !434)
!434 = distinct !DILexicalBlock(scope: !430, file: !3, line: 23, column: 5)
!435 = !DILocation(line: 24, column: 9, scope: !434)
!436 = !DILocation(line: 25, column: 5, scope: !434)
!437 = !DILocation(line: 26, column: 1, scope: !426)
!438 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !439, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !441}
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !23)
!443 = !DILocalVariable(name: "line", arg: 1, scope: !438, file: !3, line: 27, type: !441)
!444 = !DILocation(line: 27, column: 29, scope: !438)
!445 = !DILocation(line: 29, column: 8, scope: !446)
!446 = distinct !DILexicalBlock(scope: !438, file: !3, line: 29, column: 8)
!447 = !DILocation(line: 29, column: 13, scope: !446)
!448 = !DILocation(line: 29, column: 8, scope: !438)
!449 = !DILocation(line: 31, column: 27, scope: !450)
!450 = distinct !DILexicalBlock(scope: !446, file: !3, line: 30, column: 5)
!451 = !DILocation(line: 31, column: 9, scope: !450)
!452 = !DILocation(line: 32, column: 5, scope: !450)
!453 = !DILocation(line: 33, column: 1, scope: !438)
!454 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !455, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !23}
!457 = !DILocalVariable(name: "intNumber", arg: 1, scope: !454, file: !3, line: 35, type: !23)
!458 = !DILocation(line: 35, column: 24, scope: !454)
!459 = !DILocation(line: 37, column: 20, scope: !454)
!460 = !DILocation(line: 37, column: 5, scope: !454)
!461 = !DILocation(line: 38, column: 1, scope: !454)
!462 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !463, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !465}
!465 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!466 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !462, file: !3, line: 40, type: !465)
!467 = !DILocation(line: 40, column: 28, scope: !462)
!468 = !DILocation(line: 42, column: 21, scope: !462)
!469 = !DILocation(line: 42, column: 5, scope: !462)
!470 = !DILocation(line: 43, column: 1, scope: !462)
!471 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !472, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!472 = !DISubroutineType(types: !473)
!473 = !{null, !474}
!474 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!475 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !471, file: !3, line: 45, type: !474)
!476 = !DILocation(line: 45, column: 28, scope: !471)
!477 = !DILocation(line: 47, column: 20, scope: !471)
!478 = !DILocation(line: 47, column: 5, scope: !471)
!479 = !DILocation(line: 48, column: 1, scope: !471)
!480 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !481, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !109}
!483 = !DILocalVariable(name: "longNumber", arg: 1, scope: !480, file: !3, line: 50, type: !109)
!484 = !DILocation(line: 50, column: 26, scope: !480)
!485 = !DILocation(line: 52, column: 21, scope: !480)
!486 = !DILocation(line: 52, column: 5, scope: !480)
!487 = !DILocation(line: 53, column: 1, scope: !480)
!488 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !489, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !491}
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !492, line: 27, baseType: !493)
!492 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !108, line: 44, baseType: !109)
!494 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !488, file: !3, line: 55, type: !491)
!495 = !DILocation(line: 55, column: 33, scope: !488)
!496 = !DILocation(line: 57, column: 29, scope: !488)
!497 = !DILocation(line: 57, column: 5, scope: !488)
!498 = !DILocation(line: 58, column: 1, scope: !488)
!499 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !500, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !74}
!502 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !499, file: !3, line: 60, type: !74)
!503 = !DILocation(line: 60, column: 29, scope: !499)
!504 = !DILocation(line: 62, column: 21, scope: !499)
!505 = !DILocation(line: 62, column: 5, scope: !499)
!506 = !DILocation(line: 63, column: 1, scope: !499)
!507 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !508, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!508 = !DISubroutineType(types: !509)
!509 = !{null, !43}
!510 = !DILocalVariable(name: "charHex", arg: 1, scope: !507, file: !3, line: 65, type: !43)
!511 = !DILocation(line: 65, column: 29, scope: !507)
!512 = !DILocation(line: 67, column: 22, scope: !507)
!513 = !DILocation(line: 67, column: 5, scope: !507)
!514 = !DILocation(line: 68, column: 1, scope: !507)
!515 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !516, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!516 = !DISubroutineType(types: !517)
!517 = !{null, !442}
!518 = !DILocalVariable(name: "wideChar", arg: 1, scope: !515, file: !3, line: 70, type: !442)
!519 = !DILocation(line: 70, column: 29, scope: !515)
!520 = !DILocalVariable(name: "s", scope: !515, file: !3, line: 74, type: !521)
!521 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 64, elements: !522)
!522 = !{!523}
!523 = !DISubrange(count: 2)
!524 = !DILocation(line: 74, column: 13, scope: !515)
!525 = !DILocation(line: 75, column: 16, scope: !515)
!526 = !DILocation(line: 75, column: 9, scope: !515)
!527 = !DILocation(line: 75, column: 14, scope: !515)
!528 = !DILocation(line: 76, column: 9, scope: !515)
!529 = !DILocation(line: 76, column: 14, scope: !515)
!530 = !DILocation(line: 77, column: 21, scope: !515)
!531 = !DILocation(line: 77, column: 5, scope: !515)
!532 = !DILocation(line: 78, column: 1, scope: !515)
!533 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !534, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !7}
!536 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !533, file: !3, line: 80, type: !7)
!537 = !DILocation(line: 80, column: 33, scope: !533)
!538 = !DILocation(line: 82, column: 20, scope: !533)
!539 = !DILocation(line: 82, column: 5, scope: !533)
!540 = !DILocation(line: 83, column: 1, scope: !533)
!541 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !542, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !25}
!544 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !541, file: !3, line: 85, type: !25)
!545 = !DILocation(line: 85, column: 45, scope: !541)
!546 = !DILocation(line: 87, column: 22, scope: !541)
!547 = !DILocation(line: 87, column: 5, scope: !541)
!548 = !DILocation(line: 88, column: 1, scope: !541)
!549 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !550, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !552}
!552 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!553 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !549, file: !3, line: 90, type: !552)
!554 = !DILocation(line: 90, column: 29, scope: !549)
!555 = !DILocation(line: 92, column: 20, scope: !549)
!556 = !DILocation(line: 92, column: 5, scope: !549)
!557 = !DILocation(line: 93, column: 1, scope: !549)
!558 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !559, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !561}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !563, line: 100, baseType: !564)
!563 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_106/source_code")
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !563, line: 96, size: 64, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !564, file: !563, line: 98, baseType: !23, size: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !564, file: !563, line: 99, baseType: !23, size: 32, offset: 32)
!568 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !558, file: !3, line: 95, type: !561)
!569 = !DILocation(line: 95, column: 40, scope: !558)
!570 = !DILocation(line: 97, column: 26, scope: !558)
!571 = !DILocation(line: 97, column: 47, scope: !558)
!572 = !DILocation(line: 97, column: 55, scope: !558)
!573 = !DILocation(line: 97, column: 76, scope: !558)
!574 = !DILocation(line: 97, column: 5, scope: !558)
!575 = !DILocation(line: 98, column: 1, scope: !558)
!576 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !577, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !579, !74}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!580 = !DILocalVariable(name: "bytes", arg: 1, scope: !576, file: !3, line: 100, type: !579)
!581 = !DILocation(line: 100, column: 38, scope: !576)
!582 = !DILocalVariable(name: "numBytes", arg: 2, scope: !576, file: !3, line: 100, type: !74)
!583 = !DILocation(line: 100, column: 52, scope: !576)
!584 = !DILocalVariable(name: "i", scope: !576, file: !3, line: 102, type: !74)
!585 = !DILocation(line: 102, column: 12, scope: !576)
!586 = !DILocation(line: 103, column: 12, scope: !587)
!587 = distinct !DILexicalBlock(scope: !576, file: !3, line: 103, column: 5)
!588 = !DILocation(line: 103, column: 10, scope: !587)
!589 = !DILocation(line: 103, column: 17, scope: !590)
!590 = distinct !DILexicalBlock(scope: !587, file: !3, line: 103, column: 5)
!591 = !DILocation(line: 103, column: 21, scope: !590)
!592 = !DILocation(line: 103, column: 19, scope: !590)
!593 = !DILocation(line: 103, column: 5, scope: !587)
!594 = !DILocation(line: 105, column: 24, scope: !595)
!595 = distinct !DILexicalBlock(scope: !590, file: !3, line: 104, column: 5)
!596 = !DILocation(line: 105, column: 30, scope: !595)
!597 = !DILocation(line: 105, column: 9, scope: !595)
!598 = !DILocation(line: 106, column: 5, scope: !595)
!599 = !DILocation(line: 103, column: 31, scope: !590)
!600 = !DILocation(line: 103, column: 5, scope: !590)
!601 = distinct !{!601, !593, !602, !329}
!602 = !DILocation(line: 106, column: 5, scope: !587)
!603 = !DILocation(line: 107, column: 5, scope: !576)
!604 = !DILocation(line: 108, column: 1, scope: !576)
!605 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !606, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DISubroutineType(types: !607)
!607 = !{!74, !579, !74, !42}
!608 = !DILocalVariable(name: "bytes", arg: 1, scope: !605, file: !3, line: 113, type: !579)
!609 = !DILocation(line: 113, column: 39, scope: !605)
!610 = !DILocalVariable(name: "numBytes", arg: 2, scope: !605, file: !3, line: 113, type: !74)
!611 = !DILocation(line: 113, column: 53, scope: !605)
!612 = !DILocalVariable(name: "hex", arg: 3, scope: !605, file: !3, line: 113, type: !42)
!613 = !DILocation(line: 113, column: 71, scope: !605)
!614 = !DILocalVariable(name: "numWritten", scope: !605, file: !3, line: 115, type: !74)
!615 = !DILocation(line: 115, column: 12, scope: !605)
!616 = !DILocation(line: 121, column: 5, scope: !605)
!617 = !DILocation(line: 121, column: 12, scope: !605)
!618 = !DILocation(line: 121, column: 25, scope: !605)
!619 = !DILocation(line: 121, column: 23, scope: !605)
!620 = !DILocation(line: 121, column: 34, scope: !605)
!621 = !DILocation(line: 121, column: 37, scope: !605)
!622 = !DILocation(line: 121, column: 67, scope: !605)
!623 = !DILocation(line: 121, column: 70, scope: !605)
!624 = !DILocation(line: 0, scope: !605)
!625 = !DILocalVariable(name: "byte", scope: !626, file: !3, line: 123, type: !23)
!626 = distinct !DILexicalBlock(scope: !605, file: !3, line: 122, column: 5)
!627 = !DILocation(line: 123, column: 13, scope: !626)
!628 = !DILocation(line: 124, column: 17, scope: !626)
!629 = !DILocation(line: 124, column: 25, scope: !626)
!630 = !DILocation(line: 124, column: 23, scope: !626)
!631 = !DILocation(line: 124, column: 9, scope: !626)
!632 = !DILocation(line: 125, column: 45, scope: !626)
!633 = !DILocation(line: 125, column: 29, scope: !626)
!634 = !DILocation(line: 125, column: 9, scope: !626)
!635 = !DILocation(line: 125, column: 15, scope: !626)
!636 = !DILocation(line: 125, column: 27, scope: !626)
!637 = !DILocation(line: 126, column: 9, scope: !626)
!638 = distinct !{!638, !616, !639, !329}
!639 = !DILocation(line: 127, column: 5, scope: !605)
!640 = !DILocation(line: 129, column: 12, scope: !605)
!641 = !DILocation(line: 129, column: 5, scope: !605)
!642 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !643, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!643 = !DISubroutineType(types: !644)
!644 = !{!74, !579, !74, !441}
!645 = !DILocalVariable(name: "bytes", arg: 1, scope: !642, file: !3, line: 135, type: !579)
!646 = !DILocation(line: 135, column: 41, scope: !642)
!647 = !DILocalVariable(name: "numBytes", arg: 2, scope: !642, file: !3, line: 135, type: !74)
!648 = !DILocation(line: 135, column: 55, scope: !642)
!649 = !DILocalVariable(name: "hex", arg: 3, scope: !642, file: !3, line: 135, type: !441)
!650 = !DILocation(line: 135, column: 76, scope: !642)
!651 = !DILocalVariable(name: "numWritten", scope: !642, file: !3, line: 137, type: !74)
!652 = !DILocation(line: 137, column: 12, scope: !642)
!653 = !DILocation(line: 143, column: 5, scope: !642)
!654 = !DILocation(line: 143, column: 12, scope: !642)
!655 = !DILocation(line: 143, column: 25, scope: !642)
!656 = !DILocation(line: 143, column: 23, scope: !642)
!657 = !DILocation(line: 143, column: 34, scope: !642)
!658 = !DILocation(line: 143, column: 47, scope: !642)
!659 = !DILocation(line: 143, column: 55, scope: !642)
!660 = !DILocation(line: 143, column: 53, scope: !642)
!661 = !DILocation(line: 143, column: 37, scope: !642)
!662 = !DILocation(line: 143, column: 68, scope: !642)
!663 = !DILocation(line: 143, column: 81, scope: !642)
!664 = !DILocation(line: 143, column: 89, scope: !642)
!665 = !DILocation(line: 143, column: 87, scope: !642)
!666 = !DILocation(line: 143, column: 100, scope: !642)
!667 = !DILocation(line: 143, column: 71, scope: !642)
!668 = !DILocation(line: 0, scope: !642)
!669 = !DILocalVariable(name: "byte", scope: !670, file: !3, line: 145, type: !23)
!670 = distinct !DILexicalBlock(scope: !642, file: !3, line: 144, column: 5)
!671 = !DILocation(line: 145, column: 13, scope: !670)
!672 = !DILocation(line: 146, column: 18, scope: !670)
!673 = !DILocation(line: 146, column: 26, scope: !670)
!674 = !DILocation(line: 146, column: 24, scope: !670)
!675 = !DILocation(line: 146, column: 9, scope: !670)
!676 = !DILocation(line: 147, column: 45, scope: !670)
!677 = !DILocation(line: 147, column: 29, scope: !670)
!678 = !DILocation(line: 147, column: 9, scope: !670)
!679 = !DILocation(line: 147, column: 15, scope: !670)
!680 = !DILocation(line: 147, column: 27, scope: !670)
!681 = !DILocation(line: 148, column: 9, scope: !670)
!682 = distinct !{!682, !653, !683, !329}
!683 = !DILocation(line: 149, column: 5, scope: !642)
!684 = !DILocation(line: 151, column: 12, scope: !642)
!685 = !DILocation(line: 151, column: 5, scope: !642)
!686 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !687, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!687 = !DISubroutineType(types: !688)
!688 = !{!23}
!689 = !DILocation(line: 158, column: 5, scope: !686)
!690 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !687, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!691 = !DILocation(line: 163, column: 5, scope: !690)
!692 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !687, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!693 = !DILocation(line: 168, column: 13, scope: !692)
!694 = !DILocation(line: 168, column: 20, scope: !692)
!695 = !DILocation(line: 168, column: 5, scope: !692)
!696 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !61, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!697 = !DILocation(line: 187, column: 16, scope: !696)
!698 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !61, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!699 = !DILocation(line: 188, column: 16, scope: !698)
!700 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !61, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!701 = !DILocation(line: 189, column: 16, scope: !700)
!702 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !61, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!703 = !DILocation(line: 190, column: 16, scope: !702)
!704 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !61, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!705 = !DILocation(line: 191, column: 16, scope: !704)
!706 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !61, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!707 = !DILocation(line: 192, column: 16, scope: !706)
!708 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !61, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!709 = !DILocation(line: 193, column: 16, scope: !708)
!710 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !61, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!711 = !DILocation(line: 194, column: 16, scope: !710)
!712 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !61, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!713 = !DILocation(line: 195, column: 16, scope: !712)
!714 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !61, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!715 = !DILocation(line: 198, column: 15, scope: !714)
!716 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !61, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!717 = !DILocation(line: 199, column: 15, scope: !716)
!718 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !61, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!719 = !DILocation(line: 200, column: 15, scope: !718)
!720 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !61, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!721 = !DILocation(line: 201, column: 15, scope: !720)
!722 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !61, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!723 = !DILocation(line: 202, column: 15, scope: !722)
!724 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !61, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!725 = !DILocation(line: 203, column: 15, scope: !724)
!726 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !61, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!727 = !DILocation(line: 204, column: 15, scope: !726)
!728 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !61, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!729 = !DILocation(line: 205, column: 15, scope: !728)
!730 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !61, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!731 = !DILocation(line: 206, column: 15, scope: !730)
