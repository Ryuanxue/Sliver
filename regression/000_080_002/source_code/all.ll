; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE134_Uncontrolled_Format_String__char_file_fprintf_68_badData = dso_local global i8* null, align 8, !dbg !0
@CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodG2BData = dso_local global i8* null, align 8, !dbg !9
@CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodB2GData = dso_local global i8* null, align 8, !dbg !13
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
@.str.10 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.12 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.13 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7.14 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10.15 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_68_bad() #0 !dbg !61 {
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
  store i8* %11, i8** @CWE134_Uncontrolled_Format_String__char_file_fprintf_68_badData, align 8, !dbg !173
  call void (...) bitcast (void ()* @CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_badSink to void (...)*)(), !dbg !174
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !184
  %2 = load i8*, i8** %data, align 8, !dbg !185
  store i8* %2, i8** @CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodG2BData, align 8, !dbg !186
  call void (...) bitcast (void ()* @CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodG2BSink to void (...)*)(), !dbg !187
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
  store i8* %11, i8** @CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodB2GData, align 8, !dbg !238
  call void (...) bitcast (void ()* @CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodB2GSink to void (...)*)(), !dbg !239
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_68_good() #0 !dbg !241 {
entry:
  call void @goodG2B(), !dbg !242
  call void @goodB2G(), !dbg !243
  ret void, !dbg !244
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_badSink() #0 !dbg !245 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_file_fprintf_68_badData, align 8, !dbg !248
  store i8* %0, i8** %data, align 8, !dbg !247
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !249
  %2 = load i8*, i8** %data, align 8, !dbg !250
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !251
  ret void, !dbg !252
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodG2BSink() #0 !dbg !253 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !254, metadata !DIExpression()), !dbg !255
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodG2BData, align 8, !dbg !256
  store i8* %0, i8** %data, align 8, !dbg !255
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !257
  %2 = load i8*, i8** %data, align 8, !dbg !258
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !259
  ret void, !dbg !260
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodB2GSink() #0 !dbg !261 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !262, metadata !DIExpression()), !dbg !263
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodB2GData, align 8, !dbg !264
  store i8* %0, i8** %data, align 8, !dbg !263
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !265
  %2 = load i8*, i8** %data, align 8, !dbg !266
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %2), !dbg !267
  ret void, !dbg !268
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !269 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !272, metadata !DIExpression()), !dbg !273
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !274
  %0 = load i8*, i8** %line.addr, align 8, !dbg !275
  %cmp = icmp ne i8* %0, null, !dbg !277
  br i1 %cmp, label %if.then, label %if.end, !dbg !278

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !279
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !281
  br label %if.end, !dbg !282

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.12, i64 0, i64 0)), !dbg !283
  ret void, !dbg !284
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !285 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !286, metadata !DIExpression()), !dbg !287
  %0 = load i8*, i8** %line.addr, align 8, !dbg !288
  %cmp = icmp ne i8* %0, null, !dbg !290
  br i1 %cmp, label %if.then, label %if.end, !dbg !291

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !292
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !294
  br label %if.end, !dbg !295

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !297 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load i32*, i32** %line.addr, align 8, !dbg !304
  %cmp = icmp ne i32* %0, null, !dbg !306
  br i1 %cmp, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !308
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.13, i64 0, i64 0), i32* %1), !dbg !310
  br label %if.end, !dbg !311

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !312
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !313 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !316, metadata !DIExpression()), !dbg !317
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !318
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !319
  ret void, !dbg !320
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !321 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !325, metadata !DIExpression()), !dbg !326
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !327
  %conv = sext i16 %0 to i32, !dbg !327
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !328
  ret void, !dbg !329
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !330 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !334, metadata !DIExpression()), !dbg !335
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !336
  %conv = fpext float %0 to double, !dbg !336
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !337
  ret void, !dbg !338
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !339 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), i64 %0), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !347 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), i64 %0), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !358 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !361, metadata !DIExpression()), !dbg !362
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !363
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !364
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !366 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !371
  %conv = sext i8 %0 to i32, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !374 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !377, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !379, metadata !DIExpression()), !dbg !383
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !384
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !385
  store i32 %0, i32* %arrayidx, align 4, !dbg !386
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !387
  store i32 0, i32* %arrayidx1, align 4, !dbg !388
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !389
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !390
  ret void, !dbg !391
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !392 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !397
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !398
  ret void, !dbg !399
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !400 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !405
  %conv = zext i8 %0 to i32, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !408 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !417 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !427, metadata !DIExpression()), !dbg !428
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !429
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !430
  %1 = load i32, i32* %intOne, align 4, !dbg !430
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !431
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !432
  %3 = load i32, i32* %intTwo, align 4, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !435 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !439, metadata !DIExpression()), !dbg !440
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata i64* %i, metadata !443, metadata !DIExpression()), !dbg !444
  store i64 0, i64* %i, align 8, !dbg !445
  br label %for.cond, !dbg !447

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !448
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !450
  %cmp = icmp ult i64 %0, %1, !dbg !451
  br i1 %cmp, label %for.body, label %for.end, !dbg !452

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !453
  %3 = load i64, i64* %i, align 8, !dbg !455
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !453
  %4 = load i8, i8* %arrayidx, align 1, !dbg !453
  %conv = zext i8 %4 to i32, !dbg !453
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !456
  br label %for.inc, !dbg !457

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !458
  %inc = add i64 %5, 1, !dbg !458
  store i64 %inc, i64* %i, align 8, !dbg !458
  br label %for.cond, !dbg !459, !llvm.loop !460

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !463
  ret void, !dbg !464
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !465 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !468, metadata !DIExpression()), !dbg !469
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !470, metadata !DIExpression()), !dbg !471
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !472, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !474, metadata !DIExpression()), !dbg !475
  store i64 0, i64* %numWritten, align 8, !dbg !475
  br label %while.cond, !dbg !476

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !477
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !478
  %cmp = icmp ult i64 %0, %1, !dbg !479
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !480

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !481
  %2 = load i16*, i16** %call, align 8, !dbg !481
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !481
  %4 = load i64, i64* %numWritten, align 8, !dbg !481
  %mul = mul i64 2, %4, !dbg !481
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !481
  %5 = load i8, i8* %arrayidx, align 1, !dbg !481
  %conv = sext i8 %5 to i32, !dbg !481
  %idxprom = sext i32 %conv to i64, !dbg !481
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !481
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !481
  %conv2 = zext i16 %6 to i32, !dbg !481
  %and = and i32 %conv2, 4096, !dbg !481
  %tobool = icmp ne i32 %and, 0, !dbg !481
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !482

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !483
  %7 = load i16*, i16** %call3, align 8, !dbg !483
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !483
  %9 = load i64, i64* %numWritten, align 8, !dbg !483
  %mul4 = mul i64 2, %9, !dbg !483
  %add = add i64 %mul4, 1, !dbg !483
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !483
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !483
  %conv6 = sext i8 %10 to i32, !dbg !483
  %idxprom7 = sext i32 %conv6 to i64, !dbg !483
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !483
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !483
  %conv9 = zext i16 %11 to i32, !dbg !483
  %and10 = and i32 %conv9, 4096, !dbg !483
  %tobool11 = icmp ne i32 %and10, 0, !dbg !482
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !484
  br i1 %12, label %while.body, label %while.end, !dbg !476

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !485, metadata !DIExpression()), !dbg !487
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !488
  %14 = load i64, i64* %numWritten, align 8, !dbg !489
  %mul12 = mul i64 2, %14, !dbg !490
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !488
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !491
  %15 = load i32, i32* %byte, align 4, !dbg !492
  %conv15 = trunc i32 %15 to i8, !dbg !493
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !494
  %17 = load i64, i64* %numWritten, align 8, !dbg !495
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !494
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !496
  %18 = load i64, i64* %numWritten, align 8, !dbg !497
  %inc = add i64 %18, 1, !dbg !497
  store i64 %inc, i64* %numWritten, align 8, !dbg !497
  br label %while.cond, !dbg !476, !llvm.loop !498

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !500
  ret i64 %19, !dbg !501
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !502 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !505, metadata !DIExpression()), !dbg !506
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !507, metadata !DIExpression()), !dbg !508
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !509, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !511, metadata !DIExpression()), !dbg !512
  store i64 0, i64* %numWritten, align 8, !dbg !512
  br label %while.cond, !dbg !513

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !514
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !515
  %cmp = icmp ult i64 %0, %1, !dbg !516
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !517

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !518
  %3 = load i64, i64* %numWritten, align 8, !dbg !519
  %mul = mul i64 2, %3, !dbg !520
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !518
  %4 = load i32, i32* %arrayidx, align 4, !dbg !518
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !521
  %tobool = icmp ne i32 %call, 0, !dbg !521
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !522

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !523
  %6 = load i64, i64* %numWritten, align 8, !dbg !524
  %mul1 = mul i64 2, %6, !dbg !525
  %add = add i64 %mul1, 1, !dbg !526
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !523
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !523
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !527
  %tobool4 = icmp ne i32 %call3, 0, !dbg !522
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !528
  br i1 %8, label %while.body, label %while.end, !dbg !513

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !529, metadata !DIExpression()), !dbg !531
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !532
  %10 = load i64, i64* %numWritten, align 8, !dbg !533
  %mul5 = mul i64 2, %10, !dbg !534
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !532
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !535
  %11 = load i32, i32* %byte, align 4, !dbg !536
  %conv = trunc i32 %11 to i8, !dbg !537
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !538
  %13 = load i64, i64* %numWritten, align 8, !dbg !539
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !538
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !540
  %14 = load i64, i64* %numWritten, align 8, !dbg !541
  %inc = add i64 %14, 1, !dbg !541
  store i64 %inc, i64* %numWritten, align 8, !dbg !541
  br label %while.cond, !dbg !513, !llvm.loop !542

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !544
  ret i64 %15, !dbg !545
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !546 {
entry:
  ret i32 1, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !550 {
entry:
  ret i32 0, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !552 {
entry:
  %call = call i32 @rand() #8, !dbg !553
  %rem = srem i32 %call, 2, !dbg !554
  ret i32 %rem, !dbg !555
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !584 {
entry:
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !586 {
entry:
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !588 {
entry:
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !590 {
entry:
  ret void, !dbg !591
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
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68_badData", scope: !2, file: !3, line: 31, type: !11, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_002/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodG2BData", scope: !2, file: !3, line: 32, type: !11, isLocal: false, isDefinition: true)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68_goodB2GData", scope: !2, file: !3, line: 33, type: !11, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !7, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_002/source_code")
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
!56 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_002/source_code")
!57 = !{!"clang version 12.0.0"}
!58 = !{i32 7, !"Dwarf Version", i32 4}
!59 = !{i32 2, !"Debug Info Version", i32 3}
!60 = !{i32 1, !"wchar_size", i32 4}
!61 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68_bad", scope: !3, file: !3, line: 39, type: !62, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!62 = !DISubroutineType(types: !63)
!63 = !{null}
!64 = !DILocalVariable(name: "data", scope: !61, file: !3, line: 41, type: !11)
!65 = !DILocation(line: 41, column: 12, scope: !61)
!66 = !DILocalVariable(name: "dataBuffer", scope: !61, file: !3, line: 42, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 100)
!70 = !DILocation(line: 42, column: 10, scope: !61)
!71 = !DILocation(line: 43, column: 12, scope: !61)
!72 = !DILocation(line: 43, column: 10, scope: !61)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !3, line: 46, type: !75)
!74 = distinct !DILexicalBlock(scope: !61, file: !3, line: 44, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 46, column: 16, scope: !74)
!79 = !DILocation(line: 46, column: 33, scope: !74)
!80 = !DILocation(line: 46, column: 26, scope: !74)
!81 = !DILocalVariable(name: "pFile", scope: !74, file: !3, line: 47, type: !82)
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
!137 = !DILocation(line: 47, column: 16, scope: !74)
!138 = !DILocation(line: 49, column: 17, scope: !139)
!139 = distinct !DILexicalBlock(scope: !74, file: !3, line: 49, column: 13)
!140 = !DILocation(line: 49, column: 16, scope: !139)
!141 = !DILocation(line: 49, column: 25, scope: !139)
!142 = !DILocation(line: 49, column: 13, scope: !74)
!143 = !DILocation(line: 51, column: 21, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !3, line: 50, column: 9)
!145 = !DILocation(line: 51, column: 19, scope: !144)
!146 = !DILocation(line: 52, column: 17, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !3, line: 52, column: 17)
!148 = !DILocation(line: 52, column: 23, scope: !147)
!149 = !DILocation(line: 52, column: 17, scope: !144)
!150 = !DILocation(line: 55, column: 27, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 55, column: 21)
!152 = distinct !DILexicalBlock(scope: !147, file: !3, line: 53, column: 13)
!153 = !DILocation(line: 55, column: 32, scope: !151)
!154 = !DILocation(line: 55, column: 31, scope: !151)
!155 = !DILocation(line: 55, column: 51, scope: !151)
!156 = !DILocation(line: 55, column: 50, scope: !151)
!157 = !DILocation(line: 55, column: 41, scope: !151)
!158 = !DILocation(line: 55, column: 61, scope: !151)
!159 = !DILocation(line: 55, column: 21, scope: !151)
!160 = !DILocation(line: 55, column: 68, scope: !151)
!161 = !DILocation(line: 55, column: 21, scope: !152)
!162 = !DILocation(line: 57, column: 21, scope: !163)
!163 = distinct !DILexicalBlock(scope: !151, file: !3, line: 56, column: 17)
!164 = !DILocation(line: 59, column: 21, scope: !163)
!165 = !DILocation(line: 59, column: 26, scope: !163)
!166 = !DILocation(line: 59, column: 35, scope: !163)
!167 = !DILocation(line: 60, column: 17, scope: !163)
!168 = !DILocation(line: 61, column: 24, scope: !152)
!169 = !DILocation(line: 61, column: 17, scope: !152)
!170 = !DILocation(line: 62, column: 13, scope: !152)
!171 = !DILocation(line: 63, column: 9, scope: !144)
!172 = !DILocation(line: 65, column: 71, scope: !61)
!173 = !DILocation(line: 65, column: 69, scope: !61)
!174 = !DILocation(line: 66, column: 5, scope: !61)
!175 = !DILocation(line: 67, column: 1, scope: !61)
!176 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 76, type: !62, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!177 = !DILocalVariable(name: "data", scope: !176, file: !3, line: 78, type: !11)
!178 = !DILocation(line: 78, column: 12, scope: !176)
!179 = !DILocalVariable(name: "dataBuffer", scope: !176, file: !3, line: 79, type: !67)
!180 = !DILocation(line: 79, column: 10, scope: !176)
!181 = !DILocation(line: 80, column: 12, scope: !176)
!182 = !DILocation(line: 80, column: 10, scope: !176)
!183 = !DILocation(line: 82, column: 12, scope: !176)
!184 = !DILocation(line: 82, column: 5, scope: !176)
!185 = !DILocation(line: 83, column: 75, scope: !176)
!186 = !DILocation(line: 83, column: 73, scope: !176)
!187 = !DILocation(line: 84, column: 5, scope: !176)
!188 = !DILocation(line: 85, column: 1, scope: !176)
!189 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 88, type: !62, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!190 = !DILocalVariable(name: "data", scope: !189, file: !3, line: 90, type: !11)
!191 = !DILocation(line: 90, column: 12, scope: !189)
!192 = !DILocalVariable(name: "dataBuffer", scope: !189, file: !3, line: 91, type: !67)
!193 = !DILocation(line: 91, column: 10, scope: !189)
!194 = !DILocation(line: 92, column: 12, scope: !189)
!195 = !DILocation(line: 92, column: 10, scope: !189)
!196 = !DILocalVariable(name: "dataLen", scope: !197, file: !3, line: 95, type: !75)
!197 = distinct !DILexicalBlock(scope: !189, file: !3, line: 93, column: 5)
!198 = !DILocation(line: 95, column: 16, scope: !197)
!199 = !DILocation(line: 95, column: 33, scope: !197)
!200 = !DILocation(line: 95, column: 26, scope: !197)
!201 = !DILocalVariable(name: "pFile", scope: !197, file: !3, line: 96, type: !82)
!202 = !DILocation(line: 96, column: 16, scope: !197)
!203 = !DILocation(line: 98, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !197, file: !3, line: 98, column: 13)
!205 = !DILocation(line: 98, column: 16, scope: !204)
!206 = !DILocation(line: 98, column: 25, scope: !204)
!207 = !DILocation(line: 98, column: 13, scope: !197)
!208 = !DILocation(line: 100, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !3, line: 99, column: 9)
!210 = !DILocation(line: 100, column: 19, scope: !209)
!211 = !DILocation(line: 101, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !3, line: 101, column: 17)
!213 = !DILocation(line: 101, column: 23, scope: !212)
!214 = !DILocation(line: 101, column: 17, scope: !209)
!215 = !DILocation(line: 104, column: 27, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !3, line: 104, column: 21)
!217 = distinct !DILexicalBlock(scope: !212, file: !3, line: 102, column: 13)
!218 = !DILocation(line: 104, column: 32, scope: !216)
!219 = !DILocation(line: 104, column: 31, scope: !216)
!220 = !DILocation(line: 104, column: 51, scope: !216)
!221 = !DILocation(line: 104, column: 50, scope: !216)
!222 = !DILocation(line: 104, column: 41, scope: !216)
!223 = !DILocation(line: 104, column: 61, scope: !216)
!224 = !DILocation(line: 104, column: 21, scope: !216)
!225 = !DILocation(line: 104, column: 68, scope: !216)
!226 = !DILocation(line: 104, column: 21, scope: !217)
!227 = !DILocation(line: 106, column: 21, scope: !228)
!228 = distinct !DILexicalBlock(scope: !216, file: !3, line: 105, column: 17)
!229 = !DILocation(line: 108, column: 21, scope: !228)
!230 = !DILocation(line: 108, column: 26, scope: !228)
!231 = !DILocation(line: 108, column: 35, scope: !228)
!232 = !DILocation(line: 109, column: 17, scope: !228)
!233 = !DILocation(line: 110, column: 24, scope: !217)
!234 = !DILocation(line: 110, column: 17, scope: !217)
!235 = !DILocation(line: 111, column: 13, scope: !217)
!236 = !DILocation(line: 112, column: 9, scope: !209)
!237 = !DILocation(line: 114, column: 75, scope: !189)
!238 = !DILocation(line: 114, column: 73, scope: !189)
!239 = !DILocation(line: 115, column: 5, scope: !189)
!240 = !DILocation(line: 116, column: 1, scope: !189)
!241 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68_good", scope: !3, file: !3, line: 118, type: !62, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!242 = !DILocation(line: 120, column: 5, scope: !241)
!243 = !DILocation(line: 121, column: 5, scope: !241)
!244 = !DILocation(line: 122, column: 1, scope: !241)
!245 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_badSink", scope: !56, file: !56, line: 36, type: !62, scopeLine: 37, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!246 = !DILocalVariable(name: "data", scope: !245, file: !56, line: 38, type: !11)
!247 = !DILocation(line: 38, column: 12, scope: !245)
!248 = !DILocation(line: 38, column: 19, scope: !245)
!249 = !DILocation(line: 40, column: 13, scope: !245)
!250 = !DILocation(line: 40, column: 21, scope: !245)
!251 = !DILocation(line: 40, column: 5, scope: !245)
!252 = !DILocation(line: 41, column: 1, scope: !245)
!253 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodG2BSink", scope: !56, file: !56, line: 48, type: !62, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!254 = !DILocalVariable(name: "data", scope: !253, file: !56, line: 50, type: !11)
!255 = !DILocation(line: 50, column: 12, scope: !253)
!256 = !DILocation(line: 50, column: 19, scope: !253)
!257 = !DILocation(line: 52, column: 13, scope: !253)
!258 = !DILocation(line: 52, column: 21, scope: !253)
!259 = !DILocation(line: 52, column: 5, scope: !253)
!260 = !DILocation(line: 53, column: 1, scope: !253)
!261 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_68b_goodB2GSink", scope: !56, file: !56, line: 56, type: !62, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !55, retainedNodes: !4)
!262 = !DILocalVariable(name: "data", scope: !261, file: !56, line: 58, type: !11)
!263 = !DILocation(line: 58, column: 12, scope: !261)
!264 = !DILocation(line: 58, column: 19, scope: !261)
!265 = !DILocation(line: 60, column: 13, scope: !261)
!266 = !DILocation(line: 60, column: 29, scope: !261)
!267 = !DILocation(line: 60, column: 5, scope: !261)
!268 = !DILocation(line: 61, column: 1, scope: !261)
!269 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !270, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !11}
!272 = !DILocalVariable(name: "line", arg: 1, scope: !269, file: !18, line: 11, type: !11)
!273 = !DILocation(line: 11, column: 25, scope: !269)
!274 = !DILocation(line: 13, column: 1, scope: !269)
!275 = !DILocation(line: 14, column: 8, scope: !276)
!276 = distinct !DILexicalBlock(scope: !269, file: !18, line: 14, column: 8)
!277 = !DILocation(line: 14, column: 13, scope: !276)
!278 = !DILocation(line: 14, column: 8, scope: !269)
!279 = !DILocation(line: 16, column: 24, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !18, line: 15, column: 5)
!281 = !DILocation(line: 16, column: 9, scope: !280)
!282 = !DILocation(line: 17, column: 5, scope: !280)
!283 = !DILocation(line: 18, column: 5, scope: !269)
!284 = !DILocation(line: 19, column: 1, scope: !269)
!285 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !270, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!286 = !DILocalVariable(name: "line", arg: 1, scope: !285, file: !18, line: 20, type: !11)
!287 = !DILocation(line: 20, column: 29, scope: !285)
!288 = !DILocation(line: 22, column: 8, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !18, line: 22, column: 8)
!290 = !DILocation(line: 22, column: 13, scope: !289)
!291 = !DILocation(line: 22, column: 8, scope: !285)
!292 = !DILocation(line: 24, column: 24, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !18, line: 23, column: 5)
!294 = !DILocation(line: 24, column: 9, scope: !293)
!295 = !DILocation(line: 25, column: 5, scope: !293)
!296 = !DILocation(line: 26, column: 1, scope: !285)
!297 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !298, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !7)
!302 = !DILocalVariable(name: "line", arg: 1, scope: !297, file: !18, line: 27, type: !300)
!303 = !DILocation(line: 27, column: 29, scope: !297)
!304 = !DILocation(line: 29, column: 8, scope: !305)
!305 = distinct !DILexicalBlock(scope: !297, file: !18, line: 29, column: 8)
!306 = !DILocation(line: 29, column: 13, scope: !305)
!307 = !DILocation(line: 29, column: 8, scope: !297)
!308 = !DILocation(line: 31, column: 27, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !18, line: 30, column: 5)
!310 = !DILocation(line: 31, column: 9, scope: !309)
!311 = !DILocation(line: 32, column: 5, scope: !309)
!312 = !DILocation(line: 33, column: 1, scope: !297)
!313 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !314, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !7}
!316 = !DILocalVariable(name: "intNumber", arg: 1, scope: !313, file: !18, line: 35, type: !7)
!317 = !DILocation(line: 35, column: 24, scope: !313)
!318 = !DILocation(line: 37, column: 20, scope: !313)
!319 = !DILocation(line: 37, column: 5, scope: !313)
!320 = !DILocation(line: 38, column: 1, scope: !313)
!321 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !322, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !324}
!324 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!325 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !321, file: !18, line: 40, type: !324)
!326 = !DILocation(line: 40, column: 28, scope: !321)
!327 = !DILocation(line: 42, column: 21, scope: !321)
!328 = !DILocation(line: 42, column: 5, scope: !321)
!329 = !DILocation(line: 43, column: 1, scope: !321)
!330 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !331, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !333}
!333 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!334 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !330, file: !18, line: 45, type: !333)
!335 = !DILocation(line: 45, column: 28, scope: !330)
!336 = !DILocation(line: 47, column: 20, scope: !330)
!337 = !DILocation(line: 47, column: 5, scope: !330)
!338 = !DILocation(line: 48, column: 1, scope: !330)
!339 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !340, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !110}
!342 = !DILocalVariable(name: "longNumber", arg: 1, scope: !339, file: !18, line: 50, type: !110)
!343 = !DILocation(line: 50, column: 26, scope: !339)
!344 = !DILocation(line: 52, column: 21, scope: !339)
!345 = !DILocation(line: 52, column: 5, scope: !339)
!346 = !DILocation(line: 53, column: 1, scope: !339)
!347 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !348, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !350}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !351, line: 27, baseType: !352)
!351 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !109, line: 44, baseType: !110)
!353 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !347, file: !18, line: 55, type: !350)
!354 = !DILocation(line: 55, column: 33, scope: !347)
!355 = !DILocation(line: 57, column: 29, scope: !347)
!356 = !DILocation(line: 57, column: 5, scope: !347)
!357 = !DILocation(line: 58, column: 1, scope: !347)
!358 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !359, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !75}
!361 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !358, file: !18, line: 60, type: !75)
!362 = !DILocation(line: 60, column: 29, scope: !358)
!363 = !DILocation(line: 62, column: 21, scope: !358)
!364 = !DILocation(line: 62, column: 5, scope: !358)
!365 = !DILocation(line: 63, column: 1, scope: !358)
!366 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !367, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !12}
!369 = !DILocalVariable(name: "charHex", arg: 1, scope: !366, file: !18, line: 65, type: !12)
!370 = !DILocation(line: 65, column: 29, scope: !366)
!371 = !DILocation(line: 67, column: 22, scope: !366)
!372 = !DILocation(line: 67, column: 5, scope: !366)
!373 = !DILocation(line: 68, column: 1, scope: !366)
!374 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !375, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !301}
!377 = !DILocalVariable(name: "wideChar", arg: 1, scope: !374, file: !18, line: 70, type: !301)
!378 = !DILocation(line: 70, column: 29, scope: !374)
!379 = !DILocalVariable(name: "s", scope: !374, file: !18, line: 74, type: !380)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 64, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 2)
!383 = !DILocation(line: 74, column: 13, scope: !374)
!384 = !DILocation(line: 75, column: 16, scope: !374)
!385 = !DILocation(line: 75, column: 9, scope: !374)
!386 = !DILocation(line: 75, column: 14, scope: !374)
!387 = !DILocation(line: 76, column: 9, scope: !374)
!388 = !DILocation(line: 76, column: 14, scope: !374)
!389 = !DILocation(line: 77, column: 21, scope: !374)
!390 = !DILocation(line: 77, column: 5, scope: !374)
!391 = !DILocation(line: 78, column: 1, scope: !374)
!392 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !393, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !22}
!395 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !392, file: !18, line: 80, type: !22)
!396 = !DILocation(line: 80, column: 33, scope: !392)
!397 = !DILocation(line: 82, column: 20, scope: !392)
!398 = !DILocation(line: 82, column: 5, scope: !392)
!399 = !DILocation(line: 83, column: 1, scope: !392)
!400 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !401, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !38}
!403 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !400, file: !18, line: 85, type: !38)
!404 = !DILocation(line: 85, column: 45, scope: !400)
!405 = !DILocation(line: 87, column: 22, scope: !400)
!406 = !DILocation(line: 87, column: 5, scope: !400)
!407 = !DILocation(line: 88, column: 1, scope: !400)
!408 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !409, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411}
!411 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!412 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !408, file: !18, line: 90, type: !411)
!413 = !DILocation(line: 90, column: 29, scope: !408)
!414 = !DILocation(line: 92, column: 20, scope: !408)
!415 = !DILocation(line: 92, column: 5, scope: !408)
!416 = !DILocation(line: 93, column: 1, scope: !408)
!417 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !418, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !420}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !422, line: 100, baseType: !423)
!422 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_002/source_code")
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !422, line: 96, size: 64, elements: !424)
!424 = !{!425, !426}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !423, file: !422, line: 98, baseType: !7, size: 32)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !423, file: !422, line: 99, baseType: !7, size: 32, offset: 32)
!427 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !417, file: !18, line: 95, type: !420)
!428 = !DILocation(line: 95, column: 40, scope: !417)
!429 = !DILocation(line: 97, column: 26, scope: !417)
!430 = !DILocation(line: 97, column: 47, scope: !417)
!431 = !DILocation(line: 97, column: 55, scope: !417)
!432 = !DILocation(line: 97, column: 76, scope: !417)
!433 = !DILocation(line: 97, column: 5, scope: !417)
!434 = !DILocation(line: 98, column: 1, scope: !417)
!435 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !436, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !438, !75}
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!439 = !DILocalVariable(name: "bytes", arg: 1, scope: !435, file: !18, line: 100, type: !438)
!440 = !DILocation(line: 100, column: 38, scope: !435)
!441 = !DILocalVariable(name: "numBytes", arg: 2, scope: !435, file: !18, line: 100, type: !75)
!442 = !DILocation(line: 100, column: 52, scope: !435)
!443 = !DILocalVariable(name: "i", scope: !435, file: !18, line: 102, type: !75)
!444 = !DILocation(line: 102, column: 12, scope: !435)
!445 = !DILocation(line: 103, column: 12, scope: !446)
!446 = distinct !DILexicalBlock(scope: !435, file: !18, line: 103, column: 5)
!447 = !DILocation(line: 103, column: 10, scope: !446)
!448 = !DILocation(line: 103, column: 17, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !18, line: 103, column: 5)
!450 = !DILocation(line: 103, column: 21, scope: !449)
!451 = !DILocation(line: 103, column: 19, scope: !449)
!452 = !DILocation(line: 103, column: 5, scope: !446)
!453 = !DILocation(line: 105, column: 24, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !18, line: 104, column: 5)
!455 = !DILocation(line: 105, column: 30, scope: !454)
!456 = !DILocation(line: 105, column: 9, scope: !454)
!457 = !DILocation(line: 106, column: 5, scope: !454)
!458 = !DILocation(line: 103, column: 31, scope: !449)
!459 = !DILocation(line: 103, column: 5, scope: !449)
!460 = distinct !{!460, !452, !461, !462}
!461 = !DILocation(line: 106, column: 5, scope: !446)
!462 = !{!"llvm.loop.mustprogress"}
!463 = !DILocation(line: 107, column: 5, scope: !435)
!464 = !DILocation(line: 108, column: 1, scope: !435)
!465 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !466, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!466 = !DISubroutineType(types: !467)
!467 = !{!75, !438, !75, !11}
!468 = !DILocalVariable(name: "bytes", arg: 1, scope: !465, file: !18, line: 113, type: !438)
!469 = !DILocation(line: 113, column: 39, scope: !465)
!470 = !DILocalVariable(name: "numBytes", arg: 2, scope: !465, file: !18, line: 113, type: !75)
!471 = !DILocation(line: 113, column: 53, scope: !465)
!472 = !DILocalVariable(name: "hex", arg: 3, scope: !465, file: !18, line: 113, type: !11)
!473 = !DILocation(line: 113, column: 71, scope: !465)
!474 = !DILocalVariable(name: "numWritten", scope: !465, file: !18, line: 115, type: !75)
!475 = !DILocation(line: 115, column: 12, scope: !465)
!476 = !DILocation(line: 121, column: 5, scope: !465)
!477 = !DILocation(line: 121, column: 12, scope: !465)
!478 = !DILocation(line: 121, column: 25, scope: !465)
!479 = !DILocation(line: 121, column: 23, scope: !465)
!480 = !DILocation(line: 121, column: 34, scope: !465)
!481 = !DILocation(line: 121, column: 37, scope: !465)
!482 = !DILocation(line: 121, column: 67, scope: !465)
!483 = !DILocation(line: 121, column: 70, scope: !465)
!484 = !DILocation(line: 0, scope: !465)
!485 = !DILocalVariable(name: "byte", scope: !486, file: !18, line: 123, type: !7)
!486 = distinct !DILexicalBlock(scope: !465, file: !18, line: 122, column: 5)
!487 = !DILocation(line: 123, column: 13, scope: !486)
!488 = !DILocation(line: 124, column: 17, scope: !486)
!489 = !DILocation(line: 124, column: 25, scope: !486)
!490 = !DILocation(line: 124, column: 23, scope: !486)
!491 = !DILocation(line: 124, column: 9, scope: !486)
!492 = !DILocation(line: 125, column: 45, scope: !486)
!493 = !DILocation(line: 125, column: 29, scope: !486)
!494 = !DILocation(line: 125, column: 9, scope: !486)
!495 = !DILocation(line: 125, column: 15, scope: !486)
!496 = !DILocation(line: 125, column: 27, scope: !486)
!497 = !DILocation(line: 126, column: 9, scope: !486)
!498 = distinct !{!498, !476, !499, !462}
!499 = !DILocation(line: 127, column: 5, scope: !465)
!500 = !DILocation(line: 129, column: 12, scope: !465)
!501 = !DILocation(line: 129, column: 5, scope: !465)
!502 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !503, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!503 = !DISubroutineType(types: !504)
!504 = !{!75, !438, !75, !300}
!505 = !DILocalVariable(name: "bytes", arg: 1, scope: !502, file: !18, line: 135, type: !438)
!506 = !DILocation(line: 135, column: 41, scope: !502)
!507 = !DILocalVariable(name: "numBytes", arg: 2, scope: !502, file: !18, line: 135, type: !75)
!508 = !DILocation(line: 135, column: 55, scope: !502)
!509 = !DILocalVariable(name: "hex", arg: 3, scope: !502, file: !18, line: 135, type: !300)
!510 = !DILocation(line: 135, column: 76, scope: !502)
!511 = !DILocalVariable(name: "numWritten", scope: !502, file: !18, line: 137, type: !75)
!512 = !DILocation(line: 137, column: 12, scope: !502)
!513 = !DILocation(line: 143, column: 5, scope: !502)
!514 = !DILocation(line: 143, column: 12, scope: !502)
!515 = !DILocation(line: 143, column: 25, scope: !502)
!516 = !DILocation(line: 143, column: 23, scope: !502)
!517 = !DILocation(line: 143, column: 34, scope: !502)
!518 = !DILocation(line: 143, column: 47, scope: !502)
!519 = !DILocation(line: 143, column: 55, scope: !502)
!520 = !DILocation(line: 143, column: 53, scope: !502)
!521 = !DILocation(line: 143, column: 37, scope: !502)
!522 = !DILocation(line: 143, column: 68, scope: !502)
!523 = !DILocation(line: 143, column: 81, scope: !502)
!524 = !DILocation(line: 143, column: 89, scope: !502)
!525 = !DILocation(line: 143, column: 87, scope: !502)
!526 = !DILocation(line: 143, column: 100, scope: !502)
!527 = !DILocation(line: 143, column: 71, scope: !502)
!528 = !DILocation(line: 0, scope: !502)
!529 = !DILocalVariable(name: "byte", scope: !530, file: !18, line: 145, type: !7)
!530 = distinct !DILexicalBlock(scope: !502, file: !18, line: 144, column: 5)
!531 = !DILocation(line: 145, column: 13, scope: !530)
!532 = !DILocation(line: 146, column: 18, scope: !530)
!533 = !DILocation(line: 146, column: 26, scope: !530)
!534 = !DILocation(line: 146, column: 24, scope: !530)
!535 = !DILocation(line: 146, column: 9, scope: !530)
!536 = !DILocation(line: 147, column: 45, scope: !530)
!537 = !DILocation(line: 147, column: 29, scope: !530)
!538 = !DILocation(line: 147, column: 9, scope: !530)
!539 = !DILocation(line: 147, column: 15, scope: !530)
!540 = !DILocation(line: 147, column: 27, scope: !530)
!541 = !DILocation(line: 148, column: 9, scope: !530)
!542 = distinct !{!542, !513, !543, !462}
!543 = !DILocation(line: 149, column: 5, scope: !502)
!544 = !DILocation(line: 151, column: 12, scope: !502)
!545 = !DILocation(line: 151, column: 5, scope: !502)
!546 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !547, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!547 = !DISubroutineType(types: !548)
!548 = !{!7}
!549 = !DILocation(line: 158, column: 5, scope: !546)
!550 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !547, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!551 = !DILocation(line: 163, column: 5, scope: !550)
!552 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !547, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!553 = !DILocation(line: 168, column: 13, scope: !552)
!554 = !DILocation(line: 168, column: 20, scope: !552)
!555 = !DILocation(line: 168, column: 5, scope: !552)
!556 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !62, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!557 = !DILocation(line: 187, column: 16, scope: !556)
!558 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !62, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!559 = !DILocation(line: 188, column: 16, scope: !558)
!560 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !62, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!561 = !DILocation(line: 189, column: 16, scope: !560)
!562 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !62, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!563 = !DILocation(line: 190, column: 16, scope: !562)
!564 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !62, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!565 = !DILocation(line: 191, column: 16, scope: !564)
!566 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !62, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!567 = !DILocation(line: 192, column: 16, scope: !566)
!568 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !62, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!569 = !DILocation(line: 193, column: 16, scope: !568)
!570 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !62, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!571 = !DILocation(line: 194, column: 16, scope: !570)
!572 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !62, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!573 = !DILocation(line: 195, column: 16, scope: !572)
!574 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !62, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!575 = !DILocation(line: 198, column: 15, scope: !574)
!576 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !62, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!577 = !DILocation(line: 199, column: 15, scope: !576)
!578 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !62, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!579 = !DILocation(line: 200, column: 15, scope: !578)
!580 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !62, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!581 = !DILocation(line: 201, column: 15, scope: !580)
!582 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !62, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!583 = !DILocation(line: 202, column: 15, scope: !582)
!584 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !62, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!585 = !DILocation(line: 203, column: 15, scope: !584)
!586 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !62, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!587 = !DILocation(line: 204, column: 15, scope: !586)
!588 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !62, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!589 = !DILocation(line: 205, column: 15, scope: !588)
!590 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !62, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!591 = !DILocation(line: 206, column: 15, scope: !590)
