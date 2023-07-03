; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !9
@CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !11
@CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !13
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.1.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !15
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !40
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !42
@globalTrue = dso_local global i32 1, align 4, !dbg !44
@globalFalse = dso_local global i32 0, align 4, !dbg !46
@globalFive = dso_local global i32 5, align 4, !dbg !48
@globalArgc = dso_local global i32 0, align 4, !dbg !50
@globalArgv = dso_local global i8** null, align 8, !dbg !52
@.str.13 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.14 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.15 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.17 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13.18 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_bad() #0 !dbg !63 {
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
  store i32 1, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badGlobal, align 4, !dbg !174
  %11 = load i8*, i8** %data, align 8, !dbg !175
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badSink(i8* %11), !dbg !176
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
  store i32 0, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Global, align 4, !dbg !226
  %11 = load i8*, i8** %data, align 8, !dbg !227
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Sink(i8* %11), !dbg !228
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
  store i32 1, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Global, align 4, !dbg !278
  %11 = load i8*, i8** %data, align 8, !dbg !279
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Sink(i8* %11), !dbg !280
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !290
  store i32 1, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BGlobal, align 4, !dbg !291
  %2 = load i8*, i8** %data, align 8, !dbg !292
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BSink(i8* %2), !dbg !293
  ret void, !dbg !294
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_good() #0 !dbg !295 {
entry:
  call void @goodB2G1(), !dbg !296
  call void @goodB2G2(), !dbg !297
  call void @goodG2B(), !dbg !298
  ret void, !dbg !299
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badSink(i8* %data) #0 !dbg !300 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badGlobal, align 4, !dbg !305
  %tobool = icmp ne i32 %0, 0, !dbg !305
  br i1 %tobool, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !308
  %2 = load i8*, i8** %data.addr, align 8, !dbg !310
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !311
  br label %if.end, !dbg !312

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !313
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Sink(i8* %data) #0 !dbg !314 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !315, metadata !DIExpression()), !dbg !316
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Global, align 4, !dbg !317
  %tobool = icmp ne i32 %0, 0, !dbg !317
  br i1 %tobool, label %if.then, label %if.else, !dbg !319

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0)), !dbg !320
  br label %if.end, !dbg !322

