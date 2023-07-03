; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3.6 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
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
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11.15 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_61_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !59, metadata !DIExpression()), !dbg !63
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !64
  store i8* %arraydecay, i8** %data, align 8, !dbg !65
  %1 = load i8*, i8** %data, align 8, !dbg !66
  %call = call i8* @CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_badSource(i8* %1), !dbg !67
  store i8* %call, i8** %data, align 8, !dbg !68
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !69
  %3 = load i8*, i8** %data, align 8, !dbg !70
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !71
  ret void, !dbg !72
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !73 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !77
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !77
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !78
  store i8* %arraydecay, i8** %data, align 8, !dbg !79
  %1 = load i8*, i8** %data, align 8, !dbg !80
  %call = call i8* @CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodG2BSource(i8* %1), !dbg !81
  store i8* %call, i8** %data, align 8, !dbg !82
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !83
  %3 = load i8*, i8** %data, align 8, !dbg !84
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !85
  ret void, !dbg !86
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !87 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !91
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !91
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !92
  store i8* %arraydecay, i8** %data, align 8, !dbg !93
  %1 = load i8*, i8** %data, align 8, !dbg !94
  %call = call i8* @CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource(i8* %1), !dbg !95
  store i8* %call, i8** %data, align 8, !dbg !96
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !97
  %3 = load i8*, i8** %data, align 8, !dbg !98
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %3), !dbg !99
  ret void, !dbg !100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_61_good() #0 !dbg !101 {
entry:
  call void @goodG2B(), !dbg !102
  call void @goodB2G(), !dbg !103
  ret void, !dbg !104
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_badSource(i8* %data) #0 !dbg !105 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !110, metadata !DIExpression()), !dbg !115
  %0 = load i8*, i8** %data.addr, align 8, !dbg !116
  %call = call i64 @strlen(i8* %0) #7, !dbg !117
  store i64 %call, i64* %dataLen, align 8, !dbg !115
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !118, metadata !DIExpression()), !dbg !174
  %1 = load i64, i64* %dataLen, align 8, !dbg !175
  %sub = sub i64 100, %1, !dbg !177
  %cmp = icmp ugt i64 %sub, 1, !dbg !178
  br i1 %cmp, label %if.then, label %if.end11, !dbg !179

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !180
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !182
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !183
  %cmp2 = icmp ne %struct._IO_FILE* %2, null, !dbg !185
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !186

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data.addr, align 8, !dbg !187
  %4 = load i64, i64* %dataLen, align 8, !dbg !190
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !191
  %5 = load i64, i64* %dataLen, align 8, !dbg !192
  %sub4 = sub i64 100, %5, !dbg !193
  %conv = trunc i64 %sub4 to i32, !dbg !194
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !195
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !196
  %cmp6 = icmp eq i8* %call5, null, !dbg !197
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !198

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !199
  %7 = load i8*, i8** %data.addr, align 8, !dbg !201
  %8 = load i64, i64* %dataLen, align 8, !dbg !202
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !201
  store i8 0, i8* %arrayidx, align 1, !dbg !203
  br label %if.end, !dbg !204

if.end:                                           ; preds = %if.then8, %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !205
  %call9 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !206
  br label %if.end10, !dbg !207

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !208

if.end11:                                         ; preds = %if.end10, %entry
  %10 = load i8*, i8** %data.addr, align 8, !dbg !209
  ret i8* %10, !dbg !210
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodG2BSource(i8* %data) #0 !dbg !211 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !212, metadata !DIExpression()), !dbg !213
  %0 = load i8*, i8** %data.addr, align 8, !dbg !214
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3.6, i64 0, i64 0)) #8, !dbg !215
  %1 = load i8*, i8** %data.addr, align 8, !dbg !216
  ret i8* %1, !dbg !217
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource(i8* %data) #0 !dbg !218 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !221, metadata !DIExpression()), !dbg !223
  %0 = load i8*, i8** %data.addr, align 8, !dbg !224
  %call = call i64 @strlen(i8* %0) #7, !dbg !225
  store i64 %call, i64* %dataLen, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !226, metadata !DIExpression()), !dbg !227
  %1 = load i64, i64* %dataLen, align 8, !dbg !228
  %sub = sub i64 100, %1, !dbg !230
  %cmp = icmp ugt i64 %sub, 1, !dbg !231
  br i1 %cmp, label %if.then, label %if.end11, !dbg !232

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !233
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !235
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !236
  %cmp2 = icmp ne %struct._IO_FILE* %2, null, !dbg !238
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !239

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data.addr, align 8, !dbg !240
  %4 = load i64, i64* %dataLen, align 8, !dbg !243
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !244
  %5 = load i64, i64* %dataLen, align 8, !dbg !245
  %sub4 = sub i64 100, %5, !dbg !246
  %conv = trunc i64 %sub4 to i32, !dbg !247
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !248
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !249
  %cmp6 = icmp eq i8* %call5, null, !dbg !250
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !251

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !252
  %7 = load i8*, i8** %data.addr, align 8, !dbg !254
  %8 = load i64, i64* %dataLen, align 8, !dbg !255
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !254
  store i8 0, i8* %arrayidx, align 1, !dbg !256
  br label %if.end, !dbg !257

if.end:                                           ; preds = %if.then8, %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !258
  %call9 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !259
  br label %if.end10, !dbg !260

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !261

