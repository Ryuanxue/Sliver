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
@.str.19 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.22 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.24 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.25 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53_bad() #0 !dbg !58 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !63, metadata !DIExpression()), !dbg !67
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !67
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !68
  store i8* %arraydecay, i8** %data, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !70, metadata !DIExpression()), !dbg !75
  %1 = load i8*, i8** %data, align 8, !dbg !76
  %call = call i64 @strlen(i8* %1) #7, !dbg !77
  store i64 %call, i64* %dataLen, align 8, !dbg !75
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !78, metadata !DIExpression()), !dbg !134
  %2 = load i64, i64* %dataLen, align 8, !dbg !135
  %sub = sub i64 100, %2, !dbg !137
  %cmp = icmp ugt i64 %sub, 1, !dbg !138
  br i1 %cmp, label %if.then, label %if.end11, !dbg !139

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !140
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !142
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !143
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !145
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !146

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !147
  %5 = load i64, i64* %dataLen, align 8, !dbg !150
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !151
  %6 = load i64, i64* %dataLen, align 8, !dbg !152
  %sub4 = sub i64 100, %6, !dbg !153
  %conv = trunc i64 %sub4 to i32, !dbg !154
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !155
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !156
  %cmp6 = icmp eq i8* %call5, null, !dbg !157
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !158

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !159
  %8 = load i8*, i8** %data, align 8, !dbg !161
  %9 = load i64, i64* %dataLen, align 8, !dbg !162
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !161
  store i8 0, i8* %arrayidx, align 1, !dbg !163
  br label %if.end, !dbg !164

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !165
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !166
  br label %if.end10, !dbg !167

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !168

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !169
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53b_badSink(i8* %11), !dbg !170
  ret void, !dbg !171
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
define dso_local void @goodG2B() #0 !dbg !172 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !176
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !176
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !177
  store i8* %arraydecay, i8** %data, align 8, !dbg !178
  %1 = load i8*, i8** %data, align 8, !dbg !179
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !180
  %2 = load i8*, i8** %data, align 8, !dbg !181
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53b_goodG2BSink(i8* %2), !dbg !182
  ret void, !dbg !183
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !184 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !187, metadata !DIExpression()), !dbg !188
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !188
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !188
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !189
  store i8* %arraydecay, i8** %data, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !191, metadata !DIExpression()), !dbg !193
  %1 = load i8*, i8** %data, align 8, !dbg !194
  %call = call i64 @strlen(i8* %1) #7, !dbg !195
  store i64 %call, i64* %dataLen, align 8, !dbg !193
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !196, metadata !DIExpression()), !dbg !197
  %2 = load i64, i64* %dataLen, align 8, !dbg !198
  %sub = sub i64 100, %2, !dbg !200
  %cmp = icmp ugt i64 %sub, 1, !dbg !201
  br i1 %cmp, label %if.then, label %if.end11, !dbg !202

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !203
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !205
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !206
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !208
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !209

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !210
  %5 = load i64, i64* %dataLen, align 8, !dbg !213
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !214
  %6 = load i64, i64* %dataLen, align 8, !dbg !215
  %sub4 = sub i64 100, %6, !dbg !216
  %conv = trunc i64 %sub4 to i32, !dbg !217
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !218
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !219
  %cmp6 = icmp eq i8* %call5, null, !dbg !220
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !221

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !222
  %8 = load i8*, i8** %data, align 8, !dbg !224
  %9 = load i64, i64* %dataLen, align 8, !dbg !225
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !224
  store i8 0, i8* %arrayidx, align 1, !dbg !226
  br label %if.end, !dbg !227

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !228
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !229
  br label %if.end10, !dbg !230

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !231

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !232
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53b_goodB2GSink(i8* %11), !dbg !233
  ret void, !dbg !234
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53_good() #0 !dbg !235 {
entry:
  call void @goodG2B(), !dbg !236
  call void @goodB2G(), !dbg !237
  ret void, !dbg !238
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53b_badSink(i8* %data) #0 !dbg !239 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = load i8*, i8** %data.addr, align 8, !dbg !244
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53c_badSink(i8* %0), !dbg !245
  ret void, !dbg !246
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53b_goodG2BSink(i8* %data) #0 !dbg !247 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = load i8*, i8** %data.addr, align 8, !dbg !250
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53c_goodG2BSink(i8* %0), !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53b_goodB2GSink(i8* %data) #0 !dbg !253 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !254, metadata !DIExpression()), !dbg !255
  %0 = load i8*, i8** %data.addr, align 8, !dbg !256
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53c_goodB2GSink(i8* %0), !dbg !257
  ret void, !dbg !258
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53c_badSink(i8* %data) #0 !dbg !259 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !260, metadata !DIExpression()), !dbg !261
  %0 = load i8*, i8** %data.addr, align 8, !dbg !262
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53d_badSink(i8* %0), !dbg !263
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53c_goodG2BSink(i8* %data) #0 !dbg !265 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !266, metadata !DIExpression()), !dbg !267
  %0 = load i8*, i8** %data.addr, align 8, !dbg !268
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53d_goodG2BSink(i8* %0), !dbg !269
  ret void, !dbg !270
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53c_goodB2GSink(i8* %data) #0 !dbg !271 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !272, metadata !DIExpression()), !dbg !273
  %0 = load i8*, i8** %data.addr, align 8, !dbg !274
  call void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53d_goodB2GSink(i8* %0), !dbg !275
  ret void, !dbg !276
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53d_badSink(i8* %data) #0 !dbg !277 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !278, metadata !DIExpression()), !dbg !279
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !280
  %1 = load i8*, i8** %data.addr, align 8, !dbg !281
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !282
  ret void, !dbg !283
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53d_goodG2BSink(i8* %data) #0 !dbg !284 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !285, metadata !DIExpression()), !dbg !286
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !287
  %1 = load i8*, i8** %data.addr, align 8, !dbg !288
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !289
  ret void, !dbg !290
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_53d_goodB2GSink(i8* %data) #0 !dbg !291 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !292, metadata !DIExpression()), !dbg !293
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !294
  %1 = load i8*, i8** %data.addr, align 8, !dbg !295
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i8* %1), !dbg !296
  ret void, !dbg !297
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !298 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !299, metadata !DIExpression()), !dbg !300
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0)), !dbg !301
  %0 = load i8*, i8** %line.addr, align 8, !dbg !302
  %cmp = icmp ne i8* %0, null, !dbg !304
  br i1 %cmp, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !306
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.23, i64 0, i64 0), i8* %1), !dbg !308
  br label %if.end, !dbg !309

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.24, i64 0, i64 0)), !dbg !310
  ret void, !dbg !311
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !312 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !313, metadata !DIExpression()), !dbg !314
  %0 = load i8*, i8** %line.addr, align 8, !dbg !315
  %cmp = icmp ne i8* %0, null, !dbg !317
  br i1 %cmp, label %if.then, label %if.end, !dbg !318

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !319
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.23, i64 0, i64 0), i8* %1), !dbg !321
  br label %if.end, !dbg !322

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !323
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !324 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !329, metadata !DIExpression()), !dbg !330
  %0 = load i32*, i32** %line.addr, align 8, !dbg !331
  %cmp = icmp ne i32* %0, null, !dbg !333
  br i1 %cmp, label %if.then, label %if.end, !dbg !334

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !335
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.25, i64 0, i64 0), i32* %1), !dbg !337
  br label %if.end, !dbg !338

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !339
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !340 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !343, metadata !DIExpression()), !dbg !344
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !345
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !346
  ret void, !dbg !347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !348 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !352, metadata !DIExpression()), !dbg !353
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !354
  %conv = sext i16 %0 to i32, !dbg !354
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !355
  ret void, !dbg !356
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !357 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !361, metadata !DIExpression()), !dbg !362
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !363
  %conv = fpext float %0 to double, !dbg !363
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !364
  ret void, !dbg !365
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !366 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !371
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !372
  ret void, !dbg !373
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !374 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !382
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !383
  ret void, !dbg !384
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !385 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !388, metadata !DIExpression()), !dbg !389
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !390
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !391
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !393 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !398
  %conv = sext i8 %0 to i32, !dbg !398
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !399
  ret void, !dbg !400
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !401 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !404, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !406, metadata !DIExpression()), !dbg !410
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !411
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !412
  store i32 %0, i32* %arrayidx, align 4, !dbg !413
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !414
  store i32 0, i32* %arrayidx1, align 4, !dbg !415
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !416
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !417
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !419 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !427 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !432
  %conv = zext i8 %0 to i32, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !435 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !439, metadata !DIExpression()), !dbg !440
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !441
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !442
  ret void, !dbg !443
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !444 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !456
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !457
  %1 = load i32, i32* %intOne, align 4, !dbg !457
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !458
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !459
  %3 = load i32, i32* %intTwo, align 4, !dbg !459
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !460
  ret void, !dbg !461
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !462 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !466, metadata !DIExpression()), !dbg !467
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !468, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.declare(metadata i64* %i, metadata !470, metadata !DIExpression()), !dbg !471
  store i64 0, i64* %i, align 8, !dbg !472
  br label %for.cond, !dbg !474

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !475
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !477
  %cmp = icmp ult i64 %0, %1, !dbg !478
  br i1 %cmp, label %for.body, label %for.end, !dbg !479

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !480
  %3 = load i64, i64* %i, align 8, !dbg !482
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !480
  %4 = load i8, i8* %arrayidx, align 1, !dbg !480
  %conv = zext i8 %4 to i32, !dbg !480
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !483
  br label %for.inc, !dbg !484

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !485
  %inc = add i64 %5, 1, !dbg !485
  store i64 %inc, i64* %i, align 8, !dbg !485
  br label %for.cond, !dbg !486, !llvm.loop !487

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !490
  ret void, !dbg !491
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !492 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !495, metadata !DIExpression()), !dbg !496
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !497, metadata !DIExpression()), !dbg !498
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !499, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !501, metadata !DIExpression()), !dbg !502
  store i64 0, i64* %numWritten, align 8, !dbg !502
  br label %while.cond, !dbg !503

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !504
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !505
  %cmp = icmp ult i64 %0, %1, !dbg !506
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !507

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !508
  %2 = load i16*, i16** %call, align 8, !dbg !508
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !508
  %4 = load i64, i64* %numWritten, align 8, !dbg !508
  %mul = mul i64 2, %4, !dbg !508
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !508
  %5 = load i8, i8* %arrayidx, align 1, !dbg !508
  %conv = sext i8 %5 to i32, !dbg !508
  %idxprom = sext i32 %conv to i64, !dbg !508
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !508
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !508
  %conv2 = zext i16 %6 to i32, !dbg !508
  %and = and i32 %conv2, 4096, !dbg !508
  %tobool = icmp ne i32 %and, 0, !dbg !508
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !509

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !510
  %7 = load i16*, i16** %call3, align 8, !dbg !510
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !510
  %9 = load i64, i64* %numWritten, align 8, !dbg !510
  %mul4 = mul i64 2, %9, !dbg !510
  %add = add i64 %mul4, 1, !dbg !510
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !510
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !510
  %conv6 = sext i8 %10 to i32, !dbg !510
  %idxprom7 = sext i32 %conv6 to i64, !dbg !510
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !510
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !510
  %conv9 = zext i16 %11 to i32, !dbg !510
  %and10 = and i32 %conv9, 4096, !dbg !510
  %tobool11 = icmp ne i32 %and10, 0, !dbg !509
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !511
  br i1 %12, label %while.body, label %while.end, !dbg !503

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !512, metadata !DIExpression()), !dbg !514
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !515
  %14 = load i64, i64* %numWritten, align 8, !dbg !516
  %mul12 = mul i64 2, %14, !dbg !517
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !515
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !518
  %15 = load i32, i32* %byte, align 4, !dbg !519
  %conv15 = trunc i32 %15 to i8, !dbg !520
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !521
  %17 = load i64, i64* %numWritten, align 8, !dbg !522
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !521
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !523
  %18 = load i64, i64* %numWritten, align 8, !dbg !524
  %inc = add i64 %18, 1, !dbg !524
  store i64 %inc, i64* %numWritten, align 8, !dbg !524
  br label %while.cond, !dbg !503, !llvm.loop !525

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !527
  ret i64 %19, !dbg !528
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !529 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !532, metadata !DIExpression()), !dbg !533
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !534, metadata !DIExpression()), !dbg !535
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !536, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !538, metadata !DIExpression()), !dbg !539
  store i64 0, i64* %numWritten, align 8, !dbg !539
  br label %while.cond, !dbg !540

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !541
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !542
  %cmp = icmp ult i64 %0, %1, !dbg !543
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !544

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !545
  %3 = load i64, i64* %numWritten, align 8, !dbg !546
  %mul = mul i64 2, %3, !dbg !547
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !545
  %4 = load i32, i32* %arrayidx, align 4, !dbg !545
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !548
  %tobool = icmp ne i32 %call, 0, !dbg !548
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !549

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !550
  %6 = load i64, i64* %numWritten, align 8, !dbg !551
  %mul1 = mul i64 2, %6, !dbg !552
  %add = add i64 %mul1, 1, !dbg !553
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !550
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !550
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !554
  %tobool4 = icmp ne i32 %call3, 0, !dbg !549
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !555
  br i1 %8, label %while.body, label %while.end, !dbg !540

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !556, metadata !DIExpression()), !dbg !558
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !559
  %10 = load i64, i64* %numWritten, align 8, !dbg !560
  %mul5 = mul i64 2, %10, !dbg !561
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !559
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !562
  %11 = load i32, i32* %byte, align 4, !dbg !563
  %conv = trunc i32 %11 to i8, !dbg !564
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !565
  %13 = load i64, i64* %numWritten, align 8, !dbg !566
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !565
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !567
  %14 = load i64, i64* %numWritten, align 8, !dbg !568
  %inc = add i64 %14, 1, !dbg !568
  store i64 %inc, i64* %numWritten, align 8, !dbg !568
  br label %while.cond, !dbg !540, !llvm.loop !569

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !571
  ret i64 %15, !dbg !572
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !573 {
entry:
  ret i32 1, !dbg !576
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !577 {
entry:
  ret i32 0, !dbg !578
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !579 {
entry:
  %call = call i32 @rand() #8, !dbg !580
  %rem = srem i32 %call, 2, !dbg !581
  ret i32 %rem, !dbg !582
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !583 {
entry:
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !585 {
entry:
  ret void, !dbg !586
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !587 {
entry:
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !589 {
entry:
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !591 {
entry:
  ret void, !dbg !592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !593 {
entry:
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !595 {
entry:
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !597 {
entry:
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !599 {
entry:
  ret void, !dbg !600
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !601 {
entry:
  ret void, !dbg !602
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !603 {
entry:
  ret void, !dbg !604
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !605 {
entry:
  ret void, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !607 {
entry:
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !609 {
entry:
  ret void, !dbg !610
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !611 {
entry:
  ret void, !dbg !612
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !613 {
entry:
  ret void, !dbg !614
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !615 {
entry:
  ret void, !dbg !616
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !617 {
entry:
  ret void, !dbg !618
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

!llvm.dbg.cu = !{!44, !48, !50, !52, !2}
!llvm.ident = !{!54, !54, !54, !54, !54}
!llvm.module.flags = !{!55, !56, !57}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_993/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_993/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_993/source_code")
!50 = distinct !DICompileUnit(language: DW_LANG_C99, file: !51, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!51 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53c.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_993/source_code")
!52 = distinct !DICompileUnit(language: DW_LANG_C99, file: !53, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!53 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53d.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_993/source_code")
!54 = !{!"clang version 12.0.0"}
!55 = !{i32 7, !"Dwarf Version", i32 4}
!56 = !{i32 2, !"Debug Info Version", i32 3}
!57 = !{i32 1, !"wchar_size", i32 4}
!58 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53_bad", scope: !45, file: !45, line: 35, type: !59, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocalVariable(name: "data", scope: !58, file: !45, line: 37, type: !42)
!62 = !DILocation(line: 37, column: 12, scope: !58)
!63 = !DILocalVariable(name: "dataBuffer", scope: !58, file: !45, line: 38, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 100)
!67 = !DILocation(line: 38, column: 10, scope: !58)
!68 = !DILocation(line: 39, column: 12, scope: !58)
!69 = !DILocation(line: 39, column: 10, scope: !58)
!70 = !DILocalVariable(name: "dataLen", scope: !71, file: !45, line: 42, type: !72)
!71 = distinct !DILexicalBlock(scope: !58, file: !45, line: 40, column: 5)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !73, line: 46, baseType: !74)
!73 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!74 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!75 = !DILocation(line: 42, column: 16, scope: !71)
!76 = !DILocation(line: 42, column: 33, scope: !71)
!77 = !DILocation(line: 42, column: 26, scope: !71)
!78 = !DILocalVariable(name: "pFile", scope: !71, file: !45, line: 43, type: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !81, line: 7, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !83, line: 49, size: 1728, elements: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!84 = !{!85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !100, !102, !103, !104, !108, !109, !111, !115, !118, !120, !123, !126, !127, !128, !129, !130}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !82, file: !83, line: 51, baseType: !23, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !82, file: !83, line: 54, baseType: !42, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !82, file: !83, line: 55, baseType: !42, size: 64, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !82, file: !83, line: 56, baseType: !42, size: 64, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !82, file: !83, line: 57, baseType: !42, size: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !82, file: !83, line: 58, baseType: !42, size: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !82, file: !83, line: 59, baseType: !42, size: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !82, file: !83, line: 60, baseType: !42, size: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !82, file: !83, line: 61, baseType: !42, size: 64, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !82, file: !83, line: 64, baseType: !42, size: 64, offset: 576)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !82, file: !83, line: 65, baseType: !42, size: 64, offset: 640)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !82, file: !83, line: 66, baseType: !42, size: 64, offset: 704)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !82, file: !83, line: 68, baseType: !98, size: 64, offset: 768)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !83, line: 36, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !82, file: !83, line: 70, baseType: !101, size: 64, offset: 832)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !82, file: !83, line: 72, baseType: !23, size: 32, offset: 896)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !82, file: !83, line: 73, baseType: !23, size: 32, offset: 928)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !82, file: !83, line: 74, baseType: !105, size: 64, offset: 960)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !106, line: 152, baseType: !107)
!106 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!107 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !82, file: !83, line: 77, baseType: !24, size: 16, offset: 1024)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !82, file: !83, line: 78, baseType: !110, size: 8, offset: 1040)
!110 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !82, file: !83, line: 79, baseType: !112, size: 8, offset: 1048)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 1)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !82, file: !83, line: 81, baseType: !116, size: 64, offset: 1088)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !83, line: 43, baseType: null)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !82, file: !83, line: 89, baseType: !119, size: 64, offset: 1152)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !106, line: 153, baseType: !107)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !82, file: !83, line: 91, baseType: !121, size: 64, offset: 1216)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !83, line: 37, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !82, file: !83, line: 92, baseType: !124, size: 64, offset: 1280)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !83, line: 38, flags: DIFlagFwdDecl)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !82, file: !83, line: 93, baseType: !101, size: 64, offset: 1344)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !82, file: !83, line: 94, baseType: !22, size: 64, offset: 1408)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !82, file: !83, line: 95, baseType: !72, size: 64, offset: 1472)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !82, file: !83, line: 96, baseType: !23, size: 32, offset: 1536)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !82, file: !83, line: 98, baseType: !131, size: 160, offset: 1568)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 20)
!134 = !DILocation(line: 43, column: 16, scope: !71)
!135 = !DILocation(line: 45, column: 17, scope: !136)
!136 = distinct !DILexicalBlock(scope: !71, file: !45, line: 45, column: 13)
!137 = !DILocation(line: 45, column: 16, scope: !136)
!138 = !DILocation(line: 45, column: 25, scope: !136)
!139 = !DILocation(line: 45, column: 13, scope: !71)
!140 = !DILocation(line: 47, column: 21, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !45, line: 46, column: 9)
!142 = !DILocation(line: 47, column: 19, scope: !141)
!143 = !DILocation(line: 48, column: 17, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !45, line: 48, column: 17)
!145 = !DILocation(line: 48, column: 23, scope: !144)
!146 = !DILocation(line: 48, column: 17, scope: !141)
!147 = !DILocation(line: 51, column: 27, scope: !148)
!148 = distinct !DILexicalBlock(scope: !149, file: !45, line: 51, column: 21)
!149 = distinct !DILexicalBlock(scope: !144, file: !45, line: 49, column: 13)
!150 = !DILocation(line: 51, column: 32, scope: !148)
!151 = !DILocation(line: 51, column: 31, scope: !148)
!152 = !DILocation(line: 51, column: 51, scope: !148)
!153 = !DILocation(line: 51, column: 50, scope: !148)
!154 = !DILocation(line: 51, column: 41, scope: !148)
!155 = !DILocation(line: 51, column: 61, scope: !148)
!156 = !DILocation(line: 51, column: 21, scope: !148)
!157 = !DILocation(line: 51, column: 68, scope: !148)
!158 = !DILocation(line: 51, column: 21, scope: !149)
!159 = !DILocation(line: 53, column: 21, scope: !160)
!160 = distinct !DILexicalBlock(scope: !148, file: !45, line: 52, column: 17)
!161 = !DILocation(line: 55, column: 21, scope: !160)
!162 = !DILocation(line: 55, column: 26, scope: !160)
!163 = !DILocation(line: 55, column: 35, scope: !160)
!164 = !DILocation(line: 56, column: 17, scope: !160)
!165 = !DILocation(line: 57, column: 24, scope: !149)
!166 = !DILocation(line: 57, column: 17, scope: !149)
!167 = !DILocation(line: 58, column: 13, scope: !149)
!168 = !DILocation(line: 59, column: 9, scope: !141)
!169 = !DILocation(line: 61, column: 70, scope: !58)
!170 = !DILocation(line: 61, column: 5, scope: !58)
!171 = !DILocation(line: 62, column: 1, scope: !58)
!172 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 70, type: !59, scopeLine: 71, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!173 = !DILocalVariable(name: "data", scope: !172, file: !45, line: 72, type: !42)
!174 = !DILocation(line: 72, column: 12, scope: !172)
!175 = !DILocalVariable(name: "dataBuffer", scope: !172, file: !45, line: 73, type: !64)
!176 = !DILocation(line: 73, column: 10, scope: !172)
!177 = !DILocation(line: 74, column: 12, scope: !172)
!178 = !DILocation(line: 74, column: 10, scope: !172)
!179 = !DILocation(line: 76, column: 12, scope: !172)
!180 = !DILocation(line: 76, column: 5, scope: !172)
!181 = !DILocation(line: 77, column: 74, scope: !172)
!182 = !DILocation(line: 77, column: 5, scope: !172)
!183 = !DILocation(line: 78, column: 1, scope: !172)
!184 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 82, type: !59, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!185 = !DILocalVariable(name: "data", scope: !184, file: !45, line: 84, type: !42)
!186 = !DILocation(line: 84, column: 12, scope: !184)
!187 = !DILocalVariable(name: "dataBuffer", scope: !184, file: !45, line: 85, type: !64)
!188 = !DILocation(line: 85, column: 10, scope: !184)
!189 = !DILocation(line: 86, column: 12, scope: !184)
!190 = !DILocation(line: 86, column: 10, scope: !184)
!191 = !DILocalVariable(name: "dataLen", scope: !192, file: !45, line: 89, type: !72)
!192 = distinct !DILexicalBlock(scope: !184, file: !45, line: 87, column: 5)
!193 = !DILocation(line: 89, column: 16, scope: !192)
!194 = !DILocation(line: 89, column: 33, scope: !192)
!195 = !DILocation(line: 89, column: 26, scope: !192)
!196 = !DILocalVariable(name: "pFile", scope: !192, file: !45, line: 90, type: !79)
!197 = !DILocation(line: 90, column: 16, scope: !192)
!198 = !DILocation(line: 92, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !45, line: 92, column: 13)
!200 = !DILocation(line: 92, column: 16, scope: !199)
!201 = !DILocation(line: 92, column: 25, scope: !199)
!202 = !DILocation(line: 92, column: 13, scope: !192)
!203 = !DILocation(line: 94, column: 21, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !45, line: 93, column: 9)
!205 = !DILocation(line: 94, column: 19, scope: !204)
!206 = !DILocation(line: 95, column: 17, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !45, line: 95, column: 17)
!208 = !DILocation(line: 95, column: 23, scope: !207)
!209 = !DILocation(line: 95, column: 17, scope: !204)
!210 = !DILocation(line: 98, column: 27, scope: !211)
!211 = distinct !DILexicalBlock(scope: !212, file: !45, line: 98, column: 21)
!212 = distinct !DILexicalBlock(scope: !207, file: !45, line: 96, column: 13)
!213 = !DILocation(line: 98, column: 32, scope: !211)
!214 = !DILocation(line: 98, column: 31, scope: !211)
!215 = !DILocation(line: 98, column: 51, scope: !211)
!216 = !DILocation(line: 98, column: 50, scope: !211)
!217 = !DILocation(line: 98, column: 41, scope: !211)
!218 = !DILocation(line: 98, column: 61, scope: !211)
!219 = !DILocation(line: 98, column: 21, scope: !211)
!220 = !DILocation(line: 98, column: 68, scope: !211)
!221 = !DILocation(line: 98, column: 21, scope: !212)
!222 = !DILocation(line: 100, column: 21, scope: !223)
!223 = distinct !DILexicalBlock(scope: !211, file: !45, line: 99, column: 17)
!224 = !DILocation(line: 102, column: 21, scope: !223)
!225 = !DILocation(line: 102, column: 26, scope: !223)
!226 = !DILocation(line: 102, column: 35, scope: !223)
!227 = !DILocation(line: 103, column: 17, scope: !223)
!228 = !DILocation(line: 104, column: 24, scope: !212)
!229 = !DILocation(line: 104, column: 17, scope: !212)
!230 = !DILocation(line: 105, column: 13, scope: !212)
!231 = !DILocation(line: 106, column: 9, scope: !204)
!232 = !DILocation(line: 108, column: 74, scope: !184)
!233 = !DILocation(line: 108, column: 5, scope: !184)
!234 = !DILocation(line: 109, column: 1, scope: !184)
!235 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53_good", scope: !45, file: !45, line: 111, type: !59, scopeLine: 112, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!236 = !DILocation(line: 113, column: 5, scope: !235)
!237 = !DILocation(line: 114, column: 5, scope: !235)
!238 = !DILocation(line: 115, column: 1, scope: !235)
!239 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53b_badSink", scope: !49, file: !49, line: 35, type: !240, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !42}
!242 = !DILocalVariable(name: "data", arg: 1, scope: !239, file: !49, line: 35, type: !42)
!243 = !DILocation(line: 35, column: 78, scope: !239)
!244 = !DILocation(line: 37, column: 70, scope: !239)
!245 = !DILocation(line: 37, column: 5, scope: !239)
!246 = !DILocation(line: 38, column: 1, scope: !239)
!247 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53b_goodG2BSink", scope: !49, file: !49, line: 47, type: !240, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!248 = !DILocalVariable(name: "data", arg: 1, scope: !247, file: !49, line: 47, type: !42)
!249 = !DILocation(line: 47, column: 82, scope: !247)
!250 = !DILocation(line: 49, column: 74, scope: !247)
!251 = !DILocation(line: 49, column: 5, scope: !247)
!252 = !DILocation(line: 50, column: 1, scope: !247)
!253 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53b_goodB2GSink", scope: !49, file: !49, line: 55, type: !240, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!254 = !DILocalVariable(name: "data", arg: 1, scope: !253, file: !49, line: 55, type: !42)
!255 = !DILocation(line: 55, column: 82, scope: !253)
!256 = !DILocation(line: 57, column: 74, scope: !253)
!257 = !DILocation(line: 57, column: 5, scope: !253)
!258 = !DILocation(line: 58, column: 1, scope: !253)
!259 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53c_badSink", scope: !51, file: !51, line: 35, type: !240, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!260 = !DILocalVariable(name: "data", arg: 1, scope: !259, file: !51, line: 35, type: !42)
!261 = !DILocation(line: 35, column: 78, scope: !259)
!262 = !DILocation(line: 37, column: 70, scope: !259)
!263 = !DILocation(line: 37, column: 5, scope: !259)
!264 = !DILocation(line: 38, column: 1, scope: !259)
!265 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53c_goodG2BSink", scope: !51, file: !51, line: 47, type: !240, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!266 = !DILocalVariable(name: "data", arg: 1, scope: !265, file: !51, line: 47, type: !42)
!267 = !DILocation(line: 47, column: 82, scope: !265)
!268 = !DILocation(line: 49, column: 74, scope: !265)
!269 = !DILocation(line: 49, column: 5, scope: !265)
!270 = !DILocation(line: 50, column: 1, scope: !265)
!271 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53c_goodB2GSink", scope: !51, file: !51, line: 55, type: !240, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !50, retainedNodes: !46)
!272 = !DILocalVariable(name: "data", arg: 1, scope: !271, file: !51, line: 55, type: !42)
!273 = !DILocation(line: 55, column: 82, scope: !271)
!274 = !DILocation(line: 57, column: 74, scope: !271)
!275 = !DILocation(line: 57, column: 5, scope: !271)
!276 = !DILocation(line: 58, column: 1, scope: !271)
!277 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53d_badSink", scope: !53, file: !53, line: 32, type: !240, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!278 = !DILocalVariable(name: "data", arg: 1, scope: !277, file: !53, line: 32, type: !42)
!279 = !DILocation(line: 32, column: 78, scope: !277)
!280 = !DILocation(line: 35, column: 13, scope: !277)
!281 = !DILocation(line: 35, column: 21, scope: !277)
!282 = !DILocation(line: 35, column: 5, scope: !277)
!283 = !DILocation(line: 36, column: 1, scope: !277)
!284 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53d_goodG2BSink", scope: !53, file: !53, line: 43, type: !240, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!285 = !DILocalVariable(name: "data", arg: 1, scope: !284, file: !53, line: 43, type: !42)
!286 = !DILocation(line: 43, column: 82, scope: !284)
!287 = !DILocation(line: 46, column: 13, scope: !284)
!288 = !DILocation(line: 46, column: 21, scope: !284)
!289 = !DILocation(line: 46, column: 5, scope: !284)
!290 = !DILocation(line: 47, column: 1, scope: !284)
!291 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_53d_goodB2GSink", scope: !53, file: !53, line: 50, type: !240, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !52, retainedNodes: !46)
!292 = !DILocalVariable(name: "data", arg: 1, scope: !291, file: !53, line: 50, type: !42)
!293 = !DILocation(line: 50, column: 82, scope: !291)
!294 = !DILocation(line: 53, column: 13, scope: !291)
!295 = !DILocation(line: 53, column: 29, scope: !291)
!296 = !DILocation(line: 53, column: 5, scope: !291)
!297 = !DILocation(line: 54, column: 1, scope: !291)
!298 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !240, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!299 = !DILocalVariable(name: "line", arg: 1, scope: !298, file: !3, line: 11, type: !42)
!300 = !DILocation(line: 11, column: 25, scope: !298)
!301 = !DILocation(line: 13, column: 1, scope: !298)
!302 = !DILocation(line: 14, column: 8, scope: !303)
!303 = distinct !DILexicalBlock(scope: !298, file: !3, line: 14, column: 8)
!304 = !DILocation(line: 14, column: 13, scope: !303)
!305 = !DILocation(line: 14, column: 8, scope: !298)
!306 = !DILocation(line: 16, column: 24, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !3, line: 15, column: 5)
!308 = !DILocation(line: 16, column: 9, scope: !307)
!309 = !DILocation(line: 17, column: 5, scope: !307)
!310 = !DILocation(line: 18, column: 5, scope: !298)
!311 = !DILocation(line: 19, column: 1, scope: !298)
!312 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !240, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!313 = !DILocalVariable(name: "line", arg: 1, scope: !312, file: !3, line: 20, type: !42)
!314 = !DILocation(line: 20, column: 29, scope: !312)
!315 = !DILocation(line: 22, column: 8, scope: !316)
!316 = distinct !DILexicalBlock(scope: !312, file: !3, line: 22, column: 8)
!317 = !DILocation(line: 22, column: 13, scope: !316)
!318 = !DILocation(line: 22, column: 8, scope: !312)
!319 = !DILocation(line: 24, column: 24, scope: !320)
!320 = distinct !DILexicalBlock(scope: !316, file: !3, line: 23, column: 5)
!321 = !DILocation(line: 24, column: 9, scope: !320)
!322 = !DILocation(line: 25, column: 5, scope: !320)
!323 = !DILocation(line: 26, column: 1, scope: !312)
!324 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !325, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !327}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !73, line: 74, baseType: !23)
!329 = !DILocalVariable(name: "line", arg: 1, scope: !324, file: !3, line: 27, type: !327)
!330 = !DILocation(line: 27, column: 29, scope: !324)
!331 = !DILocation(line: 29, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !324, file: !3, line: 29, column: 8)
!333 = !DILocation(line: 29, column: 13, scope: !332)
!334 = !DILocation(line: 29, column: 8, scope: !324)
!335 = !DILocation(line: 31, column: 27, scope: !336)
!336 = distinct !DILexicalBlock(scope: !332, file: !3, line: 30, column: 5)
!337 = !DILocation(line: 31, column: 9, scope: !336)
!338 = !DILocation(line: 32, column: 5, scope: !336)
!339 = !DILocation(line: 33, column: 1, scope: !324)
!340 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !341, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !23}
!343 = !DILocalVariable(name: "intNumber", arg: 1, scope: !340, file: !3, line: 35, type: !23)
!344 = !DILocation(line: 35, column: 24, scope: !340)
!345 = !DILocation(line: 37, column: 20, scope: !340)
!346 = !DILocation(line: 37, column: 5, scope: !340)
!347 = !DILocation(line: 38, column: 1, scope: !340)
!348 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !349, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !351}
!351 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!352 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !348, file: !3, line: 40, type: !351)
!353 = !DILocation(line: 40, column: 28, scope: !348)
!354 = !DILocation(line: 42, column: 21, scope: !348)
!355 = !DILocation(line: 42, column: 5, scope: !348)
!356 = !DILocation(line: 43, column: 1, scope: !348)
!357 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !358, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !360}
!360 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!361 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !357, file: !3, line: 45, type: !360)
!362 = !DILocation(line: 45, column: 28, scope: !357)
!363 = !DILocation(line: 47, column: 20, scope: !357)
!364 = !DILocation(line: 47, column: 5, scope: !357)
!365 = !DILocation(line: 48, column: 1, scope: !357)
!366 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !367, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !107}
!369 = !DILocalVariable(name: "longNumber", arg: 1, scope: !366, file: !3, line: 50, type: !107)
!370 = !DILocation(line: 50, column: 26, scope: !366)
!371 = !DILocation(line: 52, column: 21, scope: !366)
!372 = !DILocation(line: 52, column: 5, scope: !366)
!373 = !DILocation(line: 53, column: 1, scope: !366)
!374 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !375, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377}
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !378, line: 27, baseType: !379)
!378 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !106, line: 44, baseType: !107)
!380 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !374, file: !3, line: 55, type: !377)
!381 = !DILocation(line: 55, column: 33, scope: !374)
!382 = !DILocation(line: 57, column: 29, scope: !374)
!383 = !DILocation(line: 57, column: 5, scope: !374)
!384 = !DILocation(line: 58, column: 1, scope: !374)
!385 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !386, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !72}
!388 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !385, file: !3, line: 60, type: !72)
!389 = !DILocation(line: 60, column: 29, scope: !385)
!390 = !DILocation(line: 62, column: 21, scope: !385)
!391 = !DILocation(line: 62, column: 5, scope: !385)
!392 = !DILocation(line: 63, column: 1, scope: !385)
!393 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !394, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !43}
!396 = !DILocalVariable(name: "charHex", arg: 1, scope: !393, file: !3, line: 65, type: !43)
!397 = !DILocation(line: 65, column: 29, scope: !393)
!398 = !DILocation(line: 67, column: 22, scope: !393)
!399 = !DILocation(line: 67, column: 5, scope: !393)
!400 = !DILocation(line: 68, column: 1, scope: !393)
!401 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !402, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !328}
!404 = !DILocalVariable(name: "wideChar", arg: 1, scope: !401, file: !3, line: 70, type: !328)
!405 = !DILocation(line: 70, column: 29, scope: !401)
!406 = !DILocalVariable(name: "s", scope: !401, file: !3, line: 74, type: !407)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 64, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 2)
!410 = !DILocation(line: 74, column: 13, scope: !401)
!411 = !DILocation(line: 75, column: 16, scope: !401)
!412 = !DILocation(line: 75, column: 9, scope: !401)
!413 = !DILocation(line: 75, column: 14, scope: !401)
!414 = !DILocation(line: 76, column: 9, scope: !401)
!415 = !DILocation(line: 76, column: 14, scope: !401)
!416 = !DILocation(line: 77, column: 21, scope: !401)
!417 = !DILocation(line: 77, column: 5, scope: !401)
!418 = !DILocation(line: 78, column: 1, scope: !401)
!419 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !420, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !7}
!422 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !419, file: !3, line: 80, type: !7)
!423 = !DILocation(line: 80, column: 33, scope: !419)
!424 = !DILocation(line: 82, column: 20, scope: !419)
!425 = !DILocation(line: 82, column: 5, scope: !419)
!426 = !DILocation(line: 83, column: 1, scope: !419)
!427 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !428, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !25}
!430 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !427, file: !3, line: 85, type: !25)
!431 = !DILocation(line: 85, column: 45, scope: !427)
!432 = !DILocation(line: 87, column: 22, scope: !427)
!433 = !DILocation(line: 87, column: 5, scope: !427)
!434 = !DILocation(line: 88, column: 1, scope: !427)
!435 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !436, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !438}
!438 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!439 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !435, file: !3, line: 90, type: !438)
!440 = !DILocation(line: 90, column: 29, scope: !435)
!441 = !DILocation(line: 92, column: 20, scope: !435)
!442 = !DILocation(line: 92, column: 5, scope: !435)
!443 = !DILocation(line: 93, column: 1, scope: !435)
!444 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !445, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !449, line: 100, baseType: !450)
!449 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_993/source_code")
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !449, line: 96, size: 64, elements: !451)
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !450, file: !449, line: 98, baseType: !23, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !450, file: !449, line: 99, baseType: !23, size: 32, offset: 32)
!454 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !444, file: !3, line: 95, type: !447)
!455 = !DILocation(line: 95, column: 40, scope: !444)
!456 = !DILocation(line: 97, column: 26, scope: !444)
!457 = !DILocation(line: 97, column: 47, scope: !444)
!458 = !DILocation(line: 97, column: 55, scope: !444)
!459 = !DILocation(line: 97, column: 76, scope: !444)
!460 = !DILocation(line: 97, column: 5, scope: !444)
!461 = !DILocation(line: 98, column: 1, scope: !444)
!462 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !463, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !465, !72}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!466 = !DILocalVariable(name: "bytes", arg: 1, scope: !462, file: !3, line: 100, type: !465)
!467 = !DILocation(line: 100, column: 38, scope: !462)
!468 = !DILocalVariable(name: "numBytes", arg: 2, scope: !462, file: !3, line: 100, type: !72)
!469 = !DILocation(line: 100, column: 52, scope: !462)
!470 = !DILocalVariable(name: "i", scope: !462, file: !3, line: 102, type: !72)
!471 = !DILocation(line: 102, column: 12, scope: !462)
!472 = !DILocation(line: 103, column: 12, scope: !473)
!473 = distinct !DILexicalBlock(scope: !462, file: !3, line: 103, column: 5)
!474 = !DILocation(line: 103, column: 10, scope: !473)
!475 = !DILocation(line: 103, column: 17, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !3, line: 103, column: 5)
!477 = !DILocation(line: 103, column: 21, scope: !476)
!478 = !DILocation(line: 103, column: 19, scope: !476)
!479 = !DILocation(line: 103, column: 5, scope: !473)
!480 = !DILocation(line: 105, column: 24, scope: !481)
!481 = distinct !DILexicalBlock(scope: !476, file: !3, line: 104, column: 5)
!482 = !DILocation(line: 105, column: 30, scope: !481)
!483 = !DILocation(line: 105, column: 9, scope: !481)
!484 = !DILocation(line: 106, column: 5, scope: !481)
!485 = !DILocation(line: 103, column: 31, scope: !476)
!486 = !DILocation(line: 103, column: 5, scope: !476)
!487 = distinct !{!487, !479, !488, !489}
!488 = !DILocation(line: 106, column: 5, scope: !473)
!489 = !{!"llvm.loop.mustprogress"}
!490 = !DILocation(line: 107, column: 5, scope: !462)
!491 = !DILocation(line: 108, column: 1, scope: !462)
!492 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !493, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!493 = !DISubroutineType(types: !494)
!494 = !{!72, !465, !72, !42}
!495 = !DILocalVariable(name: "bytes", arg: 1, scope: !492, file: !3, line: 113, type: !465)
!496 = !DILocation(line: 113, column: 39, scope: !492)
!497 = !DILocalVariable(name: "numBytes", arg: 2, scope: !492, file: !3, line: 113, type: !72)
!498 = !DILocation(line: 113, column: 53, scope: !492)
!499 = !DILocalVariable(name: "hex", arg: 3, scope: !492, file: !3, line: 113, type: !42)
!500 = !DILocation(line: 113, column: 71, scope: !492)
!501 = !DILocalVariable(name: "numWritten", scope: !492, file: !3, line: 115, type: !72)
!502 = !DILocation(line: 115, column: 12, scope: !492)
!503 = !DILocation(line: 121, column: 5, scope: !492)
!504 = !DILocation(line: 121, column: 12, scope: !492)
!505 = !DILocation(line: 121, column: 25, scope: !492)
!506 = !DILocation(line: 121, column: 23, scope: !492)
!507 = !DILocation(line: 121, column: 34, scope: !492)
!508 = !DILocation(line: 121, column: 37, scope: !492)
!509 = !DILocation(line: 121, column: 67, scope: !492)
!510 = !DILocation(line: 121, column: 70, scope: !492)
!511 = !DILocation(line: 0, scope: !492)
!512 = !DILocalVariable(name: "byte", scope: !513, file: !3, line: 123, type: !23)
!513 = distinct !DILexicalBlock(scope: !492, file: !3, line: 122, column: 5)
!514 = !DILocation(line: 123, column: 13, scope: !513)
!515 = !DILocation(line: 124, column: 17, scope: !513)
!516 = !DILocation(line: 124, column: 25, scope: !513)
!517 = !DILocation(line: 124, column: 23, scope: !513)
!518 = !DILocation(line: 124, column: 9, scope: !513)
!519 = !DILocation(line: 125, column: 45, scope: !513)
!520 = !DILocation(line: 125, column: 29, scope: !513)
!521 = !DILocation(line: 125, column: 9, scope: !513)
!522 = !DILocation(line: 125, column: 15, scope: !513)
!523 = !DILocation(line: 125, column: 27, scope: !513)
!524 = !DILocation(line: 126, column: 9, scope: !513)
!525 = distinct !{!525, !503, !526, !489}
!526 = !DILocation(line: 127, column: 5, scope: !492)
!527 = !DILocation(line: 129, column: 12, scope: !492)
!528 = !DILocation(line: 129, column: 5, scope: !492)
!529 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !530, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DISubroutineType(types: !531)
!531 = !{!72, !465, !72, !327}
!532 = !DILocalVariable(name: "bytes", arg: 1, scope: !529, file: !3, line: 135, type: !465)
!533 = !DILocation(line: 135, column: 41, scope: !529)
!534 = !DILocalVariable(name: "numBytes", arg: 2, scope: !529, file: !3, line: 135, type: !72)
!535 = !DILocation(line: 135, column: 55, scope: !529)
!536 = !DILocalVariable(name: "hex", arg: 3, scope: !529, file: !3, line: 135, type: !327)
!537 = !DILocation(line: 135, column: 76, scope: !529)
!538 = !DILocalVariable(name: "numWritten", scope: !529, file: !3, line: 137, type: !72)
!539 = !DILocation(line: 137, column: 12, scope: !529)
!540 = !DILocation(line: 143, column: 5, scope: !529)
!541 = !DILocation(line: 143, column: 12, scope: !529)
!542 = !DILocation(line: 143, column: 25, scope: !529)
!543 = !DILocation(line: 143, column: 23, scope: !529)
!544 = !DILocation(line: 143, column: 34, scope: !529)
!545 = !DILocation(line: 143, column: 47, scope: !529)
!546 = !DILocation(line: 143, column: 55, scope: !529)
!547 = !DILocation(line: 143, column: 53, scope: !529)
!548 = !DILocation(line: 143, column: 37, scope: !529)
!549 = !DILocation(line: 143, column: 68, scope: !529)
!550 = !DILocation(line: 143, column: 81, scope: !529)
!551 = !DILocation(line: 143, column: 89, scope: !529)
!552 = !DILocation(line: 143, column: 87, scope: !529)
!553 = !DILocation(line: 143, column: 100, scope: !529)
!554 = !DILocation(line: 143, column: 71, scope: !529)
!555 = !DILocation(line: 0, scope: !529)
!556 = !DILocalVariable(name: "byte", scope: !557, file: !3, line: 145, type: !23)
!557 = distinct !DILexicalBlock(scope: !529, file: !3, line: 144, column: 5)
!558 = !DILocation(line: 145, column: 13, scope: !557)
!559 = !DILocation(line: 146, column: 18, scope: !557)
!560 = !DILocation(line: 146, column: 26, scope: !557)
!561 = !DILocation(line: 146, column: 24, scope: !557)
!562 = !DILocation(line: 146, column: 9, scope: !557)
!563 = !DILocation(line: 147, column: 45, scope: !557)
!564 = !DILocation(line: 147, column: 29, scope: !557)
!565 = !DILocation(line: 147, column: 9, scope: !557)
!566 = !DILocation(line: 147, column: 15, scope: !557)
!567 = !DILocation(line: 147, column: 27, scope: !557)
!568 = !DILocation(line: 148, column: 9, scope: !557)
!569 = distinct !{!569, !540, !570, !489}
!570 = !DILocation(line: 149, column: 5, scope: !529)
!571 = !DILocation(line: 151, column: 12, scope: !529)
!572 = !DILocation(line: 151, column: 5, scope: !529)
!573 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !574, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DISubroutineType(types: !575)
!575 = !{!23}
!576 = !DILocation(line: 158, column: 5, scope: !573)
!577 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !574, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!578 = !DILocation(line: 163, column: 5, scope: !577)
!579 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !574, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!580 = !DILocation(line: 168, column: 13, scope: !579)
!581 = !DILocation(line: 168, column: 20, scope: !579)
!582 = !DILocation(line: 168, column: 5, scope: !579)
!583 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !59, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DILocation(line: 187, column: 16, scope: !583)
!585 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !59, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DILocation(line: 188, column: 16, scope: !585)
!587 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !59, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!588 = !DILocation(line: 189, column: 16, scope: !587)
!589 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DILocation(line: 190, column: 16, scope: !589)
!591 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !59, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DILocation(line: 191, column: 16, scope: !591)
!593 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !59, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!594 = !DILocation(line: 192, column: 16, scope: !593)
!595 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !59, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DILocation(line: 193, column: 16, scope: !595)
!597 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !59, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DILocation(line: 194, column: 16, scope: !597)
!599 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !59, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DILocation(line: 195, column: 16, scope: !599)
!601 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !59, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!602 = !DILocation(line: 198, column: 15, scope: !601)
!603 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !59, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!604 = !DILocation(line: 199, column: 15, scope: !603)
!605 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !59, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!606 = !DILocation(line: 200, column: 15, scope: !605)
!607 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !59, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!608 = !DILocation(line: 201, column: 15, scope: !607)
!609 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !59, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DILocation(line: 202, column: 15, scope: !609)
!611 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !59, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DILocation(line: 203, column: 15, scope: !611)
!613 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !59, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!614 = !DILocation(line: 204, column: 15, scope: !613)
!615 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !59, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!616 = !DILocation(line: 205, column: 15, scope: !615)
!617 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !59, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!618 = !DILocation(line: 206, column: 15, scope: !617)
