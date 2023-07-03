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
@.str.25 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.28 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.29 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.30 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.31 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54_bad() #0 !dbg !60 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !65, metadata !DIExpression()), !dbg !69
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !69
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !69
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !70
  store i8* %arraydecay, i8** %data, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !72, metadata !DIExpression()), !dbg !77
  %1 = load i8*, i8** %data, align 8, !dbg !78
  %call = call i64 @strlen(i8* %1) #7, !dbg !79
  store i64 %call, i64* %dataLen, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !80, metadata !DIExpression()), !dbg !136
  %2 = load i64, i64* %dataLen, align 8, !dbg !137
  %sub = sub i64 100, %2, !dbg !139
  %cmp = icmp ugt i64 %sub, 1, !dbg !140
  br i1 %cmp, label %if.then, label %if.end11, !dbg !141

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !142
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !144
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !145
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !147
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !148

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !149
  %5 = load i64, i64* %dataLen, align 8, !dbg !152
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !153
  %6 = load i64, i64* %dataLen, align 8, !dbg !154
  %sub4 = sub i64 100, %6, !dbg !155
  %conv = trunc i64 %sub4 to i32, !dbg !156
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !157
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !158
  %cmp6 = icmp eq i8* %call5, null, !dbg !159
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !160

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !161
  %8 = load i8*, i8** %data, align 8, !dbg !163
  %9 = load i64, i64* %dataLen, align 8, !dbg !164
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !163
  store i8 0, i8* %arrayidx, align 1, !dbg !165
  br label %if.end, !dbg !166

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !167
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !168
  br label %if.end10, !dbg !169

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !170

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !171
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54b_badSink(i8* %11), !dbg !172
  ret void, !dbg !173
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
define dso_local void @goodG2B() #0 !dbg !174 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !177, metadata !DIExpression()), !dbg !178
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !178
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !178
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !179
  store i8* %arraydecay, i8** %data, align 8, !dbg !180
  %1 = load i8*, i8** %data, align 8, !dbg !181
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !182
  %2 = load i8*, i8** %data, align 8, !dbg !183
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54b_goodG2BSink(i8* %2), !dbg !184
  ret void, !dbg !185
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !186 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !187, metadata !DIExpression()), !dbg !188
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !189, metadata !DIExpression()), !dbg !190
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !190
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !190
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !191
  store i8* %arraydecay, i8** %data, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !193, metadata !DIExpression()), !dbg !195
  %1 = load i8*, i8** %data, align 8, !dbg !196
  %call = call i64 @strlen(i8* %1) #7, !dbg !197
  store i64 %call, i64* %dataLen, align 8, !dbg !195
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !198, metadata !DIExpression()), !dbg !199
  %2 = load i64, i64* %dataLen, align 8, !dbg !200
  %sub = sub i64 100, %2, !dbg !202
  %cmp = icmp ugt i64 %sub, 1, !dbg !203
  br i1 %cmp, label %if.then, label %if.end11, !dbg !204

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !205
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !207
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !208
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !210
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !211

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !212
  %5 = load i64, i64* %dataLen, align 8, !dbg !215
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !216
  %6 = load i64, i64* %dataLen, align 8, !dbg !217
  %sub4 = sub i64 100, %6, !dbg !218
  %conv = trunc i64 %sub4 to i32, !dbg !219
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !220
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !221
  %cmp6 = icmp eq i8* %call5, null, !dbg !222
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !223

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !224
  %8 = load i8*, i8** %data, align 8, !dbg !226
  %9 = load i64, i64* %dataLen, align 8, !dbg !227
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !226
  store i8 0, i8* %arrayidx, align 1, !dbg !228
  br label %if.end, !dbg !229

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !230
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !231
  br label %if.end10, !dbg !232

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !233

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !234
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54b_goodB2GSink(i8* %11), !dbg !235
  ret void, !dbg !236
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54_good() #0 !dbg !237 {
entry:
  call void @goodG2B(), !dbg !238
  call void @goodB2G(), !dbg !239
  ret void, !dbg !240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54b_badSink(i8* %data) #0 !dbg !241 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !244, metadata !DIExpression()), !dbg !245
  %0 = load i8*, i8** %data.addr, align 8, !dbg !246
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54c_badSink(i8* %0), !dbg !247
  ret void, !dbg !248
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54b_goodG2BSink(i8* %data) #0 !dbg !249 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !250, metadata !DIExpression()), !dbg !251
  %0 = load i8*, i8** %data.addr, align 8, !dbg !252
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54c_goodG2BSink(i8* %0), !dbg !253
  ret void, !dbg !254
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54b_goodB2GSink(i8* %data) #0 !dbg !255 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = load i8*, i8** %data.addr, align 8, !dbg !258
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54c_goodB2GSink(i8* %0), !dbg !259
  ret void, !dbg !260
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54c_badSink(i8* %data) #0 !dbg !261 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !262, metadata !DIExpression()), !dbg !263
  %0 = load i8*, i8** %data.addr, align 8, !dbg !264
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54d_badSink(i8* %0), !dbg !265
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54c_goodG2BSink(i8* %data) #0 !dbg !267 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = load i8*, i8** %data.addr, align 8, !dbg !270
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54d_goodG2BSink(i8* %0), !dbg !271
  ret void, !dbg !272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54c_goodB2GSink(i8* %data) #0 !dbg !273 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !274, metadata !DIExpression()), !dbg !275
  %0 = load i8*, i8** %data.addr, align 8, !dbg !276
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54d_goodB2GSink(i8* %0), !dbg !277
  ret void, !dbg !278
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54d_badSink(i8* %data) #0 !dbg !279 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load i8*, i8** %data.addr, align 8, !dbg !282
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54e_badSink(i8* %0), !dbg !283
  ret void, !dbg !284
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54d_goodG2BSink(i8* %data) #0 !dbg !285 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !286, metadata !DIExpression()), !dbg !287
  %0 = load i8*, i8** %data.addr, align 8, !dbg !288
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54e_goodG2BSink(i8* %0), !dbg !289
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54d_goodB2GSink(i8* %data) #0 !dbg !291 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !292, metadata !DIExpression()), !dbg !293
  %0 = load i8*, i8** %data.addr, align 8, !dbg !294
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54e_goodB2GSink(i8* %0), !dbg !295
  ret void, !dbg !296
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54e_badSink(i8* %data) #0 !dbg !297 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !298, metadata !DIExpression()), !dbg !299
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !300
  %1 = load i8*, i8** %data.addr, align 8, !dbg !301
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !302
  ret void, !dbg !303
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54e_goodG2BSink(i8* %data) #0 !dbg !304 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !305, metadata !DIExpression()), !dbg !306
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !307
  %1 = load i8*, i8** %data.addr, align 8, !dbg !308
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !309
  ret void, !dbg !310
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_54e_goodB2GSink(i8* %data) #0 !dbg !311 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !314
  %1 = load i8*, i8** %data.addr, align 8, !dbg !315
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i8* %1), !dbg !316
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !318 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !319, metadata !DIExpression()), !dbg !320
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0)), !dbg !321
  %0 = load i8*, i8** %line.addr, align 8, !dbg !322
  %cmp = icmp ne i8* %0, null, !dbg !324
  br i1 %cmp, label %if.then, label %if.end, !dbg !325

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !326
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.29, i64 0, i64 0), i8* %1), !dbg !328
  br label %if.end, !dbg !329

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.30, i64 0, i64 0)), !dbg !330
  ret void, !dbg !331
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !332 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %0 = load i8*, i8** %line.addr, align 8, !dbg !335
  %cmp = icmp ne i8* %0, null, !dbg !337
  br i1 %cmp, label %if.then, label %if.end, !dbg !338

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !339
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.29, i64 0, i64 0), i8* %1), !dbg !341
  br label %if.end, !dbg !342

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !344 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i32*, i32** %line.addr, align 8, !dbg !351
  %cmp = icmp ne i32* %0, null, !dbg !353
  br i1 %cmp, label %if.then, label %if.end, !dbg !354

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !355
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.31, i64 0, i64 0), i32* %1), !dbg !357
  br label %if.end, !dbg !358

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !359
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !360 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !365
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !368 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !374
  %conv = sext i16 %0 to i32, !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !375
  ret void, !dbg !376
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !377 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !381, metadata !DIExpression()), !dbg !382
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !383
  %conv = fpext float %0 to double, !dbg !383
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !384
  ret void, !dbg !385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !386 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !389, metadata !DIExpression()), !dbg !390
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !391
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !392
  ret void, !dbg !393
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !394 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !400, metadata !DIExpression()), !dbg !401
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !402
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !403
  ret void, !dbg !404
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !405 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !413 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !418
  %conv = sext i8 %0 to i32, !dbg !418
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !421 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !424, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !426, metadata !DIExpression()), !dbg !430
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !431
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !432
  store i32 %0, i32* %arrayidx, align 4, !dbg !433
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !434
  store i32 0, i32* %arrayidx1, align 4, !dbg !435
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !436
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !437
  ret void, !dbg !438
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !439 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !447 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !452
  %conv = zext i8 %0 to i32, !dbg !452
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !455 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !461
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !464 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !474, metadata !DIExpression()), !dbg !475
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !476
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !477
  %1 = load i32, i32* %intOne, align 4, !dbg !477
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !478
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !479
  %3 = load i32, i32* %intTwo, align 4, !dbg !479
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !482 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !486, metadata !DIExpression()), !dbg !487
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !488, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.declare(metadata i64* %i, metadata !490, metadata !DIExpression()), !dbg !491
  store i64 0, i64* %i, align 8, !dbg !492
  br label %for.cond, !dbg !494

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !495
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !497
  %cmp = icmp ult i64 %0, %1, !dbg !498
  br i1 %cmp, label %for.body, label %for.end, !dbg !499

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !500
  %3 = load i64, i64* %i, align 8, !dbg !502
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !500
  %4 = load i8, i8* %arrayidx, align 1, !dbg !500
  %conv = zext i8 %4 to i32, !dbg !500
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !503
  br label %for.inc, !dbg !504

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !505
  %inc = add i64 %5, 1, !dbg !505
  store i64 %inc, i64* %i, align 8, !dbg !505
  br label %for.cond, !dbg !506, !llvm.loop !507

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !510
  ret void, !dbg !511
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !512 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !515, metadata !DIExpression()), !dbg !516
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !517, metadata !DIExpression()), !dbg !518
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !519, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !521, metadata !DIExpression()), !dbg !522
  store i64 0, i64* %numWritten, align 8, !dbg !522
  br label %while.cond, !dbg !523

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !524
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !525
  %cmp = icmp ult i64 %0, %1, !dbg !526
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !527

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !528
  %2 = load i16*, i16** %call, align 8, !dbg !528
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !528
  %4 = load i64, i64* %numWritten, align 8, !dbg !528
  %mul = mul i64 2, %4, !dbg !528
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !528
  %5 = load i8, i8* %arrayidx, align 1, !dbg !528
  %conv = sext i8 %5 to i32, !dbg !528
  %idxprom = sext i32 %conv to i64, !dbg !528
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !528
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !528
  %conv2 = zext i16 %6 to i32, !dbg !528
  %and = and i32 %conv2, 4096, !dbg !528
  %tobool = icmp ne i32 %and, 0, !dbg !528
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !529

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !530
  %7 = load i16*, i16** %call3, align 8, !dbg !530
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !530
  %9 = load i64, i64* %numWritten, align 8, !dbg !530
  %mul4 = mul i64 2, %9, !dbg !530
  %add = add i64 %mul4, 1, !dbg !530
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !530
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !530
  %conv6 = sext i8 %10 to i32, !dbg !530
  %idxprom7 = sext i32 %conv6 to i64, !dbg !530
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !530
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !530
  %conv9 = zext i16 %11 to i32, !dbg !530
  %and10 = and i32 %conv9, 4096, !dbg !530
  %tobool11 = icmp ne i32 %and10, 0, !dbg !529
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !531
  br i1 %12, label %while.body, label %while.end, !dbg !523

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !532, metadata !DIExpression()), !dbg !534
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !535
  %14 = load i64, i64* %numWritten, align 8, !dbg !536
  %mul12 = mul i64 2, %14, !dbg !537
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !535
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !538
  %15 = load i32, i32* %byte, align 4, !dbg !539
  %conv15 = trunc i32 %15 to i8, !dbg !540
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !541
  %17 = load i64, i64* %numWritten, align 8, !dbg !542
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !541
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !543
  %18 = load i64, i64* %numWritten, align 8, !dbg !544
  %inc = add i64 %18, 1, !dbg !544
  store i64 %inc, i64* %numWritten, align 8, !dbg !544
  br label %while.cond, !dbg !523, !llvm.loop !545

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !547
  ret i64 %19, !dbg !548
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !549 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !552, metadata !DIExpression()), !dbg !553
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !554, metadata !DIExpression()), !dbg !555
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !556, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !558, metadata !DIExpression()), !dbg !559
  store i64 0, i64* %numWritten, align 8, !dbg !559
  br label %while.cond, !dbg !560

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !561
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !562
  %cmp = icmp ult i64 %0, %1, !dbg !563
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !564

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !565
  %3 = load i64, i64* %numWritten, align 8, !dbg !566
  %mul = mul i64 2, %3, !dbg !567
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !565
  %4 = load i32, i32* %arrayidx, align 4, !dbg !565
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !568
  %tobool = icmp ne i32 %call, 0, !dbg !568
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !569

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !570
  %6 = load i64, i64* %numWritten, align 8, !dbg !571
  %mul1 = mul i64 2, %6, !dbg !572
  %add = add i64 %mul1, 1, !dbg !573
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !570
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !570
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !574
  %tobool4 = icmp ne i32 %call3, 0, !dbg !569
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !575
  br i1 %8, label %while.body, label %while.end, !dbg !560

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !576, metadata !DIExpression()), !dbg !578
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !579
  %10 = load i64, i64* %numWritten, align 8, !dbg !580
  %mul5 = mul i64 2, %10, !dbg !581
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !579
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !582
  %11 = load i32, i32* %byte, align 4, !dbg !583
  %conv = trunc i32 %11 to i8, !dbg !584
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !585
  %13 = load i64, i64* %numWritten, align 8, !dbg !586
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !585
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !587
  %14 = load i64, i64* %numWritten, align 8, !dbg !588
  %inc = add i64 %14, 1, !dbg !588
  store i64 %inc, i64* %numWritten, align 8, !dbg !588
  br label %while.cond, !dbg !560, !llvm.loop !589

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !591
  ret i64 %15, !dbg !592
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !593 {
entry:
  ret i32 1, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !597 {
entry:
  ret i32 0, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !599 {
entry:
  %call = call i32 @rand() #8, !dbg !600
  %rem = srem i32 %call, 2, !dbg !601
  ret i32 %rem, !dbg !602
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !617 {
entry:
  ret void, !dbg !618
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !619 {
entry:
  ret void, !dbg !620
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !621 {
entry:
  ret void, !dbg !622
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !623 {
entry:
  ret void, !dbg !624
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !625 {
entry:
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !627 {
entry:
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !629 {
entry:
  ret void, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !631 {
entry:
  ret void, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !633 {
entry:
  ret void, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !635 {
entry:
  ret void, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !637 {
entry:
  ret void, !dbg !638
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

!llvm.dbg.cu = !{!44, !48, !50, !52, !54, !2}
!llvm.ident = !{!56, !56, !56, !56, !56, !56}
!llvm.module.flags = !{!57, !58, !59}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_994/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_994/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_994/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_994/source_code")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_994/source_code")
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !55, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!55 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54e.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_994/source_code")
!56 = !{!"clang version 12.0.0"}
!57 = !{i32 7, !"Dwarf Version", i32 4}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54_bad", scope: !45, file: !45, line: 35, type: !61, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!61 = !DISubroutineType(types: !62)
!62 = !{null}
!63 = !DILocalVariable(name: "data", scope: !60, file: !45, line: 37, type: !42)
!64 = !DILocation(line: 37, column: 12, scope: !60)
!65 = !DILocalVariable(name: "dataBuffer", scope: !60, file: !45, line: 38, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 100)
!69 = !DILocation(line: 38, column: 10, scope: !60)
!70 = !DILocation(line: 39, column: 12, scope: !60)
!71 = !DILocation(line: 39, column: 10, scope: !60)
!72 = !DILocalVariable(name: "dataLen", scope: !73, file: !45, line: 42, type: !74)
!73 = distinct !DILexicalBlock(scope: !60, file: !45, line: 40, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 42, column: 16, scope: !73)
!78 = !DILocation(line: 42, column: 33, scope: !73)
!79 = !DILocation(line: 42, column: 26, scope: !73)
!80 = !DILocalVariable(name: "pFile", scope: !73, file: !45, line: 43, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !83, line: 7, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !85, line: 49, size: 1728, elements: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !102, !104, !105, !106, !110, !111, !113, !117, !120, !122, !125, !128, !129, !130, !131, !132}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !84, file: !85, line: 51, baseType: !23, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !84, file: !85, line: 54, baseType: !42, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !84, file: !85, line: 55, baseType: !42, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !84, file: !85, line: 56, baseType: !42, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !84, file: !85, line: 57, baseType: !42, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !84, file: !85, line: 58, baseType: !42, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !84, file: !85, line: 59, baseType: !42, size: 64, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !84, file: !85, line: 60, baseType: !42, size: 64, offset: 448)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !84, file: !85, line: 61, baseType: !42, size: 64, offset: 512)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !84, file: !85, line: 64, baseType: !42, size: 64, offset: 576)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !84, file: !85, line: 65, baseType: !42, size: 64, offset: 640)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !84, file: !85, line: 66, baseType: !42, size: 64, offset: 704)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !84, file: !85, line: 68, baseType: !100, size: 64, offset: 768)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !85, line: 36, flags: DIFlagFwdDecl)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !84, file: !85, line: 70, baseType: !103, size: 64, offset: 832)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !84, file: !85, line: 72, baseType: !23, size: 32, offset: 896)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !84, file: !85, line: 73, baseType: !23, size: 32, offset: 928)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !84, file: !85, line: 74, baseType: !107, size: 64, offset: 960)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !108, line: 152, baseType: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!109 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !84, file: !85, line: 77, baseType: !24, size: 16, offset: 1024)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !84, file: !85, line: 78, baseType: !112, size: 8, offset: 1040)
!112 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !84, file: !85, line: 79, baseType: !114, size: 8, offset: 1048)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 1)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !84, file: !85, line: 81, baseType: !118, size: 64, offset: 1088)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !85, line: 43, baseType: null)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !84, file: !85, line: 89, baseType: !121, size: 64, offset: 1152)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !108, line: 153, baseType: !109)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !84, file: !85, line: 91, baseType: !123, size: 64, offset: 1216)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !85, line: 37, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !84, file: !85, line: 92, baseType: !126, size: 64, offset: 1280)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !85, line: 38, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !84, file: !85, line: 93, baseType: !103, size: 64, offset: 1344)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !84, file: !85, line: 94, baseType: !22, size: 64, offset: 1408)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !84, file: !85, line: 95, baseType: !74, size: 64, offset: 1472)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !84, file: !85, line: 96, baseType: !23, size: 32, offset: 1536)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !84, file: !85, line: 98, baseType: !133, size: 160, offset: 1568)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 20)
!136 = !DILocation(line: 43, column: 16, scope: !73)
!137 = !DILocation(line: 45, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !73, file: !45, line: 45, column: 13)
!139 = !DILocation(line: 45, column: 16, scope: !138)
!140 = !DILocation(line: 45, column: 25, scope: !138)
!141 = !DILocation(line: 45, column: 13, scope: !73)
!142 = !DILocation(line: 47, column: 21, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !45, line: 46, column: 9)
!144 = !DILocation(line: 47, column: 19, scope: !143)
!145 = !DILocation(line: 48, column: 17, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !45, line: 48, column: 17)
!147 = !DILocation(line: 48, column: 23, scope: !146)
!148 = !DILocation(line: 48, column: 17, scope: !143)
!149 = !DILocation(line: 51, column: 27, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !45, line: 51, column: 21)
!151 = distinct !DILexicalBlock(scope: !146, file: !45, line: 49, column: 13)
!152 = !DILocation(line: 51, column: 32, scope: !150)
!153 = !DILocation(line: 51, column: 31, scope: !150)
!154 = !DILocation(line: 51, column: 51, scope: !150)
!155 = !DILocation(line: 51, column: 50, scope: !150)
!156 = !DILocation(line: 51, column: 41, scope: !150)
!157 = !DILocation(line: 51, column: 61, scope: !150)
!158 = !DILocation(line: 51, column: 21, scope: !150)
!159 = !DILocation(line: 51, column: 68, scope: !150)
!160 = !DILocation(line: 51, column: 21, scope: !151)
!161 = !DILocation(line: 53, column: 21, scope: !162)
!162 = distinct !DILexicalBlock(scope: !150, file: !45, line: 52, column: 17)
!163 = !DILocation(line: 55, column: 21, scope: !162)
!164 = !DILocation(line: 55, column: 26, scope: !162)
!165 = !DILocation(line: 55, column: 35, scope: !162)
!166 = !DILocation(line: 56, column: 17, scope: !162)
!167 = !DILocation(line: 57, column: 24, scope: !151)
!168 = !DILocation(line: 57, column: 17, scope: !151)
!169 = !DILocation(line: 58, column: 13, scope: !151)
!170 = !DILocation(line: 59, column: 9, scope: !143)
!171 = !DILocation(line: 61, column: 70, scope: !60)
!172 = !DILocation(line: 61, column: 5, scope: !60)
!173 = !DILocation(line: 62, column: 1, scope: !60)
!174 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 70, type: !61, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!175 = !DILocalVariable(name: "data", scope: !174, file: !45, line: 72, type: !42)
!176 = !DILocation(line: 72, column: 12, scope: !174)
!177 = !DILocalVariable(name: "dataBuffer", scope: !174, file: !45, line: 73, type: !66)
!178 = !DILocation(line: 73, column: 10, scope: !174)
!179 = !DILocation(line: 74, column: 12, scope: !174)
!180 = !DILocation(line: 74, column: 10, scope: !174)
!181 = !DILocation(line: 76, column: 12, scope: !174)
!182 = !DILocation(line: 76, column: 5, scope: !174)
!183 = !DILocation(line: 77, column: 74, scope: !174)
!184 = !DILocation(line: 77, column: 5, scope: !174)
!185 = !DILocation(line: 78, column: 1, scope: !174)
!186 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 82, type: !61, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!187 = !DILocalVariable(name: "data", scope: !186, file: !45, line: 84, type: !42)
!188 = !DILocation(line: 84, column: 12, scope: !186)
!189 = !DILocalVariable(name: "dataBuffer", scope: !186, file: !45, line: 85, type: !66)
!190 = !DILocation(line: 85, column: 10, scope: !186)
!191 = !DILocation(line: 86, column: 12, scope: !186)
!192 = !DILocation(line: 86, column: 10, scope: !186)
!193 = !DILocalVariable(name: "dataLen", scope: !194, file: !45, line: 89, type: !74)
!194 = distinct !DILexicalBlock(scope: !186, file: !45, line: 87, column: 5)
!195 = !DILocation(line: 89, column: 16, scope: !194)
!196 = !DILocation(line: 89, column: 33, scope: !194)
!197 = !DILocation(line: 89, column: 26, scope: !194)
!198 = !DILocalVariable(name: "pFile", scope: !194, file: !45, line: 90, type: !81)
!199 = !DILocation(line: 90, column: 16, scope: !194)
!200 = !DILocation(line: 92, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !194, file: !45, line: 92, column: 13)
!202 = !DILocation(line: 92, column: 16, scope: !201)
!203 = !DILocation(line: 92, column: 25, scope: !201)
!204 = !DILocation(line: 92, column: 13, scope: !194)
!205 = !DILocation(line: 94, column: 21, scope: !206)
!206 = distinct !DILexicalBlock(scope: !201, file: !45, line: 93, column: 9)
!207 = !DILocation(line: 94, column: 19, scope: !206)
!208 = !DILocation(line: 95, column: 17, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !45, line: 95, column: 17)
!210 = !DILocation(line: 95, column: 23, scope: !209)
!211 = !DILocation(line: 95, column: 17, scope: !206)
!212 = !DILocation(line: 98, column: 27, scope: !213)
!213 = distinct !DILexicalBlock(scope: !214, file: !45, line: 98, column: 21)
!214 = distinct !DILexicalBlock(scope: !209, file: !45, line: 96, column: 13)
!215 = !DILocation(line: 98, column: 32, scope: !213)
!216 = !DILocation(line: 98, column: 31, scope: !213)
!217 = !DILocation(line: 98, column: 51, scope: !213)
!218 = !DILocation(line: 98, column: 50, scope: !213)
!219 = !DILocation(line: 98, column: 41, scope: !213)
!220 = !DILocation(line: 98, column: 61, scope: !213)
!221 = !DILocation(line: 98, column: 21, scope: !213)
!222 = !DILocation(line: 98, column: 68, scope: !213)
!223 = !DILocation(line: 98, column: 21, scope: !214)
!224 = !DILocation(line: 100, column: 21, scope: !225)
!225 = distinct !DILexicalBlock(scope: !213, file: !45, line: 99, column: 17)
!226 = !DILocation(line: 102, column: 21, scope: !225)
!227 = !DILocation(line: 102, column: 26, scope: !225)
!228 = !DILocation(line: 102, column: 35, scope: !225)
!229 = !DILocation(line: 103, column: 17, scope: !225)
!230 = !DILocation(line: 104, column: 24, scope: !214)
!231 = !DILocation(line: 104, column: 17, scope: !214)
!232 = !DILocation(line: 105, column: 13, scope: !214)
!233 = !DILocation(line: 106, column: 9, scope: !206)
!234 = !DILocation(line: 108, column: 74, scope: !186)
!235 = !DILocation(line: 108, column: 5, scope: !186)
!236 = !DILocation(line: 109, column: 1, scope: !186)
!237 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54_good", scope: !45, file: !45, line: 111, type: !61, scopeLine: 112, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!238 = !DILocation(line: 113, column: 5, scope: !237)
!239 = !DILocation(line: 114, column: 5, scope: !237)
!240 = !DILocation(line: 115, column: 1, scope: !237)
!241 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54b_badSink", scope: !49, file: !49, line: 35, type: !242, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !42}
!244 = !DILocalVariable(name: "data", arg: 1, scope: !241, file: !49, line: 35, type: !42)
!245 = !DILocation(line: 35, column: 78, scope: !241)
!246 = !DILocation(line: 37, column: 70, scope: !241)
!247 = !DILocation(line: 37, column: 5, scope: !241)
!248 = !DILocation(line: 38, column: 1, scope: !241)
!249 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54b_goodG2BSink", scope: !49, file: !49, line: 47, type: !242, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!250 = !DILocalVariable(name: "data", arg: 1, scope: !249, file: !49, line: 47, type: !42)
!251 = !DILocation(line: 47, column: 82, scope: !249)
!252 = !DILocation(line: 49, column: 74, scope: !249)
!253 = !DILocation(line: 49, column: 5, scope: !249)
!254 = !DILocation(line: 50, column: 1, scope: !249)
!255 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54b_goodB2GSink", scope: !49, file: !49, line: 55, type: !242, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!256 = !DILocalVariable(name: "data", arg: 1, scope: !255, file: !49, line: 55, type: !42)
!257 = !DILocation(line: 55, column: 82, scope: !255)
!258 = !DILocation(line: 57, column: 74, scope: !255)
!259 = !DILocation(line: 57, column: 5, scope: !255)
!260 = !DILocation(line: 58, column: 1, scope: !255)
!261 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54c_badSink", scope: !51, file: !51, line: 35, type: !242, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!262 = !DILocalVariable(name: "data", arg: 1, scope: !261, file: !51, line: 35, type: !42)
!263 = !DILocation(line: 35, column: 78, scope: !261)
!264 = !DILocation(line: 37, column: 70, scope: !261)
!265 = !DILocation(line: 37, column: 5, scope: !261)
!266 = !DILocation(line: 38, column: 1, scope: !261)
!267 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54c_goodG2BSink", scope: !51, file: !51, line: 47, type: !242, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!268 = !DILocalVariable(name: "data", arg: 1, scope: !267, file: !51, line: 47, type: !42)
!269 = !DILocation(line: 47, column: 82, scope: !267)
!270 = !DILocation(line: 49, column: 74, scope: !267)
!271 = !DILocation(line: 49, column: 5, scope: !267)
!272 = !DILocation(line: 50, column: 1, scope: !267)
!273 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54c_goodB2GSink", scope: !51, file: !51, line: 55, type: !242, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!274 = !DILocalVariable(name: "data", arg: 1, scope: !273, file: !51, line: 55, type: !42)
!275 = !DILocation(line: 55, column: 82, scope: !273)
!276 = !DILocation(line: 57, column: 74, scope: !273)
!277 = !DILocation(line: 57, column: 5, scope: !273)
!278 = !DILocation(line: 58, column: 1, scope: !273)
!279 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54d_badSink", scope: !53, file: !53, line: 35, type: !242, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!280 = !DILocalVariable(name: "data", arg: 1, scope: !279, file: !53, line: 35, type: !42)
!281 = !DILocation(line: 35, column: 78, scope: !279)
!282 = !DILocation(line: 37, column: 70, scope: !279)
!283 = !DILocation(line: 37, column: 5, scope: !279)
!284 = !DILocation(line: 38, column: 1, scope: !279)
!285 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54d_goodG2BSink", scope: !53, file: !53, line: 47, type: !242, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!286 = !DILocalVariable(name: "data", arg: 1, scope: !285, file: !53, line: 47, type: !42)
!287 = !DILocation(line: 47, column: 82, scope: !285)
!288 = !DILocation(line: 49, column: 74, scope: !285)
!289 = !DILocation(line: 49, column: 5, scope: !285)
!290 = !DILocation(line: 50, column: 1, scope: !285)
!291 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54d_goodB2GSink", scope: !53, file: !53, line: 55, type: !242, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!292 = !DILocalVariable(name: "data", arg: 1, scope: !291, file: !53, line: 55, type: !42)
!293 = !DILocation(line: 55, column: 82, scope: !291)
!294 = !DILocation(line: 57, column: 74, scope: !291)
!295 = !DILocation(line: 57, column: 5, scope: !291)
!296 = !DILocation(line: 58, column: 1, scope: !291)
!297 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54e_badSink", scope: !55, file: !55, line: 32, type: !242, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!298 = !DILocalVariable(name: "data", arg: 1, scope: !297, file: !55, line: 32, type: !42)
!299 = !DILocation(line: 32, column: 78, scope: !297)
!300 = !DILocation(line: 35, column: 13, scope: !297)
!301 = !DILocation(line: 35, column: 21, scope: !297)
!302 = !DILocation(line: 35, column: 5, scope: !297)
!303 = !DILocation(line: 36, column: 1, scope: !297)
!304 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54e_goodG2BSink", scope: !55, file: !55, line: 43, type: !242, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!305 = !DILocalVariable(name: "data", arg: 1, scope: !304, file: !55, line: 43, type: !42)
!306 = !DILocation(line: 43, column: 82, scope: !304)
!307 = !DILocation(line: 46, column: 13, scope: !304)
!308 = !DILocation(line: 46, column: 21, scope: !304)
!309 = !DILocation(line: 46, column: 5, scope: !304)
!310 = !DILocation(line: 47, column: 1, scope: !304)
!311 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_54e_goodB2GSink", scope: !55, file: !55, line: 50, type: !242, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !54, retainedNodes: !46)
!312 = !DILocalVariable(name: "data", arg: 1, scope: !311, file: !55, line: 50, type: !42)
!313 = !DILocation(line: 50, column: 82, scope: !311)
!314 = !DILocation(line: 53, column: 13, scope: !311)
!315 = !DILocation(line: 53, column: 29, scope: !311)
!316 = !DILocation(line: 53, column: 5, scope: !311)
!317 = !DILocation(line: 54, column: 1, scope: !311)
!318 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !242, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!319 = !DILocalVariable(name: "line", arg: 1, scope: !318, file: !3, line: 11, type: !42)
!320 = !DILocation(line: 11, column: 25, scope: !318)
!321 = !DILocation(line: 13, column: 1, scope: !318)
!322 = !DILocation(line: 14, column: 8, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !3, line: 14, column: 8)
!324 = !DILocation(line: 14, column: 13, scope: !323)
!325 = !DILocation(line: 14, column: 8, scope: !318)
!326 = !DILocation(line: 16, column: 24, scope: !327)
!327 = distinct !DILexicalBlock(scope: !323, file: !3, line: 15, column: 5)
!328 = !DILocation(line: 16, column: 9, scope: !327)
!329 = !DILocation(line: 17, column: 5, scope: !327)
!330 = !DILocation(line: 18, column: 5, scope: !318)
!331 = !DILocation(line: 19, column: 1, scope: !318)
!332 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !242, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!333 = !DILocalVariable(name: "line", arg: 1, scope: !332, file: !3, line: 20, type: !42)
!334 = !DILocation(line: 20, column: 29, scope: !332)
!335 = !DILocation(line: 22, column: 8, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !3, line: 22, column: 8)
!337 = !DILocation(line: 22, column: 13, scope: !336)
!338 = !DILocation(line: 22, column: 8, scope: !332)
!339 = !DILocation(line: 24, column: 24, scope: !340)
!340 = distinct !DILexicalBlock(scope: !336, file: !3, line: 23, column: 5)
!341 = !DILocation(line: 24, column: 9, scope: !340)
!342 = !DILocation(line: 25, column: 5, scope: !340)
!343 = !DILocation(line: 26, column: 1, scope: !332)
!344 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !345, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !23)
!349 = !DILocalVariable(name: "line", arg: 1, scope: !344, file: !3, line: 27, type: !347)
!350 = !DILocation(line: 27, column: 29, scope: !344)
!351 = !DILocation(line: 29, column: 8, scope: !352)
!352 = distinct !DILexicalBlock(scope: !344, file: !3, line: 29, column: 8)
!353 = !DILocation(line: 29, column: 13, scope: !352)
!354 = !DILocation(line: 29, column: 8, scope: !344)
!355 = !DILocation(line: 31, column: 27, scope: !356)
!356 = distinct !DILexicalBlock(scope: !352, file: !3, line: 30, column: 5)
!357 = !DILocation(line: 31, column: 9, scope: !356)
!358 = !DILocation(line: 32, column: 5, scope: !356)
!359 = !DILocation(line: 33, column: 1, scope: !344)
!360 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !361, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !23}
!363 = !DILocalVariable(name: "intNumber", arg: 1, scope: !360, file: !3, line: 35, type: !23)
!364 = !DILocation(line: 35, column: 24, scope: !360)
!365 = !DILocation(line: 37, column: 20, scope: !360)
!366 = !DILocation(line: 37, column: 5, scope: !360)
!367 = !DILocation(line: 38, column: 1, scope: !360)
!368 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !369, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DISubroutineType(types: !370)
!370 = !{null, !371}
!371 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!372 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !368, file: !3, line: 40, type: !371)
!373 = !DILocation(line: 40, column: 28, scope: !368)
!374 = !DILocation(line: 42, column: 21, scope: !368)
!375 = !DILocation(line: 42, column: 5, scope: !368)
!376 = !DILocation(line: 43, column: 1, scope: !368)
!377 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !378, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !380}
!380 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!381 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !377, file: !3, line: 45, type: !380)
!382 = !DILocation(line: 45, column: 28, scope: !377)
!383 = !DILocation(line: 47, column: 20, scope: !377)
!384 = !DILocation(line: 47, column: 5, scope: !377)
!385 = !DILocation(line: 48, column: 1, scope: !377)
!386 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !387, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !109}
!389 = !DILocalVariable(name: "longNumber", arg: 1, scope: !386, file: !3, line: 50, type: !109)
!390 = !DILocation(line: 50, column: 26, scope: !386)
!391 = !DILocation(line: 52, column: 21, scope: !386)
!392 = !DILocation(line: 52, column: 5, scope: !386)
!393 = !DILocation(line: 53, column: 1, scope: !386)
!394 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !395, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !398, line: 27, baseType: !399)
!398 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !108, line: 44, baseType: !109)
!400 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !394, file: !3, line: 55, type: !397)
!401 = !DILocation(line: 55, column: 33, scope: !394)
!402 = !DILocation(line: 57, column: 29, scope: !394)
!403 = !DILocation(line: 57, column: 5, scope: !394)
!404 = !DILocation(line: 58, column: 1, scope: !394)
!405 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !406, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!406 = !DISubroutineType(types: !407)
!407 = !{null, !74}
!408 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !405, file: !3, line: 60, type: !74)
!409 = !DILocation(line: 60, column: 29, scope: !405)
!410 = !DILocation(line: 62, column: 21, scope: !405)
!411 = !DILocation(line: 62, column: 5, scope: !405)
!412 = !DILocation(line: 63, column: 1, scope: !405)
!413 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !414, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !43}
!416 = !DILocalVariable(name: "charHex", arg: 1, scope: !413, file: !3, line: 65, type: !43)
!417 = !DILocation(line: 65, column: 29, scope: !413)
!418 = !DILocation(line: 67, column: 22, scope: !413)
!419 = !DILocation(line: 67, column: 5, scope: !413)
!420 = !DILocation(line: 68, column: 1, scope: !413)
!421 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !422, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !348}
!424 = !DILocalVariable(name: "wideChar", arg: 1, scope: !421, file: !3, line: 70, type: !348)
!425 = !DILocation(line: 70, column: 29, scope: !421)
!426 = !DILocalVariable(name: "s", scope: !421, file: !3, line: 74, type: !427)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 64, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 2)
!430 = !DILocation(line: 74, column: 13, scope: !421)
!431 = !DILocation(line: 75, column: 16, scope: !421)
!432 = !DILocation(line: 75, column: 9, scope: !421)
!433 = !DILocation(line: 75, column: 14, scope: !421)
!434 = !DILocation(line: 76, column: 9, scope: !421)
!435 = !DILocation(line: 76, column: 14, scope: !421)
!436 = !DILocation(line: 77, column: 21, scope: !421)
!437 = !DILocation(line: 77, column: 5, scope: !421)
!438 = !DILocation(line: 78, column: 1, scope: !421)
!439 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !440, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !7}
!442 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !439, file: !3, line: 80, type: !7)
!443 = !DILocation(line: 80, column: 33, scope: !439)
!444 = !DILocation(line: 82, column: 20, scope: !439)
!445 = !DILocation(line: 82, column: 5, scope: !439)
!446 = !DILocation(line: 83, column: 1, scope: !439)
!447 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !448, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !25}
!450 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !447, file: !3, line: 85, type: !25)
!451 = !DILocation(line: 85, column: 45, scope: !447)
!452 = !DILocation(line: 87, column: 22, scope: !447)
!453 = !DILocation(line: 87, column: 5, scope: !447)
!454 = !DILocation(line: 88, column: 1, scope: !447)
!455 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !456, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !458}
!458 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!459 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !455, file: !3, line: 90, type: !458)
!460 = !DILocation(line: 90, column: 29, scope: !455)
!461 = !DILocation(line: 92, column: 20, scope: !455)
!462 = !DILocation(line: 92, column: 5, scope: !455)
!463 = !DILocation(line: 93, column: 1, scope: !455)
!464 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !465, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!465 = !DISubroutineType(types: !466)
!466 = !{null, !467}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !469, line: 100, baseType: !470)
!469 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_994/source_code")
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !469, line: 96, size: 64, elements: !471)
!471 = !{!472, !473}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !470, file: !469, line: 98, baseType: !23, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !470, file: !469, line: 99, baseType: !23, size: 32, offset: 32)
!474 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !464, file: !3, line: 95, type: !467)
!475 = !DILocation(line: 95, column: 40, scope: !464)
!476 = !DILocation(line: 97, column: 26, scope: !464)
!477 = !DILocation(line: 97, column: 47, scope: !464)
!478 = !DILocation(line: 97, column: 55, scope: !464)
!479 = !DILocation(line: 97, column: 76, scope: !464)
!480 = !DILocation(line: 97, column: 5, scope: !464)
!481 = !DILocation(line: 98, column: 1, scope: !464)
!482 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !483, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !485, !74}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!486 = !DILocalVariable(name: "bytes", arg: 1, scope: !482, file: !3, line: 100, type: !485)
!487 = !DILocation(line: 100, column: 38, scope: !482)
!488 = !DILocalVariable(name: "numBytes", arg: 2, scope: !482, file: !3, line: 100, type: !74)
!489 = !DILocation(line: 100, column: 52, scope: !482)
!490 = !DILocalVariable(name: "i", scope: !482, file: !3, line: 102, type: !74)
!491 = !DILocation(line: 102, column: 12, scope: !482)
!492 = !DILocation(line: 103, column: 12, scope: !493)
!493 = distinct !DILexicalBlock(scope: !482, file: !3, line: 103, column: 5)
!494 = !DILocation(line: 103, column: 10, scope: !493)
!495 = !DILocation(line: 103, column: 17, scope: !496)
!496 = distinct !DILexicalBlock(scope: !493, file: !3, line: 103, column: 5)
!497 = !DILocation(line: 103, column: 21, scope: !496)
!498 = !DILocation(line: 103, column: 19, scope: !496)
!499 = !DILocation(line: 103, column: 5, scope: !493)
!500 = !DILocation(line: 105, column: 24, scope: !501)
!501 = distinct !DILexicalBlock(scope: !496, file: !3, line: 104, column: 5)
!502 = !DILocation(line: 105, column: 30, scope: !501)
!503 = !DILocation(line: 105, column: 9, scope: !501)
!504 = !DILocation(line: 106, column: 5, scope: !501)
!505 = !DILocation(line: 103, column: 31, scope: !496)
!506 = !DILocation(line: 103, column: 5, scope: !496)
!507 = distinct !{!507, !499, !508, !509}
!508 = !DILocation(line: 106, column: 5, scope: !493)
!509 = !{!"llvm.loop.mustprogress"}
!510 = !DILocation(line: 107, column: 5, scope: !482)
!511 = !DILocation(line: 108, column: 1, scope: !482)
!512 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !513, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!513 = !DISubroutineType(types: !514)
!514 = !{!74, !485, !74, !42}
!515 = !DILocalVariable(name: "bytes", arg: 1, scope: !512, file: !3, line: 113, type: !485)
!516 = !DILocation(line: 113, column: 39, scope: !512)
!517 = !DILocalVariable(name: "numBytes", arg: 2, scope: !512, file: !3, line: 113, type: !74)
!518 = !DILocation(line: 113, column: 53, scope: !512)
!519 = !DILocalVariable(name: "hex", arg: 3, scope: !512, file: !3, line: 113, type: !42)
!520 = !DILocation(line: 113, column: 71, scope: !512)
!521 = !DILocalVariable(name: "numWritten", scope: !512, file: !3, line: 115, type: !74)
!522 = !DILocation(line: 115, column: 12, scope: !512)
!523 = !DILocation(line: 121, column: 5, scope: !512)
!524 = !DILocation(line: 121, column: 12, scope: !512)
!525 = !DILocation(line: 121, column: 25, scope: !512)
!526 = !DILocation(line: 121, column: 23, scope: !512)
!527 = !DILocation(line: 121, column: 34, scope: !512)
!528 = !DILocation(line: 121, column: 37, scope: !512)
!529 = !DILocation(line: 121, column: 67, scope: !512)
!530 = !DILocation(line: 121, column: 70, scope: !512)
!531 = !DILocation(line: 0, scope: !512)
!532 = !DILocalVariable(name: "byte", scope: !533, file: !3, line: 123, type: !23)
!533 = distinct !DILexicalBlock(scope: !512, file: !3, line: 122, column: 5)
!534 = !DILocation(line: 123, column: 13, scope: !533)
!535 = !DILocation(line: 124, column: 17, scope: !533)
!536 = !DILocation(line: 124, column: 25, scope: !533)
!537 = !DILocation(line: 124, column: 23, scope: !533)
!538 = !DILocation(line: 124, column: 9, scope: !533)
!539 = !DILocation(line: 125, column: 45, scope: !533)
!540 = !DILocation(line: 125, column: 29, scope: !533)
!541 = !DILocation(line: 125, column: 9, scope: !533)
!542 = !DILocation(line: 125, column: 15, scope: !533)
!543 = !DILocation(line: 125, column: 27, scope: !533)
!544 = !DILocation(line: 126, column: 9, scope: !533)
!545 = distinct !{!545, !523, !546, !509}
!546 = !DILocation(line: 127, column: 5, scope: !512)
!547 = !DILocation(line: 129, column: 12, scope: !512)
!548 = !DILocation(line: 129, column: 5, scope: !512)
!549 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !550, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DISubroutineType(types: !551)
!551 = !{!74, !485, !74, !347}
!552 = !DILocalVariable(name: "bytes", arg: 1, scope: !549, file: !3, line: 135, type: !485)
!553 = !DILocation(line: 135, column: 41, scope: !549)
!554 = !DILocalVariable(name: "numBytes", arg: 2, scope: !549, file: !3, line: 135, type: !74)
!555 = !DILocation(line: 135, column: 55, scope: !549)
!556 = !DILocalVariable(name: "hex", arg: 3, scope: !549, file: !3, line: 135, type: !347)
!557 = !DILocation(line: 135, column: 76, scope: !549)
!558 = !DILocalVariable(name: "numWritten", scope: !549, file: !3, line: 137, type: !74)
!559 = !DILocation(line: 137, column: 12, scope: !549)
!560 = !DILocation(line: 143, column: 5, scope: !549)
!561 = !DILocation(line: 143, column: 12, scope: !549)
!562 = !DILocation(line: 143, column: 25, scope: !549)
!563 = !DILocation(line: 143, column: 23, scope: !549)
!564 = !DILocation(line: 143, column: 34, scope: !549)
!565 = !DILocation(line: 143, column: 47, scope: !549)
!566 = !DILocation(line: 143, column: 55, scope: !549)
!567 = !DILocation(line: 143, column: 53, scope: !549)
!568 = !DILocation(line: 143, column: 37, scope: !549)
!569 = !DILocation(line: 143, column: 68, scope: !549)
!570 = !DILocation(line: 143, column: 81, scope: !549)
!571 = !DILocation(line: 143, column: 89, scope: !549)
!572 = !DILocation(line: 143, column: 87, scope: !549)
!573 = !DILocation(line: 143, column: 100, scope: !549)
!574 = !DILocation(line: 143, column: 71, scope: !549)
!575 = !DILocation(line: 0, scope: !549)
!576 = !DILocalVariable(name: "byte", scope: !577, file: !3, line: 145, type: !23)
!577 = distinct !DILexicalBlock(scope: !549, file: !3, line: 144, column: 5)
!578 = !DILocation(line: 145, column: 13, scope: !577)
!579 = !DILocation(line: 146, column: 18, scope: !577)
!580 = !DILocation(line: 146, column: 26, scope: !577)
!581 = !DILocation(line: 146, column: 24, scope: !577)
!582 = !DILocation(line: 146, column: 9, scope: !577)
!583 = !DILocation(line: 147, column: 45, scope: !577)
!584 = !DILocation(line: 147, column: 29, scope: !577)
!585 = !DILocation(line: 147, column: 9, scope: !577)
!586 = !DILocation(line: 147, column: 15, scope: !577)
!587 = !DILocation(line: 147, column: 27, scope: !577)
!588 = !DILocation(line: 148, column: 9, scope: !577)
!589 = distinct !{!589, !560, !590, !509}
!590 = !DILocation(line: 149, column: 5, scope: !549)
!591 = !DILocation(line: 151, column: 12, scope: !549)
!592 = !DILocation(line: 151, column: 5, scope: !549)
!593 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !594, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DISubroutineType(types: !595)
!595 = !{!23}
!596 = !DILocation(line: 158, column: 5, scope: !593)
!597 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !594, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 163, column: 5, scope: !597)
!599 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !594, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 168, column: 13, scope: !599)
!601 = !DILocation(line: 168, column: 20, scope: !599)
!602 = !DILocation(line: 168, column: 5, scope: !599)
!603 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !61, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 187, column: 16, scope: !603)
!605 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !61, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 188, column: 16, scope: !605)
!607 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !61, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 189, column: 16, scope: !607)
!609 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !61, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 190, column: 16, scope: !609)
!611 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !61, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 191, column: 16, scope: !611)
!613 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !61, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 192, column: 16, scope: !613)
!615 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !61, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 193, column: 16, scope: !615)
!617 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !61, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 194, column: 16, scope: !617)
!619 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !61, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!620 = !DILocation(line: 195, column: 16, scope: !619)
!621 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !61, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!622 = !DILocation(line: 198, column: 15, scope: !621)
!623 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !61, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!624 = !DILocation(line: 199, column: 15, scope: !623)
!625 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !61, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!626 = !DILocation(line: 200, column: 15, scope: !625)
!627 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !61, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DILocation(line: 201, column: 15, scope: !627)
!629 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !61, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DILocation(line: 202, column: 15, scope: !629)
!631 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !61, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 203, column: 15, scope: !631)
!633 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !61, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 204, column: 15, scope: !633)
!635 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !61, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 205, column: 15, scope: !635)
!637 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !61, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 206, column: 15, scope: !637)
