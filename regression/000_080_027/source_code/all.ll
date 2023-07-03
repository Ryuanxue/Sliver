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
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_18_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  br label %source, !dbg !64

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !65), !dbg !66
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !72
  %1 = load i8*, i8** %data, align 8, !dbg !73
  %call = call i64 @strlen(i8* %1) #7, !dbg !74
  store i64 %call, i64* %dataLen, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !75, metadata !DIExpression()), !dbg !131
  %2 = load i64, i64* %dataLen, align 8, !dbg !132
  %sub = sub i64 100, %2, !dbg !134
  %cmp = icmp ugt i64 %sub, 1, !dbg !135
  br i1 %cmp, label %if.then, label %if.end11, !dbg !136

if.then:                                          ; preds = %source
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

if.end11:                                         ; preds = %if.end10, %source
  br label %sink, !dbg !166

sink:                                             ; preds = %if.end11
  call void @llvm.dbg.label(metadata !167), !dbg !168
  %11 = load i8*, i8** %data, align 8, !dbg !169
  %call12 = call i32 (i8*, ...) @printf(i8* %11), !dbg !170
  ret void, !dbg !171
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !172 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !176
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !176
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !177
  store i8* %arraydecay, i8** %data, align 8, !dbg !178
  br label %source, !dbg !179

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !180), !dbg !181
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !182, metadata !DIExpression()), !dbg !184
  %1 = load i8*, i8** %data, align 8, !dbg !185
  %call = call i64 @strlen(i8* %1) #7, !dbg !186
  store i64 %call, i64* %dataLen, align 8, !dbg !184
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !187, metadata !DIExpression()), !dbg !188
  %2 = load i64, i64* %dataLen, align 8, !dbg !189
  %sub = sub i64 100, %2, !dbg !191
  %cmp = icmp ugt i64 %sub, 1, !dbg !192
  br i1 %cmp, label %if.then, label %if.end11, !dbg !193

if.then:                                          ; preds = %source
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !194
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !196
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !197
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !199
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !200

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !201
  %5 = load i64, i64* %dataLen, align 8, !dbg !204
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !205
  %6 = load i64, i64* %dataLen, align 8, !dbg !206
  %sub4 = sub i64 100, %6, !dbg !207
  %conv = trunc i64 %sub4 to i32, !dbg !208
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !209
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !210
  %cmp6 = icmp eq i8* %call5, null, !dbg !211
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !212

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !213
  %8 = load i8*, i8** %data, align 8, !dbg !215
  %9 = load i64, i64* %dataLen, align 8, !dbg !216
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !215
  store i8 0, i8* %arrayidx, align 1, !dbg !217
  br label %if.end, !dbg !218

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !219
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !220
  br label %if.end10, !dbg !221

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !222

if.end11:                                         ; preds = %if.end10, %source
  br label %sink, !dbg !223

