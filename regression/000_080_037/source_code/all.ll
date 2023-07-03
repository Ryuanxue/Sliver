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
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.5 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.8 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.9 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.10 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
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
define dso_local void @badSink(i8* %data) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  %0 = load i8*, i8** %data.addr, align 8, !dbg !57
  %call = call i32 (i8*, ...) @printf(i8* %0), !dbg !58
  ret void, !dbg !59
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_44_bad() #0 !dbg !60 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !65, metadata !DIExpression()), !dbg !67
  store void (i8*)* @badSink, void (i8*)** %funcPtr, align 8, !dbg !67
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
  %11 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !174
  %12 = load i8*, i8** %data, align 8, !dbg !175
  call void %11(i8* %12), !dbg !174
  ret void, !dbg !176
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !177 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !178, metadata !DIExpression()), !dbg !179
  %0 = load i8*, i8** %data.addr, align 8, !dbg !180
  %call = call i32 (i8*, ...) @printf(i8* %0), !dbg !181
  ret void, !dbg !182
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !183 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !186, metadata !DIExpression()), !dbg !187
  store void (i8*)* @goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !188, metadata !DIExpression()), !dbg !189
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !189
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !189
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !190
  store i8* %arraydecay, i8** %data, align 8, !dbg !191
  %1 = load i8*, i8** %data, align 8, !dbg !192
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !193
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !194
  %3 = load i8*, i8** %data, align 8, !dbg !195
  call void %2(i8* %3), !dbg !194
  ret void, !dbg !196
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !197 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !198, metadata !DIExpression()), !dbg !199
  %0 = load i8*, i8** %data.addr, align 8, !dbg !200
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %0), !dbg !201
  ret void, !dbg !202
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !203 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !206, metadata !DIExpression()), !dbg !207
  store void (i8*)* @goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !207
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !208, metadata !DIExpression()), !dbg !209
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !209
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !209
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !210
  store i8* %arraydecay, i8** %data, align 8, !dbg !211
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !212, metadata !DIExpression()), !dbg !214
  %1 = load i8*, i8** %data, align 8, !dbg !215
  %call = call i64 @strlen(i8* %1) #7, !dbg !216
  store i64 %call, i64* %dataLen, align 8, !dbg !214
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !217, metadata !DIExpression()), !dbg !218
  %2 = load i64, i64* %dataLen, align 8, !dbg !219
  %sub = sub i64 100, %2, !dbg !221
  %cmp = icmp ugt i64 %sub, 1, !dbg !222
  br i1 %cmp, label %if.then, label %if.end11, !dbg !223

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !224
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !226
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !227
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !229
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !230

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !231
  %5 = load i64, i64* %dataLen, align 8, !dbg !234
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !235
  %6 = load i64, i64* %dataLen, align 8, !dbg !236
  %sub4 = sub i64 100, %6, !dbg !237
  %conv = trunc i64 %sub4 to i32, !dbg !238
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !239
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !240
  %cmp6 = icmp eq i8* %call5, null, !dbg !241
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !242

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !243
  %8 = load i8*, i8** %data, align 8, !dbg !245
  %9 = load i64, i64* %dataLen, align 8, !dbg !246
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !245
  store i8 0, i8* %arrayidx, align 1, !dbg !247
  br label %if.end, !dbg !248

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !249
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !250
  br label %if.end10, !dbg !251

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !252

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !253
  %12 = load i8*, i8** %data, align 8, !dbg !254
  call void %11(i8* %12), !dbg !253
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_44_good() #0 !dbg !256 {
entry:
  call void @goodG2B(), !dbg !257
  call void @goodB2G(), !dbg !258
  ret void, !dbg !259
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !260 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !261, metadata !DIExpression()), !dbg !262
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !263
  %0 = load i8*, i8** %line.addr, align 8, !dbg !264
  %cmp = icmp ne i8* %0, null, !dbg !266
  br i1 %cmp, label %if.then, label %if.end, !dbg !267

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !268
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !270
  br label %if.end, !dbg !271

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !272
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !274 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = load i8*, i8** %line.addr, align 8, !dbg !277
  %cmp = icmp ne i8* %0, null, !dbg !279
  br i1 %cmp, label %if.then, label %if.end, !dbg !280

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !281
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !283
  br label %if.end, !dbg !284

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !285
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !286 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %0 = load i32*, i32** %line.addr, align 8, !dbg !293
  %cmp = icmp ne i32* %0, null, !dbg !295
  br i1 %cmp, label %if.then, label %if.end, !dbg !296

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !297
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !299
  br label %if.end, !dbg !300

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !301
}

