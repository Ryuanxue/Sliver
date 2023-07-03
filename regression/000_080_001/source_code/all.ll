; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType = type { i8* }
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, metadata !59, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !66, metadata !DIExpression()), !dbg !70
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !70
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !70
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !71
  store i8* %arraydecay, i8** %data, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !73, metadata !DIExpression()), !dbg !78
  %1 = load i8*, i8** %data, align 8, !dbg !79
  %call = call i64 @strlen(i8* %1) #7, !dbg !80
  store i64 %call, i64* %dataLen, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !81, metadata !DIExpression()), !dbg !137
  %2 = load i64, i64* %dataLen, align 8, !dbg !138
  %sub = sub i64 100, %2, !dbg !140
  %cmp = icmp ugt i64 %sub, 1, !dbg !141
  br i1 %cmp, label %if.then, label %if.end11, !dbg !142

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !143
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !145
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !146
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !148
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !149

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !150
  %5 = load i64, i64* %dataLen, align 8, !dbg !153
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !154
  %6 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub4 = sub i64 100, %6, !dbg !156
  %conv = trunc i64 %sub4 to i32, !dbg !157
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !158
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !159
  %cmp6 = icmp eq i8* %call5, null, !dbg !160
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !161

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !162
  %8 = load i8*, i8** %data, align 8, !dbg !164
  %9 = load i64, i64* %dataLen, align 8, !dbg !165
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !164
  store i8 0, i8* %arrayidx, align 1, !dbg !166
  br label %if.end, !dbg !167

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !168
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !169
  br label %if.end10, !dbg !170

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !171

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !172
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !173
  store i8* %11, i8** %structFirst, align 8, !dbg !174
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !175
  %12 = load i8*, i8** %coerce.dive, align 8, !dbg !175
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink(i8* %12), !dbg !175
  ret void, !dbg !176
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
define dso_local void @goodG2B() #0 !dbg !177 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !182, metadata !DIExpression()), !dbg !183
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !183
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !183
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !184
  store i8* %arraydecay, i8** %data, align 8, !dbg !185
  %1 = load i8*, i8** %data, align 8, !dbg !186
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !187
  %2 = load i8*, i8** %data, align 8, !dbg !188
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !189
  store i8* %2, i8** %structFirst, align 8, !dbg !190
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !191
  %3 = load i8*, i8** %coerce.dive, align 8, !dbg !191
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_goodG2BSink(i8* %3), !dbg !191
  ret void, !dbg !192
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !193 {
entry:
  %data = alloca i8*, align 8
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, metadata !196, metadata !DIExpression()), !dbg !197
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
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !244
  store i8* %11, i8** %structFirst, align 8, !dbg !245
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !246
  %12 = load i8*, i8** %coerce.dive, align 8, !dbg !246
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_goodB2GSink(i8* %12), !dbg !246
  ret void, !dbg !247
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67_good() #0 !dbg !248 {
entry:
  call void @goodG2B(), !dbg !249
  call void @goodB2G(), !dbg !250
  ret void, !dbg !251
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink(i8* %myStruct.coerce) #0 !dbg !252 {
entry:
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, align 8
  %data = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, metadata !259, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.declare(metadata i8** %data, metadata !261, metadata !DIExpression()), !dbg !262
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !263
  %0 = load i8*, i8** %structFirst, align 8, !dbg !263
  store i8* %0, i8** %data, align 8, !dbg !262
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !264
  %2 = load i8*, i8** %data, align 8, !dbg !265
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !266
  ret void, !dbg !267
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_goodG2BSink(i8* %myStruct.coerce) #0 !dbg !268 {
entry:
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, align 8
  %data = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, metadata !269, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata i8** %data, metadata !271, metadata !DIExpression()), !dbg !272
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !273
  %0 = load i8*, i8** %structFirst, align 8, !dbg !273
  store i8* %0, i8** %data, align 8, !dbg !272
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !274
  %2 = load i8*, i8** %data, align 8, !dbg !275
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !276
  ret void, !dbg !277
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_goodB2GSink(i8* %myStruct.coerce) #0 !dbg !278 {
entry:
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, align 8
  %data = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata i8** %data, metadata !281, metadata !DIExpression()), !dbg !282
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !283
  %0 = load i8*, i8** %structFirst, align 8, !dbg !283
  store i8* %0, i8** %data, align 8, !dbg !282
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !284
  %2 = load i8*, i8** %data, align 8, !dbg !285
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %2), !dbg !286
  ret void, !dbg !287
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !288 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !291, metadata !DIExpression()), !dbg !292
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0)), !dbg !293
  %0 = load i8*, i8** %line.addr, align 8, !dbg !294
  %cmp = icmp ne i8* %0, null, !dbg !296
  br i1 %cmp, label %if.then, label %if.end, !dbg !297

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !298
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !300
  br label %if.end, !dbg !301

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.12, i64 0, i64 0)), !dbg !302
  ret void, !dbg !303
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !304 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !305, metadata !DIExpression()), !dbg !306
  %0 = load i8*, i8** %line.addr, align 8, !dbg !307
  %cmp = icmp ne i8* %0, null, !dbg !309
  br i1 %cmp, label %if.then, label %if.end, !dbg !310

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !311
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.11, i64 0, i64 0), i8* %1), !dbg !313
  br label %if.end, !dbg !314

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !315
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !316 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !321, metadata !DIExpression()), !dbg !322
  %0 = load i32*, i32** %line.addr, align 8, !dbg !323
  %cmp = icmp ne i32* %0, null, !dbg !325
  br i1 %cmp, label %if.then, label %if.end, !dbg !326

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !327
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.13, i64 0, i64 0), i32* %1), !dbg !329
  br label %if.end, !dbg !330

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !331
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !332 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !337
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !338
  ret void, !dbg !339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !340 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !344, metadata !DIExpression()), !dbg !345
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !346
  %conv = sext i16 %0 to i32, !dbg !346
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !347
  ret void, !dbg !348
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !349 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !353, metadata !DIExpression()), !dbg !354
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !355
  %conv = fpext float %0 to double, !dbg !355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !356
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !358 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !361, metadata !DIExpression()), !dbg !362
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !363
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), i64 %0), !dbg !364
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !366 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7.14, i64 0, i64 0), i64 %0), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !377 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !382
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !383
  ret void, !dbg !384
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !385 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !388, metadata !DIExpression()), !dbg !389
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !390
  %conv = sext i8 %0 to i32, !dbg !390
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !391
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !393 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !398, metadata !DIExpression()), !dbg !402
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !403
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !404
  store i32 %0, i32* %arrayidx, align 4, !dbg !405
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !406
  store i32 0, i32* %arrayidx1, align 4, !dbg !407
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !408
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10.15, i64 0, i64 0), i32* %arraydecay), !dbg !409
  ret void, !dbg !410
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !411 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !416
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !417
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !419 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !424
  %conv = zext i8 %0 to i32, !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !427 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !431, metadata !DIExpression()), !dbg !432
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !433
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !434
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !436 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !448
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !449
  %1 = load i32, i32* %intOne, align 4, !dbg !449
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !450
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !451
  %3 = load i32, i32* %intTwo, align 4, !dbg !451
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !452
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !454 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !458, metadata !DIExpression()), !dbg !459
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !460, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.declare(metadata i64* %i, metadata !462, metadata !DIExpression()), !dbg !463
  store i64 0, i64* %i, align 8, !dbg !464
  br label %for.cond, !dbg !466

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !467
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !469
  %cmp = icmp ult i64 %0, %1, !dbg !470
  br i1 %cmp, label %for.body, label %for.end, !dbg !471

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !472
  %3 = load i64, i64* %i, align 8, !dbg !474
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !472
  %4 = load i8, i8* %arrayidx, align 1, !dbg !472
  %conv = zext i8 %4 to i32, !dbg !472
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !475
  br label %for.inc, !dbg !476

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !477
  %inc = add i64 %5, 1, !dbg !477
  store i64 %inc, i64* %i, align 8, !dbg !477
  br label %for.cond, !dbg !478, !llvm.loop !479

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !482
  ret void, !dbg !483
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !484 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !487, metadata !DIExpression()), !dbg !488
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !489, metadata !DIExpression()), !dbg !490
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !493, metadata !DIExpression()), !dbg !494
  store i64 0, i64* %numWritten, align 8, !dbg !494
  br label %while.cond, !dbg !495

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !496
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !497
  %cmp = icmp ult i64 %0, %1, !dbg !498
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !499

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !500
  %2 = load i16*, i16** %call, align 8, !dbg !500
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !500
  %4 = load i64, i64* %numWritten, align 8, !dbg !500
  %mul = mul i64 2, %4, !dbg !500
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !500
  %5 = load i8, i8* %arrayidx, align 1, !dbg !500
  %conv = sext i8 %5 to i32, !dbg !500
  %idxprom = sext i32 %conv to i64, !dbg !500
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !500
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !500
  %conv2 = zext i16 %6 to i32, !dbg !500
  %and = and i32 %conv2, 4096, !dbg !500
  %tobool = icmp ne i32 %and, 0, !dbg !500
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !501

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !502
  %7 = load i16*, i16** %call3, align 8, !dbg !502
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !502
  %9 = load i64, i64* %numWritten, align 8, !dbg !502
  %mul4 = mul i64 2, %9, !dbg !502
  %add = add i64 %mul4, 1, !dbg !502
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !502
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !502
  %conv6 = sext i8 %10 to i32, !dbg !502
  %idxprom7 = sext i32 %conv6 to i64, !dbg !502
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !502
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !502
  %conv9 = zext i16 %11 to i32, !dbg !502
  %and10 = and i32 %conv9, 4096, !dbg !502
  %tobool11 = icmp ne i32 %and10, 0, !dbg !501
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !503
  br i1 %12, label %while.body, label %while.end, !dbg !495

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !504, metadata !DIExpression()), !dbg !506
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !507
  %14 = load i64, i64* %numWritten, align 8, !dbg !508
  %mul12 = mul i64 2, %14, !dbg !509
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !507
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !510
  %15 = load i32, i32* %byte, align 4, !dbg !511
  %conv15 = trunc i32 %15 to i8, !dbg !512
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !513
  %17 = load i64, i64* %numWritten, align 8, !dbg !514
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !513
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !515
  %18 = load i64, i64* %numWritten, align 8, !dbg !516
  %inc = add i64 %18, 1, !dbg !516
  store i64 %inc, i64* %numWritten, align 8, !dbg !516
  br label %while.cond, !dbg !495, !llvm.loop !517

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !519
  ret i64 %19, !dbg !520
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !521 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !524, metadata !DIExpression()), !dbg !525
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !526, metadata !DIExpression()), !dbg !527
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !528, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !530, metadata !DIExpression()), !dbg !531
  store i64 0, i64* %numWritten, align 8, !dbg !531
  br label %while.cond, !dbg !532

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !533
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !534
  %cmp = icmp ult i64 %0, %1, !dbg !535
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !536

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !537
  %3 = load i64, i64* %numWritten, align 8, !dbg !538
  %mul = mul i64 2, %3, !dbg !539
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !537
  %4 = load i32, i32* %arrayidx, align 4, !dbg !537
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !540
  %tobool = icmp ne i32 %call, 0, !dbg !540
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !541

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !542
  %6 = load i64, i64* %numWritten, align 8, !dbg !543
  %mul1 = mul i64 2, %6, !dbg !544
  %add = add i64 %mul1, 1, !dbg !545
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !542
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !542
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !546
  %tobool4 = icmp ne i32 %call3, 0, !dbg !541
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !547
  br i1 %8, label %while.body, label %while.end, !dbg !532

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !548, metadata !DIExpression()), !dbg !550
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !551
  %10 = load i64, i64* %numWritten, align 8, !dbg !552
  %mul5 = mul i64 2, %10, !dbg !553
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !551
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !554
  %11 = load i32, i32* %byte, align 4, !dbg !555
  %conv = trunc i32 %11 to i8, !dbg !556
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !557
  %13 = load i64, i64* %numWritten, align 8, !dbg !558
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !557
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !559
  %14 = load i64, i64* %numWritten, align 8, !dbg !560
  %inc = add i64 %14, 1, !dbg !560
  store i64 %inc, i64* %numWritten, align 8, !dbg !560
  br label %while.cond, !dbg !532, !llvm.loop !561

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !563
  ret i64 %15, !dbg !564
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !565 {
entry:
  ret i32 1, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !569 {
entry:
  ret i32 0, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !571 {
entry:
  %call = call i32 @rand() #8, !dbg !572
  %rem = srem i32 %call, 2, !dbg !573
  ret i32 %rem, !dbg !574
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !575 {
entry:
  ret void, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !577 {
entry:
  ret void, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !579 {
entry:
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !581 {
entry:
  ret void, !dbg !582
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !609 {
entry:
  ret void, !dbg !610
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_001/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_001/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_001/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67_bad", scope: !45, file: !45, line: 36, type: !55, scopeLine: 37, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 38, type: !42)
!58 = !DILocation(line: 38, column: 12, scope: !54)
!59 = !DILocalVariable(name: "myStruct", scope: !54, file: !45, line: 39, type: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType", file: !61, line: 8, baseType: !62)
!61 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_001/source_code")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType", file: !61, line: 5, size: 64, elements: !63)
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !62, file: !61, line: 7, baseType: !42, size: 64)
!65 = !DILocation(line: 39, column: 72, scope: !54)
!66 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 40, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 100)
!70 = !DILocation(line: 40, column: 10, scope: !54)
!71 = !DILocation(line: 41, column: 12, scope: !54)
!72 = !DILocation(line: 41, column: 10, scope: !54)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 44, type: !75)
!74 = distinct !DILexicalBlock(scope: !54, file: !45, line: 42, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 44, column: 16, scope: !74)
!79 = !DILocation(line: 44, column: 33, scope: !74)
!80 = !DILocation(line: 44, column: 26, scope: !74)
!81 = !DILocalVariable(name: "pFile", scope: !74, file: !45, line: 45, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !84, line: 7, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !86, line: 49, size: 1728, elements: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !103, !105, !106, !107, !111, !112, !114, !118, !121, !123, !126, !129, !130, !131, !132, !133}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !85, file: !86, line: 51, baseType: !23, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !85, file: !86, line: 54, baseType: !42, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !85, file: !86, line: 55, baseType: !42, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !85, file: !86, line: 56, baseType: !42, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !85, file: !86, line: 57, baseType: !42, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !85, file: !86, line: 58, baseType: !42, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !85, file: !86, line: 59, baseType: !42, size: 64, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !85, file: !86, line: 60, baseType: !42, size: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !85, file: !86, line: 61, baseType: !42, size: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !85, file: !86, line: 64, baseType: !42, size: 64, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !85, file: !86, line: 65, baseType: !42, size: 64, offset: 640)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !85, file: !86, line: 66, baseType: !42, size: 64, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !85, file: !86, line: 68, baseType: !101, size: 64, offset: 768)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !86, line: 36, flags: DIFlagFwdDecl)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !85, file: !86, line: 70, baseType: !104, size: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !85, file: !86, line: 72, baseType: !23, size: 32, offset: 896)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !85, file: !86, line: 73, baseType: !23, size: 32, offset: 928)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !85, file: !86, line: 74, baseType: !108, size: 64, offset: 960)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !109, line: 152, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!110 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !85, file: !86, line: 77, baseType: !24, size: 16, offset: 1024)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !85, file: !86, line: 78, baseType: !113, size: 8, offset: 1040)
!113 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !85, file: !86, line: 79, baseType: !115, size: 8, offset: 1048)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 1)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !85, file: !86, line: 81, baseType: !119, size: 64, offset: 1088)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !86, line: 43, baseType: null)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !85, file: !86, line: 89, baseType: !122, size: 64, offset: 1152)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !109, line: 153, baseType: !110)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !85, file: !86, line: 91, baseType: !124, size: 64, offset: 1216)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !86, line: 37, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !85, file: !86, line: 92, baseType: !127, size: 64, offset: 1280)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !86, line: 38, flags: DIFlagFwdDecl)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !85, file: !86, line: 93, baseType: !104, size: 64, offset: 1344)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !85, file: !86, line: 94, baseType: !22, size: 64, offset: 1408)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !85, file: !86, line: 95, baseType: !75, size: 64, offset: 1472)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !85, file: !86, line: 96, baseType: !23, size: 32, offset: 1536)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !85, file: !86, line: 98, baseType: !134, size: 160, offset: 1568)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 20)
!137 = !DILocation(line: 45, column: 16, scope: !74)
!138 = !DILocation(line: 47, column: 17, scope: !139)
!139 = distinct !DILexicalBlock(scope: !74, file: !45, line: 47, column: 13)
!140 = !DILocation(line: 47, column: 16, scope: !139)
!141 = !DILocation(line: 47, column: 25, scope: !139)
!142 = !DILocation(line: 47, column: 13, scope: !74)
!143 = !DILocation(line: 49, column: 21, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !45, line: 48, column: 9)
!145 = !DILocation(line: 49, column: 19, scope: !144)
!146 = !DILocation(line: 50, column: 17, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !45, line: 50, column: 17)
!148 = !DILocation(line: 50, column: 23, scope: !147)
!149 = !DILocation(line: 50, column: 17, scope: !144)
!150 = !DILocation(line: 53, column: 27, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !45, line: 53, column: 21)
!152 = distinct !DILexicalBlock(scope: !147, file: !45, line: 51, column: 13)
!153 = !DILocation(line: 53, column: 32, scope: !151)
!154 = !DILocation(line: 53, column: 31, scope: !151)
!155 = !DILocation(line: 53, column: 51, scope: !151)
!156 = !DILocation(line: 53, column: 50, scope: !151)
!157 = !DILocation(line: 53, column: 41, scope: !151)
!158 = !DILocation(line: 53, column: 61, scope: !151)
!159 = !DILocation(line: 53, column: 21, scope: !151)
!160 = !DILocation(line: 53, column: 68, scope: !151)
!161 = !DILocation(line: 53, column: 21, scope: !152)
!162 = !DILocation(line: 55, column: 21, scope: !163)
!163 = distinct !DILexicalBlock(scope: !151, file: !45, line: 54, column: 17)
!164 = !DILocation(line: 57, column: 21, scope: !163)
!165 = !DILocation(line: 57, column: 26, scope: !163)
!166 = !DILocation(line: 57, column: 35, scope: !163)
!167 = !DILocation(line: 58, column: 17, scope: !163)
!168 = !DILocation(line: 59, column: 24, scope: !152)
!169 = !DILocation(line: 59, column: 17, scope: !152)
!170 = !DILocation(line: 60, column: 13, scope: !152)
!171 = !DILocation(line: 61, column: 9, scope: !144)
!172 = !DILocation(line: 63, column: 28, scope: !54)
!173 = !DILocation(line: 63, column: 14, scope: !54)
!174 = !DILocation(line: 63, column: 26, scope: !54)
!175 = !DILocation(line: 64, column: 5, scope: !54)
!176 = !DILocation(line: 65, column: 1, scope: !54)
!177 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 73, type: !55, scopeLine: 74, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!178 = !DILocalVariable(name: "data", scope: !177, file: !45, line: 75, type: !42)
!179 = !DILocation(line: 75, column: 12, scope: !177)
!180 = !DILocalVariable(name: "myStruct", scope: !177, file: !45, line: 76, type: !60)
!181 = !DILocation(line: 76, column: 72, scope: !177)
!182 = !DILocalVariable(name: "dataBuffer", scope: !177, file: !45, line: 77, type: !67)
!183 = !DILocation(line: 77, column: 10, scope: !177)
!184 = !DILocation(line: 78, column: 12, scope: !177)
!185 = !DILocation(line: 78, column: 10, scope: !177)
!186 = !DILocation(line: 80, column: 12, scope: !177)
!187 = !DILocation(line: 80, column: 5, scope: !177)
!188 = !DILocation(line: 81, column: 28, scope: !177)
!189 = !DILocation(line: 81, column: 14, scope: !177)
!190 = !DILocation(line: 81, column: 26, scope: !177)
!191 = !DILocation(line: 82, column: 5, scope: !177)
!192 = !DILocation(line: 83, column: 1, scope: !177)
!193 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 87, type: !55, scopeLine: 88, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!194 = !DILocalVariable(name: "data", scope: !193, file: !45, line: 89, type: !42)
!195 = !DILocation(line: 89, column: 12, scope: !193)
!196 = !DILocalVariable(name: "myStruct", scope: !193, file: !45, line: 90, type: !60)
!197 = !DILocation(line: 90, column: 72, scope: !193)
!198 = !DILocalVariable(name: "dataBuffer", scope: !193, file: !45, line: 91, type: !67)
!199 = !DILocation(line: 91, column: 10, scope: !193)
!200 = !DILocation(line: 92, column: 12, scope: !193)
!201 = !DILocation(line: 92, column: 10, scope: !193)
!202 = !DILocalVariable(name: "dataLen", scope: !203, file: !45, line: 95, type: !75)
!203 = distinct !DILexicalBlock(scope: !193, file: !45, line: 93, column: 5)
!204 = !DILocation(line: 95, column: 16, scope: !203)
!205 = !DILocation(line: 95, column: 33, scope: !203)
!206 = !DILocation(line: 95, column: 26, scope: !203)
!207 = !DILocalVariable(name: "pFile", scope: !203, file: !45, line: 96, type: !82)
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
!243 = !DILocation(line: 114, column: 28, scope: !193)
!244 = !DILocation(line: 114, column: 14, scope: !193)
!245 = !DILocation(line: 114, column: 26, scope: !193)
!246 = !DILocation(line: 115, column: 5, scope: !193)
!247 = !DILocation(line: 116, column: 1, scope: !193)
!248 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67_good", scope: !45, file: !45, line: 118, type: !55, scopeLine: 119, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!249 = !DILocation(line: 120, column: 5, scope: !248)
!250 = !DILocation(line: 121, column: 5, scope: !248)
!251 = !DILocation(line: 122, column: 1, scope: !248)
!252 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_badSink", scope: !49, file: !49, line: 37, type: !253, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !255}
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType", file: !49, line: 33, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE134_Uncontrolled_Format_String__char_file_fprintf_67_structType", file: !49, line: 30, size: 64, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !256, file: !49, line: 32, baseType: !42, size: 64)
!259 = !DILocalVariable(name: "myStruct", arg: 1, scope: !252, file: !49, line: 37, type: !255)
!260 = !DILocation(line: 37, column: 138, scope: !252)
!261 = !DILocalVariable(name: "data", scope: !252, file: !49, line: 39, type: !42)
!262 = !DILocation(line: 39, column: 12, scope: !252)
!263 = !DILocation(line: 39, column: 28, scope: !252)
!264 = !DILocation(line: 41, column: 13, scope: !252)
!265 = !DILocation(line: 41, column: 21, scope: !252)
!266 = !DILocation(line: 41, column: 5, scope: !252)
!267 = !DILocation(line: 42, column: 1, scope: !252)
!268 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_goodG2BSink", scope: !49, file: !49, line: 49, type: !253, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!269 = !DILocalVariable(name: "myStruct", arg: 1, scope: !268, file: !49, line: 49, type: !255)
!270 = !DILocation(line: 49, column: 142, scope: !268)
!271 = !DILocalVariable(name: "data", scope: !268, file: !49, line: 51, type: !42)
!272 = !DILocation(line: 51, column: 12, scope: !268)
!273 = !DILocation(line: 51, column: 28, scope: !268)
!274 = !DILocation(line: 53, column: 13, scope: !268)
!275 = !DILocation(line: 53, column: 21, scope: !268)
!276 = !DILocation(line: 53, column: 5, scope: !268)
!277 = !DILocation(line: 54, column: 1, scope: !268)
!278 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_67b_goodB2GSink", scope: !49, file: !49, line: 57, type: !253, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!279 = !DILocalVariable(name: "myStruct", arg: 1, scope: !278, file: !49, line: 57, type: !255)
!280 = !DILocation(line: 57, column: 142, scope: !278)
!281 = !DILocalVariable(name: "data", scope: !278, file: !49, line: 59, type: !42)
!282 = !DILocation(line: 59, column: 12, scope: !278)
!283 = !DILocation(line: 59, column: 28, scope: !278)
!284 = !DILocation(line: 61, column: 13, scope: !278)
!285 = !DILocation(line: 61, column: 29, scope: !278)
!286 = !DILocation(line: 61, column: 5, scope: !278)
!287 = !DILocation(line: 62, column: 1, scope: !278)
!288 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !289, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !42}
!291 = !DILocalVariable(name: "line", arg: 1, scope: !288, file: !3, line: 11, type: !42)
!292 = !DILocation(line: 11, column: 25, scope: !288)
!293 = !DILocation(line: 13, column: 1, scope: !288)
!294 = !DILocation(line: 14, column: 8, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !3, line: 14, column: 8)
!296 = !DILocation(line: 14, column: 13, scope: !295)
!297 = !DILocation(line: 14, column: 8, scope: !288)
!298 = !DILocation(line: 16, column: 24, scope: !299)
!299 = distinct !DILexicalBlock(scope: !295, file: !3, line: 15, column: 5)
!300 = !DILocation(line: 16, column: 9, scope: !299)
!301 = !DILocation(line: 17, column: 5, scope: !299)
!302 = !DILocation(line: 18, column: 5, scope: !288)
!303 = !DILocation(line: 19, column: 1, scope: !288)
!304 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !289, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!305 = !DILocalVariable(name: "line", arg: 1, scope: !304, file: !3, line: 20, type: !42)
!306 = !DILocation(line: 20, column: 29, scope: !304)
!307 = !DILocation(line: 22, column: 8, scope: !308)
!308 = distinct !DILexicalBlock(scope: !304, file: !3, line: 22, column: 8)
!309 = !DILocation(line: 22, column: 13, scope: !308)
!310 = !DILocation(line: 22, column: 8, scope: !304)
!311 = !DILocation(line: 24, column: 24, scope: !312)
!312 = distinct !DILexicalBlock(scope: !308, file: !3, line: 23, column: 5)
!313 = !DILocation(line: 24, column: 9, scope: !312)
!314 = !DILocation(line: 25, column: 5, scope: !312)
!315 = !DILocation(line: 26, column: 1, scope: !304)
!316 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !317, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !319}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !23)
!321 = !DILocalVariable(name: "line", arg: 1, scope: !316, file: !3, line: 27, type: !319)
!322 = !DILocation(line: 27, column: 29, scope: !316)
!323 = !DILocation(line: 29, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !316, file: !3, line: 29, column: 8)
!325 = !DILocation(line: 29, column: 13, scope: !324)
!326 = !DILocation(line: 29, column: 8, scope: !316)
!327 = !DILocation(line: 31, column: 27, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !3, line: 30, column: 5)
!329 = !DILocation(line: 31, column: 9, scope: !328)
!330 = !DILocation(line: 32, column: 5, scope: !328)
!331 = !DILocation(line: 33, column: 1, scope: !316)
!332 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !333, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !23}
!335 = !DILocalVariable(name: "intNumber", arg: 1, scope: !332, file: !3, line: 35, type: !23)
!336 = !DILocation(line: 35, column: 24, scope: !332)
!337 = !DILocation(line: 37, column: 20, scope: !332)
!338 = !DILocation(line: 37, column: 5, scope: !332)
!339 = !DILocation(line: 38, column: 1, scope: !332)
!340 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !341, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !343}
!343 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!344 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !340, file: !3, line: 40, type: !343)
!345 = !DILocation(line: 40, column: 28, scope: !340)
!346 = !DILocation(line: 42, column: 21, scope: !340)
!347 = !DILocation(line: 42, column: 5, scope: !340)
!348 = !DILocation(line: 43, column: 1, scope: !340)
!349 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !350, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !352}
!352 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!353 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !349, file: !3, line: 45, type: !352)
!354 = !DILocation(line: 45, column: 28, scope: !349)
!355 = !DILocation(line: 47, column: 20, scope: !349)
!356 = !DILocation(line: 47, column: 5, scope: !349)
!357 = !DILocation(line: 48, column: 1, scope: !349)
!358 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !359, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !110}
!361 = !DILocalVariable(name: "longNumber", arg: 1, scope: !358, file: !3, line: 50, type: !110)
!362 = !DILocation(line: 50, column: 26, scope: !358)
!363 = !DILocation(line: 52, column: 21, scope: !358)
!364 = !DILocation(line: 52, column: 5, scope: !358)
!365 = !DILocation(line: 53, column: 1, scope: !358)
!366 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !367, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !369}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !370, line: 27, baseType: !371)
!370 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !109, line: 44, baseType: !110)
!372 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !366, file: !3, line: 55, type: !369)
!373 = !DILocation(line: 55, column: 33, scope: !366)
!374 = !DILocation(line: 57, column: 29, scope: !366)
!375 = !DILocation(line: 57, column: 5, scope: !366)
!376 = !DILocation(line: 58, column: 1, scope: !366)
!377 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !378, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !75}
!380 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !377, file: !3, line: 60, type: !75)
!381 = !DILocation(line: 60, column: 29, scope: !377)
!382 = !DILocation(line: 62, column: 21, scope: !377)
!383 = !DILocation(line: 62, column: 5, scope: !377)
!384 = !DILocation(line: 63, column: 1, scope: !377)
!385 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !386, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !43}
!388 = !DILocalVariable(name: "charHex", arg: 1, scope: !385, file: !3, line: 65, type: !43)
!389 = !DILocation(line: 65, column: 29, scope: !385)
!390 = !DILocation(line: 67, column: 22, scope: !385)
!391 = !DILocation(line: 67, column: 5, scope: !385)
!392 = !DILocation(line: 68, column: 1, scope: !385)
!393 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !394, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !320}
!396 = !DILocalVariable(name: "wideChar", arg: 1, scope: !393, file: !3, line: 70, type: !320)
!397 = !DILocation(line: 70, column: 29, scope: !393)
!398 = !DILocalVariable(name: "s", scope: !393, file: !3, line: 74, type: !399)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 64, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 2)
!402 = !DILocation(line: 74, column: 13, scope: !393)
!403 = !DILocation(line: 75, column: 16, scope: !393)
!404 = !DILocation(line: 75, column: 9, scope: !393)
!405 = !DILocation(line: 75, column: 14, scope: !393)
!406 = !DILocation(line: 76, column: 9, scope: !393)
!407 = !DILocation(line: 76, column: 14, scope: !393)
!408 = !DILocation(line: 77, column: 21, scope: !393)
!409 = !DILocation(line: 77, column: 5, scope: !393)
!410 = !DILocation(line: 78, column: 1, scope: !393)
!411 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !412, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !7}
!414 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !411, file: !3, line: 80, type: !7)
!415 = !DILocation(line: 80, column: 33, scope: !411)
!416 = !DILocation(line: 82, column: 20, scope: !411)
!417 = !DILocation(line: 82, column: 5, scope: !411)
!418 = !DILocation(line: 83, column: 1, scope: !411)
!419 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !420, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !25}
!422 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !419, file: !3, line: 85, type: !25)
!423 = !DILocation(line: 85, column: 45, scope: !419)
!424 = !DILocation(line: 87, column: 22, scope: !419)
!425 = !DILocation(line: 87, column: 5, scope: !419)
!426 = !DILocation(line: 88, column: 1, scope: !419)
!427 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !428, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !430}
!430 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!431 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !427, file: !3, line: 90, type: !430)
!432 = !DILocation(line: 90, column: 29, scope: !427)
!433 = !DILocation(line: 92, column: 20, scope: !427)
!434 = !DILocation(line: 92, column: 5, scope: !427)
!435 = !DILocation(line: 93, column: 1, scope: !427)
!436 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !437, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !441, line: 100, baseType: !442)
!441 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_001/source_code")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !441, line: 96, size: 64, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !442, file: !441, line: 98, baseType: !23, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !442, file: !441, line: 99, baseType: !23, size: 32, offset: 32)
!446 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !436, file: !3, line: 95, type: !439)
!447 = !DILocation(line: 95, column: 40, scope: !436)
!448 = !DILocation(line: 97, column: 26, scope: !436)
!449 = !DILocation(line: 97, column: 47, scope: !436)
!450 = !DILocation(line: 97, column: 55, scope: !436)
!451 = !DILocation(line: 97, column: 76, scope: !436)
!452 = !DILocation(line: 97, column: 5, scope: !436)
!453 = !DILocation(line: 98, column: 1, scope: !436)
!454 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !455, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !457, !75}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!458 = !DILocalVariable(name: "bytes", arg: 1, scope: !454, file: !3, line: 100, type: !457)
!459 = !DILocation(line: 100, column: 38, scope: !454)
!460 = !DILocalVariable(name: "numBytes", arg: 2, scope: !454, file: !3, line: 100, type: !75)
!461 = !DILocation(line: 100, column: 52, scope: !454)
!462 = !DILocalVariable(name: "i", scope: !454, file: !3, line: 102, type: !75)
!463 = !DILocation(line: 102, column: 12, scope: !454)
!464 = !DILocation(line: 103, column: 12, scope: !465)
!465 = distinct !DILexicalBlock(scope: !454, file: !3, line: 103, column: 5)
!466 = !DILocation(line: 103, column: 10, scope: !465)
!467 = !DILocation(line: 103, column: 17, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !3, line: 103, column: 5)
!469 = !DILocation(line: 103, column: 21, scope: !468)
!470 = !DILocation(line: 103, column: 19, scope: !468)
!471 = !DILocation(line: 103, column: 5, scope: !465)
!472 = !DILocation(line: 105, column: 24, scope: !473)
!473 = distinct !DILexicalBlock(scope: !468, file: !3, line: 104, column: 5)
!474 = !DILocation(line: 105, column: 30, scope: !473)
!475 = !DILocation(line: 105, column: 9, scope: !473)
!476 = !DILocation(line: 106, column: 5, scope: !473)
!477 = !DILocation(line: 103, column: 31, scope: !468)
!478 = !DILocation(line: 103, column: 5, scope: !468)
!479 = distinct !{!479, !471, !480, !481}
!480 = !DILocation(line: 106, column: 5, scope: !465)
!481 = !{!"llvm.loop.mustprogress"}
!482 = !DILocation(line: 107, column: 5, scope: !454)
!483 = !DILocation(line: 108, column: 1, scope: !454)
!484 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !485, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!485 = !DISubroutineType(types: !486)
!486 = !{!75, !457, !75, !42}
!487 = !DILocalVariable(name: "bytes", arg: 1, scope: !484, file: !3, line: 113, type: !457)
!488 = !DILocation(line: 113, column: 39, scope: !484)
!489 = !DILocalVariable(name: "numBytes", arg: 2, scope: !484, file: !3, line: 113, type: !75)
!490 = !DILocation(line: 113, column: 53, scope: !484)
!491 = !DILocalVariable(name: "hex", arg: 3, scope: !484, file: !3, line: 113, type: !42)
!492 = !DILocation(line: 113, column: 71, scope: !484)
!493 = !DILocalVariable(name: "numWritten", scope: !484, file: !3, line: 115, type: !75)
!494 = !DILocation(line: 115, column: 12, scope: !484)
!495 = !DILocation(line: 121, column: 5, scope: !484)
!496 = !DILocation(line: 121, column: 12, scope: !484)
!497 = !DILocation(line: 121, column: 25, scope: !484)
!498 = !DILocation(line: 121, column: 23, scope: !484)
!499 = !DILocation(line: 121, column: 34, scope: !484)
!500 = !DILocation(line: 121, column: 37, scope: !484)
!501 = !DILocation(line: 121, column: 67, scope: !484)
!502 = !DILocation(line: 121, column: 70, scope: !484)
!503 = !DILocation(line: 0, scope: !484)
!504 = !DILocalVariable(name: "byte", scope: !505, file: !3, line: 123, type: !23)
!505 = distinct !DILexicalBlock(scope: !484, file: !3, line: 122, column: 5)
!506 = !DILocation(line: 123, column: 13, scope: !505)
!507 = !DILocation(line: 124, column: 17, scope: !505)
!508 = !DILocation(line: 124, column: 25, scope: !505)
!509 = !DILocation(line: 124, column: 23, scope: !505)
!510 = !DILocation(line: 124, column: 9, scope: !505)
!511 = !DILocation(line: 125, column: 45, scope: !505)
!512 = !DILocation(line: 125, column: 29, scope: !505)
!513 = !DILocation(line: 125, column: 9, scope: !505)
!514 = !DILocation(line: 125, column: 15, scope: !505)
!515 = !DILocation(line: 125, column: 27, scope: !505)
!516 = !DILocation(line: 126, column: 9, scope: !505)
!517 = distinct !{!517, !495, !518, !481}
!518 = !DILocation(line: 127, column: 5, scope: !484)
!519 = !DILocation(line: 129, column: 12, scope: !484)
!520 = !DILocation(line: 129, column: 5, scope: !484)
!521 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !522, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DISubroutineType(types: !523)
!523 = !{!75, !457, !75, !319}
!524 = !DILocalVariable(name: "bytes", arg: 1, scope: !521, file: !3, line: 135, type: !457)
!525 = !DILocation(line: 135, column: 41, scope: !521)
!526 = !DILocalVariable(name: "numBytes", arg: 2, scope: !521, file: !3, line: 135, type: !75)
!527 = !DILocation(line: 135, column: 55, scope: !521)
!528 = !DILocalVariable(name: "hex", arg: 3, scope: !521, file: !3, line: 135, type: !319)
!529 = !DILocation(line: 135, column: 76, scope: !521)
!530 = !DILocalVariable(name: "numWritten", scope: !521, file: !3, line: 137, type: !75)
!531 = !DILocation(line: 137, column: 12, scope: !521)
!532 = !DILocation(line: 143, column: 5, scope: !521)
!533 = !DILocation(line: 143, column: 12, scope: !521)
!534 = !DILocation(line: 143, column: 25, scope: !521)
!535 = !DILocation(line: 143, column: 23, scope: !521)
!536 = !DILocation(line: 143, column: 34, scope: !521)
!537 = !DILocation(line: 143, column: 47, scope: !521)
!538 = !DILocation(line: 143, column: 55, scope: !521)
!539 = !DILocation(line: 143, column: 53, scope: !521)
!540 = !DILocation(line: 143, column: 37, scope: !521)
!541 = !DILocation(line: 143, column: 68, scope: !521)
!542 = !DILocation(line: 143, column: 81, scope: !521)
!543 = !DILocation(line: 143, column: 89, scope: !521)
!544 = !DILocation(line: 143, column: 87, scope: !521)
!545 = !DILocation(line: 143, column: 100, scope: !521)
!546 = !DILocation(line: 143, column: 71, scope: !521)
!547 = !DILocation(line: 0, scope: !521)
!548 = !DILocalVariable(name: "byte", scope: !549, file: !3, line: 145, type: !23)
!549 = distinct !DILexicalBlock(scope: !521, file: !3, line: 144, column: 5)
!550 = !DILocation(line: 145, column: 13, scope: !549)
!551 = !DILocation(line: 146, column: 18, scope: !549)
!552 = !DILocation(line: 146, column: 26, scope: !549)
!553 = !DILocation(line: 146, column: 24, scope: !549)
!554 = !DILocation(line: 146, column: 9, scope: !549)
!555 = !DILocation(line: 147, column: 45, scope: !549)
!556 = !DILocation(line: 147, column: 29, scope: !549)
!557 = !DILocation(line: 147, column: 9, scope: !549)
!558 = !DILocation(line: 147, column: 15, scope: !549)
!559 = !DILocation(line: 147, column: 27, scope: !549)
!560 = !DILocation(line: 148, column: 9, scope: !549)
!561 = distinct !{!561, !532, !562, !481}
!562 = !DILocation(line: 149, column: 5, scope: !521)
!563 = !DILocation(line: 151, column: 12, scope: !521)
!564 = !DILocation(line: 151, column: 5, scope: !521)
!565 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !566, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DISubroutineType(types: !567)
!567 = !{!23}
!568 = !DILocation(line: 158, column: 5, scope: !565)
!569 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !566, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!570 = !DILocation(line: 163, column: 5, scope: !569)
!571 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !566, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DILocation(line: 168, column: 13, scope: !571)
!573 = !DILocation(line: 168, column: 20, scope: !571)
!574 = !DILocation(line: 168, column: 5, scope: !571)
!575 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!576 = !DILocation(line: 187, column: 16, scope: !575)
!577 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 188, column: 16, scope: !577)
!579 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 189, column: 16, scope: !579)
!581 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!582 = !DILocation(line: 190, column: 16, scope: !581)
!583 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 191, column: 16, scope: !583)
!585 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 192, column: 16, scope: !585)
!587 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 193, column: 16, scope: !587)
!589 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 194, column: 16, scope: !589)
!591 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 195, column: 16, scope: !591)
!593 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 198, column: 15, scope: !593)
!595 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 199, column: 15, scope: !595)
!597 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 200, column: 15, scope: !597)
!599 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 201, column: 15, scope: !599)
!601 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 202, column: 15, scope: !601)
!603 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 203, column: 15, scope: !603)
!605 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 204, column: 15, scope: !605)
!607 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 205, column: 15, scope: !607)
!609 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 206, column: 15, scope: !609)