sink:                                             ; preds = %if.end11
  call void @llvm.dbg.label(metadata !224), !dbg !225
  %11 = load i8*, i8** %data, align 8, !dbg !226
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %11), !dbg !227
  ret void, !dbg !228
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !229 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !232, metadata !DIExpression()), !dbg !233
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !233
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !233
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !234
  store i8* %arraydecay, i8** %data, align 8, !dbg !235
  br label %source, !dbg !236

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !237), !dbg !238
  %1 = load i8*, i8** %data, align 8, !dbg !239
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !240
  br label %sink, !dbg !241

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !242), !dbg !243
  %2 = load i8*, i8** %data, align 8, !dbg !244
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !245
  ret void, !dbg !246
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_18_good() #0 !dbg !247 {
entry:
  call void @goodB2G(), !dbg !248
  call void @goodG2B(), !dbg !249
  ret void, !dbg !250
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !251 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !254, metadata !DIExpression()), !dbg !255
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !256
  %0 = load i8*, i8** %line.addr, align 8, !dbg !257
  %cmp = icmp ne i8* %0, null, !dbg !259
  br i1 %cmp, label %if.then, label %if.end, !dbg !260

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !261
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !263
  br label %if.end, !dbg !264

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !265
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !267 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = load i8*, i8** %line.addr, align 8, !dbg !270
  %cmp = icmp ne i8* %0, null, !dbg !272
  br i1 %cmp, label %if.then, label %if.end, !dbg !273

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !274
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !276
  br label %if.end, !dbg !277

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !278
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !279 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !284, metadata !DIExpression()), !dbg !285
  %0 = load i32*, i32** %line.addr, align 8, !dbg !286
  %cmp = icmp ne i32* %0, null, !dbg !288
  br i1 %cmp, label %if.then, label %if.end, !dbg !289

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !290
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !292
  br label %if.end, !dbg !293

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !294
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !295 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !298, metadata !DIExpression()), !dbg !299
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !300
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.9, i64 0, i64 0), i32 %0), !dbg !301
  ret void, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !303 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !307, metadata !DIExpression()), !dbg !308
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !309
  %conv = sext i16 %0 to i32, !dbg !309
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.10, i64 0, i64 0), i32 %conv), !dbg !310
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !312 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !316, metadata !DIExpression()), !dbg !317
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !318
  %conv = fpext float %0 to double, !dbg !318
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !319
  ret void, !dbg !320
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !321 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !324, metadata !DIExpression()), !dbg !325
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !326
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !327
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !329 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !337
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !338
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !340 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !343, metadata !DIExpression()), !dbg !344
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !345
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !346
  ret void, !dbg !347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !348 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !353
  %conv = sext i8 %0 to i32, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !356 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !359, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !361, metadata !DIExpression()), !dbg !365
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !366
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !367
  store i32 %0, i32* %arrayidx, align 4, !dbg !368
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !369
  store i32 0, i32* %arrayidx1, align 4, !dbg !370
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !374 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !379
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !382 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !387
  %conv = zext i8 %0 to i32, !dbg !387
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !390 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !396
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !397
  ret void, !dbg !398
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !399 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !411
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !412
  %1 = load i32, i32* %intOne, align 4, !dbg !412
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !413
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !414
  %3 = load i32, i32* %intTwo, align 4, !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !417 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !421, metadata !DIExpression()), !dbg !422
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !423, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.declare(metadata i64* %i, metadata !425, metadata !DIExpression()), !dbg !426
  store i64 0, i64* %i, align 8, !dbg !427
  br label %for.cond, !dbg !429

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !430
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !432
  %cmp = icmp ult i64 %0, %1, !dbg !433
  br i1 %cmp, label %for.body, label %for.end, !dbg !434

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !435
  %3 = load i64, i64* %i, align 8, !dbg !437
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !435
  %4 = load i8, i8* %arrayidx, align 1, !dbg !435
  %conv = zext i8 %4 to i32, !dbg !435
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !438
  br label %for.inc, !dbg !439

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !440
  %inc = add i64 %5, 1, !dbg !440
  store i64 %inc, i64* %i, align 8, !dbg !440
  br label %for.cond, !dbg !441, !llvm.loop !442

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !445
  ret void, !dbg !446
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !447 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !450, metadata !DIExpression()), !dbg !451
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !452, metadata !DIExpression()), !dbg !453
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !456, metadata !DIExpression()), !dbg !457
  store i64 0, i64* %numWritten, align 8, !dbg !457
  br label %while.cond, !dbg !458

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !459
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !460
  %cmp = icmp ult i64 %0, %1, !dbg !461
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !462

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !463
  %2 = load i16*, i16** %call, align 8, !dbg !463
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !463
  %4 = load i64, i64* %numWritten, align 8, !dbg !463
  %mul = mul i64 2, %4, !dbg !463
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !463
  %5 = load i8, i8* %arrayidx, align 1, !dbg !463
  %conv = sext i8 %5 to i32, !dbg !463
  %idxprom = sext i32 %conv to i64, !dbg !463
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !463
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !463
  %conv2 = zext i16 %6 to i32, !dbg !463
  %and = and i32 %conv2, 4096, !dbg !463
  %tobool = icmp ne i32 %and, 0, !dbg !463
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !464

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !465
  %7 = load i16*, i16** %call3, align 8, !dbg !465
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !465
  %9 = load i64, i64* %numWritten, align 8, !dbg !465
  %mul4 = mul i64 2, %9, !dbg !465
  %add = add i64 %mul4, 1, !dbg !465
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !465
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !465
  %conv6 = sext i8 %10 to i32, !dbg !465
  %idxprom7 = sext i32 %conv6 to i64, !dbg !465
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !465
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !465
  %conv9 = zext i16 %11 to i32, !dbg !465
  %and10 = and i32 %conv9, 4096, !dbg !465
  %tobool11 = icmp ne i32 %and10, 0, !dbg !464
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !466
  br i1 %12, label %while.body, label %while.end, !dbg !458

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !467, metadata !DIExpression()), !dbg !469
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !470
  %14 = load i64, i64* %numWritten, align 8, !dbg !471
  %mul12 = mul i64 2, %14, !dbg !472
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !470
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !473
  %15 = load i32, i32* %byte, align 4, !dbg !474
  %conv15 = trunc i32 %15 to i8, !dbg !475
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !476
  %17 = load i64, i64* %numWritten, align 8, !dbg !477
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !476
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !478
  %18 = load i64, i64* %numWritten, align 8, !dbg !479
  %inc = add i64 %18, 1, !dbg !479
  store i64 %inc, i64* %numWritten, align 8, !dbg !479
  br label %while.cond, !dbg !458, !llvm.loop !480

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !482
  ret i64 %19, !dbg !483
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !484 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !487, metadata !DIExpression()), !dbg !488
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !489, metadata !DIExpression()), !dbg !490
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !493, metadata !DIExpression()), !dbg !494
  store i64 0, i64* %numWritten, align 8, !dbg !494
  br label %while.cond, !dbg !495

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !496
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !497
  %cmp = icmp ult i64 %0, %1, !dbg !498
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !499

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !500
  %3 = load i64, i64* %numWritten, align 8, !dbg !501
  %mul = mul i64 2, %3, !dbg !502
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !500
  %4 = load i32, i32* %arrayidx, align 4, !dbg !500
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !503
  %tobool = icmp ne i32 %call, 0, !dbg !503
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !504

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !505
  %6 = load i64, i64* %numWritten, align 8, !dbg !506
  %mul1 = mul i64 2, %6, !dbg !507
  %add = add i64 %mul1, 1, !dbg !508
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !505
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !505
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !509
  %tobool4 = icmp ne i32 %call3, 0, !dbg !504
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !510
  br i1 %8, label %while.body, label %while.end, !dbg !495

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !511, metadata !DIExpression()), !dbg !513
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !514
  %10 = load i64, i64* %numWritten, align 8, !dbg !515
  %mul5 = mul i64 2, %10, !dbg !516
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !514
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !517
  %11 = load i32, i32* %byte, align 4, !dbg !518
  %conv = trunc i32 %11 to i8, !dbg !519
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !520
  %13 = load i64, i64* %numWritten, align 8, !dbg !521
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !520
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !522
  %14 = load i64, i64* %numWritten, align 8, !dbg !523
  %inc = add i64 %14, 1, !dbg !523
  store i64 %inc, i64* %numWritten, align 8, !dbg !523
  br label %while.cond, !dbg !495, !llvm.loop !524

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !526
  ret i64 %15, !dbg !527
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !528 {
entry:
  ret i32 1, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !532 {
entry:
  ret i32 0, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !534 {
entry:
  %call = call i32 @rand() #8, !dbg !535
  %rem = srem i32 %call, 2, !dbg !536
  ret i32 %rem, !dbg !537
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !538 {
entry:
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !540 {
entry:
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !542 {
entry:
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !544 {
entry:
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !546 {
entry:
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !548 {
entry:
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !550 {
entry:
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !572 {
entry:
  ret void, !dbg !573
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

!llvm.dbg.cu = !{!44, !2}
!llvm.ident = !{!48, !48}
!llvm.module.flags = !{!49, !50, !51}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_027/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_027/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_18_bad", scope: !45, file: !45, line: 33, type: !53, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 35, type: !42)
!56 = !DILocation(line: 35, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 36, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 100)
!61 = !DILocation(line: 36, column: 10, scope: !52)
!62 = !DILocation(line: 37, column: 12, scope: !52)
!63 = !DILocation(line: 37, column: 10, scope: !52)
!64 = !DILocation(line: 38, column: 5, scope: !52)
!65 = !DILabel(scope: !52, name: "source", file: !45, line: 39)
!66 = !DILocation(line: 39, column: 1, scope: !52)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 42, type: !69)
!68 = distinct !DILexicalBlock(scope: !52, file: !45, line: 40, column: 5)
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
!166 = !DILocation(line: 61, column: 5, scope: !52)
!167 = !DILabel(scope: !52, name: "sink", file: !45, line: 62)
!168 = !DILocation(line: 62, column: 1, scope: !52)
!169 = !DILocation(line: 64, column: 12, scope: !52)
!170 = !DILocation(line: 64, column: 5, scope: !52)
!171 = !DILocation(line: 65, column: 1, scope: !52)
!172 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 72, type: !53, scopeLine: 73, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!173 = !DILocalVariable(name: "data", scope: !172, file: !45, line: 74, type: !42)
!174 = !DILocation(line: 74, column: 12, scope: !172)
!175 = !DILocalVariable(name: "dataBuffer", scope: !172, file: !45, line: 75, type: !58)
!176 = !DILocation(line: 75, column: 10, scope: !172)
!177 = !DILocation(line: 76, column: 12, scope: !172)
!178 = !DILocation(line: 76, column: 10, scope: !172)
!179 = !DILocation(line: 77, column: 5, scope: !172)
!180 = !DILabel(scope: !172, name: "source", file: !45, line: 78)
!181 = !DILocation(line: 78, column: 1, scope: !172)
!182 = !DILocalVariable(name: "dataLen", scope: !183, file: !45, line: 81, type: !69)
!183 = distinct !DILexicalBlock(scope: !172, file: !45, line: 79, column: 5)
!184 = !DILocation(line: 81, column: 16, scope: !183)
!185 = !DILocation(line: 81, column: 33, scope: !183)
!186 = !DILocation(line: 81, column: 26, scope: !183)
!187 = !DILocalVariable(name: "pFile", scope: !183, file: !45, line: 82, type: !76)
!188 = !DILocation(line: 82, column: 16, scope: !183)
!189 = !DILocation(line: 84, column: 17, scope: !190)
!190 = distinct !DILexicalBlock(scope: !183, file: !45, line: 84, column: 13)
!191 = !DILocation(line: 84, column: 16, scope: !190)
!192 = !DILocation(line: 84, column: 25, scope: !190)
!193 = !DILocation(line: 84, column: 13, scope: !183)
!194 = !DILocation(line: 86, column: 21, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !45, line: 85, column: 9)
!196 = !DILocation(line: 86, column: 19, scope: !195)
!197 = !DILocation(line: 87, column: 17, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !45, line: 87, column: 17)
!199 = !DILocation(line: 87, column: 23, scope: !198)
!200 = !DILocation(line: 87, column: 17, scope: !195)
!201 = !DILocation(line: 90, column: 27, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !45, line: 90, column: 21)
!203 = distinct !DILexicalBlock(scope: !198, file: !45, line: 88, column: 13)
!204 = !DILocation(line: 90, column: 32, scope: !202)
!205 = !DILocation(line: 90, column: 31, scope: !202)
!206 = !DILocation(line: 90, column: 51, scope: !202)
!207 = !DILocation(line: 90, column: 50, scope: !202)
!208 = !DILocation(line: 90, column: 41, scope: !202)
!209 = !DILocation(line: 90, column: 61, scope: !202)
!210 = !DILocation(line: 90, column: 21, scope: !202)
!211 = !DILocation(line: 90, column: 68, scope: !202)
!212 = !DILocation(line: 90, column: 21, scope: !203)
!213 = !DILocation(line: 92, column: 21, scope: !214)
!214 = distinct !DILexicalBlock(scope: !202, file: !45, line: 91, column: 17)
!215 = !DILocation(line: 94, column: 21, scope: !214)
!216 = !DILocation(line: 94, column: 26, scope: !214)
!217 = !DILocation(line: 94, column: 35, scope: !214)
!218 = !DILocation(line: 95, column: 17, scope: !214)
!219 = !DILocation(line: 96, column: 24, scope: !203)
!220 = !DILocation(line: 96, column: 17, scope: !203)
!221 = !DILocation(line: 97, column: 13, scope: !203)
!222 = !DILocation(line: 98, column: 9, scope: !195)
!223 = !DILocation(line: 100, column: 5, scope: !172)
!224 = !DILabel(scope: !172, name: "sink", file: !45, line: 101)
!225 = !DILocation(line: 101, column: 1, scope: !172)
!226 = !DILocation(line: 103, column: 20, scope: !172)
!227 = !DILocation(line: 103, column: 5, scope: !172)
!228 = !DILocation(line: 104, column: 1, scope: !172)
!229 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 107, type: !53, scopeLine: 108, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!230 = !DILocalVariable(name: "data", scope: !229, file: !45, line: 109, type: !42)
!231 = !DILocation(line: 109, column: 12, scope: !229)
!232 = !DILocalVariable(name: "dataBuffer", scope: !229, file: !45, line: 110, type: !58)
!233 = !DILocation(line: 110, column: 10, scope: !229)
!234 = !DILocation(line: 111, column: 12, scope: !229)
!235 = !DILocation(line: 111, column: 10, scope: !229)
!236 = !DILocation(line: 112, column: 5, scope: !229)
!237 = !DILabel(scope: !229, name: "source", file: !45, line: 113)
!238 = !DILocation(line: 113, column: 1, scope: !229)
!239 = !DILocation(line: 115, column: 12, scope: !229)
!240 = !DILocation(line: 115, column: 5, scope: !229)
!241 = !DILocation(line: 116, column: 5, scope: !229)
!242 = !DILabel(scope: !229, name: "sink", file: !45, line: 117)
!243 = !DILocation(line: 117, column: 1, scope: !229)
!244 = !DILocation(line: 119, column: 12, scope: !229)
!245 = !DILocation(line: 119, column: 5, scope: !229)
!246 = !DILocation(line: 120, column: 1, scope: !229)
!247 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_18_good", scope: !45, file: !45, line: 122, type: !53, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!248 = !DILocation(line: 124, column: 5, scope: !247)
!249 = !DILocation(line: 125, column: 5, scope: !247)
!250 = !DILocation(line: 126, column: 1, scope: !247)
!251 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !252, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !42}
!254 = !DILocalVariable(name: "line", arg: 1, scope: !251, file: !3, line: 11, type: !42)
!255 = !DILocation(line: 11, column: 25, scope: !251)
!256 = !DILocation(line: 13, column: 1, scope: !251)
!257 = !DILocation(line: 14, column: 8, scope: !258)
!258 = distinct !DILexicalBlock(scope: !251, file: !3, line: 14, column: 8)
!259 = !DILocation(line: 14, column: 13, scope: !258)
!260 = !DILocation(line: 14, column: 8, scope: !251)
!261 = !DILocation(line: 16, column: 24, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !3, line: 15, column: 5)
!263 = !DILocation(line: 16, column: 9, scope: !262)
!264 = !DILocation(line: 17, column: 5, scope: !262)
!265 = !DILocation(line: 18, column: 5, scope: !251)
!266 = !DILocation(line: 19, column: 1, scope: !251)
!267 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !252, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!268 = !DILocalVariable(name: "line", arg: 1, scope: !267, file: !3, line: 20, type: !42)
!269 = !DILocation(line: 20, column: 29, scope: !267)
!270 = !DILocation(line: 22, column: 8, scope: !271)
!271 = distinct !DILexicalBlock(scope: !267, file: !3, line: 22, column: 8)
!272 = !DILocation(line: 22, column: 13, scope: !271)
!273 = !DILocation(line: 22, column: 8, scope: !267)
!274 = !DILocation(line: 24, column: 24, scope: !275)
!275 = distinct !DILexicalBlock(scope: !271, file: !3, line: 23, column: 5)
!276 = !DILocation(line: 24, column: 9, scope: !275)
!277 = !DILocation(line: 25, column: 5, scope: !275)
!278 = !DILocation(line: 26, column: 1, scope: !267)
!279 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !280, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !282}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !70, line: 74, baseType: !23)
!284 = !DILocalVariable(name: "line", arg: 1, scope: !279, file: !3, line: 27, type: !282)
!285 = !DILocation(line: 27, column: 29, scope: !279)
!286 = !DILocation(line: 29, column: 8, scope: !287)
!287 = distinct !DILexicalBlock(scope: !279, file: !3, line: 29, column: 8)
!288 = !DILocation(line: 29, column: 13, scope: !287)
!289 = !DILocation(line: 29, column: 8, scope: !279)
!290 = !DILocation(line: 31, column: 27, scope: !291)
!291 = distinct !DILexicalBlock(scope: !287, file: !3, line: 30, column: 5)
!292 = !DILocation(line: 31, column: 9, scope: !291)
!293 = !DILocation(line: 32, column: 5, scope: !291)
!294 = !DILocation(line: 33, column: 1, scope: !279)
!295 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !296, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !23}
!298 = !DILocalVariable(name: "intNumber", arg: 1, scope: !295, file: !3, line: 35, type: !23)
!299 = !DILocation(line: 35, column: 24, scope: !295)
!300 = !DILocation(line: 37, column: 20, scope: !295)
!301 = !DILocation(line: 37, column: 5, scope: !295)
!302 = !DILocation(line: 38, column: 1, scope: !295)
!303 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !304, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !306}
!306 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!307 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !303, file: !3, line: 40, type: !306)
!308 = !DILocation(line: 40, column: 28, scope: !303)
!309 = !DILocation(line: 42, column: 21, scope: !303)
!310 = !DILocation(line: 42, column: 5, scope: !303)
!311 = !DILocation(line: 43, column: 1, scope: !303)
!312 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !313, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !315}
!315 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!316 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !312, file: !3, line: 45, type: !315)
!317 = !DILocation(line: 45, column: 28, scope: !312)
!318 = !DILocation(line: 47, column: 20, scope: !312)
!319 = !DILocation(line: 47, column: 5, scope: !312)
!320 = !DILocation(line: 48, column: 1, scope: !312)
!321 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !322, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !104}
!324 = !DILocalVariable(name: "longNumber", arg: 1, scope: !321, file: !3, line: 50, type: !104)
!325 = !DILocation(line: 50, column: 26, scope: !321)
!326 = !DILocation(line: 52, column: 21, scope: !321)
!327 = !DILocation(line: 52, column: 5, scope: !321)
!328 = !DILocation(line: 53, column: 1, scope: !321)
!329 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !330, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !332}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !333, line: 27, baseType: !334)
!333 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !103, line: 44, baseType: !104)
!335 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !329, file: !3, line: 55, type: !332)
!336 = !DILocation(line: 55, column: 33, scope: !329)
!337 = !DILocation(line: 57, column: 29, scope: !329)
!338 = !DILocation(line: 57, column: 5, scope: !329)
!339 = !DILocation(line: 58, column: 1, scope: !329)
!340 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !341, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !69}
!343 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !340, file: !3, line: 60, type: !69)
!344 = !DILocation(line: 60, column: 29, scope: !340)
!345 = !DILocation(line: 62, column: 21, scope: !340)
!346 = !DILocation(line: 62, column: 5, scope: !340)
!347 = !DILocation(line: 63, column: 1, scope: !340)
!348 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !349, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !43}
!351 = !DILocalVariable(name: "charHex", arg: 1, scope: !348, file: !3, line: 65, type: !43)
!352 = !DILocation(line: 65, column: 29, scope: !348)
!353 = !DILocation(line: 67, column: 22, scope: !348)
!354 = !DILocation(line: 67, column: 5, scope: !348)
!355 = !DILocation(line: 68, column: 1, scope: !348)
!356 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !357, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !283}
!359 = !DILocalVariable(name: "wideChar", arg: 1, scope: !356, file: !3, line: 70, type: !283)
!360 = !DILocation(line: 70, column: 29, scope: !356)
!361 = !DILocalVariable(name: "s", scope: !356, file: !3, line: 74, type: !362)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 64, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 2)
!365 = !DILocation(line: 74, column: 13, scope: !356)
!366 = !DILocation(line: 75, column: 16, scope: !356)
!367 = !DILocation(line: 75, column: 9, scope: !356)
!368 = !DILocation(line: 75, column: 14, scope: !356)
!369 = !DILocation(line: 76, column: 9, scope: !356)
!370 = !DILocation(line: 76, column: 14, scope: !356)
!371 = !DILocation(line: 77, column: 21, scope: !356)
!372 = !DILocation(line: 77, column: 5, scope: !356)
!373 = !DILocation(line: 78, column: 1, scope: !356)
!374 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !375, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !7}
!377 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !374, file: !3, line: 80, type: !7)
!378 = !DILocation(line: 80, column: 33, scope: !374)
!379 = !DILocation(line: 82, column: 20, scope: !374)
!380 = !DILocation(line: 82, column: 5, scope: !374)
!381 = !DILocation(line: 83, column: 1, scope: !374)
!382 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !383, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !25}
!385 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !382, file: !3, line: 85, type: !25)
!386 = !DILocation(line: 85, column: 45, scope: !382)
!387 = !DILocation(line: 87, column: 22, scope: !382)
!388 = !DILocation(line: 87, column: 5, scope: !382)
!389 = !DILocation(line: 88, column: 1, scope: !382)
!390 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !391, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393}
!393 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!394 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !390, file: !3, line: 90, type: !393)
!395 = !DILocation(line: 90, column: 29, scope: !390)
!396 = !DILocation(line: 92, column: 20, scope: !390)
!397 = !DILocation(line: 92, column: 5, scope: !390)
!398 = !DILocation(line: 93, column: 1, scope: !390)
!399 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !400, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !404, line: 100, baseType: !405)
!404 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_027/source_code")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !404, line: 96, size: 64, elements: !406)
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !405, file: !404, line: 98, baseType: !23, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !405, file: !404, line: 99, baseType: !23, size: 32, offset: 32)
!409 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !399, file: !3, line: 95, type: !402)
!410 = !DILocation(line: 95, column: 40, scope: !399)
!411 = !DILocation(line: 97, column: 26, scope: !399)
!412 = !DILocation(line: 97, column: 47, scope: !399)
!413 = !DILocation(line: 97, column: 55, scope: !399)
!414 = !DILocation(line: 97, column: 76, scope: !399)
!415 = !DILocation(line: 97, column: 5, scope: !399)
!416 = !DILocation(line: 98, column: 1, scope: !399)
!417 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !418, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !420, !69}
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!421 = !DILocalVariable(name: "bytes", arg: 1, scope: !417, file: !3, line: 100, type: !420)
!422 = !DILocation(line: 100, column: 38, scope: !417)
!423 = !DILocalVariable(name: "numBytes", arg: 2, scope: !417, file: !3, line: 100, type: !69)
!424 = !DILocation(line: 100, column: 52, scope: !417)
!425 = !DILocalVariable(name: "i", scope: !417, file: !3, line: 102, type: !69)
!426 = !DILocation(line: 102, column: 12, scope: !417)
!427 = !DILocation(line: 103, column: 12, scope: !428)
!428 = distinct !DILexicalBlock(scope: !417, file: !3, line: 103, column: 5)
!429 = !DILocation(line: 103, column: 10, scope: !428)
!430 = !DILocation(line: 103, column: 17, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !3, line: 103, column: 5)
!432 = !DILocation(line: 103, column: 21, scope: !431)
!433 = !DILocation(line: 103, column: 19, scope: !431)
!434 = !DILocation(line: 103, column: 5, scope: !428)
!435 = !DILocation(line: 105, column: 24, scope: !436)
!436 = distinct !DILexicalBlock(scope: !431, file: !3, line: 104, column: 5)
!437 = !DILocation(line: 105, column: 30, scope: !436)
!438 = !DILocation(line: 105, column: 9, scope: !436)
!439 = !DILocation(line: 106, column: 5, scope: !436)
!440 = !DILocation(line: 103, column: 31, scope: !431)
!441 = !DILocation(line: 103, column: 5, scope: !431)
!442 = distinct !{!442, !434, !443, !444}
!443 = !DILocation(line: 106, column: 5, scope: !428)
!444 = !{!"llvm.loop.mustprogress"}
!445 = !DILocation(line: 107, column: 5, scope: !417)
!446 = !DILocation(line: 108, column: 1, scope: !417)
!447 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !448, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{!69, !420, !69, !42}
!450 = !DILocalVariable(name: "bytes", arg: 1, scope: !447, file: !3, line: 113, type: !420)
!451 = !DILocation(line: 113, column: 39, scope: !447)
!452 = !DILocalVariable(name: "numBytes", arg: 2, scope: !447, file: !3, line: 113, type: !69)
!453 = !DILocation(line: 113, column: 53, scope: !447)
!454 = !DILocalVariable(name: "hex", arg: 3, scope: !447, file: !3, line: 113, type: !42)
!455 = !DILocation(line: 113, column: 71, scope: !447)
!456 = !DILocalVariable(name: "numWritten", scope: !447, file: !3, line: 115, type: !69)
!457 = !DILocation(line: 115, column: 12, scope: !447)
!458 = !DILocation(line: 121, column: 5, scope: !447)
!459 = !DILocation(line: 121, column: 12, scope: !447)
!460 = !DILocation(line: 121, column: 25, scope: !447)
!461 = !DILocation(line: 121, column: 23, scope: !447)
!462 = !DILocation(line: 121, column: 34, scope: !447)
!463 = !DILocation(line: 121, column: 37, scope: !447)
!464 = !DILocation(line: 121, column: 67, scope: !447)
!465 = !DILocation(line: 121, column: 70, scope: !447)
!466 = !DILocation(line: 0, scope: !447)
!467 = !DILocalVariable(name: "byte", scope: !468, file: !3, line: 123, type: !23)
!468 = distinct !DILexicalBlock(scope: !447, file: !3, line: 122, column: 5)
!469 = !DILocation(line: 123, column: 13, scope: !468)
!470 = !DILocation(line: 124, column: 17, scope: !468)
!471 = !DILocation(line: 124, column: 25, scope: !468)
!472 = !DILocation(line: 124, column: 23, scope: !468)
!473 = !DILocation(line: 124, column: 9, scope: !468)
!474 = !DILocation(line: 125, column: 45, scope: !468)
!475 = !DILocation(line: 125, column: 29, scope: !468)
!476 = !DILocation(line: 125, column: 9, scope: !468)
!477 = !DILocation(line: 125, column: 15, scope: !468)
!478 = !DILocation(line: 125, column: 27, scope: !468)
!479 = !DILocation(line: 126, column: 9, scope: !468)
!480 = distinct !{!480, !458, !481, !444}
!481 = !DILocation(line: 127, column: 5, scope: !447)
!482 = !DILocation(line: 129, column: 12, scope: !447)
!483 = !DILocation(line: 129, column: 5, scope: !447)
!484 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !485, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!485 = !DISubroutineType(types: !486)
!486 = !{!69, !420, !69, !282}
!487 = !DILocalVariable(name: "bytes", arg: 1, scope: !484, file: !3, line: 135, type: !420)
!488 = !DILocation(line: 135, column: 41, scope: !484)
!489 = !DILocalVariable(name: "numBytes", arg: 2, scope: !484, file: !3, line: 135, type: !69)
!490 = !DILocation(line: 135, column: 55, scope: !484)
!491 = !DILocalVariable(name: "hex", arg: 3, scope: !484, file: !3, line: 135, type: !282)
!492 = !DILocation(line: 135, column: 76, scope: !484)
!493 = !DILocalVariable(name: "numWritten", scope: !484, file: !3, line: 137, type: !69)
!494 = !DILocation(line: 137, column: 12, scope: !484)
!495 = !DILocation(line: 143, column: 5, scope: !484)
!496 = !DILocation(line: 143, column: 12, scope: !484)
!497 = !DILocation(line: 143, column: 25, scope: !484)
!498 = !DILocation(line: 143, column: 23, scope: !484)
!499 = !DILocation(line: 143, column: 34, scope: !484)
!500 = !DILocation(line: 143, column: 47, scope: !484)
!501 = !DILocation(line: 143, column: 55, scope: !484)
!502 = !DILocation(line: 143, column: 53, scope: !484)
!503 = !DILocation(line: 143, column: 37, scope: !484)
!504 = !DILocation(line: 143, column: 68, scope: !484)
!505 = !DILocation(line: 143, column: 81, scope: !484)
!506 = !DILocation(line: 143, column: 89, scope: !484)
!507 = !DILocation(line: 143, column: 87, scope: !484)
!508 = !DILocation(line: 143, column: 100, scope: !484)
!509 = !DILocation(line: 143, column: 71, scope: !484)
!510 = !DILocation(line: 0, scope: !484)
!511 = !DILocalVariable(name: "byte", scope: !512, file: !3, line: 145, type: !23)
!512 = distinct !DILexicalBlock(scope: !484, file: !3, line: 144, column: 5)
!513 = !DILocation(line: 145, column: 13, scope: !512)
!514 = !DILocation(line: 146, column: 18, scope: !512)
!515 = !DILocation(line: 146, column: 26, scope: !512)
!516 = !DILocation(line: 146, column: 24, scope: !512)
!517 = !DILocation(line: 146, column: 9, scope: !512)
!518 = !DILocation(line: 147, column: 45, scope: !512)
!519 = !DILocation(line: 147, column: 29, scope: !512)
!520 = !DILocation(line: 147, column: 9, scope: !512)
!521 = !DILocation(line: 147, column: 15, scope: !512)
!522 = !DILocation(line: 147, column: 27, scope: !512)
!523 = !DILocation(line: 148, column: 9, scope: !512)
!524 = distinct !{!524, !495, !525, !444}
!525 = !DILocation(line: 149, column: 5, scope: !484)
!526 = !DILocation(line: 151, column: 12, scope: !484)
!527 = !DILocation(line: 151, column: 5, scope: !484)
!528 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !529, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!529 = !DISubroutineType(types: !530)
!530 = !{!23}
!531 = !DILocation(line: 158, column: 5, scope: !528)
!532 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !529, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DILocation(line: 163, column: 5, scope: !532)
!534 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !529, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!535 = !DILocation(line: 168, column: 13, scope: !534)
!536 = !DILocation(line: 168, column: 20, scope: !534)
!537 = !DILocation(line: 168, column: 5, scope: !534)
!538 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DILocation(line: 187, column: 16, scope: !538)
!540 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DILocation(line: 188, column: 16, scope: !540)
!542 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DILocation(line: 189, column: 16, scope: !542)
!544 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DILocation(line: 190, column: 16, scope: !544)
!546 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 191, column: 16, scope: !546)
!548 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DILocation(line: 192, column: 16, scope: !548)
!550 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocation(line: 193, column: 16, scope: !550)
!552 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 194, column: 16, scope: !552)
!554 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 195, column: 16, scope: !554)
!556 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DILocation(line: 198, column: 15, scope: !556)
!558 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 199, column: 15, scope: !558)
!560 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DILocation(line: 200, column: 15, scope: !560)
!562 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DILocation(line: 201, column: 15, scope: !562)
!564 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DILocation(line: 202, column: 15, scope: !564)
!566 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 203, column: 15, scope: !566)
!568 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 204, column: 15, scope: !568)
!570 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 205, column: 15, scope: !570)
!572 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DILocation(line: 206, column: 15, scope: !572)
