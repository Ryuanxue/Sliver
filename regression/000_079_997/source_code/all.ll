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
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63_bad() #0 !dbg !54 {
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
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_badSink(i8** %data), !dbg !165
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !175
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_goodG2BSink(i8** %data), !dbg !176
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
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_goodB2GSink(i8** %data), !dbg !226
  ret void, !dbg !227
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63_good() #0 !dbg !228 {
entry:
  call void @goodG2B(), !dbg !229
  call void @goodB2G(), !dbg !230
  ret void, !dbg !231
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_badSink(i8** %dataPtr) #0 !dbg !232 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !235, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata i8** %data, metadata !237, metadata !DIExpression()), !dbg !238
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !239
  %1 = load i8*, i8** %0, align 8, !dbg !240
  store i8* %1, i8** %data, align 8, !dbg !238
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !241
  %3 = load i8*, i8** %data, align 8, !dbg !242
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !243
  ret void, !dbg !244
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_goodG2BSink(i8** %dataPtr) #0 !dbg !245 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !246, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata i8** %data, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !250
  %1 = load i8*, i8** %0, align 8, !dbg !251
  store i8* %1, i8** %data, align 8, !dbg !249
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !252
  %3 = load i8*, i8** %data, align 8, !dbg !253
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !254
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_goodB2GSink(i8** %dataPtr) #0 !dbg !256 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata i8** %data, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !261
  %1 = load i8*, i8** %0, align 8, !dbg !262
  store i8* %1, i8** %data, align 8, !dbg !260
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !263
  %3 = load i8*, i8** %data, align 8, !dbg !264
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %3), !dbg !265
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !267 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !270, metadata !DIExpression()), !dbg !271
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !272
  %0 = load i8*, i8** %line.addr, align 8, !dbg !273
  %cmp = icmp ne i8* %0, null, !dbg !275
  br i1 %cmp, label %if.then, label %if.end, !dbg !276

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !277
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !279
  br label %if.end, !dbg !280

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.12, i64 0, i64 0)), !dbg !281
  ret void, !dbg !282
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !283 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !284, metadata !DIExpression()), !dbg !285
  %0 = load i8*, i8** %line.addr, align 8, !dbg !286
  %cmp = icmp ne i8* %0, null, !dbg !288
  br i1 %cmp, label %if.then, label %if.end, !dbg !289

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !290
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !292
  br label %if.end, !dbg !293

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !294
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !295 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load i32*, i32** %line.addr, align 8, !dbg !302
  %cmp = icmp ne i32* %0, null, !dbg !304
  br i1 %cmp, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !306
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.13, i64 0, i64 0), i32* %1), !dbg !308
  br label %if.end, !dbg !309

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !310
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !311 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !316
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !317
  ret void, !dbg !318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !319 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !325
  %conv = sext i16 %0 to i32, !dbg !325
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !326
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !328 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !334
  %conv = fpext float %0 to double, !dbg !334
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !337 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !342
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), i64 %0), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !345 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), i64 %0), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !356 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !361
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !362
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !364 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !369
  %conv = sext i8 %0 to i32, !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !372 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !377, metadata !DIExpression()), !dbg !381
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !382
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !383
  store i32 %0, i32* %arrayidx, align 4, !dbg !384
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !385
  store i32 0, i32* %arrayidx1, align 4, !dbg !386
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !387
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !390 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !393, metadata !DIExpression()), !dbg !394
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !395
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !396
  ret void, !dbg !397
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !398 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !401, metadata !DIExpression()), !dbg !402
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !403
  %conv = zext i8 %0 to i32, !dbg !403
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !404
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !406 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !415 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !427
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !428
  %1 = load i32, i32* %intOne, align 4, !dbg !428
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !429
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !430
  %3 = load i32, i32* %intTwo, align 4, !dbg !430
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !431
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !433 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !437, metadata !DIExpression()), !dbg !438
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !439, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.declare(metadata i64* %i, metadata !441, metadata !DIExpression()), !dbg !442
  store i64 0, i64* %i, align 8, !dbg !443
  br label %for.cond, !dbg !445

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !446
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !448
  %cmp = icmp ult i64 %0, %1, !dbg !449
  br i1 %cmp, label %for.body, label %for.end, !dbg !450

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !451
  %3 = load i64, i64* %i, align 8, !dbg !453
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !451
  %4 = load i8, i8* %arrayidx, align 1, !dbg !451
  %conv = zext i8 %4 to i32, !dbg !451
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !454
  br label %for.inc, !dbg !455

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !456
  %inc = add i64 %5, 1, !dbg !456
  store i64 %inc, i64* %i, align 8, !dbg !456
  br label %for.cond, !dbg !457, !llvm.loop !458

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !461
  ret void, !dbg !462
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !463 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !466, metadata !DIExpression()), !dbg !467
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !468, metadata !DIExpression()), !dbg !469
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !470, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !472, metadata !DIExpression()), !dbg !473
  store i64 0, i64* %numWritten, align 8, !dbg !473
  br label %while.cond, !dbg !474

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !475
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !476
  %cmp = icmp ult i64 %0, %1, !dbg !477
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !478

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !479
  %2 = load i16*, i16** %call, align 8, !dbg !479
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !479
  %4 = load i64, i64* %numWritten, align 8, !dbg !479
  %mul = mul i64 2, %4, !dbg !479
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !479
  %5 = load i8, i8* %arrayidx, align 1, !dbg !479
  %conv = sext i8 %5 to i32, !dbg !479
  %idxprom = sext i32 %conv to i64, !dbg !479
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !479
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !479
  %conv2 = zext i16 %6 to i32, !dbg !479
  %and = and i32 %conv2, 4096, !dbg !479
  %tobool = icmp ne i32 %and, 0, !dbg !479
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !480

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !481
  %7 = load i16*, i16** %call3, align 8, !dbg !481
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !481
  %9 = load i64, i64* %numWritten, align 8, !dbg !481
  %mul4 = mul i64 2, %9, !dbg !481
  %add = add i64 %mul4, 1, !dbg !481
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !481
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !481
  %conv6 = sext i8 %10 to i32, !dbg !481
  %idxprom7 = sext i32 %conv6 to i64, !dbg !481
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !481
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !481
  %conv9 = zext i16 %11 to i32, !dbg !481
  %and10 = and i32 %conv9, 4096, !dbg !481
  %tobool11 = icmp ne i32 %and10, 0, !dbg !480
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !482
  br i1 %12, label %while.body, label %while.end, !dbg !474

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !483, metadata !DIExpression()), !dbg !485
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !486
  %14 = load i64, i64* %numWritten, align 8, !dbg !487
  %mul12 = mul i64 2, %14, !dbg !488
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !486
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !489
  %15 = load i32, i32* %byte, align 4, !dbg !490
  %conv15 = trunc i32 %15 to i8, !dbg !491
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !492
  %17 = load i64, i64* %numWritten, align 8, !dbg !493
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !492
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !494
  %18 = load i64, i64* %numWritten, align 8, !dbg !495
  %inc = add i64 %18, 1, !dbg !495
  store i64 %inc, i64* %numWritten, align 8, !dbg !495
  br label %while.cond, !dbg !474, !llvm.loop !496

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !498
  ret i64 %19, !dbg !499
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !500 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !503, metadata !DIExpression()), !dbg !504
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !505, metadata !DIExpression()), !dbg !506
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !507, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !509, metadata !DIExpression()), !dbg !510
  store i64 0, i64* %numWritten, align 8, !dbg !510
  br label %while.cond, !dbg !511

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !512
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !513
  %cmp = icmp ult i64 %0, %1, !dbg !514
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !515

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !516
  %3 = load i64, i64* %numWritten, align 8, !dbg !517
  %mul = mul i64 2, %3, !dbg !518
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !516
  %4 = load i32, i32* %arrayidx, align 4, !dbg !516
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !519
  %tobool = icmp ne i32 %call, 0, !dbg !519
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !520

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !521
  %6 = load i64, i64* %numWritten, align 8, !dbg !522
  %mul1 = mul i64 2, %6, !dbg !523
  %add = add i64 %mul1, 1, !dbg !524
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !521
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !521
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !525
  %tobool4 = icmp ne i32 %call3, 0, !dbg !520
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !526
  br i1 %8, label %while.body, label %while.end, !dbg !511

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !527, metadata !DIExpression()), !dbg !529
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !530
  %10 = load i64, i64* %numWritten, align 8, !dbg !531
  %mul5 = mul i64 2, %10, !dbg !532
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !530
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !533
  %11 = load i32, i32* %byte, align 4, !dbg !534
  %conv = trunc i32 %11 to i8, !dbg !535
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !536
  %13 = load i64, i64* %numWritten, align 8, !dbg !537
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !536
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !538
  %14 = load i64, i64* %numWritten, align 8, !dbg !539
  %inc = add i64 %14, 1, !dbg !539
  store i64 %inc, i64* %numWritten, align 8, !dbg !539
  br label %while.cond, !dbg !511, !llvm.loop !540

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !542
  ret i64 %15, !dbg !543
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !544 {
entry:
  ret i32 1, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !548 {
entry:
  ret i32 0, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !550 {
entry:
  %call = call i32 @rand() #8, !dbg !551
  %rem = srem i32 %call, 2, !dbg !552
  ret i32 %rem, !dbg !553
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !584 {
entry:
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !586 {
entry:
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !588 {
entry:
  ret void, !dbg !589
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_997/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_63a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_997/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_63b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_997/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_63_bad", scope: !45, file: !45, line: 35, type: !55, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 37, type: !42)
!58 = !DILocation(line: 37, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 38, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 100)
!63 = !DILocation(line: 38, column: 10, scope: !54)
!64 = !DILocation(line: 39, column: 12, scope: !54)
!65 = !DILocation(line: 39, column: 10, scope: !54)
!66 = !DILocalVariable(name: "dataLen", scope: !67, file: !45, line: 42, type: !68)
!67 = distinct !DILexicalBlock(scope: !54, file: !45, line: 40, column: 5)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 42, column: 16, scope: !67)
!72 = !DILocation(line: 42, column: 33, scope: !67)
!73 = !DILocation(line: 42, column: 26, scope: !67)
!74 = !DILocalVariable(name: "pFile", scope: !67, file: !45, line: 43, type: !75)
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
!130 = !DILocation(line: 43, column: 16, scope: !67)
!131 = !DILocation(line: 45, column: 17, scope: !132)
!132 = distinct !DILexicalBlock(scope: !67, file: !45, line: 45, column: 13)
!133 = !DILocation(line: 45, column: 16, scope: !132)
!134 = !DILocation(line: 45, column: 25, scope: !132)
!135 = !DILocation(line: 45, column: 13, scope: !67)
!136 = !DILocation(line: 47, column: 21, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !45, line: 46, column: 9)
!138 = !DILocation(line: 47, column: 19, scope: !137)
!139 = !DILocation(line: 48, column: 17, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !45, line: 48, column: 17)
!141 = !DILocation(line: 48, column: 23, scope: !140)
!142 = !DILocation(line: 48, column: 17, scope: !137)
!143 = !DILocation(line: 51, column: 27, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !45, line: 51, column: 21)
!145 = distinct !DILexicalBlock(scope: !140, file: !45, line: 49, column: 13)
!146 = !DILocation(line: 51, column: 32, scope: !144)
!147 = !DILocation(line: 51, column: 31, scope: !144)
!148 = !DILocation(line: 51, column: 51, scope: !144)
!149 = !DILocation(line: 51, column: 50, scope: !144)
!150 = !DILocation(line: 51, column: 41, scope: !144)
!151 = !DILocation(line: 51, column: 61, scope: !144)
!152 = !DILocation(line: 51, column: 21, scope: !144)
!153 = !DILocation(line: 51, column: 68, scope: !144)
!154 = !DILocation(line: 51, column: 21, scope: !145)
!155 = !DILocation(line: 53, column: 21, scope: !156)
!156 = distinct !DILexicalBlock(scope: !144, file: !45, line: 52, column: 17)
!157 = !DILocation(line: 55, column: 21, scope: !156)
!158 = !DILocation(line: 55, column: 26, scope: !156)
!159 = !DILocation(line: 55, column: 35, scope: !156)
!160 = !DILocation(line: 56, column: 17, scope: !156)
!161 = !DILocation(line: 57, column: 24, scope: !145)
!162 = !DILocation(line: 57, column: 17, scope: !145)
!163 = !DILocation(line: 58, column: 13, scope: !145)
!164 = !DILocation(line: 59, column: 9, scope: !137)
!165 = !DILocation(line: 61, column: 5, scope: !54)
!166 = !DILocation(line: 62, column: 1, scope: !54)
!167 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 70, type: !55, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!168 = !DILocalVariable(name: "data", scope: !167, file: !45, line: 72, type: !42)
!169 = !DILocation(line: 72, column: 12, scope: !167)
!170 = !DILocalVariable(name: "dataBuffer", scope: !167, file: !45, line: 73, type: !60)
!171 = !DILocation(line: 73, column: 10, scope: !167)
!172 = !DILocation(line: 74, column: 12, scope: !167)
!173 = !DILocation(line: 74, column: 10, scope: !167)
!174 = !DILocation(line: 76, column: 12, scope: !167)
!175 = !DILocation(line: 76, column: 5, scope: !167)
!176 = !DILocation(line: 77, column: 5, scope: !167)
!177 = !DILocation(line: 78, column: 1, scope: !167)
!178 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 82, type: !55, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!179 = !DILocalVariable(name: "data", scope: !178, file: !45, line: 84, type: !42)
!180 = !DILocation(line: 84, column: 12, scope: !178)
!181 = !DILocalVariable(name: "dataBuffer", scope: !178, file: !45, line: 85, type: !60)
!182 = !DILocation(line: 85, column: 10, scope: !178)
!183 = !DILocation(line: 86, column: 12, scope: !178)
!184 = !DILocation(line: 86, column: 10, scope: !178)
!185 = !DILocalVariable(name: "dataLen", scope: !186, file: !45, line: 89, type: !68)
!186 = distinct !DILexicalBlock(scope: !178, file: !45, line: 87, column: 5)
!187 = !DILocation(line: 89, column: 16, scope: !186)
!188 = !DILocation(line: 89, column: 33, scope: !186)
!189 = !DILocation(line: 89, column: 26, scope: !186)
!190 = !DILocalVariable(name: "pFile", scope: !186, file: !45, line: 90, type: !75)
!191 = !DILocation(line: 90, column: 16, scope: !186)
!192 = !DILocation(line: 92, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !186, file: !45, line: 92, column: 13)
!194 = !DILocation(line: 92, column: 16, scope: !193)
!195 = !DILocation(line: 92, column: 25, scope: !193)
!196 = !DILocation(line: 92, column: 13, scope: !186)
!197 = !DILocation(line: 94, column: 21, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !45, line: 93, column: 9)
!199 = !DILocation(line: 94, column: 19, scope: !198)
!200 = !DILocation(line: 95, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !45, line: 95, column: 17)
!202 = !DILocation(line: 95, column: 23, scope: !201)
!203 = !DILocation(line: 95, column: 17, scope: !198)
!204 = !DILocation(line: 98, column: 27, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !45, line: 98, column: 21)
!206 = distinct !DILexicalBlock(scope: !201, file: !45, line: 96, column: 13)
!207 = !DILocation(line: 98, column: 32, scope: !205)
!208 = !DILocation(line: 98, column: 31, scope: !205)
!209 = !DILocation(line: 98, column: 51, scope: !205)
!210 = !DILocation(line: 98, column: 50, scope: !205)
!211 = !DILocation(line: 98, column: 41, scope: !205)
!212 = !DILocation(line: 98, column: 61, scope: !205)
!213 = !DILocation(line: 98, column: 21, scope: !205)
!214 = !DILocation(line: 98, column: 68, scope: !205)
!215 = !DILocation(line: 98, column: 21, scope: !206)
!216 = !DILocation(line: 100, column: 21, scope: !217)
!217 = distinct !DILexicalBlock(scope: !205, file: !45, line: 99, column: 17)
!218 = !DILocation(line: 102, column: 21, scope: !217)
!219 = !DILocation(line: 102, column: 26, scope: !217)
!220 = !DILocation(line: 102, column: 35, scope: !217)
!221 = !DILocation(line: 103, column: 17, scope: !217)
!222 = !DILocation(line: 104, column: 24, scope: !206)
!223 = !DILocation(line: 104, column: 17, scope: !206)
!224 = !DILocation(line: 105, column: 13, scope: !206)
!225 = !DILocation(line: 106, column: 9, scope: !198)
!226 = !DILocation(line: 108, column: 5, scope: !178)
!227 = !DILocation(line: 109, column: 1, scope: !178)
!228 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_63_good", scope: !45, file: !45, line: 111, type: !55, scopeLine: 112, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!229 = !DILocation(line: 113, column: 5, scope: !228)
!230 = !DILocation(line: 114, column: 5, scope: !228)
!231 = !DILocation(line: 115, column: 1, scope: !228)
!232 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_badSink", scope: !49, file: !49, line: 32, type: !233, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !41}
!235 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !232, file: !49, line: 32, type: !41)
!236 = !DILocation(line: 32, column: 80, scope: !232)
!237 = !DILocalVariable(name: "data", scope: !232, file: !49, line: 34, type: !42)
!238 = !DILocation(line: 34, column: 12, scope: !232)
!239 = !DILocation(line: 34, column: 20, scope: !232)
!240 = !DILocation(line: 34, column: 19, scope: !232)
!241 = !DILocation(line: 36, column: 13, scope: !232)
!242 = !DILocation(line: 36, column: 21, scope: !232)
!243 = !DILocation(line: 36, column: 5, scope: !232)
!244 = !DILocation(line: 37, column: 1, scope: !232)
!245 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_goodG2BSink", scope: !49, file: !49, line: 44, type: !233, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!246 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !245, file: !49, line: 44, type: !41)
!247 = !DILocation(line: 44, column: 84, scope: !245)
!248 = !DILocalVariable(name: "data", scope: !245, file: !49, line: 46, type: !42)
!249 = !DILocation(line: 46, column: 12, scope: !245)
!250 = !DILocation(line: 46, column: 20, scope: !245)
!251 = !DILocation(line: 46, column: 19, scope: !245)
!252 = !DILocation(line: 48, column: 13, scope: !245)
!253 = !DILocation(line: 48, column: 21, scope: !245)
!254 = !DILocation(line: 48, column: 5, scope: !245)
!255 = !DILocation(line: 49, column: 1, scope: !245)
!256 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_goodB2GSink", scope: !49, file: !49, line: 52, type: !233, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!257 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !256, file: !49, line: 52, type: !41)
!258 = !DILocation(line: 52, column: 84, scope: !256)
!259 = !DILocalVariable(name: "data", scope: !256, file: !49, line: 54, type: !42)
!260 = !DILocation(line: 54, column: 12, scope: !256)
!261 = !DILocation(line: 54, column: 20, scope: !256)
!262 = !DILocation(line: 54, column: 19, scope: !256)
!263 = !DILocation(line: 56, column: 13, scope: !256)
!264 = !DILocation(line: 56, column: 29, scope: !256)
!265 = !DILocation(line: 56, column: 5, scope: !256)
!266 = !DILocation(line: 57, column: 1, scope: !256)
!267 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !268, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !42}
!270 = !DILocalVariable(name: "line", arg: 1, scope: !267, file: !3, line: 11, type: !42)
!271 = !DILocation(line: 11, column: 25, scope: !267)
!272 = !DILocation(line: 13, column: 1, scope: !267)
!273 = !DILocation(line: 14, column: 8, scope: !274)
!274 = distinct !DILexicalBlock(scope: !267, file: !3, line: 14, column: 8)
!275 = !DILocation(line: 14, column: 13, scope: !274)
!276 = !DILocation(line: 14, column: 8, scope: !267)
!277 = !DILocation(line: 16, column: 24, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !3, line: 15, column: 5)
!279 = !DILocation(line: 16, column: 9, scope: !278)
!280 = !DILocation(line: 17, column: 5, scope: !278)
!281 = !DILocation(line: 18, column: 5, scope: !267)
!282 = !DILocation(line: 19, column: 1, scope: !267)
!283 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !268, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!284 = !DILocalVariable(name: "line", arg: 1, scope: !283, file: !3, line: 20, type: !42)
!285 = !DILocation(line: 20, column: 29, scope: !283)
!286 = !DILocation(line: 22, column: 8, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !3, line: 22, column: 8)
!288 = !DILocation(line: 22, column: 13, scope: !287)
!289 = !DILocation(line: 22, column: 8, scope: !283)
!290 = !DILocation(line: 24, column: 24, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !3, line: 23, column: 5)
!292 = !DILocation(line: 24, column: 9, scope: !291)
!293 = !DILocation(line: 25, column: 5, scope: !291)
!294 = !DILocation(line: 26, column: 1, scope: !283)
!295 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !296, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !298}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!300 = !DILocalVariable(name: "line", arg: 1, scope: !295, file: !3, line: 27, type: !298)
!301 = !DILocation(line: 27, column: 29, scope: !295)
!302 = !DILocation(line: 29, column: 8, scope: !303)
!303 = distinct !DILexicalBlock(scope: !295, file: !3, line: 29, column: 8)
!304 = !DILocation(line: 29, column: 13, scope: !303)
!305 = !DILocation(line: 29, column: 8, scope: !295)
!306 = !DILocation(line: 31, column: 27, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !3, line: 30, column: 5)
!308 = !DILocation(line: 31, column: 9, scope: !307)
!309 = !DILocation(line: 32, column: 5, scope: !307)
!310 = !DILocation(line: 33, column: 1, scope: !295)
!311 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !312, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !23}
!314 = !DILocalVariable(name: "intNumber", arg: 1, scope: !311, file: !3, line: 35, type: !23)
!315 = !DILocation(line: 35, column: 24, scope: !311)
!316 = !DILocation(line: 37, column: 20, scope: !311)
!317 = !DILocation(line: 37, column: 5, scope: !311)
!318 = !DILocation(line: 38, column: 1, scope: !311)
!319 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !320, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !322}
!322 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!323 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !319, file: !3, line: 40, type: !322)
!324 = !DILocation(line: 40, column: 28, scope: !319)
!325 = !DILocation(line: 42, column: 21, scope: !319)
!326 = !DILocation(line: 42, column: 5, scope: !319)
!327 = !DILocation(line: 43, column: 1, scope: !319)
!328 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !329, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !331}
!331 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!332 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !328, file: !3, line: 45, type: !331)
!333 = !DILocation(line: 45, column: 28, scope: !328)
!334 = !DILocation(line: 47, column: 20, scope: !328)
!335 = !DILocation(line: 47, column: 5, scope: !328)
!336 = !DILocation(line: 48, column: 1, scope: !328)
!337 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !338, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !103}
!340 = !DILocalVariable(name: "longNumber", arg: 1, scope: !337, file: !3, line: 50, type: !103)
!341 = !DILocation(line: 50, column: 26, scope: !337)
!342 = !DILocation(line: 52, column: 21, scope: !337)
!343 = !DILocation(line: 52, column: 5, scope: !337)
!344 = !DILocation(line: 53, column: 1, scope: !337)
!345 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !346, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !348}
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !349, line: 27, baseType: !350)
!349 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !102, line: 44, baseType: !103)
!351 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !345, file: !3, line: 55, type: !348)
!352 = !DILocation(line: 55, column: 33, scope: !345)
!353 = !DILocation(line: 57, column: 29, scope: !345)
!354 = !DILocation(line: 57, column: 5, scope: !345)
!355 = !DILocation(line: 58, column: 1, scope: !345)
!356 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !357, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !68}
!359 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !356, file: !3, line: 60, type: !68)
!360 = !DILocation(line: 60, column: 29, scope: !356)
!361 = !DILocation(line: 62, column: 21, scope: !356)
!362 = !DILocation(line: 62, column: 5, scope: !356)
!363 = !DILocation(line: 63, column: 1, scope: !356)
!364 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !365, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !43}
!367 = !DILocalVariable(name: "charHex", arg: 1, scope: !364, file: !3, line: 65, type: !43)
!368 = !DILocation(line: 65, column: 29, scope: !364)
!369 = !DILocation(line: 67, column: 22, scope: !364)
!370 = !DILocation(line: 67, column: 5, scope: !364)
!371 = !DILocation(line: 68, column: 1, scope: !364)
!372 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !373, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !299}
!375 = !DILocalVariable(name: "wideChar", arg: 1, scope: !372, file: !3, line: 70, type: !299)
!376 = !DILocation(line: 70, column: 29, scope: !372)
!377 = !DILocalVariable(name: "s", scope: !372, file: !3, line: 74, type: !378)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 64, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 2)
!381 = !DILocation(line: 74, column: 13, scope: !372)
!382 = !DILocation(line: 75, column: 16, scope: !372)
!383 = !DILocation(line: 75, column: 9, scope: !372)
!384 = !DILocation(line: 75, column: 14, scope: !372)
!385 = !DILocation(line: 76, column: 9, scope: !372)
!386 = !DILocation(line: 76, column: 14, scope: !372)
!387 = !DILocation(line: 77, column: 21, scope: !372)
!388 = !DILocation(line: 77, column: 5, scope: !372)
!389 = !DILocation(line: 78, column: 1, scope: !372)
!390 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !391, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !7}
!393 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !390, file: !3, line: 80, type: !7)
!394 = !DILocation(line: 80, column: 33, scope: !390)
!395 = !DILocation(line: 82, column: 20, scope: !390)
!396 = !DILocation(line: 82, column: 5, scope: !390)
!397 = !DILocation(line: 83, column: 1, scope: !390)
!398 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !399, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!399 = !DISubroutineType(types: !400)
!400 = !{null, !25}
!401 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !398, file: !3, line: 85, type: !25)
!402 = !DILocation(line: 85, column: 45, scope: !398)
!403 = !DILocation(line: 87, column: 22, scope: !398)
!404 = !DILocation(line: 87, column: 5, scope: !398)
!405 = !DILocation(line: 88, column: 1, scope: !398)
!406 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !407, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !409}
!409 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!410 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !406, file: !3, line: 90, type: !409)
!411 = !DILocation(line: 90, column: 29, scope: !406)
!412 = !DILocation(line: 92, column: 20, scope: !406)
!413 = !DILocation(line: 92, column: 5, scope: !406)
!414 = !DILocation(line: 93, column: 1, scope: !406)
!415 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !416, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !418}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !420, line: 100, baseType: !421)
!420 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_997/source_code")
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !420, line: 96, size: 64, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !421, file: !420, line: 98, baseType: !23, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !421, file: !420, line: 99, baseType: !23, size: 32, offset: 32)
!425 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !415, file: !3, line: 95, type: !418)
!426 = !DILocation(line: 95, column: 40, scope: !415)
!427 = !DILocation(line: 97, column: 26, scope: !415)
!428 = !DILocation(line: 97, column: 47, scope: !415)
!429 = !DILocation(line: 97, column: 55, scope: !415)
!430 = !DILocation(line: 97, column: 76, scope: !415)
!431 = !DILocation(line: 97, column: 5, scope: !415)
!432 = !DILocation(line: 98, column: 1, scope: !415)
!433 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !434, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !436, !68}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!437 = !DILocalVariable(name: "bytes", arg: 1, scope: !433, file: !3, line: 100, type: !436)
!438 = !DILocation(line: 100, column: 38, scope: !433)
!439 = !DILocalVariable(name: "numBytes", arg: 2, scope: !433, file: !3, line: 100, type: !68)
!440 = !DILocation(line: 100, column: 52, scope: !433)
!441 = !DILocalVariable(name: "i", scope: !433, file: !3, line: 102, type: !68)
!442 = !DILocation(line: 102, column: 12, scope: !433)
!443 = !DILocation(line: 103, column: 12, scope: !444)
!444 = distinct !DILexicalBlock(scope: !433, file: !3, line: 103, column: 5)
!445 = !DILocation(line: 103, column: 10, scope: !444)
!446 = !DILocation(line: 103, column: 17, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !3, line: 103, column: 5)
!448 = !DILocation(line: 103, column: 21, scope: !447)
!449 = !DILocation(line: 103, column: 19, scope: !447)
!450 = !DILocation(line: 103, column: 5, scope: !444)
!451 = !DILocation(line: 105, column: 24, scope: !452)
!452 = distinct !DILexicalBlock(scope: !447, file: !3, line: 104, column: 5)
!453 = !DILocation(line: 105, column: 30, scope: !452)
!454 = !DILocation(line: 105, column: 9, scope: !452)
!455 = !DILocation(line: 106, column: 5, scope: !452)
!456 = !DILocation(line: 103, column: 31, scope: !447)
!457 = !DILocation(line: 103, column: 5, scope: !447)
!458 = distinct !{!458, !450, !459, !460}
!459 = !DILocation(line: 106, column: 5, scope: !444)
!460 = !{!"llvm.loop.mustprogress"}
!461 = !DILocation(line: 107, column: 5, scope: !433)
!462 = !DILocation(line: 108, column: 1, scope: !433)
!463 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !464, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!464 = !DISubroutineType(types: !465)
!465 = !{!68, !436, !68, !42}
!466 = !DILocalVariable(name: "bytes", arg: 1, scope: !463, file: !3, line: 113, type: !436)
!467 = !DILocation(line: 113, column: 39, scope: !463)
!468 = !DILocalVariable(name: "numBytes", arg: 2, scope: !463, file: !3, line: 113, type: !68)
!469 = !DILocation(line: 113, column: 53, scope: !463)
!470 = !DILocalVariable(name: "hex", arg: 3, scope: !463, file: !3, line: 113, type: !42)
!471 = !DILocation(line: 113, column: 71, scope: !463)
!472 = !DILocalVariable(name: "numWritten", scope: !463, file: !3, line: 115, type: !68)
!473 = !DILocation(line: 115, column: 12, scope: !463)
!474 = !DILocation(line: 121, column: 5, scope: !463)
!475 = !DILocation(line: 121, column: 12, scope: !463)
!476 = !DILocation(line: 121, column: 25, scope: !463)
!477 = !DILocation(line: 121, column: 23, scope: !463)
!478 = !DILocation(line: 121, column: 34, scope: !463)
!479 = !DILocation(line: 121, column: 37, scope: !463)
!480 = !DILocation(line: 121, column: 67, scope: !463)
!481 = !DILocation(line: 121, column: 70, scope: !463)
!482 = !DILocation(line: 0, scope: !463)
!483 = !DILocalVariable(name: "byte", scope: !484, file: !3, line: 123, type: !23)
!484 = distinct !DILexicalBlock(scope: !463, file: !3, line: 122, column: 5)
!485 = !DILocation(line: 123, column: 13, scope: !484)
!486 = !DILocation(line: 124, column: 17, scope: !484)
!487 = !DILocation(line: 124, column: 25, scope: !484)
!488 = !DILocation(line: 124, column: 23, scope: !484)
!489 = !DILocation(line: 124, column: 9, scope: !484)
!490 = !DILocation(line: 125, column: 45, scope: !484)
!491 = !DILocation(line: 125, column: 29, scope: !484)
!492 = !DILocation(line: 125, column: 9, scope: !484)
!493 = !DILocation(line: 125, column: 15, scope: !484)
!494 = !DILocation(line: 125, column: 27, scope: !484)
!495 = !DILocation(line: 126, column: 9, scope: !484)
!496 = distinct !{!496, !474, !497, !460}
!497 = !DILocation(line: 127, column: 5, scope: !463)
!498 = !DILocation(line: 129, column: 12, scope: !463)
!499 = !DILocation(line: 129, column: 5, scope: !463)
!500 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !501, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!501 = !DISubroutineType(types: !502)
!502 = !{!68, !436, !68, !298}
!503 = !DILocalVariable(name: "bytes", arg: 1, scope: !500, file: !3, line: 135, type: !436)
!504 = !DILocation(line: 135, column: 41, scope: !500)
!505 = !DILocalVariable(name: "numBytes", arg: 2, scope: !500, file: !3, line: 135, type: !68)
!506 = !DILocation(line: 135, column: 55, scope: !500)
!507 = !DILocalVariable(name: "hex", arg: 3, scope: !500, file: !3, line: 135, type: !298)
!508 = !DILocation(line: 135, column: 76, scope: !500)
!509 = !DILocalVariable(name: "numWritten", scope: !500, file: !3, line: 137, type: !68)
!510 = !DILocation(line: 137, column: 12, scope: !500)
!511 = !DILocation(line: 143, column: 5, scope: !500)
!512 = !DILocation(line: 143, column: 12, scope: !500)
!513 = !DILocation(line: 143, column: 25, scope: !500)
!514 = !DILocation(line: 143, column: 23, scope: !500)
!515 = !DILocation(line: 143, column: 34, scope: !500)
!516 = !DILocation(line: 143, column: 47, scope: !500)
!517 = !DILocation(line: 143, column: 55, scope: !500)
!518 = !DILocation(line: 143, column: 53, scope: !500)
!519 = !DILocation(line: 143, column: 37, scope: !500)
!520 = !DILocation(line: 143, column: 68, scope: !500)
!521 = !DILocation(line: 143, column: 81, scope: !500)
!522 = !DILocation(line: 143, column: 89, scope: !500)
!523 = !DILocation(line: 143, column: 87, scope: !500)
!524 = !DILocation(line: 143, column: 100, scope: !500)
!525 = !DILocation(line: 143, column: 71, scope: !500)
!526 = !DILocation(line: 0, scope: !500)
!527 = !DILocalVariable(name: "byte", scope: !528, file: !3, line: 145, type: !23)
!528 = distinct !DILexicalBlock(scope: !500, file: !3, line: 144, column: 5)
!529 = !DILocation(line: 145, column: 13, scope: !528)
!530 = !DILocation(line: 146, column: 18, scope: !528)
!531 = !DILocation(line: 146, column: 26, scope: !528)
!532 = !DILocation(line: 146, column: 24, scope: !528)
!533 = !DILocation(line: 146, column: 9, scope: !528)
!534 = !DILocation(line: 147, column: 45, scope: !528)
!535 = !DILocation(line: 147, column: 29, scope: !528)
!536 = !DILocation(line: 147, column: 9, scope: !528)
!537 = !DILocation(line: 147, column: 15, scope: !528)
!538 = !DILocation(line: 147, column: 27, scope: !528)
!539 = !DILocation(line: 148, column: 9, scope: !528)
!540 = distinct !{!540, !511, !541, !460}
!541 = !DILocation(line: 149, column: 5, scope: !500)
!542 = !DILocation(line: 151, column: 12, scope: !500)
!543 = !DILocation(line: 151, column: 5, scope: !500)
!544 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !545, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DISubroutineType(types: !546)
!546 = !{!23}
!547 = !DILocation(line: 158, column: 5, scope: !544)
!548 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !545, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DILocation(line: 163, column: 5, scope: !548)
!550 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !545, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocation(line: 168, column: 13, scope: !550)
!552 = !DILocation(line: 168, column: 20, scope: !550)
!553 = !DILocation(line: 168, column: 5, scope: !550)
!554 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 187, column: 16, scope: !554)
!556 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DILocation(line: 188, column: 16, scope: !556)
!558 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 189, column: 16, scope: !558)
!560 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DILocation(line: 190, column: 16, scope: !560)
!562 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DILocation(line: 191, column: 16, scope: !562)
!564 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DILocation(line: 192, column: 16, scope: !564)
!566 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 193, column: 16, scope: !566)
!568 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 194, column: 16, scope: !568)
!570 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 195, column: 16, scope: !570)
!572 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DILocation(line: 198, column: 15, scope: !572)
!574 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DILocation(line: 199, column: 15, scope: !574)
!576 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DILocation(line: 200, column: 15, scope: !576)
!578 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DILocation(line: 201, column: 15, scope: !578)
!580 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DILocation(line: 202, column: 15, scope: !580)
!582 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DILocation(line: 203, column: 15, scope: !582)
!584 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DILocation(line: 204, column: 15, scope: !584)
!586 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DILocation(line: 205, column: 15, scope: !586)
!588 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DILocation(line: 206, column: 15, scope: !588)
