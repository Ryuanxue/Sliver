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
@.str.13 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.16 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.18 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.19 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13.20 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16.21 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_52_bad() #0 !dbg !56 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !61, metadata !DIExpression()), !dbg !65
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !65
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !66
  store i8* %arraydecay, i8** %data, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !68, metadata !DIExpression()), !dbg !73
  %1 = load i8*, i8** %data, align 8, !dbg !74
  %call = call i64 @strlen(i8* %1) #7, !dbg !75
  store i64 %call, i64* %dataLen, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !76, metadata !DIExpression()), !dbg !132
  %2 = load i64, i64* %dataLen, align 8, !dbg !133
  %sub = sub i64 100, %2, !dbg !135
  %cmp = icmp ugt i64 %sub, 1, !dbg !136
  br i1 %cmp, label %if.then, label %if.end11, !dbg !137

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !138
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !140
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !141
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !143
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !144

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !145
  %5 = load i64, i64* %dataLen, align 8, !dbg !148
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !149
  %6 = load i64, i64* %dataLen, align 8, !dbg !150
  %sub4 = sub i64 100, %6, !dbg !151
  %conv = trunc i64 %sub4 to i32, !dbg !152
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !153
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !154
  %cmp6 = icmp eq i8* %call5, null, !dbg !155
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !156

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !157
  %8 = load i8*, i8** %data, align 8, !dbg !159
  %9 = load i64, i64* %dataLen, align 8, !dbg !160
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !159
  store i8 0, i8* %arrayidx, align 1, !dbg !161
  br label %if.end, !dbg !162

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !163
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !164
  br label %if.end10, !dbg !165

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !166

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !167
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_52b_badSink(i8* %11), !dbg !168
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !170 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !174
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !174
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !175
  store i8* %arraydecay, i8** %data, align 8, !dbg !176
  %1 = load i8*, i8** %data, align 8, !dbg !177
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !178
  %2 = load i8*, i8** %data, align 8, !dbg !179
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_52b_goodG2BSink(i8* %2), !dbg !180
  ret void, !dbg !181
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !182 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !185, metadata !DIExpression()), !dbg !186
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !186
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !186
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !187
  store i8* %arraydecay, i8** %data, align 8, !dbg !188
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !189, metadata !DIExpression()), !dbg !191
  %1 = load i8*, i8** %data, align 8, !dbg !192
  %call = call i64 @strlen(i8* %1) #7, !dbg !193
  store i64 %call, i64* %dataLen, align 8, !dbg !191
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !194, metadata !DIExpression()), !dbg !195
  %2 = load i64, i64* %dataLen, align 8, !dbg !196
  %sub = sub i64 100, %2, !dbg !198
  %cmp = icmp ugt i64 %sub, 1, !dbg !199
  br i1 %cmp, label %if.then, label %if.end11, !dbg !200

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !201
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !203
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !204
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !206
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !207

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !208
  %5 = load i64, i64* %dataLen, align 8, !dbg !211
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !212
  %6 = load i64, i64* %dataLen, align 8, !dbg !213
  %sub4 = sub i64 100, %6, !dbg !214
  %conv = trunc i64 %sub4 to i32, !dbg !215
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !216
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !217
  %cmp6 = icmp eq i8* %call5, null, !dbg !218
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !219

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !220
  %8 = load i8*, i8** %data, align 8, !dbg !222
  %9 = load i64, i64* %dataLen, align 8, !dbg !223
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !222
  store i8 0, i8* %arrayidx, align 1, !dbg !224
  br label %if.end, !dbg !225

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !226
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !227
  br label %if.end10, !dbg !228

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !229

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !230
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_52b_goodB2GSink(i8* %11), !dbg !231
  ret void, !dbg !232
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_52_good() #0 !dbg !233 {
entry:
  call void @goodG2B(), !dbg !234
  call void @goodB2G(), !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_52b_badSink(i8* %data) #0 !dbg !237 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !240, metadata !DIExpression()), !dbg !241
  %0 = load i8*, i8** %data.addr, align 8, !dbg !242
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_52c_badSink(i8* %0), !dbg !243
  ret void, !dbg !244
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_52b_goodG2BSink(i8* %data) #0 !dbg !245 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = load i8*, i8** %data.addr, align 8, !dbg !248
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_52c_goodG2BSink(i8* %0), !dbg !249
  ret void, !dbg !250
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_52b_goodB2GSink(i8* %data) #0 !dbg !251 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !252, metadata !DIExpression()), !dbg !253
  %0 = load i8*, i8** %data.addr, align 8, !dbg !254
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_52c_goodB2GSink(i8* %0), !dbg !255
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_52c_badSink(i8* %data) #0 !dbg !257 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !258, metadata !DIExpression()), !dbg !259
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !260
  %1 = load i8*, i8** %data.addr, align 8, !dbg !261
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !262
  ret void, !dbg !263
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_52c_goodG2BSink(i8* %data) #0 !dbg !264 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !265, metadata !DIExpression()), !dbg !266
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !267
  %1 = load i8*, i8** %data.addr, align 8, !dbg !268
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !269
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_52c_goodB2GSink(i8* %data) #0 !dbg !271 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !274
  %1 = load i8*, i8** %data.addr, align 8, !dbg !275
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0), i8* %1), !dbg !276
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !278 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !279, metadata !DIExpression()), !dbg !280
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0)), !dbg !281
  %0 = load i8*, i8** %line.addr, align 8, !dbg !282
  %cmp = icmp ne i8* %0, null, !dbg !284
  br i1 %cmp, label %if.then, label %if.end, !dbg !285

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !286
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.17, i64 0, i64 0), i8* %1), !dbg !288
  br label %if.end, !dbg !289

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.18, i64 0, i64 0)), !dbg !290
  ret void, !dbg !291
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !292 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !293, metadata !DIExpression()), !dbg !294
  %0 = load i8*, i8** %line.addr, align 8, !dbg !295
  %cmp = icmp ne i8* %0, null, !dbg !297
  br i1 %cmp, label %if.then, label %if.end, !dbg !298

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !299
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.17, i64 0, i64 0), i8* %1), !dbg !301
  br label %if.end, !dbg !302

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !303
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !304 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = load i32*, i32** %line.addr, align 8, !dbg !311
  %cmp = icmp ne i32* %0, null, !dbg !313
  br i1 %cmp, label %if.then, label %if.end, !dbg !314

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !315
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.19, i64 0, i64 0), i32* %1), !dbg !317
  br label %if.end, !dbg !318

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !319
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !320 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !323, metadata !DIExpression()), !dbg !324
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !325
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !326
  ret void, !dbg !327
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !328 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !334
  %conv = sext i16 %0 to i32, !dbg !334
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !335
  ret void, !dbg !336
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !337 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !341, metadata !DIExpression()), !dbg !342
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !343
  %conv = fpext float %0 to double, !dbg !343
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !344
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !346 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !351
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !352
  ret void, !dbg !353
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !354 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !360, metadata !DIExpression()), !dbg !361
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !362
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !363
  ret void, !dbg !364
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !365 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !368, metadata !DIExpression()), !dbg !369
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !370
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !371
  ret void, !dbg !372
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !373 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !378
  %conv = sext i8 %0 to i32, !dbg !378
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !381 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !386, metadata !DIExpression()), !dbg !390
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !391
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !392
  store i32 %0, i32* %arrayidx, align 4, !dbg !393
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !394
  store i32 0, i32* %arrayidx1, align 4, !dbg !395
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !396
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !397
  ret void, !dbg !398
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !399 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !404
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !405
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !407 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !412
  %conv = zext i8 %0 to i32, !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !415 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !419, metadata !DIExpression()), !dbg !420
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !421
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !424 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !436
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !437
  %1 = load i32, i32* %intOne, align 4, !dbg !437
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !438
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !439
  %3 = load i32, i32* %intTwo, align 4, !dbg !439
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13.20, i64 0, i64 0), i32 %1, i32 %3), !dbg !440
  ret void, !dbg !441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !442 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !446, metadata !DIExpression()), !dbg !447
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata i64* %i, metadata !450, metadata !DIExpression()), !dbg !451
  store i64 0, i64* %i, align 8, !dbg !452
  br label %for.cond, !dbg !454

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !455
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !457
  %cmp = icmp ult i64 %0, %1, !dbg !458
  br i1 %cmp, label %for.body, label %for.end, !dbg !459

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !460
  %3 = load i64, i64* %i, align 8, !dbg !462
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !460
  %4 = load i8, i8* %arrayidx, align 1, !dbg !460
  %conv = zext i8 %4 to i32, !dbg !460
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !463
  br label %for.inc, !dbg !464

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !465
  %inc = add i64 %5, 1, !dbg !465
  store i64 %inc, i64* %i, align 8, !dbg !465
  br label %for.cond, !dbg !466, !llvm.loop !467

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !470
  ret void, !dbg !471
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !472 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !475, metadata !DIExpression()), !dbg !476
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !477, metadata !DIExpression()), !dbg !478
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !479, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !481, metadata !DIExpression()), !dbg !482
  store i64 0, i64* %numWritten, align 8, !dbg !482
  br label %while.cond, !dbg !483

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !484
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !485
  %cmp = icmp ult i64 %0, %1, !dbg !486
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !487

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !488
  %2 = load i16*, i16** %call, align 8, !dbg !488
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !488
  %4 = load i64, i64* %numWritten, align 8, !dbg !488
  %mul = mul i64 2, %4, !dbg !488
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !488
  %5 = load i8, i8* %arrayidx, align 1, !dbg !488
  %conv = sext i8 %5 to i32, !dbg !488
  %idxprom = sext i32 %conv to i64, !dbg !488
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !488
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !488
  %conv2 = zext i16 %6 to i32, !dbg !488
  %and = and i32 %conv2, 4096, !dbg !488
  %tobool = icmp ne i32 %and, 0, !dbg !488
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !489

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !490
  %7 = load i16*, i16** %call3, align 8, !dbg !490
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !490
  %9 = load i64, i64* %numWritten, align 8, !dbg !490
  %mul4 = mul i64 2, %9, !dbg !490
  %add = add i64 %mul4, 1, !dbg !490
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !490
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !490
  %conv6 = sext i8 %10 to i32, !dbg !490
  %idxprom7 = sext i32 %conv6 to i64, !dbg !490
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !490
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !490
  %conv9 = zext i16 %11 to i32, !dbg !490
  %and10 = and i32 %conv9, 4096, !dbg !490
  %tobool11 = icmp ne i32 %and10, 0, !dbg !489
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !491
  br i1 %12, label %while.body, label %while.end, !dbg !483

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !492, metadata !DIExpression()), !dbg !494
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !495
  %14 = load i64, i64* %numWritten, align 8, !dbg !496
  %mul12 = mul i64 2, %14, !dbg !497
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !495
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !498
  %15 = load i32, i32* %byte, align 4, !dbg !499
  %conv15 = trunc i32 %15 to i8, !dbg !500
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !501
  %17 = load i64, i64* %numWritten, align 8, !dbg !502
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !501
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !503
  %18 = load i64, i64* %numWritten, align 8, !dbg !504
  %inc = add i64 %18, 1, !dbg !504
  store i64 %inc, i64* %numWritten, align 8, !dbg !504
  br label %while.cond, !dbg !483, !llvm.loop !505

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !507
  ret i64 %19, !dbg !508
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !509 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !512, metadata !DIExpression()), !dbg !513
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !514, metadata !DIExpression()), !dbg !515
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !516, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !518, metadata !DIExpression()), !dbg !519
  store i64 0, i64* %numWritten, align 8, !dbg !519
  br label %while.cond, !dbg !520

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !521
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !522
  %cmp = icmp ult i64 %0, %1, !dbg !523
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !524

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !525
  %3 = load i64, i64* %numWritten, align 8, !dbg !526
  %mul = mul i64 2, %3, !dbg !527
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !525
  %4 = load i32, i32* %arrayidx, align 4, !dbg !525
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !528
  %tobool = icmp ne i32 %call, 0, !dbg !528
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !529

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !530
  %6 = load i64, i64* %numWritten, align 8, !dbg !531
  %mul1 = mul i64 2, %6, !dbg !532
  %add = add i64 %mul1, 1, !dbg !533
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !530
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !530
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !534
  %tobool4 = icmp ne i32 %call3, 0, !dbg !529
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !535
  br i1 %8, label %while.body, label %while.end, !dbg !520

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !536, metadata !DIExpression()), !dbg !538
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !539
  %10 = load i64, i64* %numWritten, align 8, !dbg !540
  %mul5 = mul i64 2, %10, !dbg !541
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !539
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16.21, i64 0, i64 0), i32* %byte) #8, !dbg !542
  %11 = load i32, i32* %byte, align 4, !dbg !543
  %conv = trunc i32 %11 to i8, !dbg !544
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !545
  %13 = load i64, i64* %numWritten, align 8, !dbg !546
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !545
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !547
  %14 = load i64, i64* %numWritten, align 8, !dbg !548
  %inc = add i64 %14, 1, !dbg !548
  store i64 %inc, i64* %numWritten, align 8, !dbg !548
  br label %while.cond, !dbg !520, !llvm.loop !549

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !551
  ret i64 %15, !dbg !552
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !553 {
entry:
  ret i32 1, !dbg !556
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !557 {
entry:
  ret i32 0, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !559 {
entry:
  %call = call i32 @rand() #8, !dbg !560
  %rem = srem i32 %call, 2, !dbg !561
  ret i32 %rem, !dbg !562
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !563 {
entry:
  ret void, !dbg !564
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !565 {
entry:
  ret void, !dbg !566
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !567 {
entry:
  ret void, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !569 {
entry:
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !571 {
entry:
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !573 {
entry:
  ret void, !dbg !574
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !597 {
entry:
  ret void, !dbg !598
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

!llvm.dbg.cu = !{!44, !48, !50, !2}
!llvm.ident = !{!52, !52, !52, !52}
!llvm.module.flags = !{!53, !54, !55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_992/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_52a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_992/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_52b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_992/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_52c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_992/source_code")
!52 = !{!"clang version 12.0.0"}
!53 = !{i32 7, !"Dwarf Version", i32 4}
!54 = !{i32 2, !"Debug Info Version", i32 3}
!55 = !{i32 1, !"wchar_size", i32 4}
!56 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_52_bad", scope: !45, file: !45, line: 35, type: !57, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!57 = !DISubroutineType(types: !58)
!58 = !{null}
!59 = !DILocalVariable(name: "data", scope: !56, file: !45, line: 37, type: !42)
!60 = !DILocation(line: 37, column: 12, scope: !56)
!61 = !DILocalVariable(name: "dataBuffer", scope: !56, file: !45, line: 38, type: !62)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 100)
!65 = !DILocation(line: 38, column: 10, scope: !56)
!66 = !DILocation(line: 39, column: 12, scope: !56)
!67 = !DILocation(line: 39, column: 10, scope: !56)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !45, line: 42, type: !70)
!69 = distinct !DILexicalBlock(scope: !56, file: !45, line: 40, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 42, column: 16, scope: !69)
!74 = !DILocation(line: 42, column: 33, scope: !69)
!75 = !DILocation(line: 42, column: 26, scope: !69)
!76 = !DILocalVariable(name: "pFile", scope: !69, file: !45, line: 43, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !79, line: 7, baseType: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !81, line: 49, size: 1728, elements: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !98, !100, !101, !102, !106, !107, !109, !113, !116, !118, !121, !124, !125, !126, !127, !128}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !80, file: !81, line: 51, baseType: !23, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !80, file: !81, line: 54, baseType: !42, size: 64, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !80, file: !81, line: 55, baseType: !42, size: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !80, file: !81, line: 56, baseType: !42, size: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !80, file: !81, line: 57, baseType: !42, size: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !80, file: !81, line: 58, baseType: !42, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !80, file: !81, line: 59, baseType: !42, size: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !80, file: !81, line: 60, baseType: !42, size: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !80, file: !81, line: 61, baseType: !42, size: 64, offset: 512)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !80, file: !81, line: 64, baseType: !42, size: 64, offset: 576)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !80, file: !81, line: 65, baseType: !42, size: 64, offset: 640)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !80, file: !81, line: 66, baseType: !42, size: 64, offset: 704)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !80, file: !81, line: 68, baseType: !96, size: 64, offset: 768)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !81, line: 36, flags: DIFlagFwdDecl)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !80, file: !81, line: 70, baseType: !99, size: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !80, file: !81, line: 72, baseType: !23, size: 32, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !80, file: !81, line: 73, baseType: !23, size: 32, offset: 928)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !80, file: !81, line: 74, baseType: !103, size: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !104, line: 152, baseType: !105)
!104 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!105 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !80, file: !81, line: 77, baseType: !24, size: 16, offset: 1024)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !80, file: !81, line: 78, baseType: !108, size: 8, offset: 1040)
!108 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !80, file: !81, line: 79, baseType: !110, size: 8, offset: 1048)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 1)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !80, file: !81, line: 81, baseType: !114, size: 64, offset: 1088)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !81, line: 43, baseType: null)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !80, file: !81, line: 89, baseType: !117, size: 64, offset: 1152)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !104, line: 153, baseType: !105)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !80, file: !81, line: 91, baseType: !119, size: 64, offset: 1216)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !81, line: 37, flags: DIFlagFwdDecl)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !80, file: !81, line: 92, baseType: !122, size: 64, offset: 1280)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !81, line: 38, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !80, file: !81, line: 93, baseType: !99, size: 64, offset: 1344)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !80, file: !81, line: 94, baseType: !22, size: 64, offset: 1408)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !80, file: !81, line: 95, baseType: !70, size: 64, offset: 1472)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !80, file: !81, line: 96, baseType: !23, size: 32, offset: 1536)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !80, file: !81, line: 98, baseType: !129, size: 160, offset: 1568)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 20)
!132 = !DILocation(line: 43, column: 16, scope: !69)
!133 = !DILocation(line: 45, column: 17, scope: !134)
!134 = distinct !DILexicalBlock(scope: !69, file: !45, line: 45, column: 13)
!135 = !DILocation(line: 45, column: 16, scope: !134)
!136 = !DILocation(line: 45, column: 25, scope: !134)
!137 = !DILocation(line: 45, column: 13, scope: !69)
!138 = !DILocation(line: 47, column: 21, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !45, line: 46, column: 9)
!140 = !DILocation(line: 47, column: 19, scope: !139)
!141 = !DILocation(line: 48, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !45, line: 48, column: 17)
!143 = !DILocation(line: 48, column: 23, scope: !142)
!144 = !DILocation(line: 48, column: 17, scope: !139)
!145 = !DILocation(line: 51, column: 27, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !45, line: 51, column: 21)
!147 = distinct !DILexicalBlock(scope: !142, file: !45, line: 49, column: 13)
!148 = !DILocation(line: 51, column: 32, scope: !146)
!149 = !DILocation(line: 51, column: 31, scope: !146)
!150 = !DILocation(line: 51, column: 51, scope: !146)
!151 = !DILocation(line: 51, column: 50, scope: !146)
!152 = !DILocation(line: 51, column: 41, scope: !146)
!153 = !DILocation(line: 51, column: 61, scope: !146)
!154 = !DILocation(line: 51, column: 21, scope: !146)
!155 = !DILocation(line: 51, column: 68, scope: !146)
!156 = !DILocation(line: 51, column: 21, scope: !147)
!157 = !DILocation(line: 53, column: 21, scope: !158)
!158 = distinct !DILexicalBlock(scope: !146, file: !45, line: 52, column: 17)
!159 = !DILocation(line: 55, column: 21, scope: !158)
!160 = !DILocation(line: 55, column: 26, scope: !158)
!161 = !DILocation(line: 55, column: 35, scope: !158)
!162 = !DILocation(line: 56, column: 17, scope: !158)
!163 = !DILocation(line: 57, column: 24, scope: !147)
!164 = !DILocation(line: 57, column: 17, scope: !147)
!165 = !DILocation(line: 58, column: 13, scope: !147)
!166 = !DILocation(line: 59, column: 9, scope: !139)
!167 = !DILocation(line: 61, column: 70, scope: !56)
!168 = !DILocation(line: 61, column: 5, scope: !56)
!169 = !DILocation(line: 62, column: 1, scope: !56)
!170 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 70, type: !57, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!171 = !DILocalVariable(name: "data", scope: !170, file: !45, line: 72, type: !42)
!172 = !DILocation(line: 72, column: 12, scope: !170)
!173 = !DILocalVariable(name: "dataBuffer", scope: !170, file: !45, line: 73, type: !62)
!174 = !DILocation(line: 73, column: 10, scope: !170)
!175 = !DILocation(line: 74, column: 12, scope: !170)
!176 = !DILocation(line: 74, column: 10, scope: !170)
!177 = !DILocation(line: 76, column: 12, scope: !170)
!178 = !DILocation(line: 76, column: 5, scope: !170)
!179 = !DILocation(line: 77, column: 74, scope: !170)
!180 = !DILocation(line: 77, column: 5, scope: !170)
!181 = !DILocation(line: 78, column: 1, scope: !170)
!182 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 82, type: !57, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!183 = !DILocalVariable(name: "data", scope: !182, file: !45, line: 84, type: !42)
!184 = !DILocation(line: 84, column: 12, scope: !182)
!185 = !DILocalVariable(name: "dataBuffer", scope: !182, file: !45, line: 85, type: !62)
!186 = !DILocation(line: 85, column: 10, scope: !182)
!187 = !DILocation(line: 86, column: 12, scope: !182)
!188 = !DILocation(line: 86, column: 10, scope: !182)
!189 = !DILocalVariable(name: "dataLen", scope: !190, file: !45, line: 89, type: !70)
!190 = distinct !DILexicalBlock(scope: !182, file: !45, line: 87, column: 5)
!191 = !DILocation(line: 89, column: 16, scope: !190)
!192 = !DILocation(line: 89, column: 33, scope: !190)
!193 = !DILocation(line: 89, column: 26, scope: !190)
!194 = !DILocalVariable(name: "pFile", scope: !190, file: !45, line: 90, type: !77)
!195 = !DILocation(line: 90, column: 16, scope: !190)
!196 = !DILocation(line: 92, column: 17, scope: !197)
!197 = distinct !DILexicalBlock(scope: !190, file: !45, line: 92, column: 13)
!198 = !DILocation(line: 92, column: 16, scope: !197)
!199 = !DILocation(line: 92, column: 25, scope: !197)
!200 = !DILocation(line: 92, column: 13, scope: !190)
!201 = !DILocation(line: 94, column: 21, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !45, line: 93, column: 9)
!203 = !DILocation(line: 94, column: 19, scope: !202)
!204 = !DILocation(line: 95, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !45, line: 95, column: 17)
!206 = !DILocation(line: 95, column: 23, scope: !205)
!207 = !DILocation(line: 95, column: 17, scope: !202)
!208 = !DILocation(line: 98, column: 27, scope: !209)
!209 = distinct !DILexicalBlock(scope: !210, file: !45, line: 98, column: 21)
!210 = distinct !DILexicalBlock(scope: !205, file: !45, line: 96, column: 13)
!211 = !DILocation(line: 98, column: 32, scope: !209)
!212 = !DILocation(line: 98, column: 31, scope: !209)
!213 = !DILocation(line: 98, column: 51, scope: !209)
!214 = !DILocation(line: 98, column: 50, scope: !209)
!215 = !DILocation(line: 98, column: 41, scope: !209)
!216 = !DILocation(line: 98, column: 61, scope: !209)
!217 = !DILocation(line: 98, column: 21, scope: !209)
!218 = !DILocation(line: 98, column: 68, scope: !209)
!219 = !DILocation(line: 98, column: 21, scope: !210)
!220 = !DILocation(line: 100, column: 21, scope: !221)
!221 = distinct !DILexicalBlock(scope: !209, file: !45, line: 99, column: 17)
!222 = !DILocation(line: 102, column: 21, scope: !221)
!223 = !DILocation(line: 102, column: 26, scope: !221)
!224 = !DILocation(line: 102, column: 35, scope: !221)
!225 = !DILocation(line: 103, column: 17, scope: !221)
!226 = !DILocation(line: 104, column: 24, scope: !210)
!227 = !DILocation(line: 104, column: 17, scope: !210)
!228 = !DILocation(line: 105, column: 13, scope: !210)
!229 = !DILocation(line: 106, column: 9, scope: !202)
!230 = !DILocation(line: 108, column: 74, scope: !182)
!231 = !DILocation(line: 108, column: 5, scope: !182)
!232 = !DILocation(line: 109, column: 1, scope: !182)
!233 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_52_good", scope: !45, file: !45, line: 111, type: !57, scopeLine: 112, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!234 = !DILocation(line: 113, column: 5, scope: !233)
!235 = !DILocation(line: 114, column: 5, scope: !233)
!236 = !DILocation(line: 115, column: 1, scope: !233)
!237 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_52b_badSink", scope: !49, file: !49, line: 35, type: !238, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !42}
!240 = !DILocalVariable(name: "data", arg: 1, scope: !237, file: !49, line: 35, type: !42)
!241 = !DILocation(line: 35, column: 78, scope: !237)
!242 = !DILocation(line: 37, column: 70, scope: !237)
!243 = !DILocation(line: 37, column: 5, scope: !237)
!244 = !DILocation(line: 38, column: 1, scope: !237)
!245 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_52b_goodG2BSink", scope: !49, file: !49, line: 47, type: !238, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!246 = !DILocalVariable(name: "data", arg: 1, scope: !245, file: !49, line: 47, type: !42)
!247 = !DILocation(line: 47, column: 82, scope: !245)
!248 = !DILocation(line: 49, column: 74, scope: !245)
!249 = !DILocation(line: 49, column: 5, scope: !245)
!250 = !DILocation(line: 50, column: 1, scope: !245)
!251 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_52b_goodB2GSink", scope: !49, file: !49, line: 55, type: !238, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!252 = !DILocalVariable(name: "data", arg: 1, scope: !251, file: !49, line: 55, type: !42)
!253 = !DILocation(line: 55, column: 82, scope: !251)
!254 = !DILocation(line: 57, column: 74, scope: !251)
!255 = !DILocation(line: 57, column: 5, scope: !251)
!256 = !DILocation(line: 58, column: 1, scope: !251)
!257 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_52c_badSink", scope: !51, file: !51, line: 32, type: !238, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!258 = !DILocalVariable(name: "data", arg: 1, scope: !257, file: !51, line: 32, type: !42)
!259 = !DILocation(line: 32, column: 78, scope: !257)
!260 = !DILocation(line: 35, column: 13, scope: !257)
!261 = !DILocation(line: 35, column: 21, scope: !257)
!262 = !DILocation(line: 35, column: 5, scope: !257)
!263 = !DILocation(line: 36, column: 1, scope: !257)
!264 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_52c_goodG2BSink", scope: !51, file: !51, line: 43, type: !238, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!265 = !DILocalVariable(name: "data", arg: 1, scope: !264, file: !51, line: 43, type: !42)
!266 = !DILocation(line: 43, column: 82, scope: !264)
!267 = !DILocation(line: 46, column: 13, scope: !264)
!268 = !DILocation(line: 46, column: 21, scope: !264)
!269 = !DILocation(line: 46, column: 5, scope: !264)
!270 = !DILocation(line: 47, column: 1, scope: !264)
!271 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_52c_goodB2GSink", scope: !51, file: !51, line: 50, type: !238, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!272 = !DILocalVariable(name: "data", arg: 1, scope: !271, file: !51, line: 50, type: !42)
!273 = !DILocation(line: 50, column: 82, scope: !271)
!274 = !DILocation(line: 53, column: 13, scope: !271)
!275 = !DILocation(line: 53, column: 29, scope: !271)
!276 = !DILocation(line: 53, column: 5, scope: !271)
!277 = !DILocation(line: 54, column: 1, scope: !271)
!278 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !238, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!279 = !DILocalVariable(name: "line", arg: 1, scope: !278, file: !3, line: 11, type: !42)
!280 = !DILocation(line: 11, column: 25, scope: !278)
!281 = !DILocation(line: 13, column: 1, scope: !278)
!282 = !DILocation(line: 14, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !278, file: !3, line: 14, column: 8)
!284 = !DILocation(line: 14, column: 13, scope: !283)
!285 = !DILocation(line: 14, column: 8, scope: !278)
!286 = !DILocation(line: 16, column: 24, scope: !287)
!287 = distinct !DILexicalBlock(scope: !283, file: !3, line: 15, column: 5)
!288 = !DILocation(line: 16, column: 9, scope: !287)
!289 = !DILocation(line: 17, column: 5, scope: !287)
!290 = !DILocation(line: 18, column: 5, scope: !278)
!291 = !DILocation(line: 19, column: 1, scope: !278)
!292 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !238, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!293 = !DILocalVariable(name: "line", arg: 1, scope: !292, file: !3, line: 20, type: !42)
!294 = !DILocation(line: 20, column: 29, scope: !292)
!295 = !DILocation(line: 22, column: 8, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !3, line: 22, column: 8)
!297 = !DILocation(line: 22, column: 13, scope: !296)
!298 = !DILocation(line: 22, column: 8, scope: !292)
!299 = !DILocation(line: 24, column: 24, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !3, line: 23, column: 5)
!301 = !DILocation(line: 24, column: 9, scope: !300)
!302 = !DILocation(line: 25, column: 5, scope: !300)
!303 = !DILocation(line: 26, column: 1, scope: !292)
!304 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !305, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!309 = !DILocalVariable(name: "line", arg: 1, scope: !304, file: !3, line: 27, type: !307)
!310 = !DILocation(line: 27, column: 29, scope: !304)
!311 = !DILocation(line: 29, column: 8, scope: !312)
!312 = distinct !DILexicalBlock(scope: !304, file: !3, line: 29, column: 8)
!313 = !DILocation(line: 29, column: 13, scope: !312)
!314 = !DILocation(line: 29, column: 8, scope: !304)
!315 = !DILocation(line: 31, column: 27, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !3, line: 30, column: 5)
!317 = !DILocation(line: 31, column: 9, scope: !316)
!318 = !DILocation(line: 32, column: 5, scope: !316)
!319 = !DILocation(line: 33, column: 1, scope: !304)
!320 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !321, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !23}
!323 = !DILocalVariable(name: "intNumber", arg: 1, scope: !320, file: !3, line: 35, type: !23)
!324 = !DILocation(line: 35, column: 24, scope: !320)
!325 = !DILocation(line: 37, column: 20, scope: !320)
!326 = !DILocation(line: 37, column: 5, scope: !320)
!327 = !DILocation(line: 38, column: 1, scope: !320)
!328 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !329, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !331}
!331 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!332 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !328, file: !3, line: 40, type: !331)
!333 = !DILocation(line: 40, column: 28, scope: !328)
!334 = !DILocation(line: 42, column: 21, scope: !328)
!335 = !DILocation(line: 42, column: 5, scope: !328)
!336 = !DILocation(line: 43, column: 1, scope: !328)
!337 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !338, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!338 = !DISubroutineType(types: !339)
!339 = !{null, !340}
!340 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!341 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !337, file: !3, line: 45, type: !340)
!342 = !DILocation(line: 45, column: 28, scope: !337)
!343 = !DILocation(line: 47, column: 20, scope: !337)
!344 = !DILocation(line: 47, column: 5, scope: !337)
!345 = !DILocation(line: 48, column: 1, scope: !337)
!346 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !347, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !105}
!349 = !DILocalVariable(name: "longNumber", arg: 1, scope: !346, file: !3, line: 50, type: !105)
!350 = !DILocation(line: 50, column: 26, scope: !346)
!351 = !DILocation(line: 52, column: 21, scope: !346)
!352 = !DILocation(line: 52, column: 5, scope: !346)
!353 = !DILocation(line: 53, column: 1, scope: !346)
!354 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !355, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !357}
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !358, line: 27, baseType: !359)
!358 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !104, line: 44, baseType: !105)
!360 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !354, file: !3, line: 55, type: !357)
!361 = !DILocation(line: 55, column: 33, scope: !354)
!362 = !DILocation(line: 57, column: 29, scope: !354)
!363 = !DILocation(line: 57, column: 5, scope: !354)
!364 = !DILocation(line: 58, column: 1, scope: !354)
!365 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !366, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !70}
!368 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !365, file: !3, line: 60, type: !70)
!369 = !DILocation(line: 60, column: 29, scope: !365)
!370 = !DILocation(line: 62, column: 21, scope: !365)
!371 = !DILocation(line: 62, column: 5, scope: !365)
!372 = !DILocation(line: 63, column: 1, scope: !365)
!373 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !374, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !43}
!376 = !DILocalVariable(name: "charHex", arg: 1, scope: !373, file: !3, line: 65, type: !43)
!377 = !DILocation(line: 65, column: 29, scope: !373)
!378 = !DILocation(line: 67, column: 22, scope: !373)
!379 = !DILocation(line: 67, column: 5, scope: !373)
!380 = !DILocation(line: 68, column: 1, scope: !373)
!381 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !382, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!382 = !DISubroutineType(types: !383)
!383 = !{null, !308}
!384 = !DILocalVariable(name: "wideChar", arg: 1, scope: !381, file: !3, line: 70, type: !308)
!385 = !DILocation(line: 70, column: 29, scope: !381)
!386 = !DILocalVariable(name: "s", scope: !381, file: !3, line: 74, type: !387)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 64, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 2)
!390 = !DILocation(line: 74, column: 13, scope: !381)
!391 = !DILocation(line: 75, column: 16, scope: !381)
!392 = !DILocation(line: 75, column: 9, scope: !381)
!393 = !DILocation(line: 75, column: 14, scope: !381)
!394 = !DILocation(line: 76, column: 9, scope: !381)
!395 = !DILocation(line: 76, column: 14, scope: !381)
!396 = !DILocation(line: 77, column: 21, scope: !381)
!397 = !DILocation(line: 77, column: 5, scope: !381)
!398 = !DILocation(line: 78, column: 1, scope: !381)
!399 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !400, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!400 = !DISubroutineType(types: !401)
!401 = !{null, !7}
!402 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !399, file: !3, line: 80, type: !7)
!403 = !DILocation(line: 80, column: 33, scope: !399)
!404 = !DILocation(line: 82, column: 20, scope: !399)
!405 = !DILocation(line: 82, column: 5, scope: !399)
!406 = !DILocation(line: 83, column: 1, scope: !399)
!407 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !408, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !25}
!410 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !407, file: !3, line: 85, type: !25)
!411 = !DILocation(line: 85, column: 45, scope: !407)
!412 = !DILocation(line: 87, column: 22, scope: !407)
!413 = !DILocation(line: 87, column: 5, scope: !407)
!414 = !DILocation(line: 88, column: 1, scope: !407)
!415 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !416, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !418}
!418 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!419 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !415, file: !3, line: 90, type: !418)
!420 = !DILocation(line: 90, column: 29, scope: !415)
!421 = !DILocation(line: 92, column: 20, scope: !415)
!422 = !DILocation(line: 92, column: 5, scope: !415)
!423 = !DILocation(line: 93, column: 1, scope: !415)
!424 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !425, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !427}
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !429, line: 100, baseType: !430)
!429 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_992/source_code")
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !429, line: 96, size: 64, elements: !431)
!431 = !{!432, !433}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !430, file: !429, line: 98, baseType: !23, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !430, file: !429, line: 99, baseType: !23, size: 32, offset: 32)
!434 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !424, file: !3, line: 95, type: !427)
!435 = !DILocation(line: 95, column: 40, scope: !424)
!436 = !DILocation(line: 97, column: 26, scope: !424)
!437 = !DILocation(line: 97, column: 47, scope: !424)
!438 = !DILocation(line: 97, column: 55, scope: !424)
!439 = !DILocation(line: 97, column: 76, scope: !424)
!440 = !DILocation(line: 97, column: 5, scope: !424)
!441 = !DILocation(line: 98, column: 1, scope: !424)
!442 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !443, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !445, !70}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!446 = !DILocalVariable(name: "bytes", arg: 1, scope: !442, file: !3, line: 100, type: !445)
!447 = !DILocation(line: 100, column: 38, scope: !442)
!448 = !DILocalVariable(name: "numBytes", arg: 2, scope: !442, file: !3, line: 100, type: !70)
!449 = !DILocation(line: 100, column: 52, scope: !442)
!450 = !DILocalVariable(name: "i", scope: !442, file: !3, line: 102, type: !70)
!451 = !DILocation(line: 102, column: 12, scope: !442)
!452 = !DILocation(line: 103, column: 12, scope: !453)
!453 = distinct !DILexicalBlock(scope: !442, file: !3, line: 103, column: 5)
!454 = !DILocation(line: 103, column: 10, scope: !453)
!455 = !DILocation(line: 103, column: 17, scope: !456)
!456 = distinct !DILexicalBlock(scope: !453, file: !3, line: 103, column: 5)
!457 = !DILocation(line: 103, column: 21, scope: !456)
!458 = !DILocation(line: 103, column: 19, scope: !456)
!459 = !DILocation(line: 103, column: 5, scope: !453)
!460 = !DILocation(line: 105, column: 24, scope: !461)
!461 = distinct !DILexicalBlock(scope: !456, file: !3, line: 104, column: 5)
!462 = !DILocation(line: 105, column: 30, scope: !461)
!463 = !DILocation(line: 105, column: 9, scope: !461)
!464 = !DILocation(line: 106, column: 5, scope: !461)
!465 = !DILocation(line: 103, column: 31, scope: !456)
!466 = !DILocation(line: 103, column: 5, scope: !456)
!467 = distinct !{!467, !459, !468, !469}
!468 = !DILocation(line: 106, column: 5, scope: !453)
!469 = !{!"llvm.loop.mustprogress"}
!470 = !DILocation(line: 107, column: 5, scope: !442)
!471 = !DILocation(line: 108, column: 1, scope: !442)
!472 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !473, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!473 = !DISubroutineType(types: !474)
!474 = !{!70, !445, !70, !42}
!475 = !DILocalVariable(name: "bytes", arg: 1, scope: !472, file: !3, line: 113, type: !445)
!476 = !DILocation(line: 113, column: 39, scope: !472)
!477 = !DILocalVariable(name: "numBytes", arg: 2, scope: !472, file: !3, line: 113, type: !70)
!478 = !DILocation(line: 113, column: 53, scope: !472)
!479 = !DILocalVariable(name: "hex", arg: 3, scope: !472, file: !3, line: 113, type: !42)
!480 = !DILocation(line: 113, column: 71, scope: !472)
!481 = !DILocalVariable(name: "numWritten", scope: !472, file: !3, line: 115, type: !70)
!482 = !DILocation(line: 115, column: 12, scope: !472)
!483 = !DILocation(line: 121, column: 5, scope: !472)
!484 = !DILocation(line: 121, column: 12, scope: !472)
!485 = !DILocation(line: 121, column: 25, scope: !472)
!486 = !DILocation(line: 121, column: 23, scope: !472)
!487 = !DILocation(line: 121, column: 34, scope: !472)
!488 = !DILocation(line: 121, column: 37, scope: !472)
!489 = !DILocation(line: 121, column: 67, scope: !472)
!490 = !DILocation(line: 121, column: 70, scope: !472)
!491 = !DILocation(line: 0, scope: !472)
!492 = !DILocalVariable(name: "byte", scope: !493, file: !3, line: 123, type: !23)
!493 = distinct !DILexicalBlock(scope: !472, file: !3, line: 122, column: 5)
!494 = !DILocation(line: 123, column: 13, scope: !493)
!495 = !DILocation(line: 124, column: 17, scope: !493)
!496 = !DILocation(line: 124, column: 25, scope: !493)
!497 = !DILocation(line: 124, column: 23, scope: !493)
!498 = !DILocation(line: 124, column: 9, scope: !493)
!499 = !DILocation(line: 125, column: 45, scope: !493)
!500 = !DILocation(line: 125, column: 29, scope: !493)
!501 = !DILocation(line: 125, column: 9, scope: !493)
!502 = !DILocation(line: 125, column: 15, scope: !493)
!503 = !DILocation(line: 125, column: 27, scope: !493)
!504 = !DILocation(line: 126, column: 9, scope: !493)
!505 = distinct !{!505, !483, !506, !469}
!506 = !DILocation(line: 127, column: 5, scope: !472)
!507 = !DILocation(line: 129, column: 12, scope: !472)
!508 = !DILocation(line: 129, column: 5, scope: !472)
!509 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !510, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DISubroutineType(types: !511)
!511 = !{!70, !445, !70, !307}
!512 = !DILocalVariable(name: "bytes", arg: 1, scope: !509, file: !3, line: 135, type: !445)
!513 = !DILocation(line: 135, column: 41, scope: !509)
!514 = !DILocalVariable(name: "numBytes", arg: 2, scope: !509, file: !3, line: 135, type: !70)
!515 = !DILocation(line: 135, column: 55, scope: !509)
!516 = !DILocalVariable(name: "hex", arg: 3, scope: !509, file: !3, line: 135, type: !307)
!517 = !DILocation(line: 135, column: 76, scope: !509)
!518 = !DILocalVariable(name: "numWritten", scope: !509, file: !3, line: 137, type: !70)
!519 = !DILocation(line: 137, column: 12, scope: !509)
!520 = !DILocation(line: 143, column: 5, scope: !509)
!521 = !DILocation(line: 143, column: 12, scope: !509)
!522 = !DILocation(line: 143, column: 25, scope: !509)
!523 = !DILocation(line: 143, column: 23, scope: !509)
!524 = !DILocation(line: 143, column: 34, scope: !509)
!525 = !DILocation(line: 143, column: 47, scope: !509)
!526 = !DILocation(line: 143, column: 55, scope: !509)
!527 = !DILocation(line: 143, column: 53, scope: !509)
!528 = !DILocation(line: 143, column: 37, scope: !509)
!529 = !DILocation(line: 143, column: 68, scope: !509)
!530 = !DILocation(line: 143, column: 81, scope: !509)
!531 = !DILocation(line: 143, column: 89, scope: !509)
!532 = !DILocation(line: 143, column: 87, scope: !509)
!533 = !DILocation(line: 143, column: 100, scope: !509)
!534 = !DILocation(line: 143, column: 71, scope: !509)
!535 = !DILocation(line: 0, scope: !509)
!536 = !DILocalVariable(name: "byte", scope: !537, file: !3, line: 145, type: !23)
!537 = distinct !DILexicalBlock(scope: !509, file: !3, line: 144, column: 5)
!538 = !DILocation(line: 145, column: 13, scope: !537)
!539 = !DILocation(line: 146, column: 18, scope: !537)
!540 = !DILocation(line: 146, column: 26, scope: !537)
!541 = !DILocation(line: 146, column: 24, scope: !537)
!542 = !DILocation(line: 146, column: 9, scope: !537)
!543 = !DILocation(line: 147, column: 45, scope: !537)
!544 = !DILocation(line: 147, column: 29, scope: !537)
!545 = !DILocation(line: 147, column: 9, scope: !537)
!546 = !DILocation(line: 147, column: 15, scope: !537)
!547 = !DILocation(line: 147, column: 27, scope: !537)
!548 = !DILocation(line: 148, column: 9, scope: !537)
!549 = distinct !{!549, !520, !550, !469}
!550 = !DILocation(line: 149, column: 5, scope: !509)
!551 = !DILocation(line: 151, column: 12, scope: !509)
!552 = !DILocation(line: 151, column: 5, scope: !509)
!553 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !554, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DISubroutineType(types: !555)
!555 = !{!23}
!556 = !DILocation(line: 158, column: 5, scope: !553)
!557 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !554, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!558 = !DILocation(line: 163, column: 5, scope: !557)
!559 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !554, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DILocation(line: 168, column: 13, scope: !559)
!561 = !DILocation(line: 168, column: 20, scope: !559)
!562 = !DILocation(line: 168, column: 5, scope: !559)
!563 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !57, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DILocation(line: 187, column: 16, scope: !563)
!565 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !57, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DILocation(line: 188, column: 16, scope: !565)
!567 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !57, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!568 = !DILocation(line: 189, column: 16, scope: !567)
!569 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !57, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 190, column: 16, scope: !569)
!571 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !57, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 191, column: 16, scope: !571)
!573 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !57, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DILocation(line: 192, column: 16, scope: !573)
!575 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !57, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 193, column: 16, scope: !575)
!577 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !57, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 194, column: 16, scope: !577)
!579 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !57, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 195, column: 16, scope: !579)
!581 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !57, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 198, column: 15, scope: !581)
!583 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !57, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 199, column: 15, scope: !583)
!585 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !57, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 200, column: 15, scope: !585)
!587 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !57, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 201, column: 15, scope: !587)
!589 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !57, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 202, column: 15, scope: !589)
!591 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !57, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 203, column: 15, scope: !591)
!593 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !57, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 204, column: 15, scope: !593)
!595 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !57, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 205, column: 15, scope: !595)
!597 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !57, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 206, column: 15, scope: !597)
