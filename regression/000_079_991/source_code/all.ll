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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_51_bad() #0 !dbg !54 {
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
  %11 = load i8*, i8** %data, align 8, !dbg !165
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_51b_badSink(i8* %11), !dbg !166
  ret void, !dbg !167
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
define dso_local void @goodG2B() #0 !dbg !168 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !171, metadata !DIExpression()), !dbg !172
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !172
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !172
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !173
  store i8* %arraydecay, i8** %data, align 8, !dbg !174
  %1 = load i8*, i8** %data, align 8, !dbg !175
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !176
  %2 = load i8*, i8** %data, align 8, !dbg !177
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_51b_goodG2BSink(i8* %2), !dbg !178
  ret void, !dbg !179
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !180 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !183, metadata !DIExpression()), !dbg !184
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !184
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !184
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !185
  store i8* %arraydecay, i8** %data, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !187, metadata !DIExpression()), !dbg !189
  %1 = load i8*, i8** %data, align 8, !dbg !190
  %call = call i64 @strlen(i8* %1) #7, !dbg !191
  store i64 %call, i64* %dataLen, align 8, !dbg !189
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !192, metadata !DIExpression()), !dbg !193
  %2 = load i64, i64* %dataLen, align 8, !dbg !194
  %sub = sub i64 100, %2, !dbg !196
  %cmp = icmp ugt i64 %sub, 1, !dbg !197
  br i1 %cmp, label %if.then, label %if.end11, !dbg !198

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !199
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !201
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !202
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !204
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !205

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !206
  %5 = load i64, i64* %dataLen, align 8, !dbg !209
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !210
  %6 = load i64, i64* %dataLen, align 8, !dbg !211
  %sub4 = sub i64 100, %6, !dbg !212
  %conv = trunc i64 %sub4 to i32, !dbg !213
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !214
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !215
  %cmp6 = icmp eq i8* %call5, null, !dbg !216
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !217

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !218
  %8 = load i8*, i8** %data, align 8, !dbg !220
  %9 = load i64, i64* %dataLen, align 8, !dbg !221
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !220
  store i8 0, i8* %arrayidx, align 1, !dbg !222
  br label %if.end, !dbg !223

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !224
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !225
  br label %if.end10, !dbg !226

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !227

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !228
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_51b_goodB2GSink(i8* %11), !dbg !229
  ret void, !dbg !230
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_51_good() #0 !dbg !231 {
entry:
  call void @goodG2B(), !dbg !232
  call void @goodB2G(), !dbg !233
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_51b_badSink(i8* %data) #0 !dbg !235 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !238, metadata !DIExpression()), !dbg !239
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !240
  %1 = load i8*, i8** %data.addr, align 8, !dbg !241
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !242
  ret void, !dbg !243
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_51b_goodG2BSink(i8* %data) #0 !dbg !244 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !247
  %1 = load i8*, i8** %data.addr, align 8, !dbg !248
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !249
  ret void, !dbg !250
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_51b_goodB2GSink(i8* %data) #0 !dbg !251 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !252, metadata !DIExpression()), !dbg !253
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !254
  %1 = load i8*, i8** %data.addr, align 8, !dbg !255
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %1), !dbg !256
  ret void, !dbg !257
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !258 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !259, metadata !DIExpression()), !dbg !260
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !261
  %0 = load i8*, i8** %line.addr, align 8, !dbg !262
  %cmp = icmp ne i8* %0, null, !dbg !264
  br i1 %cmp, label %if.then, label %if.end, !dbg !265

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !266
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !268
  br label %if.end, !dbg !269

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.12, i64 0, i64 0)), !dbg !270
  ret void, !dbg !271
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !272 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = load i8*, i8** %line.addr, align 8, !dbg !275
  %cmp = icmp ne i8* %0, null, !dbg !277
  br i1 %cmp, label %if.then, label %if.end, !dbg !278

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !279
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !281
  br label %if.end, !dbg !282

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !283
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !284 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !289, metadata !DIExpression()), !dbg !290
  %0 = load i32*, i32** %line.addr, align 8, !dbg !291
  %cmp = icmp ne i32* %0, null, !dbg !293
  br i1 %cmp, label %if.then, label %if.end, !dbg !294

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !295
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.13, i64 0, i64 0), i32* %1), !dbg !297
  br label %if.end, !dbg !298

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !299
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !300 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !305
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !306
  ret void, !dbg !307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !308 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !314
  %conv = sext i16 %0 to i32, !dbg !314
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !315
  ret void, !dbg !316
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !317 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !323
  %conv = fpext float %0 to double, !dbg !323
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !324
  ret void, !dbg !325
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !326 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !331
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), i64 %0), !dbg !332
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !334 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !340, metadata !DIExpression()), !dbg !341
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !342
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), i64 %0), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !345 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !348, metadata !DIExpression()), !dbg !349
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !350
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !351
  ret void, !dbg !352
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !353 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !356, metadata !DIExpression()), !dbg !357
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !358
  %conv = sext i8 %0 to i32, !dbg !358
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !359
  ret void, !dbg !360
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !361 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !364, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !366, metadata !DIExpression()), !dbg !370
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !371
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !372
  store i32 %0, i32* %arrayidx, align 4, !dbg !373
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !374
  store i32 0, i32* %arrayidx1, align 4, !dbg !375
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !376
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !377
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !379 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !384
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !385
  ret void, !dbg !386
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !387 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !392
  %conv = zext i8 %0 to i32, !dbg !392
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !393
  ret void, !dbg !394
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !395 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !399, metadata !DIExpression()), !dbg !400
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !401
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !402
  ret void, !dbg !403
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !404 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !416
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !417
  %1 = load i32, i32* %intOne, align 4, !dbg !417
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !418
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !419
  %3 = load i32, i32* %intTwo, align 4, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !422 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !426, metadata !DIExpression()), !dbg !427
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata i64* %i, metadata !430, metadata !DIExpression()), !dbg !431
  store i64 0, i64* %i, align 8, !dbg !432
  br label %for.cond, !dbg !434

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !435
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !437
  %cmp = icmp ult i64 %0, %1, !dbg !438
  br i1 %cmp, label %for.body, label %for.end, !dbg !439

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !440
  %3 = load i64, i64* %i, align 8, !dbg !442
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !440
  %4 = load i8, i8* %arrayidx, align 1, !dbg !440
  %conv = zext i8 %4 to i32, !dbg !440
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !443
  br label %for.inc, !dbg !444

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !445
  %inc = add i64 %5, 1, !dbg !445
  store i64 %inc, i64* %i, align 8, !dbg !445
  br label %for.cond, !dbg !446, !llvm.loop !447

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !450
  ret void, !dbg !451
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !452 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !455, metadata !DIExpression()), !dbg !456
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !457, metadata !DIExpression()), !dbg !458
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !459, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !461, metadata !DIExpression()), !dbg !462
  store i64 0, i64* %numWritten, align 8, !dbg !462
  br label %while.cond, !dbg !463

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !464
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !465
  %cmp = icmp ult i64 %0, %1, !dbg !466
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !467

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !468
  %2 = load i16*, i16** %call, align 8, !dbg !468
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !468
  %4 = load i64, i64* %numWritten, align 8, !dbg !468
  %mul = mul i64 2, %4, !dbg !468
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !468
  %5 = load i8, i8* %arrayidx, align 1, !dbg !468
  %conv = sext i8 %5 to i32, !dbg !468
  %idxprom = sext i32 %conv to i64, !dbg !468
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !468
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !468
  %conv2 = zext i16 %6 to i32, !dbg !468
  %and = and i32 %conv2, 4096, !dbg !468
  %tobool = icmp ne i32 %and, 0, !dbg !468
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !469

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !470
  %7 = load i16*, i16** %call3, align 8, !dbg !470
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !470
  %9 = load i64, i64* %numWritten, align 8, !dbg !470
  %mul4 = mul i64 2, %9, !dbg !470
  %add = add i64 %mul4, 1, !dbg !470
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !470
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !470
  %conv6 = sext i8 %10 to i32, !dbg !470
  %idxprom7 = sext i32 %conv6 to i64, !dbg !470
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !470
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !470
  %conv9 = zext i16 %11 to i32, !dbg !470
  %and10 = and i32 %conv9, 4096, !dbg !470
  %tobool11 = icmp ne i32 %and10, 0, !dbg !469
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !471
  br i1 %12, label %while.body, label %while.end, !dbg !463

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !472, metadata !DIExpression()), !dbg !474
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !475
  %14 = load i64, i64* %numWritten, align 8, !dbg !476
  %mul12 = mul i64 2, %14, !dbg !477
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !475
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !478
  %15 = load i32, i32* %byte, align 4, !dbg !479
  %conv15 = trunc i32 %15 to i8, !dbg !480
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !481
  %17 = load i64, i64* %numWritten, align 8, !dbg !482
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !481
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !483
  %18 = load i64, i64* %numWritten, align 8, !dbg !484
  %inc = add i64 %18, 1, !dbg !484
  store i64 %inc, i64* %numWritten, align 8, !dbg !484
  br label %while.cond, !dbg !463, !llvm.loop !485

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !487
  ret i64 %19, !dbg !488
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !489 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !492, metadata !DIExpression()), !dbg !493
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !494, metadata !DIExpression()), !dbg !495
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !496, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !498, metadata !DIExpression()), !dbg !499
  store i64 0, i64* %numWritten, align 8, !dbg !499
  br label %while.cond, !dbg !500

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !501
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !502
  %cmp = icmp ult i64 %0, %1, !dbg !503
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !504

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !505
  %3 = load i64, i64* %numWritten, align 8, !dbg !506
  %mul = mul i64 2, %3, !dbg !507
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !505
  %4 = load i32, i32* %arrayidx, align 4, !dbg !505
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !508
  %tobool = icmp ne i32 %call, 0, !dbg !508
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !509

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !510
  %6 = load i64, i64* %numWritten, align 8, !dbg !511
  %mul1 = mul i64 2, %6, !dbg !512
  %add = add i64 %mul1, 1, !dbg !513
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !510
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !510
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !514
  %tobool4 = icmp ne i32 %call3, 0, !dbg !509
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !515
  br i1 %8, label %while.body, label %while.end, !dbg !500

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !516, metadata !DIExpression()), !dbg !518
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !519
  %10 = load i64, i64* %numWritten, align 8, !dbg !520
  %mul5 = mul i64 2, %10, !dbg !521
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !519
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !522
  %11 = load i32, i32* %byte, align 4, !dbg !523
  %conv = trunc i32 %11 to i8, !dbg !524
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !525
  %13 = load i64, i64* %numWritten, align 8, !dbg !526
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !525
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !527
  %14 = load i64, i64* %numWritten, align 8, !dbg !528
  %inc = add i64 %14, 1, !dbg !528
  store i64 %inc, i64* %numWritten, align 8, !dbg !528
  br label %while.cond, !dbg !500, !llvm.loop !529

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !531
  ret i64 %15, !dbg !532
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !533 {
entry:
  ret i32 1, !dbg !536
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !537 {
entry:
  ret i32 0, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !539 {
entry:
  %call = call i32 @rand() #8, !dbg !540
  %rem = srem i32 %call, 2, !dbg !541
  ret i32 %rem, !dbg !542
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !543 {
entry:
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !545 {
entry:
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !547 {
entry:
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !549 {
entry:
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !551 {
entry:
  ret void, !dbg !552
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !553 {
entry:
  ret void, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !555 {
entry:
  ret void, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !557 {
entry:
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !559 {
entry:
  ret void, !dbg !560
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !561 {
entry:
  ret void, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !577 {
entry:
  ret void, !dbg !578
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_991/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_51a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_991/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_51b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_991/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_51_bad", scope: !45, file: !45, line: 35, type: !55, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!165 = !DILocation(line: 61, column: 70, scope: !54)
!166 = !DILocation(line: 61, column: 5, scope: !54)
!167 = !DILocation(line: 62, column: 1, scope: !54)
!168 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 70, type: !55, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!169 = !DILocalVariable(name: "data", scope: !168, file: !45, line: 72, type: !42)
!170 = !DILocation(line: 72, column: 12, scope: !168)
!171 = !DILocalVariable(name: "dataBuffer", scope: !168, file: !45, line: 73, type: !60)
!172 = !DILocation(line: 73, column: 10, scope: !168)
!173 = !DILocation(line: 74, column: 12, scope: !168)
!174 = !DILocation(line: 74, column: 10, scope: !168)
!175 = !DILocation(line: 76, column: 12, scope: !168)
!176 = !DILocation(line: 76, column: 5, scope: !168)
!177 = !DILocation(line: 77, column: 74, scope: !168)
!178 = !DILocation(line: 77, column: 5, scope: !168)
!179 = !DILocation(line: 78, column: 1, scope: !168)
!180 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 82, type: !55, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!181 = !DILocalVariable(name: "data", scope: !180, file: !45, line: 84, type: !42)
!182 = !DILocation(line: 84, column: 12, scope: !180)
!183 = !DILocalVariable(name: "dataBuffer", scope: !180, file: !45, line: 85, type: !60)
!184 = !DILocation(line: 85, column: 10, scope: !180)
!185 = !DILocation(line: 86, column: 12, scope: !180)
!186 = !DILocation(line: 86, column: 10, scope: !180)
!187 = !DILocalVariable(name: "dataLen", scope: !188, file: !45, line: 89, type: !68)
!188 = distinct !DILexicalBlock(scope: !180, file: !45, line: 87, column: 5)
!189 = !DILocation(line: 89, column: 16, scope: !188)
!190 = !DILocation(line: 89, column: 33, scope: !188)
!191 = !DILocation(line: 89, column: 26, scope: !188)
!192 = !DILocalVariable(name: "pFile", scope: !188, file: !45, line: 90, type: !75)
!193 = !DILocation(line: 90, column: 16, scope: !188)
!194 = !DILocation(line: 92, column: 17, scope: !195)
!195 = distinct !DILexicalBlock(scope: !188, file: !45, line: 92, column: 13)
!196 = !DILocation(line: 92, column: 16, scope: !195)
!197 = !DILocation(line: 92, column: 25, scope: !195)
!198 = !DILocation(line: 92, column: 13, scope: !188)
!199 = !DILocation(line: 94, column: 21, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !45, line: 93, column: 9)
!201 = !DILocation(line: 94, column: 19, scope: !200)
!202 = !DILocation(line: 95, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !45, line: 95, column: 17)
!204 = !DILocation(line: 95, column: 23, scope: !203)
!205 = !DILocation(line: 95, column: 17, scope: !200)
!206 = !DILocation(line: 98, column: 27, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !45, line: 98, column: 21)
!208 = distinct !DILexicalBlock(scope: !203, file: !45, line: 96, column: 13)
!209 = !DILocation(line: 98, column: 32, scope: !207)
!210 = !DILocation(line: 98, column: 31, scope: !207)
!211 = !DILocation(line: 98, column: 51, scope: !207)
!212 = !DILocation(line: 98, column: 50, scope: !207)
!213 = !DILocation(line: 98, column: 41, scope: !207)
!214 = !DILocation(line: 98, column: 61, scope: !207)
!215 = !DILocation(line: 98, column: 21, scope: !207)
!216 = !DILocation(line: 98, column: 68, scope: !207)
!217 = !DILocation(line: 98, column: 21, scope: !208)
!218 = !DILocation(line: 100, column: 21, scope: !219)
!219 = distinct !DILexicalBlock(scope: !207, file: !45, line: 99, column: 17)
!220 = !DILocation(line: 102, column: 21, scope: !219)
!221 = !DILocation(line: 102, column: 26, scope: !219)
!222 = !DILocation(line: 102, column: 35, scope: !219)
!223 = !DILocation(line: 103, column: 17, scope: !219)
!224 = !DILocation(line: 104, column: 24, scope: !208)
!225 = !DILocation(line: 104, column: 17, scope: !208)
!226 = !DILocation(line: 105, column: 13, scope: !208)
!227 = !DILocation(line: 106, column: 9, scope: !200)
!228 = !DILocation(line: 108, column: 74, scope: !180)
!229 = !DILocation(line: 108, column: 5, scope: !180)
!230 = !DILocation(line: 109, column: 1, scope: !180)
!231 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_51_good", scope: !45, file: !45, line: 111, type: !55, scopeLine: 112, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!232 = !DILocation(line: 113, column: 5, scope: !231)
!233 = !DILocation(line: 114, column: 5, scope: !231)
!234 = !DILocation(line: 115, column: 1, scope: !231)
!235 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_51b_badSink", scope: !49, file: !49, line: 32, type: !236, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !42}
!238 = !DILocalVariable(name: "data", arg: 1, scope: !235, file: !49, line: 32, type: !42)
!239 = !DILocation(line: 32, column: 78, scope: !235)
!240 = !DILocation(line: 35, column: 13, scope: !235)
!241 = !DILocation(line: 35, column: 21, scope: !235)
!242 = !DILocation(line: 35, column: 5, scope: !235)
!243 = !DILocation(line: 36, column: 1, scope: !235)
!244 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_51b_goodG2BSink", scope: !49, file: !49, line: 43, type: !236, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!245 = !DILocalVariable(name: "data", arg: 1, scope: !244, file: !49, line: 43, type: !42)
!246 = !DILocation(line: 43, column: 82, scope: !244)
!247 = !DILocation(line: 46, column: 13, scope: !244)
!248 = !DILocation(line: 46, column: 21, scope: !244)
!249 = !DILocation(line: 46, column: 5, scope: !244)
!250 = !DILocation(line: 47, column: 1, scope: !244)
!251 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_51b_goodB2GSink", scope: !49, file: !49, line: 50, type: !236, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!252 = !DILocalVariable(name: "data", arg: 1, scope: !251, file: !49, line: 50, type: !42)
!253 = !DILocation(line: 50, column: 82, scope: !251)
!254 = !DILocation(line: 53, column: 13, scope: !251)
!255 = !DILocation(line: 53, column: 29, scope: !251)
!256 = !DILocation(line: 53, column: 5, scope: !251)
!257 = !DILocation(line: 54, column: 1, scope: !251)
!258 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !236, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!259 = !DILocalVariable(name: "line", arg: 1, scope: !258, file: !3, line: 11, type: !42)
!260 = !DILocation(line: 11, column: 25, scope: !258)
!261 = !DILocation(line: 13, column: 1, scope: !258)
!262 = !DILocation(line: 14, column: 8, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !3, line: 14, column: 8)
!264 = !DILocation(line: 14, column: 13, scope: !263)
!265 = !DILocation(line: 14, column: 8, scope: !258)
!266 = !DILocation(line: 16, column: 24, scope: !267)
!267 = distinct !DILexicalBlock(scope: !263, file: !3, line: 15, column: 5)
!268 = !DILocation(line: 16, column: 9, scope: !267)
!269 = !DILocation(line: 17, column: 5, scope: !267)
!270 = !DILocation(line: 18, column: 5, scope: !258)
!271 = !DILocation(line: 19, column: 1, scope: !258)
!272 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !236, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!273 = !DILocalVariable(name: "line", arg: 1, scope: !272, file: !3, line: 20, type: !42)
!274 = !DILocation(line: 20, column: 29, scope: !272)
!275 = !DILocation(line: 22, column: 8, scope: !276)
!276 = distinct !DILexicalBlock(scope: !272, file: !3, line: 22, column: 8)
!277 = !DILocation(line: 22, column: 13, scope: !276)
!278 = !DILocation(line: 22, column: 8, scope: !272)
!279 = !DILocation(line: 24, column: 24, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !3, line: 23, column: 5)
!281 = !DILocation(line: 24, column: 9, scope: !280)
!282 = !DILocation(line: 25, column: 5, scope: !280)
!283 = !DILocation(line: 26, column: 1, scope: !272)
!284 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !285, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !287}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!289 = !DILocalVariable(name: "line", arg: 1, scope: !284, file: !3, line: 27, type: !287)
!290 = !DILocation(line: 27, column: 29, scope: !284)
!291 = !DILocation(line: 29, column: 8, scope: !292)
!292 = distinct !DILexicalBlock(scope: !284, file: !3, line: 29, column: 8)
!293 = !DILocation(line: 29, column: 13, scope: !292)
!294 = !DILocation(line: 29, column: 8, scope: !284)
!295 = !DILocation(line: 31, column: 27, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !3, line: 30, column: 5)
!297 = !DILocation(line: 31, column: 9, scope: !296)
!298 = !DILocation(line: 32, column: 5, scope: !296)
!299 = !DILocation(line: 33, column: 1, scope: !284)
!300 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !301, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !23}
!303 = !DILocalVariable(name: "intNumber", arg: 1, scope: !300, file: !3, line: 35, type: !23)
!304 = !DILocation(line: 35, column: 24, scope: !300)
!305 = !DILocation(line: 37, column: 20, scope: !300)
!306 = !DILocation(line: 37, column: 5, scope: !300)
!307 = !DILocation(line: 38, column: 1, scope: !300)
!308 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !309, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !311}
!311 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!312 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !308, file: !3, line: 40, type: !311)
!313 = !DILocation(line: 40, column: 28, scope: !308)
!314 = !DILocation(line: 42, column: 21, scope: !308)
!315 = !DILocation(line: 42, column: 5, scope: !308)
!316 = !DILocation(line: 43, column: 1, scope: !308)
!317 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !318, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!318 = !DISubroutineType(types: !319)
!319 = !{null, !320}
!320 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!321 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !317, file: !3, line: 45, type: !320)
!322 = !DILocation(line: 45, column: 28, scope: !317)
!323 = !DILocation(line: 47, column: 20, scope: !317)
!324 = !DILocation(line: 47, column: 5, scope: !317)
!325 = !DILocation(line: 48, column: 1, scope: !317)
!326 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !327, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !103}
!329 = !DILocalVariable(name: "longNumber", arg: 1, scope: !326, file: !3, line: 50, type: !103)
!330 = !DILocation(line: 50, column: 26, scope: !326)
!331 = !DILocation(line: 52, column: 21, scope: !326)
!332 = !DILocation(line: 52, column: 5, scope: !326)
!333 = !DILocation(line: 53, column: 1, scope: !326)
!334 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !335, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !337}
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !338, line: 27, baseType: !339)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !102, line: 44, baseType: !103)
!340 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !334, file: !3, line: 55, type: !337)
!341 = !DILocation(line: 55, column: 33, scope: !334)
!342 = !DILocation(line: 57, column: 29, scope: !334)
!343 = !DILocation(line: 57, column: 5, scope: !334)
!344 = !DILocation(line: 58, column: 1, scope: !334)
!345 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !346, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !68}
!348 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !345, file: !3, line: 60, type: !68)
!349 = !DILocation(line: 60, column: 29, scope: !345)
!350 = !DILocation(line: 62, column: 21, scope: !345)
!351 = !DILocation(line: 62, column: 5, scope: !345)
!352 = !DILocation(line: 63, column: 1, scope: !345)
!353 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !354, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !43}
!356 = !DILocalVariable(name: "charHex", arg: 1, scope: !353, file: !3, line: 65, type: !43)
!357 = !DILocation(line: 65, column: 29, scope: !353)
!358 = !DILocation(line: 67, column: 22, scope: !353)
!359 = !DILocation(line: 67, column: 5, scope: !353)
!360 = !DILocation(line: 68, column: 1, scope: !353)
!361 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !362, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!362 = !DISubroutineType(types: !363)
!363 = !{null, !288}
!364 = !DILocalVariable(name: "wideChar", arg: 1, scope: !361, file: !3, line: 70, type: !288)
!365 = !DILocation(line: 70, column: 29, scope: !361)
!366 = !DILocalVariable(name: "s", scope: !361, file: !3, line: 74, type: !367)
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 64, elements: !368)
!368 = !{!369}
!369 = !DISubrange(count: 2)
!370 = !DILocation(line: 74, column: 13, scope: !361)
!371 = !DILocation(line: 75, column: 16, scope: !361)
!372 = !DILocation(line: 75, column: 9, scope: !361)
!373 = !DILocation(line: 75, column: 14, scope: !361)
!374 = !DILocation(line: 76, column: 9, scope: !361)
!375 = !DILocation(line: 76, column: 14, scope: !361)
!376 = !DILocation(line: 77, column: 21, scope: !361)
!377 = !DILocation(line: 77, column: 5, scope: !361)
!378 = !DILocation(line: 78, column: 1, scope: !361)
!379 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !380, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !7}
!382 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !379, file: !3, line: 80, type: !7)
!383 = !DILocation(line: 80, column: 33, scope: !379)
!384 = !DILocation(line: 82, column: 20, scope: !379)
!385 = !DILocation(line: 82, column: 5, scope: !379)
!386 = !DILocation(line: 83, column: 1, scope: !379)
!387 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !388, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!388 = !DISubroutineType(types: !389)
!389 = !{null, !25}
!390 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !387, file: !3, line: 85, type: !25)
!391 = !DILocation(line: 85, column: 45, scope: !387)
!392 = !DILocation(line: 87, column: 22, scope: !387)
!393 = !DILocation(line: 87, column: 5, scope: !387)
!394 = !DILocation(line: 88, column: 1, scope: !387)
!395 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !396, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !398}
!398 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!399 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !395, file: !3, line: 90, type: !398)
!400 = !DILocation(line: 90, column: 29, scope: !395)
!401 = !DILocation(line: 92, column: 20, scope: !395)
!402 = !DILocation(line: 92, column: 5, scope: !395)
!403 = !DILocation(line: 93, column: 1, scope: !395)
!404 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !405, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !407}
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !409, line: 100, baseType: !410)
!409 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_991/source_code")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !409, line: 96, size: 64, elements: !411)
!411 = !{!412, !413}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !410, file: !409, line: 98, baseType: !23, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !410, file: !409, line: 99, baseType: !23, size: 32, offset: 32)
!414 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !404, file: !3, line: 95, type: !407)
!415 = !DILocation(line: 95, column: 40, scope: !404)
!416 = !DILocation(line: 97, column: 26, scope: !404)
!417 = !DILocation(line: 97, column: 47, scope: !404)
!418 = !DILocation(line: 97, column: 55, scope: !404)
!419 = !DILocation(line: 97, column: 76, scope: !404)
!420 = !DILocation(line: 97, column: 5, scope: !404)
!421 = !DILocation(line: 98, column: 1, scope: !404)
!422 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !423, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !425, !68}
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!426 = !DILocalVariable(name: "bytes", arg: 1, scope: !422, file: !3, line: 100, type: !425)
!427 = !DILocation(line: 100, column: 38, scope: !422)
!428 = !DILocalVariable(name: "numBytes", arg: 2, scope: !422, file: !3, line: 100, type: !68)
!429 = !DILocation(line: 100, column: 52, scope: !422)
!430 = !DILocalVariable(name: "i", scope: !422, file: !3, line: 102, type: !68)
!431 = !DILocation(line: 102, column: 12, scope: !422)
!432 = !DILocation(line: 103, column: 12, scope: !433)
!433 = distinct !DILexicalBlock(scope: !422, file: !3, line: 103, column: 5)
!434 = !DILocation(line: 103, column: 10, scope: !433)
!435 = !DILocation(line: 103, column: 17, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !3, line: 103, column: 5)
!437 = !DILocation(line: 103, column: 21, scope: !436)
!438 = !DILocation(line: 103, column: 19, scope: !436)
!439 = !DILocation(line: 103, column: 5, scope: !433)
!440 = !DILocation(line: 105, column: 24, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !3, line: 104, column: 5)
!442 = !DILocation(line: 105, column: 30, scope: !441)
!443 = !DILocation(line: 105, column: 9, scope: !441)
!444 = !DILocation(line: 106, column: 5, scope: !441)
!445 = !DILocation(line: 103, column: 31, scope: !436)
!446 = !DILocation(line: 103, column: 5, scope: !436)
!447 = distinct !{!447, !439, !448, !449}
!448 = !DILocation(line: 106, column: 5, scope: !433)
!449 = !{!"llvm.loop.mustprogress"}
!450 = !DILocation(line: 107, column: 5, scope: !422)
!451 = !DILocation(line: 108, column: 1, scope: !422)
!452 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !453, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!453 = !DISubroutineType(types: !454)
!454 = !{!68, !425, !68, !42}
!455 = !DILocalVariable(name: "bytes", arg: 1, scope: !452, file: !3, line: 113, type: !425)
!456 = !DILocation(line: 113, column: 39, scope: !452)
!457 = !DILocalVariable(name: "numBytes", arg: 2, scope: !452, file: !3, line: 113, type: !68)
!458 = !DILocation(line: 113, column: 53, scope: !452)
!459 = !DILocalVariable(name: "hex", arg: 3, scope: !452, file: !3, line: 113, type: !42)
!460 = !DILocation(line: 113, column: 71, scope: !452)
!461 = !DILocalVariable(name: "numWritten", scope: !452, file: !3, line: 115, type: !68)
!462 = !DILocation(line: 115, column: 12, scope: !452)
!463 = !DILocation(line: 121, column: 5, scope: !452)
!464 = !DILocation(line: 121, column: 12, scope: !452)
!465 = !DILocation(line: 121, column: 25, scope: !452)
!466 = !DILocation(line: 121, column: 23, scope: !452)
!467 = !DILocation(line: 121, column: 34, scope: !452)
!468 = !DILocation(line: 121, column: 37, scope: !452)
!469 = !DILocation(line: 121, column: 67, scope: !452)
!470 = !DILocation(line: 121, column: 70, scope: !452)
!471 = !DILocation(line: 0, scope: !452)
!472 = !DILocalVariable(name: "byte", scope: !473, file: !3, line: 123, type: !23)
!473 = distinct !DILexicalBlock(scope: !452, file: !3, line: 122, column: 5)
!474 = !DILocation(line: 123, column: 13, scope: !473)
!475 = !DILocation(line: 124, column: 17, scope: !473)
!476 = !DILocation(line: 124, column: 25, scope: !473)
!477 = !DILocation(line: 124, column: 23, scope: !473)
!478 = !DILocation(line: 124, column: 9, scope: !473)
!479 = !DILocation(line: 125, column: 45, scope: !473)
!480 = !DILocation(line: 125, column: 29, scope: !473)
!481 = !DILocation(line: 125, column: 9, scope: !473)
!482 = !DILocation(line: 125, column: 15, scope: !473)
!483 = !DILocation(line: 125, column: 27, scope: !473)
!484 = !DILocation(line: 126, column: 9, scope: !473)
!485 = distinct !{!485, !463, !486, !449}
!486 = !DILocation(line: 127, column: 5, scope: !452)
!487 = !DILocation(line: 129, column: 12, scope: !452)
!488 = !DILocation(line: 129, column: 5, scope: !452)
!489 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !490, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!490 = !DISubroutineType(types: !491)
!491 = !{!68, !425, !68, !287}
!492 = !DILocalVariable(name: "bytes", arg: 1, scope: !489, file: !3, line: 135, type: !425)
!493 = !DILocation(line: 135, column: 41, scope: !489)
!494 = !DILocalVariable(name: "numBytes", arg: 2, scope: !489, file: !3, line: 135, type: !68)
!495 = !DILocation(line: 135, column: 55, scope: !489)
!496 = !DILocalVariable(name: "hex", arg: 3, scope: !489, file: !3, line: 135, type: !287)
!497 = !DILocation(line: 135, column: 76, scope: !489)
!498 = !DILocalVariable(name: "numWritten", scope: !489, file: !3, line: 137, type: !68)
!499 = !DILocation(line: 137, column: 12, scope: !489)
!500 = !DILocation(line: 143, column: 5, scope: !489)
!501 = !DILocation(line: 143, column: 12, scope: !489)
!502 = !DILocation(line: 143, column: 25, scope: !489)
!503 = !DILocation(line: 143, column: 23, scope: !489)
!504 = !DILocation(line: 143, column: 34, scope: !489)
!505 = !DILocation(line: 143, column: 47, scope: !489)
!506 = !DILocation(line: 143, column: 55, scope: !489)
!507 = !DILocation(line: 143, column: 53, scope: !489)
!508 = !DILocation(line: 143, column: 37, scope: !489)
!509 = !DILocation(line: 143, column: 68, scope: !489)
!510 = !DILocation(line: 143, column: 81, scope: !489)
!511 = !DILocation(line: 143, column: 89, scope: !489)
!512 = !DILocation(line: 143, column: 87, scope: !489)
!513 = !DILocation(line: 143, column: 100, scope: !489)
!514 = !DILocation(line: 143, column: 71, scope: !489)
!515 = !DILocation(line: 0, scope: !489)
!516 = !DILocalVariable(name: "byte", scope: !517, file: !3, line: 145, type: !23)
!517 = distinct !DILexicalBlock(scope: !489, file: !3, line: 144, column: 5)
!518 = !DILocation(line: 145, column: 13, scope: !517)
!519 = !DILocation(line: 146, column: 18, scope: !517)
!520 = !DILocation(line: 146, column: 26, scope: !517)
!521 = !DILocation(line: 146, column: 24, scope: !517)
!522 = !DILocation(line: 146, column: 9, scope: !517)
!523 = !DILocation(line: 147, column: 45, scope: !517)
!524 = !DILocation(line: 147, column: 29, scope: !517)
!525 = !DILocation(line: 147, column: 9, scope: !517)
!526 = !DILocation(line: 147, column: 15, scope: !517)
!527 = !DILocation(line: 147, column: 27, scope: !517)
!528 = !DILocation(line: 148, column: 9, scope: !517)
!529 = distinct !{!529, !500, !530, !449}
!530 = !DILocation(line: 149, column: 5, scope: !489)
!531 = !DILocation(line: 151, column: 12, scope: !489)
!532 = !DILocation(line: 151, column: 5, scope: !489)
!533 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !534, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DISubroutineType(types: !535)
!535 = !{!23}
!536 = !DILocation(line: 158, column: 5, scope: !533)
!537 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !534, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocation(line: 163, column: 5, scope: !537)
!539 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !534, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DILocation(line: 168, column: 13, scope: !539)
!541 = !DILocation(line: 168, column: 20, scope: !539)
!542 = !DILocation(line: 168, column: 5, scope: !539)
!543 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!544 = !DILocation(line: 187, column: 16, scope: !543)
!545 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DILocation(line: 188, column: 16, scope: !545)
!547 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DILocation(line: 189, column: 16, scope: !547)
!549 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DILocation(line: 190, column: 16, scope: !549)
!551 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DILocation(line: 191, column: 16, scope: !551)
!553 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DILocation(line: 192, column: 16, scope: !553)
!555 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!556 = !DILocation(line: 193, column: 16, scope: !555)
!557 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 194, column: 16, scope: !557)
!559 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 195, column: 16, scope: !559)
!561 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!562 = !DILocation(line: 198, column: 15, scope: !561)
!563 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 199, column: 15, scope: !563)
!565 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 200, column: 15, scope: !565)
!567 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 201, column: 15, scope: !567)
!569 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 202, column: 15, scope: !569)
!571 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 203, column: 15, scope: !571)
!573 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 204, column: 15, scope: !573)
!575 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 205, column: 15, scope: !575)
!577 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 206, column: 15, scope: !577)