declare dso_local i32 @wprintf(i32*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !302 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !305, metadata !DIExpression()), !dbg !306
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !307
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.9, i64 0, i64 0), i32 %0), !dbg !308
  ret void, !dbg !309
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !310 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !316
  %conv = sext i16 %0 to i32, !dbg !316
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.10, i64 0, i64 0), i32 %conv), !dbg !317
  ret void, !dbg !318
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !319 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !325
  %conv = fpext float %0 to double, !dbg !325
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !326
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !328 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !333
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !334
  ret void, !dbg !335
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !336 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !342, metadata !DIExpression()), !dbg !343
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !344
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !345
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !347 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !352
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !353
  ret void, !dbg !354
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !355 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !360
  %conv = sext i8 %0 to i32, !dbg !360
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !363 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !366, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !368, metadata !DIExpression()), !dbg !372
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !373
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !374
  store i32 %0, i32* %arrayidx, align 4, !dbg !375
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !376
  store i32 0, i32* %arrayidx1, align 4, !dbg !377
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !381 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !384, metadata !DIExpression()), !dbg !385
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !386
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !387
  ret void, !dbg !388
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !389 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !394
  %conv = zext i8 %0 to i32, !dbg !394
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !395
  ret void, !dbg !396
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !397 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !401, metadata !DIExpression()), !dbg !402
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !403
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !404
  ret void, !dbg !405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !406 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !418
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !419
  %1 = load i32, i32* %intOne, align 4, !dbg !419
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !420
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !421
  %3 = load i32, i32* %intTwo, align 4, !dbg !421
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !424 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !428, metadata !DIExpression()), !dbg !429
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata i64* %i, metadata !432, metadata !DIExpression()), !dbg !433
  store i64 0, i64* %i, align 8, !dbg !434
  br label %for.cond, !dbg !436

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !437
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !439
  %cmp = icmp ult i64 %0, %1, !dbg !440
  br i1 %cmp, label %for.body, label %for.end, !dbg !441

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !442
  %3 = load i64, i64* %i, align 8, !dbg !444
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !442
  %4 = load i8, i8* %arrayidx, align 1, !dbg !442
  %conv = zext i8 %4 to i32, !dbg !442
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !445
  br label %for.inc, !dbg !446

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !447
  %inc = add i64 %5, 1, !dbg !447
  store i64 %inc, i64* %i, align 8, !dbg !447
  br label %for.cond, !dbg !448, !llvm.loop !449

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !452
  ret void, !dbg !453
}

