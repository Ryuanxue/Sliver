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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_66_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !59, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !64, metadata !DIExpression()), !dbg !68
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !68
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !68
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !69
  store i8* %arraydecay, i8** %data, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !71, metadata !DIExpression()), !dbg !76
  %1 = load i8*, i8** %data, align 8, !dbg !77
  %call = call i64 @strlen(i8* %1) #7, !dbg !78
  store i64 %call, i64* %dataLen, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !79, metadata !DIExpression()), !dbg !135
  %2 = load i64, i64* %dataLen, align 8, !dbg !136
  %sub = sub i64 100, %2, !dbg !138
  %cmp = icmp ugt i64 %sub, 1, !dbg !139
  br i1 %cmp, label %if.then, label %if.end11, !dbg !140

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !141
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !143
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !144
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !146
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !147

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !148
  %5 = load i64, i64* %dataLen, align 8, !dbg !151
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !152
  %6 = load i64, i64* %dataLen, align 8, !dbg !153
  %sub4 = sub i64 100, %6, !dbg !154
  %conv = trunc i64 %sub4 to i32, !dbg !155
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !156
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !157
  %cmp6 = icmp eq i8* %call5, null, !dbg !158
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !159

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !160
  %8 = load i8*, i8** %data, align 8, !dbg !162
  %9 = load i64, i64* %dataLen, align 8, !dbg !163
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !162
  store i8 0, i8* %arrayidx, align 1, !dbg !164
  br label %if.end, !dbg !165

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !166
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !167
  br label %if.end10, !dbg !168

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !169

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !170
  %arrayidx12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !171
  store i8* %11, i8** %arrayidx12, align 16, !dbg !172
  %arraydecay13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !173
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_badSink(i8** %arraydecay13), !dbg !174
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
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !181, metadata !DIExpression()), !dbg !182
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !182
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !182
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !183
  store i8* %arraydecay, i8** %data, align 8, !dbg !184
  %1 = load i8*, i8** %data, align 8, !dbg !185
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !186
  %2 = load i8*, i8** %data, align 8, !dbg !187
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !188
  store i8* %2, i8** %arrayidx, align 16, !dbg !189
  %arraydecay1 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !190
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_goodG2BSink(i8** %arraydecay1), !dbg !191
  ret void, !dbg !192
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !193 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !198, metadata !DIExpression()), !dbg !199
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !199
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !199
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !200
  store i8* %arraydecay, i8** %data, align 8, !dbg !201
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !202, metadata !DIExpression()), !dbg !204
  %1 = load i8*, i8** %data, align 8, !dbg !205
  %call = call i64 @strlen(i8* %1) #7, !dbg !206
  store i64 %call, i64* %dataLen, align 8, !dbg !204
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !207, metadata !DIExpression()), !dbg !208
  %2 = load i64, i64* %dataLen, align 8, !dbg !209
  %sub = sub i64 100, %2, !dbg !211
  %cmp = icmp ugt i64 %sub, 1, !dbg !212
  br i1 %cmp, label %if.then, label %if.end11, !dbg !213

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !214
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !216
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !217
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !219
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !220

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !221
  %5 = load i64, i64* %dataLen, align 8, !dbg !224
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !225
  %6 = load i64, i64* %dataLen, align 8, !dbg !226
  %sub4 = sub i64 100, %6, !dbg !227
  %conv = trunc i64 %sub4 to i32, !dbg !228
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !229
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !230
  %cmp6 = icmp eq i8* %call5, null, !dbg !231
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !232

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !233
  %8 = load i8*, i8** %data, align 8, !dbg !235
  %9 = load i64, i64* %dataLen, align 8, !dbg !236
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !235
  store i8 0, i8* %arrayidx, align 1, !dbg !237
  br label %if.end, !dbg !238

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !239
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !240
  br label %if.end10, !dbg !241

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !242

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !243
  %arrayidx12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !244
  store i8* %11, i8** %arrayidx12, align 16, !dbg !245
  %arraydecay13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !246
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_goodB2GSink(i8** %arraydecay13), !dbg !247
  ret void, !dbg !248
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_66_good() #0 !dbg !249 {
entry:
  call void @goodG2B(), !dbg !250
  call void @goodB2G(), !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_badSink(i8** %dataArray) #0 !dbg !253 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i8** %data, metadata !258, metadata !DIExpression()), !dbg !259
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !260
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !260
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !260
  store i8* %1, i8** %data, align 8, !dbg !259
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !261
  %3 = load i8*, i8** %data, align 8, !dbg !262
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !263
  ret void, !dbg !264
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_goodG2BSink(i8** %dataArray) #0 !dbg !265 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata i8** %data, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !270
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !270
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !270
  store i8* %1, i8** %data, align 8, !dbg !269
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !271
  %3 = load i8*, i8** %data, align 8, !dbg !272
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !273
  ret void, !dbg !274
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_goodB2GSink(i8** %dataArray) #0 !dbg !275 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata i8** %data, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !280
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !280
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !280
  store i8* %1, i8** %data, align 8, !dbg !279
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !281
  %3 = load i8*, i8** %data, align 8, !dbg !282
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %3), !dbg !283
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !285 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !288, metadata !DIExpression()), !dbg !289
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !290
  %0 = load i8*, i8** %line.addr, align 8, !dbg !291
  %cmp = icmp ne i8* %0, null, !dbg !293
  br i1 %cmp, label %if.then, label %if.end, !dbg !294

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !295
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !297
  br label %if.end, !dbg !298

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.12, i64 0, i64 0)), !dbg !299
  ret void, !dbg !300
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !301 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load i8*, i8** %line.addr, align 8, !dbg !304
  %cmp = icmp ne i8* %0, null, !dbg !306
  br i1 %cmp, label %if.then, label %if.end, !dbg !307

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !308
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !310
  br label %if.end, !dbg !311

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !312
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !313 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !318, metadata !DIExpression()), !dbg !319
  %0 = load i32*, i32** %line.addr, align 8, !dbg !320
  %cmp = icmp ne i32* %0, null, !dbg !322
  br i1 %cmp, label %if.then, label %if.end, !dbg !323

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !324
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.13, i64 0, i64 0), i32* %1), !dbg !326
  br label %if.end, !dbg !327

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !328
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !329 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !334
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !337 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !341, metadata !DIExpression()), !dbg !342
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !343
  %conv = sext i16 %0 to i32, !dbg !343
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !344
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !346 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !350, metadata !DIExpression()), !dbg !351
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !352
  %conv = fpext float %0 to double, !dbg !352
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !353
  ret void, !dbg !354
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !355 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !358, metadata !DIExpression()), !dbg !359
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !360
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), i64 %0), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !363 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), i64 %0), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !374 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !379
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !382 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !387
  %conv = sext i8 %0 to i32, !dbg !387
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !388
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !390 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !395, metadata !DIExpression()), !dbg !399
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !400
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !401
  store i32 %0, i32* %arrayidx, align 4, !dbg !402
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !403
  store i32 0, i32* %arrayidx1, align 4, !dbg !404
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !408 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !413
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !414
  ret void, !dbg !415
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !416 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !419, metadata !DIExpression()), !dbg !420
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !421
  %conv = zext i8 %0 to i32, !dbg !421
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !424 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !430
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !431
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !433 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !445
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !446
  %1 = load i32, i32* %intOne, align 4, !dbg !446
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !447
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !448
  %3 = load i32, i32* %intTwo, align 4, !dbg !448
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !449
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !451 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !455, metadata !DIExpression()), !dbg !456
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !457, metadata !DIExpression()), !dbg !458
  call void @llvm.dbg.declare(metadata i64* %i, metadata !459, metadata !DIExpression()), !dbg !460
  store i64 0, i64* %i, align 8, !dbg !461
  br label %for.cond, !dbg !463

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !464
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !466
  %cmp = icmp ult i64 %0, %1, !dbg !467
  br i1 %cmp, label %for.body, label %for.end, !dbg !468

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !469
  %3 = load i64, i64* %i, align 8, !dbg !471
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !469
  %4 = load i8, i8* %arrayidx, align 1, !dbg !469
  %conv = zext i8 %4 to i32, !dbg !469
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !472
  br label %for.inc, !dbg !473

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !474
  %inc = add i64 %5, 1, !dbg !474
  store i64 %inc, i64* %i, align 8, !dbg !474
  br label %for.cond, !dbg !475, !llvm.loop !476

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !479
  ret void, !dbg !480
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !481 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !484, metadata !DIExpression()), !dbg !485
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !486, metadata !DIExpression()), !dbg !487
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !488, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !490, metadata !DIExpression()), !dbg !491
  store i64 0, i64* %numWritten, align 8, !dbg !491
  br label %while.cond, !dbg !492

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !493
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !494
  %cmp = icmp ult i64 %0, %1, !dbg !495
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !496

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !497
  %2 = load i16*, i16** %call, align 8, !dbg !497
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !497
  %4 = load i64, i64* %numWritten, align 8, !dbg !497
  %mul = mul i64 2, %4, !dbg !497
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !497
  %5 = load i8, i8* %arrayidx, align 1, !dbg !497
  %conv = sext i8 %5 to i32, !dbg !497
  %idxprom = sext i32 %conv to i64, !dbg !497
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !497
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !497
  %conv2 = zext i16 %6 to i32, !dbg !497
  %and = and i32 %conv2, 4096, !dbg !497
  %tobool = icmp ne i32 %and, 0, !dbg !497
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !498

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !499
  %7 = load i16*, i16** %call3, align 8, !dbg !499
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !499
  %9 = load i64, i64* %numWritten, align 8, !dbg !499
  %mul4 = mul i64 2, %9, !dbg !499
  %add = add i64 %mul4, 1, !dbg !499
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !499
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !499
  %conv6 = sext i8 %10 to i32, !dbg !499
  %idxprom7 = sext i32 %conv6 to i64, !dbg !499
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !499
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !499
  %conv9 = zext i16 %11 to i32, !dbg !499
  %and10 = and i32 %conv9, 4096, !dbg !499
  %tobool11 = icmp ne i32 %and10, 0, !dbg !498
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !500
  br i1 %12, label %while.body, label %while.end, !dbg !492

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !501, metadata !DIExpression()), !dbg !503
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !504
  %14 = load i64, i64* %numWritten, align 8, !dbg !505
  %mul12 = mul i64 2, %14, !dbg !506
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !504
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !507
  %15 = load i32, i32* %byte, align 4, !dbg !508
  %conv15 = trunc i32 %15 to i8, !dbg !509
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !510
  %17 = load i64, i64* %numWritten, align 8, !dbg !511
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !510
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !512
  %18 = load i64, i64* %numWritten, align 8, !dbg !513
  %inc = add i64 %18, 1, !dbg !513
  store i64 %inc, i64* %numWritten, align 8, !dbg !513
  br label %while.cond, !dbg !492, !llvm.loop !514

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !516
  ret i64 %19, !dbg !517
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !518 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !521, metadata !DIExpression()), !dbg !522
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !523, metadata !DIExpression()), !dbg !524
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !525, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !527, metadata !DIExpression()), !dbg !528
  store i64 0, i64* %numWritten, align 8, !dbg !528
  br label %while.cond, !dbg !529

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !530
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !531
  %cmp = icmp ult i64 %0, %1, !dbg !532
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !533

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !534
  %3 = load i64, i64* %numWritten, align 8, !dbg !535
  %mul = mul i64 2, %3, !dbg !536
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !534
  %4 = load i32, i32* %arrayidx, align 4, !dbg !534
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !537
  %tobool = icmp ne i32 %call, 0, !dbg !537
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !538

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !539
  %6 = load i64, i64* %numWritten, align 8, !dbg !540
  %mul1 = mul i64 2, %6, !dbg !541
  %add = add i64 %mul1, 1, !dbg !542
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !539
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !539
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !543
  %tobool4 = icmp ne i32 %call3, 0, !dbg !538
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !544
  br i1 %8, label %while.body, label %while.end, !dbg !529

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !545, metadata !DIExpression()), !dbg !547
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !548
  %10 = load i64, i64* %numWritten, align 8, !dbg !549
  %mul5 = mul i64 2, %10, !dbg !550
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !548
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !551
  %11 = load i32, i32* %byte, align 4, !dbg !552
  %conv = trunc i32 %11 to i8, !dbg !553
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !554
  %13 = load i64, i64* %numWritten, align 8, !dbg !555
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !554
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !556
  %14 = load i64, i64* %numWritten, align 8, !dbg !557
  %inc = add i64 %14, 1, !dbg !557
  store i64 %inc, i64* %numWritten, align 8, !dbg !557
  br label %while.cond, !dbg !529, !llvm.loop !558

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !560
  ret i64 %15, !dbg !561
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !562 {
entry:
  ret i32 1, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !566 {
entry:
  ret i32 0, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !568 {
entry:
  %call = call i32 @rand() #8, !dbg !569
  %rem = srem i32 %call, 2, !dbg !570
  ret i32 %rem, !dbg !571
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !584 {
entry:
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !586 {
entry:
  ret void, !dbg !587
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !588 {
entry:
  ret void, !dbg !589
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !590 {
entry:
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !592 {
entry:
  ret void, !dbg !593
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !594 {
entry:
  ret void, !dbg !595
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !596 {
entry:
  ret void, !dbg !597
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !598 {
entry:
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !600 {
entry:
  ret void, !dbg !601
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !602 {
entry:
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !604 {
entry:
  ret void, !dbg !605
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !606 {
entry:
  ret void, !dbg !607
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_000/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_66a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_000/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_66b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_000/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_66_bad", scope: !45, file: !45, line: 35, type: !55, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 37, type: !42)
!58 = !DILocation(line: 37, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataArray", scope: !54, file: !45, line: 38, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 320, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 5)
!63 = !DILocation(line: 38, column: 12, scope: !54)
!64 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 39, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 100)
!68 = !DILocation(line: 39, column: 10, scope: !54)
!69 = !DILocation(line: 40, column: 12, scope: !54)
!70 = !DILocation(line: 40, column: 10, scope: !54)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !45, line: 43, type: !73)
!72 = distinct !DILexicalBlock(scope: !54, file: !45, line: 41, column: 5)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DILocation(line: 43, column: 16, scope: !72)
!77 = !DILocation(line: 43, column: 33, scope: !72)
!78 = !DILocation(line: 43, column: 26, scope: !72)
!79 = !DILocalVariable(name: "pFile", scope: !72, file: !45, line: 44, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !101, !103, !104, !105, !109, !110, !112, !116, !119, !121, !124, !127, !128, !129, !130, !131}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !83, file: !84, line: 51, baseType: !23, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !83, file: !84, line: 54, baseType: !42, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !83, file: !84, line: 55, baseType: !42, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !83, file: !84, line: 56, baseType: !42, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !83, file: !84, line: 57, baseType: !42, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !83, file: !84, line: 58, baseType: !42, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !83, file: !84, line: 59, baseType: !42, size: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !83, file: !84, line: 60, baseType: !42, size: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !83, file: !84, line: 61, baseType: !42, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !83, file: !84, line: 64, baseType: !42, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !83, file: !84, line: 65, baseType: !42, size: 64, offset: 640)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !83, file: !84, line: 66, baseType: !42, size: 64, offset: 704)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !83, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !84, line: 36, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !83, file: !84, line: 70, baseType: !102, size: 64, offset: 832)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !83, file: !84, line: 72, baseType: !23, size: 32, offset: 896)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !83, file: !84, line: 73, baseType: !23, size: 32, offset: 928)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !83, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !107, line: 152, baseType: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!108 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !83, file: !84, line: 77, baseType: !24, size: 16, offset: 1024)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !83, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!111 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !83, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 1)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !83, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !84, line: 43, baseType: null)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !83, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !107, line: 153, baseType: !108)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !83, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !84, line: 37, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !83, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !84, line: 38, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !83, file: !84, line: 93, baseType: !102, size: 64, offset: 1344)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !83, file: !84, line: 94, baseType: !22, size: 64, offset: 1408)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !83, file: !84, line: 95, baseType: !73, size: 64, offset: 1472)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !83, file: !84, line: 96, baseType: !23, size: 32, offset: 1536)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !83, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 20)
!135 = !DILocation(line: 44, column: 16, scope: !72)
!136 = !DILocation(line: 46, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !72, file: !45, line: 46, column: 13)
!138 = !DILocation(line: 46, column: 16, scope: !137)
!139 = !DILocation(line: 46, column: 25, scope: !137)
!140 = !DILocation(line: 46, column: 13, scope: !72)
!141 = !DILocation(line: 48, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !45, line: 47, column: 9)
!143 = !DILocation(line: 48, column: 19, scope: !142)
!144 = !DILocation(line: 49, column: 17, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !45, line: 49, column: 17)
!146 = !DILocation(line: 49, column: 23, scope: !145)
!147 = !DILocation(line: 49, column: 17, scope: !142)
!148 = !DILocation(line: 52, column: 27, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !45, line: 52, column: 21)
!150 = distinct !DILexicalBlock(scope: !145, file: !45, line: 50, column: 13)
!151 = !DILocation(line: 52, column: 32, scope: !149)
!152 = !DILocation(line: 52, column: 31, scope: !149)
!153 = !DILocation(line: 52, column: 51, scope: !149)
!154 = !DILocation(line: 52, column: 50, scope: !149)
!155 = !DILocation(line: 52, column: 41, scope: !149)
!156 = !DILocation(line: 52, column: 61, scope: !149)
!157 = !DILocation(line: 52, column: 21, scope: !149)
!158 = !DILocation(line: 52, column: 68, scope: !149)
!159 = !DILocation(line: 52, column: 21, scope: !150)
!160 = !DILocation(line: 54, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !149, file: !45, line: 53, column: 17)
!162 = !DILocation(line: 56, column: 21, scope: !161)
!163 = !DILocation(line: 56, column: 26, scope: !161)
!164 = !DILocation(line: 56, column: 35, scope: !161)
!165 = !DILocation(line: 57, column: 17, scope: !161)
!166 = !DILocation(line: 58, column: 24, scope: !150)
!167 = !DILocation(line: 58, column: 17, scope: !150)
!168 = !DILocation(line: 59, column: 13, scope: !150)
!169 = !DILocation(line: 60, column: 9, scope: !142)
!170 = !DILocation(line: 63, column: 20, scope: !54)
!171 = !DILocation(line: 63, column: 5, scope: !54)
!172 = !DILocation(line: 63, column: 18, scope: !54)
!173 = !DILocation(line: 64, column: 70, scope: !54)
!174 = !DILocation(line: 64, column: 5, scope: !54)
!175 = !DILocation(line: 65, column: 1, scope: !54)
!176 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 73, type: !55, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!177 = !DILocalVariable(name: "data", scope: !176, file: !45, line: 75, type: !42)
!178 = !DILocation(line: 75, column: 12, scope: !176)
!179 = !DILocalVariable(name: "dataArray", scope: !176, file: !45, line: 76, type: !60)
!180 = !DILocation(line: 76, column: 12, scope: !176)
!181 = !DILocalVariable(name: "dataBuffer", scope: !176, file: !45, line: 77, type: !65)
!182 = !DILocation(line: 77, column: 10, scope: !176)
!183 = !DILocation(line: 78, column: 12, scope: !176)
!184 = !DILocation(line: 78, column: 10, scope: !176)
!185 = !DILocation(line: 80, column: 12, scope: !176)
!186 = !DILocation(line: 80, column: 5, scope: !176)
!187 = !DILocation(line: 81, column: 20, scope: !176)
!188 = !DILocation(line: 81, column: 5, scope: !176)
!189 = !DILocation(line: 81, column: 18, scope: !176)
!190 = !DILocation(line: 82, column: 74, scope: !176)
!191 = !DILocation(line: 82, column: 5, scope: !176)
!192 = !DILocation(line: 83, column: 1, scope: !176)
!193 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 87, type: !55, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!194 = !DILocalVariable(name: "data", scope: !193, file: !45, line: 89, type: !42)
!195 = !DILocation(line: 89, column: 12, scope: !193)
!196 = !DILocalVariable(name: "dataArray", scope: !193, file: !45, line: 90, type: !60)
!197 = !DILocation(line: 90, column: 12, scope: !193)
!198 = !DILocalVariable(name: "dataBuffer", scope: !193, file: !45, line: 91, type: !65)
!199 = !DILocation(line: 91, column: 10, scope: !193)
!200 = !DILocation(line: 92, column: 12, scope: !193)
!201 = !DILocation(line: 92, column: 10, scope: !193)
!202 = !DILocalVariable(name: "dataLen", scope: !203, file: !45, line: 95, type: !73)
!203 = distinct !DILexicalBlock(scope: !193, file: !45, line: 93, column: 5)
!204 = !DILocation(line: 95, column: 16, scope: !203)
!205 = !DILocation(line: 95, column: 33, scope: !203)
!206 = !DILocation(line: 95, column: 26, scope: !203)
!207 = !DILocalVariable(name: "pFile", scope: !203, file: !45, line: 96, type: !80)
!208 = !DILocation(line: 96, column: 16, scope: !203)
!209 = !DILocation(line: 98, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !203, file: !45, line: 98, column: 13)
!211 = !DILocation(line: 98, column: 16, scope: !210)
!212 = !DILocation(line: 98, column: 25, scope: !210)
!213 = !DILocation(line: 98, column: 13, scope: !203)
!214 = !DILocation(line: 100, column: 21, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !45, line: 99, column: 9)
!216 = !DILocation(line: 100, column: 19, scope: !215)
!217 = !DILocation(line: 101, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !45, line: 101, column: 17)
!219 = !DILocation(line: 101, column: 23, scope: !218)
!220 = !DILocation(line: 101, column: 17, scope: !215)
!221 = !DILocation(line: 104, column: 27, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !45, line: 104, column: 21)
!223 = distinct !DILexicalBlock(scope: !218, file: !45, line: 102, column: 13)
!224 = !DILocation(line: 104, column: 32, scope: !222)
!225 = !DILocation(line: 104, column: 31, scope: !222)
!226 = !DILocation(line: 104, column: 51, scope: !222)
!227 = !DILocation(line: 104, column: 50, scope: !222)
!228 = !DILocation(line: 104, column: 41, scope: !222)
!229 = !DILocation(line: 104, column: 61, scope: !222)
!230 = !DILocation(line: 104, column: 21, scope: !222)
!231 = !DILocation(line: 104, column: 68, scope: !222)
!232 = !DILocation(line: 104, column: 21, scope: !223)
!233 = !DILocation(line: 106, column: 21, scope: !234)
!234 = distinct !DILexicalBlock(scope: !222, file: !45, line: 105, column: 17)
!235 = !DILocation(line: 108, column: 21, scope: !234)
!236 = !DILocation(line: 108, column: 26, scope: !234)
!237 = !DILocation(line: 108, column: 35, scope: !234)
!238 = !DILocation(line: 109, column: 17, scope: !234)
!239 = !DILocation(line: 110, column: 24, scope: !223)
!240 = !DILocation(line: 110, column: 17, scope: !223)
!241 = !DILocation(line: 111, column: 13, scope: !223)
!242 = !DILocation(line: 112, column: 9, scope: !215)
!243 = !DILocation(line: 114, column: 20, scope: !193)
!244 = !DILocation(line: 114, column: 5, scope: !193)
!245 = !DILocation(line: 114, column: 18, scope: !193)
!246 = !DILocation(line: 115, column: 74, scope: !193)
!247 = !DILocation(line: 115, column: 5, scope: !193)
!248 = !DILocation(line: 116, column: 1, scope: !193)
!249 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_66_good", scope: !45, file: !45, line: 118, type: !55, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!250 = !DILocation(line: 120, column: 5, scope: !249)
!251 = !DILocation(line: 121, column: 5, scope: !249)
!252 = !DILocation(line: 122, column: 1, scope: !249)
!253 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_badSink", scope: !49, file: !49, line: 32, type: !254, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !41}
!256 = !DILocalVariable(name: "dataArray", arg: 1, scope: !253, file: !49, line: 32, type: !41)
!257 = !DILocation(line: 32, column: 78, scope: !253)
!258 = !DILocalVariable(name: "data", scope: !253, file: !49, line: 35, type: !42)
!259 = !DILocation(line: 35, column: 12, scope: !253)
!260 = !DILocation(line: 35, column: 19, scope: !253)
!261 = !DILocation(line: 37, column: 13, scope: !253)
!262 = !DILocation(line: 37, column: 21, scope: !253)
!263 = !DILocation(line: 37, column: 5, scope: !253)
!264 = !DILocation(line: 38, column: 1, scope: !253)
!265 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_goodG2BSink", scope: !49, file: !49, line: 45, type: !254, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!266 = !DILocalVariable(name: "dataArray", arg: 1, scope: !265, file: !49, line: 45, type: !41)
!267 = !DILocation(line: 45, column: 82, scope: !265)
!268 = !DILocalVariable(name: "data", scope: !265, file: !49, line: 47, type: !42)
!269 = !DILocation(line: 47, column: 12, scope: !265)
!270 = !DILocation(line: 47, column: 19, scope: !265)
!271 = !DILocation(line: 49, column: 13, scope: !265)
!272 = !DILocation(line: 49, column: 21, scope: !265)
!273 = !DILocation(line: 49, column: 5, scope: !265)
!274 = !DILocation(line: 50, column: 1, scope: !265)
!275 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_goodB2GSink", scope: !49, file: !49, line: 53, type: !254, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!276 = !DILocalVariable(name: "dataArray", arg: 1, scope: !275, file: !49, line: 53, type: !41)
!277 = !DILocation(line: 53, column: 82, scope: !275)
!278 = !DILocalVariable(name: "data", scope: !275, file: !49, line: 55, type: !42)
!279 = !DILocation(line: 55, column: 12, scope: !275)
!280 = !DILocation(line: 55, column: 19, scope: !275)
!281 = !DILocation(line: 57, column: 13, scope: !275)
!282 = !DILocation(line: 57, column: 29, scope: !275)
!283 = !DILocation(line: 57, column: 5, scope: !275)
!284 = !DILocation(line: 58, column: 1, scope: !275)
!285 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !286, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !42}
!288 = !DILocalVariable(name: "line", arg: 1, scope: !285, file: !3, line: 11, type: !42)
!289 = !DILocation(line: 11, column: 25, scope: !285)
!290 = !DILocation(line: 13, column: 1, scope: !285)
!291 = !DILocation(line: 14, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !285, file: !3, line: 14, column: 8)
!293 = !DILocation(line: 14, column: 13, scope: !292)
!294 = !DILocation(line: 14, column: 8, scope: !285)
!295 = !DILocation(line: 16, column: 24, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !3, line: 15, column: 5)
!297 = !DILocation(line: 16, column: 9, scope: !296)
!298 = !DILocation(line: 17, column: 5, scope: !296)
!299 = !DILocation(line: 18, column: 5, scope: !285)
!300 = !DILocation(line: 19, column: 1, scope: !285)
!301 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !286, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!302 = !DILocalVariable(name: "line", arg: 1, scope: !301, file: !3, line: 20, type: !42)
!303 = !DILocation(line: 20, column: 29, scope: !301)
!304 = !DILocation(line: 22, column: 8, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !3, line: 22, column: 8)
!306 = !DILocation(line: 22, column: 13, scope: !305)
!307 = !DILocation(line: 22, column: 8, scope: !301)
!308 = !DILocation(line: 24, column: 24, scope: !309)
!309 = distinct !DILexicalBlock(scope: !305, file: !3, line: 23, column: 5)
!310 = !DILocation(line: 24, column: 9, scope: !309)
!311 = !DILocation(line: 25, column: 5, scope: !309)
!312 = !DILocation(line: 26, column: 1, scope: !301)
!313 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !314, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !316}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !74, line: 74, baseType: !23)
!318 = !DILocalVariable(name: "line", arg: 1, scope: !313, file: !3, line: 27, type: !316)
!319 = !DILocation(line: 27, column: 29, scope: !313)
!320 = !DILocation(line: 29, column: 8, scope: !321)
!321 = distinct !DILexicalBlock(scope: !313, file: !3, line: 29, column: 8)
!322 = !DILocation(line: 29, column: 13, scope: !321)
!323 = !DILocation(line: 29, column: 8, scope: !313)
!324 = !DILocation(line: 31, column: 27, scope: !325)
!325 = distinct !DILexicalBlock(scope: !321, file: !3, line: 30, column: 5)
!326 = !DILocation(line: 31, column: 9, scope: !325)
!327 = !DILocation(line: 32, column: 5, scope: !325)
!328 = !DILocation(line: 33, column: 1, scope: !313)
!329 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !330, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!330 = !DISubroutineType(types: !331)
!331 = !{null, !23}
!332 = !DILocalVariable(name: "intNumber", arg: 1, scope: !329, file: !3, line: 35, type: !23)
!333 = !DILocation(line: 35, column: 24, scope: !329)
!334 = !DILocation(line: 37, column: 20, scope: !329)
!335 = !DILocation(line: 37, column: 5, scope: !329)
!336 = !DILocation(line: 38, column: 1, scope: !329)
!337 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !338, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !340}
!340 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!341 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !337, file: !3, line: 40, type: !340)
!342 = !DILocation(line: 40, column: 28, scope: !337)
!343 = !DILocation(line: 42, column: 21, scope: !337)
!344 = !DILocation(line: 42, column: 5, scope: !337)
!345 = !DILocation(line: 43, column: 1, scope: !337)
!346 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !347, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !349}
!349 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!350 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !346, file: !3, line: 45, type: !349)
!351 = !DILocation(line: 45, column: 28, scope: !346)
!352 = !DILocation(line: 47, column: 20, scope: !346)
!353 = !DILocation(line: 47, column: 5, scope: !346)
!354 = !DILocation(line: 48, column: 1, scope: !346)
!355 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !356, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !108}
!358 = !DILocalVariable(name: "longNumber", arg: 1, scope: !355, file: !3, line: 50, type: !108)
!359 = !DILocation(line: 50, column: 26, scope: !355)
!360 = !DILocation(line: 52, column: 21, scope: !355)
!361 = !DILocation(line: 52, column: 5, scope: !355)
!362 = !DILocation(line: 53, column: 1, scope: !355)
!363 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !364, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !366}
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !367, line: 27, baseType: !368)
!367 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !107, line: 44, baseType: !108)
!369 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !363, file: !3, line: 55, type: !366)
!370 = !DILocation(line: 55, column: 33, scope: !363)
!371 = !DILocation(line: 57, column: 29, scope: !363)
!372 = !DILocation(line: 57, column: 5, scope: !363)
!373 = !DILocation(line: 58, column: 1, scope: !363)
!374 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !375, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !73}
!377 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !374, file: !3, line: 60, type: !73)
!378 = !DILocation(line: 60, column: 29, scope: !374)
!379 = !DILocation(line: 62, column: 21, scope: !374)
!380 = !DILocation(line: 62, column: 5, scope: !374)
!381 = !DILocation(line: 63, column: 1, scope: !374)
!382 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !383, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !43}
!385 = !DILocalVariable(name: "charHex", arg: 1, scope: !382, file: !3, line: 65, type: !43)
!386 = !DILocation(line: 65, column: 29, scope: !382)
!387 = !DILocation(line: 67, column: 22, scope: !382)
!388 = !DILocation(line: 67, column: 5, scope: !382)
!389 = !DILocation(line: 68, column: 1, scope: !382)
!390 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !391, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !317}
!393 = !DILocalVariable(name: "wideChar", arg: 1, scope: !390, file: !3, line: 70, type: !317)
!394 = !DILocation(line: 70, column: 29, scope: !390)
!395 = !DILocalVariable(name: "s", scope: !390, file: !3, line: 74, type: !396)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 64, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 2)
!399 = !DILocation(line: 74, column: 13, scope: !390)
!400 = !DILocation(line: 75, column: 16, scope: !390)
!401 = !DILocation(line: 75, column: 9, scope: !390)
!402 = !DILocation(line: 75, column: 14, scope: !390)
!403 = !DILocation(line: 76, column: 9, scope: !390)
!404 = !DILocation(line: 76, column: 14, scope: !390)
!405 = !DILocation(line: 77, column: 21, scope: !390)
!406 = !DILocation(line: 77, column: 5, scope: !390)
!407 = !DILocation(line: 78, column: 1, scope: !390)
!408 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !409, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !7}
!411 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !408, file: !3, line: 80, type: !7)
!412 = !DILocation(line: 80, column: 33, scope: !408)
!413 = !DILocation(line: 82, column: 20, scope: !408)
!414 = !DILocation(line: 82, column: 5, scope: !408)
!415 = !DILocation(line: 83, column: 1, scope: !408)
!416 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !417, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !25}
!419 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !416, file: !3, line: 85, type: !25)
!420 = !DILocation(line: 85, column: 45, scope: !416)
!421 = !DILocation(line: 87, column: 22, scope: !416)
!422 = !DILocation(line: 87, column: 5, scope: !416)
!423 = !DILocation(line: 88, column: 1, scope: !416)
!424 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !425, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !427}
!427 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!428 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !424, file: !3, line: 90, type: !427)
!429 = !DILocation(line: 90, column: 29, scope: !424)
!430 = !DILocation(line: 92, column: 20, scope: !424)
!431 = !DILocation(line: 92, column: 5, scope: !424)
!432 = !DILocation(line: 93, column: 1, scope: !424)
!433 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !434, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !438, line: 100, baseType: !439)
!438 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_000/source_code")
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !438, line: 96, size: 64, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !439, file: !438, line: 98, baseType: !23, size: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !439, file: !438, line: 99, baseType: !23, size: 32, offset: 32)
!443 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !433, file: !3, line: 95, type: !436)
!444 = !DILocation(line: 95, column: 40, scope: !433)
!445 = !DILocation(line: 97, column: 26, scope: !433)
!446 = !DILocation(line: 97, column: 47, scope: !433)
!447 = !DILocation(line: 97, column: 55, scope: !433)
!448 = !DILocation(line: 97, column: 76, scope: !433)
!449 = !DILocation(line: 97, column: 5, scope: !433)
!450 = !DILocation(line: 98, column: 1, scope: !433)
!451 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !452, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !454, !73}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!455 = !DILocalVariable(name: "bytes", arg: 1, scope: !451, file: !3, line: 100, type: !454)
!456 = !DILocation(line: 100, column: 38, scope: !451)
!457 = !DILocalVariable(name: "numBytes", arg: 2, scope: !451, file: !3, line: 100, type: !73)
!458 = !DILocation(line: 100, column: 52, scope: !451)
!459 = !DILocalVariable(name: "i", scope: !451, file: !3, line: 102, type: !73)
!460 = !DILocation(line: 102, column: 12, scope: !451)
!461 = !DILocation(line: 103, column: 12, scope: !462)
!462 = distinct !DILexicalBlock(scope: !451, file: !3, line: 103, column: 5)
!463 = !DILocation(line: 103, column: 10, scope: !462)
!464 = !DILocation(line: 103, column: 17, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !3, line: 103, column: 5)
!466 = !DILocation(line: 103, column: 21, scope: !465)
!467 = !DILocation(line: 103, column: 19, scope: !465)
!468 = !DILocation(line: 103, column: 5, scope: !462)
!469 = !DILocation(line: 105, column: 24, scope: !470)
!470 = distinct !DILexicalBlock(scope: !465, file: !3, line: 104, column: 5)
!471 = !DILocation(line: 105, column: 30, scope: !470)
!472 = !DILocation(line: 105, column: 9, scope: !470)
!473 = !DILocation(line: 106, column: 5, scope: !470)
!474 = !DILocation(line: 103, column: 31, scope: !465)
!475 = !DILocation(line: 103, column: 5, scope: !465)
!476 = distinct !{!476, !468, !477, !478}
!477 = !DILocation(line: 106, column: 5, scope: !462)
!478 = !{!"llvm.loop.mustprogress"}
!479 = !DILocation(line: 107, column: 5, scope: !451)
!480 = !DILocation(line: 108, column: 1, scope: !451)
!481 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !482, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DISubroutineType(types: !483)
!483 = !{!73, !454, !73, !42}
!484 = !DILocalVariable(name: "bytes", arg: 1, scope: !481, file: !3, line: 113, type: !454)
!485 = !DILocation(line: 113, column: 39, scope: !481)
!486 = !DILocalVariable(name: "numBytes", arg: 2, scope: !481, file: !3, line: 113, type: !73)
!487 = !DILocation(line: 113, column: 53, scope: !481)
!488 = !DILocalVariable(name: "hex", arg: 3, scope: !481, file: !3, line: 113, type: !42)
!489 = !DILocation(line: 113, column: 71, scope: !481)
!490 = !DILocalVariable(name: "numWritten", scope: !481, file: !3, line: 115, type: !73)
!491 = !DILocation(line: 115, column: 12, scope: !481)
!492 = !DILocation(line: 121, column: 5, scope: !481)
!493 = !DILocation(line: 121, column: 12, scope: !481)
!494 = !DILocation(line: 121, column: 25, scope: !481)
!495 = !DILocation(line: 121, column: 23, scope: !481)
!496 = !DILocation(line: 121, column: 34, scope: !481)
!497 = !DILocation(line: 121, column: 37, scope: !481)
!498 = !DILocation(line: 121, column: 67, scope: !481)
!499 = !DILocation(line: 121, column: 70, scope: !481)
!500 = !DILocation(line: 0, scope: !481)
!501 = !DILocalVariable(name: "byte", scope: !502, file: !3, line: 123, type: !23)
!502 = distinct !DILexicalBlock(scope: !481, file: !3, line: 122, column: 5)
!503 = !DILocation(line: 123, column: 13, scope: !502)
!504 = !DILocation(line: 124, column: 17, scope: !502)
!505 = !DILocation(line: 124, column: 25, scope: !502)
!506 = !DILocation(line: 124, column: 23, scope: !502)
!507 = !DILocation(line: 124, column: 9, scope: !502)
!508 = !DILocation(line: 125, column: 45, scope: !502)
!509 = !DILocation(line: 125, column: 29, scope: !502)
!510 = !DILocation(line: 125, column: 9, scope: !502)
!511 = !DILocation(line: 125, column: 15, scope: !502)
!512 = !DILocation(line: 125, column: 27, scope: !502)
!513 = !DILocation(line: 126, column: 9, scope: !502)
!514 = distinct !{!514, !492, !515, !478}
!515 = !DILocation(line: 127, column: 5, scope: !481)
!516 = !DILocation(line: 129, column: 12, scope: !481)
!517 = !DILocation(line: 129, column: 5, scope: !481)
!518 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !519, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DISubroutineType(types: !520)
!520 = !{!73, !454, !73, !316}
!521 = !DILocalVariable(name: "bytes", arg: 1, scope: !518, file: !3, line: 135, type: !454)
!522 = !DILocation(line: 135, column: 41, scope: !518)
!523 = !DILocalVariable(name: "numBytes", arg: 2, scope: !518, file: !3, line: 135, type: !73)
!524 = !DILocation(line: 135, column: 55, scope: !518)
!525 = !DILocalVariable(name: "hex", arg: 3, scope: !518, file: !3, line: 135, type: !316)
!526 = !DILocation(line: 135, column: 76, scope: !518)
!527 = !DILocalVariable(name: "numWritten", scope: !518, file: !3, line: 137, type: !73)
!528 = !DILocation(line: 137, column: 12, scope: !518)
!529 = !DILocation(line: 143, column: 5, scope: !518)
!530 = !DILocation(line: 143, column: 12, scope: !518)
!531 = !DILocation(line: 143, column: 25, scope: !518)
!532 = !DILocation(line: 143, column: 23, scope: !518)
!533 = !DILocation(line: 143, column: 34, scope: !518)
!534 = !DILocation(line: 143, column: 47, scope: !518)
!535 = !DILocation(line: 143, column: 55, scope: !518)
!536 = !DILocation(line: 143, column: 53, scope: !518)
!537 = !DILocation(line: 143, column: 37, scope: !518)
!538 = !DILocation(line: 143, column: 68, scope: !518)
!539 = !DILocation(line: 143, column: 81, scope: !518)
!540 = !DILocation(line: 143, column: 89, scope: !518)
!541 = !DILocation(line: 143, column: 87, scope: !518)
!542 = !DILocation(line: 143, column: 100, scope: !518)
!543 = !DILocation(line: 143, column: 71, scope: !518)
!544 = !DILocation(line: 0, scope: !518)
!545 = !DILocalVariable(name: "byte", scope: !546, file: !3, line: 145, type: !23)
!546 = distinct !DILexicalBlock(scope: !518, file: !3, line: 144, column: 5)
!547 = !DILocation(line: 145, column: 13, scope: !546)
!548 = !DILocation(line: 146, column: 18, scope: !546)
!549 = !DILocation(line: 146, column: 26, scope: !546)
!550 = !DILocation(line: 146, column: 24, scope: !546)
!551 = !DILocation(line: 146, column: 9, scope: !546)
!552 = !DILocation(line: 147, column: 45, scope: !546)
!553 = !DILocation(line: 147, column: 29, scope: !546)
!554 = !DILocation(line: 147, column: 9, scope: !546)
!555 = !DILocation(line: 147, column: 15, scope: !546)
!556 = !DILocation(line: 147, column: 27, scope: !546)
!557 = !DILocation(line: 148, column: 9, scope: !546)
!558 = distinct !{!558, !529, !559, !478}
!559 = !DILocation(line: 149, column: 5, scope: !518)
!560 = !DILocation(line: 151, column: 12, scope: !518)
!561 = !DILocation(line: 151, column: 5, scope: !518)
!562 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !563, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DISubroutineType(types: !564)
!564 = !{!23}
!565 = !DILocation(line: 158, column: 5, scope: !562)
!566 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !563, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 163, column: 5, scope: !566)
!568 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !563, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 168, column: 13, scope: !568)
!570 = !DILocation(line: 168, column: 20, scope: !568)
!571 = !DILocation(line: 168, column: 5, scope: !568)
!572 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DILocation(line: 187, column: 16, scope: !572)
!574 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DILocation(line: 188, column: 16, scope: !574)
!576 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DILocation(line: 189, column: 16, scope: !576)
!578 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DILocation(line: 190, column: 16, scope: !578)
!580 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DILocation(line: 191, column: 16, scope: !580)
!582 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DILocation(line: 192, column: 16, scope: !582)
!584 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DILocation(line: 193, column: 16, scope: !584)
!586 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DILocation(line: 194, column: 16, scope: !586)
!588 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DILocation(line: 195, column: 16, scope: !588)
!590 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!591 = !DILocation(line: 198, column: 15, scope: !590)
!592 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!593 = !DILocation(line: 199, column: 15, scope: !592)
!594 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!595 = !DILocation(line: 200, column: 15, scope: !594)
!596 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!597 = !DILocation(line: 201, column: 15, scope: !596)
!598 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!599 = !DILocation(line: 202, column: 15, scope: !598)
!600 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!601 = !DILocation(line: 203, column: 15, scope: !600)
!602 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!603 = !DILocation(line: 204, column: 15, scope: !602)
!604 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DILocation(line: 205, column: 15, scope: !604)
!606 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DILocation(line: 206, column: 15, scope: !606)
