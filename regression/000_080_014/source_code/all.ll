; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@staticTrue = dso_local global i32 1, align 4, !dbg !0
@staticFalse = dso_local global i32 0, align 4, !dbg !9
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !11
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !36
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !38
@globalTrue = dso_local global i32 1, align 4, !dbg !40
@globalFalse = dso_local global i32 0, align 4, !dbg !42
@globalFive = dso_local global i32 5, align 4, !dbg !44
@globalArgc = dso_local global i32 0, align 4, !dbg !46
@globalArgv = dso_local global i8** null, align 8, !dbg !48
@.str.6 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.8 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.9 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.10 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.11 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6.12 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_05_bad() #0 !dbg !57 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !62, metadata !DIExpression()), !dbg !66
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !66
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !66
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !67
  store i8* %arraydecay, i8** %data, align 8, !dbg !68
  %1 = load i32, i32* @staticTrue, align 4, !dbg !69
  %tobool = icmp ne i32 %1, 0, !dbg !69
  br i1 %tobool, label %if.then, label %if.end13, !dbg !71

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !72, metadata !DIExpression()), !dbg !78
  %2 = load i8*, i8** %data, align 8, !dbg !79
  %call = call i64 @strlen(i8* %2) #7, !dbg !80
  store i64 %call, i64* %dataLen, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !81, metadata !DIExpression()), !dbg !137
  %3 = load i64, i64* %dataLen, align 8, !dbg !138
  %sub = sub i64 100, %3, !dbg !140
  %cmp = icmp ugt i64 %sub, 1, !dbg !141
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !142

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !143
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !145
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !146
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !148
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !149

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !150
  %6 = load i64, i64* %dataLen, align 8, !dbg !153
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !154
  %7 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub5 = sub i64 100, %7, !dbg !156
  %conv = trunc i64 %sub5 to i32, !dbg !157
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !158
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !159
  %cmp7 = icmp eq i8* %call6, null, !dbg !160
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !161

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !162
  %9 = load i8*, i8** %data, align 8, !dbg !164
  %10 = load i64, i64* %dataLen, align 8, !dbg !165
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !164
  store i8 0, i8* %arrayidx, align 1, !dbg !166
  br label %if.end, !dbg !167

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !168
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !169
  br label %if.end11, !dbg !170

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !171

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !172

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @staticTrue, align 4, !dbg !173
  %tobool14 = icmp ne i32 %12, 0, !dbg !173
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !175

if.then15:                                        ; preds = %if.end13
  %13 = load i8*, i8** %data, align 8, !dbg !176
  %call16 = call i32 (i8*, ...) @printf(i8* %13), !dbg !178
  br label %if.end17, !dbg !179

if.end17:                                         ; preds = %if.then15, %if.end13
  ret void, !dbg !180
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
define dso_local void @goodB2G1() #0 !dbg !181 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !184, metadata !DIExpression()), !dbg !185
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !185
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !185
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !186
  store i8* %arraydecay, i8** %data, align 8, !dbg !187
  %1 = load i32, i32* @staticTrue, align 4, !dbg !188
  %tobool = icmp ne i32 %1, 0, !dbg !188
  br i1 %tobool, label %if.then, label %if.end13, !dbg !190

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !191, metadata !DIExpression()), !dbg !194
  %2 = load i8*, i8** %data, align 8, !dbg !195
  %call = call i64 @strlen(i8* %2) #7, !dbg !196
  store i64 %call, i64* %dataLen, align 8, !dbg !194
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !197, metadata !DIExpression()), !dbg !198
  %3 = load i64, i64* %dataLen, align 8, !dbg !199
  %sub = sub i64 100, %3, !dbg !201
  %cmp = icmp ugt i64 %sub, 1, !dbg !202
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !203

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !204
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !206
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !207
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !209
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !210

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !211
  %6 = load i64, i64* %dataLen, align 8, !dbg !214
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !215
  %7 = load i64, i64* %dataLen, align 8, !dbg !216
  %sub5 = sub i64 100, %7, !dbg !217
  %conv = trunc i64 %sub5 to i32, !dbg !218
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !219
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !220
  %cmp7 = icmp eq i8* %call6, null, !dbg !221
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !222

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !223
  %9 = load i8*, i8** %data, align 8, !dbg !225
  %10 = load i64, i64* %dataLen, align 8, !dbg !226
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !225
  store i8 0, i8* %arrayidx, align 1, !dbg !227
  br label %if.end, !dbg !228

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !229
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !230
  br label %if.end11, !dbg !231

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !232

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !233

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @staticFalse, align 4, !dbg !234
  %tobool14 = icmp ne i32 %12, 0, !dbg !234
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !236

if.then15:                                        ; preds = %if.end13
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !237
  br label %if.end17, !dbg !239

if.else:                                          ; preds = %if.end13
  %13 = load i8*, i8** %data, align 8, !dbg !240
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !242
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  ret void, !dbg !243
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !244 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !245, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !247, metadata !DIExpression()), !dbg !248
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !248
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !248
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !249
  store i8* %arraydecay, i8** %data, align 8, !dbg !250
  %1 = load i32, i32* @staticTrue, align 4, !dbg !251
  %tobool = icmp ne i32 %1, 0, !dbg !251
  br i1 %tobool, label %if.then, label %if.end13, !dbg !253

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !254, metadata !DIExpression()), !dbg !257
  %2 = load i8*, i8** %data, align 8, !dbg !258
  %call = call i64 @strlen(i8* %2) #7, !dbg !259
  store i64 %call, i64* %dataLen, align 8, !dbg !257
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !260, metadata !DIExpression()), !dbg !261
  %3 = load i64, i64* %dataLen, align 8, !dbg !262
  %sub = sub i64 100, %3, !dbg !264
  %cmp = icmp ugt i64 %sub, 1, !dbg !265
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !266

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !267
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !269
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !270
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !272
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !273

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !274
  %6 = load i64, i64* %dataLen, align 8, !dbg !277
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !278
  %7 = load i64, i64* %dataLen, align 8, !dbg !279
  %sub5 = sub i64 100, %7, !dbg !280
  %conv = trunc i64 %sub5 to i32, !dbg !281
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !282
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !283
  %cmp7 = icmp eq i8* %call6, null, !dbg !284
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !285

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !286
  %9 = load i8*, i8** %data, align 8, !dbg !288
  %10 = load i64, i64* %dataLen, align 8, !dbg !289
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !288
  store i8 0, i8* %arrayidx, align 1, !dbg !290
  br label %if.end, !dbg !291

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !292
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !293
  br label %if.end11, !dbg !294

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !295

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !296

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @staticTrue, align 4, !dbg !297
  %tobool14 = icmp ne i32 %12, 0, !dbg !297
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !299

if.then15:                                        ; preds = %if.end13
  %13 = load i8*, i8** %data, align 8, !dbg !300
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !302
  br label %if.end17, !dbg !303