declare dso_local i32 @puts(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !454 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !457, metadata !DIExpression()), !dbg !458
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !459, metadata !DIExpression()), !dbg !460
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !461, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !463, metadata !DIExpression()), !dbg !464
  store i64 0, i64* %numWritten, align 8, !dbg !464
  br label %while.cond, !dbg !465

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !466
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !467
  %cmp = icmp ult i64 %0, %1, !dbg !468
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !469

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !470
  %2 = load i16*, i16** %call, align 8, !dbg !470
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !470
  %4 = load i64, i64* %numWritten, align 8, !dbg !470
  %mul = mul i64 2, %4, !dbg !470
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !470
  %5 = load i8, i8* %arrayidx, align 1, !dbg !470
  %conv = sext i8 %5 to i32, !dbg !470
  %idxprom = sext i32 %conv to i64, !dbg !470
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !470
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !470
  %conv2 = zext i16 %6 to i32, !dbg !470
  %and = and i32 %conv2, 4096, !dbg !470
  %tobool = icmp ne i32 %and, 0, !dbg !470
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !471

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !472
  %7 = load i16*, i16** %call3, align 8, !dbg !472
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !472
  %9 = load i64, i64* %numWritten, align 8, !dbg !472
  %mul4 = mul i64 2, %9, !dbg !472
  %add = add i64 %mul4, 1, !dbg !472
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !472
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !472
  %conv6 = sext i8 %10 to i32, !dbg !472
  %idxprom7 = sext i32 %conv6 to i64, !dbg !472
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !472
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !472
  %conv9 = zext i16 %11 to i32, !dbg !472
  %and10 = and i32 %conv9, 4096, !dbg !472
  %tobool11 = icmp ne i32 %and10, 0, !dbg !471
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !473
  br i1 %12, label %while.body, label %while.end, !dbg !465

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !474, metadata !DIExpression()), !dbg !476
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !477
  %14 = load i64, i64* %numWritten, align 8, !dbg !478
  %mul12 = mul i64 2, %14, !dbg !479
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !477
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !480
  %15 = load i32, i32* %byte, align 4, !dbg !481
  %conv15 = trunc i32 %15 to i8, !dbg !482
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !483
  %17 = load i64, i64* %numWritten, align 8, !dbg !484
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !483
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !485
  %18 = load i64, i64* %numWritten, align 8, !dbg !486
  %inc = add i64 %18, 1, !dbg !486
  store i64 %inc, i64* %numWritten, align 8, !dbg !486
  br label %while.cond, !dbg !465, !llvm.loop !487

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !489
  ret i64 %19, !dbg !490
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !491 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !494, metadata !DIExpression()), !dbg !495
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !496, metadata !DIExpression()), !dbg !497
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !498, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !500, metadata !DIExpression()), !dbg !501
  store i64 0, i64* %numWritten, align 8, !dbg !501
  br label %while.cond, !dbg !502

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !503
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !504
  %cmp = icmp ult i64 %0, %1, !dbg !505
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !506

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !507
  %3 = load i64, i64* %numWritten, align 8, !dbg !508
  %mul = mul i64 2, %3, !dbg !509
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !507
  %4 = load i32, i32* %arrayidx, align 4, !dbg !507
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !510
  %tobool = icmp ne i32 %call, 0, !dbg !510
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !511

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !512
  %6 = load i64, i64* %numWritten, align 8, !dbg !513
  %mul1 = mul i64 2, %6, !dbg !514
  %add = add i64 %mul1, 1, !dbg !515
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !512
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !512
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !516
  %tobool4 = icmp ne i32 %call3, 0, !dbg !511
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !517
  br i1 %8, label %while.body, label %while.end, !dbg !502

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !518, metadata !DIExpression()), !dbg !520
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !521
  %10 = load i64, i64* %numWritten, align 8, !dbg !522
  %mul5 = mul i64 2, %10, !dbg !523
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !521
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !524
  %11 = load i32, i32* %byte, align 4, !dbg !525
  %conv = trunc i32 %11 to i8, !dbg !526
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !527
  %13 = load i64, i64* %numWritten, align 8, !dbg !528
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !527
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !529
  %14 = load i64, i64* %numWritten, align 8, !dbg !530
  %inc = add i64 %14, 1, !dbg !530
  store i64 %inc, i64* %numWritten, align 8, !dbg !530
  br label %while.cond, !dbg !502, !llvm.loop !531

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !533
  ret i64 %15, !dbg !534
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !535 {
entry:
  ret i32 1, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !539 {
entry:
  ret i32 0, !dbg !540
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !541 {
entry:
  %call = call i32 @rand() #8, !dbg !542
  %rem = srem i32 %call, 2, !dbg !543
  ret i32 %rem, !dbg !544
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_037/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_037/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badSink", scope: !45, file: !45, line: 33, type: !53, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !42}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 33, type: !42)
!56 = !DILocation(line: 33, column: 21, scope: !52)
!57 = !DILocation(line: 36, column: 12, scope: !52)
!58 = !DILocation(line: 36, column: 5, scope: !52)
!59 = !DILocation(line: 37, column: 1, scope: !52)
!60 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_44_bad", scope: !45, file: !45, line: 39, type: !61, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!61 = !DISubroutineType(types: !62)
!62 = !{null}
!63 = !DILocalVariable(name: "data", scope: !60, file: !45, line: 41, type: !42)
!64 = !DILocation(line: 41, column: 12, scope: !60)
!65 = !DILocalVariable(name: "funcPtr", scope: !60, file: !45, line: 43, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!67 = !DILocation(line: 43, column: 12, scope: !60)
!68 = !DILocalVariable(name: "dataBuffer", scope: !60, file: !45, line: 44, type: !69)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 100)
!72 = !DILocation(line: 44, column: 10, scope: !60)
!73 = !DILocation(line: 45, column: 12, scope: !60)
!74 = !DILocation(line: 45, column: 10, scope: !60)
!75 = !DILocalVariable(name: "dataLen", scope: !76, file: !45, line: 48, type: !77)
!76 = distinct !DILexicalBlock(scope: !60, file: !45, line: 46, column: 5)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 46, baseType: !79)
!78 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!79 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!80 = !DILocation(line: 48, column: 16, scope: !76)
!81 = !DILocation(line: 48, column: 33, scope: !76)
!82 = !DILocation(line: 48, column: 26, scope: !76)
!83 = !DILocalVariable(name: "pFile", scope: !76, file: !45, line: 49, type: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !86, line: 7, baseType: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !88, line: 49, size: 1728, elements: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !105, !107, !108, !109, !113, !114, !116, !120, !123, !125, !128, !131, !132, !133, !134, !135}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !87, file: !88, line: 51, baseType: !23, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !87, file: !88, line: 54, baseType: !42, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !87, file: !88, line: 55, baseType: !42, size: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !87, file: !88, line: 56, baseType: !42, size: 64, offset: 192)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !87, file: !88, line: 57, baseType: !42, size: 64, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !87, file: !88, line: 58, baseType: !42, size: 64, offset: 320)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !87, file: !88, line: 59, baseType: !42, size: 64, offset: 384)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !87, file: !88, line: 60, baseType: !42, size: 64, offset: 448)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !87, file: !88, line: 61, baseType: !42, size: 64, offset: 512)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !87, file: !88, line: 64, baseType: !42, size: 64, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !87, file: !88, line: 65, baseType: !42, size: 64, offset: 640)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !87, file: !88, line: 66, baseType: !42, size: 64, offset: 704)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !87, file: !88, line: 68, baseType: !103, size: 64, offset: 768)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !88, line: 36, flags: DIFlagFwdDecl)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !87, file: !88, line: 70, baseType: !106, size: 64, offset: 832)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !87, file: !88, line: 72, baseType: !23, size: 32, offset: 896)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !87, file: !88, line: 73, baseType: !23, size: 32, offset: 928)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !87, file: !88, line: 74, baseType: !110, size: 64, offset: 960)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !111, line: 152, baseType: !112)
!111 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!112 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !87, file: !88, line: 77, baseType: !24, size: 16, offset: 1024)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !87, file: !88, line: 78, baseType: !115, size: 8, offset: 1040)
!115 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !87, file: !88, line: 79, baseType: !117, size: 8, offset: 1048)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !118)
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
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !87, file: !88, line: 94, baseType: !22, size: 64, offset: 1408)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !87, file: !88, line: 95, baseType: !77, size: 64, offset: 1472)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !87, file: !88, line: 96, baseType: !23, size: 32, offset: 1536)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !87, file: !88, line: 98, baseType: !136, size: 160, offset: 1568)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 20)
!139 = !DILocation(line: 49, column: 16, scope: !76)
!140 = !DILocation(line: 51, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !76, file: !45, line: 51, column: 13)
!142 = !DILocation(line: 51, column: 16, scope: !141)
!143 = !DILocation(line: 51, column: 25, scope: !141)
!144 = !DILocation(line: 51, column: 13, scope: !76)
!145 = !DILocation(line: 53, column: 21, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !45, line: 52, column: 9)
!147 = !DILocation(line: 53, column: 19, scope: !146)
!148 = !DILocation(line: 54, column: 17, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !45, line: 54, column: 17)
!150 = !DILocation(line: 54, column: 23, scope: !149)
!151 = !DILocation(line: 54, column: 17, scope: !146)
!152 = !DILocation(line: 57, column: 27, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !45, line: 57, column: 21)
!154 = distinct !DILexicalBlock(scope: !149, file: !45, line: 55, column: 13)
!155 = !DILocation(line: 57, column: 32, scope: !153)
!156 = !DILocation(line: 57, column: 31, scope: !153)
!157 = !DILocation(line: 57, column: 51, scope: !153)
!158 = !DILocation(line: 57, column: 50, scope: !153)
!159 = !DILocation(line: 57, column: 41, scope: !153)
!160 = !DILocation(line: 57, column: 61, scope: !153)
!161 = !DILocation(line: 57, column: 21, scope: !153)
!162 = !DILocation(line: 57, column: 68, scope: !153)
!163 = !DILocation(line: 57, column: 21, scope: !154)
!164 = !DILocation(line: 59, column: 21, scope: !165)
!165 = distinct !DILexicalBlock(scope: !153, file: !45, line: 58, column: 17)
!166 = !DILocation(line: 61, column: 21, scope: !165)
!167 = !DILocation(line: 61, column: 26, scope: !165)
!168 = !DILocation(line: 61, column: 35, scope: !165)
!169 = !DILocation(line: 62, column: 17, scope: !165)
!170 = !DILocation(line: 63, column: 24, scope: !154)
!171 = !DILocation(line: 63, column: 17, scope: !154)
!172 = !DILocation(line: 64, column: 13, scope: !154)
!173 = !DILocation(line: 65, column: 9, scope: !146)
!174 = !DILocation(line: 68, column: 5, scope: !60)
!175 = !DILocation(line: 68, column: 13, scope: !60)
!176 = !DILocation(line: 69, column: 1, scope: !60)
!177 = distinct !DISubprogram(name: "goodG2BSink", scope: !45, file: !45, line: 76, type: !53, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!178 = !DILocalVariable(name: "data", arg: 1, scope: !177, file: !45, line: 76, type: !42)
!179 = !DILocation(line: 76, column: 25, scope: !177)
!180 = !DILocation(line: 79, column: 12, scope: !177)
!181 = !DILocation(line: 79, column: 5, scope: !177)
!182 = !DILocation(line: 80, column: 1, scope: !177)
!183 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 82, type: !61, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!184 = !DILocalVariable(name: "data", scope: !183, file: !45, line: 84, type: !42)
!185 = !DILocation(line: 84, column: 12, scope: !183)
!186 = !DILocalVariable(name: "funcPtr", scope: !183, file: !45, line: 85, type: !66)
!187 = !DILocation(line: 85, column: 12, scope: !183)
!188 = !DILocalVariable(name: "dataBuffer", scope: !183, file: !45, line: 86, type: !69)
!189 = !DILocation(line: 86, column: 10, scope: !183)
!190 = !DILocation(line: 87, column: 12, scope: !183)
!191 = !DILocation(line: 87, column: 10, scope: !183)
!192 = !DILocation(line: 89, column: 12, scope: !183)
!193 = !DILocation(line: 89, column: 5, scope: !183)
!194 = !DILocation(line: 90, column: 5, scope: !183)
!195 = !DILocation(line: 90, column: 13, scope: !183)
!196 = !DILocation(line: 91, column: 1, scope: !183)
!197 = distinct !DISubprogram(name: "goodB2GSink", scope: !45, file: !45, line: 94, type: !53, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!198 = !DILocalVariable(name: "data", arg: 1, scope: !197, file: !45, line: 94, type: !42)
!199 = !DILocation(line: 94, column: 25, scope: !197)
!200 = !DILocation(line: 97, column: 20, scope: !197)
!201 = !DILocation(line: 97, column: 5, scope: !197)
!202 = !DILocation(line: 98, column: 1, scope: !197)
!203 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 100, type: !61, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!204 = !DILocalVariable(name: "data", scope: !203, file: !45, line: 102, type: !42)
!205 = !DILocation(line: 102, column: 12, scope: !203)
!206 = !DILocalVariable(name: "funcPtr", scope: !203, file: !45, line: 103, type: !66)
!207 = !DILocation(line: 103, column: 12, scope: !203)
!208 = !DILocalVariable(name: "dataBuffer", scope: !203, file: !45, line: 104, type: !69)
!209 = !DILocation(line: 104, column: 10, scope: !203)
!210 = !DILocation(line: 105, column: 12, scope: !203)
!211 = !DILocation(line: 105, column: 10, scope: !203)
!212 = !DILocalVariable(name: "dataLen", scope: !213, file: !45, line: 108, type: !77)
!213 = distinct !DILexicalBlock(scope: !203, file: !45, line: 106, column: 5)
!214 = !DILocation(line: 108, column: 16, scope: !213)
!215 = !DILocation(line: 108, column: 33, scope: !213)
!216 = !DILocation(line: 108, column: 26, scope: !213)
!217 = !DILocalVariable(name: "pFile", scope: !213, file: !45, line: 109, type: !84)
!218 = !DILocation(line: 109, column: 16, scope: !213)
!219 = !DILocation(line: 111, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !213, file: !45, line: 111, column: 13)
!221 = !DILocation(line: 111, column: 16, scope: !220)
!222 = !DILocation(line: 111, column: 25, scope: !220)
!223 = !DILocation(line: 111, column: 13, scope: !213)
!224 = !DILocation(line: 113, column: 21, scope: !225)
!225 = distinct !DILexicalBlock(scope: !220, file: !45, line: 112, column: 9)
!226 = !DILocation(line: 113, column: 19, scope: !225)
!227 = !DILocation(line: 114, column: 17, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !45, line: 114, column: 17)
!229 = !DILocation(line: 114, column: 23, scope: !228)
!230 = !DILocation(line: 114, column: 17, scope: !225)
!231 = !DILocation(line: 117, column: 27, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !45, line: 117, column: 21)
!233 = distinct !DILexicalBlock(scope: !228, file: !45, line: 115, column: 13)
!234 = !DILocation(line: 117, column: 32, scope: !232)
!235 = !DILocation(line: 117, column: 31, scope: !232)
!236 = !DILocation(line: 117, column: 51, scope: !232)
!237 = !DILocation(line: 117, column: 50, scope: !232)
!238 = !DILocation(line: 117, column: 41, scope: !232)
!239 = !DILocation(line: 117, column: 61, scope: !232)
!240 = !DILocation(line: 117, column: 21, scope: !232)
!241 = !DILocation(line: 117, column: 68, scope: !232)
!242 = !DILocation(line: 117, column: 21, scope: !233)
!243 = !DILocation(line: 119, column: 21, scope: !244)
!244 = distinct !DILexicalBlock(scope: !232, file: !45, line: 118, column: 17)
!245 = !DILocation(line: 121, column: 21, scope: !244)
!246 = !DILocation(line: 121, column: 26, scope: !244)
!247 = !DILocation(line: 121, column: 35, scope: !244)
!248 = !DILocation(line: 122, column: 17, scope: !244)
!249 = !DILocation(line: 123, column: 24, scope: !233)
!250 = !DILocation(line: 123, column: 17, scope: !233)
!251 = !DILocation(line: 124, column: 13, scope: !233)
!252 = !DILocation(line: 125, column: 9, scope: !225)
!253 = !DILocation(line: 127, column: 5, scope: !203)
!254 = !DILocation(line: 127, column: 13, scope: !203)
!255 = !DILocation(line: 128, column: 1, scope: !203)
!256 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_44_good", scope: !45, file: !45, line: 130, type: !61, scopeLine: 131, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!257 = !DILocation(line: 132, column: 5, scope: !256)
!258 = !DILocation(line: 133, column: 5, scope: !256)
!259 = !DILocation(line: 134, column: 1, scope: !256)
!260 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !53, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!261 = !DILocalVariable(name: "line", arg: 1, scope: !260, file: !3, line: 11, type: !42)
!262 = !DILocation(line: 11, column: 25, scope: !260)
!263 = !DILocation(line: 13, column: 1, scope: !260)
!264 = !DILocation(line: 14, column: 8, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !3, line: 14, column: 8)
!266 = !DILocation(line: 14, column: 13, scope: !265)
!267 = !DILocation(line: 14, column: 8, scope: !260)
!268 = !DILocation(line: 16, column: 24, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !3, line: 15, column: 5)
!270 = !DILocation(line: 16, column: 9, scope: !269)
!271 = !DILocation(line: 17, column: 5, scope: !269)
!272 = !DILocation(line: 18, column: 5, scope: !260)
!273 = !DILocation(line: 19, column: 1, scope: !260)
!274 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !53, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!275 = !DILocalVariable(name: "line", arg: 1, scope: !274, file: !3, line: 20, type: !42)
!276 = !DILocation(line: 20, column: 29, scope: !274)
!277 = !DILocation(line: 22, column: 8, scope: !278)
!278 = distinct !DILexicalBlock(scope: !274, file: !3, line: 22, column: 8)
!279 = !DILocation(line: 22, column: 13, scope: !278)
!280 = !DILocation(line: 22, column: 8, scope: !274)
!281 = !DILocation(line: 24, column: 24, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !3, line: 23, column: 5)
!283 = !DILocation(line: 24, column: 9, scope: !282)
!284 = !DILocation(line: 25, column: 5, scope: !282)
!285 = !DILocation(line: 26, column: 1, scope: !274)
!286 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !287, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!287 = !DISubroutineType(types: !288)
!288 = !{null, !289}
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !78, line: 74, baseType: !23)
!291 = !DILocalVariable(name: "line", arg: 1, scope: !286, file: !3, line: 27, type: !289)
!292 = !DILocation(line: 27, column: 29, scope: !286)
!293 = !DILocation(line: 29, column: 8, scope: !294)
!294 = distinct !DILexicalBlock(scope: !286, file: !3, line: 29, column: 8)
!295 = !DILocation(line: 29, column: 13, scope: !294)
!296 = !DILocation(line: 29, column: 8, scope: !286)
!297 = !DILocation(line: 31, column: 27, scope: !298)
!298 = distinct !DILexicalBlock(scope: !294, file: !3, line: 30, column: 5)
!299 = !DILocation(line: 31, column: 9, scope: !298)
!300 = !DILocation(line: 32, column: 5, scope: !298)
!301 = !DILocation(line: 33, column: 1, scope: !286)
!302 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !303, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !23}
!305 = !DILocalVariable(name: "intNumber", arg: 1, scope: !302, file: !3, line: 35, type: !23)
!306 = !DILocation(line: 35, column: 24, scope: !302)
!307 = !DILocation(line: 37, column: 20, scope: !302)
!308 = !DILocation(line: 37, column: 5, scope: !302)
!309 = !DILocation(line: 38, column: 1, scope: !302)
!310 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !311, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !313}
!313 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!314 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !310, file: !3, line: 40, type: !313)
!315 = !DILocation(line: 40, column: 28, scope: !310)
!316 = !DILocation(line: 42, column: 21, scope: !310)
!317 = !DILocation(line: 42, column: 5, scope: !310)
!318 = !DILocation(line: 43, column: 1, scope: !310)
!319 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !320, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !322}
!322 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!323 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !319, file: !3, line: 45, type: !322)
!324 = !DILocation(line: 45, column: 28, scope: !319)
!325 = !DILocation(line: 47, column: 20, scope: !319)
!326 = !DILocation(line: 47, column: 5, scope: !319)
!327 = !DILocation(line: 48, column: 1, scope: !319)
!328 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !329, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !112}
!331 = !DILocalVariable(name: "longNumber", arg: 1, scope: !328, file: !3, line: 50, type: !112)
!332 = !DILocation(line: 50, column: 26, scope: !328)
!333 = !DILocation(line: 52, column: 21, scope: !328)
!334 = !DILocation(line: 52, column: 5, scope: !328)
!335 = !DILocation(line: 53, column: 1, scope: !328)
!336 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !337, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !339}
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !340, line: 27, baseType: !341)
!340 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !111, line: 44, baseType: !112)
!342 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !336, file: !3, line: 55, type: !339)
!343 = !DILocation(line: 55, column: 33, scope: !336)
!344 = !DILocation(line: 57, column: 29, scope: !336)
!345 = !DILocation(line: 57, column: 5, scope: !336)
!346 = !DILocation(line: 58, column: 1, scope: !336)
!347 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !348, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !77}
!350 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !347, file: !3, line: 60, type: !77)
!351 = !DILocation(line: 60, column: 29, scope: !347)
!352 = !DILocation(line: 62, column: 21, scope: !347)
!353 = !DILocation(line: 62, column: 5, scope: !347)
!354 = !DILocation(line: 63, column: 1, scope: !347)
!355 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !356, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !43}
!358 = !DILocalVariable(name: "charHex", arg: 1, scope: !355, file: !3, line: 65, type: !43)
!359 = !DILocation(line: 65, column: 29, scope: !355)
!360 = !DILocation(line: 67, column: 22, scope: !355)
!361 = !DILocation(line: 67, column: 5, scope: !355)
!362 = !DILocation(line: 68, column: 1, scope: !355)
!363 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !364, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !290}
!366 = !DILocalVariable(name: "wideChar", arg: 1, scope: !363, file: !3, line: 70, type: !290)
!367 = !DILocation(line: 70, column: 29, scope: !363)
!368 = !DILocalVariable(name: "s", scope: !363, file: !3, line: 74, type: !369)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 64, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 2)
!372 = !DILocation(line: 74, column: 13, scope: !363)
!373 = !DILocation(line: 75, column: 16, scope: !363)
!374 = !DILocation(line: 75, column: 9, scope: !363)
!375 = !DILocation(line: 75, column: 14, scope: !363)
!376 = !DILocation(line: 76, column: 9, scope: !363)
!377 = !DILocation(line: 76, column: 14, scope: !363)
!378 = !DILocation(line: 77, column: 21, scope: !363)
!379 = !DILocation(line: 77, column: 5, scope: !363)
!380 = !DILocation(line: 78, column: 1, scope: !363)
!381 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !382, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !7}
!384 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !381, file: !3, line: 80, type: !7)
!385 = !DILocation(line: 80, column: 33, scope: !381)
!386 = !DILocation(line: 82, column: 20, scope: !381)
!387 = !DILocation(line: 82, column: 5, scope: !381)
!388 = !DILocation(line: 83, column: 1, scope: !381)
!389 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !390, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !25}
!392 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !389, file: !3, line: 85, type: !25)
!393 = !DILocation(line: 85, column: 45, scope: !389)
!394 = !DILocation(line: 87, column: 22, scope: !389)
!395 = !DILocation(line: 87, column: 5, scope: !389)
!396 = !DILocation(line: 88, column: 1, scope: !389)
!397 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !398, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !400}
!400 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!401 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !397, file: !3, line: 90, type: !400)
!402 = !DILocation(line: 90, column: 29, scope: !397)
!403 = !DILocation(line: 92, column: 20, scope: !397)
!404 = !DILocation(line: 92, column: 5, scope: !397)
!405 = !DILocation(line: 93, column: 1, scope: !397)
!406 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !407, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !409}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !411, line: 100, baseType: !412)
!411 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_037/source_code")
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !411, line: 96, size: 64, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !412, file: !411, line: 98, baseType: !23, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !412, file: !411, line: 99, baseType: !23, size: 32, offset: 32)
!416 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !406, file: !3, line: 95, type: !409)
!417 = !DILocation(line: 95, column: 40, scope: !406)
!418 = !DILocation(line: 97, column: 26, scope: !406)
!419 = !DILocation(line: 97, column: 47, scope: !406)
!420 = !DILocation(line: 97, column: 55, scope: !406)
!421 = !DILocation(line: 97, column: 76, scope: !406)
!422 = !DILocation(line: 97, column: 5, scope: !406)
!423 = !DILocation(line: 98, column: 1, scope: !406)
!424 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !425, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !427, !77}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!428 = !DILocalVariable(name: "bytes", arg: 1, scope: !424, file: !3, line: 100, type: !427)
!429 = !DILocation(line: 100, column: 38, scope: !424)
!430 = !DILocalVariable(name: "numBytes", arg: 2, scope: !424, file: !3, line: 100, type: !77)
!431 = !DILocation(line: 100, column: 52, scope: !424)
!432 = !DILocalVariable(name: "i", scope: !424, file: !3, line: 102, type: !77)
!433 = !DILocation(line: 102, column: 12, scope: !424)
!434 = !DILocation(line: 103, column: 12, scope: !435)
!435 = distinct !DILexicalBlock(scope: !424, file: !3, line: 103, column: 5)
!436 = !DILocation(line: 103, column: 10, scope: !435)
!437 = !DILocation(line: 103, column: 17, scope: !438)
!438 = distinct !DILexicalBlock(scope: !435, file: !3, line: 103, column: 5)
!439 = !DILocation(line: 103, column: 21, scope: !438)
!440 = !DILocation(line: 103, column: 19, scope: !438)
!441 = !DILocation(line: 103, column: 5, scope: !435)
!442 = !DILocation(line: 105, column: 24, scope: !443)
!443 = distinct !DILexicalBlock(scope: !438, file: !3, line: 104, column: 5)
!444 = !DILocation(line: 105, column: 30, scope: !443)
!445 = !DILocation(line: 105, column: 9, scope: !443)
!446 = !DILocation(line: 106, column: 5, scope: !443)
!447 = !DILocation(line: 103, column: 31, scope: !438)
!448 = !DILocation(line: 103, column: 5, scope: !438)
!449 = distinct !{!449, !441, !450, !451}
!450 = !DILocation(line: 106, column: 5, scope: !435)
!451 = !{!"llvm.loop.mustprogress"}
!452 = !DILocation(line: 107, column: 5, scope: !424)
!453 = !DILocation(line: 108, column: 1, scope: !424)
!454 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !455, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!455 = !DISubroutineType(types: !456)
!456 = !{!77, !427, !77, !42}
!457 = !DILocalVariable(name: "bytes", arg: 1, scope: !454, file: !3, line: 113, type: !427)
!458 = !DILocation(line: 113, column: 39, scope: !454)
!459 = !DILocalVariable(name: "numBytes", arg: 2, scope: !454, file: !3, line: 113, type: !77)
!460 = !DILocation(line: 113, column: 53, scope: !454)
!461 = !DILocalVariable(name: "hex", arg: 3, scope: !454, file: !3, line: 113, type: !42)
!462 = !DILocation(line: 113, column: 71, scope: !454)
!463 = !DILocalVariable(name: "numWritten", scope: !454, file: !3, line: 115, type: !77)
!464 = !DILocation(line: 115, column: 12, scope: !454)
!465 = !DILocation(line: 121, column: 5, scope: !454)
!466 = !DILocation(line: 121, column: 12, scope: !454)
!467 = !DILocation(line: 121, column: 25, scope: !454)
!468 = !DILocation(line: 121, column: 23, scope: !454)
!469 = !DILocation(line: 121, column: 34, scope: !454)
!470 = !DILocation(line: 121, column: 37, scope: !454)
!471 = !DILocation(line: 121, column: 67, scope: !454)
!472 = !DILocation(line: 121, column: 70, scope: !454)
!473 = !DILocation(line: 0, scope: !454)
!474 = !DILocalVariable(name: "byte", scope: !475, file: !3, line: 123, type: !23)
!475 = distinct !DILexicalBlock(scope: !454, file: !3, line: 122, column: 5)
!476 = !DILocation(line: 123, column: 13, scope: !475)
!477 = !DILocation(line: 124, column: 17, scope: !475)
!478 = !DILocation(line: 124, column: 25, scope: !475)
!479 = !DILocation(line: 124, column: 23, scope: !475)
!480 = !DILocation(line: 124, column: 9, scope: !475)
!481 = !DILocation(line: 125, column: 45, scope: !475)
!482 = !DILocation(line: 125, column: 29, scope: !475)
!483 = !DILocation(line: 125, column: 9, scope: !475)
!484 = !DILocation(line: 125, column: 15, scope: !475)
!485 = !DILocation(line: 125, column: 27, scope: !475)
!486 = !DILocation(line: 126, column: 9, scope: !475)
!487 = distinct !{!487, !465, !488, !451}
!488 = !DILocation(line: 127, column: 5, scope: !454)
!489 = !DILocation(line: 129, column: 12, scope: !454)
!490 = !DILocation(line: 129, column: 5, scope: !454)
!491 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !492, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!492 = !DISubroutineType(types: !493)
!493 = !{!77, !427, !77, !289}
!494 = !DILocalVariable(name: "bytes", arg: 1, scope: !491, file: !3, line: 135, type: !427)
!495 = !DILocation(line: 135, column: 41, scope: !491)
!496 = !DILocalVariable(name: "numBytes", arg: 2, scope: !491, file: !3, line: 135, type: !77)
!497 = !DILocation(line: 135, column: 55, scope: !491)
!498 = !DILocalVariable(name: "hex", arg: 3, scope: !491, file: !3, line: 135, type: !289)
!499 = !DILocation(line: 135, column: 76, scope: !491)
!500 = !DILocalVariable(name: "numWritten", scope: !491, file: !3, line: 137, type: !77)
!501 = !DILocation(line: 137, column: 12, scope: !491)
!502 = !DILocation(line: 143, column: 5, scope: !491)
!503 = !DILocation(line: 143, column: 12, scope: !491)
!504 = !DILocation(line: 143, column: 25, scope: !491)
!505 = !DILocation(line: 143, column: 23, scope: !491)
!506 = !DILocation(line: 143, column: 34, scope: !491)
!507 = !DILocation(line: 143, column: 47, scope: !491)
!508 = !DILocation(line: 143, column: 55, scope: !491)
!509 = !DILocation(line: 143, column: 53, scope: !491)
!510 = !DILocation(line: 143, column: 37, scope: !491)
!511 = !DILocation(line: 143, column: 68, scope: !491)
!512 = !DILocation(line: 143, column: 81, scope: !491)
!513 = !DILocation(line: 143, column: 89, scope: !491)
!514 = !DILocation(line: 143, column: 87, scope: !491)
!515 = !DILocation(line: 143, column: 100, scope: !491)
!516 = !DILocation(line: 143, column: 71, scope: !491)
!517 = !DILocation(line: 0, scope: !491)
!518 = !DILocalVariable(name: "byte", scope: !519, file: !3, line: 145, type: !23)
!519 = distinct !DILexicalBlock(scope: !491, file: !3, line: 144, column: 5)
!520 = !DILocation(line: 145, column: 13, scope: !519)
!521 = !DILocation(line: 146, column: 18, scope: !519)
!522 = !DILocation(line: 146, column: 26, scope: !519)
!523 = !DILocation(line: 146, column: 24, scope: !519)
!524 = !DILocation(line: 146, column: 9, scope: !519)
!525 = !DILocation(line: 147, column: 45, scope: !519)
!526 = !DILocation(line: 147, column: 29, scope: !519)
!527 = !DILocation(line: 147, column: 9, scope: !519)
!528 = !DILocation(line: 147, column: 15, scope: !519)
!529 = !DILocation(line: 147, column: 27, scope: !519)
!530 = !DILocation(line: 148, column: 9, scope: !519)
!531 = distinct !{!531, !502, !532, !451}
!532 = !DILocation(line: 149, column: 5, scope: !491)
!533 = !DILocation(line: 151, column: 12, scope: !491)
!534 = !DILocation(line: 151, column: 5, scope: !491)
!535 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !536, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DISubroutineType(types: !537)
!537 = !{!23}
!538 = !DILocation(line: 158, column: 5, scope: !535)
!539 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !536, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 163, column: 5, scope: !539)
!541 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !536, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!542 = !DILocation(line: 168, column: 13, scope: !541)
!543 = !DILocation(line: 168, column: 20, scope: !541)
!544 = !DILocation(line: 168, column: 5, scope: !541)
!545 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !61, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 187, column: 16, scope: !545)
!547 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !61, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 188, column: 16, scope: !547)
!549 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !61, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 189, column: 16, scope: !549)
!551 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !61, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 190, column: 16, scope: !551)
!553 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !61, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 191, column: 16, scope: !553)
!555 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !61, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 192, column: 16, scope: !555)
!557 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !61, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 193, column: 16, scope: !557)
!559 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !61, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 194, column: 16, scope: !559)
!561 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !61, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 195, column: 16, scope: !561)
!563 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !61, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 198, column: 15, scope: !563)
!565 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !61, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 199, column: 15, scope: !565)
!567 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !61, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 200, column: 15, scope: !567)
!569 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !61, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 201, column: 15, scope: !569)
!571 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !61, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 202, column: 15, scope: !571)
!573 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !61, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 203, column: 15, scope: !573)
!575 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !61, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 204, column: 15, scope: !575)
!577 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !61, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 205, column: 15, scope: !577)
!579 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !61, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 206, column: 15, scope: !579)