if.end11:                                         ; preds = %if.end10, %entry
  %10 = load i8*, i8** %data.addr, align 8, !dbg !262
  ret i8* %10, !dbg !263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !264 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !267, metadata !DIExpression()), !dbg !268
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)), !dbg !269
  %0 = load i8*, i8** %line.addr, align 8, !dbg !270
  %cmp = icmp ne i8* %0, null, !dbg !272
  br i1 %cmp, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !274
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !276
  br label %if.end, !dbg !277

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.13, i64 0, i64 0)), !dbg !278
  ret void, !dbg !279
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !280 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = load i8*, i8** %line.addr, align 8, !dbg !283
  %cmp = icmp ne i8* %0, null, !dbg !285
  br i1 %cmp, label %if.then, label %if.end, !dbg !286

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !287
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !289
  br label %if.end, !dbg !290

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !291
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !292 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !297, metadata !DIExpression()), !dbg !298
  %0 = load i32*, i32** %line.addr, align 8, !dbg !299
  %cmp = icmp ne i32* %0, null, !dbg !301
  br i1 %cmp, label %if.then, label %if.end, !dbg !302

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !303
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.14, i64 0, i64 0), i32* %1), !dbg !305
  br label %if.end, !dbg !306

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !307
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !308 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !311, metadata !DIExpression()), !dbg !312
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !313
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !314
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !316 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !320, metadata !DIExpression()), !dbg !321
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !322
  %conv = sext i16 %0 to i32, !dbg !322
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !323
  ret void, !dbg !324
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !325 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !331
  %conv = fpext float %0 to double, !dbg !331
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !332
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !334 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !339
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !340
  ret void, !dbg !341
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !342 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !350
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !353 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !358
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !359
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !361 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !364, metadata !DIExpression()), !dbg !365
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !366
  %conv = sext i8 %0 to i32, !dbg !366
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !367
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !369 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !372, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !374, metadata !DIExpression()), !dbg !378
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !379
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !380
  store i32 %0, i32* %arrayidx, align 4, !dbg !381
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !382
  store i32 0, i32* %arrayidx1, align 4, !dbg !383
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !384
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !385
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !387 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !392
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11.15, i64 0, i64 0), i32 %0), !dbg !393
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !395 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !400
  %conv = zext i8 %0 to i32, !dbg !400
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !401
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !403 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !407, metadata !DIExpression()), !dbg !408
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !409
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !410
  ret void, !dbg !411
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !412 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !424
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !425
  %1 = load i32, i32* %intOne, align 4, !dbg !425
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !426
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !427
  %3 = load i32, i32* %intTwo, align 4, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !430 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !434, metadata !DIExpression()), !dbg !435
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !436, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.declare(metadata i64* %i, metadata !438, metadata !DIExpression()), !dbg !439
  store i64 0, i64* %i, align 8, !dbg !440
  br label %for.cond, !dbg !442

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !443
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !445
  %cmp = icmp ult i64 %0, %1, !dbg !446
  br i1 %cmp, label %for.body, label %for.end, !dbg !447

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !448
  %3 = load i64, i64* %i, align 8, !dbg !450
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !448
  %4 = load i8, i8* %arrayidx, align 1, !dbg !448
  %conv = zext i8 %4 to i32, !dbg !448
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !451
  br label %for.inc, !dbg !452

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !453
  %inc = add i64 %5, 1, !dbg !453
  store i64 %inc, i64* %i, align 8, !dbg !453
  br label %for.cond, !dbg !454, !llvm.loop !455

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !458
  ret void, !dbg !459
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !460 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !463, metadata !DIExpression()), !dbg !464
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !465, metadata !DIExpression()), !dbg !466
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !467, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !469, metadata !DIExpression()), !dbg !470
  store i64 0, i64* %numWritten, align 8, !dbg !470
  br label %while.cond, !dbg !471

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !472
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !473
  %cmp = icmp ult i64 %0, %1, !dbg !474
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !475

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !476
  %2 = load i16*, i16** %call, align 8, !dbg !476
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !476
  %4 = load i64, i64* %numWritten, align 8, !dbg !476
  %mul = mul i64 2, %4, !dbg !476
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !476
  %5 = load i8, i8* %arrayidx, align 1, !dbg !476
  %conv = sext i8 %5 to i32, !dbg !476
  %idxprom = sext i32 %conv to i64, !dbg !476
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !476
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !476
  %conv2 = zext i16 %6 to i32, !dbg !476
  %and = and i32 %conv2, 4096, !dbg !476
  %tobool = icmp ne i32 %and, 0, !dbg !476
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !477

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !478
  %7 = load i16*, i16** %call3, align 8, !dbg !478
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !478
  %9 = load i64, i64* %numWritten, align 8, !dbg !478
  %mul4 = mul i64 2, %9, !dbg !478
  %add = add i64 %mul4, 1, !dbg !478
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !478
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !478
  %conv6 = sext i8 %10 to i32, !dbg !478
  %idxprom7 = sext i32 %conv6 to i64, !dbg !478
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !478
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !478
  %conv9 = zext i16 %11 to i32, !dbg !478
  %and10 = and i32 %conv9, 4096, !dbg !478
  %tobool11 = icmp ne i32 %and10, 0, !dbg !477
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !479
  br i1 %12, label %while.body, label %while.end, !dbg !471

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !480, metadata !DIExpression()), !dbg !482
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !483
  %14 = load i64, i64* %numWritten, align 8, !dbg !484
  %mul12 = mul i64 2, %14, !dbg !485
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !483
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !486
  %15 = load i32, i32* %byte, align 4, !dbg !487
  %conv15 = trunc i32 %15 to i8, !dbg !488
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !489
  %17 = load i64, i64* %numWritten, align 8, !dbg !490
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !489
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !491
  %18 = load i64, i64* %numWritten, align 8, !dbg !492
  %inc = add i64 %18, 1, !dbg !492
  store i64 %inc, i64* %numWritten, align 8, !dbg !492
  br label %while.cond, !dbg !471, !llvm.loop !493

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !495
  ret i64 %19, !dbg !496
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !497 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !500, metadata !DIExpression()), !dbg !501
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !502, metadata !DIExpression()), !dbg !503
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !504, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !506, metadata !DIExpression()), !dbg !507
  store i64 0, i64* %numWritten, align 8, !dbg !507
  br label %while.cond, !dbg !508

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !509
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !510
  %cmp = icmp ult i64 %0, %1, !dbg !511
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !512

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !513
  %3 = load i64, i64* %numWritten, align 8, !dbg !514
  %mul = mul i64 2, %3, !dbg !515
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !513
  %4 = load i32, i32* %arrayidx, align 4, !dbg !513
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !516
  %tobool = icmp ne i32 %call, 0, !dbg !516
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !517

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !518
  %6 = load i64, i64* %numWritten, align 8, !dbg !519
  %mul1 = mul i64 2, %6, !dbg !520
  %add = add i64 %mul1, 1, !dbg !521
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !518
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !518
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !522
  %tobool4 = icmp ne i32 %call3, 0, !dbg !517
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !523
  br i1 %8, label %while.body, label %while.end, !dbg !508

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !524, metadata !DIExpression()), !dbg !526
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !527
  %10 = load i64, i64* %numWritten, align 8, !dbg !528
  %mul5 = mul i64 2, %10, !dbg !529
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !527
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !530
  %11 = load i32, i32* %byte, align 4, !dbg !531
  %conv = trunc i32 %11 to i8, !dbg !532
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !533
  %13 = load i64, i64* %numWritten, align 8, !dbg !534
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !533
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !535
  %14 = load i64, i64* %numWritten, align 8, !dbg !536
  %inc = add i64 %14, 1, !dbg !536
  store i64 %inc, i64* %numWritten, align 8, !dbg !536
  br label %while.cond, !dbg !508, !llvm.loop !537

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !539
  ret i64 %15, !dbg !540
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !541 {
entry:
  ret i32 1, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !545 {
entry:
  ret i32 0, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !547 {
entry:
  %call = call i32 @rand() #8, !dbg !548
  %rem = srem i32 %call, 2, !dbg !549
  ret i32 %rem, !dbg !550
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !47, !2}
!llvm.ident = !{!50, !50, !50}
!llvm.module.flags = !{!51, !52, !53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_995/source_code")
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
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_61a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_995/source_code")
!46 = !{}
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !49, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_61b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_995/source_code")
!49 = !{!22, !23}
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_61_bad", scope: !45, file: !45, line: 35, type: !55, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!66 = !DILocation(line: 40, column: 79, scope: !54)
!67 = !DILocation(line: 40, column: 12, scope: !54)
!68 = !DILocation(line: 40, column: 10, scope: !54)
!69 = !DILocation(line: 42, column: 13, scope: !54)
!70 = !DILocation(line: 42, column: 21, scope: !54)
!71 = !DILocation(line: 42, column: 5, scope: !54)
!72 = !DILocation(line: 43, column: 1, scope: !54)
!73 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 51, type: !55, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!74 = !DILocalVariable(name: "data", scope: !73, file: !45, line: 53, type: !42)
!75 = !DILocation(line: 53, column: 12, scope: !73)
!76 = !DILocalVariable(name: "dataBuffer", scope: !73, file: !45, line: 54, type: !60)
!77 = !DILocation(line: 54, column: 10, scope: !73)
!78 = !DILocation(line: 55, column: 12, scope: !73)
!79 = !DILocation(line: 55, column: 10, scope: !73)
!80 = !DILocation(line: 56, column: 83, scope: !73)
!81 = !DILocation(line: 56, column: 12, scope: !73)
!82 = !DILocation(line: 56, column: 10, scope: !73)
!83 = !DILocation(line: 58, column: 13, scope: !73)
!84 = !DILocation(line: 58, column: 21, scope: !73)
!85 = !DILocation(line: 58, column: 5, scope: !73)
!86 = !DILocation(line: 59, column: 1, scope: !73)
!87 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 63, type: !55, scopeLine: 64, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!88 = !DILocalVariable(name: "data", scope: !87, file: !45, line: 65, type: !42)
!89 = !DILocation(line: 65, column: 12, scope: !87)
!90 = !DILocalVariable(name: "dataBuffer", scope: !87, file: !45, line: 66, type: !60)
!91 = !DILocation(line: 66, column: 10, scope: !87)
!92 = !DILocation(line: 67, column: 12, scope: !87)
!93 = !DILocation(line: 67, column: 10, scope: !87)
!94 = !DILocation(line: 68, column: 83, scope: !87)
!95 = !DILocation(line: 68, column: 12, scope: !87)
!96 = !DILocation(line: 68, column: 10, scope: !87)
!97 = !DILocation(line: 70, column: 13, scope: !87)
!98 = !DILocation(line: 70, column: 29, scope: !87)
!99 = !DILocation(line: 70, column: 5, scope: !87)
!100 = !DILocation(line: 71, column: 1, scope: !87)
!101 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_61_good", scope: !45, file: !45, line: 73, type: !55, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!102 = !DILocation(line: 75, column: 5, scope: !101)
!103 = !DILocation(line: 76, column: 5, scope: !101)
!104 = !DILocation(line: 77, column: 1, scope: !101)
!105 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_badSource", scope: !48, file: !48, line: 32, type: !106, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!106 = !DISubroutineType(types: !107)
!107 = !{!42, !42}
!108 = !DILocalVariable(name: "data", arg: 1, scope: !105, file: !48, line: 32, type: !42)
!109 = !DILocation(line: 32, column: 82, scope: !105)
!110 = !DILocalVariable(name: "dataLen", scope: !111, file: !48, line: 36, type: !112)
!111 = distinct !DILexicalBlock(scope: !105, file: !48, line: 34, column: 5)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 46, baseType: !114)
!113 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!114 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!115 = !DILocation(line: 36, column: 16, scope: !111)
!116 = !DILocation(line: 36, column: 33, scope: !111)
!117 = !DILocation(line: 36, column: 26, scope: !111)
!118 = !DILocalVariable(name: "pFile", scope: !111, file: !48, line: 37, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !121, line: 7, baseType: !122)
!121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !123, line: 49, size: 1728, elements: !124)
!123 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !140, !142, !143, !144, !148, !149, !151, !155, !158, !160, !163, !166, !167, !168, !169, !170}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !122, file: !123, line: 51, baseType: !23, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !122, file: !123, line: 54, baseType: !42, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !122, file: !123, line: 55, baseType: !42, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !122, file: !123, line: 56, baseType: !42, size: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !122, file: !123, line: 57, baseType: !42, size: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !122, file: !123, line: 58, baseType: !42, size: 64, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !122, file: !123, line: 59, baseType: !42, size: 64, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !122, file: !123, line: 60, baseType: !42, size: 64, offset: 448)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !122, file: !123, line: 61, baseType: !42, size: 64, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !122, file: !123, line: 64, baseType: !42, size: 64, offset: 576)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !122, file: !123, line: 65, baseType: !42, size: 64, offset: 640)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !122, file: !123, line: 66, baseType: !42, size: 64, offset: 704)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !122, file: !123, line: 68, baseType: !138, size: 64, offset: 768)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !123, line: 36, flags: DIFlagFwdDecl)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !122, file: !123, line: 70, baseType: !141, size: 64, offset: 832)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !122, file: !123, line: 72, baseType: !23, size: 32, offset: 896)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !122, file: !123, line: 73, baseType: !23, size: 32, offset: 928)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !122, file: !123, line: 74, baseType: !145, size: 64, offset: 960)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !146, line: 152, baseType: !147)
!146 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!147 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !122, file: !123, line: 77, baseType: !24, size: 16, offset: 1024)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !122, file: !123, line: 78, baseType: !150, size: 8, offset: 1040)
!150 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !122, file: !123, line: 79, baseType: !152, size: 8, offset: 1048)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: 1)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !122, file: !123, line: 81, baseType: !156, size: 64, offset: 1088)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !123, line: 43, baseType: null)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !122, file: !123, line: 89, baseType: !159, size: 64, offset: 1152)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !146, line: 153, baseType: !147)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !122, file: !123, line: 91, baseType: !161, size: 64, offset: 1216)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !123, line: 37, flags: DIFlagFwdDecl)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !122, file: !123, line: 92, baseType: !164, size: 64, offset: 1280)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !123, line: 38, flags: DIFlagFwdDecl)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !122, file: !123, line: 93, baseType: !141, size: 64, offset: 1344)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !122, file: !123, line: 94, baseType: !22, size: 64, offset: 1408)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !122, file: !123, line: 95, baseType: !112, size: 64, offset: 1472)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !122, file: !123, line: 96, baseType: !23, size: 32, offset: 1536)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !122, file: !123, line: 98, baseType: !171, size: 160, offset: 1568)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 20)
!174 = !DILocation(line: 37, column: 16, scope: !111)
!175 = !DILocation(line: 39, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !111, file: !48, line: 39, column: 13)
!177 = !DILocation(line: 39, column: 16, scope: !176)
!178 = !DILocation(line: 39, column: 25, scope: !176)
!179 = !DILocation(line: 39, column: 13, scope: !111)
!180 = !DILocation(line: 41, column: 21, scope: !181)
!181 = distinct !DILexicalBlock(scope: !176, file: !48, line: 40, column: 9)
!182 = !DILocation(line: 41, column: 19, scope: !181)
!183 = !DILocation(line: 42, column: 17, scope: !184)
!184 = distinct !DILexicalBlock(scope: !181, file: !48, line: 42, column: 17)
!185 = !DILocation(line: 42, column: 23, scope: !184)
!186 = !DILocation(line: 42, column: 17, scope: !181)
!187 = !DILocation(line: 45, column: 27, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !48, line: 45, column: 21)
!189 = distinct !DILexicalBlock(scope: !184, file: !48, line: 43, column: 13)
!190 = !DILocation(line: 45, column: 32, scope: !188)
!191 = !DILocation(line: 45, column: 31, scope: !188)
!192 = !DILocation(line: 45, column: 51, scope: !188)
!193 = !DILocation(line: 45, column: 50, scope: !188)
!194 = !DILocation(line: 45, column: 41, scope: !188)
!195 = !DILocation(line: 45, column: 61, scope: !188)
!196 = !DILocation(line: 45, column: 21, scope: !188)
!197 = !DILocation(line: 45, column: 68, scope: !188)
!198 = !DILocation(line: 45, column: 21, scope: !189)
!199 = !DILocation(line: 47, column: 21, scope: !200)
!200 = distinct !DILexicalBlock(scope: !188, file: !48, line: 46, column: 17)
!201 = !DILocation(line: 49, column: 21, scope: !200)
!202 = !DILocation(line: 49, column: 26, scope: !200)
!203 = !DILocation(line: 49, column: 35, scope: !200)
!204 = !DILocation(line: 50, column: 17, scope: !200)
!205 = !DILocation(line: 51, column: 24, scope: !189)
!206 = !DILocation(line: 51, column: 17, scope: !189)
!207 = !DILocation(line: 52, column: 13, scope: !189)
!208 = !DILocation(line: 53, column: 9, scope: !181)
!209 = !DILocation(line: 55, column: 12, scope: !105)
!210 = !DILocation(line: 55, column: 5, scope: !105)
!211 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodG2BSource", scope: !48, file: !48, line: 63, type: !106, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!212 = !DILocalVariable(name: "data", arg: 1, scope: !211, file: !48, line: 63, type: !42)
!213 = !DILocation(line: 63, column: 86, scope: !211)
!214 = !DILocation(line: 66, column: 12, scope: !211)
!215 = !DILocation(line: 66, column: 5, scope: !211)
!216 = !DILocation(line: 67, column: 12, scope: !211)
!217 = !DILocation(line: 67, column: 5, scope: !211)
!218 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_61b_goodB2GSource", scope: !48, file: !48, line: 71, type: !106, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!219 = !DILocalVariable(name: "data", arg: 1, scope: !218, file: !48, line: 71, type: !42)
!220 = !DILocation(line: 71, column: 86, scope: !218)
!221 = !DILocalVariable(name: "dataLen", scope: !222, file: !48, line: 75, type: !112)
!222 = distinct !DILexicalBlock(scope: !218, file: !48, line: 73, column: 5)
!223 = !DILocation(line: 75, column: 16, scope: !222)
!224 = !DILocation(line: 75, column: 33, scope: !222)
!225 = !DILocation(line: 75, column: 26, scope: !222)
!226 = !DILocalVariable(name: "pFile", scope: !222, file: !48, line: 76, type: !119)
!227 = !DILocation(line: 76, column: 16, scope: !222)
!228 = !DILocation(line: 78, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !222, file: !48, line: 78, column: 13)
!230 = !DILocation(line: 78, column: 16, scope: !229)
!231 = !DILocation(line: 78, column: 25, scope: !229)
!232 = !DILocation(line: 78, column: 13, scope: !222)
!233 = !DILocation(line: 80, column: 21, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !48, line: 79, column: 9)
!235 = !DILocation(line: 80, column: 19, scope: !234)
!236 = !DILocation(line: 81, column: 17, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !48, line: 81, column: 17)
!238 = !DILocation(line: 81, column: 23, scope: !237)
!239 = !DILocation(line: 81, column: 17, scope: !234)
!240 = !DILocation(line: 84, column: 27, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !48, line: 84, column: 21)
!242 = distinct !DILexicalBlock(scope: !237, file: !48, line: 82, column: 13)
!243 = !DILocation(line: 84, column: 32, scope: !241)
!244 = !DILocation(line: 84, column: 31, scope: !241)
!245 = !DILocation(line: 84, column: 51, scope: !241)
!246 = !DILocation(line: 84, column: 50, scope: !241)
!247 = !DILocation(line: 84, column: 41, scope: !241)
!248 = !DILocation(line: 84, column: 61, scope: !241)
!249 = !DILocation(line: 84, column: 21, scope: !241)
!250 = !DILocation(line: 84, column: 68, scope: !241)
!251 = !DILocation(line: 84, column: 21, scope: !242)
!252 = !DILocation(line: 86, column: 21, scope: !253)
!253 = distinct !DILexicalBlock(scope: !241, file: !48, line: 85, column: 17)
!254 = !DILocation(line: 88, column: 21, scope: !253)
!255 = !DILocation(line: 88, column: 26, scope: !253)
!256 = !DILocation(line: 88, column: 35, scope: !253)
!257 = !DILocation(line: 89, column: 17, scope: !253)
!258 = !DILocation(line: 90, column: 24, scope: !242)
!259 = !DILocation(line: 90, column: 17, scope: !242)
!260 = !DILocation(line: 91, column: 13, scope: !242)
!261 = !DILocation(line: 92, column: 9, scope: !234)
!262 = !DILocation(line: 94, column: 12, scope: !218)
!263 = !DILocation(line: 94, column: 5, scope: !218)
!264 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !265, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !42}
!267 = !DILocalVariable(name: "line", arg: 1, scope: !264, file: !3, line: 11, type: !42)
!268 = !DILocation(line: 11, column: 25, scope: !264)
!269 = !DILocation(line: 13, column: 1, scope: !264)
!270 = !DILocation(line: 14, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !264, file: !3, line: 14, column: 8)
!272 = !DILocation(line: 14, column: 13, scope: !271)
!273 = !DILocation(line: 14, column: 8, scope: !264)
!274 = !DILocation(line: 16, column: 24, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 15, column: 5)
!276 = !DILocation(line: 16, column: 9, scope: !275)
!277 = !DILocation(line: 17, column: 5, scope: !275)
!278 = !DILocation(line: 18, column: 5, scope: !264)
!279 = !DILocation(line: 19, column: 1, scope: !264)
!280 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !265, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!281 = !DILocalVariable(name: "line", arg: 1, scope: !280, file: !3, line: 20, type: !42)
!282 = !DILocation(line: 20, column: 29, scope: !280)
!283 = !DILocation(line: 22, column: 8, scope: !284)
!284 = distinct !DILexicalBlock(scope: !280, file: !3, line: 22, column: 8)
!285 = !DILocation(line: 22, column: 13, scope: !284)
!286 = !DILocation(line: 22, column: 8, scope: !280)
!287 = !DILocation(line: 24, column: 24, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !3, line: 23, column: 5)
!289 = !DILocation(line: 24, column: 9, scope: !288)
!290 = !DILocation(line: 25, column: 5, scope: !288)
!291 = !DILocation(line: 26, column: 1, scope: !280)
!292 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !293, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !113, line: 74, baseType: !23)
!297 = !DILocalVariable(name: "line", arg: 1, scope: !292, file: !3, line: 27, type: !295)
!298 = !DILocation(line: 27, column: 29, scope: !292)
!299 = !DILocation(line: 29, column: 8, scope: !300)
!300 = distinct !DILexicalBlock(scope: !292, file: !3, line: 29, column: 8)
!301 = !DILocation(line: 29, column: 13, scope: !300)
!302 = !DILocation(line: 29, column: 8, scope: !292)
!303 = !DILocation(line: 31, column: 27, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !3, line: 30, column: 5)
!305 = !DILocation(line: 31, column: 9, scope: !304)
!306 = !DILocation(line: 32, column: 5, scope: !304)
!307 = !DILocation(line: 33, column: 1, scope: !292)
!308 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !309, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !23}
!311 = !DILocalVariable(name: "intNumber", arg: 1, scope: !308, file: !3, line: 35, type: !23)
!312 = !DILocation(line: 35, column: 24, scope: !308)
!313 = !DILocation(line: 37, column: 20, scope: !308)
!314 = !DILocation(line: 37, column: 5, scope: !308)
!315 = !DILocation(line: 38, column: 1, scope: !308)
!316 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !317, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319}
!319 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!320 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !316, file: !3, line: 40, type: !319)
!321 = !DILocation(line: 40, column: 28, scope: !316)
!322 = !DILocation(line: 42, column: 21, scope: !316)
!323 = !DILocation(line: 42, column: 5, scope: !316)
!324 = !DILocation(line: 43, column: 1, scope: !316)
!325 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !326, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !328}
!328 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!329 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !325, file: !3, line: 45, type: !328)
!330 = !DILocation(line: 45, column: 28, scope: !325)
!331 = !DILocation(line: 47, column: 20, scope: !325)
!332 = !DILocation(line: 47, column: 5, scope: !325)
!333 = !DILocation(line: 48, column: 1, scope: !325)
!334 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !335, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !147}
!337 = !DILocalVariable(name: "longNumber", arg: 1, scope: !334, file: !3, line: 50, type: !147)
!338 = !DILocation(line: 50, column: 26, scope: !334)
!339 = !DILocation(line: 52, column: 21, scope: !334)
!340 = !DILocation(line: 52, column: 5, scope: !334)
!341 = !DILocation(line: 53, column: 1, scope: !334)
!342 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !343, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !345}
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !346, line: 27, baseType: !347)
!346 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !146, line: 44, baseType: !147)
!348 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !342, file: !3, line: 55, type: !345)
!349 = !DILocation(line: 55, column: 33, scope: !342)
!350 = !DILocation(line: 57, column: 29, scope: !342)
!351 = !DILocation(line: 57, column: 5, scope: !342)
!352 = !DILocation(line: 58, column: 1, scope: !342)
!353 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !354, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !112}
!356 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !353, file: !3, line: 60, type: !112)
!357 = !DILocation(line: 60, column: 29, scope: !353)
!358 = !DILocation(line: 62, column: 21, scope: !353)
!359 = !DILocation(line: 62, column: 5, scope: !353)
!360 = !DILocation(line: 63, column: 1, scope: !353)
!361 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !362, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !43}
!364 = !DILocalVariable(name: "charHex", arg: 1, scope: !361, file: !3, line: 65, type: !43)
!365 = !DILocation(line: 65, column: 29, scope: !361)
!366 = !DILocation(line: 67, column: 22, scope: !361)
!367 = !DILocation(line: 67, column: 5, scope: !361)
!368 = !DILocation(line: 68, column: 1, scope: !361)
!369 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !370, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!370 = !DISubroutineType(types: !371)
!371 = !{null, !296}
!372 = !DILocalVariable(name: "wideChar", arg: 1, scope: !369, file: !3, line: 70, type: !296)
!373 = !DILocation(line: 70, column: 29, scope: !369)
!374 = !DILocalVariable(name: "s", scope: !369, file: !3, line: 74, type: !375)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 64, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 2)
!378 = !DILocation(line: 74, column: 13, scope: !369)
!379 = !DILocation(line: 75, column: 16, scope: !369)
!380 = !DILocation(line: 75, column: 9, scope: !369)
!381 = !DILocation(line: 75, column: 14, scope: !369)
!382 = !DILocation(line: 76, column: 9, scope: !369)
!383 = !DILocation(line: 76, column: 14, scope: !369)
!384 = !DILocation(line: 77, column: 21, scope: !369)
!385 = !DILocation(line: 77, column: 5, scope: !369)
!386 = !DILocation(line: 78, column: 1, scope: !369)
!387 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !388, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !7}
!390 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !387, file: !3, line: 80, type: !7)
!391 = !DILocation(line: 80, column: 33, scope: !387)
!392 = !DILocation(line: 82, column: 20, scope: !387)
!393 = !DILocation(line: 82, column: 5, scope: !387)
!394 = !DILocation(line: 83, column: 1, scope: !387)
!395 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !396, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !25}
!398 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !395, file: !3, line: 85, type: !25)
!399 = !DILocation(line: 85, column: 45, scope: !395)
!400 = !DILocation(line: 87, column: 22, scope: !395)
!401 = !DILocation(line: 87, column: 5, scope: !395)
!402 = !DILocation(line: 88, column: 1, scope: !395)
!403 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !404, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !406}
!406 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!407 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !403, file: !3, line: 90, type: !406)
!408 = !DILocation(line: 90, column: 29, scope: !403)
!409 = !DILocation(line: 92, column: 20, scope: !403)
!410 = !DILocation(line: 92, column: 5, scope: !403)
!411 = !DILocation(line: 93, column: 1, scope: !403)
!412 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !413, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !417, line: 100, baseType: !418)
!417 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_995/source_code")
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !417, line: 96, size: 64, elements: !419)
!419 = !{!420, !421}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !418, file: !417, line: 98, baseType: !23, size: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !418, file: !417, line: 99, baseType: !23, size: 32, offset: 32)
!422 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !412, file: !3, line: 95, type: !415)
!423 = !DILocation(line: 95, column: 40, scope: !412)
!424 = !DILocation(line: 97, column: 26, scope: !412)
!425 = !DILocation(line: 97, column: 47, scope: !412)
!426 = !DILocation(line: 97, column: 55, scope: !412)
!427 = !DILocation(line: 97, column: 76, scope: !412)
!428 = !DILocation(line: 97, column: 5, scope: !412)
!429 = !DILocation(line: 98, column: 1, scope: !412)
!430 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !431, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !433, !112}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!434 = !DILocalVariable(name: "bytes", arg: 1, scope: !430, file: !3, line: 100, type: !433)
!435 = !DILocation(line: 100, column: 38, scope: !430)
!436 = !DILocalVariable(name: "numBytes", arg: 2, scope: !430, file: !3, line: 100, type: !112)
!437 = !DILocation(line: 100, column: 52, scope: !430)
!438 = !DILocalVariable(name: "i", scope: !430, file: !3, line: 102, type: !112)
!439 = !DILocation(line: 102, column: 12, scope: !430)
!440 = !DILocation(line: 103, column: 12, scope: !441)
!441 = distinct !DILexicalBlock(scope: !430, file: !3, line: 103, column: 5)
!442 = !DILocation(line: 103, column: 10, scope: !441)
!443 = !DILocation(line: 103, column: 17, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !3, line: 103, column: 5)
!445 = !DILocation(line: 103, column: 21, scope: !444)
!446 = !DILocation(line: 103, column: 19, scope: !444)
!447 = !DILocation(line: 103, column: 5, scope: !441)
!448 = !DILocation(line: 105, column: 24, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !3, line: 104, column: 5)
!450 = !DILocation(line: 105, column: 30, scope: !449)
!451 = !DILocation(line: 105, column: 9, scope: !449)
!452 = !DILocation(line: 106, column: 5, scope: !449)
!453 = !DILocation(line: 103, column: 31, scope: !444)
!454 = !DILocation(line: 103, column: 5, scope: !444)
!455 = distinct !{!455, !447, !456, !457}
!456 = !DILocation(line: 106, column: 5, scope: !441)
!457 = !{!"llvm.loop.mustprogress"}
!458 = !DILocation(line: 107, column: 5, scope: !430)
!459 = !DILocation(line: 108, column: 1, scope: !430)
!460 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !461, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!461 = !DISubroutineType(types: !462)
!462 = !{!112, !433, !112, !42}
!463 = !DILocalVariable(name: "bytes", arg: 1, scope: !460, file: !3, line: 113, type: !433)
!464 = !DILocation(line: 113, column: 39, scope: !460)
!465 = !DILocalVariable(name: "numBytes", arg: 2, scope: !460, file: !3, line: 113, type: !112)
!466 = !DILocation(line: 113, column: 53, scope: !460)
!467 = !DILocalVariable(name: "hex", arg: 3, scope: !460, file: !3, line: 113, type: !42)
!468 = !DILocation(line: 113, column: 71, scope: !460)
!469 = !DILocalVariable(name: "numWritten", scope: !460, file: !3, line: 115, type: !112)
!470 = !DILocation(line: 115, column: 12, scope: !460)
!471 = !DILocation(line: 121, column: 5, scope: !460)
!472 = !DILocation(line: 121, column: 12, scope: !460)
!473 = !DILocation(line: 121, column: 25, scope: !460)
!474 = !DILocation(line: 121, column: 23, scope: !460)
!475 = !DILocation(line: 121, column: 34, scope: !460)
!476 = !DILocation(line: 121, column: 37, scope: !460)
!477 = !DILocation(line: 121, column: 67, scope: !460)
!478 = !DILocation(line: 121, column: 70, scope: !460)
!479 = !DILocation(line: 0, scope: !460)
!480 = !DILocalVariable(name: "byte", scope: !481, file: !3, line: 123, type: !23)
!481 = distinct !DILexicalBlock(scope: !460, file: !3, line: 122, column: 5)
!482 = !DILocation(line: 123, column: 13, scope: !481)
!483 = !DILocation(line: 124, column: 17, scope: !481)
!484 = !DILocation(line: 124, column: 25, scope: !481)
!485 = !DILocation(line: 124, column: 23, scope: !481)
!486 = !DILocation(line: 124, column: 9, scope: !481)
!487 = !DILocation(line: 125, column: 45, scope: !481)
!488 = !DILocation(line: 125, column: 29, scope: !481)
!489 = !DILocation(line: 125, column: 9, scope: !481)
!490 = !DILocation(line: 125, column: 15, scope: !481)
!491 = !DILocation(line: 125, column: 27, scope: !481)
!492 = !DILocation(line: 126, column: 9, scope: !481)
!493 = distinct !{!493, !471, !494, !457}
!494 = !DILocation(line: 127, column: 5, scope: !460)
!495 = !DILocation(line: 129, column: 12, scope: !460)
!496 = !DILocation(line: 129, column: 5, scope: !460)
!497 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !498, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DISubroutineType(types: !499)
!499 = !{!112, !433, !112, !295}
!500 = !DILocalVariable(name: "bytes", arg: 1, scope: !497, file: !3, line: 135, type: !433)
!501 = !DILocation(line: 135, column: 41, scope: !497)
!502 = !DILocalVariable(name: "numBytes", arg: 2, scope: !497, file: !3, line: 135, type: !112)
!503 = !DILocation(line: 135, column: 55, scope: !497)
!504 = !DILocalVariable(name: "hex", arg: 3, scope: !497, file: !3, line: 135, type: !295)
!505 = !DILocation(line: 135, column: 76, scope: !497)
!506 = !DILocalVariable(name: "numWritten", scope: !497, file: !3, line: 137, type: !112)
!507 = !DILocation(line: 137, column: 12, scope: !497)
!508 = !DILocation(line: 143, column: 5, scope: !497)
!509 = !DILocation(line: 143, column: 12, scope: !497)
!510 = !DILocation(line: 143, column: 25, scope: !497)
!511 = !DILocation(line: 143, column: 23, scope: !497)
!512 = !DILocation(line: 143, column: 34, scope: !497)
!513 = !DILocation(line: 143, column: 47, scope: !497)
!514 = !DILocation(line: 143, column: 55, scope: !497)
!515 = !DILocation(line: 143, column: 53, scope: !497)
!516 = !DILocation(line: 143, column: 37, scope: !497)
!517 = !DILocation(line: 143, column: 68, scope: !497)
!518 = !DILocation(line: 143, column: 81, scope: !497)
!519 = !DILocation(line: 143, column: 89, scope: !497)
!520 = !DILocation(line: 143, column: 87, scope: !497)
!521 = !DILocation(line: 143, column: 100, scope: !497)
!522 = !DILocation(line: 143, column: 71, scope: !497)
!523 = !DILocation(line: 0, scope: !497)
!524 = !DILocalVariable(name: "byte", scope: !525, file: !3, line: 145, type: !23)
!525 = distinct !DILexicalBlock(scope: !497, file: !3, line: 144, column: 5)
!526 = !DILocation(line: 145, column: 13, scope: !525)
!527 = !DILocation(line: 146, column: 18, scope: !525)
!528 = !DILocation(line: 146, column: 26, scope: !525)
!529 = !DILocation(line: 146, column: 24, scope: !525)
!530 = !DILocation(line: 146, column: 9, scope: !525)
!531 = !DILocation(line: 147, column: 45, scope: !525)
!532 = !DILocation(line: 147, column: 29, scope: !525)
!533 = !DILocation(line: 147, column: 9, scope: !525)
!534 = !DILocation(line: 147, column: 15, scope: !525)
!535 = !DILocation(line: 147, column: 27, scope: !525)
!536 = !DILocation(line: 148, column: 9, scope: !525)
!537 = distinct !{!537, !508, !538, !457}
!538 = !DILocation(line: 149, column: 5, scope: !497)
!539 = !DILocation(line: 151, column: 12, scope: !497)
!540 = !DILocation(line: 151, column: 5, scope: !497)
!541 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !542, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DISubroutineType(types: !543)
!543 = !{!23}
!544 = !DILocation(line: 158, column: 5, scope: !541)
!545 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !542, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 163, column: 5, scope: !545)
!547 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !542, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 168, column: 13, scope: !547)
!549 = !DILocation(line: 168, column: 20, scope: !547)
!550 = !DILocation(line: 168, column: 5, scope: !547)
!551 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 187, column: 16, scope: !551)
!553 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 188, column: 16, scope: !553)
!555 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 189, column: 16, scope: !555)
!557 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 190, column: 16, scope: !557)
!559 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 191, column: 16, scope: !559)
!561 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 192, column: 16, scope: !561)
!563 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 193, column: 16, scope: !563)
!565 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 194, column: 16, scope: !565)
!567 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 195, column: 16, scope: !567)
!569 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 198, column: 15, scope: !569)
!571 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 199, column: 15, scope: !571)
!573 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 200, column: 15, scope: !573)
!575 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 201, column: 15, scope: !575)
!577 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 202, column: 15, scope: !577)
!579 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 203, column: 15, scope: !579)
!581 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 204, column: 15, scope: !581)
!583 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 205, column: 15, scope: !583)
!585 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 206, column: 15, scope: !585)
