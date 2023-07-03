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
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.22 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.24 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.25 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
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
@.str.15.28 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_53_bad() #0 !dbg !58 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !63, metadata !DIExpression()), !dbg !67
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !67
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !68
  store i8* %arraydecay, i8** %data, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !70, metadata !DIExpression()), !dbg !75
  %1 = load i8*, i8** %data, align 8, !dbg !76
  %call = call i64 @strlen(i8* %1) #7, !dbg !77
  store i64 %call, i64* %dataLen, align 8, !dbg !75
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !78, metadata !DIExpression()), !dbg !134
  %2 = load i64, i64* %dataLen, align 8, !dbg !135
  %sub = sub i64 100, %2, !dbg !137
  %cmp = icmp ugt i64 %sub, 1, !dbg !138
  br i1 %cmp, label %if.then, label %if.end11, !dbg !139

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !140
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !142
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !143
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !145
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !146

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !147
  %5 = load i64, i64* %dataLen, align 8, !dbg !150
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !151
  %6 = load i64, i64* %dataLen, align 8, !dbg !152
  %sub4 = sub i64 100, %6, !dbg !153
  %conv = trunc i64 %sub4 to i32, !dbg !154
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !155
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !156
  %cmp6 = icmp eq i8* %call5, null, !dbg !157
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !158

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !159
  %8 = load i8*, i8** %data, align 8, !dbg !161
  %9 = load i64, i64* %dataLen, align 8, !dbg !162
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !161
  store i8 0, i8* %arrayidx, align 1, !dbg !163
  br label %if.end, !dbg !164

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !165
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !166
  br label %if.end10, !dbg !167

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !168

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !169
  call void @CWE606_Unchecked_Loop_Condition__char_file_53b_badSink(i8* %11), !dbg !170
  ret void, !dbg !171
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
define dso_local void @goodG2B() #0 !dbg !172 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !176
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !176
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !177
  store i8* %arraydecay, i8** %data, align 8, !dbg !178
  %1 = load i8*, i8** %data, align 8, !dbg !179
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !180
  %2 = load i8*, i8** %data, align 8, !dbg !181
  call void @CWE606_Unchecked_Loop_Condition__char_file_53b_goodG2BSink(i8* %2), !dbg !182
  ret void, !dbg !183
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !184 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !187, metadata !DIExpression()), !dbg !188
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !188
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !188
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !189
  store i8* %arraydecay, i8** %data, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !191, metadata !DIExpression()), !dbg !193
  %1 = load i8*, i8** %data, align 8, !dbg !194
  %call = call i64 @strlen(i8* %1) #7, !dbg !195
  store i64 %call, i64* %dataLen, align 8, !dbg !193
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !196, metadata !DIExpression()), !dbg !197
  %2 = load i64, i64* %dataLen, align 8, !dbg !198
  %sub = sub i64 100, %2, !dbg !200
  %cmp = icmp ugt i64 %sub, 1, !dbg !201
  br i1 %cmp, label %if.then, label %if.end11, !dbg !202

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !203
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !205
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !206
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !208
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !209

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !210
  %5 = load i64, i64* %dataLen, align 8, !dbg !213
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !214
  %6 = load i64, i64* %dataLen, align 8, !dbg !215
  %sub4 = sub i64 100, %6, !dbg !216
  %conv = trunc i64 %sub4 to i32, !dbg !217
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !218
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !219
  %cmp6 = icmp eq i8* %call5, null, !dbg !220
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !221

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !222
  %8 = load i8*, i8** %data, align 8, !dbg !224
  %9 = load i64, i64* %dataLen, align 8, !dbg !225
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !224
  store i8 0, i8* %arrayidx, align 1, !dbg !226
  br label %if.end, !dbg !227

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !228
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !229
  br label %if.end10, !dbg !230

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !231

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !232
  call void @CWE606_Unchecked_Loop_Condition__char_file_53b_goodB2GSink(i8* %11), !dbg !233
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_53_good() #0 !dbg !235 {
entry:
  call void @goodG2B(), !dbg !236
  call void @goodB2G(), !dbg !237
  ret void, !dbg !238
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_53b_badSink(i8* %data) #0 !dbg !239 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = load i8*, i8** %data.addr, align 8, !dbg !244
  call void @CWE606_Unchecked_Loop_Condition__char_file_53c_badSink(i8* %0), !dbg !245
  ret void, !dbg !246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_53b_goodG2BSink(i8* %data) #0 !dbg !247 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = load i8*, i8** %data.addr, align 8, !dbg !250
  call void @CWE606_Unchecked_Loop_Condition__char_file_53c_goodG2BSink(i8* %0), !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_53b_goodB2GSink(i8* %data) #0 !dbg !253 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !254, metadata !DIExpression()), !dbg !255
  %0 = load i8*, i8** %data.addr, align 8, !dbg !256
  call void @CWE606_Unchecked_Loop_Condition__char_file_53c_goodB2GSink(i8* %0), !dbg !257
  ret void, !dbg !258
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_53c_badSink(i8* %data) #0 !dbg !259 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = load i8*, i8** %data.addr, align 8, !dbg !262
  call void @CWE606_Unchecked_Loop_Condition__char_file_53d_badSink(i8* %0), !dbg !263
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_53c_goodG2BSink(i8* %data) #0 !dbg !265 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !266, metadata !DIExpression()), !dbg !267
  %0 = load i8*, i8** %data.addr, align 8, !dbg !268
  call void @CWE606_Unchecked_Loop_Condition__char_file_53d_goodG2BSink(i8* %0), !dbg !269
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_53c_goodB2GSink(i8* %data) #0 !dbg !271 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = load i8*, i8** %data.addr, align 8, !dbg !274
  call void @CWE606_Unchecked_Loop_Condition__char_file_53d_goodB2GSink(i8* %0), !dbg !275
  ret void, !dbg !276
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_53d_badSink(i8* %data) #0 !dbg !277 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata i32* %i, metadata !280, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata i32* %n, metadata !283, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load i8*, i8** %data.addr, align 8, !dbg !287
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %n) #8, !dbg !289
  %cmp = icmp eq i32 %call, 1, !dbg !290
  br i1 %cmp, label %if.then, label %if.end, !dbg !291

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !292
  store i32 0, i32* %i, align 4, !dbg !294
  br label %for.cond, !dbg !296

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !297
  %2 = load i32, i32* %n, align 4, !dbg !299
  %cmp1 = icmp slt i32 %1, %2, !dbg !300
  br i1 %cmp1, label %for.body, label %for.end, !dbg !301

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !302
  %inc = add nsw i32 %3, 1, !dbg !302
  store i32 %inc, i32* %intVariable, align 4, !dbg !302
  br label %for.inc, !dbg !304

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !305
  %inc2 = add nsw i32 %4, 1, !dbg !305
  store i32 %inc2, i32* %i, align 4, !dbg !305
  br label %for.cond, !dbg !306, !llvm.loop !307

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !310
  call void @printIntLine(i32 %5), !dbg !311
  br label %if.end, !dbg !312

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !313
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_53d_goodG2BSink(i8* %data) #0 !dbg !314 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !315, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.declare(metadata i32* %i, metadata !317, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.declare(metadata i32* %n, metadata !320, metadata !DIExpression()), !dbg !321
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !322, metadata !DIExpression()), !dbg !323
  %0 = load i8*, i8** %data.addr, align 8, !dbg !324
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %n) #8, !dbg !326
  %cmp = icmp eq i32 %call, 1, !dbg !327
  br i1 %cmp, label %if.then, label %if.end, !dbg !328

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !329
  store i32 0, i32* %i, align 4, !dbg !331
  br label %for.cond, !dbg !333

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !334
  %2 = load i32, i32* %n, align 4, !dbg !336
  %cmp1 = icmp slt i32 %1, %2, !dbg !337
  br i1 %cmp1, label %for.body, label %for.end, !dbg !338

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !339
  %inc = add nsw i32 %3, 1, !dbg !339
  store i32 %inc, i32* %intVariable, align 4, !dbg !339
  br label %for.inc, !dbg !341

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !342
  %inc2 = add nsw i32 %4, 1, !dbg !342
  store i32 %inc2, i32* %i, align 4, !dbg !342
  br label %for.cond, !dbg !343, !llvm.loop !344

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !346
  call void @printIntLine(i32 %5), !dbg !347
  br label %if.end, !dbg !348

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !349
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_53d_goodB2GSink(i8* %data) #0 !dbg !350 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata i32* %i, metadata !353, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.declare(metadata i32* %n, metadata !356, metadata !DIExpression()), !dbg !357
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load i8*, i8** %data.addr, align 8, !dbg !360
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i32* %n) #8, !dbg !362
  %cmp = icmp eq i32 %call, 1, !dbg !363
  br i1 %cmp, label %if.then, label %if.end5, !dbg !364

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !365
  %cmp1 = icmp slt i32 %1, 10000, !dbg !368
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !369

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !370
  store i32 0, i32* %i, align 4, !dbg !372
  br label %for.cond, !dbg !374

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !375
  %3 = load i32, i32* %n, align 4, !dbg !377
  %cmp3 = icmp slt i32 %2, %3, !dbg !378
  br i1 %cmp3, label %for.body, label %for.end, !dbg !379

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !380
  %inc = add nsw i32 %4, 1, !dbg !380
  store i32 %inc, i32* %intVariable, align 4, !dbg !380
  br label %for.inc, !dbg !382

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !383
  %inc4 = add nsw i32 %5, 1, !dbg !383
  store i32 %inc4, i32* %i, align 4, !dbg !383
  br label %for.cond, !dbg !384, !llvm.loop !385

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !387
  call void @printIntLine(i32 %6), !dbg !388
  br label %if.end, !dbg !389

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !390

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !392 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !393, metadata !DIExpression()), !dbg !394
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)), !dbg !395
  %0 = load i8*, i8** %line.addr, align 8, !dbg !396
  %cmp = icmp ne i8* %0, null, !dbg !398
  br i1 %cmp, label %if.then, label %if.end, !dbg !399

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !400
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.23, i64 0, i64 0), i8* %1), !dbg !402
  br label %if.end, !dbg !403

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.24, i64 0, i64 0)), !dbg !404
  ret void, !dbg !405
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !406 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !407, metadata !DIExpression()), !dbg !408
  %0 = load i8*, i8** %line.addr, align 8, !dbg !409
  %cmp = icmp ne i8* %0, null, !dbg !411
  br i1 %cmp, label %if.then, label %if.end, !dbg !412

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !413
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.23, i64 0, i64 0), i8* %1), !dbg !415
  br label %if.end, !dbg !416

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !418 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = load i32*, i32** %line.addr, align 8, !dbg !425
  %cmp = icmp ne i32* %0, null, !dbg !427
  br i1 %cmp, label %if.then, label %if.end, !dbg !428

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !429
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.25, i64 0, i64 0), i32* %1), !dbg !431
  br label %if.end, !dbg !432

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !433
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !434 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !437, metadata !DIExpression()), !dbg !438
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !439
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !440
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !442 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !448
  %conv = sext i16 %0 to i32, !dbg !448
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !449
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !451 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !457
  %conv = fpext float %0 to double, !dbg !457
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !458
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !460 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !463, metadata !DIExpression()), !dbg !464
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !465
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !466
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !468 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !474, metadata !DIExpression()), !dbg !475
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !476
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !477
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !479 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !482, metadata !DIExpression()), !dbg !483
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !484
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !485
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !487 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !490, metadata !DIExpression()), !dbg !491
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !492
  %conv = sext i8 %0 to i32, !dbg !492
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !493
  ret void, !dbg !494
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !495 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !498, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !500, metadata !DIExpression()), !dbg !504
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !505
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !506
  store i32 %0, i32* %arrayidx, align 4, !dbg !507
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !508
  store i32 0, i32* %arrayidx1, align 4, !dbg !509
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !510
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !511
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !513 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !516, metadata !DIExpression()), !dbg !517
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !518
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !519
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !521 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !524, metadata !DIExpression()), !dbg !525
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !526
  %conv = zext i8 %0 to i32, !dbg !526
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !527
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !529 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !533, metadata !DIExpression()), !dbg !534
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !535
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !536
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !538 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !548, metadata !DIExpression()), !dbg !549
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !550
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !551
  %1 = load i32, i32* %intOne, align 4, !dbg !551
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !552
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !553
  %3 = load i32, i32* %intTwo, align 4, !dbg !553
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !554
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !556 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !560, metadata !DIExpression()), !dbg !561
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.declare(metadata i64* %i, metadata !564, metadata !DIExpression()), !dbg !565
  store i64 0, i64* %i, align 8, !dbg !566
  br label %for.cond, !dbg !568

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !569
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !571
  %cmp = icmp ult i64 %0, %1, !dbg !572
  br i1 %cmp, label %for.body, label %for.end, !dbg !573

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !574
  %3 = load i64, i64* %i, align 8, !dbg !576
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !574
  %4 = load i8, i8* %arrayidx, align 1, !dbg !574
  %conv = zext i8 %4 to i32, !dbg !574
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !577
  br label %for.inc, !dbg !578

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !579
  %inc = add i64 %5, 1, !dbg !579
  store i64 %inc, i64* %i, align 8, !dbg !579
  br label %for.cond, !dbg !580, !llvm.loop !581

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15.28, i64 0, i64 0)), !dbg !583
  ret void, !dbg !584
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !585 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !588, metadata !DIExpression()), !dbg !589
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !590, metadata !DIExpression()), !dbg !591
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !592, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !594, metadata !DIExpression()), !dbg !595
  store i64 0, i64* %numWritten, align 8, !dbg !595
  br label %while.cond, !dbg !596

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !597
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !598
  %cmp = icmp ult i64 %0, %1, !dbg !599
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !600

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !601
  %2 = load i16*, i16** %call, align 8, !dbg !601
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !601
  %4 = load i64, i64* %numWritten, align 8, !dbg !601
  %mul = mul i64 2, %4, !dbg !601
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !601
  %5 = load i8, i8* %arrayidx, align 1, !dbg !601
  %conv = sext i8 %5 to i32, !dbg !601
  %idxprom = sext i32 %conv to i64, !dbg !601
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !601
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !601
  %conv2 = zext i16 %6 to i32, !dbg !601
  %and = and i32 %conv2, 4096, !dbg !601
  %tobool = icmp ne i32 %and, 0, !dbg !601
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !602

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !603
  %7 = load i16*, i16** %call3, align 8, !dbg !603
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !603
  %9 = load i64, i64* %numWritten, align 8, !dbg !603
  %mul4 = mul i64 2, %9, !dbg !603
  %add = add i64 %mul4, 1, !dbg !603
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !603
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !603
  %conv6 = sext i8 %10 to i32, !dbg !603
  %idxprom7 = sext i32 %conv6 to i64, !dbg !603
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !603
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !603
  %conv9 = zext i16 %11 to i32, !dbg !603
  %and10 = and i32 %conv9, 4096, !dbg !603
  %tobool11 = icmp ne i32 %and10, 0, !dbg !602
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !604
  br i1 %12, label %while.body, label %while.end, !dbg !596

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !605, metadata !DIExpression()), !dbg !607
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !608
  %14 = load i64, i64* %numWritten, align 8, !dbg !609
  %mul12 = mul i64 2, %14, !dbg !610
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !608
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !611
  %15 = load i32, i32* %byte, align 4, !dbg !612
  %conv15 = trunc i32 %15 to i8, !dbg !613
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !614
  %17 = load i64, i64* %numWritten, align 8, !dbg !615
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !614
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !616
  %18 = load i64, i64* %numWritten, align 8, !dbg !617
  %inc = add i64 %18, 1, !dbg !617
  store i64 %inc, i64* %numWritten, align 8, !dbg !617
  br label %while.cond, !dbg !596, !llvm.loop !618

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !620
  ret i64 %19, !dbg !621
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !622 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !625, metadata !DIExpression()), !dbg !626
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !627, metadata !DIExpression()), !dbg !628
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !629, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !631, metadata !DIExpression()), !dbg !632
  store i64 0, i64* %numWritten, align 8, !dbg !632
  br label %while.cond, !dbg !633

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !634
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !635
  %cmp = icmp ult i64 %0, %1, !dbg !636
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !637

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !638
  %3 = load i64, i64* %numWritten, align 8, !dbg !639
  %mul = mul i64 2, %3, !dbg !640
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !638
  %4 = load i32, i32* %arrayidx, align 4, !dbg !638
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !641
  %tobool = icmp ne i32 %call, 0, !dbg !641
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !642

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !643
  %6 = load i64, i64* %numWritten, align 8, !dbg !644
  %mul1 = mul i64 2, %6, !dbg !645
  %add = add i64 %mul1, 1, !dbg !646
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !643
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !643
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !647
  %tobool4 = icmp ne i32 %call3, 0, !dbg !642
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !648
  br i1 %8, label %while.body, label %while.end, !dbg !633

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !649, metadata !DIExpression()), !dbg !651
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !652
  %10 = load i64, i64* %numWritten, align 8, !dbg !653
  %mul5 = mul i64 2, %10, !dbg !654
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !652
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !655
  %11 = load i32, i32* %byte, align 4, !dbg !656
  %conv = trunc i32 %11 to i8, !dbg !657
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !658
  %13 = load i64, i64* %numWritten, align 8, !dbg !659
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !658
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !660
  %14 = load i64, i64* %numWritten, align 8, !dbg !661
  %inc = add i64 %14, 1, !dbg !661
  store i64 %inc, i64* %numWritten, align 8, !dbg !661
  br label %while.cond, !dbg !633, !llvm.loop !662

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !664
  ret i64 %15, !dbg !665
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !666 {
entry:
  ret i32 1, !dbg !669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !670 {
entry:
  ret i32 0, !dbg !671
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !672 {
entry:
  %call = call i32 @rand() #8, !dbg !673
  %rem = srem i32 %call, 2, !dbg !674
  ret i32 %rem, !dbg !675
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !676 {
entry:
  ret void, !dbg !677
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !678 {
entry:
  ret void, !dbg !679
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !680 {
entry:
  ret void, !dbg !681
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !682 {
entry:
  ret void, !dbg !683
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !684 {
entry:
  ret void, !dbg !685
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !686 {
entry:
  ret void, !dbg !687
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !688 {
entry:
  ret void, !dbg !689
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !690 {
entry:
  ret void, !dbg !691
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !692 {
entry:
  ret void, !dbg !693
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !694 {
entry:
  ret void, !dbg !695
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !696 {
entry:
  ret void, !dbg !697
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !698 {
entry:
  ret void, !dbg !699
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !700 {
entry:
  ret void, !dbg !701
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !702 {
entry:
  ret void, !dbg !703
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !704 {
entry:
  ret void, !dbg !705
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !706 {
entry:
  ret void, !dbg !707
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !708 {
entry:
  ret void, !dbg !709
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !710 {
entry:
  ret void, !dbg !711
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

!llvm.dbg.cu = !{!44, !48, !50, !52, !2}
!llvm.ident = !{!54, !54, !54, !54, !54}
!llvm.module.flags = !{!55, !56, !57}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_105/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_53a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_105/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_53b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_105/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_53c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_105/source_code")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_53d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_105/source_code")
!54 = !{!"clang version 12.0.0"}
!55 = !{i32 7, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_53_bad", scope: !45, file: !45, line: 37, type: !59, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocalVariable(name: "data", scope: !58, file: !45, line: 39, type: !42)
!62 = !DILocation(line: 39, column: 12, scope: !58)
!63 = !DILocalVariable(name: "dataBuffer", scope: !58, file: !45, line: 40, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 100)
!67 = !DILocation(line: 40, column: 10, scope: !58)
!68 = !DILocation(line: 41, column: 12, scope: !58)
!69 = !DILocation(line: 41, column: 10, scope: !58)
!70 = !DILocalVariable(name: "dataLen", scope: !71, file: !45, line: 44, type: !72)
!71 = distinct !DILexicalBlock(scope: !58, file: !45, line: 42, column: 5)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !73, line: 46, baseType: !74)
!73 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!74 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!75 = !DILocation(line: 44, column: 16, scope: !71)
!76 = !DILocation(line: 44, column: 33, scope: !71)
!77 = !DILocation(line: 44, column: 26, scope: !71)
!78 = !DILocalVariable(name: "pFile", scope: !71, file: !45, line: 45, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !81, line: 7, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !83, line: 49, size: 1728, elements: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !100, !102, !103, !104, !108, !109, !111, !115, !118, !120, !123, !126, !127, !128, !129, !130}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !82, file: !83, line: 51, baseType: !23, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !82, file: !83, line: 54, baseType: !42, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !82, file: !83, line: 55, baseType: !42, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !82, file: !83, line: 56, baseType: !42, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !82, file: !83, line: 57, baseType: !42, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !82, file: !83, line: 58, baseType: !42, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !82, file: !83, line: 59, baseType: !42, size: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !82, file: !83, line: 60, baseType: !42, size: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !82, file: !83, line: 61, baseType: !42, size: 64, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !82, file: !83, line: 64, baseType: !42, size: 64, offset: 576)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !82, file: !83, line: 65, baseType: !42, size: 64, offset: 640)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !82, file: !83, line: 66, baseType: !42, size: 64, offset: 704)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !82, file: !83, line: 68, baseType: !98, size: 64, offset: 768)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !83, line: 36, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !82, file: !83, line: 70, baseType: !101, size: 64, offset: 832)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !82, file: !83, line: 72, baseType: !23, size: 32, offset: 896)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !82, file: !83, line: 73, baseType: !23, size: 32, offset: 928)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !82, file: !83, line: 74, baseType: !105, size: 64, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !106, line: 152, baseType: !107)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!107 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !82, file: !83, line: 77, baseType: !24, size: 16, offset: 1024)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !82, file: !83, line: 78, baseType: !110, size: 8, offset: 1040)
!110 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !82, file: !83, line: 79, baseType: !112, size: 8, offset: 1048)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 1)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !82, file: !83, line: 81, baseType: !116, size: 64, offset: 1088)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !83, line: 43, baseType: null)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !82, file: !83, line: 89, baseType: !119, size: 64, offset: 1152)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !106, line: 153, baseType: !107)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !82, file: !83, line: 91, baseType: !121, size: 64, offset: 1216)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !83, line: 37, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !82, file: !83, line: 92, baseType: !124, size: 64, offset: 1280)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !83, line: 38, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !82, file: !83, line: 93, baseType: !101, size: 64, offset: 1344)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !82, file: !83, line: 94, baseType: !22, size: 64, offset: 1408)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !82, file: !83, line: 95, baseType: !72, size: 64, offset: 1472)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !82, file: !83, line: 96, baseType: !23, size: 32, offset: 1536)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !82, file: !83, line: 98, baseType: !131, size: 160, offset: 1568)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 20)
!134 = !DILocation(line: 45, column: 16, scope: !71)
!135 = !DILocation(line: 47, column: 17, scope: !136)
!136 = distinct !DILexicalBlock(scope: !71, file: !45, line: 47, column: 13)
!137 = !DILocation(line: 47, column: 16, scope: !136)
!138 = !DILocation(line: 47, column: 25, scope: !136)
!139 = !DILocation(line: 47, column: 13, scope: !71)
!140 = !DILocation(line: 49, column: 21, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !45, line: 48, column: 9)
!142 = !DILocation(line: 49, column: 19, scope: !141)
!143 = !DILocation(line: 50, column: 17, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !45, line: 50, column: 17)
!145 = !DILocation(line: 50, column: 23, scope: !144)
!146 = !DILocation(line: 50, column: 17, scope: !141)
!147 = !DILocation(line: 53, column: 27, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !45, line: 53, column: 21)
!149 = distinct !DILexicalBlock(scope: !144, file: !45, line: 51, column: 13)
!150 = !DILocation(line: 53, column: 32, scope: !148)
!151 = !DILocation(line: 53, column: 31, scope: !148)
!152 = !DILocation(line: 53, column: 51, scope: !148)
!153 = !DILocation(line: 53, column: 50, scope: !148)
!154 = !DILocation(line: 53, column: 41, scope: !148)
!155 = !DILocation(line: 53, column: 61, scope: !148)
!156 = !DILocation(line: 53, column: 21, scope: !148)
!157 = !DILocation(line: 53, column: 68, scope: !148)
!158 = !DILocation(line: 53, column: 21, scope: !149)
!159 = !DILocation(line: 55, column: 21, scope: !160)
!160 = distinct !DILexicalBlock(scope: !148, file: !45, line: 54, column: 17)
!161 = !DILocation(line: 57, column: 21, scope: !160)
!162 = !DILocation(line: 57, column: 26, scope: !160)
!163 = !DILocation(line: 57, column: 35, scope: !160)
!164 = !DILocation(line: 58, column: 17, scope: !160)
!165 = !DILocation(line: 59, column: 24, scope: !149)
!166 = !DILocation(line: 59, column: 17, scope: !149)
!167 = !DILocation(line: 60, column: 13, scope: !149)
!168 = !DILocation(line: 61, column: 9, scope: !141)
!169 = !DILocation(line: 63, column: 60, scope: !58)
!170 = !DILocation(line: 63, column: 5, scope: !58)
!171 = !DILocation(line: 64, column: 1, scope: !58)
!172 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 72, type: !59, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!173 = !DILocalVariable(name: "data", scope: !172, file: !45, line: 74, type: !42)
!174 = !DILocation(line: 74, column: 12, scope: !172)
!175 = !DILocalVariable(name: "dataBuffer", scope: !172, file: !45, line: 75, type: !64)
!176 = !DILocation(line: 75, column: 10, scope: !172)
!177 = !DILocation(line: 76, column: 12, scope: !172)
!178 = !DILocation(line: 76, column: 10, scope: !172)
!179 = !DILocation(line: 78, column: 12, scope: !172)
!180 = !DILocation(line: 78, column: 5, scope: !172)
!181 = !DILocation(line: 79, column: 64, scope: !172)
!182 = !DILocation(line: 79, column: 5, scope: !172)
!183 = !DILocation(line: 80, column: 1, scope: !172)
!184 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 84, type: !59, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!185 = !DILocalVariable(name: "data", scope: !184, file: !45, line: 86, type: !42)
!186 = !DILocation(line: 86, column: 12, scope: !184)
!187 = !DILocalVariable(name: "dataBuffer", scope: !184, file: !45, line: 87, type: !64)
!188 = !DILocation(line: 87, column: 10, scope: !184)
!189 = !DILocation(line: 88, column: 12, scope: !184)
!190 = !DILocation(line: 88, column: 10, scope: !184)
!191 = !DILocalVariable(name: "dataLen", scope: !192, file: !45, line: 91, type: !72)
!192 = distinct !DILexicalBlock(scope: !184, file: !45, line: 89, column: 5)
!193 = !DILocation(line: 91, column: 16, scope: !192)
!194 = !DILocation(line: 91, column: 33, scope: !192)
!195 = !DILocation(line: 91, column: 26, scope: !192)
!196 = !DILocalVariable(name: "pFile", scope: !192, file: !45, line: 92, type: !79)
!197 = !DILocation(line: 92, column: 16, scope: !192)
!198 = !DILocation(line: 94, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !45, line: 94, column: 13)
!200 = !DILocation(line: 94, column: 16, scope: !199)
!201 = !DILocation(line: 94, column: 25, scope: !199)
!202 = !DILocation(line: 94, column: 13, scope: !192)
!203 = !DILocation(line: 96, column: 21, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !45, line: 95, column: 9)
!205 = !DILocation(line: 96, column: 19, scope: !204)
!206 = !DILocation(line: 97, column: 17, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !45, line: 97, column: 17)
!208 = !DILocation(line: 97, column: 23, scope: !207)
!209 = !DILocation(line: 97, column: 17, scope: !204)
!210 = !DILocation(line: 100, column: 27, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !45, line: 100, column: 21)
!212 = distinct !DILexicalBlock(scope: !207, file: !45, line: 98, column: 13)
!213 = !DILocation(line: 100, column: 32, scope: !211)
!214 = !DILocation(line: 100, column: 31, scope: !211)
!215 = !DILocation(line: 100, column: 51, scope: !211)
!216 = !DILocation(line: 100, column: 50, scope: !211)
!217 = !DILocation(line: 100, column: 41, scope: !211)
!218 = !DILocation(line: 100, column: 61, scope: !211)
!219 = !DILocation(line: 100, column: 21, scope: !211)
!220 = !DILocation(line: 100, column: 68, scope: !211)
!221 = !DILocation(line: 100, column: 21, scope: !212)
!222 = !DILocation(line: 102, column: 21, scope: !223)
!223 = distinct !DILexicalBlock(scope: !211, file: !45, line: 101, column: 17)
!224 = !DILocation(line: 104, column: 21, scope: !223)
!225 = !DILocation(line: 104, column: 26, scope: !223)
!226 = !DILocation(line: 104, column: 35, scope: !223)
!227 = !DILocation(line: 105, column: 17, scope: !223)
!228 = !DILocation(line: 106, column: 24, scope: !212)
!229 = !DILocation(line: 106, column: 17, scope: !212)
!230 = !DILocation(line: 107, column: 13, scope: !212)
!231 = !DILocation(line: 108, column: 9, scope: !204)
!232 = !DILocation(line: 110, column: 64, scope: !184)
!233 = !DILocation(line: 110, column: 5, scope: !184)
!234 = !DILocation(line: 111, column: 1, scope: !184)
!235 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_53_good", scope: !45, file: !45, line: 113, type: !59, scopeLine: 114, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!236 = !DILocation(line: 115, column: 5, scope: !235)
!237 = !DILocation(line: 116, column: 5, scope: !235)
!238 = !DILocation(line: 117, column: 1, scope: !235)
!239 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_53b_badSink", scope: !49, file: !49, line: 37, type: !240, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !42}
!242 = !DILocalVariable(name: "data", arg: 1, scope: !239, file: !49, line: 37, type: !42)
!243 = !DILocation(line: 37, column: 68, scope: !239)
!244 = !DILocation(line: 39, column: 60, scope: !239)
!245 = !DILocation(line: 39, column: 5, scope: !239)
!246 = !DILocation(line: 40, column: 1, scope: !239)
!247 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_53b_goodG2BSink", scope: !49, file: !49, line: 49, type: !240, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!248 = !DILocalVariable(name: "data", arg: 1, scope: !247, file: !49, line: 49, type: !42)
!249 = !DILocation(line: 49, column: 72, scope: !247)
!250 = !DILocation(line: 51, column: 64, scope: !247)
!251 = !DILocation(line: 51, column: 5, scope: !247)
!252 = !DILocation(line: 52, column: 1, scope: !247)
!253 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_53b_goodB2GSink", scope: !49, file: !49, line: 57, type: !240, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!254 = !DILocalVariable(name: "data", arg: 1, scope: !253, file: !49, line: 57, type: !42)
!255 = !DILocation(line: 57, column: 72, scope: !253)
!256 = !DILocation(line: 59, column: 64, scope: !253)
!257 = !DILocation(line: 59, column: 5, scope: !253)
!258 = !DILocation(line: 60, column: 1, scope: !253)
!259 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_53c_badSink", scope: !51, file: !51, line: 37, type: !240, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!260 = !DILocalVariable(name: "data", arg: 1, scope: !259, file: !51, line: 37, type: !42)
!261 = !DILocation(line: 37, column: 68, scope: !259)
!262 = !DILocation(line: 39, column: 60, scope: !259)
!263 = !DILocation(line: 39, column: 5, scope: !259)
!264 = !DILocation(line: 40, column: 1, scope: !259)
!265 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_53c_goodG2BSink", scope: !51, file: !51, line: 49, type: !240, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!266 = !DILocalVariable(name: "data", arg: 1, scope: !265, file: !51, line: 49, type: !42)
!267 = !DILocation(line: 49, column: 72, scope: !265)
!268 = !DILocation(line: 51, column: 64, scope: !265)
!269 = !DILocation(line: 51, column: 5, scope: !265)
!270 = !DILocation(line: 52, column: 1, scope: !265)
!271 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_53c_goodB2GSink", scope: !51, file: !51, line: 57, type: !240, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!272 = !DILocalVariable(name: "data", arg: 1, scope: !271, file: !51, line: 57, type: !42)
!273 = !DILocation(line: 57, column: 72, scope: !271)
!274 = !DILocation(line: 59, column: 64, scope: !271)
!275 = !DILocation(line: 59, column: 5, scope: !271)
!276 = !DILocation(line: 60, column: 1, scope: !271)
!277 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_53d_badSink", scope: !53, file: !53, line: 34, type: !240, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!278 = !DILocalVariable(name: "data", arg: 1, scope: !277, file: !53, line: 34, type: !42)
!279 = !DILocation(line: 34, column: 68, scope: !277)
!280 = !DILocalVariable(name: "i", scope: !281, file: !53, line: 37, type: !23)
!281 = distinct !DILexicalBlock(scope: !277, file: !53, line: 36, column: 5)
!282 = !DILocation(line: 37, column: 13, scope: !281)
!283 = !DILocalVariable(name: "n", scope: !281, file: !53, line: 37, type: !23)
!284 = !DILocation(line: 37, column: 16, scope: !281)
!285 = !DILocalVariable(name: "intVariable", scope: !281, file: !53, line: 37, type: !23)
!286 = !DILocation(line: 37, column: 19, scope: !281)
!287 = !DILocation(line: 38, column: 20, scope: !288)
!288 = distinct !DILexicalBlock(scope: !281, file: !53, line: 38, column: 13)
!289 = !DILocation(line: 38, column: 13, scope: !288)
!290 = !DILocation(line: 38, column: 36, scope: !288)
!291 = !DILocation(line: 38, column: 13, scope: !281)
!292 = !DILocation(line: 41, column: 25, scope: !293)
!293 = distinct !DILexicalBlock(scope: !288, file: !53, line: 39, column: 9)
!294 = !DILocation(line: 42, column: 20, scope: !295)
!295 = distinct !DILexicalBlock(scope: !293, file: !53, line: 42, column: 13)
!296 = !DILocation(line: 42, column: 18, scope: !295)
!297 = !DILocation(line: 42, column: 25, scope: !298)
!298 = distinct !DILexicalBlock(scope: !295, file: !53, line: 42, column: 13)
!299 = !DILocation(line: 42, column: 29, scope: !298)
!300 = !DILocation(line: 42, column: 27, scope: !298)
!301 = !DILocation(line: 42, column: 13, scope: !295)
!302 = !DILocation(line: 45, column: 28, scope: !303)
!303 = distinct !DILexicalBlock(scope: !298, file: !53, line: 43, column: 13)
!304 = !DILocation(line: 46, column: 13, scope: !303)
!305 = !DILocation(line: 42, column: 33, scope: !298)
!306 = !DILocation(line: 42, column: 13, scope: !298)
!307 = distinct !{!307, !301, !308, !309}
!308 = !DILocation(line: 46, column: 13, scope: !295)
!309 = !{!"llvm.loop.mustprogress"}
!310 = !DILocation(line: 47, column: 26, scope: !293)
!311 = !DILocation(line: 47, column: 13, scope: !293)
!312 = !DILocation(line: 48, column: 9, scope: !293)
!313 = !DILocation(line: 50, column: 1, scope: !277)
!314 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_53d_goodG2BSink", scope: !53, file: !53, line: 57, type: !240, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!315 = !DILocalVariable(name: "data", arg: 1, scope: !314, file: !53, line: 57, type: !42)
!316 = !DILocation(line: 57, column: 72, scope: !314)
!317 = !DILocalVariable(name: "i", scope: !318, file: !53, line: 60, type: !23)
!318 = distinct !DILexicalBlock(scope: !314, file: !53, line: 59, column: 5)
!319 = !DILocation(line: 60, column: 13, scope: !318)
!320 = !DILocalVariable(name: "n", scope: !318, file: !53, line: 60, type: !23)
!321 = !DILocation(line: 60, column: 16, scope: !318)
!322 = !DILocalVariable(name: "intVariable", scope: !318, file: !53, line: 60, type: !23)
!323 = !DILocation(line: 60, column: 19, scope: !318)
!324 = !DILocation(line: 61, column: 20, scope: !325)
!325 = distinct !DILexicalBlock(scope: !318, file: !53, line: 61, column: 13)
!326 = !DILocation(line: 61, column: 13, scope: !325)
!327 = !DILocation(line: 61, column: 36, scope: !325)
!328 = !DILocation(line: 61, column: 13, scope: !318)
!329 = !DILocation(line: 64, column: 25, scope: !330)
!330 = distinct !DILexicalBlock(scope: !325, file: !53, line: 62, column: 9)
!331 = !DILocation(line: 65, column: 20, scope: !332)
!332 = distinct !DILexicalBlock(scope: !330, file: !53, line: 65, column: 13)
!333 = !DILocation(line: 65, column: 18, scope: !332)
!334 = !DILocation(line: 65, column: 25, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !53, line: 65, column: 13)
!336 = !DILocation(line: 65, column: 29, scope: !335)
!337 = !DILocation(line: 65, column: 27, scope: !335)
!338 = !DILocation(line: 65, column: 13, scope: !332)
!339 = !DILocation(line: 68, column: 28, scope: !340)
!340 = distinct !DILexicalBlock(scope: !335, file: !53, line: 66, column: 13)
!341 = !DILocation(line: 69, column: 13, scope: !340)
!342 = !DILocation(line: 65, column: 33, scope: !335)
!343 = !DILocation(line: 65, column: 13, scope: !335)
!344 = distinct !{!344, !338, !345, !309}
!345 = !DILocation(line: 69, column: 13, scope: !332)
!346 = !DILocation(line: 70, column: 26, scope: !330)
!347 = !DILocation(line: 70, column: 13, scope: !330)
!348 = !DILocation(line: 71, column: 9, scope: !330)
!349 = !DILocation(line: 73, column: 1, scope: !314)
!350 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_53d_goodB2GSink", scope: !53, file: !53, line: 76, type: !240, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!351 = !DILocalVariable(name: "data", arg: 1, scope: !350, file: !53, line: 76, type: !42)
!352 = !DILocation(line: 76, column: 72, scope: !350)
!353 = !DILocalVariable(name: "i", scope: !354, file: !53, line: 79, type: !23)
!354 = distinct !DILexicalBlock(scope: !350, file: !53, line: 78, column: 5)
!355 = !DILocation(line: 79, column: 13, scope: !354)
!356 = !DILocalVariable(name: "n", scope: !354, file: !53, line: 79, type: !23)
!357 = !DILocation(line: 79, column: 16, scope: !354)
!358 = !DILocalVariable(name: "intVariable", scope: !354, file: !53, line: 79, type: !23)
!359 = !DILocation(line: 79, column: 19, scope: !354)
!360 = !DILocation(line: 80, column: 20, scope: !361)
!361 = distinct !DILexicalBlock(scope: !354, file: !53, line: 80, column: 13)
!362 = !DILocation(line: 80, column: 13, scope: !361)
!363 = !DILocation(line: 80, column: 36, scope: !361)
!364 = !DILocation(line: 80, column: 13, scope: !354)
!365 = !DILocation(line: 83, column: 17, scope: !366)
!366 = distinct !DILexicalBlock(scope: !367, file: !53, line: 83, column: 17)
!367 = distinct !DILexicalBlock(scope: !361, file: !53, line: 81, column: 9)
!368 = !DILocation(line: 83, column: 19, scope: !366)
!369 = !DILocation(line: 83, column: 17, scope: !367)
!370 = !DILocation(line: 85, column: 29, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !53, line: 84, column: 13)
!372 = !DILocation(line: 86, column: 24, scope: !373)
!373 = distinct !DILexicalBlock(scope: !371, file: !53, line: 86, column: 17)
!374 = !DILocation(line: 86, column: 22, scope: !373)
!375 = !DILocation(line: 86, column: 29, scope: !376)
!376 = distinct !DILexicalBlock(scope: !373, file: !53, line: 86, column: 17)
!377 = !DILocation(line: 86, column: 33, scope: !376)
!378 = !DILocation(line: 86, column: 31, scope: !376)
!379 = !DILocation(line: 86, column: 17, scope: !373)
!380 = !DILocation(line: 89, column: 32, scope: !381)
!381 = distinct !DILexicalBlock(scope: !376, file: !53, line: 87, column: 17)
!382 = !DILocation(line: 90, column: 17, scope: !381)
!383 = !DILocation(line: 86, column: 37, scope: !376)
!384 = !DILocation(line: 86, column: 17, scope: !376)
!385 = distinct !{!385, !379, !386, !309}
!386 = !DILocation(line: 90, column: 17, scope: !373)
!387 = !DILocation(line: 91, column: 30, scope: !371)
!388 = !DILocation(line: 91, column: 17, scope: !371)
!389 = !DILocation(line: 92, column: 13, scope: !371)
!390 = !DILocation(line: 93, column: 9, scope: !367)
!391 = !DILocation(line: 95, column: 1, scope: !350)
!392 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !240, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!393 = !DILocalVariable(name: "line", arg: 1, scope: !392, file: !3, line: 11, type: !42)
!394 = !DILocation(line: 11, column: 25, scope: !392)
!395 = !DILocation(line: 13, column: 1, scope: !392)
!396 = !DILocation(line: 14, column: 8, scope: !397)
!397 = distinct !DILexicalBlock(scope: !392, file: !3, line: 14, column: 8)
!398 = !DILocation(line: 14, column: 13, scope: !397)
!399 = !DILocation(line: 14, column: 8, scope: !392)
!400 = !DILocation(line: 16, column: 24, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !3, line: 15, column: 5)
!402 = !DILocation(line: 16, column: 9, scope: !401)
!403 = !DILocation(line: 17, column: 5, scope: !401)
!404 = !DILocation(line: 18, column: 5, scope: !392)
!405 = !DILocation(line: 19, column: 1, scope: !392)
!406 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !240, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!407 = !DILocalVariable(name: "line", arg: 1, scope: !406, file: !3, line: 20, type: !42)
!408 = !DILocation(line: 20, column: 29, scope: !406)
!409 = !DILocation(line: 22, column: 8, scope: !410)
!410 = distinct !DILexicalBlock(scope: !406, file: !3, line: 22, column: 8)
!411 = !DILocation(line: 22, column: 13, scope: !410)
!412 = !DILocation(line: 22, column: 8, scope: !406)
!413 = !DILocation(line: 24, column: 24, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !3, line: 23, column: 5)
!415 = !DILocation(line: 24, column: 9, scope: !414)
!416 = !DILocation(line: 25, column: 5, scope: !414)
!417 = !DILocation(line: 26, column: 1, scope: !406)
!418 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !419, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !421}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !73, line: 74, baseType: !23)
!423 = !DILocalVariable(name: "line", arg: 1, scope: !418, file: !3, line: 27, type: !421)
!424 = !DILocation(line: 27, column: 29, scope: !418)
!425 = !DILocation(line: 29, column: 8, scope: !426)
!426 = distinct !DILexicalBlock(scope: !418, file: !3, line: 29, column: 8)
!427 = !DILocation(line: 29, column: 13, scope: !426)
!428 = !DILocation(line: 29, column: 8, scope: !418)
!429 = !DILocation(line: 31, column: 27, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !3, line: 30, column: 5)
!431 = !DILocation(line: 31, column: 9, scope: !430)
!432 = !DILocation(line: 32, column: 5, scope: !430)
!433 = !DILocation(line: 33, column: 1, scope: !418)
!434 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !435, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !23}
!437 = !DILocalVariable(name: "intNumber", arg: 1, scope: !434, file: !3, line: 35, type: !23)
!438 = !DILocation(line: 35, column: 24, scope: !434)
!439 = !DILocation(line: 37, column: 20, scope: !434)
!440 = !DILocation(line: 37, column: 5, scope: !434)
!441 = !DILocation(line: 38, column: 1, scope: !434)
!442 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !443, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !445}
!445 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!446 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !442, file: !3, line: 40, type: !445)
!447 = !DILocation(line: 40, column: 28, scope: !442)
!448 = !DILocation(line: 42, column: 21, scope: !442)
!449 = !DILocation(line: 42, column: 5, scope: !442)
!450 = !DILocation(line: 43, column: 1, scope: !442)
!451 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !452, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !454}
!454 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!455 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !451, file: !3, line: 45, type: !454)
!456 = !DILocation(line: 45, column: 28, scope: !451)
!457 = !DILocation(line: 47, column: 20, scope: !451)
!458 = !DILocation(line: 47, column: 5, scope: !451)
!459 = !DILocation(line: 48, column: 1, scope: !451)
!460 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !461, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !107}
!463 = !DILocalVariable(name: "longNumber", arg: 1, scope: !460, file: !3, line: 50, type: !107)
!464 = !DILocation(line: 50, column: 26, scope: !460)
!465 = !DILocation(line: 52, column: 21, scope: !460)
!466 = !DILocation(line: 52, column: 5, scope: !460)
!467 = !DILocation(line: 53, column: 1, scope: !460)
!468 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !469, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !471}
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !472, line: 27, baseType: !473)
!472 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !106, line: 44, baseType: !107)
!474 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !468, file: !3, line: 55, type: !471)
!475 = !DILocation(line: 55, column: 33, scope: !468)
!476 = !DILocation(line: 57, column: 29, scope: !468)
!477 = !DILocation(line: 57, column: 5, scope: !468)
!478 = !DILocation(line: 58, column: 1, scope: !468)
!479 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !480, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !72}
!482 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !479, file: !3, line: 60, type: !72)
!483 = !DILocation(line: 60, column: 29, scope: !479)
!484 = !DILocation(line: 62, column: 21, scope: !479)
!485 = !DILocation(line: 62, column: 5, scope: !479)
!486 = !DILocation(line: 63, column: 1, scope: !479)
!487 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !488, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !43}
!490 = !DILocalVariable(name: "charHex", arg: 1, scope: !487, file: !3, line: 65, type: !43)
!491 = !DILocation(line: 65, column: 29, scope: !487)
!492 = !DILocation(line: 67, column: 22, scope: !487)
!493 = !DILocation(line: 67, column: 5, scope: !487)
!494 = !DILocation(line: 68, column: 1, scope: !487)
!495 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !496, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !422}
!498 = !DILocalVariable(name: "wideChar", arg: 1, scope: !495, file: !3, line: 70, type: !422)
!499 = !DILocation(line: 70, column: 29, scope: !495)
!500 = !DILocalVariable(name: "s", scope: !495, file: !3, line: 74, type: !501)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !422, size: 64, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 2)
!504 = !DILocation(line: 74, column: 13, scope: !495)
!505 = !DILocation(line: 75, column: 16, scope: !495)
!506 = !DILocation(line: 75, column: 9, scope: !495)
!507 = !DILocation(line: 75, column: 14, scope: !495)
!508 = !DILocation(line: 76, column: 9, scope: !495)
!509 = !DILocation(line: 76, column: 14, scope: !495)
!510 = !DILocation(line: 77, column: 21, scope: !495)
!511 = !DILocation(line: 77, column: 5, scope: !495)
!512 = !DILocation(line: 78, column: 1, scope: !495)
!513 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !514, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !7}
!516 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !513, file: !3, line: 80, type: !7)
!517 = !DILocation(line: 80, column: 33, scope: !513)
!518 = !DILocation(line: 82, column: 20, scope: !513)
!519 = !DILocation(line: 82, column: 5, scope: !513)
!520 = !DILocation(line: 83, column: 1, scope: !513)
!521 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !522, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !25}
!524 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !521, file: !3, line: 85, type: !25)
!525 = !DILocation(line: 85, column: 45, scope: !521)
!526 = !DILocation(line: 87, column: 22, scope: !521)
!527 = !DILocation(line: 87, column: 5, scope: !521)
!528 = !DILocation(line: 88, column: 1, scope: !521)
!529 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !530, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !532}
!532 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!533 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !529, file: !3, line: 90, type: !532)
!534 = !DILocation(line: 90, column: 29, scope: !529)
!535 = !DILocation(line: 92, column: 20, scope: !529)
!536 = !DILocation(line: 92, column: 5, scope: !529)
!537 = !DILocation(line: 93, column: 1, scope: !529)
!538 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !539, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !541}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !543, line: 100, baseType: !544)
!543 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_105/source_code")
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !543, line: 96, size: 64, elements: !545)
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !544, file: !543, line: 98, baseType: !23, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !544, file: !543, line: 99, baseType: !23, size: 32, offset: 32)
!548 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !538, file: !3, line: 95, type: !541)
!549 = !DILocation(line: 95, column: 40, scope: !538)
!550 = !DILocation(line: 97, column: 26, scope: !538)
!551 = !DILocation(line: 97, column: 47, scope: !538)
!552 = !DILocation(line: 97, column: 55, scope: !538)
!553 = !DILocation(line: 97, column: 76, scope: !538)
!554 = !DILocation(line: 97, column: 5, scope: !538)
!555 = !DILocation(line: 98, column: 1, scope: !538)
!556 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !557, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !559, !72}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!560 = !DILocalVariable(name: "bytes", arg: 1, scope: !556, file: !3, line: 100, type: !559)
!561 = !DILocation(line: 100, column: 38, scope: !556)
!562 = !DILocalVariable(name: "numBytes", arg: 2, scope: !556, file: !3, line: 100, type: !72)
!563 = !DILocation(line: 100, column: 52, scope: !556)
!564 = !DILocalVariable(name: "i", scope: !556, file: !3, line: 102, type: !72)
!565 = !DILocation(line: 102, column: 12, scope: !556)
!566 = !DILocation(line: 103, column: 12, scope: !567)
!567 = distinct !DILexicalBlock(scope: !556, file: !3, line: 103, column: 5)
!568 = !DILocation(line: 103, column: 10, scope: !567)
!569 = !DILocation(line: 103, column: 17, scope: !570)
!570 = distinct !DILexicalBlock(scope: !567, file: !3, line: 103, column: 5)
!571 = !DILocation(line: 103, column: 21, scope: !570)
!572 = !DILocation(line: 103, column: 19, scope: !570)
!573 = !DILocation(line: 103, column: 5, scope: !567)
!574 = !DILocation(line: 105, column: 24, scope: !575)
!575 = distinct !DILexicalBlock(scope: !570, file: !3, line: 104, column: 5)
!576 = !DILocation(line: 105, column: 30, scope: !575)
!577 = !DILocation(line: 105, column: 9, scope: !575)
!578 = !DILocation(line: 106, column: 5, scope: !575)
!579 = !DILocation(line: 103, column: 31, scope: !570)
!580 = !DILocation(line: 103, column: 5, scope: !570)
!581 = distinct !{!581, !573, !582, !309}
!582 = !DILocation(line: 106, column: 5, scope: !567)
!583 = !DILocation(line: 107, column: 5, scope: !556)
!584 = !DILocation(line: 108, column: 1, scope: !556)
!585 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !586, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DISubroutineType(types: !587)
!587 = !{!72, !559, !72, !42}
!588 = !DILocalVariable(name: "bytes", arg: 1, scope: !585, file: !3, line: 113, type: !559)
!589 = !DILocation(line: 113, column: 39, scope: !585)
!590 = !DILocalVariable(name: "numBytes", arg: 2, scope: !585, file: !3, line: 113, type: !72)
!591 = !DILocation(line: 113, column: 53, scope: !585)
!592 = !DILocalVariable(name: "hex", arg: 3, scope: !585, file: !3, line: 113, type: !42)
!593 = !DILocation(line: 113, column: 71, scope: !585)
!594 = !DILocalVariable(name: "numWritten", scope: !585, file: !3, line: 115, type: !72)
!595 = !DILocation(line: 115, column: 12, scope: !585)
!596 = !DILocation(line: 121, column: 5, scope: !585)
!597 = !DILocation(line: 121, column: 12, scope: !585)
!598 = !DILocation(line: 121, column: 25, scope: !585)
!599 = !DILocation(line: 121, column: 23, scope: !585)
!600 = !DILocation(line: 121, column: 34, scope: !585)
!601 = !DILocation(line: 121, column: 37, scope: !585)
!602 = !DILocation(line: 121, column: 67, scope: !585)
!603 = !DILocation(line: 121, column: 70, scope: !585)
!604 = !DILocation(line: 0, scope: !585)
!605 = !DILocalVariable(name: "byte", scope: !606, file: !3, line: 123, type: !23)
!606 = distinct !DILexicalBlock(scope: !585, file: !3, line: 122, column: 5)
!607 = !DILocation(line: 123, column: 13, scope: !606)
!608 = !DILocation(line: 124, column: 17, scope: !606)
!609 = !DILocation(line: 124, column: 25, scope: !606)
!610 = !DILocation(line: 124, column: 23, scope: !606)
!611 = !DILocation(line: 124, column: 9, scope: !606)
!612 = !DILocation(line: 125, column: 45, scope: !606)
!613 = !DILocation(line: 125, column: 29, scope: !606)
!614 = !DILocation(line: 125, column: 9, scope: !606)
!615 = !DILocation(line: 125, column: 15, scope: !606)
!616 = !DILocation(line: 125, column: 27, scope: !606)
!617 = !DILocation(line: 126, column: 9, scope: !606)
!618 = distinct !{!618, !596, !619, !309}
!619 = !DILocation(line: 127, column: 5, scope: !585)
!620 = !DILocation(line: 129, column: 12, scope: !585)
!621 = !DILocation(line: 129, column: 5, scope: !585)
!622 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !623, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!623 = !DISubroutineType(types: !624)
!624 = !{!72, !559, !72, !421}
!625 = !DILocalVariable(name: "bytes", arg: 1, scope: !622, file: !3, line: 135, type: !559)
!626 = !DILocation(line: 135, column: 41, scope: !622)
!627 = !DILocalVariable(name: "numBytes", arg: 2, scope: !622, file: !3, line: 135, type: !72)
!628 = !DILocation(line: 135, column: 55, scope: !622)
!629 = !DILocalVariable(name: "hex", arg: 3, scope: !622, file: !3, line: 135, type: !421)
!630 = !DILocation(line: 135, column: 76, scope: !622)
!631 = !DILocalVariable(name: "numWritten", scope: !622, file: !3, line: 137, type: !72)
!632 = !DILocation(line: 137, column: 12, scope: !622)
!633 = !DILocation(line: 143, column: 5, scope: !622)
!634 = !DILocation(line: 143, column: 12, scope: !622)
!635 = !DILocation(line: 143, column: 25, scope: !622)
!636 = !DILocation(line: 143, column: 23, scope: !622)
!637 = !DILocation(line: 143, column: 34, scope: !622)
!638 = !DILocation(line: 143, column: 47, scope: !622)
!639 = !DILocation(line: 143, column: 55, scope: !622)
!640 = !DILocation(line: 143, column: 53, scope: !622)
!641 = !DILocation(line: 143, column: 37, scope: !622)
!642 = !DILocation(line: 143, column: 68, scope: !622)
!643 = !DILocation(line: 143, column: 81, scope: !622)
!644 = !DILocation(line: 143, column: 89, scope: !622)
!645 = !DILocation(line: 143, column: 87, scope: !622)
!646 = !DILocation(line: 143, column: 100, scope: !622)
!647 = !DILocation(line: 143, column: 71, scope: !622)
!648 = !DILocation(line: 0, scope: !622)
!649 = !DILocalVariable(name: "byte", scope: !650, file: !3, line: 145, type: !23)
!650 = distinct !DILexicalBlock(scope: !622, file: !3, line: 144, column: 5)
!651 = !DILocation(line: 145, column: 13, scope: !650)
!652 = !DILocation(line: 146, column: 18, scope: !650)
!653 = !DILocation(line: 146, column: 26, scope: !650)
!654 = !DILocation(line: 146, column: 24, scope: !650)
!655 = !DILocation(line: 146, column: 9, scope: !650)
!656 = !DILocation(line: 147, column: 45, scope: !650)
!657 = !DILocation(line: 147, column: 29, scope: !650)
!658 = !DILocation(line: 147, column: 9, scope: !650)
!659 = !DILocation(line: 147, column: 15, scope: !650)
!660 = !DILocation(line: 147, column: 27, scope: !650)
!661 = !DILocation(line: 148, column: 9, scope: !650)
!662 = distinct !{!662, !633, !663, !309}
!663 = !DILocation(line: 149, column: 5, scope: !622)
!664 = !DILocation(line: 151, column: 12, scope: !622)
!665 = !DILocation(line: 151, column: 5, scope: !622)
!666 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !667, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!667 = !DISubroutineType(types: !668)
!668 = !{!23}
!669 = !DILocation(line: 158, column: 5, scope: !666)
!670 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !667, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!671 = !DILocation(line: 163, column: 5, scope: !670)
!672 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !667, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!673 = !DILocation(line: 168, column: 13, scope: !672)
!674 = !DILocation(line: 168, column: 20, scope: !672)
!675 = !DILocation(line: 168, column: 5, scope: !672)
!676 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !59, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!677 = !DILocation(line: 187, column: 16, scope: !676)
!678 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !59, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!679 = !DILocation(line: 188, column: 16, scope: !678)
!680 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !59, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!681 = !DILocation(line: 189, column: 16, scope: !680)
!682 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!683 = !DILocation(line: 190, column: 16, scope: !682)
!684 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !59, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!685 = !DILocation(line: 191, column: 16, scope: !684)
!686 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !59, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!687 = !DILocation(line: 192, column: 16, scope: !686)
!688 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !59, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!689 = !DILocation(line: 193, column: 16, scope: !688)
!690 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !59, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!691 = !DILocation(line: 194, column: 16, scope: !690)
!692 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !59, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!693 = !DILocation(line: 195, column: 16, scope: !692)
!694 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !59, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!695 = !DILocation(line: 198, column: 15, scope: !694)
!696 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !59, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!697 = !DILocation(line: 199, column: 15, scope: !696)
!698 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !59, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!699 = !DILocation(line: 200, column: 15, scope: !698)
!700 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !59, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!701 = !DILocation(line: 201, column: 15, scope: !700)
!702 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !59, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!703 = !DILocation(line: 202, column: 15, scope: !702)
!704 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !59, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!705 = !DILocation(line: 203, column: 15, scope: !704)
!706 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !59, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!707 = !DILocation(line: 204, column: 15, scope: !706)
!708 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !59, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!709 = !DILocation(line: 205, column: 15, scope: !708)
!710 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !59, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!711 = !DILocation(line: 206, column: 15, scope: !710)