if.else:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !323
  %2 = load i8*, i8** %data.addr, align 8, !dbg !325
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %2), !dbg !326
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Sink(i8* %data) #0 !dbg !328 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Global, align 4, !dbg !331
  %tobool = icmp ne i32 %0, 0, !dbg !331
  br i1 %tobool, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !334
  %2 = load i8*, i8** %data.addr, align 8, !dbg !336
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %2), !dbg !337
  br label %if.end, !dbg !338

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BSink(i8* %data) #0 !dbg !340 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !341, metadata !DIExpression()), !dbg !342
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BGlobal, align 4, !dbg !343
  %tobool = icmp ne i32 %0, 0, !dbg !343
  br i1 %tobool, label %if.then, label %if.end, !dbg !345

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !346
  %2 = load i8*, i8** %data.addr, align 8, !dbg !348
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !349
  br label %if.end, !dbg !350

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !352 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0)), !dbg !355
  %0 = load i8*, i8** %line.addr, align 8, !dbg !356
  %cmp = icmp ne i8* %0, null, !dbg !358
  br i1 %cmp, label %if.then, label %if.end, !dbg !359

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !360
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.14, i64 0, i64 0), i8* %1), !dbg !362
  br label %if.end, !dbg !363

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.15, i64 0, i64 0)), !dbg !364
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.14, i64 0, i64 0), i8* %1), !dbg !375
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
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.16, i64 0, i64 0), i32* %1), !dbg !391
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !400
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.17, i64 0, i64 0), i32 %conv), !dbg !409
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !479
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13.18, i64 0, i64 0), i32 %1, i32 %3), !dbg !514
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
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !544
  ret void, !dbg !545
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !546 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !549, metadata !DIExpression()), !dbg !550
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !551, metadata !DIExpression()), !dbg !552
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !553, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !555, metadata !DIExpression()), !dbg !556
  store i64 0, i64* %numWritten, align 8, !dbg !556
  br label %while.cond, !dbg !557

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !558
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !559
  %cmp = icmp ult i64 %0, %1, !dbg !560
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !561

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !562
  %2 = load i16*, i16** %call, align 8, !dbg !562
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !562
  %4 = load i64, i64* %numWritten, align 8, !dbg !562
  %mul = mul i64 2, %4, !dbg !562
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !562
  %5 = load i8, i8* %arrayidx, align 1, !dbg !562
  %conv = sext i8 %5 to i32, !dbg !562
  %idxprom = sext i32 %conv to i64, !dbg !562
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !562
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !562
  %conv2 = zext i16 %6 to i32, !dbg !562
  %and = and i32 %conv2, 4096, !dbg !562
  %tobool = icmp ne i32 %and, 0, !dbg !562
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !563

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !564
  %7 = load i16*, i16** %call3, align 8, !dbg !564
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !564
  %9 = load i64, i64* %numWritten, align 8, !dbg !564
  %mul4 = mul i64 2, %9, !dbg !564
  %add = add i64 %mul4, 1, !dbg !564
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !564
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !564
  %conv6 = sext i8 %10 to i32, !dbg !564
  %idxprom7 = sext i32 %conv6 to i64, !dbg !564
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !564
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !564
  %conv9 = zext i16 %11 to i32, !dbg !564
  %and10 = and i32 %conv9, 4096, !dbg !564
  %tobool11 = icmp ne i32 %and10, 0, !dbg !563
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !565
  br i1 %12, label %while.body, label %while.end, !dbg !557

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !566, metadata !DIExpression()), !dbg !568
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !569
  %14 = load i64, i64* %numWritten, align 8, !dbg !570
  %mul12 = mul i64 2, %14, !dbg !571
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !569
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !572
  %15 = load i32, i32* %byte, align 4, !dbg !573
  %conv15 = trunc i32 %15 to i8, !dbg !574
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !575
  %17 = load i64, i64* %numWritten, align 8, !dbg !576
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !575
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !577
  %18 = load i64, i64* %numWritten, align 8, !dbg !578
  %inc = add i64 %18, 1, !dbg !578
  store i64 %inc, i64* %numWritten, align 8, !dbg !578
  br label %while.cond, !dbg !557, !llvm.loop !579

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !581
  ret i64 %19, !dbg !582
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !583 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !586, metadata !DIExpression()), !dbg !587
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !588, metadata !DIExpression()), !dbg !589
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !592, metadata !DIExpression()), !dbg !593
  store i64 0, i64* %numWritten, align 8, !dbg !593
  br label %while.cond, !dbg !594

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !595
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !596
  %cmp = icmp ult i64 %0, %1, !dbg !597
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !598

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !599
  %3 = load i64, i64* %numWritten, align 8, !dbg !600
  %mul = mul i64 2, %3, !dbg !601
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !599
  %4 = load i32, i32* %arrayidx, align 4, !dbg !599
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !602
  %tobool = icmp ne i32 %call, 0, !dbg !602
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !603

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !604
  %6 = load i64, i64* %numWritten, align 8, !dbg !605
  %mul1 = mul i64 2, %6, !dbg !606
  %add = add i64 %mul1, 1, !dbg !607
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !604
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !604
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !608
  %tobool4 = icmp ne i32 %call3, 0, !dbg !603
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !609
  br i1 %8, label %while.body, label %while.end, !dbg !594

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !610, metadata !DIExpression()), !dbg !612
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !613
  %10 = load i64, i64* %numWritten, align 8, !dbg !614
  %mul5 = mul i64 2, %10, !dbg !615
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !613
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !616
  %11 = load i32, i32* %byte, align 4, !dbg !617
  %conv = trunc i32 %11 to i8, !dbg !618
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !619
  %13 = load i64, i64* %numWritten, align 8, !dbg !620
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !619
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !621
  %14 = load i64, i64* %numWritten, align 8, !dbg !622
  %inc = add i64 %14, 1, !dbg !622
  store i64 %inc, i64* %numWritten, align 8, !dbg !622
  br label %while.cond, !dbg !594, !llvm.loop !623

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !625
  ret i64 %15, !dbg !626
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !627 {
entry:
  ret i32 1, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !631 {
entry:
  ret i32 0, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !633 {
entry:
  %call = call i32 @rand() #8, !dbg !634
  %rem = srem i32 %call, 2, !dbg !635
  ret i32 %rem, !dbg !636
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !637 {
entry:
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !639 {
entry:
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !641 {
entry:
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !645 {
entry:
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !671 {
entry:
  ret void, !dbg !672
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
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badGlobal", scope: !2, file: !3, line: 34, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_981/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Global", scope: !2, file: !3, line: 72, type: !7, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Global", scope: !2, file: !3, line: 73, type: !7, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BGlobal", scope: !2, file: !3, line: 74, type: !7, isLocal: false, isDefinition: true)
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !17, file: !18, line: 174, type: !7, isLocal: false, isDefinition: true)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !19, retainedTypes: !36, globals: !39, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_981/source_code")
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
!58 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_981/source_code")
!59 = !{!"clang version 12.0.0"}
!60 = !{i32 7, !"Dwarf Version", i32 4}
!61 = !{i32 2, !"Debug Info Version", i32 3}
!62 = !{i32 1, !"wchar_size", i32 4}
!63 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_bad", scope: !3, file: !3, line: 37, type: !64, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!64 = !DISubroutineType(types: !65)
!65 = !{null}
!66 = !DILocalVariable(name: "data", scope: !63, file: !3, line: 39, type: !55)
!67 = !DILocation(line: 39, column: 12, scope: !63)
!68 = !DILocalVariable(name: "dataBuffer", scope: !63, file: !3, line: 40, type: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 800, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 100)
!72 = !DILocation(line: 40, column: 10, scope: !63)
!73 = !DILocation(line: 41, column: 12, scope: !63)
!74 = !DILocation(line: 41, column: 10, scope: !63)
!75 = !DILocalVariable(name: "dataLen", scope: !76, file: !3, line: 44, type: !77)
!76 = distinct !DILexicalBlock(scope: !63, file: !3, line: 42, column: 5)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DILocation(line: 44, column: 16, scope: !76)
!81 = !DILocation(line: 44, column: 33, scope: !76)
!82 = !DILocation(line: 44, column: 26, scope: !76)
!83 = !DILocalVariable(name: "pFile", scope: !76, file: !3, line: 45, type: !84)
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
!139 = !DILocation(line: 45, column: 16, scope: !76)
!140 = !DILocation(line: 47, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !76, file: !3, line: 47, column: 13)
!142 = !DILocation(line: 47, column: 16, scope: !141)
!143 = !DILocation(line: 47, column: 25, scope: !141)
!144 = !DILocation(line: 47, column: 13, scope: !76)
!145 = !DILocation(line: 49, column: 21, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !3, line: 48, column: 9)
!147 = !DILocation(line: 49, column: 19, scope: !146)
!148 = !DILocation(line: 50, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !3, line: 50, column: 17)
!150 = !DILocation(line: 50, column: 23, scope: !149)
!151 = !DILocation(line: 50, column: 17, scope: !146)
!152 = !DILocation(line: 53, column: 27, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 53, column: 21)
!154 = distinct !DILexicalBlock(scope: !149, file: !3, line: 51, column: 13)
!155 = !DILocation(line: 53, column: 32, scope: !153)
!156 = !DILocation(line: 53, column: 31, scope: !153)
!157 = !DILocation(line: 53, column: 51, scope: !153)
!158 = !DILocation(line: 53, column: 50, scope: !153)
!159 = !DILocation(line: 53, column: 41, scope: !153)
!160 = !DILocation(line: 53, column: 61, scope: !153)
!161 = !DILocation(line: 53, column: 21, scope: !153)
!162 = !DILocation(line: 53, column: 68, scope: !153)
!163 = !DILocation(line: 53, column: 21, scope: !154)
!164 = !DILocation(line: 55, column: 21, scope: !165)
!165 = distinct !DILexicalBlock(scope: !153, file: !3, line: 54, column: 17)
!166 = !DILocation(line: 57, column: 21, scope: !165)
!167 = !DILocation(line: 57, column: 26, scope: !165)
!168 = !DILocation(line: 57, column: 35, scope: !165)
!169 = !DILocation(line: 58, column: 17, scope: !165)
!170 = !DILocation(line: 59, column: 24, scope: !154)
!171 = !DILocation(line: 59, column: 17, scope: !154)
!172 = !DILocation(line: 60, column: 13, scope: !154)
!173 = !DILocation(line: 61, column: 9, scope: !146)
!174 = !DILocation(line: 63, column: 71, scope: !63)
!175 = !DILocation(line: 64, column: 69, scope: !63)
!176 = !DILocation(line: 64, column: 5, scope: !63)
!177 = !DILocation(line: 65, column: 1, scope: !63)
!178 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 78, type: !64, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!179 = !DILocalVariable(name: "data", scope: !178, file: !3, line: 80, type: !55)
!180 = !DILocation(line: 80, column: 12, scope: !178)
!181 = !DILocalVariable(name: "dataBuffer", scope: !178, file: !3, line: 81, type: !69)
!182 = !DILocation(line: 81, column: 10, scope: !178)
!183 = !DILocation(line: 82, column: 12, scope: !178)
!184 = !DILocation(line: 82, column: 10, scope: !178)
!185 = !DILocalVariable(name: "dataLen", scope: !186, file: !3, line: 85, type: !77)
!186 = distinct !DILexicalBlock(scope: !178, file: !3, line: 83, column: 5)
!187 = !DILocation(line: 85, column: 16, scope: !186)
!188 = !DILocation(line: 85, column: 33, scope: !186)
!189 = !DILocation(line: 85, column: 26, scope: !186)
!190 = !DILocalVariable(name: "pFile", scope: !186, file: !3, line: 86, type: !84)
!191 = !DILocation(line: 86, column: 16, scope: !186)
!192 = !DILocation(line: 88, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !186, file: !3, line: 88, column: 13)
!194 = !DILocation(line: 88, column: 16, scope: !193)
!195 = !DILocation(line: 88, column: 25, scope: !193)
!196 = !DILocation(line: 88, column: 13, scope: !186)
!197 = !DILocation(line: 90, column: 21, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !3, line: 89, column: 9)
!199 = !DILocation(line: 90, column: 19, scope: !198)
!200 = !DILocation(line: 91, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 91, column: 17)
!202 = !DILocation(line: 91, column: 23, scope: !201)
!203 = !DILocation(line: 91, column: 17, scope: !198)
!204 = !DILocation(line: 94, column: 27, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 94, column: 21)
!206 = distinct !DILexicalBlock(scope: !201, file: !3, line: 92, column: 13)
!207 = !DILocation(line: 94, column: 32, scope: !205)
!208 = !DILocation(line: 94, column: 31, scope: !205)
!209 = !DILocation(line: 94, column: 51, scope: !205)
!210 = !DILocation(line: 94, column: 50, scope: !205)
!211 = !DILocation(line: 94, column: 41, scope: !205)
!212 = !DILocation(line: 94, column: 61, scope: !205)
!213 = !DILocation(line: 94, column: 21, scope: !205)
!214 = !DILocation(line: 94, column: 68, scope: !205)
!215 = !DILocation(line: 94, column: 21, scope: !206)
!216 = !DILocation(line: 96, column: 21, scope: !217)
!217 = distinct !DILexicalBlock(scope: !205, file: !3, line: 95, column: 17)
!218 = !DILocation(line: 98, column: 21, scope: !217)
!219 = !DILocation(line: 98, column: 26, scope: !217)
!220 = !DILocation(line: 98, column: 35, scope: !217)
!221 = !DILocation(line: 99, column: 17, scope: !217)
!222 = !DILocation(line: 100, column: 24, scope: !206)
!223 = !DILocation(line: 100, column: 17, scope: !206)
!224 = !DILocation(line: 101, column: 13, scope: !206)
!225 = !DILocation(line: 102, column: 9, scope: !198)
!226 = !DILocation(line: 104, column: 76, scope: !178)
!227 = !DILocation(line: 105, column: 74, scope: !178)
!228 = !DILocation(line: 105, column: 5, scope: !178)
!229 = !DILocation(line: 106, column: 1, scope: !178)
!230 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 110, type: !64, scopeLine: 111, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!231 = !DILocalVariable(name: "data", scope: !230, file: !3, line: 112, type: !55)
!232 = !DILocation(line: 112, column: 12, scope: !230)
!233 = !DILocalVariable(name: "dataBuffer", scope: !230, file: !3, line: 113, type: !69)
!234 = !DILocation(line: 113, column: 10, scope: !230)
!235 = !DILocation(line: 114, column: 12, scope: !230)
!236 = !DILocation(line: 114, column: 10, scope: !230)
!237 = !DILocalVariable(name: "dataLen", scope: !238, file: !3, line: 117, type: !77)
!238 = distinct !DILexicalBlock(scope: !230, file: !3, line: 115, column: 5)
!239 = !DILocation(line: 117, column: 16, scope: !238)
!240 = !DILocation(line: 117, column: 33, scope: !238)
!241 = !DILocation(line: 117, column: 26, scope: !238)
!242 = !DILocalVariable(name: "pFile", scope: !238, file: !3, line: 118, type: !84)
!243 = !DILocation(line: 118, column: 16, scope: !238)
!244 = !DILocation(line: 120, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !238, file: !3, line: 120, column: 13)
!246 = !DILocation(line: 120, column: 16, scope: !245)
!247 = !DILocation(line: 120, column: 25, scope: !245)
!248 = !DILocation(line: 120, column: 13, scope: !238)
!249 = !DILocation(line: 122, column: 21, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !3, line: 121, column: 9)
!251 = !DILocation(line: 122, column: 19, scope: !250)
!252 = !DILocation(line: 123, column: 17, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !3, line: 123, column: 17)
!254 = !DILocation(line: 123, column: 23, scope: !253)
!255 = !DILocation(line: 123, column: 17, scope: !250)
!256 = !DILocation(line: 126, column: 27, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 126, column: 21)
!258 = distinct !DILexicalBlock(scope: !253, file: !3, line: 124, column: 13)
!259 = !DILocation(line: 126, column: 32, scope: !257)
!260 = !DILocation(line: 126, column: 31, scope: !257)
!261 = !DILocation(line: 126, column: 51, scope: !257)
!262 = !DILocation(line: 126, column: 50, scope: !257)
!263 = !DILocation(line: 126, column: 41, scope: !257)
!264 = !DILocation(line: 126, column: 61, scope: !257)
!265 = !DILocation(line: 126, column: 21, scope: !257)
!266 = !DILocation(line: 126, column: 68, scope: !257)
!267 = !DILocation(line: 126, column: 21, scope: !258)
!268 = !DILocation(line: 128, column: 21, scope: !269)
!269 = distinct !DILexicalBlock(scope: !257, file: !3, line: 127, column: 17)
!270 = !DILocation(line: 130, column: 21, scope: !269)
!271 = !DILocation(line: 130, column: 26, scope: !269)
!272 = !DILocation(line: 130, column: 35, scope: !269)
!273 = !DILocation(line: 131, column: 17, scope: !269)
!274 = !DILocation(line: 132, column: 24, scope: !258)
!275 = !DILocation(line: 132, column: 17, scope: !258)
!276 = !DILocation(line: 133, column: 13, scope: !258)
!277 = !DILocation(line: 134, column: 9, scope: !250)
!278 = !DILocation(line: 136, column: 76, scope: !230)
!279 = !DILocation(line: 137, column: 74, scope: !230)
!280 = !DILocation(line: 137, column: 5, scope: !230)
!281 = !DILocation(line: 138, column: 1, scope: !230)
!282 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 142, type: !64, scopeLine: 143, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!283 = !DILocalVariable(name: "data", scope: !282, file: !3, line: 144, type: !55)
!284 = !DILocation(line: 144, column: 12, scope: !282)
!285 = !DILocalVariable(name: "dataBuffer", scope: !282, file: !3, line: 145, type: !69)
!286 = !DILocation(line: 145, column: 10, scope: !282)
!287 = !DILocation(line: 146, column: 12, scope: !282)
!288 = !DILocation(line: 146, column: 10, scope: !282)
!289 = !DILocation(line: 148, column: 12, scope: !282)
!290 = !DILocation(line: 148, column: 5, scope: !282)
!291 = !DILocation(line: 149, column: 75, scope: !282)
!292 = !DILocation(line: 150, column: 73, scope: !282)
!293 = !DILocation(line: 150, column: 5, scope: !282)
!294 = !DILocation(line: 151, column: 1, scope: !282)
!295 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_good", scope: !3, file: !3, line: 153, type: !64, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!296 = !DILocation(line: 155, column: 5, scope: !295)
!297 = !DILocation(line: 156, column: 5, scope: !295)
!298 = !DILocation(line: 157, column: 5, scope: !295)
!299 = !DILocation(line: 158, column: 1, scope: !295)
!300 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badSink", scope: !58, file: !58, line: 29, type: !301, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !55}
!303 = !DILocalVariable(name: "data", arg: 1, scope: !300, file: !58, line: 29, type: !55)
!304 = !DILocation(line: 29, column: 77, scope: !300)
!305 = !DILocation(line: 31, column: 8, scope: !306)
!306 = distinct !DILexicalBlock(scope: !300, file: !58, line: 31, column: 8)
!307 = !DILocation(line: 31, column: 8, scope: !300)
!308 = !DILocation(line: 34, column: 17, scope: !309)
!309 = distinct !DILexicalBlock(scope: !306, file: !58, line: 32, column: 5)
!310 = !DILocation(line: 34, column: 25, scope: !309)
!311 = !DILocation(line: 34, column: 9, scope: !309)
!312 = !DILocation(line: 35, column: 5, scope: !309)
!313 = !DILocation(line: 36, column: 1, scope: !300)
!314 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Sink", scope: !58, file: !58, line: 48, type: !301, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!315 = !DILocalVariable(name: "data", arg: 1, scope: !314, file: !58, line: 48, type: !55)
!316 = !DILocation(line: 48, column: 82, scope: !314)
!317 = !DILocation(line: 50, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !58, line: 50, column: 8)
!319 = !DILocation(line: 50, column: 8, scope: !314)
!320 = !DILocation(line: 53, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !58, line: 51, column: 5)
!322 = !DILocation(line: 54, column: 5, scope: !321)
!323 = !DILocation(line: 58, column: 17, scope: !324)
!324 = distinct !DILexicalBlock(scope: !318, file: !58, line: 56, column: 5)
!325 = !DILocation(line: 58, column: 33, scope: !324)
!326 = !DILocation(line: 58, column: 9, scope: !324)
!327 = !DILocation(line: 60, column: 1, scope: !314)
!328 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Sink", scope: !58, file: !58, line: 63, type: !301, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!329 = !DILocalVariable(name: "data", arg: 1, scope: !328, file: !58, line: 63, type: !55)
!330 = !DILocation(line: 63, column: 82, scope: !328)
!331 = !DILocation(line: 65, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !58, line: 65, column: 8)
!333 = !DILocation(line: 65, column: 8, scope: !328)
!334 = !DILocation(line: 68, column: 17, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !58, line: 66, column: 5)
!336 = !DILocation(line: 68, column: 33, scope: !335)
!337 = !DILocation(line: 68, column: 9, scope: !335)
!338 = !DILocation(line: 69, column: 5, scope: !335)
!339 = !DILocation(line: 70, column: 1, scope: !328)
!340 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BSink", scope: !58, file: !58, line: 73, type: !301, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !57, retainedNodes: !4)
!341 = !DILocalVariable(name: "data", arg: 1, scope: !340, file: !58, line: 73, type: !55)
!342 = !DILocation(line: 73, column: 81, scope: !340)
!343 = !DILocation(line: 75, column: 8, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !58, line: 75, column: 8)
!345 = !DILocation(line: 75, column: 8, scope: !340)
!346 = !DILocation(line: 78, column: 17, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !58, line: 76, column: 5)
!348 = !DILocation(line: 78, column: 25, scope: !347)
!349 = !DILocation(line: 78, column: 9, scope: !347)
!350 = !DILocation(line: 79, column: 5, scope: !347)
!351 = !DILocation(line: 80, column: 1, scope: !340)
!352 = distinct !DISubprogram(name: "printLine", scope: !18, file: !18, line: 11, type: !301, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!353 = !DILocalVariable(name: "line", arg: 1, scope: !352, file: !18, line: 11, type: !55)
!354 = !DILocation(line: 11, column: 25, scope: !352)
!355 = !DILocation(line: 13, column: 1, scope: !352)
!356 = !DILocation(line: 14, column: 8, scope: !357)
!357 = distinct !DILexicalBlock(scope: !352, file: !18, line: 14, column: 8)
!358 = !DILocation(line: 14, column: 13, scope: !357)
!359 = !DILocation(line: 14, column: 8, scope: !352)
!360 = !DILocation(line: 16, column: 24, scope: !361)
!361 = distinct !DILexicalBlock(scope: !357, file: !18, line: 15, column: 5)
!362 = !DILocation(line: 16, column: 9, scope: !361)
!363 = !DILocation(line: 17, column: 5, scope: !361)
!364 = !DILocation(line: 18, column: 5, scope: !352)
!365 = !DILocation(line: 19, column: 1, scope: !352)
!366 = distinct !DISubprogram(name: "printSinkLine", scope: !18, file: !18, line: 20, type: !301, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!367 = !DILocalVariable(name: "line", arg: 1, scope: !366, file: !18, line: 20, type: !55)
!368 = !DILocation(line: 20, column: 29, scope: !366)
!369 = !DILocation(line: 22, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !18, line: 22, column: 8)
!371 = !DILocation(line: 22, column: 13, scope: !370)
!372 = !DILocation(line: 22, column: 8, scope: !366)
!373 = !DILocation(line: 24, column: 24, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !18, line: 23, column: 5)
!375 = !DILocation(line: 24, column: 9, scope: !374)
!376 = !DILocation(line: 25, column: 5, scope: !374)
!377 = !DILocation(line: 26, column: 1, scope: !366)
!378 = distinct !DISubprogram(name: "printWLine", scope: !18, file: !18, line: 27, type: !379, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!379 = !DISubroutineType(types: !380)
!380 = !{null, !381}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !78, line: 74, baseType: !7)
!383 = !DILocalVariable(name: "line", arg: 1, scope: !378, file: !18, line: 27, type: !381)
!384 = !DILocation(line: 27, column: 29, scope: !378)
!385 = !DILocation(line: 29, column: 8, scope: !386)
!386 = distinct !DILexicalBlock(scope: !378, file: !18, line: 29, column: 8)
!387 = !DILocation(line: 29, column: 13, scope: !386)
!388 = !DILocation(line: 29, column: 8, scope: !378)
!389 = !DILocation(line: 31, column: 27, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !18, line: 30, column: 5)
!391 = !DILocation(line: 31, column: 9, scope: !390)
!392 = !DILocation(line: 32, column: 5, scope: !390)
!393 = !DILocation(line: 33, column: 1, scope: !378)
!394 = distinct !DISubprogram(name: "printIntLine", scope: !18, file: !18, line: 35, type: !395, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !7}
!397 = !DILocalVariable(name: "intNumber", arg: 1, scope: !394, file: !18, line: 35, type: !7)
!398 = !DILocation(line: 35, column: 24, scope: !394)
!399 = !DILocation(line: 37, column: 20, scope: !394)
!400 = !DILocation(line: 37, column: 5, scope: !394)
!401 = !DILocation(line: 38, column: 1, scope: !394)
!402 = distinct !DISubprogram(name: "printShortLine", scope: !18, file: !18, line: 40, type: !403, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !405}
!405 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!406 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !402, file: !18, line: 40, type: !405)
!407 = !DILocation(line: 40, column: 28, scope: !402)
!408 = !DILocation(line: 42, column: 21, scope: !402)
!409 = !DILocation(line: 42, column: 5, scope: !402)
!410 = !DILocation(line: 43, column: 1, scope: !402)
!411 = distinct !DISubprogram(name: "printFloatLine", scope: !18, file: !18, line: 45, type: !412, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !414}
!414 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!415 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !411, file: !18, line: 45, type: !414)
!416 = !DILocation(line: 45, column: 28, scope: !411)
!417 = !DILocation(line: 47, column: 20, scope: !411)
!418 = !DILocation(line: 47, column: 5, scope: !411)
!419 = !DILocation(line: 48, column: 1, scope: !411)
!420 = distinct !DISubprogram(name: "printLongLine", scope: !18, file: !18, line: 50, type: !421, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !112}
!423 = !DILocalVariable(name: "longNumber", arg: 1, scope: !420, file: !18, line: 50, type: !112)
!424 = !DILocation(line: 50, column: 26, scope: !420)
!425 = !DILocation(line: 52, column: 21, scope: !420)
!426 = !DILocation(line: 52, column: 5, scope: !420)
!427 = !DILocation(line: 53, column: 1, scope: !420)
!428 = distinct !DISubprogram(name: "printLongLongLine", scope: !18, file: !18, line: 55, type: !429, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !431}
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !432, line: 27, baseType: !433)
!432 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !111, line: 44, baseType: !112)
!434 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !428, file: !18, line: 55, type: !431)
!435 = !DILocation(line: 55, column: 33, scope: !428)
!436 = !DILocation(line: 57, column: 29, scope: !428)
!437 = !DILocation(line: 57, column: 5, scope: !428)
!438 = !DILocation(line: 58, column: 1, scope: !428)
!439 = distinct !DISubprogram(name: "printSizeTLine", scope: !18, file: !18, line: 60, type: !440, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !77}
!442 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !439, file: !18, line: 60, type: !77)
!443 = !DILocation(line: 60, column: 29, scope: !439)
!444 = !DILocation(line: 62, column: 21, scope: !439)
!445 = !DILocation(line: 62, column: 5, scope: !439)
!446 = !DILocation(line: 63, column: 1, scope: !439)
!447 = distinct !DISubprogram(name: "printHexCharLine", scope: !18, file: !18, line: 65, type: !448, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !56}
!450 = !DILocalVariable(name: "charHex", arg: 1, scope: !447, file: !18, line: 65, type: !56)
!451 = !DILocation(line: 65, column: 29, scope: !447)
!452 = !DILocation(line: 67, column: 22, scope: !447)
!453 = !DILocation(line: 67, column: 5, scope: !447)
!454 = !DILocation(line: 68, column: 1, scope: !447)
!455 = distinct !DISubprogram(name: "printWcharLine", scope: !18, file: !18, line: 70, type: !456, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !382}
!458 = !DILocalVariable(name: "wideChar", arg: 1, scope: !455, file: !18, line: 70, type: !382)
!459 = !DILocation(line: 70, column: 29, scope: !455)
!460 = !DILocalVariable(name: "s", scope: !455, file: !18, line: 74, type: !461)
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
!473 = distinct !DISubprogram(name: "printUnsignedLine", scope: !18, file: !18, line: 80, type: !474, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !22}
!476 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !473, file: !18, line: 80, type: !22)
!477 = !DILocation(line: 80, column: 33, scope: !473)
!478 = !DILocation(line: 82, column: 20, scope: !473)
!479 = !DILocation(line: 82, column: 5, scope: !473)
!480 = !DILocation(line: 83, column: 1, scope: !473)
!481 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !18, file: !18, line: 85, type: !482, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !38}
!484 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !481, file: !18, line: 85, type: !38)
!485 = !DILocation(line: 85, column: 45, scope: !481)
!486 = !DILocation(line: 87, column: 22, scope: !481)
!487 = !DILocation(line: 87, column: 5, scope: !481)
!488 = !DILocation(line: 88, column: 1, scope: !481)
!489 = distinct !DISubprogram(name: "printDoubleLine", scope: !18, file: !18, line: 90, type: !490, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !492}
!492 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!493 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !489, file: !18, line: 90, type: !492)
!494 = !DILocation(line: 90, column: 29, scope: !489)
!495 = !DILocation(line: 92, column: 20, scope: !489)
!496 = !DILocation(line: 92, column: 5, scope: !489)
!497 = !DILocation(line: 93, column: 1, scope: !489)
!498 = distinct !DISubprogram(name: "printStructLine", scope: !18, file: !18, line: 95, type: !499, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !503, line: 100, baseType: !504)
!503 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_981/source_code")
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !503, line: 96, size: 64, elements: !505)
!505 = !{!506, !507}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !504, file: !503, line: 98, baseType: !7, size: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !504, file: !503, line: 99, baseType: !7, size: 32, offset: 32)
!508 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !498, file: !18, line: 95, type: !501)
!509 = !DILocation(line: 95, column: 40, scope: !498)
!510 = !DILocation(line: 97, column: 26, scope: !498)
!511 = !DILocation(line: 97, column: 47, scope: !498)
!512 = !DILocation(line: 97, column: 55, scope: !498)
!513 = !DILocation(line: 97, column: 76, scope: !498)
!514 = !DILocation(line: 97, column: 5, scope: !498)
!515 = !DILocation(line: 98, column: 1, scope: !498)
!516 = distinct !DISubprogram(name: "printBytesLine", scope: !18, file: !18, line: 100, type: !517, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !519, !77}
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!520 = !DILocalVariable(name: "bytes", arg: 1, scope: !516, file: !18, line: 100, type: !519)
!521 = !DILocation(line: 100, column: 38, scope: !516)
!522 = !DILocalVariable(name: "numBytes", arg: 2, scope: !516, file: !18, line: 100, type: !77)
!523 = !DILocation(line: 100, column: 52, scope: !516)
!524 = !DILocalVariable(name: "i", scope: !516, file: !18, line: 102, type: !77)
!525 = !DILocation(line: 102, column: 12, scope: !516)
!526 = !DILocation(line: 103, column: 12, scope: !527)
!527 = distinct !DILexicalBlock(scope: !516, file: !18, line: 103, column: 5)
!528 = !DILocation(line: 103, column: 10, scope: !527)
!529 = !DILocation(line: 103, column: 17, scope: !530)
!530 = distinct !DILexicalBlock(scope: !527, file: !18, line: 103, column: 5)
!531 = !DILocation(line: 103, column: 21, scope: !530)
!532 = !DILocation(line: 103, column: 19, scope: !530)
!533 = !DILocation(line: 103, column: 5, scope: !527)
!534 = !DILocation(line: 105, column: 24, scope: !535)
!535 = distinct !DILexicalBlock(scope: !530, file: !18, line: 104, column: 5)
!536 = !DILocation(line: 105, column: 30, scope: !535)
!537 = !DILocation(line: 105, column: 9, scope: !535)
!538 = !DILocation(line: 106, column: 5, scope: !535)
!539 = !DILocation(line: 103, column: 31, scope: !530)
!540 = !DILocation(line: 103, column: 5, scope: !530)
!541 = distinct !{!541, !533, !542, !543}
!542 = !DILocation(line: 106, column: 5, scope: !527)
!543 = !{!"llvm.loop.mustprogress"}
!544 = !DILocation(line: 107, column: 5, scope: !516)
!545 = !DILocation(line: 108, column: 1, scope: !516)
!546 = distinct !DISubprogram(name: "decodeHexChars", scope: !18, file: !18, line: 113, type: !547, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!547 = !DISubroutineType(types: !548)
!548 = !{!77, !519, !77, !55}
!549 = !DILocalVariable(name: "bytes", arg: 1, scope: !546, file: !18, line: 113, type: !519)
!550 = !DILocation(line: 113, column: 39, scope: !546)
!551 = !DILocalVariable(name: "numBytes", arg: 2, scope: !546, file: !18, line: 113, type: !77)
!552 = !DILocation(line: 113, column: 53, scope: !546)
!553 = !DILocalVariable(name: "hex", arg: 3, scope: !546, file: !18, line: 113, type: !55)
!554 = !DILocation(line: 113, column: 71, scope: !546)
!555 = !DILocalVariable(name: "numWritten", scope: !546, file: !18, line: 115, type: !77)
!556 = !DILocation(line: 115, column: 12, scope: !546)
!557 = !DILocation(line: 121, column: 5, scope: !546)
!558 = !DILocation(line: 121, column: 12, scope: !546)
!559 = !DILocation(line: 121, column: 25, scope: !546)
!560 = !DILocation(line: 121, column: 23, scope: !546)
!561 = !DILocation(line: 121, column: 34, scope: !546)
!562 = !DILocation(line: 121, column: 37, scope: !546)
!563 = !DILocation(line: 121, column: 67, scope: !546)
!564 = !DILocation(line: 121, column: 70, scope: !546)
!565 = !DILocation(line: 0, scope: !546)
!566 = !DILocalVariable(name: "byte", scope: !567, file: !18, line: 123, type: !7)
!567 = distinct !DILexicalBlock(scope: !546, file: !18, line: 122, column: 5)
!568 = !DILocation(line: 123, column: 13, scope: !567)
!569 = !DILocation(line: 124, column: 17, scope: !567)
!570 = !DILocation(line: 124, column: 25, scope: !567)
!571 = !DILocation(line: 124, column: 23, scope: !567)
!572 = !DILocation(line: 124, column: 9, scope: !567)
!573 = !DILocation(line: 125, column: 45, scope: !567)
!574 = !DILocation(line: 125, column: 29, scope: !567)
!575 = !DILocation(line: 125, column: 9, scope: !567)
!576 = !DILocation(line: 125, column: 15, scope: !567)
!577 = !DILocation(line: 125, column: 27, scope: !567)
!578 = !DILocation(line: 126, column: 9, scope: !567)
!579 = distinct !{!579, !557, !580, !543}
!580 = !DILocation(line: 127, column: 5, scope: !546)
!581 = !DILocation(line: 129, column: 12, scope: !546)
!582 = !DILocation(line: 129, column: 5, scope: !546)
!583 = distinct !DISubprogram(name: "decodeHexWChars", scope: !18, file: !18, line: 135, type: !584, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!584 = !DISubroutineType(types: !585)
!585 = !{!77, !519, !77, !381}
!586 = !DILocalVariable(name: "bytes", arg: 1, scope: !583, file: !18, line: 135, type: !519)
!587 = !DILocation(line: 135, column: 41, scope: !583)
!588 = !DILocalVariable(name: "numBytes", arg: 2, scope: !583, file: !18, line: 135, type: !77)
!589 = !DILocation(line: 135, column: 55, scope: !583)
!590 = !DILocalVariable(name: "hex", arg: 3, scope: !583, file: !18, line: 135, type: !381)
!591 = !DILocation(line: 135, column: 76, scope: !583)
!592 = !DILocalVariable(name: "numWritten", scope: !583, file: !18, line: 137, type: !77)
!593 = !DILocation(line: 137, column: 12, scope: !583)
!594 = !DILocation(line: 143, column: 5, scope: !583)
!595 = !DILocation(line: 143, column: 12, scope: !583)
!596 = !DILocation(line: 143, column: 25, scope: !583)
!597 = !DILocation(line: 143, column: 23, scope: !583)
!598 = !DILocation(line: 143, column: 34, scope: !583)
!599 = !DILocation(line: 143, column: 47, scope: !583)
!600 = !DILocation(line: 143, column: 55, scope: !583)
!601 = !DILocation(line: 143, column: 53, scope: !583)
!602 = !DILocation(line: 143, column: 37, scope: !583)
!603 = !DILocation(line: 143, column: 68, scope: !583)
!604 = !DILocation(line: 143, column: 81, scope: !583)
!605 = !DILocation(line: 143, column: 89, scope: !583)
!606 = !DILocation(line: 143, column: 87, scope: !583)
!607 = !DILocation(line: 143, column: 100, scope: !583)
!608 = !DILocation(line: 143, column: 71, scope: !583)
!609 = !DILocation(line: 0, scope: !583)
!610 = !DILocalVariable(name: "byte", scope: !611, file: !18, line: 145, type: !7)
!611 = distinct !DILexicalBlock(scope: !583, file: !18, line: 144, column: 5)
!612 = !DILocation(line: 145, column: 13, scope: !611)
!613 = !DILocation(line: 146, column: 18, scope: !611)
!614 = !DILocation(line: 146, column: 26, scope: !611)
!615 = !DILocation(line: 146, column: 24, scope: !611)
!616 = !DILocation(line: 146, column: 9, scope: !611)
!617 = !DILocation(line: 147, column: 45, scope: !611)
!618 = !DILocation(line: 147, column: 29, scope: !611)
!619 = !DILocation(line: 147, column: 9, scope: !611)
!620 = !DILocation(line: 147, column: 15, scope: !611)
!621 = !DILocation(line: 147, column: 27, scope: !611)
!622 = !DILocation(line: 148, column: 9, scope: !611)
!623 = distinct !{!623, !594, !624, !543}
!624 = !DILocation(line: 149, column: 5, scope: !583)
!625 = !DILocation(line: 151, column: 12, scope: !583)
!626 = !DILocation(line: 151, column: 5, scope: !583)
!627 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !18, file: !18, line: 156, type: !628, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!628 = !DISubroutineType(types: !629)
!629 = !{!7}
!630 = !DILocation(line: 158, column: 5, scope: !627)
!631 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !18, file: !18, line: 161, type: !628, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!632 = !DILocation(line: 163, column: 5, scope: !631)
!633 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !18, file: !18, line: 166, type: !628, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!634 = !DILocation(line: 168, column: 13, scope: !633)
!635 = !DILocation(line: 168, column: 20, scope: !633)
!636 = !DILocation(line: 168, column: 5, scope: !633)
!637 = distinct !DISubprogram(name: "good1", scope: !18, file: !18, line: 187, type: !64, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!638 = !DILocation(line: 187, column: 16, scope: !637)
!639 = distinct !DISubprogram(name: "good2", scope: !18, file: !18, line: 188, type: !64, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!640 = !DILocation(line: 188, column: 16, scope: !639)
!641 = distinct !DISubprogram(name: "good3", scope: !18, file: !18, line: 189, type: !64, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!642 = !DILocation(line: 189, column: 16, scope: !641)
!643 = distinct !DISubprogram(name: "good4", scope: !18, file: !18, line: 190, type: !64, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!644 = !DILocation(line: 190, column: 16, scope: !643)
!645 = distinct !DISubprogram(name: "good5", scope: !18, file: !18, line: 191, type: !64, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!646 = !DILocation(line: 191, column: 16, scope: !645)
!647 = distinct !DISubprogram(name: "good6", scope: !18, file: !18, line: 192, type: !64, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!648 = !DILocation(line: 192, column: 16, scope: !647)
!649 = distinct !DISubprogram(name: "good7", scope: !18, file: !18, line: 193, type: !64, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!650 = !DILocation(line: 193, column: 16, scope: !649)
!651 = distinct !DISubprogram(name: "good8", scope: !18, file: !18, line: 194, type: !64, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!652 = !DILocation(line: 194, column: 16, scope: !651)
!653 = distinct !DISubprogram(name: "good9", scope: !18, file: !18, line: 195, type: !64, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!654 = !DILocation(line: 195, column: 16, scope: !653)
!655 = distinct !DISubprogram(name: "bad1", scope: !18, file: !18, line: 198, type: !64, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!656 = !DILocation(line: 198, column: 15, scope: !655)
!657 = distinct !DISubprogram(name: "bad2", scope: !18, file: !18, line: 199, type: !64, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!658 = !DILocation(line: 199, column: 15, scope: !657)
!659 = distinct !DISubprogram(name: "bad3", scope: !18, file: !18, line: 200, type: !64, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!660 = !DILocation(line: 200, column: 15, scope: !659)
!661 = distinct !DISubprogram(name: "bad4", scope: !18, file: !18, line: 201, type: !64, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!662 = !DILocation(line: 201, column: 15, scope: !661)
!663 = distinct !DISubprogram(name: "bad5", scope: !18, file: !18, line: 202, type: !64, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!664 = !DILocation(line: 202, column: 15, scope: !663)
!665 = distinct !DISubprogram(name: "bad6", scope: !18, file: !18, line: 203, type: !64, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!666 = !DILocation(line: 203, column: 15, scope: !665)
!667 = distinct !DISubprogram(name: "bad7", scope: !18, file: !18, line: 204, type: !64, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!668 = !DILocation(line: 204, column: 15, scope: !667)
!669 = distinct !DISubprogram(name: "bad8", scope: !18, file: !18, line: 205, type: !64, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!670 = !DILocation(line: 205, column: 15, scope: !669)
!671 = distinct !DISubprogram(name: "bad9", scope: !18, file: !18, line: 206, type: !64, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !4)
!672 = !DILocation(line: 206, column: 15, scope: !671)
