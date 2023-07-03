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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_64_bad() #0 !dbg !55 {
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
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_badSink(i8* %11), !dbg !167
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !177
  %2 = bitcast i8** %data to i8*, !dbg !178
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_goodG2BSink(i8* %2), !dbg !179
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
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_goodB2GSink(i8* %11), !dbg !230
  ret void, !dbg !231
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_64_good() #0 !dbg !232 {
entry:
  call void @goodG2B(), !dbg !233
  call void @goodB2G(), !dbg !234
  ret void, !dbg !235
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_badSink(i8* %dataVoidPtr) #0 !dbg !236 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
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
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !249
  %5 = load i8*, i8** %data, align 8, !dbg !250
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %5), !dbg !251
  ret void, !dbg !252
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_goodG2BSink(i8* %dataVoidPtr) #0 !dbg !253 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !254, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !258
  %1 = bitcast i8* %0 to i8**, !dbg !259
  store i8** %1, i8*** %dataPtr, align 8, !dbg !257
  call void @llvm.dbg.declare(metadata i8** %data, metadata !260, metadata !DIExpression()), !dbg !261
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !262
  %3 = load i8*, i8** %2, align 8, !dbg !263
  store i8* %3, i8** %data, align 8, !dbg !261
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !264
  %5 = load i8*, i8** %data, align 8, !dbg !265
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %5), !dbg !266
  ret void, !dbg !267
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_goodB2GSink(i8* %dataVoidPtr) #0 !dbg !268 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !269, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !271, metadata !DIExpression()), !dbg !272
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !273
  %1 = bitcast i8* %0 to i8**, !dbg !274
  store i8** %1, i8*** %dataPtr, align 8, !dbg !272
  call void @llvm.dbg.declare(metadata i8** %data, metadata !275, metadata !DIExpression()), !dbg !276
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !277
  %3 = load i8*, i8** %2, align 8, !dbg !278
  store i8* %3, i8** %data, align 8, !dbg !276
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !279
  %5 = load i8*, i8** %data, align 8, !dbg !280
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %5), !dbg !281
  ret void, !dbg !282
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !283 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !286, metadata !DIExpression()), !dbg !287
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !288
  %0 = load i8*, i8** %line.addr, align 8, !dbg !289
  %cmp = icmp ne i8* %0, null, !dbg !291
  br i1 %cmp, label %if.then, label %if.end, !dbg !292

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !293
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !295
  br label %if.end, !dbg !296

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.12, i64 0, i64 0)), !dbg !297
  ret void, !dbg !298
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !299 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !300, metadata !DIExpression()), !dbg !301
  %0 = load i8*, i8** %line.addr, align 8, !dbg !302
  %cmp = icmp ne i8* %0, null, !dbg !304
  br i1 %cmp, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !306
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !308
  br label %if.end, !dbg !309

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !311 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !316, metadata !DIExpression()), !dbg !317
  %0 = load i32*, i32** %line.addr, align 8, !dbg !318
  %cmp = icmp ne i32* %0, null, !dbg !320
  br i1 %cmp, label %if.then, label %if.end, !dbg !321

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !322
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.13, i64 0, i64 0), i32* %1), !dbg !324
  br label %if.end, !dbg !325

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !326
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !327 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !330, metadata !DIExpression()), !dbg !331
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !332
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !333
  ret void, !dbg !334
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !335 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !339, metadata !DIExpression()), !dbg !340
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !341
  %conv = sext i16 %0 to i32, !dbg !341
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !342
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !344 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !350
  %conv = fpext float %0 to double, !dbg !350
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !353 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !358
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), i64 %0), !dbg !359
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !361 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), i64 %0), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !372 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !377
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !378
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !380 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !385
  %conv = sext i8 %0 to i32, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !388 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !393, metadata !DIExpression()), !dbg !397
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !398
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !399
  store i32 %0, i32* %arrayidx, align 4, !dbg !400
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !401
  store i32 0, i32* %arrayidx1, align 4, !dbg !402
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !403
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !404
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !406 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !411
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !414 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !419
  %conv = zext i8 %0 to i32, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !422 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !428
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !429
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !431 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !443
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !444
  %1 = load i32, i32* %intOne, align 4, !dbg !444
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !445
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !446
  %3 = load i32, i32* %intTwo, align 4, !dbg !446
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !447
  ret void, !dbg !448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !449 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !453, metadata !DIExpression()), !dbg !454
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !455, metadata !DIExpression()), !dbg !456
  call void @llvm.dbg.declare(metadata i64* %i, metadata !457, metadata !DIExpression()), !dbg !458
  store i64 0, i64* %i, align 8, !dbg !459
  br label %for.cond, !dbg !461

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !462
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !464
  %cmp = icmp ult i64 %0, %1, !dbg !465
  br i1 %cmp, label %for.body, label %for.end, !dbg !466

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !467
  %3 = load i64, i64* %i, align 8, !dbg !469
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !467
  %4 = load i8, i8* %arrayidx, align 1, !dbg !467
  %conv = zext i8 %4 to i32, !dbg !467
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !470
  br label %for.inc, !dbg !471

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !472
  %inc = add i64 %5, 1, !dbg !472
  store i64 %inc, i64* %i, align 8, !dbg !472
  br label %for.cond, !dbg !473, !llvm.loop !474

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !477
  ret void, !dbg !478
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !479 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !482, metadata !DIExpression()), !dbg !483
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !484, metadata !DIExpression()), !dbg !485
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !486, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !488, metadata !DIExpression()), !dbg !489
  store i64 0, i64* %numWritten, align 8, !dbg !489
  br label %while.cond, !dbg !490

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !491
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !492
  %cmp = icmp ult i64 %0, %1, !dbg !493
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !494

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !495
  %2 = load i16*, i16** %call, align 8, !dbg !495
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !495
  %4 = load i64, i64* %numWritten, align 8, !dbg !495
  %mul = mul i64 2, %4, !dbg !495
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !495
  %5 = load i8, i8* %arrayidx, align 1, !dbg !495
  %conv = sext i8 %5 to i32, !dbg !495
  %idxprom = sext i32 %conv to i64, !dbg !495
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !495
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !495
  %conv2 = zext i16 %6 to i32, !dbg !495
  %and = and i32 %conv2, 4096, !dbg !495
  %tobool = icmp ne i32 %and, 0, !dbg !495
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !496

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !497
  %7 = load i16*, i16** %call3, align 8, !dbg !497
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !497
  %9 = load i64, i64* %numWritten, align 8, !dbg !497
  %mul4 = mul i64 2, %9, !dbg !497
  %add = add i64 %mul4, 1, !dbg !497
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !497
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !497
  %conv6 = sext i8 %10 to i32, !dbg !497
  %idxprom7 = sext i32 %conv6 to i64, !dbg !497
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !497
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !497
  %conv9 = zext i16 %11 to i32, !dbg !497
  %and10 = and i32 %conv9, 4096, !dbg !497
  %tobool11 = icmp ne i32 %and10, 0, !dbg !496
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !498
  br i1 %12, label %while.body, label %while.end, !dbg !490

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !499, metadata !DIExpression()), !dbg !501
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !502
  %14 = load i64, i64* %numWritten, align 8, !dbg !503
  %mul12 = mul i64 2, %14, !dbg !504
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !502
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !505
  %15 = load i32, i32* %byte, align 4, !dbg !506
  %conv15 = trunc i32 %15 to i8, !dbg !507
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !508
  %17 = load i64, i64* %numWritten, align 8, !dbg !509
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !508
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !510
  %18 = load i64, i64* %numWritten, align 8, !dbg !511
  %inc = add i64 %18, 1, !dbg !511
  store i64 %inc, i64* %numWritten, align 8, !dbg !511
  br label %while.cond, !dbg !490, !llvm.loop !512

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !514
  ret i64 %19, !dbg !515
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !516 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !519, metadata !DIExpression()), !dbg !520
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !521, metadata !DIExpression()), !dbg !522
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !523, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !525, metadata !DIExpression()), !dbg !526
  store i64 0, i64* %numWritten, align 8, !dbg !526
  br label %while.cond, !dbg !527

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !528
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !529
  %cmp = icmp ult i64 %0, %1, !dbg !530
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !531

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !532
  %3 = load i64, i64* %numWritten, align 8, !dbg !533
  %mul = mul i64 2, %3, !dbg !534
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !532
  %4 = load i32, i32* %arrayidx, align 4, !dbg !532
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !535
  %tobool = icmp ne i32 %call, 0, !dbg !535
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !536

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !537
  %6 = load i64, i64* %numWritten, align 8, !dbg !538
  %mul1 = mul i64 2, %6, !dbg !539
  %add = add i64 %mul1, 1, !dbg !540
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !537
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !537
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !541
  %tobool4 = icmp ne i32 %call3, 0, !dbg !536
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !542
  br i1 %8, label %while.body, label %while.end, !dbg !527

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !543, metadata !DIExpression()), !dbg !545
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !546
  %10 = load i64, i64* %numWritten, align 8, !dbg !547
  %mul5 = mul i64 2, %10, !dbg !548
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !546
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !549
  %11 = load i32, i32* %byte, align 4, !dbg !550
  %conv = trunc i32 %11 to i8, !dbg !551
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !552
  %13 = load i64, i64* %numWritten, align 8, !dbg !553
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !552
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !554
  %14 = load i64, i64* %numWritten, align 8, !dbg !555
  %inc = add i64 %14, 1, !dbg !555
  store i64 %inc, i64* %numWritten, align 8, !dbg !555
  br label %while.cond, !dbg !527, !llvm.loop !556

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !558
  ret i64 %15, !dbg !559
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !560 {
entry:
  ret i32 1, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !564 {
entry:
  ret i32 0, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !566 {
entry:
  %call = call i32 @rand() #8, !dbg !567
  %rem = srem i32 %call, 2, !dbg !568
  ret i32 %rem, !dbg !569
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !584 {
entry:
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !586 {
entry:
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !588 {
entry:
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !590 {
entry:
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !592 {
entry:
  ret void, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !594 {
entry:
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !596 {
entry:
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !598 {
entry:
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !600 {
entry:
  ret void, !dbg !601
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !602 {
entry:
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !604 {
entry:
  ret void, !dbg !605
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_998/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_64a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_998/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !50, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_64b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_998/source_code")
!50 = !{!41}
!51 = !{!"clang version 12.0.0"}
!52 = !{i32 7, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_64_bad", scope: !45, file: !45, line: 35, type: !56, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!56 = !DISubroutineType(types: !57)
!57 = !{null}
!58 = !DILocalVariable(name: "data", scope: !55, file: !45, line: 37, type: !42)
!59 = !DILocation(line: 37, column: 12, scope: !55)
!60 = !DILocalVariable(name: "dataBuffer", scope: !55, file: !45, line: 38, type: !61)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 100)
!64 = !DILocation(line: 38, column: 10, scope: !55)
!65 = !DILocation(line: 39, column: 12, scope: !55)
!66 = !DILocation(line: 39, column: 10, scope: !55)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 42, type: !69)
!68 = distinct !DILexicalBlock(scope: !55, file: !45, line: 40, column: 5)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !71)
!70 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !DILocation(line: 42, column: 16, scope: !68)
!73 = !DILocation(line: 42, column: 33, scope: !68)
!74 = !DILocation(line: 42, column: 26, scope: !68)
!75 = !DILocalVariable(name: "pFile", scope: !68, file: !45, line: 43, type: !76)
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
!131 = !DILocation(line: 43, column: 16, scope: !68)
!132 = !DILocation(line: 45, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !68, file: !45, line: 45, column: 13)
!134 = !DILocation(line: 45, column: 16, scope: !133)
!135 = !DILocation(line: 45, column: 25, scope: !133)
!136 = !DILocation(line: 45, column: 13, scope: !68)
!137 = !DILocation(line: 47, column: 21, scope: !138)
!138 = distinct !DILexicalBlock(scope: !133, file: !45, line: 46, column: 9)
!139 = !DILocation(line: 47, column: 19, scope: !138)
!140 = !DILocation(line: 48, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !45, line: 48, column: 17)
!142 = !DILocation(line: 48, column: 23, scope: !141)
!143 = !DILocation(line: 48, column: 17, scope: !138)
!144 = !DILocation(line: 51, column: 27, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !45, line: 51, column: 21)
!146 = distinct !DILexicalBlock(scope: !141, file: !45, line: 49, column: 13)
!147 = !DILocation(line: 51, column: 32, scope: !145)
!148 = !DILocation(line: 51, column: 31, scope: !145)
!149 = !DILocation(line: 51, column: 51, scope: !145)
!150 = !DILocation(line: 51, column: 50, scope: !145)
!151 = !DILocation(line: 51, column: 41, scope: !145)
!152 = !DILocation(line: 51, column: 61, scope: !145)
!153 = !DILocation(line: 51, column: 21, scope: !145)
!154 = !DILocation(line: 51, column: 68, scope: !145)
!155 = !DILocation(line: 51, column: 21, scope: !146)
!156 = !DILocation(line: 53, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !145, file: !45, line: 52, column: 17)
!158 = !DILocation(line: 55, column: 21, scope: !157)
!159 = !DILocation(line: 55, column: 26, scope: !157)
!160 = !DILocation(line: 55, column: 35, scope: !157)
!161 = !DILocation(line: 56, column: 17, scope: !157)
!162 = !DILocation(line: 57, column: 24, scope: !146)
!163 = !DILocation(line: 57, column: 17, scope: !146)
!164 = !DILocation(line: 58, column: 13, scope: !146)
!165 = !DILocation(line: 59, column: 9, scope: !138)
!166 = !DILocation(line: 61, column: 70, scope: !55)
!167 = !DILocation(line: 61, column: 5, scope: !55)
!168 = !DILocation(line: 62, column: 1, scope: !55)
!169 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 70, type: !56, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!170 = !DILocalVariable(name: "data", scope: !169, file: !45, line: 72, type: !42)
!171 = !DILocation(line: 72, column: 12, scope: !169)
!172 = !DILocalVariable(name: "dataBuffer", scope: !169, file: !45, line: 73, type: !61)
!173 = !DILocation(line: 73, column: 10, scope: !169)
!174 = !DILocation(line: 74, column: 12, scope: !169)
!175 = !DILocation(line: 74, column: 10, scope: !169)
!176 = !DILocation(line: 76, column: 12, scope: !169)
!177 = !DILocation(line: 76, column: 5, scope: !169)
!178 = !DILocation(line: 77, column: 74, scope: !169)
!179 = !DILocation(line: 77, column: 5, scope: !169)
!180 = !DILocation(line: 78, column: 1, scope: !169)
!181 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 82, type: !56, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!182 = !DILocalVariable(name: "data", scope: !181, file: !45, line: 84, type: !42)
!183 = !DILocation(line: 84, column: 12, scope: !181)
!184 = !DILocalVariable(name: "dataBuffer", scope: !181, file: !45, line: 85, type: !61)
!185 = !DILocation(line: 85, column: 10, scope: !181)
!186 = !DILocation(line: 86, column: 12, scope: !181)
!187 = !DILocation(line: 86, column: 10, scope: !181)
!188 = !DILocalVariable(name: "dataLen", scope: !189, file: !45, line: 89, type: !69)
!189 = distinct !DILexicalBlock(scope: !181, file: !45, line: 87, column: 5)
!190 = !DILocation(line: 89, column: 16, scope: !189)
!191 = !DILocation(line: 89, column: 33, scope: !189)
!192 = !DILocation(line: 89, column: 26, scope: !189)
!193 = !DILocalVariable(name: "pFile", scope: !189, file: !45, line: 90, type: !76)
!194 = !DILocation(line: 90, column: 16, scope: !189)
!195 = !DILocation(line: 92, column: 17, scope: !196)
!196 = distinct !DILexicalBlock(scope: !189, file: !45, line: 92, column: 13)
!197 = !DILocation(line: 92, column: 16, scope: !196)
!198 = !DILocation(line: 92, column: 25, scope: !196)
!199 = !DILocation(line: 92, column: 13, scope: !189)
!200 = !DILocation(line: 94, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !45, line: 93, column: 9)
!202 = !DILocation(line: 94, column: 19, scope: !201)
!203 = !DILocation(line: 95, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !45, line: 95, column: 17)
!205 = !DILocation(line: 95, column: 23, scope: !204)
!206 = !DILocation(line: 95, column: 17, scope: !201)
!207 = !DILocation(line: 98, column: 27, scope: !208)
!208 = distinct !DILexicalBlock(scope: !209, file: !45, line: 98, column: 21)
!209 = distinct !DILexicalBlock(scope: !204, file: !45, line: 96, column: 13)
!210 = !DILocation(line: 98, column: 32, scope: !208)
!211 = !DILocation(line: 98, column: 31, scope: !208)
!212 = !DILocation(line: 98, column: 51, scope: !208)
!213 = !DILocation(line: 98, column: 50, scope: !208)
!214 = !DILocation(line: 98, column: 41, scope: !208)
!215 = !DILocation(line: 98, column: 61, scope: !208)
!216 = !DILocation(line: 98, column: 21, scope: !208)
!217 = !DILocation(line: 98, column: 68, scope: !208)
!218 = !DILocation(line: 98, column: 21, scope: !209)
!219 = !DILocation(line: 100, column: 21, scope: !220)
!220 = distinct !DILexicalBlock(scope: !208, file: !45, line: 99, column: 17)
!221 = !DILocation(line: 102, column: 21, scope: !220)
!222 = !DILocation(line: 102, column: 26, scope: !220)
!223 = !DILocation(line: 102, column: 35, scope: !220)
!224 = !DILocation(line: 103, column: 17, scope: !220)
!225 = !DILocation(line: 104, column: 24, scope: !209)
!226 = !DILocation(line: 104, column: 17, scope: !209)
!227 = !DILocation(line: 105, column: 13, scope: !209)
!228 = !DILocation(line: 106, column: 9, scope: !201)
!229 = !DILocation(line: 108, column: 74, scope: !181)
!230 = !DILocation(line: 108, column: 5, scope: !181)
!231 = !DILocation(line: 109, column: 1, scope: !181)
!232 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_64_good", scope: !45, file: !45, line: 111, type: !56, scopeLine: 112, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!233 = !DILocation(line: 113, column: 5, scope: !232)
!234 = !DILocation(line: 114, column: 5, scope: !232)
!235 = !DILocation(line: 115, column: 1, scope: !232)
!236 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_badSink", scope: !49, file: !49, line: 32, type: !237, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !22}
!239 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !236, file: !49, line: 32, type: !22)
!240 = !DILocation(line: 32, column: 78, scope: !236)
!241 = !DILocalVariable(name: "dataPtr", scope: !236, file: !49, line: 35, type: !41)
!242 = !DILocation(line: 35, column: 14, scope: !236)
!243 = !DILocation(line: 35, column: 34, scope: !236)
!244 = !DILocation(line: 35, column: 24, scope: !236)
!245 = !DILocalVariable(name: "data", scope: !236, file: !49, line: 37, type: !42)
!246 = !DILocation(line: 37, column: 12, scope: !236)
!247 = !DILocation(line: 37, column: 21, scope: !236)
!248 = !DILocation(line: 37, column: 20, scope: !236)
!249 = !DILocation(line: 39, column: 13, scope: !236)
!250 = !DILocation(line: 39, column: 21, scope: !236)
!251 = !DILocation(line: 39, column: 5, scope: !236)
!252 = !DILocation(line: 40, column: 1, scope: !236)
!253 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_goodG2BSink", scope: !49, file: !49, line: 47, type: !237, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!254 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !253, file: !49, line: 47, type: !22)
!255 = !DILocation(line: 47, column: 82, scope: !253)
!256 = !DILocalVariable(name: "dataPtr", scope: !253, file: !49, line: 50, type: !41)
!257 = !DILocation(line: 50, column: 14, scope: !253)
!258 = !DILocation(line: 50, column: 34, scope: !253)
!259 = !DILocation(line: 50, column: 24, scope: !253)
!260 = !DILocalVariable(name: "data", scope: !253, file: !49, line: 52, type: !42)
!261 = !DILocation(line: 52, column: 12, scope: !253)
!262 = !DILocation(line: 52, column: 21, scope: !253)
!263 = !DILocation(line: 52, column: 20, scope: !253)
!264 = !DILocation(line: 54, column: 13, scope: !253)
!265 = !DILocation(line: 54, column: 21, scope: !253)
!266 = !DILocation(line: 54, column: 5, scope: !253)
!267 = !DILocation(line: 55, column: 1, scope: !253)
!268 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_goodB2GSink", scope: !49, file: !49, line: 58, type: !237, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!269 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !268, file: !49, line: 58, type: !22)
!270 = !DILocation(line: 58, column: 82, scope: !268)
!271 = !DILocalVariable(name: "dataPtr", scope: !268, file: !49, line: 61, type: !41)
!272 = !DILocation(line: 61, column: 14, scope: !268)
!273 = !DILocation(line: 61, column: 34, scope: !268)
!274 = !DILocation(line: 61, column: 24, scope: !268)
!275 = !DILocalVariable(name: "data", scope: !268, file: !49, line: 63, type: !42)
!276 = !DILocation(line: 63, column: 12, scope: !268)
!277 = !DILocation(line: 63, column: 21, scope: !268)
!278 = !DILocation(line: 63, column: 20, scope: !268)
!279 = !DILocation(line: 65, column: 13, scope: !268)
!280 = !DILocation(line: 65, column: 29, scope: !268)
!281 = !DILocation(line: 65, column: 5, scope: !268)
!282 = !DILocation(line: 66, column: 1, scope: !268)
!283 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !284, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!284 = !DISubroutineType(types: !285)
!285 = !{null, !42}
!286 = !DILocalVariable(name: "line", arg: 1, scope: !283, file: !3, line: 11, type: !42)
!287 = !DILocation(line: 11, column: 25, scope: !283)
!288 = !DILocation(line: 13, column: 1, scope: !283)
!289 = !DILocation(line: 14, column: 8, scope: !290)
!290 = distinct !DILexicalBlock(scope: !283, file: !3, line: 14, column: 8)
!291 = !DILocation(line: 14, column: 13, scope: !290)
!292 = !DILocation(line: 14, column: 8, scope: !283)
!293 = !DILocation(line: 16, column: 24, scope: !294)
!294 = distinct !DILexicalBlock(scope: !290, file: !3, line: 15, column: 5)
!295 = !DILocation(line: 16, column: 9, scope: !294)
!296 = !DILocation(line: 17, column: 5, scope: !294)
!297 = !DILocation(line: 18, column: 5, scope: !283)
!298 = !DILocation(line: 19, column: 1, scope: !283)
!299 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !284, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!300 = !DILocalVariable(name: "line", arg: 1, scope: !299, file: !3, line: 20, type: !42)
!301 = !DILocation(line: 20, column: 29, scope: !299)
!302 = !DILocation(line: 22, column: 8, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !3, line: 22, column: 8)
!304 = !DILocation(line: 22, column: 13, scope: !303)
!305 = !DILocation(line: 22, column: 8, scope: !299)
!306 = !DILocation(line: 24, column: 24, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !3, line: 23, column: 5)
!308 = !DILocation(line: 24, column: 9, scope: !307)
!309 = !DILocation(line: 25, column: 5, scope: !307)
!310 = !DILocation(line: 26, column: 1, scope: !299)
!311 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !312, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !314}
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !23)
!316 = !DILocalVariable(name: "line", arg: 1, scope: !311, file: !3, line: 27, type: !314)
!317 = !DILocation(line: 27, column: 29, scope: !311)
!318 = !DILocation(line: 29, column: 8, scope: !319)
!319 = distinct !DILexicalBlock(scope: !311, file: !3, line: 29, column: 8)
!320 = !DILocation(line: 29, column: 13, scope: !319)
!321 = !DILocation(line: 29, column: 8, scope: !311)
!322 = !DILocation(line: 31, column: 27, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !3, line: 30, column: 5)
!324 = !DILocation(line: 31, column: 9, scope: !323)
!325 = !DILocation(line: 32, column: 5, scope: !323)
!326 = !DILocation(line: 33, column: 1, scope: !311)
!327 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !328, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !23}
!330 = !DILocalVariable(name: "intNumber", arg: 1, scope: !327, file: !3, line: 35, type: !23)
!331 = !DILocation(line: 35, column: 24, scope: !327)
!332 = !DILocation(line: 37, column: 20, scope: !327)
!333 = !DILocation(line: 37, column: 5, scope: !327)
!334 = !DILocation(line: 38, column: 1, scope: !327)
!335 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !336, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !338}
!338 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!339 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !335, file: !3, line: 40, type: !338)
!340 = !DILocation(line: 40, column: 28, scope: !335)
!341 = !DILocation(line: 42, column: 21, scope: !335)
!342 = !DILocation(line: 42, column: 5, scope: !335)
!343 = !DILocation(line: 43, column: 1, scope: !335)
!344 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !345, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347}
!347 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!348 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !344, file: !3, line: 45, type: !347)
!349 = !DILocation(line: 45, column: 28, scope: !344)
!350 = !DILocation(line: 47, column: 20, scope: !344)
!351 = !DILocation(line: 47, column: 5, scope: !344)
!352 = !DILocation(line: 48, column: 1, scope: !344)
!353 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !354, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !104}
!356 = !DILocalVariable(name: "longNumber", arg: 1, scope: !353, file: !3, line: 50, type: !104)
!357 = !DILocation(line: 50, column: 26, scope: !353)
!358 = !DILocation(line: 52, column: 21, scope: !353)
!359 = !DILocation(line: 52, column: 5, scope: !353)
!360 = !DILocation(line: 53, column: 1, scope: !353)
!361 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !362, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !364}
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !365, line: 27, baseType: !366)
!365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !103, line: 44, baseType: !104)
!367 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !361, file: !3, line: 55, type: !364)
!368 = !DILocation(line: 55, column: 33, scope: !361)
!369 = !DILocation(line: 57, column: 29, scope: !361)
!370 = !DILocation(line: 57, column: 5, scope: !361)
!371 = !DILocation(line: 58, column: 1, scope: !361)
!372 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !373, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !69}
!375 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !372, file: !3, line: 60, type: !69)
!376 = !DILocation(line: 60, column: 29, scope: !372)
!377 = !DILocation(line: 62, column: 21, scope: !372)
!378 = !DILocation(line: 62, column: 5, scope: !372)
!379 = !DILocation(line: 63, column: 1, scope: !372)
!380 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !381, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !43}
!383 = !DILocalVariable(name: "charHex", arg: 1, scope: !380, file: !3, line: 65, type: !43)
!384 = !DILocation(line: 65, column: 29, scope: !380)
!385 = !DILocation(line: 67, column: 22, scope: !380)
!386 = !DILocation(line: 67, column: 5, scope: !380)
!387 = !DILocation(line: 68, column: 1, scope: !380)
!388 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !389, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !315}
!391 = !DILocalVariable(name: "wideChar", arg: 1, scope: !388, file: !3, line: 70, type: !315)
!392 = !DILocation(line: 70, column: 29, scope: !388)
!393 = !DILocalVariable(name: "s", scope: !388, file: !3, line: 74, type: !394)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 64, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 2)
!397 = !DILocation(line: 74, column: 13, scope: !388)
!398 = !DILocation(line: 75, column: 16, scope: !388)
!399 = !DILocation(line: 75, column: 9, scope: !388)
!400 = !DILocation(line: 75, column: 14, scope: !388)
!401 = !DILocation(line: 76, column: 9, scope: !388)
!402 = !DILocation(line: 76, column: 14, scope: !388)
!403 = !DILocation(line: 77, column: 21, scope: !388)
!404 = !DILocation(line: 77, column: 5, scope: !388)
!405 = !DILocation(line: 78, column: 1, scope: !388)
!406 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !407, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !7}
!409 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !406, file: !3, line: 80, type: !7)
!410 = !DILocation(line: 80, column: 33, scope: !406)
!411 = !DILocation(line: 82, column: 20, scope: !406)
!412 = !DILocation(line: 82, column: 5, scope: !406)
!413 = !DILocation(line: 83, column: 1, scope: !406)
!414 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !415, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !25}
!417 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !414, file: !3, line: 85, type: !25)
!418 = !DILocation(line: 85, column: 45, scope: !414)
!419 = !DILocation(line: 87, column: 22, scope: !414)
!420 = !DILocation(line: 87, column: 5, scope: !414)
!421 = !DILocation(line: 88, column: 1, scope: !414)
!422 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !423, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !425}
!425 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!426 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !422, file: !3, line: 90, type: !425)
!427 = !DILocation(line: 90, column: 29, scope: !422)
!428 = !DILocation(line: 92, column: 20, scope: !422)
!429 = !DILocation(line: 92, column: 5, scope: !422)
!430 = !DILocation(line: 93, column: 1, scope: !422)
!431 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !432, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !436, line: 100, baseType: !437)
!436 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_998/source_code")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !436, line: 96, size: 64, elements: !438)
!438 = !{!439, !440}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !437, file: !436, line: 98, baseType: !23, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !437, file: !436, line: 99, baseType: !23, size: 32, offset: 32)
!441 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !431, file: !3, line: 95, type: !434)
!442 = !DILocation(line: 95, column: 40, scope: !431)
!443 = !DILocation(line: 97, column: 26, scope: !431)
!444 = !DILocation(line: 97, column: 47, scope: !431)
!445 = !DILocation(line: 97, column: 55, scope: !431)
!446 = !DILocation(line: 97, column: 76, scope: !431)
!447 = !DILocation(line: 97, column: 5, scope: !431)
!448 = !DILocation(line: 98, column: 1, scope: !431)
!449 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !450, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !452, !69}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!453 = !DILocalVariable(name: "bytes", arg: 1, scope: !449, file: !3, line: 100, type: !452)
!454 = !DILocation(line: 100, column: 38, scope: !449)
!455 = !DILocalVariable(name: "numBytes", arg: 2, scope: !449, file: !3, line: 100, type: !69)
!456 = !DILocation(line: 100, column: 52, scope: !449)
!457 = !DILocalVariable(name: "i", scope: !449, file: !3, line: 102, type: !69)
!458 = !DILocation(line: 102, column: 12, scope: !449)
!459 = !DILocation(line: 103, column: 12, scope: !460)
!460 = distinct !DILexicalBlock(scope: !449, file: !3, line: 103, column: 5)
!461 = !DILocation(line: 103, column: 10, scope: !460)
!462 = !DILocation(line: 103, column: 17, scope: !463)
!463 = distinct !DILexicalBlock(scope: !460, file: !3, line: 103, column: 5)
!464 = !DILocation(line: 103, column: 21, scope: !463)
!465 = !DILocation(line: 103, column: 19, scope: !463)
!466 = !DILocation(line: 103, column: 5, scope: !460)
!467 = !DILocation(line: 105, column: 24, scope: !468)
!468 = distinct !DILexicalBlock(scope: !463, file: !3, line: 104, column: 5)
!469 = !DILocation(line: 105, column: 30, scope: !468)
!470 = !DILocation(line: 105, column: 9, scope: !468)
!471 = !DILocation(line: 106, column: 5, scope: !468)
!472 = !DILocation(line: 103, column: 31, scope: !463)
!473 = !DILocation(line: 103, column: 5, scope: !463)
!474 = distinct !{!474, !466, !475, !476}
!475 = !DILocation(line: 106, column: 5, scope: !460)
!476 = !{!"llvm.loop.mustprogress"}
!477 = !DILocation(line: 107, column: 5, scope: !449)
!478 = !DILocation(line: 108, column: 1, scope: !449)
!479 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !480, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DISubroutineType(types: !481)
!481 = !{!69, !452, !69, !42}
!482 = !DILocalVariable(name: "bytes", arg: 1, scope: !479, file: !3, line: 113, type: !452)
!483 = !DILocation(line: 113, column: 39, scope: !479)
!484 = !DILocalVariable(name: "numBytes", arg: 2, scope: !479, file: !3, line: 113, type: !69)
!485 = !DILocation(line: 113, column: 53, scope: !479)
!486 = !DILocalVariable(name: "hex", arg: 3, scope: !479, file: !3, line: 113, type: !42)
!487 = !DILocation(line: 113, column: 71, scope: !479)
!488 = !DILocalVariable(name: "numWritten", scope: !479, file: !3, line: 115, type: !69)
!489 = !DILocation(line: 115, column: 12, scope: !479)
!490 = !DILocation(line: 121, column: 5, scope: !479)
!491 = !DILocation(line: 121, column: 12, scope: !479)
!492 = !DILocation(line: 121, column: 25, scope: !479)
!493 = !DILocation(line: 121, column: 23, scope: !479)
!494 = !DILocation(line: 121, column: 34, scope: !479)
!495 = !DILocation(line: 121, column: 37, scope: !479)
!496 = !DILocation(line: 121, column: 67, scope: !479)
!497 = !DILocation(line: 121, column: 70, scope: !479)
!498 = !DILocation(line: 0, scope: !479)
!499 = !DILocalVariable(name: "byte", scope: !500, file: !3, line: 123, type: !23)
!500 = distinct !DILexicalBlock(scope: !479, file: !3, line: 122, column: 5)
!501 = !DILocation(line: 123, column: 13, scope: !500)
!502 = !DILocation(line: 124, column: 17, scope: !500)
!503 = !DILocation(line: 124, column: 25, scope: !500)
!504 = !DILocation(line: 124, column: 23, scope: !500)
!505 = !DILocation(line: 124, column: 9, scope: !500)
!506 = !DILocation(line: 125, column: 45, scope: !500)
!507 = !DILocation(line: 125, column: 29, scope: !500)
!508 = !DILocation(line: 125, column: 9, scope: !500)
!509 = !DILocation(line: 125, column: 15, scope: !500)
!510 = !DILocation(line: 125, column: 27, scope: !500)
!511 = !DILocation(line: 126, column: 9, scope: !500)
!512 = distinct !{!512, !490, !513, !476}
!513 = !DILocation(line: 127, column: 5, scope: !479)
!514 = !DILocation(line: 129, column: 12, scope: !479)
!515 = !DILocation(line: 129, column: 5, scope: !479)
!516 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !517, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DISubroutineType(types: !518)
!518 = !{!69, !452, !69, !314}
!519 = !DILocalVariable(name: "bytes", arg: 1, scope: !516, file: !3, line: 135, type: !452)
!520 = !DILocation(line: 135, column: 41, scope: !516)
!521 = !DILocalVariable(name: "numBytes", arg: 2, scope: !516, file: !3, line: 135, type: !69)
!522 = !DILocation(line: 135, column: 55, scope: !516)
!523 = !DILocalVariable(name: "hex", arg: 3, scope: !516, file: !3, line: 135, type: !314)
!524 = !DILocation(line: 135, column: 76, scope: !516)
!525 = !DILocalVariable(name: "numWritten", scope: !516, file: !3, line: 137, type: !69)
!526 = !DILocation(line: 137, column: 12, scope: !516)
!527 = !DILocation(line: 143, column: 5, scope: !516)
!528 = !DILocation(line: 143, column: 12, scope: !516)
!529 = !DILocation(line: 143, column: 25, scope: !516)
!530 = !DILocation(line: 143, column: 23, scope: !516)
!531 = !DILocation(line: 143, column: 34, scope: !516)
!532 = !DILocation(line: 143, column: 47, scope: !516)
!533 = !DILocation(line: 143, column: 55, scope: !516)
!534 = !DILocation(line: 143, column: 53, scope: !516)
!535 = !DILocation(line: 143, column: 37, scope: !516)
!536 = !DILocation(line: 143, column: 68, scope: !516)
!537 = !DILocation(line: 143, column: 81, scope: !516)
!538 = !DILocation(line: 143, column: 89, scope: !516)
!539 = !DILocation(line: 143, column: 87, scope: !516)
!540 = !DILocation(line: 143, column: 100, scope: !516)
!541 = !DILocation(line: 143, column: 71, scope: !516)
!542 = !DILocation(line: 0, scope: !516)
!543 = !DILocalVariable(name: "byte", scope: !544, file: !3, line: 145, type: !23)
!544 = distinct !DILexicalBlock(scope: !516, file: !3, line: 144, column: 5)
!545 = !DILocation(line: 145, column: 13, scope: !544)
!546 = !DILocation(line: 146, column: 18, scope: !544)
!547 = !DILocation(line: 146, column: 26, scope: !544)
!548 = !DILocation(line: 146, column: 24, scope: !544)
!549 = !DILocation(line: 146, column: 9, scope: !544)
!550 = !DILocation(line: 147, column: 45, scope: !544)
!551 = !DILocation(line: 147, column: 29, scope: !544)
!552 = !DILocation(line: 147, column: 9, scope: !544)
!553 = !DILocation(line: 147, column: 15, scope: !544)
!554 = !DILocation(line: 147, column: 27, scope: !544)
!555 = !DILocation(line: 148, column: 9, scope: !544)
!556 = distinct !{!556, !527, !557, !476}
!557 = !DILocation(line: 149, column: 5, scope: !516)
!558 = !DILocation(line: 151, column: 12, scope: !516)
!559 = !DILocation(line: 151, column: 5, scope: !516)
!560 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !561, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DISubroutineType(types: !562)
!562 = !{!23}
!563 = !DILocation(line: 158, column: 5, scope: !560)
!564 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !561, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DILocation(line: 163, column: 5, scope: !564)
!566 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !561, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 168, column: 13, scope: !566)
!568 = !DILocation(line: 168, column: 20, scope: !566)
!569 = !DILocation(line: 168, column: 5, scope: !566)
!570 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !56, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 187, column: 16, scope: !570)
!572 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !56, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DILocation(line: 188, column: 16, scope: !572)
!574 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !56, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DILocation(line: 189, column: 16, scope: !574)
!576 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !56, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DILocation(line: 190, column: 16, scope: !576)
!578 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !56, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DILocation(line: 191, column: 16, scope: !578)
!580 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !56, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DILocation(line: 192, column: 16, scope: !580)
!582 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !56, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DILocation(line: 193, column: 16, scope: !582)
!584 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !56, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DILocation(line: 194, column: 16, scope: !584)
!586 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !56, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DILocation(line: 195, column: 16, scope: !586)
!588 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !56, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DILocation(line: 198, column: 15, scope: !588)
!590 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !56, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!591 = !DILocation(line: 199, column: 15, scope: !590)
!592 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !56, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!593 = !DILocation(line: 200, column: 15, scope: !592)
!594 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !56, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!595 = !DILocation(line: 201, column: 15, scope: !594)
!596 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !56, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!597 = !DILocation(line: 202, column: 15, scope: !596)
!598 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !56, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!599 = !DILocation(line: 203, column: 15, scope: !598)
!600 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !56, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!601 = !DILocation(line: 204, column: 15, scope: !600)
!602 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !56, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!603 = !DILocation(line: 205, column: 15, scope: !602)
!604 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !56, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DILocation(line: 206, column: 15, scope: !604)
