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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_15_bad() #0 !dbg !52 {
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
define dso_local void @goodB2G1() #0 !dbg !166 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !170
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !170
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !171
  store i8* %arraydecay, i8** %data, align 8, !dbg !172
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !173, metadata !DIExpression()), !dbg !175
  %1 = load i8*, i8** %data, align 8, !dbg !176
  %call = call i64 @strlen(i8* %1) #7, !dbg !177
  store i64 %call, i64* %dataLen, align 8, !dbg !175
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !178, metadata !DIExpression()), !dbg !179
  %2 = load i64, i64* %dataLen, align 8, !dbg !180
  %sub = sub i64 100, %2, !dbg !182
  %cmp = icmp ugt i64 %sub, 1, !dbg !183
  br i1 %cmp, label %if.then, label %if.end11, !dbg !184

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !185
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !187
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !188
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !190
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !191

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !192
  %5 = load i64, i64* %dataLen, align 8, !dbg !195
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !196
  %6 = load i64, i64* %dataLen, align 8, !dbg !197
  %sub4 = sub i64 100, %6, !dbg !198
  %conv = trunc i64 %sub4 to i32, !dbg !199
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !200
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !201
  %cmp6 = icmp eq i8* %call5, null, !dbg !202
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !203

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !204
  %8 = load i8*, i8** %data, align 8, !dbg !206
  %9 = load i64, i64* %dataLen, align 8, !dbg !207
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !206
  store i8 0, i8* %arrayidx, align 1, !dbg !208
  br label %if.end, !dbg !209

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !210
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !211
  br label %if.end10, !dbg !212

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !213

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !214
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %11), !dbg !215
  ret void, !dbg !216
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !217 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !220, metadata !DIExpression()), !dbg !221
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !221
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !221
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !222
  store i8* %arraydecay, i8** %data, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !224, metadata !DIExpression()), !dbg !226
  %1 = load i8*, i8** %data, align 8, !dbg !227
  %call = call i64 @strlen(i8* %1) #7, !dbg !228
  store i64 %call, i64* %dataLen, align 8, !dbg !226
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !229, metadata !DIExpression()), !dbg !230
  %2 = load i64, i64* %dataLen, align 8, !dbg !231
  %sub = sub i64 100, %2, !dbg !233
  %cmp = icmp ugt i64 %sub, 1, !dbg !234
  br i1 %cmp, label %if.then, label %if.end11, !dbg !235

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !236
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !238
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !239
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !241
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !242

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !243
  %5 = load i64, i64* %dataLen, align 8, !dbg !246
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !247
  %6 = load i64, i64* %dataLen, align 8, !dbg !248
  %sub4 = sub i64 100, %6, !dbg !249
  %conv = trunc i64 %sub4 to i32, !dbg !250
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !251
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !252
  %cmp6 = icmp eq i8* %call5, null, !dbg !253
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !254

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !255
  %8 = load i8*, i8** %data, align 8, !dbg !257
  %9 = load i64, i64* %dataLen, align 8, !dbg !258
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !257
  store i8 0, i8* %arrayidx, align 1, !dbg !259
  br label %if.end, !dbg !260

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !261
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !262
  br label %if.end10, !dbg !263

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !264

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !265
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %11), !dbg !266
  ret void, !dbg !267
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !268 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !269, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !271, metadata !DIExpression()), !dbg !272
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !272
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !272
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !273
  store i8* %arraydecay, i8** %data, align 8, !dbg !274
  %1 = load i8*, i8** %data, align 8, !dbg !275
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !276
  %2 = load i8*, i8** %data, align 8, !dbg !277
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !278
  ret void, !dbg !279
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !280 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !281, metadata !DIExpression()), !dbg !282
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !283, metadata !DIExpression()), !dbg !284
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !284
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !284
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !285
  store i8* %arraydecay, i8** %data, align 8, !dbg !286
  %1 = load i8*, i8** %data, align 8, !dbg !287
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !288
  %2 = load i8*, i8** %data, align 8, !dbg !289
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !290
  ret void, !dbg !291
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_15_good() #0 !dbg !292 {
entry:
  call void @goodB2G1(), !dbg !293
  call void @goodB2G2(), !dbg !294
  call void @goodG2B1(), !dbg !295
  call void @goodG2B2(), !dbg !296
  ret void, !dbg !297
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !298 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !301, metadata !DIExpression()), !dbg !302
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !303
  %0 = load i8*, i8** %line.addr, align 8, !dbg !304
  %cmp = icmp ne i8* %0, null, !dbg !306
  br i1 %cmp, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !308
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !310
  br label %if.end, !dbg !311

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !312
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !314 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !315, metadata !DIExpression()), !dbg !316
  %0 = load i8*, i8** %line.addr, align 8, !dbg !317
  %cmp = icmp ne i8* %0, null, !dbg !319
  br i1 %cmp, label %if.then, label %if.end, !dbg !320

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !321
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !323
  br label %if.end, !dbg !324

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !325
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !326 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !331, metadata !DIExpression()), !dbg !332
  %0 = load i32*, i32** %line.addr, align 8, !dbg !333
  %cmp = icmp ne i32* %0, null, !dbg !335
  br i1 %cmp, label %if.then, label %if.end, !dbg !336

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !337
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !339
  br label %if.end, !dbg !340

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !341
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !342 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !345, metadata !DIExpression()), !dbg !346
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !347
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.9, i64 0, i64 0), i32 %0), !dbg !348
  ret void, !dbg !349
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !350 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !354, metadata !DIExpression()), !dbg !355
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !356
  %conv = sext i16 %0 to i32, !dbg !356
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.10, i64 0, i64 0), i32 %conv), !dbg !357
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !359 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !365
  %conv = fpext float %0 to double, !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !368 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !371, metadata !DIExpression()), !dbg !372
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !373
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !374
  ret void, !dbg !375
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !376 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !384
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !385
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !387 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !392
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !393
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !395 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !400
  %conv = sext i8 %0 to i32, !dbg !400
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !401
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !403 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !406, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !408, metadata !DIExpression()), !dbg !412
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !413
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !414
  store i32 %0, i32* %arrayidx, align 4, !dbg !415
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !416
  store i32 0, i32* %arrayidx1, align 4, !dbg !417
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !418
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !421 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !426
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !427
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !429 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !432, metadata !DIExpression()), !dbg !433
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !434
  %conv = zext i8 %0 to i32, !dbg !434
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !435
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !437 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !443
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !444
  ret void, !dbg !445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !446 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !456, metadata !DIExpression()), !dbg !457
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !458
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !459
  %1 = load i32, i32* %intOne, align 4, !dbg !459
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !460
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !461
  %3 = load i32, i32* %intTwo, align 4, !dbg !461
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !464 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !468, metadata !DIExpression()), !dbg !469
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !470, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.declare(metadata i64* %i, metadata !472, metadata !DIExpression()), !dbg !473
  store i64 0, i64* %i, align 8, !dbg !474
  br label %for.cond, !dbg !476

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !477
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !479
  %cmp = icmp ult i64 %0, %1, !dbg !480
  br i1 %cmp, label %for.body, label %for.end, !dbg !481

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !482
  %3 = load i64, i64* %i, align 8, !dbg !484
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !482
  %4 = load i8, i8* %arrayidx, align 1, !dbg !482
  %conv = zext i8 %4 to i32, !dbg !482
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !485
  br label %for.inc, !dbg !486

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !487
  %inc = add i64 %5, 1, !dbg !487
  store i64 %inc, i64* %i, align 8, !dbg !487
  br label %for.cond, !dbg !488, !llvm.loop !489

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !492
  ret void, !dbg !493
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !494 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !497, metadata !DIExpression()), !dbg !498
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !499, metadata !DIExpression()), !dbg !500
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !501, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !503, metadata !DIExpression()), !dbg !504
  store i64 0, i64* %numWritten, align 8, !dbg !504
  br label %while.cond, !dbg !505

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !506
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !507
  %cmp = icmp ult i64 %0, %1, !dbg !508
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !509

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !510
  %2 = load i16*, i16** %call, align 8, !dbg !510
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !510
  %4 = load i64, i64* %numWritten, align 8, !dbg !510
  %mul = mul i64 2, %4, !dbg !510
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !510
  %5 = load i8, i8* %arrayidx, align 1, !dbg !510
  %conv = sext i8 %5 to i32, !dbg !510
  %idxprom = sext i32 %conv to i64, !dbg !510
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !510
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !510
  %conv2 = zext i16 %6 to i32, !dbg !510
  %and = and i32 %conv2, 4096, !dbg !510
  %tobool = icmp ne i32 %and, 0, !dbg !510
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !511

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !512
  %7 = load i16*, i16** %call3, align 8, !dbg !512
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !512
  %9 = load i64, i64* %numWritten, align 8, !dbg !512
  %mul4 = mul i64 2, %9, !dbg !512
  %add = add i64 %mul4, 1, !dbg !512
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !512
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !512
  %conv6 = sext i8 %10 to i32, !dbg !512
  %idxprom7 = sext i32 %conv6 to i64, !dbg !512
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !512
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !512
  %conv9 = zext i16 %11 to i32, !dbg !512
  %and10 = and i32 %conv9, 4096, !dbg !512
  %tobool11 = icmp ne i32 %and10, 0, !dbg !511
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !513
  br i1 %12, label %while.body, label %while.end, !dbg !505

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !514, metadata !DIExpression()), !dbg !516
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !517
  %14 = load i64, i64* %numWritten, align 8, !dbg !518
  %mul12 = mul i64 2, %14, !dbg !519
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !517
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !520
  %15 = load i32, i32* %byte, align 4, !dbg !521
  %conv15 = trunc i32 %15 to i8, !dbg !522
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !523
  %17 = load i64, i64* %numWritten, align 8, !dbg !524
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !523
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !525
  %18 = load i64, i64* %numWritten, align 8, !dbg !526
  %inc = add i64 %18, 1, !dbg !526
  store i64 %inc, i64* %numWritten, align 8, !dbg !526
  br label %while.cond, !dbg !505, !llvm.loop !527

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !529
  ret i64 %19, !dbg !530
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !531 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !534, metadata !DIExpression()), !dbg !535
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !536, metadata !DIExpression()), !dbg !537
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !538, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !540, metadata !DIExpression()), !dbg !541
  store i64 0, i64* %numWritten, align 8, !dbg !541
  br label %while.cond, !dbg !542

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !543
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !544
  %cmp = icmp ult i64 %0, %1, !dbg !545
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !546

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !547
  %3 = load i64, i64* %numWritten, align 8, !dbg !548
  %mul = mul i64 2, %3, !dbg !549
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !547
  %4 = load i32, i32* %arrayidx, align 4, !dbg !547
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !550
  %tobool = icmp ne i32 %call, 0, !dbg !550
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !551

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !552
  %6 = load i64, i64* %numWritten, align 8, !dbg !553
  %mul1 = mul i64 2, %6, !dbg !554
  %add = add i64 %mul1, 1, !dbg !555
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !552
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !552
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !556
  %tobool4 = icmp ne i32 %call3, 0, !dbg !551
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !557
  br i1 %8, label %while.body, label %while.end, !dbg !542

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !558, metadata !DIExpression()), !dbg !560
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !561
  %10 = load i64, i64* %numWritten, align 8, !dbg !562
  %mul5 = mul i64 2, %10, !dbg !563
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !561
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !564
  %11 = load i32, i32* %byte, align 4, !dbg !565
  %conv = trunc i32 %11 to i8, !dbg !566
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !567
  %13 = load i64, i64* %numWritten, align 8, !dbg !568
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !567
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !569
  %14 = load i64, i64* %numWritten, align 8, !dbg !570
  %inc = add i64 %14, 1, !dbg !570
  store i64 %inc, i64* %numWritten, align 8, !dbg !570
  br label %while.cond, !dbg !542, !llvm.loop !571

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !573
  ret i64 %15, !dbg !574
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !575 {
entry:
  ret i32 1, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !579 {
entry:
  ret i32 0, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !581 {
entry:
  %call = call i32 @rand() #8, !dbg !582
  %rem = srem i32 %call, 2, !dbg !583
  ret i32 %rem, !dbg !584
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !619 {
entry:
  ret void, !dbg !620
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_024/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_024/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_15_bad", scope: !45, file: !45, line: 33, type: !53, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 43, type: !66)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 41, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocation(line: 43, column: 16, scope: !65)
!70 = !DILocation(line: 43, column: 33, scope: !65)
!71 = !DILocation(line: 43, column: 26, scope: !65)
!72 = !DILocalVariable(name: "pFile", scope: !65, file: !45, line: 44, type: !73)
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
!128 = !DILocation(line: 44, column: 16, scope: !65)
!129 = !DILocation(line: 46, column: 17, scope: !130)
!130 = distinct !DILexicalBlock(scope: !65, file: !45, line: 46, column: 13)
!131 = !DILocation(line: 46, column: 16, scope: !130)
!132 = !DILocation(line: 46, column: 25, scope: !130)
!133 = !DILocation(line: 46, column: 13, scope: !65)
!134 = !DILocation(line: 48, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !45, line: 47, column: 9)
!136 = !DILocation(line: 48, column: 19, scope: !135)
!137 = !DILocation(line: 49, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !45, line: 49, column: 17)
!139 = !DILocation(line: 49, column: 23, scope: !138)
!140 = !DILocation(line: 49, column: 17, scope: !135)
!141 = !DILocation(line: 52, column: 27, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !45, line: 52, column: 21)
!143 = distinct !DILexicalBlock(scope: !138, file: !45, line: 50, column: 13)
!144 = !DILocation(line: 52, column: 32, scope: !142)
!145 = !DILocation(line: 52, column: 31, scope: !142)
!146 = !DILocation(line: 52, column: 51, scope: !142)
!147 = !DILocation(line: 52, column: 50, scope: !142)
!148 = !DILocation(line: 52, column: 41, scope: !142)
!149 = !DILocation(line: 52, column: 61, scope: !142)
!150 = !DILocation(line: 52, column: 21, scope: !142)
!151 = !DILocation(line: 52, column: 68, scope: !142)
!152 = !DILocation(line: 52, column: 21, scope: !143)
!153 = !DILocation(line: 54, column: 21, scope: !154)
!154 = distinct !DILexicalBlock(scope: !142, file: !45, line: 53, column: 17)
!155 = !DILocation(line: 56, column: 21, scope: !154)
!156 = !DILocation(line: 56, column: 26, scope: !154)
!157 = !DILocation(line: 56, column: 35, scope: !154)
!158 = !DILocation(line: 57, column: 17, scope: !154)
!159 = !DILocation(line: 58, column: 24, scope: !143)
!160 = !DILocation(line: 58, column: 17, scope: !143)
!161 = !DILocation(line: 59, column: 13, scope: !143)
!162 = !DILocation(line: 60, column: 9, scope: !135)
!163 = !DILocation(line: 72, column: 16, scope: !52)
!164 = !DILocation(line: 72, column: 9, scope: !52)
!165 = !DILocation(line: 79, column: 1, scope: !52)
!166 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 86, type: !53, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!167 = !DILocalVariable(name: "data", scope: !166, file: !45, line: 88, type: !42)
!168 = !DILocation(line: 88, column: 12, scope: !166)
!169 = !DILocalVariable(name: "dataBuffer", scope: !166, file: !45, line: 89, type: !58)
!170 = !DILocation(line: 89, column: 10, scope: !166)
!171 = !DILocation(line: 90, column: 12, scope: !166)
!172 = !DILocation(line: 90, column: 10, scope: !166)
!173 = !DILocalVariable(name: "dataLen", scope: !174, file: !45, line: 96, type: !66)
!174 = distinct !DILexicalBlock(scope: !166, file: !45, line: 94, column: 5)
!175 = !DILocation(line: 96, column: 16, scope: !174)
!176 = !DILocation(line: 96, column: 33, scope: !174)
!177 = !DILocation(line: 96, column: 26, scope: !174)
!178 = !DILocalVariable(name: "pFile", scope: !174, file: !45, line: 97, type: !73)
!179 = !DILocation(line: 97, column: 16, scope: !174)
!180 = !DILocation(line: 99, column: 17, scope: !181)
!181 = distinct !DILexicalBlock(scope: !174, file: !45, line: 99, column: 13)
!182 = !DILocation(line: 99, column: 16, scope: !181)
!183 = !DILocation(line: 99, column: 25, scope: !181)
!184 = !DILocation(line: 99, column: 13, scope: !174)
!185 = !DILocation(line: 101, column: 21, scope: !186)
!186 = distinct !DILexicalBlock(scope: !181, file: !45, line: 100, column: 9)
!187 = !DILocation(line: 101, column: 19, scope: !186)
!188 = !DILocation(line: 102, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !186, file: !45, line: 102, column: 17)
!190 = !DILocation(line: 102, column: 23, scope: !189)
!191 = !DILocation(line: 102, column: 17, scope: !186)
!192 = !DILocation(line: 105, column: 27, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !45, line: 105, column: 21)
!194 = distinct !DILexicalBlock(scope: !189, file: !45, line: 103, column: 13)
!195 = !DILocation(line: 105, column: 32, scope: !193)
!196 = !DILocation(line: 105, column: 31, scope: !193)
!197 = !DILocation(line: 105, column: 51, scope: !193)
!198 = !DILocation(line: 105, column: 50, scope: !193)
!199 = !DILocation(line: 105, column: 41, scope: !193)
!200 = !DILocation(line: 105, column: 61, scope: !193)
!201 = !DILocation(line: 105, column: 21, scope: !193)
!202 = !DILocation(line: 105, column: 68, scope: !193)
!203 = !DILocation(line: 105, column: 21, scope: !194)
!204 = !DILocation(line: 107, column: 21, scope: !205)
!205 = distinct !DILexicalBlock(scope: !193, file: !45, line: 106, column: 17)
!206 = !DILocation(line: 109, column: 21, scope: !205)
!207 = !DILocation(line: 109, column: 26, scope: !205)
!208 = !DILocation(line: 109, column: 35, scope: !205)
!209 = !DILocation(line: 110, column: 17, scope: !205)
!210 = !DILocation(line: 111, column: 24, scope: !194)
!211 = !DILocation(line: 111, column: 17, scope: !194)
!212 = !DILocation(line: 112, column: 13, scope: !194)
!213 = !DILocation(line: 113, column: 9, scope: !186)
!214 = !DILocation(line: 129, column: 24, scope: !166)
!215 = !DILocation(line: 129, column: 9, scope: !166)
!216 = !DILocation(line: 132, column: 1, scope: !166)
!217 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 135, type: !53, scopeLine: 136, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!218 = !DILocalVariable(name: "data", scope: !217, file: !45, line: 137, type: !42)
!219 = !DILocation(line: 137, column: 12, scope: !217)
!220 = !DILocalVariable(name: "dataBuffer", scope: !217, file: !45, line: 138, type: !58)
!221 = !DILocation(line: 138, column: 10, scope: !217)
!222 = !DILocation(line: 139, column: 12, scope: !217)
!223 = !DILocation(line: 139, column: 10, scope: !217)
!224 = !DILocalVariable(name: "dataLen", scope: !225, file: !45, line: 145, type: !66)
!225 = distinct !DILexicalBlock(scope: !217, file: !45, line: 143, column: 5)
!226 = !DILocation(line: 145, column: 16, scope: !225)
!227 = !DILocation(line: 145, column: 33, scope: !225)
!228 = !DILocation(line: 145, column: 26, scope: !225)
!229 = !DILocalVariable(name: "pFile", scope: !225, file: !45, line: 146, type: !73)
!230 = !DILocation(line: 146, column: 16, scope: !225)
!231 = !DILocation(line: 148, column: 17, scope: !232)
!232 = distinct !DILexicalBlock(scope: !225, file: !45, line: 148, column: 13)
!233 = !DILocation(line: 148, column: 16, scope: !232)
!234 = !DILocation(line: 148, column: 25, scope: !232)
!235 = !DILocation(line: 148, column: 13, scope: !225)
!236 = !DILocation(line: 150, column: 21, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !45, line: 149, column: 9)
!238 = !DILocation(line: 150, column: 19, scope: !237)
!239 = !DILocation(line: 151, column: 17, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !45, line: 151, column: 17)
!241 = !DILocation(line: 151, column: 23, scope: !240)
!242 = !DILocation(line: 151, column: 17, scope: !237)
!243 = !DILocation(line: 154, column: 27, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !45, line: 154, column: 21)
!245 = distinct !DILexicalBlock(scope: !240, file: !45, line: 152, column: 13)
!246 = !DILocation(line: 154, column: 32, scope: !244)
!247 = !DILocation(line: 154, column: 31, scope: !244)
!248 = !DILocation(line: 154, column: 51, scope: !244)
!249 = !DILocation(line: 154, column: 50, scope: !244)
!250 = !DILocation(line: 154, column: 41, scope: !244)
!251 = !DILocation(line: 154, column: 61, scope: !244)
!252 = !DILocation(line: 154, column: 21, scope: !244)
!253 = !DILocation(line: 154, column: 68, scope: !244)
!254 = !DILocation(line: 154, column: 21, scope: !245)
!255 = !DILocation(line: 156, column: 21, scope: !256)
!256 = distinct !DILexicalBlock(scope: !244, file: !45, line: 155, column: 17)
!257 = !DILocation(line: 158, column: 21, scope: !256)
!258 = !DILocation(line: 158, column: 26, scope: !256)
!259 = !DILocation(line: 158, column: 35, scope: !256)
!260 = !DILocation(line: 159, column: 17, scope: !256)
!261 = !DILocation(line: 160, column: 24, scope: !245)
!262 = !DILocation(line: 160, column: 17, scope: !245)
!263 = !DILocation(line: 161, column: 13, scope: !245)
!264 = !DILocation(line: 162, column: 9, scope: !237)
!265 = !DILocation(line: 174, column: 24, scope: !217)
!266 = !DILocation(line: 174, column: 9, scope: !217)
!267 = !DILocation(line: 181, column: 1, scope: !217)
!268 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 184, type: !53, scopeLine: 185, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!269 = !DILocalVariable(name: "data", scope: !268, file: !45, line: 186, type: !42)
!270 = !DILocation(line: 186, column: 12, scope: !268)
!271 = !DILocalVariable(name: "dataBuffer", scope: !268, file: !45, line: 187, type: !58)
!272 = !DILocation(line: 187, column: 10, scope: !268)
!273 = !DILocation(line: 188, column: 12, scope: !268)
!274 = !DILocation(line: 188, column: 10, scope: !268)
!275 = !DILocation(line: 197, column: 16, scope: !268)
!276 = !DILocation(line: 197, column: 9, scope: !268)
!277 = !DILocation(line: 204, column: 16, scope: !268)
!278 = !DILocation(line: 204, column: 9, scope: !268)
!279 = !DILocation(line: 211, column: 1, scope: !268)
!280 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 214, type: !53, scopeLine: 215, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!281 = !DILocalVariable(name: "data", scope: !280, file: !45, line: 216, type: !42)
!282 = !DILocation(line: 216, column: 12, scope: !280)
!283 = !DILocalVariable(name: "dataBuffer", scope: !280, file: !45, line: 217, type: !58)
!284 = !DILocation(line: 217, column: 10, scope: !280)
!285 = !DILocation(line: 218, column: 12, scope: !280)
!286 = !DILocation(line: 218, column: 10, scope: !280)
!287 = !DILocation(line: 223, column: 16, scope: !280)
!288 = !DILocation(line: 223, column: 9, scope: !280)
!289 = !DILocation(line: 234, column: 16, scope: !280)
!290 = !DILocation(line: 234, column: 9, scope: !280)
!291 = !DILocation(line: 241, column: 1, scope: !280)
!292 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_15_good", scope: !45, file: !45, line: 243, type: !53, scopeLine: 244, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!293 = !DILocation(line: 245, column: 5, scope: !292)
!294 = !DILocation(line: 246, column: 5, scope: !292)
!295 = !DILocation(line: 247, column: 5, scope: !292)
!296 = !DILocation(line: 248, column: 5, scope: !292)
!297 = !DILocation(line: 249, column: 1, scope: !292)
!298 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !299, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !42}
!301 = !DILocalVariable(name: "line", arg: 1, scope: !298, file: !3, line: 11, type: !42)
!302 = !DILocation(line: 11, column: 25, scope: !298)
!303 = !DILocation(line: 13, column: 1, scope: !298)
!304 = !DILocation(line: 14, column: 8, scope: !305)
!305 = distinct !DILexicalBlock(scope: !298, file: !3, line: 14, column: 8)
!306 = !DILocation(line: 14, column: 13, scope: !305)
!307 = !DILocation(line: 14, column: 8, scope: !298)
!308 = !DILocation(line: 16, column: 24, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !3, line: 15, column: 5)
!310 = !DILocation(line: 16, column: 9, scope: !309)
!311 = !DILocation(line: 17, column: 5, scope: !309)
!312 = !DILocation(line: 18, column: 5, scope: !298)
!313 = !DILocation(line: 19, column: 1, scope: !298)
!314 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !299, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!315 = !DILocalVariable(name: "line", arg: 1, scope: !314, file: !3, line: 20, type: !42)
!316 = !DILocation(line: 20, column: 29, scope: !314)
!317 = !DILocation(line: 22, column: 8, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 22, column: 8)
!319 = !DILocation(line: 22, column: 13, scope: !318)
!320 = !DILocation(line: 22, column: 8, scope: !314)
!321 = !DILocation(line: 24, column: 24, scope: !322)
!322 = distinct !DILexicalBlock(scope: !318, file: !3, line: 23, column: 5)
!323 = !DILocation(line: 24, column: 9, scope: !322)
!324 = !DILocation(line: 25, column: 5, scope: !322)
!325 = !DILocation(line: 26, column: 1, scope: !314)
!326 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !327, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !67, line: 74, baseType: !23)
!331 = !DILocalVariable(name: "line", arg: 1, scope: !326, file: !3, line: 27, type: !329)
!332 = !DILocation(line: 27, column: 29, scope: !326)
!333 = !DILocation(line: 29, column: 8, scope: !334)
!334 = distinct !DILexicalBlock(scope: !326, file: !3, line: 29, column: 8)
!335 = !DILocation(line: 29, column: 13, scope: !334)
!336 = !DILocation(line: 29, column: 8, scope: !326)
!337 = !DILocation(line: 31, column: 27, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !3, line: 30, column: 5)
!339 = !DILocation(line: 31, column: 9, scope: !338)
!340 = !DILocation(line: 32, column: 5, scope: !338)
!341 = !DILocation(line: 33, column: 1, scope: !326)
!342 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !343, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !23}
!345 = !DILocalVariable(name: "intNumber", arg: 1, scope: !342, file: !3, line: 35, type: !23)
!346 = !DILocation(line: 35, column: 24, scope: !342)
!347 = !DILocation(line: 37, column: 20, scope: !342)
!348 = !DILocation(line: 37, column: 5, scope: !342)
!349 = !DILocation(line: 38, column: 1, scope: !342)
!350 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !351, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !353}
!353 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!354 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !350, file: !3, line: 40, type: !353)
!355 = !DILocation(line: 40, column: 28, scope: !350)
!356 = !DILocation(line: 42, column: 21, scope: !350)
!357 = !DILocation(line: 42, column: 5, scope: !350)
!358 = !DILocation(line: 43, column: 1, scope: !350)
!359 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !360, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !362}
!362 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!363 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !359, file: !3, line: 45, type: !362)
!364 = !DILocation(line: 45, column: 28, scope: !359)
!365 = !DILocation(line: 47, column: 20, scope: !359)
!366 = !DILocation(line: 47, column: 5, scope: !359)
!367 = !DILocation(line: 48, column: 1, scope: !359)
!368 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !369, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !101}
!371 = !DILocalVariable(name: "longNumber", arg: 1, scope: !368, file: !3, line: 50, type: !101)
!372 = !DILocation(line: 50, column: 26, scope: !368)
!373 = !DILocation(line: 52, column: 21, scope: !368)
!374 = !DILocation(line: 52, column: 5, scope: !368)
!375 = !DILocation(line: 53, column: 1, scope: !368)
!376 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !377, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379}
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !380, line: 27, baseType: !381)
!380 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !100, line: 44, baseType: !101)
!382 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !376, file: !3, line: 55, type: !379)
!383 = !DILocation(line: 55, column: 33, scope: !376)
!384 = !DILocation(line: 57, column: 29, scope: !376)
!385 = !DILocation(line: 57, column: 5, scope: !376)
!386 = !DILocation(line: 58, column: 1, scope: !376)
!387 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !388, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !66}
!390 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !387, file: !3, line: 60, type: !66)
!391 = !DILocation(line: 60, column: 29, scope: !387)
!392 = !DILocation(line: 62, column: 21, scope: !387)
!393 = !DILocation(line: 62, column: 5, scope: !387)
!394 = !DILocation(line: 63, column: 1, scope: !387)
!395 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !396, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !43}
!398 = !DILocalVariable(name: "charHex", arg: 1, scope: !395, file: !3, line: 65, type: !43)
!399 = !DILocation(line: 65, column: 29, scope: !395)
!400 = !DILocation(line: 67, column: 22, scope: !395)
!401 = !DILocation(line: 67, column: 5, scope: !395)
!402 = !DILocation(line: 68, column: 1, scope: !395)
!403 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !404, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !330}
!406 = !DILocalVariable(name: "wideChar", arg: 1, scope: !403, file: !3, line: 70, type: !330)
!407 = !DILocation(line: 70, column: 29, scope: !403)
!408 = !DILocalVariable(name: "s", scope: !403, file: !3, line: 74, type: !409)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 64, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 2)
!412 = !DILocation(line: 74, column: 13, scope: !403)
!413 = !DILocation(line: 75, column: 16, scope: !403)
!414 = !DILocation(line: 75, column: 9, scope: !403)
!415 = !DILocation(line: 75, column: 14, scope: !403)
!416 = !DILocation(line: 76, column: 9, scope: !403)
!417 = !DILocation(line: 76, column: 14, scope: !403)
!418 = !DILocation(line: 77, column: 21, scope: !403)
!419 = !DILocation(line: 77, column: 5, scope: !403)
!420 = !DILocation(line: 78, column: 1, scope: !403)
!421 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !422, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !7}
!424 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !421, file: !3, line: 80, type: !7)
!425 = !DILocation(line: 80, column: 33, scope: !421)
!426 = !DILocation(line: 82, column: 20, scope: !421)
!427 = !DILocation(line: 82, column: 5, scope: !421)
!428 = !DILocation(line: 83, column: 1, scope: !421)
!429 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !430, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !25}
!432 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !429, file: !3, line: 85, type: !25)
!433 = !DILocation(line: 85, column: 45, scope: !429)
!434 = !DILocation(line: 87, column: 22, scope: !429)
!435 = !DILocation(line: 87, column: 5, scope: !429)
!436 = !DILocation(line: 88, column: 1, scope: !429)
!437 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !438, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!438 = !DISubroutineType(types: !439)
!439 = !{null, !440}
!440 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!441 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !437, file: !3, line: 90, type: !440)
!442 = !DILocation(line: 90, column: 29, scope: !437)
!443 = !DILocation(line: 92, column: 20, scope: !437)
!444 = !DILocation(line: 92, column: 5, scope: !437)
!445 = !DILocation(line: 93, column: 1, scope: !437)
!446 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !447, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !449}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !451, line: 100, baseType: !452)
!451 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_024/source_code")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !451, line: 96, size: 64, elements: !453)
!453 = !{!454, !455}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !452, file: !451, line: 98, baseType: !23, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !452, file: !451, line: 99, baseType: !23, size: 32, offset: 32)
!456 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !446, file: !3, line: 95, type: !449)
!457 = !DILocation(line: 95, column: 40, scope: !446)
!458 = !DILocation(line: 97, column: 26, scope: !446)
!459 = !DILocation(line: 97, column: 47, scope: !446)
!460 = !DILocation(line: 97, column: 55, scope: !446)
!461 = !DILocation(line: 97, column: 76, scope: !446)
!462 = !DILocation(line: 97, column: 5, scope: !446)
!463 = !DILocation(line: 98, column: 1, scope: !446)
!464 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !465, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467, !66}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!468 = !DILocalVariable(name: "bytes", arg: 1, scope: !464, file: !3, line: 100, type: !467)
!469 = !DILocation(line: 100, column: 38, scope: !464)
!470 = !DILocalVariable(name: "numBytes", arg: 2, scope: !464, file: !3, line: 100, type: !66)
!471 = !DILocation(line: 100, column: 52, scope: !464)
!472 = !DILocalVariable(name: "i", scope: !464, file: !3, line: 102, type: !66)
!473 = !DILocation(line: 102, column: 12, scope: !464)
!474 = !DILocation(line: 103, column: 12, scope: !475)
!475 = distinct !DILexicalBlock(scope: !464, file: !3, line: 103, column: 5)
!476 = !DILocation(line: 103, column: 10, scope: !475)
!477 = !DILocation(line: 103, column: 17, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !3, line: 103, column: 5)
!479 = !DILocation(line: 103, column: 21, scope: !478)
!480 = !DILocation(line: 103, column: 19, scope: !478)
!481 = !DILocation(line: 103, column: 5, scope: !475)
!482 = !DILocation(line: 105, column: 24, scope: !483)
!483 = distinct !DILexicalBlock(scope: !478, file: !3, line: 104, column: 5)
!484 = !DILocation(line: 105, column: 30, scope: !483)
!485 = !DILocation(line: 105, column: 9, scope: !483)
!486 = !DILocation(line: 106, column: 5, scope: !483)
!487 = !DILocation(line: 103, column: 31, scope: !478)
!488 = !DILocation(line: 103, column: 5, scope: !478)
!489 = distinct !{!489, !481, !490, !491}
!490 = !DILocation(line: 106, column: 5, scope: !475)
!491 = !{!"llvm.loop.mustprogress"}
!492 = !DILocation(line: 107, column: 5, scope: !464)
!493 = !DILocation(line: 108, column: 1, scope: !464)
!494 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !495, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!495 = !DISubroutineType(types: !496)
!496 = !{!66, !467, !66, !42}
!497 = !DILocalVariable(name: "bytes", arg: 1, scope: !494, file: !3, line: 113, type: !467)
!498 = !DILocation(line: 113, column: 39, scope: !494)
!499 = !DILocalVariable(name: "numBytes", arg: 2, scope: !494, file: !3, line: 113, type: !66)
!500 = !DILocation(line: 113, column: 53, scope: !494)
!501 = !DILocalVariable(name: "hex", arg: 3, scope: !494, file: !3, line: 113, type: !42)
!502 = !DILocation(line: 113, column: 71, scope: !494)
!503 = !DILocalVariable(name: "numWritten", scope: !494, file: !3, line: 115, type: !66)
!504 = !DILocation(line: 115, column: 12, scope: !494)
!505 = !DILocation(line: 121, column: 5, scope: !494)
!506 = !DILocation(line: 121, column: 12, scope: !494)
!507 = !DILocation(line: 121, column: 25, scope: !494)
!508 = !DILocation(line: 121, column: 23, scope: !494)
!509 = !DILocation(line: 121, column: 34, scope: !494)
!510 = !DILocation(line: 121, column: 37, scope: !494)
!511 = !DILocation(line: 121, column: 67, scope: !494)
!512 = !DILocation(line: 121, column: 70, scope: !494)
!513 = !DILocation(line: 0, scope: !494)
!514 = !DILocalVariable(name: "byte", scope: !515, file: !3, line: 123, type: !23)
!515 = distinct !DILexicalBlock(scope: !494, file: !3, line: 122, column: 5)
!516 = !DILocation(line: 123, column: 13, scope: !515)
!517 = !DILocation(line: 124, column: 17, scope: !515)
!518 = !DILocation(line: 124, column: 25, scope: !515)
!519 = !DILocation(line: 124, column: 23, scope: !515)
!520 = !DILocation(line: 124, column: 9, scope: !515)
!521 = !DILocation(line: 125, column: 45, scope: !515)
!522 = !DILocation(line: 125, column: 29, scope: !515)
!523 = !DILocation(line: 125, column: 9, scope: !515)
!524 = !DILocation(line: 125, column: 15, scope: !515)
!525 = !DILocation(line: 125, column: 27, scope: !515)
!526 = !DILocation(line: 126, column: 9, scope: !515)
!527 = distinct !{!527, !505, !528, !491}
!528 = !DILocation(line: 127, column: 5, scope: !494)
!529 = !DILocation(line: 129, column: 12, scope: !494)
!530 = !DILocation(line: 129, column: 5, scope: !494)
!531 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !532, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DISubroutineType(types: !533)
!533 = !{!66, !467, !66, !329}
!534 = !DILocalVariable(name: "bytes", arg: 1, scope: !531, file: !3, line: 135, type: !467)
!535 = !DILocation(line: 135, column: 41, scope: !531)
!536 = !DILocalVariable(name: "numBytes", arg: 2, scope: !531, file: !3, line: 135, type: !66)
!537 = !DILocation(line: 135, column: 55, scope: !531)
!538 = !DILocalVariable(name: "hex", arg: 3, scope: !531, file: !3, line: 135, type: !329)
!539 = !DILocation(line: 135, column: 76, scope: !531)
!540 = !DILocalVariable(name: "numWritten", scope: !531, file: !3, line: 137, type: !66)
!541 = !DILocation(line: 137, column: 12, scope: !531)
!542 = !DILocation(line: 143, column: 5, scope: !531)
!543 = !DILocation(line: 143, column: 12, scope: !531)
!544 = !DILocation(line: 143, column: 25, scope: !531)
!545 = !DILocation(line: 143, column: 23, scope: !531)
!546 = !DILocation(line: 143, column: 34, scope: !531)
!547 = !DILocation(line: 143, column: 47, scope: !531)
!548 = !DILocation(line: 143, column: 55, scope: !531)
!549 = !DILocation(line: 143, column: 53, scope: !531)
!550 = !DILocation(line: 143, column: 37, scope: !531)
!551 = !DILocation(line: 143, column: 68, scope: !531)
!552 = !DILocation(line: 143, column: 81, scope: !531)
!553 = !DILocation(line: 143, column: 89, scope: !531)
!554 = !DILocation(line: 143, column: 87, scope: !531)
!555 = !DILocation(line: 143, column: 100, scope: !531)
!556 = !DILocation(line: 143, column: 71, scope: !531)
!557 = !DILocation(line: 0, scope: !531)
!558 = !DILocalVariable(name: "byte", scope: !559, file: !3, line: 145, type: !23)
!559 = distinct !DILexicalBlock(scope: !531, file: !3, line: 144, column: 5)
!560 = !DILocation(line: 145, column: 13, scope: !559)
!561 = !DILocation(line: 146, column: 18, scope: !559)
!562 = !DILocation(line: 146, column: 26, scope: !559)
!563 = !DILocation(line: 146, column: 24, scope: !559)
!564 = !DILocation(line: 146, column: 9, scope: !559)
!565 = !DILocation(line: 147, column: 45, scope: !559)
!566 = !DILocation(line: 147, column: 29, scope: !559)
!567 = !DILocation(line: 147, column: 9, scope: !559)
!568 = !DILocation(line: 147, column: 15, scope: !559)
!569 = !DILocation(line: 147, column: 27, scope: !559)
!570 = !DILocation(line: 148, column: 9, scope: !559)
!571 = distinct !{!571, !542, !572, !491}
!572 = !DILocation(line: 149, column: 5, scope: !531)
!573 = !DILocation(line: 151, column: 12, scope: !531)
!574 = !DILocation(line: 151, column: 5, scope: !531)
!575 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !576, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DISubroutineType(types: !577)
!577 = !{!23}
!578 = !DILocation(line: 158, column: 5, scope: !575)
!579 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !576, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 163, column: 5, scope: !579)
!581 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !576, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 168, column: 13, scope: !581)
!583 = !DILocation(line: 168, column: 20, scope: !581)
!584 = !DILocation(line: 168, column: 5, scope: !581)
!585 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 187, column: 16, scope: !585)
!587 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 188, column: 16, scope: !587)
!589 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 189, column: 16, scope: !589)
!591 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 190, column: 16, scope: !591)
!593 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 191, column: 16, scope: !593)
!595 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 192, column: 16, scope: !595)
!597 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 193, column: 16, scope: !597)
!599 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 194, column: 16, scope: !599)
!601 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 195, column: 16, scope: !601)
!603 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 198, column: 15, scope: !603)
!605 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 199, column: 15, scope: !605)
!607 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 200, column: 15, scope: !607)
!609 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 201, column: 15, scope: !609)
!611 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 202, column: 15, scope: !611)
!613 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 203, column: 15, scope: !613)
!615 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 204, column: 15, scope: !615)
!617 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 205, column: 15, scope: !617)
!619 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 206, column: 15, scope: !619)