if.end17:                                         ; preds = %if.then15, %if.end13
  ret void, !dbg !304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !305 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !308, metadata !DIExpression()), !dbg !309
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !309
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !309
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !310
  store i8* %arraydecay, i8** %data, align 8, !dbg !311
  %1 = load i32, i32* @staticFalse, align 4, !dbg !312
  %tobool = icmp ne i32 %1, 0, !dbg !312
  br i1 %tobool, label %if.then, label %if.else, !dbg !314

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !315
  br label %if.end, !dbg !317

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !318
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !320
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @staticTrue, align 4, !dbg !321
  %tobool1 = icmp ne i32 %3, 0, !dbg !321
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !323

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !324
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !326
  br label %if.end4, !dbg !327

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !328
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !329 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !333
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !333
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !334
  store i8* %arraydecay, i8** %data, align 8, !dbg !335
  %1 = load i32, i32* @staticTrue, align 4, !dbg !336
  %tobool = icmp ne i32 %1, 0, !dbg !336
  br i1 %tobool, label %if.then, label %if.end, !dbg !338

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !339
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !341
  br label %if.end, !dbg !342

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @staticTrue, align 4, !dbg !343
  %tobool1 = icmp ne i32 %3, 0, !dbg !343
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !345

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !346
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !348
  br label %if.end4, !dbg !349

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_05_good() #0 !dbg !351 {
entry:
  call void @goodB2G1(), !dbg !352
  call void @goodB2G2(), !dbg !353
  call void @goodG2B1(), !dbg !354
  call void @goodG2B2(), !dbg !355
  ret void, !dbg !356
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !357 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !360, metadata !DIExpression()), !dbg !361
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !362
  %0 = load i8*, i8** %line.addr, align 8, !dbg !363
  %cmp = icmp ne i8* %0, null, !dbg !365
  br i1 %cmp, label %if.then, label %if.end, !dbg !366

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !367
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !369
  br label %if.end, !dbg !370

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.8, i64 0, i64 0)), !dbg !371
  ret void, !dbg !372
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !373 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load i8*, i8** %line.addr, align 8, !dbg !376
  %cmp = icmp ne i8* %0, null, !dbg !378
  br i1 %cmp, label %if.then, label %if.end, !dbg !379

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !380
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !382
  br label %if.end, !dbg !383

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !384
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !385 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = load i32*, i32** %line.addr, align 8, !dbg !392
  %cmp = icmp ne i32* %0, null, !dbg !394
  br i1 %cmp, label %if.then, label %if.end, !dbg !395

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !396
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !398
  br label %if.end, !dbg !399

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !400
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !401 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !404, metadata !DIExpression()), !dbg !405
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !406
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !407
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !409 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !413, metadata !DIExpression()), !dbg !414
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !415
  %conv = sext i16 %0 to i32, !dbg !415
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.11, i64 0, i64 0), i32 %conv), !dbg !416
  ret void, !dbg !417
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !418 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !424
  %conv = fpext float %0 to double, !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.12, i64 0, i64 0), double %conv), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !427 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !435 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !441, metadata !DIExpression()), !dbg !442
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !443
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !444
  ret void, !dbg !445
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !446 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !449, metadata !DIExpression()), !dbg !450
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !451
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !452
  ret void, !dbg !453
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !454 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !457, metadata !DIExpression()), !dbg !458
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !459
  %conv = sext i8 %0 to i32, !dbg !459
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !460
  ret void, !dbg !461
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !462 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !465, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !467, metadata !DIExpression()), !dbg !471
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !472
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !473
  store i32 %0, i32* %arrayidx, align 4, !dbg !474
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !475
  store i32 0, i32* %arrayidx1, align 4, !dbg !476
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !477
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !478
  ret void, !dbg !479
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !480 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !483, metadata !DIExpression()), !dbg !484
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !485
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !486
  ret void, !dbg !487
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !488 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !491, metadata !DIExpression()), !dbg !492
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !493
  %conv = zext i8 %0 to i32, !dbg !493
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !494
  ret void, !dbg !495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !496 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !500, metadata !DIExpression()), !dbg !501
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !502
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !503
  ret void, !dbg !504
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !505 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !515, metadata !DIExpression()), !dbg !516
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !517
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !518
  %1 = load i32, i32* %intOne, align 4, !dbg !518
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !519
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !520
  %3 = load i32, i32* %intTwo, align 4, !dbg !520
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !521
  ret void, !dbg !522
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !523 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !527, metadata !DIExpression()), !dbg !528
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !529, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.declare(metadata i64* %i, metadata !531, metadata !DIExpression()), !dbg !532
  store i64 0, i64* %i, align 8, !dbg !533
  br label %for.cond, !dbg !535

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !536
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !538
  %cmp = icmp ult i64 %0, %1, !dbg !539
  br i1 %cmp, label %for.body, label %for.end, !dbg !540

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !541
  %3 = load i64, i64* %i, align 8, !dbg !543
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !541
  %4 = load i8, i8* %arrayidx, align 1, !dbg !541
  %conv = zext i8 %4 to i32, !dbg !541
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !544
  br label %for.inc, !dbg !545

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !546
  %inc = add i64 %5, 1, !dbg !546
  store i64 %inc, i64* %i, align 8, !dbg !546
  br label %for.cond, !dbg !547, !llvm.loop !548

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !551
  ret void, !dbg !552
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !553 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !556, metadata !DIExpression()), !dbg !557
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !558, metadata !DIExpression()), !dbg !559
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !562, metadata !DIExpression()), !dbg !563
  store i64 0, i64* %numWritten, align 8, !dbg !563
  br label %while.cond, !dbg !564

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !565
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !566
  %cmp = icmp ult i64 %0, %1, !dbg !567
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !568

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !569
  %2 = load i16*, i16** %call, align 8, !dbg !569
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !569
  %4 = load i64, i64* %numWritten, align 8, !dbg !569
  %mul = mul i64 2, %4, !dbg !569
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !569
  %5 = load i8, i8* %arrayidx, align 1, !dbg !569
  %conv = sext i8 %5 to i32, !dbg !569
  %idxprom = sext i32 %conv to i64, !dbg !569
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !569
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !569
  %conv2 = zext i16 %6 to i32, !dbg !569
  %and = and i32 %conv2, 4096, !dbg !569
  %tobool = icmp ne i32 %and, 0, !dbg !569
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !570

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !571
  %7 = load i16*, i16** %call3, align 8, !dbg !571
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !571
  %9 = load i64, i64* %numWritten, align 8, !dbg !571
  %mul4 = mul i64 2, %9, !dbg !571
  %add = add i64 %mul4, 1, !dbg !571
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !571
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !571
  %conv6 = sext i8 %10 to i32, !dbg !571
  %idxprom7 = sext i32 %conv6 to i64, !dbg !571
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !571
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !571
  %conv9 = zext i16 %11 to i32, !dbg !571
  %and10 = and i32 %conv9, 4096, !dbg !571
  %tobool11 = icmp ne i32 %and10, 0, !dbg !570
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !572
  br i1 %12, label %while.body, label %while.end, !dbg !564

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !573, metadata !DIExpression()), !dbg !575
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !576
  %14 = load i64, i64* %numWritten, align 8, !dbg !577
  %mul12 = mul i64 2, %14, !dbg !578
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !576
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !579
  %15 = load i32, i32* %byte, align 4, !dbg !580
  %conv15 = trunc i32 %15 to i8, !dbg !581
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !582
  %17 = load i64, i64* %numWritten, align 8, !dbg !583
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !582
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !584
  %18 = load i64, i64* %numWritten, align 8, !dbg !585
  %inc = add i64 %18, 1, !dbg !585
  store i64 %inc, i64* %numWritten, align 8, !dbg !585
  br label %while.cond, !dbg !564, !llvm.loop !586

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !588
  ret i64 %19, !dbg !589
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !590 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !593, metadata !DIExpression()), !dbg !594
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !595, metadata !DIExpression()), !dbg !596
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !597, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !599, metadata !DIExpression()), !dbg !600
  store i64 0, i64* %numWritten, align 8, !dbg !600
  br label %while.cond, !dbg !601

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !602
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !603
  %cmp = icmp ult i64 %0, %1, !dbg !604
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !605

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !606
  %3 = load i64, i64* %numWritten, align 8, !dbg !607
  %mul = mul i64 2, %3, !dbg !608
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !606
  %4 = load i32, i32* %arrayidx, align 4, !dbg !606
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !609
  %tobool = icmp ne i32 %call, 0, !dbg !609
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !610

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !611
  %6 = load i64, i64* %numWritten, align 8, !dbg !612
  %mul1 = mul i64 2, %6, !dbg !613
  %add = add i64 %mul1, 1, !dbg !614
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !611
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !611
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !615
  %tobool4 = icmp ne i32 %call3, 0, !dbg !610
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !616
  br i1 %8, label %while.body, label %while.end, !dbg !601

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !617, metadata !DIExpression()), !dbg !619
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !620
  %10 = load i64, i64* %numWritten, align 8, !dbg !621
  %mul5 = mul i64 2, %10, !dbg !622
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !620
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !623
  %11 = load i32, i32* %byte, align 4, !dbg !624
  %conv = trunc i32 %11 to i8, !dbg !625
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !626
  %13 = load i64, i64* %numWritten, align 8, !dbg !627
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !626
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !628
  %14 = load i64, i64* %numWritten, align 8, !dbg !629
  %inc = add i64 %14, 1, !dbg !629
  store i64 %inc, i64* %numWritten, align 8, !dbg !629
  br label %while.cond, !dbg !601, !llvm.loop !630

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !632
  ret i64 %15, !dbg !633
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !634 {
entry:
  ret i32 1, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !638 {
entry:
  ret i32 0, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !640 {
entry:
  %call = call i32 @rand() #8, !dbg !641
  %rem = srem i32 %call, 2, !dbg !642
  ret i32 %rem, !dbg !643
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !644 {
entry:
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !646 {
entry:
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !648 {
entry:
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !650 {
entry:
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !652 {
entry:
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !654 {
entry:
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !656 {
entry:
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !658 {
entry:
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !660 {
entry:
  ret void, !dbg !661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !662 {
entry:
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !664 {
entry:
  ret void, !dbg !665
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !666 {
entry:
  ret void, !dbg !667
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !668 {
entry:
  ret void, !dbg !669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !670 {
entry:
  ret void, !dbg !671
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !672 {
entry:
  ret void, !dbg !673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !674 {
entry:
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !676 {
entry:
  ret void, !dbg !677
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !678 {
entry:
  ret void, !dbg !679
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

!llvm.dbg.cu = !{!2, !13}
!llvm.ident = !{!53, !53}
!llvm.module.flags = !{!54, !55, !56}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticTrue", scope: !2, file: !3, line: 34, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_05.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_014/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "staticFalse", scope: !2, file: !3, line: 35, type: !7, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !13, file: !14, line: 174, type: !7, isLocal: false, isDefinition: true)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !15, retainedTypes: !32, globals: !35, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_014/source_code")
!15 = !{!16}
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 46, baseType: !18, size: 32, elements: !19)
!17 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!20 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!21 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!22 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!23 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!24 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!25 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!26 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!27 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!28 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!29 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!30 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!31 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!32 = !{!6, !7, !33, !34}
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !{!11, !36, !38, !40, !42, !44, !46, !48}
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FALSE", scope: !13, file: !14, line: 175, type: !7, isLocal: false, isDefinition: true)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_FIVE", scope: !13, file: !14, line: 176, type: !7, isLocal: false, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "globalTrue", scope: !13, file: !14, line: 181, type: !7, isLocal: false, isDefinition: true)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "globalFalse", scope: !13, file: !14, line: 182, type: !7, isLocal: false, isDefinition: true)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "globalFive", scope: !13, file: !14, line: 183, type: !7, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "globalArgc", scope: !13, file: !14, line: 214, type: !7, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "globalArgv", scope: !13, file: !14, line: 215, type: !50, isLocal: false, isDefinition: true)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !{!"clang version 12.0.0"}
!54 = !{i32 7, !"Dwarf Version", i32 4}
!55 = !{i32 2, !"Debug Info Version", i32 3}
!56 = !{i32 1, !"wchar_size", i32 4}
!57 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_05_bad", scope: !3, file: !3, line: 39, type: !58, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!58 = !DISubroutineType(types: !59)
!59 = !{null}
!60 = !DILocalVariable(name: "data", scope: !57, file: !3, line: 41, type: !51)
!61 = !DILocation(line: 41, column: 12, scope: !57)
!62 = !DILocalVariable(name: "dataBuffer", scope: !57, file: !3, line: 42, type: !63)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 800, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 100)
!66 = !DILocation(line: 42, column: 10, scope: !57)
!67 = !DILocation(line: 43, column: 12, scope: !57)
!68 = !DILocation(line: 43, column: 10, scope: !57)
!69 = !DILocation(line: 44, column: 8, scope: !70)
!70 = distinct !DILexicalBlock(scope: !57, file: !3, line: 44, column: 8)
!71 = !DILocation(line: 44, column: 8, scope: !57)
!72 = !DILocalVariable(name: "dataLen", scope: !73, file: !3, line: 48, type: !75)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 46, column: 9)
!74 = distinct !DILexicalBlock(scope: !70, file: !3, line: 45, column: 5)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !76, line: 46, baseType: !77)
!76 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!77 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!78 = !DILocation(line: 48, column: 20, scope: !73)
!79 = !DILocation(line: 48, column: 37, scope: !73)
!80 = !DILocation(line: 48, column: 30, scope: !73)
!81 = !DILocalVariable(name: "pFile", scope: !73, file: !3, line: 49, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !84, line: 7, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !86, line: 49, size: 1728, elements: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !103, !105, !106, !107, !111, !112, !114, !118, !121, !123, !126, !129, !130, !131, !132, !133}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !85, file: !86, line: 51, baseType: !7, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !85, file: !86, line: 54, baseType: !51, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !85, file: !86, line: 55, baseType: !51, size: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !85, file: !86, line: 56, baseType: !51, size: 64, offset: 192)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !85, file: !86, line: 57, baseType: !51, size: 64, offset: 256)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !85, file: !86, line: 58, baseType: !51, size: 64, offset: 320)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !85, file: !86, line: 59, baseType: !51, size: 64, offset: 384)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !85, file: !86, line: 60, baseType: !51, size: 64, offset: 448)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !85, file: !86, line: 61, baseType: !51, size: 64, offset: 512)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !85, file: !86, line: 64, baseType: !51, size: 64, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !85, file: !86, line: 65, baseType: !51, size: 64, offset: 640)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !85, file: !86, line: 66, baseType: !51, size: 64, offset: 704)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !85, file: !86, line: 68, baseType: !101, size: 64, offset: 768)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !86, line: 36, flags: DIFlagFwdDecl)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !85, file: !86, line: 70, baseType: !104, size: 64, offset: 832)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !85, file: !86, line: 72, baseType: !7, size: 32, offset: 896)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !85, file: !86, line: 73, baseType: !7, size: 32, offset: 928)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !85, file: !86, line: 74, baseType: !108, size: 64, offset: 960)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !109, line: 152, baseType: !110)
!109 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!110 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !85, file: !86, line: 77, baseType: !33, size: 16, offset: 1024)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !85, file: !86, line: 78, baseType: !113, size: 8, offset: 1040)
!113 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !85, file: !86, line: 79, baseType: !115, size: 8, offset: 1048)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 8, elements: !116)
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
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !85, file: !86, line: 94, baseType: !6, size: 64, offset: 1408)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !85, file: !86, line: 95, baseType: !75, size: 64, offset: 1472)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !85, file: !86, line: 96, baseType: !7, size: 32, offset: 1536)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !85, file: !86, line: 98, baseType: !134, size: 160, offset: 1568)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 160, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 20)
!137 = !DILocation(line: 49, column: 20, scope: !73)
!138 = !DILocation(line: 51, column: 21, scope: !139)
!139 = distinct !DILexicalBlock(scope: !73, file: !3, line: 51, column: 17)
!140 = !DILocation(line: 51, column: 20, scope: !139)
!141 = !DILocation(line: 51, column: 29, scope: !139)
!142 = !DILocation(line: 51, column: 17, scope: !73)
!143 = !DILocation(line: 53, column: 25, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !3, line: 52, column: 13)
!145 = !DILocation(line: 53, column: 23, scope: !144)
!146 = !DILocation(line: 54, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !3, line: 54, column: 21)
!148 = !DILocation(line: 54, column: 27, scope: !147)
!149 = !DILocation(line: 54, column: 21, scope: !144)
!150 = !DILocation(line: 57, column: 31, scope: !151)
!151 = distinct !DILexicalBlock(scope: !152, file: !3, line: 57, column: 25)
!152 = distinct !DILexicalBlock(scope: !147, file: !3, line: 55, column: 17)
!153 = !DILocation(line: 57, column: 36, scope: !151)
!154 = !DILocation(line: 57, column: 35, scope: !151)
!155 = !DILocation(line: 57, column: 55, scope: !151)
!156 = !DILocation(line: 57, column: 54, scope: !151)
!157 = !DILocation(line: 57, column: 45, scope: !151)
!158 = !DILocation(line: 57, column: 65, scope: !151)
!159 = !DILocation(line: 57, column: 25, scope: !151)
!160 = !DILocation(line: 57, column: 72, scope: !151)
!161 = !DILocation(line: 57, column: 25, scope: !152)
!162 = !DILocation(line: 59, column: 25, scope: !163)
!163 = distinct !DILexicalBlock(scope: !151, file: !3, line: 58, column: 21)
!164 = !DILocation(line: 61, column: 25, scope: !163)
!165 = !DILocation(line: 61, column: 30, scope: !163)
!166 = !DILocation(line: 61, column: 39, scope: !163)
!167 = !DILocation(line: 62, column: 21, scope: !163)
!168 = !DILocation(line: 63, column: 28, scope: !152)
!169 = !DILocation(line: 63, column: 21, scope: !152)
!170 = !DILocation(line: 64, column: 17, scope: !152)
!171 = !DILocation(line: 65, column: 13, scope: !144)
!172 = !DILocation(line: 67, column: 5, scope: !74)
!173 = !DILocation(line: 68, column: 8, scope: !174)
!174 = distinct !DILexicalBlock(scope: !57, file: !3, line: 68, column: 8)
!175 = !DILocation(line: 68, column: 8, scope: !57)
!176 = !DILocation(line: 71, column: 16, scope: !177)
!177 = distinct !DILexicalBlock(scope: !174, file: !3, line: 69, column: 5)
!178 = !DILocation(line: 71, column: 9, scope: !177)
!179 = !DILocation(line: 72, column: 5, scope: !177)
!180 = !DILocation(line: 73, column: 1, scope: !57)
!181 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 80, type: !58, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!182 = !DILocalVariable(name: "data", scope: !181, file: !3, line: 82, type: !51)
!183 = !DILocation(line: 82, column: 12, scope: !181)
!184 = !DILocalVariable(name: "dataBuffer", scope: !181, file: !3, line: 83, type: !63)
!185 = !DILocation(line: 83, column: 10, scope: !181)
!186 = !DILocation(line: 84, column: 12, scope: !181)
!187 = !DILocation(line: 84, column: 10, scope: !181)
!188 = !DILocation(line: 85, column: 8, scope: !189)
!189 = distinct !DILexicalBlock(scope: !181, file: !3, line: 85, column: 8)
!190 = !DILocation(line: 85, column: 8, scope: !181)
!191 = !DILocalVariable(name: "dataLen", scope: !192, file: !3, line: 89, type: !75)
!192 = distinct !DILexicalBlock(scope: !193, file: !3, line: 87, column: 9)
!193 = distinct !DILexicalBlock(scope: !189, file: !3, line: 86, column: 5)
!194 = !DILocation(line: 89, column: 20, scope: !192)
!195 = !DILocation(line: 89, column: 37, scope: !192)
!196 = !DILocation(line: 89, column: 30, scope: !192)
!197 = !DILocalVariable(name: "pFile", scope: !192, file: !3, line: 90, type: !82)
!198 = !DILocation(line: 90, column: 20, scope: !192)
!199 = !DILocation(line: 92, column: 21, scope: !200)
!200 = distinct !DILexicalBlock(scope: !192, file: !3, line: 92, column: 17)
!201 = !DILocation(line: 92, column: 20, scope: !200)
!202 = !DILocation(line: 92, column: 29, scope: !200)
!203 = !DILocation(line: 92, column: 17, scope: !192)
!204 = !DILocation(line: 94, column: 25, scope: !205)
!205 = distinct !DILexicalBlock(scope: !200, file: !3, line: 93, column: 13)
!206 = !DILocation(line: 94, column: 23, scope: !205)
!207 = !DILocation(line: 95, column: 21, scope: !208)
!208 = distinct !DILexicalBlock(scope: !205, file: !3, line: 95, column: 21)
!209 = !DILocation(line: 95, column: 27, scope: !208)
!210 = !DILocation(line: 95, column: 21, scope: !205)
!211 = !DILocation(line: 98, column: 31, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !3, line: 98, column: 25)
!213 = distinct !DILexicalBlock(scope: !208, file: !3, line: 96, column: 17)
!214 = !DILocation(line: 98, column: 36, scope: !212)
!215 = !DILocation(line: 98, column: 35, scope: !212)
!216 = !DILocation(line: 98, column: 55, scope: !212)
!217 = !DILocation(line: 98, column: 54, scope: !212)
!218 = !DILocation(line: 98, column: 45, scope: !212)
!219 = !DILocation(line: 98, column: 65, scope: !212)
!220 = !DILocation(line: 98, column: 25, scope: !212)
!221 = !DILocation(line: 98, column: 72, scope: !212)
!222 = !DILocation(line: 98, column: 25, scope: !213)
!223 = !DILocation(line: 100, column: 25, scope: !224)
!224 = distinct !DILexicalBlock(scope: !212, file: !3, line: 99, column: 21)
!225 = !DILocation(line: 102, column: 25, scope: !224)
!226 = !DILocation(line: 102, column: 30, scope: !224)
!227 = !DILocation(line: 102, column: 39, scope: !224)
!228 = !DILocation(line: 103, column: 21, scope: !224)
!229 = !DILocation(line: 104, column: 28, scope: !213)
!230 = !DILocation(line: 104, column: 21, scope: !213)
!231 = !DILocation(line: 105, column: 17, scope: !213)
!232 = !DILocation(line: 106, column: 13, scope: !205)
!233 = !DILocation(line: 108, column: 5, scope: !193)
!234 = !DILocation(line: 109, column: 8, scope: !235)
!235 = distinct !DILexicalBlock(scope: !181, file: !3, line: 109, column: 8)
!236 = !DILocation(line: 109, column: 8, scope: !181)
!237 = !DILocation(line: 112, column: 9, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !3, line: 110, column: 5)
!239 = !DILocation(line: 113, column: 5, scope: !238)
!240 = !DILocation(line: 117, column: 24, scope: !241)
!241 = distinct !DILexicalBlock(scope: !235, file: !3, line: 115, column: 5)
!242 = !DILocation(line: 117, column: 9, scope: !241)
!243 = !DILocation(line: 119, column: 1, scope: !181)
!244 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 122, type: !58, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!245 = !DILocalVariable(name: "data", scope: !244, file: !3, line: 124, type: !51)
!246 = !DILocation(line: 124, column: 12, scope: !244)
!247 = !DILocalVariable(name: "dataBuffer", scope: !244, file: !3, line: 125, type: !63)
!248 = !DILocation(line: 125, column: 10, scope: !244)
!249 = !DILocation(line: 126, column: 12, scope: !244)
!250 = !DILocation(line: 126, column: 10, scope: !244)
!251 = !DILocation(line: 127, column: 8, scope: !252)
!252 = distinct !DILexicalBlock(scope: !244, file: !3, line: 127, column: 8)
!253 = !DILocation(line: 127, column: 8, scope: !244)
!254 = !DILocalVariable(name: "dataLen", scope: !255, file: !3, line: 131, type: !75)
!255 = distinct !DILexicalBlock(scope: !256, file: !3, line: 129, column: 9)
!256 = distinct !DILexicalBlock(scope: !252, file: !3, line: 128, column: 5)
!257 = !DILocation(line: 131, column: 20, scope: !255)
!258 = !DILocation(line: 131, column: 37, scope: !255)
!259 = !DILocation(line: 131, column: 30, scope: !255)
!260 = !DILocalVariable(name: "pFile", scope: !255, file: !3, line: 132, type: !82)
!261 = !DILocation(line: 132, column: 20, scope: !255)
!262 = !DILocation(line: 134, column: 21, scope: !263)
!263 = distinct !DILexicalBlock(scope: !255, file: !3, line: 134, column: 17)
!264 = !DILocation(line: 134, column: 20, scope: !263)
!265 = !DILocation(line: 134, column: 29, scope: !263)
!266 = !DILocation(line: 134, column: 17, scope: !255)
!267 = !DILocation(line: 136, column: 25, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !3, line: 135, column: 13)
!269 = !DILocation(line: 136, column: 23, scope: !268)
!270 = !DILocation(line: 137, column: 21, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !3, line: 137, column: 21)
!272 = !DILocation(line: 137, column: 27, scope: !271)
!273 = !DILocation(line: 137, column: 21, scope: !268)
!274 = !DILocation(line: 140, column: 31, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 140, column: 25)
!276 = distinct !DILexicalBlock(scope: !271, file: !3, line: 138, column: 17)
!277 = !DILocation(line: 140, column: 36, scope: !275)
!278 = !DILocation(line: 140, column: 35, scope: !275)
!279 = !DILocation(line: 140, column: 55, scope: !275)
!280 = !DILocation(line: 140, column: 54, scope: !275)
!281 = !DILocation(line: 140, column: 45, scope: !275)
!282 = !DILocation(line: 140, column: 65, scope: !275)
!283 = !DILocation(line: 140, column: 25, scope: !275)
!284 = !DILocation(line: 140, column: 72, scope: !275)
!285 = !DILocation(line: 140, column: 25, scope: !276)
!286 = !DILocation(line: 142, column: 25, scope: !287)
!287 = distinct !DILexicalBlock(scope: !275, file: !3, line: 141, column: 21)
!288 = !DILocation(line: 144, column: 25, scope: !287)
!289 = !DILocation(line: 144, column: 30, scope: !287)
!290 = !DILocation(line: 144, column: 39, scope: !287)
!291 = !DILocation(line: 145, column: 21, scope: !287)
!292 = !DILocation(line: 146, column: 28, scope: !276)
!293 = !DILocation(line: 146, column: 21, scope: !276)
!294 = !DILocation(line: 147, column: 17, scope: !276)
!295 = !DILocation(line: 148, column: 13, scope: !268)
!296 = !DILocation(line: 150, column: 5, scope: !256)
!297 = !DILocation(line: 151, column: 8, scope: !298)
!298 = distinct !DILexicalBlock(scope: !244, file: !3, line: 151, column: 8)
!299 = !DILocation(line: 151, column: 8, scope: !244)
!300 = !DILocation(line: 154, column: 24, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !3, line: 152, column: 5)
!302 = !DILocation(line: 154, column: 9, scope: !301)
!303 = !DILocation(line: 155, column: 5, scope: !301)
!304 = !DILocation(line: 156, column: 1, scope: !244)
!305 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 159, type: !58, scopeLine: 160, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!306 = !DILocalVariable(name: "data", scope: !305, file: !3, line: 161, type: !51)
!307 = !DILocation(line: 161, column: 12, scope: !305)
!308 = !DILocalVariable(name: "dataBuffer", scope: !305, file: !3, line: 162, type: !63)
!309 = !DILocation(line: 162, column: 10, scope: !305)
!310 = !DILocation(line: 163, column: 12, scope: !305)
!311 = !DILocation(line: 163, column: 10, scope: !305)
!312 = !DILocation(line: 164, column: 8, scope: !313)
!313 = distinct !DILexicalBlock(scope: !305, file: !3, line: 164, column: 8)
!314 = !DILocation(line: 164, column: 8, scope: !305)
!315 = !DILocation(line: 167, column: 9, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !3, line: 165, column: 5)
!317 = !DILocation(line: 168, column: 5, scope: !316)
!318 = !DILocation(line: 172, column: 16, scope: !319)
!319 = distinct !DILexicalBlock(scope: !313, file: !3, line: 170, column: 5)
!320 = !DILocation(line: 172, column: 9, scope: !319)
!321 = !DILocation(line: 174, column: 8, scope: !322)
!322 = distinct !DILexicalBlock(scope: !305, file: !3, line: 174, column: 8)
!323 = !DILocation(line: 174, column: 8, scope: !305)
!324 = !DILocation(line: 177, column: 16, scope: !325)
!325 = distinct !DILexicalBlock(scope: !322, file: !3, line: 175, column: 5)
!326 = !DILocation(line: 177, column: 9, scope: !325)
!327 = !DILocation(line: 178, column: 5, scope: !325)
!328 = !DILocation(line: 179, column: 1, scope: !305)
!329 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 182, type: !58, scopeLine: 183, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!330 = !DILocalVariable(name: "data", scope: !329, file: !3, line: 184, type: !51)
!331 = !DILocation(line: 184, column: 12, scope: !329)
!332 = !DILocalVariable(name: "dataBuffer", scope: !329, file: !3, line: 185, type: !63)
!333 = !DILocation(line: 185, column: 10, scope: !329)
!334 = !DILocation(line: 186, column: 12, scope: !329)
!335 = !DILocation(line: 186, column: 10, scope: !329)
!336 = !DILocation(line: 187, column: 8, scope: !337)
!337 = distinct !DILexicalBlock(scope: !329, file: !3, line: 187, column: 8)
!338 = !DILocation(line: 187, column: 8, scope: !329)
!339 = !DILocation(line: 190, column: 16, scope: !340)
!340 = distinct !DILexicalBlock(scope: !337, file: !3, line: 188, column: 5)
!341 = !DILocation(line: 190, column: 9, scope: !340)
!342 = !DILocation(line: 191, column: 5, scope: !340)
!343 = !DILocation(line: 192, column: 8, scope: !344)
!344 = distinct !DILexicalBlock(scope: !329, file: !3, line: 192, column: 8)
!345 = !DILocation(line: 192, column: 8, scope: !329)
!346 = !DILocation(line: 195, column: 16, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !3, line: 193, column: 5)
!348 = !DILocation(line: 195, column: 9, scope: !347)
!349 = !DILocation(line: 196, column: 5, scope: !347)
!350 = !DILocation(line: 197, column: 1, scope: !329)
!351 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_05_good", scope: !3, file: !3, line: 199, type: !58, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!352 = !DILocation(line: 201, column: 5, scope: !351)
!353 = !DILocation(line: 202, column: 5, scope: !351)
!354 = !DILocation(line: 203, column: 5, scope: !351)
!355 = !DILocation(line: 204, column: 5, scope: !351)
!356 = !DILocation(line: 205, column: 1, scope: !351)
!357 = distinct !DISubprogram(name: "printLine", scope: !14, file: !14, line: 11, type: !358, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !51}
!360 = !DILocalVariable(name: "line", arg: 1, scope: !357, file: !14, line: 11, type: !51)
!361 = !DILocation(line: 11, column: 25, scope: !357)
!362 = !DILocation(line: 13, column: 1, scope: !357)
!363 = !DILocation(line: 14, column: 8, scope: !364)
!364 = distinct !DILexicalBlock(scope: !357, file: !14, line: 14, column: 8)
!365 = !DILocation(line: 14, column: 13, scope: !364)
!366 = !DILocation(line: 14, column: 8, scope: !357)
!367 = !DILocation(line: 16, column: 24, scope: !368)
!368 = distinct !DILexicalBlock(scope: !364, file: !14, line: 15, column: 5)
!369 = !DILocation(line: 16, column: 9, scope: !368)
!370 = !DILocation(line: 17, column: 5, scope: !368)
!371 = !DILocation(line: 18, column: 5, scope: !357)
!372 = !DILocation(line: 19, column: 1, scope: !357)
!373 = distinct !DISubprogram(name: "printSinkLine", scope: !14, file: !14, line: 20, type: !358, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!374 = !DILocalVariable(name: "line", arg: 1, scope: !373, file: !14, line: 20, type: !51)
!375 = !DILocation(line: 20, column: 29, scope: !373)
!376 = !DILocation(line: 22, column: 8, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !14, line: 22, column: 8)
!378 = !DILocation(line: 22, column: 13, scope: !377)
!379 = !DILocation(line: 22, column: 8, scope: !373)
!380 = !DILocation(line: 24, column: 24, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !14, line: 23, column: 5)
!382 = !DILocation(line: 24, column: 9, scope: !381)
!383 = !DILocation(line: 25, column: 5, scope: !381)
!384 = !DILocation(line: 26, column: 1, scope: !373)
!385 = distinct !DISubprogram(name: "printWLine", scope: !14, file: !14, line: 27, type: !386, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !76, line: 74, baseType: !7)
!390 = !DILocalVariable(name: "line", arg: 1, scope: !385, file: !14, line: 27, type: !388)
!391 = !DILocation(line: 27, column: 29, scope: !385)
!392 = !DILocation(line: 29, column: 8, scope: !393)
!393 = distinct !DILexicalBlock(scope: !385, file: !14, line: 29, column: 8)
!394 = !DILocation(line: 29, column: 13, scope: !393)
!395 = !DILocation(line: 29, column: 8, scope: !385)
!396 = !DILocation(line: 31, column: 27, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !14, line: 30, column: 5)
!398 = !DILocation(line: 31, column: 9, scope: !397)
!399 = !DILocation(line: 32, column: 5, scope: !397)
!400 = !DILocation(line: 33, column: 1, scope: !385)
!401 = distinct !DISubprogram(name: "printIntLine", scope: !14, file: !14, line: 35, type: !402, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !7}
!404 = !DILocalVariable(name: "intNumber", arg: 1, scope: !401, file: !14, line: 35, type: !7)
!405 = !DILocation(line: 35, column: 24, scope: !401)
!406 = !DILocation(line: 37, column: 20, scope: !401)
!407 = !DILocation(line: 37, column: 5, scope: !401)
!408 = !DILocation(line: 38, column: 1, scope: !401)
!409 = distinct !DISubprogram(name: "printShortLine", scope: !14, file: !14, line: 40, type: !410, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !412}
!412 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!413 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !409, file: !14, line: 40, type: !412)
!414 = !DILocation(line: 40, column: 28, scope: !409)
!415 = !DILocation(line: 42, column: 21, scope: !409)
!416 = !DILocation(line: 42, column: 5, scope: !409)
!417 = !DILocation(line: 43, column: 1, scope: !409)
!418 = distinct !DISubprogram(name: "printFloatLine", scope: !14, file: !14, line: 45, type: !419, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!419 = !DISubroutineType(types: !420)
!420 = !{null, !421}
!421 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!422 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !418, file: !14, line: 45, type: !421)
!423 = !DILocation(line: 45, column: 28, scope: !418)
!424 = !DILocation(line: 47, column: 20, scope: !418)
!425 = !DILocation(line: 47, column: 5, scope: !418)
!426 = !DILocation(line: 48, column: 1, scope: !418)
!427 = distinct !DISubprogram(name: "printLongLine", scope: !14, file: !14, line: 50, type: !428, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !110}
!430 = !DILocalVariable(name: "longNumber", arg: 1, scope: !427, file: !14, line: 50, type: !110)
!431 = !DILocation(line: 50, column: 26, scope: !427)
!432 = !DILocation(line: 52, column: 21, scope: !427)
!433 = !DILocation(line: 52, column: 5, scope: !427)
!434 = !DILocation(line: 53, column: 1, scope: !427)
!435 = distinct !DISubprogram(name: "printLongLongLine", scope: !14, file: !14, line: 55, type: !436, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !438}
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !439, line: 27, baseType: !440)
!439 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !109, line: 44, baseType: !110)
!441 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !435, file: !14, line: 55, type: !438)
!442 = !DILocation(line: 55, column: 33, scope: !435)
!443 = !DILocation(line: 57, column: 29, scope: !435)
!444 = !DILocation(line: 57, column: 5, scope: !435)
!445 = !DILocation(line: 58, column: 1, scope: !435)
!446 = distinct !DISubprogram(name: "printSizeTLine", scope: !14, file: !14, line: 60, type: !447, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !75}
!449 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !446, file: !14, line: 60, type: !75)
!450 = !DILocation(line: 60, column: 29, scope: !446)
!451 = !DILocation(line: 62, column: 21, scope: !446)
!452 = !DILocation(line: 62, column: 5, scope: !446)
!453 = !DILocation(line: 63, column: 1, scope: !446)
!454 = distinct !DISubprogram(name: "printHexCharLine", scope: !14, file: !14, line: 65, type: !455, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !52}
!457 = !DILocalVariable(name: "charHex", arg: 1, scope: !454, file: !14, line: 65, type: !52)
!458 = !DILocation(line: 65, column: 29, scope: !454)
!459 = !DILocation(line: 67, column: 22, scope: !454)
!460 = !DILocation(line: 67, column: 5, scope: !454)
!461 = !DILocation(line: 68, column: 1, scope: !454)
!462 = distinct !DISubprogram(name: "printWcharLine", scope: !14, file: !14, line: 70, type: !463, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !389}
!465 = !DILocalVariable(name: "wideChar", arg: 1, scope: !462, file: !14, line: 70, type: !389)
!466 = !DILocation(line: 70, column: 29, scope: !462)
!467 = !DILocalVariable(name: "s", scope: !462, file: !14, line: 74, type: !468)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 64, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 2)
!471 = !DILocation(line: 74, column: 13, scope: !462)
!472 = !DILocation(line: 75, column: 16, scope: !462)
!473 = !DILocation(line: 75, column: 9, scope: !462)
!474 = !DILocation(line: 75, column: 14, scope: !462)
!475 = !DILocation(line: 76, column: 9, scope: !462)
!476 = !DILocation(line: 76, column: 14, scope: !462)
!477 = !DILocation(line: 77, column: 21, scope: !462)
!478 = !DILocation(line: 77, column: 5, scope: !462)
!479 = !DILocation(line: 78, column: 1, scope: !462)
!480 = distinct !DISubprogram(name: "printUnsignedLine", scope: !14, file: !14, line: 80, type: !481, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !18}
!483 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !480, file: !14, line: 80, type: !18)
!484 = !DILocation(line: 80, column: 33, scope: !480)
!485 = !DILocation(line: 82, column: 20, scope: !480)
!486 = !DILocation(line: 82, column: 5, scope: !480)
!487 = !DILocation(line: 83, column: 1, scope: !480)
!488 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !14, file: !14, line: 85, type: !489, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !34}
!491 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !488, file: !14, line: 85, type: !34)
!492 = !DILocation(line: 85, column: 45, scope: !488)
!493 = !DILocation(line: 87, column: 22, scope: !488)
!494 = !DILocation(line: 87, column: 5, scope: !488)
!495 = !DILocation(line: 88, column: 1, scope: !488)
!496 = distinct !DISubprogram(name: "printDoubleLine", scope: !14, file: !14, line: 90, type: !497, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !499}
!499 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!500 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !496, file: !14, line: 90, type: !499)
!501 = !DILocation(line: 90, column: 29, scope: !496)
!502 = !DILocation(line: 92, column: 20, scope: !496)
!503 = !DILocation(line: 92, column: 5, scope: !496)
!504 = !DILocation(line: 93, column: 1, scope: !496)
!505 = distinct !DISubprogram(name: "printStructLine", scope: !14, file: !14, line: 95, type: !506, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !508}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !510, line: 100, baseType: !511)
!510 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_014/source_code")
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !510, line: 96, size: 64, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !511, file: !510, line: 98, baseType: !7, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !511, file: !510, line: 99, baseType: !7, size: 32, offset: 32)
!515 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !505, file: !14, line: 95, type: !508)
!516 = !DILocation(line: 95, column: 40, scope: !505)
!517 = !DILocation(line: 97, column: 26, scope: !505)
!518 = !DILocation(line: 97, column: 47, scope: !505)
!519 = !DILocation(line: 97, column: 55, scope: !505)
!520 = !DILocation(line: 97, column: 76, scope: !505)
!521 = !DILocation(line: 97, column: 5, scope: !505)
!522 = !DILocation(line: 98, column: 1, scope: !505)
!523 = distinct !DISubprogram(name: "printBytesLine", scope: !14, file: !14, line: 100, type: !524, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !526, !75}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!527 = !DILocalVariable(name: "bytes", arg: 1, scope: !523, file: !14, line: 100, type: !526)
!528 = !DILocation(line: 100, column: 38, scope: !523)
!529 = !DILocalVariable(name: "numBytes", arg: 2, scope: !523, file: !14, line: 100, type: !75)
!530 = !DILocation(line: 100, column: 52, scope: !523)
!531 = !DILocalVariable(name: "i", scope: !523, file: !14, line: 102, type: !75)
!532 = !DILocation(line: 102, column: 12, scope: !523)
!533 = !DILocation(line: 103, column: 12, scope: !534)
!534 = distinct !DILexicalBlock(scope: !523, file: !14, line: 103, column: 5)
!535 = !DILocation(line: 103, column: 10, scope: !534)
!536 = !DILocation(line: 103, column: 17, scope: !537)
!537 = distinct !DILexicalBlock(scope: !534, file: !14, line: 103, column: 5)
!538 = !DILocation(line: 103, column: 21, scope: !537)
!539 = !DILocation(line: 103, column: 19, scope: !537)
!540 = !DILocation(line: 103, column: 5, scope: !534)
!541 = !DILocation(line: 105, column: 24, scope: !542)
!542 = distinct !DILexicalBlock(scope: !537, file: !14, line: 104, column: 5)
!543 = !DILocation(line: 105, column: 30, scope: !542)
!544 = !DILocation(line: 105, column: 9, scope: !542)
!545 = !DILocation(line: 106, column: 5, scope: !542)
!546 = !DILocation(line: 103, column: 31, scope: !537)
!547 = !DILocation(line: 103, column: 5, scope: !537)
!548 = distinct !{!548, !540, !549, !550}
!549 = !DILocation(line: 106, column: 5, scope: !534)
!550 = !{!"llvm.loop.mustprogress"}
!551 = !DILocation(line: 107, column: 5, scope: !523)
!552 = !DILocation(line: 108, column: 1, scope: !523)
!553 = distinct !DISubprogram(name: "decodeHexChars", scope: !14, file: !14, line: 113, type: !554, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!554 = !DISubroutineType(types: !555)
!555 = !{!75, !526, !75, !51}
!556 = !DILocalVariable(name: "bytes", arg: 1, scope: !553, file: !14, line: 113, type: !526)
!557 = !DILocation(line: 113, column: 39, scope: !553)
!558 = !DILocalVariable(name: "numBytes", arg: 2, scope: !553, file: !14, line: 113, type: !75)
!559 = !DILocation(line: 113, column: 53, scope: !553)
!560 = !DILocalVariable(name: "hex", arg: 3, scope: !553, file: !14, line: 113, type: !51)
!561 = !DILocation(line: 113, column: 71, scope: !553)
!562 = !DILocalVariable(name: "numWritten", scope: !553, file: !14, line: 115, type: !75)
!563 = !DILocation(line: 115, column: 12, scope: !553)
!564 = !DILocation(line: 121, column: 5, scope: !553)
!565 = !DILocation(line: 121, column: 12, scope: !553)
!566 = !DILocation(line: 121, column: 25, scope: !553)
!567 = !DILocation(line: 121, column: 23, scope: !553)
!568 = !DILocation(line: 121, column: 34, scope: !553)
!569 = !DILocation(line: 121, column: 37, scope: !553)
!570 = !DILocation(line: 121, column: 67, scope: !553)
!571 = !DILocation(line: 121, column: 70, scope: !553)
!572 = !DILocation(line: 0, scope: !553)
!573 = !DILocalVariable(name: "byte", scope: !574, file: !14, line: 123, type: !7)
!574 = distinct !DILexicalBlock(scope: !553, file: !14, line: 122, column: 5)
!575 = !DILocation(line: 123, column: 13, scope: !574)
!576 = !DILocation(line: 124, column: 17, scope: !574)
!577 = !DILocation(line: 124, column: 25, scope: !574)
!578 = !DILocation(line: 124, column: 23, scope: !574)
!579 = !DILocation(line: 124, column: 9, scope: !574)
!580 = !DILocation(line: 125, column: 45, scope: !574)
!581 = !DILocation(line: 125, column: 29, scope: !574)
!582 = !DILocation(line: 125, column: 9, scope: !574)
!583 = !DILocation(line: 125, column: 15, scope: !574)
!584 = !DILocation(line: 125, column: 27, scope: !574)
!585 = !DILocation(line: 126, column: 9, scope: !574)
!586 = distinct !{!586, !564, !587, !550}
!587 = !DILocation(line: 127, column: 5, scope: !553)
!588 = !DILocation(line: 129, column: 12, scope: !553)
!589 = !DILocation(line: 129, column: 5, scope: !553)
!590 = distinct !DISubprogram(name: "decodeHexWChars", scope: !14, file: !14, line: 135, type: !591, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!591 = !DISubroutineType(types: !592)
!592 = !{!75, !526, !75, !388}
!593 = !DILocalVariable(name: "bytes", arg: 1, scope: !590, file: !14, line: 135, type: !526)
!594 = !DILocation(line: 135, column: 41, scope: !590)
!595 = !DILocalVariable(name: "numBytes", arg: 2, scope: !590, file: !14, line: 135, type: !75)
!596 = !DILocation(line: 135, column: 55, scope: !590)
!597 = !DILocalVariable(name: "hex", arg: 3, scope: !590, file: !14, line: 135, type: !388)
!598 = !DILocation(line: 135, column: 76, scope: !590)
!599 = !DILocalVariable(name: "numWritten", scope: !590, file: !14, line: 137, type: !75)
!600 = !DILocation(line: 137, column: 12, scope: !590)
!601 = !DILocation(line: 143, column: 5, scope: !590)
!602 = !DILocation(line: 143, column: 12, scope: !590)
!603 = !DILocation(line: 143, column: 25, scope: !590)
!604 = !DILocation(line: 143, column: 23, scope: !590)
!605 = !DILocation(line: 143, column: 34, scope: !590)
!606 = !DILocation(line: 143, column: 47, scope: !590)
!607 = !DILocation(line: 143, column: 55, scope: !590)
!608 = !DILocation(line: 143, column: 53, scope: !590)
!609 = !DILocation(line: 143, column: 37, scope: !590)
!610 = !DILocation(line: 143, column: 68, scope: !590)
!611 = !DILocation(line: 143, column: 81, scope: !590)
!612 = !DILocation(line: 143, column: 89, scope: !590)
!613 = !DILocation(line: 143, column: 87, scope: !590)
!614 = !DILocation(line: 143, column: 100, scope: !590)
!615 = !DILocation(line: 143, column: 71, scope: !590)
!616 = !DILocation(line: 0, scope: !590)
!617 = !DILocalVariable(name: "byte", scope: !618, file: !14, line: 145, type: !7)
!618 = distinct !DILexicalBlock(scope: !590, file: !14, line: 144, column: 5)
!619 = !DILocation(line: 145, column: 13, scope: !618)
!620 = !DILocation(line: 146, column: 18, scope: !618)
!621 = !DILocation(line: 146, column: 26, scope: !618)
!622 = !DILocation(line: 146, column: 24, scope: !618)
!623 = !DILocation(line: 146, column: 9, scope: !618)
!624 = !DILocation(line: 147, column: 45, scope: !618)
!625 = !DILocation(line: 147, column: 29, scope: !618)
!626 = !DILocation(line: 147, column: 9, scope: !618)
!627 = !DILocation(line: 147, column: 15, scope: !618)
!628 = !DILocation(line: 147, column: 27, scope: !618)
!629 = !DILocation(line: 148, column: 9, scope: !618)
!630 = distinct !{!630, !601, !631, !550}
!631 = !DILocation(line: 149, column: 5, scope: !590)
!632 = !DILocation(line: 151, column: 12, scope: !590)
!633 = !DILocation(line: 151, column: 5, scope: !590)
!634 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !14, file: !14, line: 156, type: !635, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!635 = !DISubroutineType(types: !636)
!636 = !{!7}
!637 = !DILocation(line: 158, column: 5, scope: !634)
!638 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !14, file: !14, line: 161, type: !635, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!639 = !DILocation(line: 163, column: 5, scope: !638)
!640 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !14, file: !14, line: 166, type: !635, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!641 = !DILocation(line: 168, column: 13, scope: !640)
!642 = !DILocation(line: 168, column: 20, scope: !640)
!643 = !DILocation(line: 168, column: 5, scope: !640)
!644 = distinct !DISubprogram(name: "good1", scope: !14, file: !14, line: 187, type: !58, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!645 = !DILocation(line: 187, column: 16, scope: !644)
!646 = distinct !DISubprogram(name: "good2", scope: !14, file: !14, line: 188, type: !58, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!647 = !DILocation(line: 188, column: 16, scope: !646)
!648 = distinct !DISubprogram(name: "good3", scope: !14, file: !14, line: 189, type: !58, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!649 = !DILocation(line: 189, column: 16, scope: !648)
!650 = distinct !DISubprogram(name: "good4", scope: !14, file: !14, line: 190, type: !58, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!651 = !DILocation(line: 190, column: 16, scope: !650)
!652 = distinct !DISubprogram(name: "good5", scope: !14, file: !14, line: 191, type: !58, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!653 = !DILocation(line: 191, column: 16, scope: !652)
!654 = distinct !DISubprogram(name: "good6", scope: !14, file: !14, line: 192, type: !58, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!655 = !DILocation(line: 192, column: 16, scope: !654)
!656 = distinct !DISubprogram(name: "good7", scope: !14, file: !14, line: 193, type: !58, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!657 = !DILocation(line: 193, column: 16, scope: !656)
!658 = distinct !DISubprogram(name: "good8", scope: !14, file: !14, line: 194, type: !58, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!659 = !DILocation(line: 194, column: 16, scope: !658)
!660 = distinct !DISubprogram(name: "good9", scope: !14, file: !14, line: 195, type: !58, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!661 = !DILocation(line: 195, column: 16, scope: !660)
!662 = distinct !DISubprogram(name: "bad1", scope: !14, file: !14, line: 198, type: !58, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!663 = !DILocation(line: 198, column: 15, scope: !662)
!664 = distinct !DISubprogram(name: "bad2", scope: !14, file: !14, line: 199, type: !58, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!665 = !DILocation(line: 199, column: 15, scope: !664)
!666 = distinct !DISubprogram(name: "bad3", scope: !14, file: !14, line: 200, type: !58, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!667 = !DILocation(line: 200, column: 15, scope: !666)
!668 = distinct !DISubprogram(name: "bad4", scope: !14, file: !14, line: 201, type: !58, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!669 = !DILocation(line: 201, column: 15, scope: !668)
!670 = distinct !DISubprogram(name: "bad5", scope: !14, file: !14, line: 202, type: !58, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!671 = !DILocation(line: 202, column: 15, scope: !670)
!672 = distinct !DISubprogram(name: "bad6", scope: !14, file: !14, line: 203, type: !58, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!673 = !DILocation(line: 203, column: 15, scope: !672)
!674 = distinct !DISubprogram(name: "bad7", scope: !14, file: !14, line: 204, type: !58, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!675 = !DILocation(line: 204, column: 15, scope: !674)
!676 = distinct !DISubprogram(name: "bad8", scope: !14, file: !14, line: 205, type: !58, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!677 = !DILocation(line: 205, column: 15, scope: !676)
!678 = distinct !DISubprogram(name: "bad9", scope: !14, file: !14, line: 206, type: !58, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !4)
!679 = !DILocation(line: 206, column: 15, scope: !678)
