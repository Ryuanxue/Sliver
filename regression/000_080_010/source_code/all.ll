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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_01_bad() #0 !dbg !52 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !69
  %1 = load i8*, i8** %data, align 8, !dbg !70
  %call = call i64 @strlen(i8* %1) #7, !dbg !71
  store i64 %call, i64* %dataLen, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !72, metadata !DIExpression()), !dbg !128
  %2 = load i64, i64* %dataLen, align 8, !dbg !129
  %sub = sub i64 100, %2, !dbg !131
  %cmp = icmp ugt i64 %sub, 1, !dbg !132
  br i1 %cmp, label %if.then, label %if.end11, !dbg !133

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !134
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !136
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !137
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !139
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !140

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !141
  %5 = load i64, i64* %dataLen, align 8, !dbg !144
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !145
  %6 = load i64, i64* %dataLen, align 8, !dbg !146
  %sub4 = sub i64 100, %6, !dbg !147
  %conv = trunc i64 %sub4 to i32, !dbg !148
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !149
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !150
  %cmp6 = icmp eq i8* %call5, null, !dbg !151
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !152

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !153
  %8 = load i8*, i8** %data, align 8, !dbg !155
  %9 = load i64, i64* %dataLen, align 8, !dbg !156
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !155
  store i8 0, i8* %arrayidx, align 1, !dbg !157
  br label %if.end, !dbg !158

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !159
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !160
  br label %if.end10, !dbg !161

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !162

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !163
  %call12 = call i32 (i8*, ...) @printf(i8* %11), !dbg !164
  ret void, !dbg !165
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

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !166 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !170
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !170
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !171
  store i8* %arraydecay, i8** %data, align 8, !dbg !172
  %1 = load i8*, i8** %data, align 8, !dbg !173
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !174
  %2 = load i8*, i8** %data, align 8, !dbg !175
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !176
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
  %11 = load i8*, i8** %data, align 8, !dbg !226
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %11), !dbg !227
  ret void, !dbg !228
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_01_good() #0 !dbg !229 {
entry:
  call void @goodG2B(), !dbg !230
  call void @goodB2G(), !dbg !231
  ret void, !dbg !232
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !233 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !236, metadata !DIExpression()), !dbg !237
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !238
  %0 = load i8*, i8** %line.addr, align 8, !dbg !239
  %cmp = icmp ne i8* %0, null, !dbg !241
  br i1 %cmp, label %if.then, label %if.end, !dbg !242

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !243
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !245
  br label %if.end, !dbg !246

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !247
  ret void, !dbg !248
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !249 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !250, metadata !DIExpression()), !dbg !251
  %0 = load i8*, i8** %line.addr, align 8, !dbg !252
  %cmp = icmp ne i8* %0, null, !dbg !254
  br i1 %cmp, label %if.then, label %if.end, !dbg !255

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !256
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !258
  br label %if.end, !dbg !259

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !260
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !261 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !266, metadata !DIExpression()), !dbg !267
  %0 = load i32*, i32** %line.addr, align 8, !dbg !268
  %cmp = icmp ne i32* %0, null, !dbg !270
  br i1 %cmp, label %if.then, label %if.end, !dbg !271

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !272
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !274
  br label %if.end, !dbg !275

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !276
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !277 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !282
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.9, i64 0, i64 0), i32 %0), !dbg !283
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !285 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !291
  %conv = sext i16 %0 to i32, !dbg !291
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.10, i64 0, i64 0), i32 %conv), !dbg !292
  ret void, !dbg !293
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !294 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !298, metadata !DIExpression()), !dbg !299
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !300
  %conv = fpext float %0 to double, !dbg !300
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !301
  ret void, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !303 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !308
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !309
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !311 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !317, metadata !DIExpression()), !dbg !318
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !319
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !320
  ret void, !dbg !321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !322 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !325, metadata !DIExpression()), !dbg !326
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !327
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !328
  ret void, !dbg !329
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !330 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !335
  %conv = sext i8 %0 to i32, !dbg !335
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !336
  ret void, !dbg !337
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !338 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !343, metadata !DIExpression()), !dbg !347
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !348
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !349
  store i32 %0, i32* %arrayidx, align 4, !dbg !350
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !351
  store i32 0, i32* %arrayidx1, align 4, !dbg !352
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !356 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !359, metadata !DIExpression()), !dbg !360
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !361
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !362
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !364 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !369
  %conv = zext i8 %0 to i32, !dbg !369
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !370
  ret void, !dbg !371
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !372 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !381 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !393
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !394
  %1 = load i32, i32* %intOne, align 4, !dbg !394
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !395
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !396
  %3 = load i32, i32* %intTwo, align 4, !dbg !396
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !397
  ret void, !dbg !398
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !399 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !403, metadata !DIExpression()), !dbg !404
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata i64* %i, metadata !407, metadata !DIExpression()), !dbg !408
  store i64 0, i64* %i, align 8, !dbg !409
  br label %for.cond, !dbg !411

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !412
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !414
  %cmp = icmp ult i64 %0, %1, !dbg !415
  br i1 %cmp, label %for.body, label %for.end, !dbg !416

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !417
  %3 = load i64, i64* %i, align 8, !dbg !419
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !417
  %4 = load i8, i8* %arrayidx, align 1, !dbg !417
  %conv = zext i8 %4 to i32, !dbg !417
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !420
  br label %for.inc, !dbg !421

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !422
  %inc = add i64 %5, 1, !dbg !422
  store i64 %inc, i64* %i, align 8, !dbg !422
  br label %for.cond, !dbg !423, !llvm.loop !424

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !427
  ret void, !dbg !428
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !429 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !432, metadata !DIExpression()), !dbg !433
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !434, metadata !DIExpression()), !dbg !435
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !436, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !438, metadata !DIExpression()), !dbg !439
  store i64 0, i64* %numWritten, align 8, !dbg !439
  br label %while.cond, !dbg !440

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !441
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !442
  %cmp = icmp ult i64 %0, %1, !dbg !443
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !444

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !445
  %2 = load i16*, i16** %call, align 8, !dbg !445
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !445
  %4 = load i64, i64* %numWritten, align 8, !dbg !445
  %mul = mul i64 2, %4, !dbg !445
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !445
  %5 = load i8, i8* %arrayidx, align 1, !dbg !445
  %conv = sext i8 %5 to i32, !dbg !445
  %idxprom = sext i32 %conv to i64, !dbg !445
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !445
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !445
  %conv2 = zext i16 %6 to i32, !dbg !445
  %and = and i32 %conv2, 4096, !dbg !445
  %tobool = icmp ne i32 %and, 0, !dbg !445
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !446

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !447
  %7 = load i16*, i16** %call3, align 8, !dbg !447
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !447
  %9 = load i64, i64* %numWritten, align 8, !dbg !447
  %mul4 = mul i64 2, %9, !dbg !447
  %add = add i64 %mul4, 1, !dbg !447
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !447
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !447
  %conv6 = sext i8 %10 to i32, !dbg !447
  %idxprom7 = sext i32 %conv6 to i64, !dbg !447
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !447
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !447
  %conv9 = zext i16 %11 to i32, !dbg !447
  %and10 = and i32 %conv9, 4096, !dbg !447
  %tobool11 = icmp ne i32 %and10, 0, !dbg !446
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !448
  br i1 %12, label %while.body, label %while.end, !dbg !440

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !449, metadata !DIExpression()), !dbg !451
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !452
  %14 = load i64, i64* %numWritten, align 8, !dbg !453
  %mul12 = mul i64 2, %14, !dbg !454
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !452
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !455
  %15 = load i32, i32* %byte, align 4, !dbg !456
  %conv15 = trunc i32 %15 to i8, !dbg !457
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !458
  %17 = load i64, i64* %numWritten, align 8, !dbg !459
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !458
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !460
  %18 = load i64, i64* %numWritten, align 8, !dbg !461
  %inc = add i64 %18, 1, !dbg !461
  store i64 %inc, i64* %numWritten, align 8, !dbg !461
  br label %while.cond, !dbg !440, !llvm.loop !462

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !464
  ret i64 %19, !dbg !465
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !466 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !469, metadata !DIExpression()), !dbg !470
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !471, metadata !DIExpression()), !dbg !472
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !473, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !475, metadata !DIExpression()), !dbg !476
  store i64 0, i64* %numWritten, align 8, !dbg !476
  br label %while.cond, !dbg !477

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !478
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !479
  %cmp = icmp ult i64 %0, %1, !dbg !480
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !481

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !482
  %3 = load i64, i64* %numWritten, align 8, !dbg !483
  %mul = mul i64 2, %3, !dbg !484
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !482
  %4 = load i32, i32* %arrayidx, align 4, !dbg !482
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !485
  %tobool = icmp ne i32 %call, 0, !dbg !485
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !486

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !487
  %6 = load i64, i64* %numWritten, align 8, !dbg !488
  %mul1 = mul i64 2, %6, !dbg !489
  %add = add i64 %mul1, 1, !dbg !490
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !487
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !487
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !491
  %tobool4 = icmp ne i32 %call3, 0, !dbg !486
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !492
  br i1 %8, label %while.body, label %while.end, !dbg !477

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !493, metadata !DIExpression()), !dbg !495
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !496
  %10 = load i64, i64* %numWritten, align 8, !dbg !497
  %mul5 = mul i64 2, %10, !dbg !498
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !496
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !499
  %11 = load i32, i32* %byte, align 4, !dbg !500
  %conv = trunc i32 %11 to i8, !dbg !501
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !502
  %13 = load i64, i64* %numWritten, align 8, !dbg !503
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !502
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !504
  %14 = load i64, i64* %numWritten, align 8, !dbg !505
  %inc = add i64 %14, 1, !dbg !505
  store i64 %inc, i64* %numWritten, align 8, !dbg !505
  br label %while.cond, !dbg !477, !llvm.loop !506

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !508
  ret i64 %15, !dbg !509
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !510 {
entry:
  ret i32 1, !dbg !513
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !514 {
entry:
  ret i32 0, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !516 {
entry:
  %call = call i32 @rand() #8, !dbg !517
  %rem = srem i32 %call, 2, !dbg !518
  ret i32 %rem, !dbg !519
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !520 {
entry:
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !522 {
entry:
  ret void, !dbg !523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !524 {
entry:
  ret void, !dbg !525
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !526 {
entry:
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !528 {
entry:
  ret void, !dbg !529
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !530 {
entry:
  ret void, !dbg !531
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !532 {
entry:
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !534 {
entry:
  ret void, !dbg !535
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !536 {
entry:
  ret void, !dbg !537
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !538 {
entry:
  ret void, !dbg !539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !540 {
entry:
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !542 {
entry:
  ret void, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !544 {
entry:
  ret void, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !546 {
entry:
  ret void, !dbg !547
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !548 {
entry:
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !550 {
entry:
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !554 {
entry:
  ret void, !dbg !555
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_010/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_01.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_010/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_01_bad", scope: !45, file: !45, line: 33, type: !53, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 40, type: !66)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 38, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocation(line: 40, column: 16, scope: !65)
!70 = !DILocation(line: 40, column: 33, scope: !65)
!71 = !DILocation(line: 40, column: 26, scope: !65)
!72 = !DILocalVariable(name: "pFile", scope: !65, file: !45, line: 41, type: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 7, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !77, line: 49, size: 1728, elements: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !94, !96, !97, !98, !102, !103, !105, !109, !112, !114, !117, !120, !121, !122, !123, !124}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !76, file: !77, line: 51, baseType: !23, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !76, file: !77, line: 54, baseType: !42, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !76, file: !77, line: 55, baseType: !42, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !76, file: !77, line: 56, baseType: !42, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !76, file: !77, line: 57, baseType: !42, size: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !76, file: !77, line: 58, baseType: !42, size: 64, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !76, file: !77, line: 59, baseType: !42, size: 64, offset: 384)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !76, file: !77, line: 60, baseType: !42, size: 64, offset: 448)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !76, file: !77, line: 61, baseType: !42, size: 64, offset: 512)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !76, file: !77, line: 64, baseType: !42, size: 64, offset: 576)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !76, file: !77, line: 65, baseType: !42, size: 64, offset: 640)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !76, file: !77, line: 66, baseType: !42, size: 64, offset: 704)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !76, file: !77, line: 68, baseType: !92, size: 64, offset: 768)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !77, line: 36, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !76, file: !77, line: 70, baseType: !95, size: 64, offset: 832)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !76, file: !77, line: 72, baseType: !23, size: 32, offset: 896)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !76, file: !77, line: 73, baseType: !23, size: 32, offset: 928)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !76, file: !77, line: 74, baseType: !99, size: 64, offset: 960)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !100, line: 152, baseType: !101)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!101 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !76, file: !77, line: 77, baseType: !24, size: 16, offset: 1024)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !76, file: !77, line: 78, baseType: !104, size: 8, offset: 1040)
!104 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !76, file: !77, line: 79, baseType: !106, size: 8, offset: 1048)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 1)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !76, file: !77, line: 81, baseType: !110, size: 64, offset: 1088)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !77, line: 43, baseType: null)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !76, file: !77, line: 89, baseType: !113, size: 64, offset: 1152)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !100, line: 153, baseType: !101)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !76, file: !77, line: 91, baseType: !115, size: 64, offset: 1216)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !77, line: 37, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !76, file: !77, line: 92, baseType: !118, size: 64, offset: 1280)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !77, line: 38, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !76, file: !77, line: 93, baseType: !95, size: 64, offset: 1344)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !76, file: !77, line: 94, baseType: !22, size: 64, offset: 1408)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !76, file: !77, line: 95, baseType: !66, size: 64, offset: 1472)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !76, file: !77, line: 96, baseType: !23, size: 32, offset: 1536)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !76, file: !77, line: 98, baseType: !125, size: 160, offset: 1568)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 20)
!128 = !DILocation(line: 41, column: 16, scope: !65)
!129 = !DILocation(line: 43, column: 17, scope: !130)
!130 = distinct !DILexicalBlock(scope: !65, file: !45, line: 43, column: 13)
!131 = !DILocation(line: 43, column: 16, scope: !130)
!132 = !DILocation(line: 43, column: 25, scope: !130)
!133 = !DILocation(line: 43, column: 13, scope: !65)
!134 = !DILocation(line: 45, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !45, line: 44, column: 9)
!136 = !DILocation(line: 45, column: 19, scope: !135)
!137 = !DILocation(line: 46, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !45, line: 46, column: 17)
!139 = !DILocation(line: 46, column: 23, scope: !138)
!140 = !DILocation(line: 46, column: 17, scope: !135)
!141 = !DILocation(line: 49, column: 27, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !45, line: 49, column: 21)
!143 = distinct !DILexicalBlock(scope: !138, file: !45, line: 47, column: 13)
!144 = !DILocation(line: 49, column: 32, scope: !142)
!145 = !DILocation(line: 49, column: 31, scope: !142)
!146 = !DILocation(line: 49, column: 51, scope: !142)
!147 = !DILocation(line: 49, column: 50, scope: !142)
!148 = !DILocation(line: 49, column: 41, scope: !142)
!149 = !DILocation(line: 49, column: 61, scope: !142)
!150 = !DILocation(line: 49, column: 21, scope: !142)
!151 = !DILocation(line: 49, column: 68, scope: !142)
!152 = !DILocation(line: 49, column: 21, scope: !143)
!153 = !DILocation(line: 51, column: 21, scope: !154)
!154 = distinct !DILexicalBlock(scope: !142, file: !45, line: 50, column: 17)
!155 = !DILocation(line: 53, column: 21, scope: !154)
!156 = !DILocation(line: 53, column: 26, scope: !154)
!157 = !DILocation(line: 53, column: 35, scope: !154)
!158 = !DILocation(line: 54, column: 17, scope: !154)
!159 = !DILocation(line: 55, column: 24, scope: !143)
!160 = !DILocation(line: 55, column: 17, scope: !143)
!161 = !DILocation(line: 56, column: 13, scope: !143)
!162 = !DILocation(line: 57, column: 9, scope: !135)
!163 = !DILocation(line: 60, column: 12, scope: !52)
!164 = !DILocation(line: 60, column: 5, scope: !52)
!165 = !DILocation(line: 61, column: 1, scope: !52)
!166 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 68, type: !53, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!167 = !DILocalVariable(name: "data", scope: !166, file: !45, line: 70, type: !42)
!168 = !DILocation(line: 70, column: 12, scope: !166)
!169 = !DILocalVariable(name: "dataBuffer", scope: !166, file: !45, line: 71, type: !58)
!170 = !DILocation(line: 71, column: 10, scope: !166)
!171 = !DILocation(line: 72, column: 12, scope: !166)
!172 = !DILocation(line: 72, column: 10, scope: !166)
!173 = !DILocation(line: 74, column: 12, scope: !166)
!174 = !DILocation(line: 74, column: 5, scope: !166)
!175 = !DILocation(line: 76, column: 12, scope: !166)
!176 = !DILocation(line: 76, column: 5, scope: !166)
!177 = !DILocation(line: 77, column: 1, scope: !166)
!178 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 80, type: !53, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!179 = !DILocalVariable(name: "data", scope: !178, file: !45, line: 82, type: !42)
!180 = !DILocation(line: 82, column: 12, scope: !178)
!181 = !DILocalVariable(name: "dataBuffer", scope: !178, file: !45, line: 83, type: !58)
!182 = !DILocation(line: 83, column: 10, scope: !178)
!183 = !DILocation(line: 84, column: 12, scope: !178)
!184 = !DILocation(line: 84, column: 10, scope: !178)
!185 = !DILocalVariable(name: "dataLen", scope: !186, file: !45, line: 87, type: !66)
!186 = distinct !DILexicalBlock(scope: !178, file: !45, line: 85, column: 5)
!187 = !DILocation(line: 87, column: 16, scope: !186)
!188 = !DILocation(line: 87, column: 33, scope: !186)
!189 = !DILocation(line: 87, column: 26, scope: !186)
!190 = !DILocalVariable(name: "pFile", scope: !186, file: !45, line: 88, type: !73)
!191 = !DILocation(line: 88, column: 16, scope: !186)
!192 = !DILocation(line: 90, column: 17, scope: !193)
!193 = distinct !DILexicalBlock(scope: !186, file: !45, line: 90, column: 13)
!194 = !DILocation(line: 90, column: 16, scope: !193)
!195 = !DILocation(line: 90, column: 25, scope: !193)
!196 = !DILocation(line: 90, column: 13, scope: !186)
!197 = !DILocation(line: 92, column: 21, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !45, line: 91, column: 9)
!199 = !DILocation(line: 92, column: 19, scope: !198)
!200 = !DILocation(line: 93, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !45, line: 93, column: 17)
!202 = !DILocation(line: 93, column: 23, scope: !201)
!203 = !DILocation(line: 93, column: 17, scope: !198)
!204 = !DILocation(line: 96, column: 27, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !45, line: 96, column: 21)
!206 = distinct !DILexicalBlock(scope: !201, file: !45, line: 94, column: 13)
!207 = !DILocation(line: 96, column: 32, scope: !205)
!208 = !DILocation(line: 96, column: 31, scope: !205)
!209 = !DILocation(line: 96, column: 51, scope: !205)
!210 = !DILocation(line: 96, column: 50, scope: !205)
!211 = !DILocation(line: 96, column: 41, scope: !205)
!212 = !DILocation(line: 96, column: 61, scope: !205)
!213 = !DILocation(line: 96, column: 21, scope: !205)
!214 = !DILocation(line: 96, column: 68, scope: !205)
!215 = !DILocation(line: 96, column: 21, scope: !206)
!216 = !DILocation(line: 98, column: 21, scope: !217)
!217 = distinct !DILexicalBlock(scope: !205, file: !45, line: 97, column: 17)
!218 = !DILocation(line: 100, column: 21, scope: !217)
!219 = !DILocation(line: 100, column: 26, scope: !217)
!220 = !DILocation(line: 100, column: 35, scope: !217)
!221 = !DILocation(line: 101, column: 17, scope: !217)
!222 = !DILocation(line: 102, column: 24, scope: !206)
!223 = !DILocation(line: 102, column: 17, scope: !206)
!224 = !DILocation(line: 103, column: 13, scope: !206)
!225 = !DILocation(line: 104, column: 9, scope: !198)
!226 = !DILocation(line: 107, column: 20, scope: !178)
!227 = !DILocation(line: 107, column: 5, scope: !178)
!228 = !DILocation(line: 108, column: 1, scope: !178)
!229 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_01_good", scope: !45, file: !45, line: 110, type: !53, scopeLine: 111, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!230 = !DILocation(line: 112, column: 5, scope: !229)
!231 = !DILocation(line: 113, column: 5, scope: !229)
!232 = !DILocation(line: 114, column: 1, scope: !229)
!233 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !234, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!234 = !DISubroutineType(types: !235)
!235 = !{null, !42}
!236 = !DILocalVariable(name: "line", arg: 1, scope: !233, file: !3, line: 11, type: !42)
!237 = !DILocation(line: 11, column: 25, scope: !233)
!238 = !DILocation(line: 13, column: 1, scope: !233)
!239 = !DILocation(line: 14, column: 8, scope: !240)
!240 = distinct !DILexicalBlock(scope: !233, file: !3, line: 14, column: 8)
!241 = !DILocation(line: 14, column: 13, scope: !240)
!242 = !DILocation(line: 14, column: 8, scope: !233)
!243 = !DILocation(line: 16, column: 24, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !3, line: 15, column: 5)
!245 = !DILocation(line: 16, column: 9, scope: !244)
!246 = !DILocation(line: 17, column: 5, scope: !244)
!247 = !DILocation(line: 18, column: 5, scope: !233)
!248 = !DILocation(line: 19, column: 1, scope: !233)
!249 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !234, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!250 = !DILocalVariable(name: "line", arg: 1, scope: !249, file: !3, line: 20, type: !42)
!251 = !DILocation(line: 20, column: 29, scope: !249)
!252 = !DILocation(line: 22, column: 8, scope: !253)
!253 = distinct !DILexicalBlock(scope: !249, file: !3, line: 22, column: 8)
!254 = !DILocation(line: 22, column: 13, scope: !253)
!255 = !DILocation(line: 22, column: 8, scope: !249)
!256 = !DILocation(line: 24, column: 24, scope: !257)
!257 = distinct !DILexicalBlock(scope: !253, file: !3, line: 23, column: 5)
!258 = !DILocation(line: 24, column: 9, scope: !257)
!259 = !DILocation(line: 25, column: 5, scope: !257)
!260 = !DILocation(line: 26, column: 1, scope: !249)
!261 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !262, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !67, line: 74, baseType: !23)
!266 = !DILocalVariable(name: "line", arg: 1, scope: !261, file: !3, line: 27, type: !264)
!267 = !DILocation(line: 27, column: 29, scope: !261)
!268 = !DILocation(line: 29, column: 8, scope: !269)
!269 = distinct !DILexicalBlock(scope: !261, file: !3, line: 29, column: 8)
!270 = !DILocation(line: 29, column: 13, scope: !269)
!271 = !DILocation(line: 29, column: 8, scope: !261)
!272 = !DILocation(line: 31, column: 27, scope: !273)
!273 = distinct !DILexicalBlock(scope: !269, file: !3, line: 30, column: 5)
!274 = !DILocation(line: 31, column: 9, scope: !273)
!275 = !DILocation(line: 32, column: 5, scope: !273)
!276 = !DILocation(line: 33, column: 1, scope: !261)
!277 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !278, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !23}
!280 = !DILocalVariable(name: "intNumber", arg: 1, scope: !277, file: !3, line: 35, type: !23)
!281 = !DILocation(line: 35, column: 24, scope: !277)
!282 = !DILocation(line: 37, column: 20, scope: !277)
!283 = !DILocation(line: 37, column: 5, scope: !277)
!284 = !DILocation(line: 38, column: 1, scope: !277)
!285 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !286, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !288}
!288 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!289 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !285, file: !3, line: 40, type: !288)
!290 = !DILocation(line: 40, column: 28, scope: !285)
!291 = !DILocation(line: 42, column: 21, scope: !285)
!292 = !DILocation(line: 42, column: 5, scope: !285)
!293 = !DILocation(line: 43, column: 1, scope: !285)
!294 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !295, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !297}
!297 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!298 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !294, file: !3, line: 45, type: !297)
!299 = !DILocation(line: 45, column: 28, scope: !294)
!300 = !DILocation(line: 47, column: 20, scope: !294)
!301 = !DILocation(line: 47, column: 5, scope: !294)
!302 = !DILocation(line: 48, column: 1, scope: !294)
!303 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !304, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!304 = !DISubroutineType(types: !305)
!305 = !{null, !101}
!306 = !DILocalVariable(name: "longNumber", arg: 1, scope: !303, file: !3, line: 50, type: !101)
!307 = !DILocation(line: 50, column: 26, scope: !303)
!308 = !DILocation(line: 52, column: 21, scope: !303)
!309 = !DILocation(line: 52, column: 5, scope: !303)
!310 = !DILocation(line: 53, column: 1, scope: !303)
!311 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !312, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!312 = !DISubroutineType(types: !313)
!313 = !{null, !314}
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !315, line: 27, baseType: !316)
!315 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !100, line: 44, baseType: !101)
!317 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !311, file: !3, line: 55, type: !314)
!318 = !DILocation(line: 55, column: 33, scope: !311)
!319 = !DILocation(line: 57, column: 29, scope: !311)
!320 = !DILocation(line: 57, column: 5, scope: !311)
!321 = !DILocation(line: 58, column: 1, scope: !311)
!322 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !323, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!323 = !DISubroutineType(types: !324)
!324 = !{null, !66}
!325 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !322, file: !3, line: 60, type: !66)
!326 = !DILocation(line: 60, column: 29, scope: !322)
!327 = !DILocation(line: 62, column: 21, scope: !322)
!328 = !DILocation(line: 62, column: 5, scope: !322)
!329 = !DILocation(line: 63, column: 1, scope: !322)
!330 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !331, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !43}
!333 = !DILocalVariable(name: "charHex", arg: 1, scope: !330, file: !3, line: 65, type: !43)
!334 = !DILocation(line: 65, column: 29, scope: !330)
!335 = !DILocation(line: 67, column: 22, scope: !330)
!336 = !DILocation(line: 67, column: 5, scope: !330)
!337 = !DILocation(line: 68, column: 1, scope: !330)
!338 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !339, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !265}
!341 = !DILocalVariable(name: "wideChar", arg: 1, scope: !338, file: !3, line: 70, type: !265)
!342 = !DILocation(line: 70, column: 29, scope: !338)
!343 = !DILocalVariable(name: "s", scope: !338, file: !3, line: 74, type: !344)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 64, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 2)
!347 = !DILocation(line: 74, column: 13, scope: !338)
!348 = !DILocation(line: 75, column: 16, scope: !338)
!349 = !DILocation(line: 75, column: 9, scope: !338)
!350 = !DILocation(line: 75, column: 14, scope: !338)
!351 = !DILocation(line: 76, column: 9, scope: !338)
!352 = !DILocation(line: 76, column: 14, scope: !338)
!353 = !DILocation(line: 77, column: 21, scope: !338)
!354 = !DILocation(line: 77, column: 5, scope: !338)
!355 = !DILocation(line: 78, column: 1, scope: !338)
!356 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !357, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !7}
!359 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !356, file: !3, line: 80, type: !7)
!360 = !DILocation(line: 80, column: 33, scope: !356)
!361 = !DILocation(line: 82, column: 20, scope: !356)
!362 = !DILocation(line: 82, column: 5, scope: !356)
!363 = !DILocation(line: 83, column: 1, scope: !356)
!364 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !365, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !25}
!367 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !364, file: !3, line: 85, type: !25)
!368 = !DILocation(line: 85, column: 45, scope: !364)
!369 = !DILocation(line: 87, column: 22, scope: !364)
!370 = !DILocation(line: 87, column: 5, scope: !364)
!371 = !DILocation(line: 88, column: 1, scope: !364)
!372 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !373, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !375}
!375 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!376 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !372, file: !3, line: 90, type: !375)
!377 = !DILocation(line: 90, column: 29, scope: !372)
!378 = !DILocation(line: 92, column: 20, scope: !372)
!379 = !DILocation(line: 92, column: 5, scope: !372)
!380 = !DILocation(line: 93, column: 1, scope: !372)
!381 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !382, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !386, line: 100, baseType: !387)
!386 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_010/source_code")
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !386, line: 96, size: 64, elements: !388)
!388 = !{!389, !390}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !387, file: !386, line: 98, baseType: !23, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !387, file: !386, line: 99, baseType: !23, size: 32, offset: 32)
!391 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !381, file: !3, line: 95, type: !384)
!392 = !DILocation(line: 95, column: 40, scope: !381)
!393 = !DILocation(line: 97, column: 26, scope: !381)
!394 = !DILocation(line: 97, column: 47, scope: !381)
!395 = !DILocation(line: 97, column: 55, scope: !381)
!396 = !DILocation(line: 97, column: 76, scope: !381)
!397 = !DILocation(line: 97, column: 5, scope: !381)
!398 = !DILocation(line: 98, column: 1, scope: !381)
!399 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !400, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !402, !66}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!403 = !DILocalVariable(name: "bytes", arg: 1, scope: !399, file: !3, line: 100, type: !402)
!404 = !DILocation(line: 100, column: 38, scope: !399)
!405 = !DILocalVariable(name: "numBytes", arg: 2, scope: !399, file: !3, line: 100, type: !66)
!406 = !DILocation(line: 100, column: 52, scope: !399)
!407 = !DILocalVariable(name: "i", scope: !399, file: !3, line: 102, type: !66)
!408 = !DILocation(line: 102, column: 12, scope: !399)
!409 = !DILocation(line: 103, column: 12, scope: !410)
!410 = distinct !DILexicalBlock(scope: !399, file: !3, line: 103, column: 5)
!411 = !DILocation(line: 103, column: 10, scope: !410)
!412 = !DILocation(line: 103, column: 17, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !3, line: 103, column: 5)
!414 = !DILocation(line: 103, column: 21, scope: !413)
!415 = !DILocation(line: 103, column: 19, scope: !413)
!416 = !DILocation(line: 103, column: 5, scope: !410)
!417 = !DILocation(line: 105, column: 24, scope: !418)
!418 = distinct !DILexicalBlock(scope: !413, file: !3, line: 104, column: 5)
!419 = !DILocation(line: 105, column: 30, scope: !418)
!420 = !DILocation(line: 105, column: 9, scope: !418)
!421 = !DILocation(line: 106, column: 5, scope: !418)
!422 = !DILocation(line: 103, column: 31, scope: !413)
!423 = !DILocation(line: 103, column: 5, scope: !413)
!424 = distinct !{!424, !416, !425, !426}
!425 = !DILocation(line: 106, column: 5, scope: !410)
!426 = !{!"llvm.loop.mustprogress"}
!427 = !DILocation(line: 107, column: 5, scope: !399)
!428 = !DILocation(line: 108, column: 1, scope: !399)
!429 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !430, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!430 = !DISubroutineType(types: !431)
!431 = !{!66, !402, !66, !42}
!432 = !DILocalVariable(name: "bytes", arg: 1, scope: !429, file: !3, line: 113, type: !402)
!433 = !DILocation(line: 113, column: 39, scope: !429)
!434 = !DILocalVariable(name: "numBytes", arg: 2, scope: !429, file: !3, line: 113, type: !66)
!435 = !DILocation(line: 113, column: 53, scope: !429)
!436 = !DILocalVariable(name: "hex", arg: 3, scope: !429, file: !3, line: 113, type: !42)
!437 = !DILocation(line: 113, column: 71, scope: !429)
!438 = !DILocalVariable(name: "numWritten", scope: !429, file: !3, line: 115, type: !66)
!439 = !DILocation(line: 115, column: 12, scope: !429)
!440 = !DILocation(line: 121, column: 5, scope: !429)
!441 = !DILocation(line: 121, column: 12, scope: !429)
!442 = !DILocation(line: 121, column: 25, scope: !429)
!443 = !DILocation(line: 121, column: 23, scope: !429)
!444 = !DILocation(line: 121, column: 34, scope: !429)
!445 = !DILocation(line: 121, column: 37, scope: !429)
!446 = !DILocation(line: 121, column: 67, scope: !429)
!447 = !DILocation(line: 121, column: 70, scope: !429)
!448 = !DILocation(line: 0, scope: !429)
!449 = !DILocalVariable(name: "byte", scope: !450, file: !3, line: 123, type: !23)
!450 = distinct !DILexicalBlock(scope: !429, file: !3, line: 122, column: 5)
!451 = !DILocation(line: 123, column: 13, scope: !450)
!452 = !DILocation(line: 124, column: 17, scope: !450)
!453 = !DILocation(line: 124, column: 25, scope: !450)
!454 = !DILocation(line: 124, column: 23, scope: !450)
!455 = !DILocation(line: 124, column: 9, scope: !450)
!456 = !DILocation(line: 125, column: 45, scope: !450)
!457 = !DILocation(line: 125, column: 29, scope: !450)
!458 = !DILocation(line: 125, column: 9, scope: !450)
!459 = !DILocation(line: 125, column: 15, scope: !450)
!460 = !DILocation(line: 125, column: 27, scope: !450)
!461 = !DILocation(line: 126, column: 9, scope: !450)
!462 = distinct !{!462, !440, !463, !426}
!463 = !DILocation(line: 127, column: 5, scope: !429)
!464 = !DILocation(line: 129, column: 12, scope: !429)
!465 = !DILocation(line: 129, column: 5, scope: !429)
!466 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !467, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!467 = !DISubroutineType(types: !468)
!468 = !{!66, !402, !66, !264}
!469 = !DILocalVariable(name: "bytes", arg: 1, scope: !466, file: !3, line: 135, type: !402)
!470 = !DILocation(line: 135, column: 41, scope: !466)
!471 = !DILocalVariable(name: "numBytes", arg: 2, scope: !466, file: !3, line: 135, type: !66)
!472 = !DILocation(line: 135, column: 55, scope: !466)
!473 = !DILocalVariable(name: "hex", arg: 3, scope: !466, file: !3, line: 135, type: !264)
!474 = !DILocation(line: 135, column: 76, scope: !466)
!475 = !DILocalVariable(name: "numWritten", scope: !466, file: !3, line: 137, type: !66)
!476 = !DILocation(line: 137, column: 12, scope: !466)
!477 = !DILocation(line: 143, column: 5, scope: !466)
!478 = !DILocation(line: 143, column: 12, scope: !466)
!479 = !DILocation(line: 143, column: 25, scope: !466)
!480 = !DILocation(line: 143, column: 23, scope: !466)
!481 = !DILocation(line: 143, column: 34, scope: !466)
!482 = !DILocation(line: 143, column: 47, scope: !466)
!483 = !DILocation(line: 143, column: 55, scope: !466)
!484 = !DILocation(line: 143, column: 53, scope: !466)
!485 = !DILocation(line: 143, column: 37, scope: !466)
!486 = !DILocation(line: 143, column: 68, scope: !466)
!487 = !DILocation(line: 143, column: 81, scope: !466)
!488 = !DILocation(line: 143, column: 89, scope: !466)
!489 = !DILocation(line: 143, column: 87, scope: !466)
!490 = !DILocation(line: 143, column: 100, scope: !466)
!491 = !DILocation(line: 143, column: 71, scope: !466)
!492 = !DILocation(line: 0, scope: !466)
!493 = !DILocalVariable(name: "byte", scope: !494, file: !3, line: 145, type: !23)
!494 = distinct !DILexicalBlock(scope: !466, file: !3, line: 144, column: 5)
!495 = !DILocation(line: 145, column: 13, scope: !494)
!496 = !DILocation(line: 146, column: 18, scope: !494)
!497 = !DILocation(line: 146, column: 26, scope: !494)
!498 = !DILocation(line: 146, column: 24, scope: !494)
!499 = !DILocation(line: 146, column: 9, scope: !494)
!500 = !DILocation(line: 147, column: 45, scope: !494)
!501 = !DILocation(line: 147, column: 29, scope: !494)
!502 = !DILocation(line: 147, column: 9, scope: !494)
!503 = !DILocation(line: 147, column: 15, scope: !494)
!504 = !DILocation(line: 147, column: 27, scope: !494)
!505 = !DILocation(line: 148, column: 9, scope: !494)
!506 = distinct !{!506, !477, !507, !426}
!507 = !DILocation(line: 149, column: 5, scope: !466)
!508 = !DILocation(line: 151, column: 12, scope: !466)
!509 = !DILocation(line: 151, column: 5, scope: !466)
!510 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !511, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!511 = !DISubroutineType(types: !512)
!512 = !{!23}
!513 = !DILocation(line: 158, column: 5, scope: !510)
!514 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !511, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!515 = !DILocation(line: 163, column: 5, scope: !514)
!516 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !511, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!517 = !DILocation(line: 168, column: 13, scope: !516)
!518 = !DILocation(line: 168, column: 20, scope: !516)
!519 = !DILocation(line: 168, column: 5, scope: !516)
!520 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!521 = !DILocation(line: 187, column: 16, scope: !520)
!522 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!523 = !DILocation(line: 188, column: 16, scope: !522)
!524 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!525 = !DILocation(line: 189, column: 16, scope: !524)
!526 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!527 = !DILocation(line: 190, column: 16, scope: !526)
!528 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!529 = !DILocation(line: 191, column: 16, scope: !528)
!530 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!531 = !DILocation(line: 192, column: 16, scope: !530)
!532 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!533 = !DILocation(line: 193, column: 16, scope: !532)
!534 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!535 = !DILocation(line: 194, column: 16, scope: !534)
!536 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!537 = !DILocation(line: 195, column: 16, scope: !536)
!538 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!539 = !DILocation(line: 198, column: 15, scope: !538)
!540 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DILocation(line: 199, column: 15, scope: !540)
!542 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DILocation(line: 200, column: 15, scope: !542)
!544 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DILocation(line: 201, column: 15, scope: !544)
!546 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 202, column: 15, scope: !546)
!548 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DILocation(line: 203, column: 15, scope: !548)
!550 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocation(line: 204, column: 15, scope: !550)
!552 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 205, column: 15, scope: !552)
!554 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 206, column: 15, scope: !554)
