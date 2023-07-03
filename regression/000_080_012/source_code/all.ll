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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_03_bad() #0 !dbg !52 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !71
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
  %11 = load i8*, i8** %data, align 8, !dbg !165
  %call12 = call i32 (i8*, ...) @printf(i8* %11), !dbg !168
  ret void, !dbg !169
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
define dso_local void @goodB2G1() #0 !dbg !170 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !174
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !174
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !175
  store i8* %arraydecay, i8** %data, align 8, !dbg !176
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !177, metadata !DIExpression()), !dbg !181
  %1 = load i8*, i8** %data, align 8, !dbg !182
  %call = call i64 @strlen(i8* %1) #7, !dbg !183
  store i64 %call, i64* %dataLen, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !184, metadata !DIExpression()), !dbg !185
  %2 = load i64, i64* %dataLen, align 8, !dbg !186
  %sub = sub i64 100, %2, !dbg !188
  %cmp = icmp ugt i64 %sub, 1, !dbg !189
  br i1 %cmp, label %if.then, label %if.end11, !dbg !190

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !191
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !193
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !194
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !196
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !197

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !198
  %5 = load i64, i64* %dataLen, align 8, !dbg !201
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !202
  %6 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub4 = sub i64 100, %6, !dbg !204
  %conv = trunc i64 %sub4 to i32, !dbg !205
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !206
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !207
  %cmp6 = icmp eq i8* %call5, null, !dbg !208
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !209

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !210
  %8 = load i8*, i8** %data, align 8, !dbg !212
  %9 = load i64, i64* %dataLen, align 8, !dbg !213
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !212
  store i8 0, i8* %arrayidx, align 1, !dbg !214
  br label %if.end, !dbg !215

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !216
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !217
  br label %if.end10, !dbg !218

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !219

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !220
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %11), !dbg !223
  ret void, !dbg !224
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !225 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !228, metadata !DIExpression()), !dbg !229
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !229
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !229
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !230
  store i8* %arraydecay, i8** %data, align 8, !dbg !231
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !232, metadata !DIExpression()), !dbg !236
  %1 = load i8*, i8** %data, align 8, !dbg !237
  %call = call i64 @strlen(i8* %1) #7, !dbg !238
  store i64 %call, i64* %dataLen, align 8, !dbg !236
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !239, metadata !DIExpression()), !dbg !240
  %2 = load i64, i64* %dataLen, align 8, !dbg !241
  %sub = sub i64 100, %2, !dbg !243
  %cmp = icmp ugt i64 %sub, 1, !dbg !244
  br i1 %cmp, label %if.then, label %if.end11, !dbg !245

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !246
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !248
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !249
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !251
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !252

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !253
  %5 = load i64, i64* %dataLen, align 8, !dbg !256
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !257
  %6 = load i64, i64* %dataLen, align 8, !dbg !258
  %sub4 = sub i64 100, %6, !dbg !259
  %conv = trunc i64 %sub4 to i32, !dbg !260
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !261
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !262
  %cmp6 = icmp eq i8* %call5, null, !dbg !263
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !264

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !265
  %8 = load i8*, i8** %data, align 8, !dbg !267
  %9 = load i64, i64* %dataLen, align 8, !dbg !268
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !267
  store i8 0, i8* %arrayidx, align 1, !dbg !269
  br label %if.end, !dbg !270

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !271
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !272
  br label %if.end10, !dbg !273

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !274

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !275
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %11), !dbg !278
  ret void, !dbg !279
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !280 {
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
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !290
  %2 = load i8*, i8** %data, align 8, !dbg !291
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !294
  ret void, !dbg !295
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !296 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !299, metadata !DIExpression()), !dbg !300
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !300
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !300
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !301
  store i8* %arraydecay, i8** %data, align 8, !dbg !302
  %1 = load i8*, i8** %data, align 8, !dbg !303
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !306
  %2 = load i8*, i8** %data, align 8, !dbg !307
  %call1 = call i32 (i8*, ...) @printf(i8* %2), !dbg !310
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_03_good() #0 !dbg !312 {
entry:
  call void @goodB2G1(), !dbg !313
  call void @goodB2G2(), !dbg !314
  call void @goodG2B1(), !dbg !315
  call void @goodG2B2(), !dbg !316
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !318 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !321, metadata !DIExpression()), !dbg !322
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !323
  %0 = load i8*, i8** %line.addr, align 8, !dbg !324
  %cmp = icmp ne i8* %0, null, !dbg !326
  br i1 %cmp, label %if.then, label %if.end, !dbg !327

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !328
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !330
  br label %if.end, !dbg !331

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !332
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !334 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load i8*, i8** %line.addr, align 8, !dbg !337
  %cmp = icmp ne i8* %0, null, !dbg !339
  br i1 %cmp, label %if.then, label %if.end, !dbg !340

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !341
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !343
  br label %if.end, !dbg !344

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !346 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load i32*, i32** %line.addr, align 8, !dbg !353
  %cmp = icmp ne i32* %0, null, !dbg !355
  br i1 %cmp, label %if.then, label %if.end, !dbg !356

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !357
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !359
  br label %if.end, !dbg !360

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !361
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !362 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !365, metadata !DIExpression()), !dbg !366
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !367
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.9, i64 0, i64 0), i32 %0), !dbg !368
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !370 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !376
  %conv = sext i16 %0 to i32, !dbg !376
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.10, i64 0, i64 0), i32 %conv), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !379 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !383, metadata !DIExpression()), !dbg !384
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !385
  %conv = fpext float %0 to double, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !386
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !388 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !393
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !394
  ret void, !dbg !395
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !396 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !404
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !407 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !415 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !418, metadata !DIExpression()), !dbg !419
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !420
  %conv = sext i8 %0 to i32, !dbg !420
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !421
  ret void, !dbg !422
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !423 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !428, metadata !DIExpression()), !dbg !432
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !433
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !434
  store i32 %0, i32* %arrayidx, align 4, !dbg !435
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !436
  store i32 0, i32* %arrayidx1, align 4, !dbg !437
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !438
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !439
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !441 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !444, metadata !DIExpression()), !dbg !445
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !446
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !447
  ret void, !dbg !448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !449 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !452, metadata !DIExpression()), !dbg !453
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !454
  %conv = zext i8 %0 to i32, !dbg !454
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !455
  ret void, !dbg !456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !457 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !461, metadata !DIExpression()), !dbg !462
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !463
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !464
  ret void, !dbg !465
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !466 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !476, metadata !DIExpression()), !dbg !477
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !478
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !479
  %1 = load i32, i32* %intOne, align 4, !dbg !479
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !480
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !481
  %3 = load i32, i32* %intTwo, align 4, !dbg !481
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !482
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !484 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !488, metadata !DIExpression()), !dbg !489
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata i64* %i, metadata !492, metadata !DIExpression()), !dbg !493
  store i64 0, i64* %i, align 8, !dbg !494
  br label %for.cond, !dbg !496

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !497
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !499
  %cmp = icmp ult i64 %0, %1, !dbg !500
  br i1 %cmp, label %for.body, label %for.end, !dbg !501

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !502
  %3 = load i64, i64* %i, align 8, !dbg !504
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !502
  %4 = load i8, i8* %arrayidx, align 1, !dbg !502
  %conv = zext i8 %4 to i32, !dbg !502
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !505
  br label %for.inc, !dbg !506

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !507
  %inc = add i64 %5, 1, !dbg !507
  store i64 %inc, i64* %i, align 8, !dbg !507
  br label %for.cond, !dbg !508, !llvm.loop !509

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !512
  ret void, !dbg !513
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !514 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !517, metadata !DIExpression()), !dbg !518
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !519, metadata !DIExpression()), !dbg !520
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !521, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !523, metadata !DIExpression()), !dbg !524
  store i64 0, i64* %numWritten, align 8, !dbg !524
  br label %while.cond, !dbg !525

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !526
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !527
  %cmp = icmp ult i64 %0, %1, !dbg !528
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !529

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !530
  %2 = load i16*, i16** %call, align 8, !dbg !530
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !530
  %4 = load i64, i64* %numWritten, align 8, !dbg !530
  %mul = mul i64 2, %4, !dbg !530
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !530
  %5 = load i8, i8* %arrayidx, align 1, !dbg !530
  %conv = sext i8 %5 to i32, !dbg !530
  %idxprom = sext i32 %conv to i64, !dbg !530
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !530
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !530
  %conv2 = zext i16 %6 to i32, !dbg !530
  %and = and i32 %conv2, 4096, !dbg !530
  %tobool = icmp ne i32 %and, 0, !dbg !530
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !531

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !532
  %7 = load i16*, i16** %call3, align 8, !dbg !532
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !532
  %9 = load i64, i64* %numWritten, align 8, !dbg !532
  %mul4 = mul i64 2, %9, !dbg !532
  %add = add i64 %mul4, 1, !dbg !532
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !532
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !532
  %conv6 = sext i8 %10 to i32, !dbg !532
  %idxprom7 = sext i32 %conv6 to i64, !dbg !532
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !532
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !532
  %conv9 = zext i16 %11 to i32, !dbg !532
  %and10 = and i32 %conv9, 4096, !dbg !532
  %tobool11 = icmp ne i32 %and10, 0, !dbg !531
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !533
  br i1 %12, label %while.body, label %while.end, !dbg !525

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !534, metadata !DIExpression()), !dbg !536
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !537
  %14 = load i64, i64* %numWritten, align 8, !dbg !538
  %mul12 = mul i64 2, %14, !dbg !539
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !537
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !540
  %15 = load i32, i32* %byte, align 4, !dbg !541
  %conv15 = trunc i32 %15 to i8, !dbg !542
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !543
  %17 = load i64, i64* %numWritten, align 8, !dbg !544
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !543
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !545
  %18 = load i64, i64* %numWritten, align 8, !dbg !546
  %inc = add i64 %18, 1, !dbg !546
  store i64 %inc, i64* %numWritten, align 8, !dbg !546
  br label %while.cond, !dbg !525, !llvm.loop !547

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !549
  ret i64 %19, !dbg !550
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !551 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !554, metadata !DIExpression()), !dbg !555
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !556, metadata !DIExpression()), !dbg !557
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !560, metadata !DIExpression()), !dbg !561
  store i64 0, i64* %numWritten, align 8, !dbg !561
  br label %while.cond, !dbg !562

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !563
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !564
  %cmp = icmp ult i64 %0, %1, !dbg !565
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !566

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !567
  %3 = load i64, i64* %numWritten, align 8, !dbg !568
  %mul = mul i64 2, %3, !dbg !569
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !567
  %4 = load i32, i32* %arrayidx, align 4, !dbg !567
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !570
  %tobool = icmp ne i32 %call, 0, !dbg !570
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !571

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !572
  %6 = load i64, i64* %numWritten, align 8, !dbg !573
  %mul1 = mul i64 2, %6, !dbg !574
  %add = add i64 %mul1, 1, !dbg !575
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !572
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !572
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !576
  %tobool4 = icmp ne i32 %call3, 0, !dbg !571
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !577
  br i1 %8, label %while.body, label %while.end, !dbg !562

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !578, metadata !DIExpression()), !dbg !580
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !581
  %10 = load i64, i64* %numWritten, align 8, !dbg !582
  %mul5 = mul i64 2, %10, !dbg !583
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !581
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !584
  %11 = load i32, i32* %byte, align 4, !dbg !585
  %conv = trunc i32 %11 to i8, !dbg !586
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !587
  %13 = load i64, i64* %numWritten, align 8, !dbg !588
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !587
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !589
  %14 = load i64, i64* %numWritten, align 8, !dbg !590
  %inc = add i64 %14, 1, !dbg !590
  store i64 %inc, i64* %numWritten, align 8, !dbg !590
  br label %while.cond, !dbg !562, !llvm.loop !591

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !593
  ret i64 %15, !dbg !594
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !595 {
entry:
  ret i32 1, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !599 {
entry:
  ret i32 0, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !601 {
entry:
  %call = call i32 @rand() #8, !dbg !602
  %rem = srem i32 %call, 2, !dbg !603
  ret i32 %rem, !dbg !604
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !631 {
entry:
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !633 {
entry:
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !635 {
entry:
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !637 {
entry:
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !639 {
entry:
  ret void, !dbg !640
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_012/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_03.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_012/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_03_bad", scope: !45, file: !45, line: 33, type: !53, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 42, type: !68)
!65 = distinct !DILexicalBlock(scope: !66, file: !45, line: 40, column: 9)
!66 = distinct !DILexicalBlock(scope: !67, file: !45, line: 39, column: 5)
!67 = distinct !DILexicalBlock(scope: !52, file: !45, line: 38, column: 8)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 42, column: 20, scope: !65)
!72 = !DILocation(line: 42, column: 37, scope: !65)
!73 = !DILocation(line: 42, column: 30, scope: !65)
!74 = !DILocalVariable(name: "pFile", scope: !65, file: !45, line: 43, type: !75)
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
!130 = !DILocation(line: 43, column: 20, scope: !65)
!131 = !DILocation(line: 45, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !65, file: !45, line: 45, column: 17)
!133 = !DILocation(line: 45, column: 20, scope: !132)
!134 = !DILocation(line: 45, column: 29, scope: !132)
!135 = !DILocation(line: 45, column: 17, scope: !65)
!136 = !DILocation(line: 47, column: 25, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !45, line: 46, column: 13)
!138 = !DILocation(line: 47, column: 23, scope: !137)
!139 = !DILocation(line: 48, column: 21, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !45, line: 48, column: 21)
!141 = !DILocation(line: 48, column: 27, scope: !140)
!142 = !DILocation(line: 48, column: 21, scope: !137)
!143 = !DILocation(line: 51, column: 31, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !45, line: 51, column: 25)
!145 = distinct !DILexicalBlock(scope: !140, file: !45, line: 49, column: 17)
!146 = !DILocation(line: 51, column: 36, scope: !144)
!147 = !DILocation(line: 51, column: 35, scope: !144)
!148 = !DILocation(line: 51, column: 55, scope: !144)
!149 = !DILocation(line: 51, column: 54, scope: !144)
!150 = !DILocation(line: 51, column: 45, scope: !144)
!151 = !DILocation(line: 51, column: 65, scope: !144)
!152 = !DILocation(line: 51, column: 25, scope: !144)
!153 = !DILocation(line: 51, column: 72, scope: !144)
!154 = !DILocation(line: 51, column: 25, scope: !145)
!155 = !DILocation(line: 53, column: 25, scope: !156)
!156 = distinct !DILexicalBlock(scope: !144, file: !45, line: 52, column: 21)
!157 = !DILocation(line: 55, column: 25, scope: !156)
!158 = !DILocation(line: 55, column: 30, scope: !156)
!159 = !DILocation(line: 55, column: 39, scope: !156)
!160 = !DILocation(line: 56, column: 21, scope: !156)
!161 = !DILocation(line: 57, column: 28, scope: !145)
!162 = !DILocation(line: 57, column: 21, scope: !145)
!163 = !DILocation(line: 58, column: 17, scope: !145)
!164 = !DILocation(line: 59, column: 13, scope: !137)
!165 = !DILocation(line: 65, column: 16, scope: !166)
!166 = distinct !DILexicalBlock(scope: !167, file: !45, line: 63, column: 5)
!167 = distinct !DILexicalBlock(scope: !52, file: !45, line: 62, column: 8)
!168 = !DILocation(line: 65, column: 9, scope: !166)
!169 = !DILocation(line: 67, column: 1, scope: !52)
!170 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 74, type: !53, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!171 = !DILocalVariable(name: "data", scope: !170, file: !45, line: 76, type: !42)
!172 = !DILocation(line: 76, column: 12, scope: !170)
!173 = !DILocalVariable(name: "dataBuffer", scope: !170, file: !45, line: 77, type: !58)
!174 = !DILocation(line: 77, column: 10, scope: !170)
!175 = !DILocation(line: 78, column: 12, scope: !170)
!176 = !DILocation(line: 78, column: 10, scope: !170)
!177 = !DILocalVariable(name: "dataLen", scope: !178, file: !45, line: 83, type: !68)
!178 = distinct !DILexicalBlock(scope: !179, file: !45, line: 81, column: 9)
!179 = distinct !DILexicalBlock(scope: !180, file: !45, line: 80, column: 5)
!180 = distinct !DILexicalBlock(scope: !170, file: !45, line: 79, column: 8)
!181 = !DILocation(line: 83, column: 20, scope: !178)
!182 = !DILocation(line: 83, column: 37, scope: !178)
!183 = !DILocation(line: 83, column: 30, scope: !178)
!184 = !DILocalVariable(name: "pFile", scope: !178, file: !45, line: 84, type: !75)
!185 = !DILocation(line: 84, column: 20, scope: !178)
!186 = !DILocation(line: 86, column: 21, scope: !187)
!187 = distinct !DILexicalBlock(scope: !178, file: !45, line: 86, column: 17)
!188 = !DILocation(line: 86, column: 20, scope: !187)
!189 = !DILocation(line: 86, column: 29, scope: !187)
!190 = !DILocation(line: 86, column: 17, scope: !178)
!191 = !DILocation(line: 88, column: 25, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !45, line: 87, column: 13)
!193 = !DILocation(line: 88, column: 23, scope: !192)
!194 = !DILocation(line: 89, column: 21, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !45, line: 89, column: 21)
!196 = !DILocation(line: 89, column: 27, scope: !195)
!197 = !DILocation(line: 89, column: 21, scope: !192)
!198 = !DILocation(line: 92, column: 31, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !45, line: 92, column: 25)
!200 = distinct !DILexicalBlock(scope: !195, file: !45, line: 90, column: 17)
!201 = !DILocation(line: 92, column: 36, scope: !199)
!202 = !DILocation(line: 92, column: 35, scope: !199)
!203 = !DILocation(line: 92, column: 55, scope: !199)
!204 = !DILocation(line: 92, column: 54, scope: !199)
!205 = !DILocation(line: 92, column: 45, scope: !199)
!206 = !DILocation(line: 92, column: 65, scope: !199)
!207 = !DILocation(line: 92, column: 25, scope: !199)
!208 = !DILocation(line: 92, column: 72, scope: !199)
!209 = !DILocation(line: 92, column: 25, scope: !200)
!210 = !DILocation(line: 94, column: 25, scope: !211)
!211 = distinct !DILexicalBlock(scope: !199, file: !45, line: 93, column: 21)
!212 = !DILocation(line: 96, column: 25, scope: !211)
!213 = !DILocation(line: 96, column: 30, scope: !211)
!214 = !DILocation(line: 96, column: 39, scope: !211)
!215 = !DILocation(line: 97, column: 21, scope: !211)
!216 = !DILocation(line: 98, column: 28, scope: !200)
!217 = !DILocation(line: 98, column: 21, scope: !200)
!218 = !DILocation(line: 99, column: 17, scope: !200)
!219 = !DILocation(line: 100, column: 13, scope: !192)
!220 = !DILocation(line: 111, column: 24, scope: !221)
!221 = distinct !DILexicalBlock(scope: !222, file: !45, line: 109, column: 5)
!222 = distinct !DILexicalBlock(scope: !170, file: !45, line: 103, column: 8)
!223 = !DILocation(line: 111, column: 9, scope: !221)
!224 = !DILocation(line: 113, column: 1, scope: !170)
!225 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 116, type: !53, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!226 = !DILocalVariable(name: "data", scope: !225, file: !45, line: 118, type: !42)
!227 = !DILocation(line: 118, column: 12, scope: !225)
!228 = !DILocalVariable(name: "dataBuffer", scope: !225, file: !45, line: 119, type: !58)
!229 = !DILocation(line: 119, column: 10, scope: !225)
!230 = !DILocation(line: 120, column: 12, scope: !225)
!231 = !DILocation(line: 120, column: 10, scope: !225)
!232 = !DILocalVariable(name: "dataLen", scope: !233, file: !45, line: 125, type: !68)
!233 = distinct !DILexicalBlock(scope: !234, file: !45, line: 123, column: 9)
!234 = distinct !DILexicalBlock(scope: !235, file: !45, line: 122, column: 5)
!235 = distinct !DILexicalBlock(scope: !225, file: !45, line: 121, column: 8)
!236 = !DILocation(line: 125, column: 20, scope: !233)
!237 = !DILocation(line: 125, column: 37, scope: !233)
!238 = !DILocation(line: 125, column: 30, scope: !233)
!239 = !DILocalVariable(name: "pFile", scope: !233, file: !45, line: 126, type: !75)
!240 = !DILocation(line: 126, column: 20, scope: !233)
!241 = !DILocation(line: 128, column: 21, scope: !242)
!242 = distinct !DILexicalBlock(scope: !233, file: !45, line: 128, column: 17)
!243 = !DILocation(line: 128, column: 20, scope: !242)
!244 = !DILocation(line: 128, column: 29, scope: !242)
!245 = !DILocation(line: 128, column: 17, scope: !233)
!246 = !DILocation(line: 130, column: 25, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !45, line: 129, column: 13)
!248 = !DILocation(line: 130, column: 23, scope: !247)
!249 = !DILocation(line: 131, column: 21, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !45, line: 131, column: 21)
!251 = !DILocation(line: 131, column: 27, scope: !250)
!252 = !DILocation(line: 131, column: 21, scope: !247)
!253 = !DILocation(line: 134, column: 31, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !45, line: 134, column: 25)
!255 = distinct !DILexicalBlock(scope: !250, file: !45, line: 132, column: 17)
!256 = !DILocation(line: 134, column: 36, scope: !254)
!257 = !DILocation(line: 134, column: 35, scope: !254)
!258 = !DILocation(line: 134, column: 55, scope: !254)
!259 = !DILocation(line: 134, column: 54, scope: !254)
!260 = !DILocation(line: 134, column: 45, scope: !254)
!261 = !DILocation(line: 134, column: 65, scope: !254)
!262 = !DILocation(line: 134, column: 25, scope: !254)
!263 = !DILocation(line: 134, column: 72, scope: !254)
!264 = !DILocation(line: 134, column: 25, scope: !255)
!265 = !DILocation(line: 136, column: 25, scope: !266)
!266 = distinct !DILexicalBlock(scope: !254, file: !45, line: 135, column: 21)
!267 = !DILocation(line: 138, column: 25, scope: !266)
!268 = !DILocation(line: 138, column: 30, scope: !266)
!269 = !DILocation(line: 138, column: 39, scope: !266)
!270 = !DILocation(line: 139, column: 21, scope: !266)
!271 = !DILocation(line: 140, column: 28, scope: !255)
!272 = !DILocation(line: 140, column: 21, scope: !255)
!273 = !DILocation(line: 141, column: 17, scope: !255)
!274 = !DILocation(line: 142, column: 13, scope: !247)
!275 = !DILocation(line: 148, column: 24, scope: !276)
!276 = distinct !DILexicalBlock(scope: !277, file: !45, line: 146, column: 5)
!277 = distinct !DILexicalBlock(scope: !225, file: !45, line: 145, column: 8)
!278 = !DILocation(line: 148, column: 9, scope: !276)
!279 = !DILocation(line: 150, column: 1, scope: !225)
!280 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 153, type: !53, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!281 = !DILocalVariable(name: "data", scope: !280, file: !45, line: 155, type: !42)
!282 = !DILocation(line: 155, column: 12, scope: !280)
!283 = !DILocalVariable(name: "dataBuffer", scope: !280, file: !45, line: 156, type: !58)
!284 = !DILocation(line: 156, column: 10, scope: !280)
!285 = !DILocation(line: 157, column: 12, scope: !280)
!286 = !DILocation(line: 157, column: 10, scope: !280)
!287 = !DILocation(line: 166, column: 16, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !45, line: 164, column: 5)
!289 = distinct !DILexicalBlock(scope: !280, file: !45, line: 158, column: 8)
!290 = !DILocation(line: 166, column: 9, scope: !288)
!291 = !DILocation(line: 171, column: 16, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !45, line: 169, column: 5)
!293 = distinct !DILexicalBlock(scope: !280, file: !45, line: 168, column: 8)
!294 = !DILocation(line: 171, column: 9, scope: !292)
!295 = !DILocation(line: 173, column: 1, scope: !280)
!296 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 176, type: !53, scopeLine: 177, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!297 = !DILocalVariable(name: "data", scope: !296, file: !45, line: 178, type: !42)
!298 = !DILocation(line: 178, column: 12, scope: !296)
!299 = !DILocalVariable(name: "dataBuffer", scope: !296, file: !45, line: 179, type: !58)
!300 = !DILocation(line: 179, column: 10, scope: !296)
!301 = !DILocation(line: 180, column: 12, scope: !296)
!302 = !DILocation(line: 180, column: 10, scope: !296)
!303 = !DILocation(line: 184, column: 16, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !45, line: 182, column: 5)
!305 = distinct !DILexicalBlock(scope: !296, file: !45, line: 181, column: 8)
!306 = !DILocation(line: 184, column: 9, scope: !304)
!307 = !DILocation(line: 189, column: 16, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !45, line: 187, column: 5)
!309 = distinct !DILexicalBlock(scope: !296, file: !45, line: 186, column: 8)
!310 = !DILocation(line: 189, column: 9, scope: !308)
!311 = !DILocation(line: 191, column: 1, scope: !296)
!312 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_03_good", scope: !45, file: !45, line: 193, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!313 = !DILocation(line: 195, column: 5, scope: !312)
!314 = !DILocation(line: 196, column: 5, scope: !312)
!315 = !DILocation(line: 197, column: 5, scope: !312)
!316 = !DILocation(line: 198, column: 5, scope: !312)
!317 = !DILocation(line: 199, column: 1, scope: !312)
!318 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !319, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !42}
!321 = !DILocalVariable(name: "line", arg: 1, scope: !318, file: !3, line: 11, type: !42)
!322 = !DILocation(line: 11, column: 25, scope: !318)
!323 = !DILocation(line: 13, column: 1, scope: !318)
!324 = !DILocation(line: 14, column: 8, scope: !325)
!325 = distinct !DILexicalBlock(scope: !318, file: !3, line: 14, column: 8)
!326 = !DILocation(line: 14, column: 13, scope: !325)
!327 = !DILocation(line: 14, column: 8, scope: !318)
!328 = !DILocation(line: 16, column: 24, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !3, line: 15, column: 5)
!330 = !DILocation(line: 16, column: 9, scope: !329)
!331 = !DILocation(line: 17, column: 5, scope: !329)
!332 = !DILocation(line: 18, column: 5, scope: !318)
!333 = !DILocation(line: 19, column: 1, scope: !318)
!334 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !319, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!335 = !DILocalVariable(name: "line", arg: 1, scope: !334, file: !3, line: 20, type: !42)
!336 = !DILocation(line: 20, column: 29, scope: !334)
!337 = !DILocation(line: 22, column: 8, scope: !338)
!338 = distinct !DILexicalBlock(scope: !334, file: !3, line: 22, column: 8)
!339 = !DILocation(line: 22, column: 13, scope: !338)
!340 = !DILocation(line: 22, column: 8, scope: !334)
!341 = !DILocation(line: 24, column: 24, scope: !342)
!342 = distinct !DILexicalBlock(scope: !338, file: !3, line: 23, column: 5)
!343 = !DILocation(line: 24, column: 9, scope: !342)
!344 = !DILocation(line: 25, column: 5, scope: !342)
!345 = !DILocation(line: 26, column: 1, scope: !334)
!346 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !347, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!351 = !DILocalVariable(name: "line", arg: 1, scope: !346, file: !3, line: 27, type: !349)
!352 = !DILocation(line: 27, column: 29, scope: !346)
!353 = !DILocation(line: 29, column: 8, scope: !354)
!354 = distinct !DILexicalBlock(scope: !346, file: !3, line: 29, column: 8)
!355 = !DILocation(line: 29, column: 13, scope: !354)
!356 = !DILocation(line: 29, column: 8, scope: !346)
!357 = !DILocation(line: 31, column: 27, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !3, line: 30, column: 5)
!359 = !DILocation(line: 31, column: 9, scope: !358)
!360 = !DILocation(line: 32, column: 5, scope: !358)
!361 = !DILocation(line: 33, column: 1, scope: !346)
!362 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !363, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !23}
!365 = !DILocalVariable(name: "intNumber", arg: 1, scope: !362, file: !3, line: 35, type: !23)
!366 = !DILocation(line: 35, column: 24, scope: !362)
!367 = !DILocation(line: 37, column: 20, scope: !362)
!368 = !DILocation(line: 37, column: 5, scope: !362)
!369 = !DILocation(line: 38, column: 1, scope: !362)
!370 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !371, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!371 = !DISubroutineType(types: !372)
!372 = !{null, !373}
!373 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!374 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !370, file: !3, line: 40, type: !373)
!375 = !DILocation(line: 40, column: 28, scope: !370)
!376 = !DILocation(line: 42, column: 21, scope: !370)
!377 = !DILocation(line: 42, column: 5, scope: !370)
!378 = !DILocation(line: 43, column: 1, scope: !370)
!379 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !380, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !382}
!382 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!383 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !379, file: !3, line: 45, type: !382)
!384 = !DILocation(line: 45, column: 28, scope: !379)
!385 = !DILocation(line: 47, column: 20, scope: !379)
!386 = !DILocation(line: 47, column: 5, scope: !379)
!387 = !DILocation(line: 48, column: 1, scope: !379)
!388 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !389, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !103}
!391 = !DILocalVariable(name: "longNumber", arg: 1, scope: !388, file: !3, line: 50, type: !103)
!392 = !DILocation(line: 50, column: 26, scope: !388)
!393 = !DILocation(line: 52, column: 21, scope: !388)
!394 = !DILocation(line: 52, column: 5, scope: !388)
!395 = !DILocation(line: 53, column: 1, scope: !388)
!396 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !397, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !399}
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !400, line: 27, baseType: !401)
!400 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !102, line: 44, baseType: !103)
!402 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !396, file: !3, line: 55, type: !399)
!403 = !DILocation(line: 55, column: 33, scope: !396)
!404 = !DILocation(line: 57, column: 29, scope: !396)
!405 = !DILocation(line: 57, column: 5, scope: !396)
!406 = !DILocation(line: 58, column: 1, scope: !396)
!407 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !408, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !68}
!410 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !407, file: !3, line: 60, type: !68)
!411 = !DILocation(line: 60, column: 29, scope: !407)
!412 = !DILocation(line: 62, column: 21, scope: !407)
!413 = !DILocation(line: 62, column: 5, scope: !407)
!414 = !DILocation(line: 63, column: 1, scope: !407)
!415 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !416, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !43}
!418 = !DILocalVariable(name: "charHex", arg: 1, scope: !415, file: !3, line: 65, type: !43)
!419 = !DILocation(line: 65, column: 29, scope: !415)
!420 = !DILocation(line: 67, column: 22, scope: !415)
!421 = !DILocation(line: 67, column: 5, scope: !415)
!422 = !DILocation(line: 68, column: 1, scope: !415)
!423 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !424, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !350}
!426 = !DILocalVariable(name: "wideChar", arg: 1, scope: !423, file: !3, line: 70, type: !350)
!427 = !DILocation(line: 70, column: 29, scope: !423)
!428 = !DILocalVariable(name: "s", scope: !423, file: !3, line: 74, type: !429)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 64, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 2)
!432 = !DILocation(line: 74, column: 13, scope: !423)
!433 = !DILocation(line: 75, column: 16, scope: !423)
!434 = !DILocation(line: 75, column: 9, scope: !423)
!435 = !DILocation(line: 75, column: 14, scope: !423)
!436 = !DILocation(line: 76, column: 9, scope: !423)
!437 = !DILocation(line: 76, column: 14, scope: !423)
!438 = !DILocation(line: 77, column: 21, scope: !423)
!439 = !DILocation(line: 77, column: 5, scope: !423)
!440 = !DILocation(line: 78, column: 1, scope: !423)
!441 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !442, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !7}
!444 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !441, file: !3, line: 80, type: !7)
!445 = !DILocation(line: 80, column: 33, scope: !441)
!446 = !DILocation(line: 82, column: 20, scope: !441)
!447 = !DILocation(line: 82, column: 5, scope: !441)
!448 = !DILocation(line: 83, column: 1, scope: !441)
!449 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !450, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !25}
!452 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !449, file: !3, line: 85, type: !25)
!453 = !DILocation(line: 85, column: 45, scope: !449)
!454 = !DILocation(line: 87, column: 22, scope: !449)
!455 = !DILocation(line: 87, column: 5, scope: !449)
!456 = !DILocation(line: 88, column: 1, scope: !449)
!457 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !458, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !460}
!460 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!461 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !457, file: !3, line: 90, type: !460)
!462 = !DILocation(line: 90, column: 29, scope: !457)
!463 = !DILocation(line: 92, column: 20, scope: !457)
!464 = !DILocation(line: 92, column: 5, scope: !457)
!465 = !DILocation(line: 93, column: 1, scope: !457)
!466 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !467, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !471, line: 100, baseType: !472)
!471 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_012/source_code")
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !471, line: 96, size: 64, elements: !473)
!473 = !{!474, !475}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !472, file: !471, line: 98, baseType: !23, size: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !472, file: !471, line: 99, baseType: !23, size: 32, offset: 32)
!476 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !466, file: !3, line: 95, type: !469)
!477 = !DILocation(line: 95, column: 40, scope: !466)
!478 = !DILocation(line: 97, column: 26, scope: !466)
!479 = !DILocation(line: 97, column: 47, scope: !466)
!480 = !DILocation(line: 97, column: 55, scope: !466)
!481 = !DILocation(line: 97, column: 76, scope: !466)
!482 = !DILocation(line: 97, column: 5, scope: !466)
!483 = !DILocation(line: 98, column: 1, scope: !466)
!484 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !485, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !487, !68}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!488 = !DILocalVariable(name: "bytes", arg: 1, scope: !484, file: !3, line: 100, type: !487)
!489 = !DILocation(line: 100, column: 38, scope: !484)
!490 = !DILocalVariable(name: "numBytes", arg: 2, scope: !484, file: !3, line: 100, type: !68)
!491 = !DILocation(line: 100, column: 52, scope: !484)
!492 = !DILocalVariable(name: "i", scope: !484, file: !3, line: 102, type: !68)
!493 = !DILocation(line: 102, column: 12, scope: !484)
!494 = !DILocation(line: 103, column: 12, scope: !495)
!495 = distinct !DILexicalBlock(scope: !484, file: !3, line: 103, column: 5)
!496 = !DILocation(line: 103, column: 10, scope: !495)
!497 = !DILocation(line: 103, column: 17, scope: !498)
!498 = distinct !DILexicalBlock(scope: !495, file: !3, line: 103, column: 5)
!499 = !DILocation(line: 103, column: 21, scope: !498)
!500 = !DILocation(line: 103, column: 19, scope: !498)
!501 = !DILocation(line: 103, column: 5, scope: !495)
!502 = !DILocation(line: 105, column: 24, scope: !503)
!503 = distinct !DILexicalBlock(scope: !498, file: !3, line: 104, column: 5)
!504 = !DILocation(line: 105, column: 30, scope: !503)
!505 = !DILocation(line: 105, column: 9, scope: !503)
!506 = !DILocation(line: 106, column: 5, scope: !503)
!507 = !DILocation(line: 103, column: 31, scope: !498)
!508 = !DILocation(line: 103, column: 5, scope: !498)
!509 = distinct !{!509, !501, !510, !511}
!510 = !DILocation(line: 106, column: 5, scope: !495)
!511 = !{!"llvm.loop.mustprogress"}
!512 = !DILocation(line: 107, column: 5, scope: !484)
!513 = !DILocation(line: 108, column: 1, scope: !484)
!514 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !515, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!515 = !DISubroutineType(types: !516)
!516 = !{!68, !487, !68, !42}
!517 = !DILocalVariable(name: "bytes", arg: 1, scope: !514, file: !3, line: 113, type: !487)
!518 = !DILocation(line: 113, column: 39, scope: !514)
!519 = !DILocalVariable(name: "numBytes", arg: 2, scope: !514, file: !3, line: 113, type: !68)
!520 = !DILocation(line: 113, column: 53, scope: !514)
!521 = !DILocalVariable(name: "hex", arg: 3, scope: !514, file: !3, line: 113, type: !42)
!522 = !DILocation(line: 113, column: 71, scope: !514)
!523 = !DILocalVariable(name: "numWritten", scope: !514, file: !3, line: 115, type: !68)
!524 = !DILocation(line: 115, column: 12, scope: !514)
!525 = !DILocation(line: 121, column: 5, scope: !514)
!526 = !DILocation(line: 121, column: 12, scope: !514)
!527 = !DILocation(line: 121, column: 25, scope: !514)
!528 = !DILocation(line: 121, column: 23, scope: !514)
!529 = !DILocation(line: 121, column: 34, scope: !514)
!530 = !DILocation(line: 121, column: 37, scope: !514)
!531 = !DILocation(line: 121, column: 67, scope: !514)
!532 = !DILocation(line: 121, column: 70, scope: !514)
!533 = !DILocation(line: 0, scope: !514)
!534 = !DILocalVariable(name: "byte", scope: !535, file: !3, line: 123, type: !23)
!535 = distinct !DILexicalBlock(scope: !514, file: !3, line: 122, column: 5)
!536 = !DILocation(line: 123, column: 13, scope: !535)
!537 = !DILocation(line: 124, column: 17, scope: !535)
!538 = !DILocation(line: 124, column: 25, scope: !535)
!539 = !DILocation(line: 124, column: 23, scope: !535)
!540 = !DILocation(line: 124, column: 9, scope: !535)
!541 = !DILocation(line: 125, column: 45, scope: !535)
!542 = !DILocation(line: 125, column: 29, scope: !535)
!543 = !DILocation(line: 125, column: 9, scope: !535)
!544 = !DILocation(line: 125, column: 15, scope: !535)
!545 = !DILocation(line: 125, column: 27, scope: !535)
!546 = !DILocation(line: 126, column: 9, scope: !535)
!547 = distinct !{!547, !525, !548, !511}
!548 = !DILocation(line: 127, column: 5, scope: !514)
!549 = !DILocation(line: 129, column: 12, scope: !514)
!550 = !DILocation(line: 129, column: 5, scope: !514)
!551 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !552, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DISubroutineType(types: !553)
!553 = !{!68, !487, !68, !349}
!554 = !DILocalVariable(name: "bytes", arg: 1, scope: !551, file: !3, line: 135, type: !487)
!555 = !DILocation(line: 135, column: 41, scope: !551)
!556 = !DILocalVariable(name: "numBytes", arg: 2, scope: !551, file: !3, line: 135, type: !68)
!557 = !DILocation(line: 135, column: 55, scope: !551)
!558 = !DILocalVariable(name: "hex", arg: 3, scope: !551, file: !3, line: 135, type: !349)
!559 = !DILocation(line: 135, column: 76, scope: !551)
!560 = !DILocalVariable(name: "numWritten", scope: !551, file: !3, line: 137, type: !68)
!561 = !DILocation(line: 137, column: 12, scope: !551)
!562 = !DILocation(line: 143, column: 5, scope: !551)
!563 = !DILocation(line: 143, column: 12, scope: !551)
!564 = !DILocation(line: 143, column: 25, scope: !551)
!565 = !DILocation(line: 143, column: 23, scope: !551)
!566 = !DILocation(line: 143, column: 34, scope: !551)
!567 = !DILocation(line: 143, column: 47, scope: !551)
!568 = !DILocation(line: 143, column: 55, scope: !551)
!569 = !DILocation(line: 143, column: 53, scope: !551)
!570 = !DILocation(line: 143, column: 37, scope: !551)
!571 = !DILocation(line: 143, column: 68, scope: !551)
!572 = !DILocation(line: 143, column: 81, scope: !551)
!573 = !DILocation(line: 143, column: 89, scope: !551)
!574 = !DILocation(line: 143, column: 87, scope: !551)
!575 = !DILocation(line: 143, column: 100, scope: !551)
!576 = !DILocation(line: 143, column: 71, scope: !551)
!577 = !DILocation(line: 0, scope: !551)
!578 = !DILocalVariable(name: "byte", scope: !579, file: !3, line: 145, type: !23)
!579 = distinct !DILexicalBlock(scope: !551, file: !3, line: 144, column: 5)
!580 = !DILocation(line: 145, column: 13, scope: !579)
!581 = !DILocation(line: 146, column: 18, scope: !579)
!582 = !DILocation(line: 146, column: 26, scope: !579)
!583 = !DILocation(line: 146, column: 24, scope: !579)
!584 = !DILocation(line: 146, column: 9, scope: !579)
!585 = !DILocation(line: 147, column: 45, scope: !579)
!586 = !DILocation(line: 147, column: 29, scope: !579)
!587 = !DILocation(line: 147, column: 9, scope: !579)
!588 = !DILocation(line: 147, column: 15, scope: !579)
!589 = !DILocation(line: 147, column: 27, scope: !579)
!590 = !DILocation(line: 148, column: 9, scope: !579)
!591 = distinct !{!591, !562, !592, !511}
!592 = !DILocation(line: 149, column: 5, scope: !551)
!593 = !DILocation(line: 151, column: 12, scope: !551)
!594 = !DILocation(line: 151, column: 5, scope: !551)
!595 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !596, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DISubroutineType(types: !597)
!597 = !{!23}
!598 = !DILocation(line: 158, column: 5, scope: !595)
!599 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !596, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 163, column: 5, scope: !599)
!601 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !596, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 168, column: 13, scope: !601)
!603 = !DILocation(line: 168, column: 20, scope: !601)
!604 = !DILocation(line: 168, column: 5, scope: !601)
!605 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 187, column: 16, scope: !605)
!607 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 188, column: 16, scope: !607)
!609 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 189, column: 16, scope: !609)
!611 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 190, column: 16, scope: !611)
!613 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 191, column: 16, scope: !613)
!615 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 192, column: 16, scope: !615)
!617 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 193, column: 16, scope: !617)
!619 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 194, column: 16, scope: !619)
!621 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 195, column: 16, scope: !621)
!623 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 198, column: 15, scope: !623)
!625 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 199, column: 15, scope: !625)
!627 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 200, column: 15, scope: !627)
!629 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 201, column: 15, scope: !629)
!631 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 202, column: 15, scope: !631)
!633 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 203, column: 15, scope: !633)
!635 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 204, column: 15, scope: !635)
!637 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 205, column: 15, scope: !637)
!639 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 206, column: 15, scope: !639)
