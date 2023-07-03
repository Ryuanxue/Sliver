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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_65_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !59, metadata !DIExpression()), !dbg !63
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_file_fprintf_65b_badSink, void (i8*)** %funcPtr, align 8, !dbg !63
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
  %11 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !170
  %12 = load i8*, i8** %data, align 8, !dbg !171
  call void %11(i8* %12), !dbg !170
  ret void, !dbg !172
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
define dso_local void @goodG2B() #0 !dbg !173 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !176, metadata !DIExpression()), !dbg !177
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_file_fprintf_65b_goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !177
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !178, metadata !DIExpression()), !dbg !179
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !179
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !179
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !180
  store i8* %arraydecay, i8** %data, align 8, !dbg !181
  %1 = load i8*, i8** %data, align 8, !dbg !182
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !183
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !184
  %3 = load i8*, i8** %data, align 8, !dbg !185
  call void %2(i8* %3), !dbg !184
  ret void, !dbg !186
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !187 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !190, metadata !DIExpression()), !dbg !191
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_file_fprintf_65b_goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !192, metadata !DIExpression()), !dbg !193
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !193
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !193
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !194
  store i8* %arraydecay, i8** %data, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !196, metadata !DIExpression()), !dbg !198
  %1 = load i8*, i8** %data, align 8, !dbg !199
  %call = call i64 @strlen(i8* %1) #7, !dbg !200
  store i64 %call, i64* %dataLen, align 8, !dbg !198
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !201, metadata !DIExpression()), !dbg !202
  %2 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub = sub i64 100, %2, !dbg !205
  %cmp = icmp ugt i64 %sub, 1, !dbg !206
  br i1 %cmp, label %if.then, label %if.end11, !dbg !207

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !208
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !210
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !211
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !213
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !214

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !215
  %5 = load i64, i64* %dataLen, align 8, !dbg !218
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !219
  %6 = load i64, i64* %dataLen, align 8, !dbg !220
  %sub4 = sub i64 100, %6, !dbg !221
  %conv = trunc i64 %sub4 to i32, !dbg !222
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !223
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !224
  %cmp6 = icmp eq i8* %call5, null, !dbg !225
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !226

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !227
  %8 = load i8*, i8** %data, align 8, !dbg !229
  %9 = load i64, i64* %dataLen, align 8, !dbg !230
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !229
  store i8 0, i8* %arrayidx, align 1, !dbg !231
  br label %if.end, !dbg !232

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !233
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !234
  br label %if.end10, !dbg !235

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !236

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !237
  %12 = load i8*, i8** %data, align 8, !dbg !238
  call void %11(i8* %12), !dbg !237
  ret void, !dbg !239
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_65_good() #0 !dbg !240 {
entry:
  call void @goodG2B(), !dbg !241
  call void @goodB2G(), !dbg !242
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_65b_badSink(i8* %data) #0 !dbg !244 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !247
  %1 = load i8*, i8** %data.addr, align 8, !dbg !248
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !249
  ret void, !dbg !250
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_65b_goodG2BSink(i8* %data) #0 !dbg !251 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !252, metadata !DIExpression()), !dbg !253
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !254
  %1 = load i8*, i8** %data.addr, align 8, !dbg !255
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !256
  ret void, !dbg !257
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_65b_goodB2GSink(i8* %data) #0 !dbg !258 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !261
  %1 = load i8*, i8** %data.addr, align 8, !dbg !262
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %1), !dbg !263
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !265 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !266, metadata !DIExpression()), !dbg !267
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !268
  %0 = load i8*, i8** %line.addr, align 8, !dbg !269
  %cmp = icmp ne i8* %0, null, !dbg !271
  br i1 %cmp, label %if.then, label %if.end, !dbg !272

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !273
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !275
  br label %if.end, !dbg !276

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.12, i64 0, i64 0)), !dbg !277
  ret void, !dbg !278
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !279 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load i8*, i8** %line.addr, align 8, !dbg !282
  %cmp = icmp ne i8* %0, null, !dbg !284
  br i1 %cmp, label %if.then, label %if.end, !dbg !285

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !286
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !288
  br label %if.end, !dbg !289

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !291 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = load i32*, i32** %line.addr, align 8, !dbg !298
  %cmp = icmp ne i32* %0, null, !dbg !300
  br i1 %cmp, label %if.then, label %if.end, !dbg !301

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !302
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.13, i64 0, i64 0), i32* %1), !dbg !304
  br label %if.end, !dbg !305

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !306
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !307 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !310, metadata !DIExpression()), !dbg !311
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !312
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !313
  ret void, !dbg !314
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !315 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !321
  %conv = sext i16 %0 to i32, !dbg !321
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !322
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !324 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !328, metadata !DIExpression()), !dbg !329
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !330
  %conv = fpext float %0 to double, !dbg !330
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !331
  ret void, !dbg !332
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !333 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !336, metadata !DIExpression()), !dbg !337
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !338
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), i64 %0), !dbg !339
  ret void, !dbg !340
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !341 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !347, metadata !DIExpression()), !dbg !348
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !349
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), i64 %0), !dbg !350
  ret void, !dbg !351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !352 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !355, metadata !DIExpression()), !dbg !356
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !357
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !358
  ret void, !dbg !359
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !360 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !365
  %conv = sext i8 %0 to i32, !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !368 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !373, metadata !DIExpression()), !dbg !377
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !378
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !379
  store i32 %0, i32* %arrayidx, align 4, !dbg !380
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !381
  store i32 0, i32* %arrayidx1, align 4, !dbg !382
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !383
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !384
  ret void, !dbg !385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !386 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !389, metadata !DIExpression()), !dbg !390
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !391
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !392
  ret void, !dbg !393
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !394 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !397, metadata !DIExpression()), !dbg !398
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !399
  %conv = zext i8 %0 to i32, !dbg !399
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !400
  ret void, !dbg !401
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !402 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !406, metadata !DIExpression()), !dbg !407
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !408
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !411 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !421, metadata !DIExpression()), !dbg !422
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !423
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !424
  %1 = load i32, i32* %intOne, align 4, !dbg !424
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !425
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !426
  %3 = load i32, i32* %intTwo, align 4, !dbg !426
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !427
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !429 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !433, metadata !DIExpression()), !dbg !434
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !435, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.declare(metadata i64* %i, metadata !437, metadata !DIExpression()), !dbg !438
  store i64 0, i64* %i, align 8, !dbg !439
  br label %for.cond, !dbg !441

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !442
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !444
  %cmp = icmp ult i64 %0, %1, !dbg !445
  br i1 %cmp, label %for.body, label %for.end, !dbg !446

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !447
  %3 = load i64, i64* %i, align 8, !dbg !449
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !447
  %4 = load i8, i8* %arrayidx, align 1, !dbg !447
  %conv = zext i8 %4 to i32, !dbg !447
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !450
  br label %for.inc, !dbg !451

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !452
  %inc = add i64 %5, 1, !dbg !452
  store i64 %inc, i64* %i, align 8, !dbg !452
  br label %for.cond, !dbg !453, !llvm.loop !454

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !457
  ret void, !dbg !458
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !459 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !462, metadata !DIExpression()), !dbg !463
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !464, metadata !DIExpression()), !dbg !465
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !468, metadata !DIExpression()), !dbg !469
  store i64 0, i64* %numWritten, align 8, !dbg !469
  br label %while.cond, !dbg !470

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !471
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !472
  %cmp = icmp ult i64 %0, %1, !dbg !473
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !474

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !475
  %2 = load i16*, i16** %call, align 8, !dbg !475
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !475
  %4 = load i64, i64* %numWritten, align 8, !dbg !475
  %mul = mul i64 2, %4, !dbg !475
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !475
  %5 = load i8, i8* %arrayidx, align 1, !dbg !475
  %conv = sext i8 %5 to i32, !dbg !475
  %idxprom = sext i32 %conv to i64, !dbg !475
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !475
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !475
  %conv2 = zext i16 %6 to i32, !dbg !475
  %and = and i32 %conv2, 4096, !dbg !475
  %tobool = icmp ne i32 %and, 0, !dbg !475
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !476

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !477
  %7 = load i16*, i16** %call3, align 8, !dbg !477
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !477
  %9 = load i64, i64* %numWritten, align 8, !dbg !477
  %mul4 = mul i64 2, %9, !dbg !477
  %add = add i64 %mul4, 1, !dbg !477
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !477
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !477
  %conv6 = sext i8 %10 to i32, !dbg !477
  %idxprom7 = sext i32 %conv6 to i64, !dbg !477
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !477
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !477
  %conv9 = zext i16 %11 to i32, !dbg !477
  %and10 = and i32 %conv9, 4096, !dbg !477
  %tobool11 = icmp ne i32 %and10, 0, !dbg !476
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !478
  br i1 %12, label %while.body, label %while.end, !dbg !470

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !479, metadata !DIExpression()), !dbg !481
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !482
  %14 = load i64, i64* %numWritten, align 8, !dbg !483
  %mul12 = mul i64 2, %14, !dbg !484
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !482
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !485
  %15 = load i32, i32* %byte, align 4, !dbg !486
  %conv15 = trunc i32 %15 to i8, !dbg !487
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !488
  %17 = load i64, i64* %numWritten, align 8, !dbg !489
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !488
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !490
  %18 = load i64, i64* %numWritten, align 8, !dbg !491
  %inc = add i64 %18, 1, !dbg !491
  store i64 %inc, i64* %numWritten, align 8, !dbg !491
  br label %while.cond, !dbg !470, !llvm.loop !492

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !494
  ret i64 %19, !dbg !495
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !496 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !499, metadata !DIExpression()), !dbg !500
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !501, metadata !DIExpression()), !dbg !502
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !503, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !505, metadata !DIExpression()), !dbg !506
  store i64 0, i64* %numWritten, align 8, !dbg !506
  br label %while.cond, !dbg !507

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !508
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !509
  %cmp = icmp ult i64 %0, %1, !dbg !510
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !511

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !512
  %3 = load i64, i64* %numWritten, align 8, !dbg !513
  %mul = mul i64 2, %3, !dbg !514
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !512
  %4 = load i32, i32* %arrayidx, align 4, !dbg !512
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !515
  %tobool = icmp ne i32 %call, 0, !dbg !515
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !516

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !517
  %6 = load i64, i64* %numWritten, align 8, !dbg !518
  %mul1 = mul i64 2, %6, !dbg !519
  %add = add i64 %mul1, 1, !dbg !520
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !517
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !517
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !521
  %tobool4 = icmp ne i32 %call3, 0, !dbg !516
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !522
  br i1 %8, label %while.body, label %while.end, !dbg !507

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !523, metadata !DIExpression()), !dbg !525
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !526
  %10 = load i64, i64* %numWritten, align 8, !dbg !527
  %mul5 = mul i64 2, %10, !dbg !528
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !526
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !529
  %11 = load i32, i32* %byte, align 4, !dbg !530
  %conv = trunc i32 %11 to i8, !dbg !531
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !532
  %13 = load i64, i64* %numWritten, align 8, !dbg !533
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !532
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !534
  %14 = load i64, i64* %numWritten, align 8, !dbg !535
  %inc = add i64 %14, 1, !dbg !535
  store i64 %inc, i64* %numWritten, align 8, !dbg !535
  br label %while.cond, !dbg !507, !llvm.loop !536

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !538
  ret i64 %15, !dbg !539
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !540 {
entry:
  ret i32 1, !dbg !543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !544 {
entry:
  ret i32 0, !dbg !545
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !546 {
entry:
  %call = call i32 @rand() #8, !dbg !547
  %rem = srem i32 %call, 2, !dbg !548
  ret i32 %rem, !dbg !549
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !550 {
entry:
  ret void, !dbg !551
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !552 {
entry:
  ret void, !dbg !553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !554 {
entry:
  ret void, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !556 {
entry:
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !558 {
entry:
  ret void, !dbg !559
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !560 {
entry:
  ret void, !dbg !561
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !562 {
entry:
  ret void, !dbg !563
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !564 {
entry:
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !566 {
entry:
  ret void, !dbg !567
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !568 {
entry:
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !570 {
entry:
  ret void, !dbg !571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !572 {
entry:
  ret void, !dbg !573
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !574 {
entry:
  ret void, !dbg !575
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !576 {
entry:
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !578 {
entry:
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !580 {
entry:
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !582 {
entry:
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !584 {
entry:
  ret void, !dbg !585
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_999/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_65a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_999/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_65b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_999/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_65_bad", scope: !45, file: !45, line: 35, type: !55, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 37, type: !42)
!58 = !DILocation(line: 37, column: 12, scope: !54)
!59 = !DILocalVariable(name: "funcPtr", scope: !54, file: !45, line: 39, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !42}
!63 = !DILocation(line: 39, column: 12, scope: !54)
!64 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 40, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 100)
!68 = !DILocation(line: 40, column: 10, scope: !54)
!69 = !DILocation(line: 41, column: 12, scope: !54)
!70 = !DILocation(line: 41, column: 10, scope: !54)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !45, line: 44, type: !73)
!72 = distinct !DILexicalBlock(scope: !54, file: !45, line: 42, column: 5)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DILocation(line: 44, column: 16, scope: !72)
!77 = !DILocation(line: 44, column: 33, scope: !72)
!78 = !DILocation(line: 44, column: 26, scope: !72)
!79 = !DILocalVariable(name: "pFile", scope: !72, file: !45, line: 45, type: !80)
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
!135 = !DILocation(line: 45, column: 16, scope: !72)
!136 = !DILocation(line: 47, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !72, file: !45, line: 47, column: 13)
!138 = !DILocation(line: 47, column: 16, scope: !137)
!139 = !DILocation(line: 47, column: 25, scope: !137)
!140 = !DILocation(line: 47, column: 13, scope: !72)
!141 = !DILocation(line: 49, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !45, line: 48, column: 9)
!143 = !DILocation(line: 49, column: 19, scope: !142)
!144 = !DILocation(line: 50, column: 17, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !45, line: 50, column: 17)
!146 = !DILocation(line: 50, column: 23, scope: !145)
!147 = !DILocation(line: 50, column: 17, scope: !142)
!148 = !DILocation(line: 53, column: 27, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !45, line: 53, column: 21)
!150 = distinct !DILexicalBlock(scope: !145, file: !45, line: 51, column: 13)
!151 = !DILocation(line: 53, column: 32, scope: !149)
!152 = !DILocation(line: 53, column: 31, scope: !149)
!153 = !DILocation(line: 53, column: 51, scope: !149)
!154 = !DILocation(line: 53, column: 50, scope: !149)
!155 = !DILocation(line: 53, column: 41, scope: !149)
!156 = !DILocation(line: 53, column: 61, scope: !149)
!157 = !DILocation(line: 53, column: 21, scope: !149)
!158 = !DILocation(line: 53, column: 68, scope: !149)
!159 = !DILocation(line: 53, column: 21, scope: !150)
!160 = !DILocation(line: 55, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !149, file: !45, line: 54, column: 17)
!162 = !DILocation(line: 57, column: 21, scope: !161)
!163 = !DILocation(line: 57, column: 26, scope: !161)
!164 = !DILocation(line: 57, column: 35, scope: !161)
!165 = !DILocation(line: 58, column: 17, scope: !161)
!166 = !DILocation(line: 59, column: 24, scope: !150)
!167 = !DILocation(line: 59, column: 17, scope: !150)
!168 = !DILocation(line: 60, column: 13, scope: !150)
!169 = !DILocation(line: 61, column: 9, scope: !142)
!170 = !DILocation(line: 64, column: 5, scope: !54)
!171 = !DILocation(line: 64, column: 13, scope: !54)
!172 = !DILocation(line: 65, column: 1, scope: !54)
!173 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 73, type: !55, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!174 = !DILocalVariable(name: "data", scope: !173, file: !45, line: 75, type: !42)
!175 = !DILocation(line: 75, column: 12, scope: !173)
!176 = !DILocalVariable(name: "funcPtr", scope: !173, file: !45, line: 76, type: !60)
!177 = !DILocation(line: 76, column: 12, scope: !173)
!178 = !DILocalVariable(name: "dataBuffer", scope: !173, file: !45, line: 77, type: !65)
!179 = !DILocation(line: 77, column: 10, scope: !173)
!180 = !DILocation(line: 78, column: 12, scope: !173)
!181 = !DILocation(line: 78, column: 10, scope: !173)
!182 = !DILocation(line: 80, column: 12, scope: !173)
!183 = !DILocation(line: 80, column: 5, scope: !173)
!184 = !DILocation(line: 81, column: 5, scope: !173)
!185 = !DILocation(line: 81, column: 13, scope: !173)
!186 = !DILocation(line: 82, column: 1, scope: !173)
!187 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 86, type: !55, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!188 = !DILocalVariable(name: "data", scope: !187, file: !45, line: 88, type: !42)
!189 = !DILocation(line: 88, column: 12, scope: !187)
!190 = !DILocalVariable(name: "funcPtr", scope: !187, file: !45, line: 89, type: !60)
!191 = !DILocation(line: 89, column: 12, scope: !187)
!192 = !DILocalVariable(name: "dataBuffer", scope: !187, file: !45, line: 90, type: !65)
!193 = !DILocation(line: 90, column: 10, scope: !187)
!194 = !DILocation(line: 91, column: 12, scope: !187)
!195 = !DILocation(line: 91, column: 10, scope: !187)
!196 = !DILocalVariable(name: "dataLen", scope: !197, file: !45, line: 94, type: !73)
!197 = distinct !DILexicalBlock(scope: !187, file: !45, line: 92, column: 5)
!198 = !DILocation(line: 94, column: 16, scope: !197)
!199 = !DILocation(line: 94, column: 33, scope: !197)
!200 = !DILocation(line: 94, column: 26, scope: !197)
!201 = !DILocalVariable(name: "pFile", scope: !197, file: !45, line: 95, type: !80)
!202 = !DILocation(line: 95, column: 16, scope: !197)
!203 = !DILocation(line: 97, column: 17, scope: !204)
!204 = distinct !DILexicalBlock(scope: !197, file: !45, line: 97, column: 13)
!205 = !DILocation(line: 97, column: 16, scope: !204)
!206 = !DILocation(line: 97, column: 25, scope: !204)
!207 = !DILocation(line: 97, column: 13, scope: !197)
!208 = !DILocation(line: 99, column: 21, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !45, line: 98, column: 9)
!210 = !DILocation(line: 99, column: 19, scope: !209)
!211 = !DILocation(line: 100, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !45, line: 100, column: 17)
!213 = !DILocation(line: 100, column: 23, scope: !212)
!214 = !DILocation(line: 100, column: 17, scope: !209)
!215 = !DILocation(line: 103, column: 27, scope: !216)
!216 = distinct !DILexicalBlock(scope: !217, file: !45, line: 103, column: 21)
!217 = distinct !DILexicalBlock(scope: !212, file: !45, line: 101, column: 13)
!218 = !DILocation(line: 103, column: 32, scope: !216)
!219 = !DILocation(line: 103, column: 31, scope: !216)
!220 = !DILocation(line: 103, column: 51, scope: !216)
!221 = !DILocation(line: 103, column: 50, scope: !216)
!222 = !DILocation(line: 103, column: 41, scope: !216)
!223 = !DILocation(line: 103, column: 61, scope: !216)
!224 = !DILocation(line: 103, column: 21, scope: !216)
!225 = !DILocation(line: 103, column: 68, scope: !216)
!226 = !DILocation(line: 103, column: 21, scope: !217)
!227 = !DILocation(line: 105, column: 21, scope: !228)
!228 = distinct !DILexicalBlock(scope: !216, file: !45, line: 104, column: 17)
!229 = !DILocation(line: 107, column: 21, scope: !228)
!230 = !DILocation(line: 107, column: 26, scope: !228)
!231 = !DILocation(line: 107, column: 35, scope: !228)
!232 = !DILocation(line: 108, column: 17, scope: !228)
!233 = !DILocation(line: 109, column: 24, scope: !217)
!234 = !DILocation(line: 109, column: 17, scope: !217)
!235 = !DILocation(line: 110, column: 13, scope: !217)
!236 = !DILocation(line: 111, column: 9, scope: !209)
!237 = !DILocation(line: 113, column: 5, scope: !187)
!238 = !DILocation(line: 113, column: 13, scope: !187)
!239 = !DILocation(line: 114, column: 1, scope: !187)
!240 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_65_good", scope: !45, file: !45, line: 116, type: !55, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!241 = !DILocation(line: 118, column: 5, scope: !240)
!242 = !DILocation(line: 119, column: 5, scope: !240)
!243 = !DILocation(line: 120, column: 1, scope: !240)
!244 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_65b_badSink", scope: !49, file: !49, line: 32, type: !61, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!245 = !DILocalVariable(name: "data", arg: 1, scope: !244, file: !49, line: 32, type: !42)
!246 = !DILocation(line: 32, column: 78, scope: !244)
!247 = !DILocation(line: 35, column: 13, scope: !244)
!248 = !DILocation(line: 35, column: 21, scope: !244)
!249 = !DILocation(line: 35, column: 5, scope: !244)
!250 = !DILocation(line: 36, column: 1, scope: !244)
!251 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_65b_goodG2BSink", scope: !49, file: !49, line: 43, type: !61, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!252 = !DILocalVariable(name: "data", arg: 1, scope: !251, file: !49, line: 43, type: !42)
!253 = !DILocation(line: 43, column: 82, scope: !251)
!254 = !DILocation(line: 46, column: 13, scope: !251)
!255 = !DILocation(line: 46, column: 21, scope: !251)
!256 = !DILocation(line: 46, column: 5, scope: !251)
!257 = !DILocation(line: 47, column: 1, scope: !251)
!258 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_65b_goodB2GSink", scope: !49, file: !49, line: 50, type: !61, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!259 = !DILocalVariable(name: "data", arg: 1, scope: !258, file: !49, line: 50, type: !42)
!260 = !DILocation(line: 50, column: 82, scope: !258)
!261 = !DILocation(line: 53, column: 13, scope: !258)
!262 = !DILocation(line: 53, column: 29, scope: !258)
!263 = !DILocation(line: 53, column: 5, scope: !258)
!264 = !DILocation(line: 54, column: 1, scope: !258)
!265 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !61, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!266 = !DILocalVariable(name: "line", arg: 1, scope: !265, file: !3, line: 11, type: !42)
!267 = !DILocation(line: 11, column: 25, scope: !265)
!268 = !DILocation(line: 13, column: 1, scope: !265)
!269 = !DILocation(line: 14, column: 8, scope: !270)
!270 = distinct !DILexicalBlock(scope: !265, file: !3, line: 14, column: 8)
!271 = !DILocation(line: 14, column: 13, scope: !270)
!272 = !DILocation(line: 14, column: 8, scope: !265)
!273 = !DILocation(line: 16, column: 24, scope: !274)
!274 = distinct !DILexicalBlock(scope: !270, file: !3, line: 15, column: 5)
!275 = !DILocation(line: 16, column: 9, scope: !274)
!276 = !DILocation(line: 17, column: 5, scope: !274)
!277 = !DILocation(line: 18, column: 5, scope: !265)
!278 = !DILocation(line: 19, column: 1, scope: !265)
!279 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !61, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!280 = !DILocalVariable(name: "line", arg: 1, scope: !279, file: !3, line: 20, type: !42)
!281 = !DILocation(line: 20, column: 29, scope: !279)
!282 = !DILocation(line: 22, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !279, file: !3, line: 22, column: 8)
!284 = !DILocation(line: 22, column: 13, scope: !283)
!285 = !DILocation(line: 22, column: 8, scope: !279)
!286 = !DILocation(line: 24, column: 24, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !3, line: 23, column: 5)
!288 = !DILocation(line: 24, column: 9, scope: !287)
!289 = !DILocation(line: 25, column: 5, scope: !287)
!290 = !DILocation(line: 26, column: 1, scope: !279)
!291 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !292, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !294}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !74, line: 74, baseType: !23)
!296 = !DILocalVariable(name: "line", arg: 1, scope: !291, file: !3, line: 27, type: !294)
!297 = !DILocation(line: 27, column: 29, scope: !291)
!298 = !DILocation(line: 29, column: 8, scope: !299)
!299 = distinct !DILexicalBlock(scope: !291, file: !3, line: 29, column: 8)
!300 = !DILocation(line: 29, column: 13, scope: !299)
!301 = !DILocation(line: 29, column: 8, scope: !291)
!302 = !DILocation(line: 31, column: 27, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !3, line: 30, column: 5)
!304 = !DILocation(line: 31, column: 9, scope: !303)
!305 = !DILocation(line: 32, column: 5, scope: !303)
!306 = !DILocation(line: 33, column: 1, scope: !291)
!307 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !308, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !23}
!310 = !DILocalVariable(name: "intNumber", arg: 1, scope: !307, file: !3, line: 35, type: !23)
!311 = !DILocation(line: 35, column: 24, scope: !307)
!312 = !DILocation(line: 37, column: 20, scope: !307)
!313 = !DILocation(line: 37, column: 5, scope: !307)
!314 = !DILocation(line: 38, column: 1, scope: !307)
!315 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !316, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !318}
!318 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!319 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !315, file: !3, line: 40, type: !318)
!320 = !DILocation(line: 40, column: 28, scope: !315)
!321 = !DILocation(line: 42, column: 21, scope: !315)
!322 = !DILocation(line: 42, column: 5, scope: !315)
!323 = !DILocation(line: 43, column: 1, scope: !315)
!324 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !325, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !327}
!327 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!328 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !324, file: !3, line: 45, type: !327)
!329 = !DILocation(line: 45, column: 28, scope: !324)
!330 = !DILocation(line: 47, column: 20, scope: !324)
!331 = !DILocation(line: 47, column: 5, scope: !324)
!332 = !DILocation(line: 48, column: 1, scope: !324)
!333 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !334, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !108}
!336 = !DILocalVariable(name: "longNumber", arg: 1, scope: !333, file: !3, line: 50, type: !108)
!337 = !DILocation(line: 50, column: 26, scope: !333)
!338 = !DILocation(line: 52, column: 21, scope: !333)
!339 = !DILocation(line: 52, column: 5, scope: !333)
!340 = !DILocation(line: 53, column: 1, scope: !333)
!341 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !342, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !344}
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !345, line: 27, baseType: !346)
!345 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !107, line: 44, baseType: !108)
!347 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !341, file: !3, line: 55, type: !344)
!348 = !DILocation(line: 55, column: 33, scope: !341)
!349 = !DILocation(line: 57, column: 29, scope: !341)
!350 = !DILocation(line: 57, column: 5, scope: !341)
!351 = !DILocation(line: 58, column: 1, scope: !341)
!352 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !353, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !73}
!355 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !352, file: !3, line: 60, type: !73)
!356 = !DILocation(line: 60, column: 29, scope: !352)
!357 = !DILocation(line: 62, column: 21, scope: !352)
!358 = !DILocation(line: 62, column: 5, scope: !352)
!359 = !DILocation(line: 63, column: 1, scope: !352)
!360 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !361, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !43}
!363 = !DILocalVariable(name: "charHex", arg: 1, scope: !360, file: !3, line: 65, type: !43)
!364 = !DILocation(line: 65, column: 29, scope: !360)
!365 = !DILocation(line: 67, column: 22, scope: !360)
!366 = !DILocation(line: 67, column: 5, scope: !360)
!367 = !DILocation(line: 68, column: 1, scope: !360)
!368 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !369, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !295}
!371 = !DILocalVariable(name: "wideChar", arg: 1, scope: !368, file: !3, line: 70, type: !295)
!372 = !DILocation(line: 70, column: 29, scope: !368)
!373 = !DILocalVariable(name: "s", scope: !368, file: !3, line: 74, type: !374)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 64, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 2)
!377 = !DILocation(line: 74, column: 13, scope: !368)
!378 = !DILocation(line: 75, column: 16, scope: !368)
!379 = !DILocation(line: 75, column: 9, scope: !368)
!380 = !DILocation(line: 75, column: 14, scope: !368)
!381 = !DILocation(line: 76, column: 9, scope: !368)
!382 = !DILocation(line: 76, column: 14, scope: !368)
!383 = !DILocation(line: 77, column: 21, scope: !368)
!384 = !DILocation(line: 77, column: 5, scope: !368)
!385 = !DILocation(line: 78, column: 1, scope: !368)
!386 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !387, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !7}
!389 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !386, file: !3, line: 80, type: !7)
!390 = !DILocation(line: 80, column: 33, scope: !386)
!391 = !DILocation(line: 82, column: 20, scope: !386)
!392 = !DILocation(line: 82, column: 5, scope: !386)
!393 = !DILocation(line: 83, column: 1, scope: !386)
!394 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !395, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !25}
!397 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !394, file: !3, line: 85, type: !25)
!398 = !DILocation(line: 85, column: 45, scope: !394)
!399 = !DILocation(line: 87, column: 22, scope: !394)
!400 = !DILocation(line: 87, column: 5, scope: !394)
!401 = !DILocation(line: 88, column: 1, scope: !394)
!402 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !403, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !405}
!405 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!406 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !402, file: !3, line: 90, type: !405)
!407 = !DILocation(line: 90, column: 29, scope: !402)
!408 = !DILocation(line: 92, column: 20, scope: !402)
!409 = !DILocation(line: 92, column: 5, scope: !402)
!410 = !DILocation(line: 93, column: 1, scope: !402)
!411 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !412, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !414}
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !416, line: 100, baseType: !417)
!416 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_999/source_code")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !416, line: 96, size: 64, elements: !418)
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !417, file: !416, line: 98, baseType: !23, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !417, file: !416, line: 99, baseType: !23, size: 32, offset: 32)
!421 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !411, file: !3, line: 95, type: !414)
!422 = !DILocation(line: 95, column: 40, scope: !411)
!423 = !DILocation(line: 97, column: 26, scope: !411)
!424 = !DILocation(line: 97, column: 47, scope: !411)
!425 = !DILocation(line: 97, column: 55, scope: !411)
!426 = !DILocation(line: 97, column: 76, scope: !411)
!427 = !DILocation(line: 97, column: 5, scope: !411)
!428 = !DILocation(line: 98, column: 1, scope: !411)
!429 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !430, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !432, !73}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!433 = !DILocalVariable(name: "bytes", arg: 1, scope: !429, file: !3, line: 100, type: !432)
!434 = !DILocation(line: 100, column: 38, scope: !429)
!435 = !DILocalVariable(name: "numBytes", arg: 2, scope: !429, file: !3, line: 100, type: !73)
!436 = !DILocation(line: 100, column: 52, scope: !429)
!437 = !DILocalVariable(name: "i", scope: !429, file: !3, line: 102, type: !73)
!438 = !DILocation(line: 102, column: 12, scope: !429)
!439 = !DILocation(line: 103, column: 12, scope: !440)
!440 = distinct !DILexicalBlock(scope: !429, file: !3, line: 103, column: 5)
!441 = !DILocation(line: 103, column: 10, scope: !440)
!442 = !DILocation(line: 103, column: 17, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !3, line: 103, column: 5)
!444 = !DILocation(line: 103, column: 21, scope: !443)
!445 = !DILocation(line: 103, column: 19, scope: !443)
!446 = !DILocation(line: 103, column: 5, scope: !440)
!447 = !DILocation(line: 105, column: 24, scope: !448)
!448 = distinct !DILexicalBlock(scope: !443, file: !3, line: 104, column: 5)
!449 = !DILocation(line: 105, column: 30, scope: !448)
!450 = !DILocation(line: 105, column: 9, scope: !448)
!451 = !DILocation(line: 106, column: 5, scope: !448)
!452 = !DILocation(line: 103, column: 31, scope: !443)
!453 = !DILocation(line: 103, column: 5, scope: !443)
!454 = distinct !{!454, !446, !455, !456}
!455 = !DILocation(line: 106, column: 5, scope: !440)
!456 = !{!"llvm.loop.mustprogress"}
!457 = !DILocation(line: 107, column: 5, scope: !429)
!458 = !DILocation(line: 108, column: 1, scope: !429)
!459 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !460, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DISubroutineType(types: !461)
!461 = !{!73, !432, !73, !42}
!462 = !DILocalVariable(name: "bytes", arg: 1, scope: !459, file: !3, line: 113, type: !432)
!463 = !DILocation(line: 113, column: 39, scope: !459)
!464 = !DILocalVariable(name: "numBytes", arg: 2, scope: !459, file: !3, line: 113, type: !73)
!465 = !DILocation(line: 113, column: 53, scope: !459)
!466 = !DILocalVariable(name: "hex", arg: 3, scope: !459, file: !3, line: 113, type: !42)
!467 = !DILocation(line: 113, column: 71, scope: !459)
!468 = !DILocalVariable(name: "numWritten", scope: !459, file: !3, line: 115, type: !73)
!469 = !DILocation(line: 115, column: 12, scope: !459)
!470 = !DILocation(line: 121, column: 5, scope: !459)
!471 = !DILocation(line: 121, column: 12, scope: !459)
!472 = !DILocation(line: 121, column: 25, scope: !459)
!473 = !DILocation(line: 121, column: 23, scope: !459)
!474 = !DILocation(line: 121, column: 34, scope: !459)
!475 = !DILocation(line: 121, column: 37, scope: !459)
!476 = !DILocation(line: 121, column: 67, scope: !459)
!477 = !DILocation(line: 121, column: 70, scope: !459)
!478 = !DILocation(line: 0, scope: !459)
!479 = !DILocalVariable(name: "byte", scope: !480, file: !3, line: 123, type: !23)
!480 = distinct !DILexicalBlock(scope: !459, file: !3, line: 122, column: 5)
!481 = !DILocation(line: 123, column: 13, scope: !480)
!482 = !DILocation(line: 124, column: 17, scope: !480)
!483 = !DILocation(line: 124, column: 25, scope: !480)
!484 = !DILocation(line: 124, column: 23, scope: !480)
!485 = !DILocation(line: 124, column: 9, scope: !480)
!486 = !DILocation(line: 125, column: 45, scope: !480)
!487 = !DILocation(line: 125, column: 29, scope: !480)
!488 = !DILocation(line: 125, column: 9, scope: !480)
!489 = !DILocation(line: 125, column: 15, scope: !480)
!490 = !DILocation(line: 125, column: 27, scope: !480)
!491 = !DILocation(line: 126, column: 9, scope: !480)
!492 = distinct !{!492, !470, !493, !456}
!493 = !DILocation(line: 127, column: 5, scope: !459)
!494 = !DILocation(line: 129, column: 12, scope: !459)
!495 = !DILocation(line: 129, column: 5, scope: !459)
!496 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !497, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!497 = !DISubroutineType(types: !498)
!498 = !{!73, !432, !73, !294}
!499 = !DILocalVariable(name: "bytes", arg: 1, scope: !496, file: !3, line: 135, type: !432)
!500 = !DILocation(line: 135, column: 41, scope: !496)
!501 = !DILocalVariable(name: "numBytes", arg: 2, scope: !496, file: !3, line: 135, type: !73)
!502 = !DILocation(line: 135, column: 55, scope: !496)
!503 = !DILocalVariable(name: "hex", arg: 3, scope: !496, file: !3, line: 135, type: !294)
!504 = !DILocation(line: 135, column: 76, scope: !496)
!505 = !DILocalVariable(name: "numWritten", scope: !496, file: !3, line: 137, type: !73)
!506 = !DILocation(line: 137, column: 12, scope: !496)
!507 = !DILocation(line: 143, column: 5, scope: !496)
!508 = !DILocation(line: 143, column: 12, scope: !496)
!509 = !DILocation(line: 143, column: 25, scope: !496)
!510 = !DILocation(line: 143, column: 23, scope: !496)
!511 = !DILocation(line: 143, column: 34, scope: !496)
!512 = !DILocation(line: 143, column: 47, scope: !496)
!513 = !DILocation(line: 143, column: 55, scope: !496)
!514 = !DILocation(line: 143, column: 53, scope: !496)
!515 = !DILocation(line: 143, column: 37, scope: !496)
!516 = !DILocation(line: 143, column: 68, scope: !496)
!517 = !DILocation(line: 143, column: 81, scope: !496)
!518 = !DILocation(line: 143, column: 89, scope: !496)
!519 = !DILocation(line: 143, column: 87, scope: !496)
!520 = !DILocation(line: 143, column: 100, scope: !496)
!521 = !DILocation(line: 143, column: 71, scope: !496)
!522 = !DILocation(line: 0, scope: !496)
!523 = !DILocalVariable(name: "byte", scope: !524, file: !3, line: 145, type: !23)
!524 = distinct !DILexicalBlock(scope: !496, file: !3, line: 144, column: 5)
!525 = !DILocation(line: 145, column: 13, scope: !524)
!526 = !DILocation(line: 146, column: 18, scope: !524)
!527 = !DILocation(line: 146, column: 26, scope: !524)
!528 = !DILocation(line: 146, column: 24, scope: !524)
!529 = !DILocation(line: 146, column: 9, scope: !524)
!530 = !DILocation(line: 147, column: 45, scope: !524)
!531 = !DILocation(line: 147, column: 29, scope: !524)
!532 = !DILocation(line: 147, column: 9, scope: !524)
!533 = !DILocation(line: 147, column: 15, scope: !524)
!534 = !DILocation(line: 147, column: 27, scope: !524)
!535 = !DILocation(line: 148, column: 9, scope: !524)
!536 = distinct !{!536, !507, !537, !456}
!537 = !DILocation(line: 149, column: 5, scope: !496)
!538 = !DILocation(line: 151, column: 12, scope: !496)
!539 = !DILocation(line: 151, column: 5, scope: !496)
!540 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !541, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!541 = !DISubroutineType(types: !542)
!542 = !{!23}
!543 = !DILocation(line: 158, column: 5, scope: !540)
!544 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !541, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!545 = !DILocation(line: 163, column: 5, scope: !544)
!546 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !541, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DILocation(line: 168, column: 13, scope: !546)
!548 = !DILocation(line: 168, column: 20, scope: !546)
!549 = !DILocation(line: 168, column: 5, scope: !546)
!550 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DILocation(line: 187, column: 16, scope: !550)
!552 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!553 = !DILocation(line: 188, column: 16, scope: !552)
!554 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!555 = !DILocation(line: 189, column: 16, scope: !554)
!556 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!557 = !DILocation(line: 190, column: 16, scope: !556)
!558 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DILocation(line: 191, column: 16, scope: !558)
!560 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!561 = !DILocation(line: 192, column: 16, scope: !560)
!562 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DILocation(line: 193, column: 16, scope: !562)
!564 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!565 = !DILocation(line: 194, column: 16, scope: !564)
!566 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DILocation(line: 195, column: 16, scope: !566)
!568 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!569 = !DILocation(line: 198, column: 15, scope: !568)
!570 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DILocation(line: 199, column: 15, scope: !570)
!572 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!573 = !DILocation(line: 200, column: 15, scope: !572)
!574 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DILocation(line: 201, column: 15, scope: !574)
!576 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!577 = !DILocation(line: 202, column: 15, scope: !576)
!578 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DILocation(line: 203, column: 15, scope: !578)
!580 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DILocation(line: 204, column: 15, scope: !580)
!582 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DILocation(line: 205, column: 15, scope: !582)
!584 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DILocation(line: 206, column: 15, scope: !584)
