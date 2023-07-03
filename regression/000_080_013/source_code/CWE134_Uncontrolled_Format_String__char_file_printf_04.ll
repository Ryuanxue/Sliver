; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_printf_04.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_printf_04.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@STATIC_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@STATIC_CONST_FALSE = dso_local global i32 0, align 4, !dbg !9
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_04_bad() #0 !dbg !15 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %data, align 8, !dbg !28
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !29
  %tobool = icmp ne i32 %1, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end13, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !32, metadata !DIExpression()), !dbg !38
  %2 = load i8*, i8** %data, align 8, !dbg !39
  %call = call i64 @strlen(i8* %2) #6, !dbg !40
  store i64 %call, i64* %dataLen, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !41, metadata !DIExpression()), !dbg !98
  %3 = load i64, i64* %dataLen, align 8, !dbg !99
  %sub = sub i64 100, %3, !dbg !101
  %cmp = icmp ugt i64 %sub, 1, !dbg !102
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !103

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !104
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !106
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !107
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !109
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !110

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !111
  %6 = load i64, i64* %dataLen, align 8, !dbg !114
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !115
  %7 = load i64, i64* %dataLen, align 8, !dbg !116
  %sub5 = sub i64 100, %7, !dbg !117
  %conv = trunc i64 %sub5 to i32, !dbg !118
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !119
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !120
  %cmp7 = icmp eq i8* %call6, null, !dbg !121
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !122

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !123
  %9 = load i8*, i8** %data, align 8, !dbg !125
  %10 = load i64, i64* %dataLen, align 8, !dbg !126
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !125
  store i8 0, i8* %arrayidx, align 1, !dbg !127
  br label %if.end, !dbg !128

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !129
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !130
  br label %if.end11, !dbg !131

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !132

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !133

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !134
  %tobool14 = icmp ne i32 %12, 0, !dbg !134
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !136

if.then15:                                        ; preds = %if.end13
  %13 = load i8*, i8** %data, align 8, !dbg !137
  %call16 = call i32 (i8*, ...) @printf(i8* %13), !dbg !139
  br label %if.end17, !dbg !140

if.end17:                                         ; preds = %if.then15, %if.end13
  ret void, !dbg !141
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !142 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !145, metadata !DIExpression()), !dbg !146
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !146
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !146
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !147
  store i8* %arraydecay, i8** %data, align 8, !dbg !148
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !149
  %tobool = icmp ne i32 %1, 0, !dbg !149
  br i1 %tobool, label %if.then, label %if.end13, !dbg !151

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !152, metadata !DIExpression()), !dbg !155
  %2 = load i8*, i8** %data, align 8, !dbg !156
  %call = call i64 @strlen(i8* %2) #6, !dbg !157
  store i64 %call, i64* %dataLen, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !158, metadata !DIExpression()), !dbg !159
  %3 = load i64, i64* %dataLen, align 8, !dbg !160
  %sub = sub i64 100, %3, !dbg !162
  %cmp = icmp ugt i64 %sub, 1, !dbg !163
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !164

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !165
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !167
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !168
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !170
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !171

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !172
  %6 = load i64, i64* %dataLen, align 8, !dbg !175
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !176
  %7 = load i64, i64* %dataLen, align 8, !dbg !177
  %sub5 = sub i64 100, %7, !dbg !178
  %conv = trunc i64 %sub5 to i32, !dbg !179
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !180
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !181
  %cmp7 = icmp eq i8* %call6, null, !dbg !182
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !183

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !184
  %9 = load i8*, i8** %data, align 8, !dbg !186
  %10 = load i64, i64* %dataLen, align 8, !dbg !187
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !186
  store i8 0, i8* %arrayidx, align 1, !dbg !188
  br label %if.end, !dbg !189

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !190
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !191
  br label %if.end11, !dbg !192

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !193

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !194

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !195
  %tobool14 = icmp ne i32 %12, 0, !dbg !195
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !197

if.then15:                                        ; preds = %if.end13
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !198
  br label %if.end17, !dbg !200

if.else:                                          ; preds = %if.end13
  %13 = load i8*, i8** %data, align 8, !dbg !201
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !203
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  ret void, !dbg !204
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !205 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !208, metadata !DIExpression()), !dbg !209
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !209
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !209
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !210
  store i8* %arraydecay, i8** %data, align 8, !dbg !211
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !212
  %tobool = icmp ne i32 %1, 0, !dbg !212
  br i1 %tobool, label %if.then, label %if.end13, !dbg !214

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !215, metadata !DIExpression()), !dbg !218
  %2 = load i8*, i8** %data, align 8, !dbg !219
  %call = call i64 @strlen(i8* %2) #6, !dbg !220
  store i64 %call, i64* %dataLen, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !221, metadata !DIExpression()), !dbg !222
  %3 = load i64, i64* %dataLen, align 8, !dbg !223
  %sub = sub i64 100, %3, !dbg !225
  %cmp = icmp ugt i64 %sub, 1, !dbg !226
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !227

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !228
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !230
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !231
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !233
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !234

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !235
  %6 = load i64, i64* %dataLen, align 8, !dbg !238
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !239
  %7 = load i64, i64* %dataLen, align 8, !dbg !240
  %sub5 = sub i64 100, %7, !dbg !241
  %conv = trunc i64 %sub5 to i32, !dbg !242
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !243
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !244
  %cmp7 = icmp eq i8* %call6, null, !dbg !245
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !246

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !247
  %9 = load i8*, i8** %data, align 8, !dbg !249
  %10 = load i64, i64* %dataLen, align 8, !dbg !250
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !249
  store i8 0, i8* %arrayidx, align 1, !dbg !251
  br label %if.end, !dbg !252

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !253
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !254
  br label %if.end11, !dbg !255

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !256

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !257

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !258
  %tobool14 = icmp ne i32 %12, 0, !dbg !258
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !260

if.then15:                                        ; preds = %if.end13
  %13 = load i8*, i8** %data, align 8, !dbg !261
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !263
  br label %if.end17, !dbg !264

if.end17:                                         ; preds = %if.then15, %if.end13
  ret void, !dbg !265
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !266 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !267, metadata !DIExpression()), !dbg !268
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !269, metadata !DIExpression()), !dbg !270
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !270
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !270
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !271
  store i8* %arraydecay, i8** %data, align 8, !dbg !272
  %1 = load i32, i32* @STATIC_CONST_FALSE, align 4, !dbg !273
  %tobool = icmp ne i32 %1, 0, !dbg !273
  br i1 %tobool, label %if.then, label %if.else, !dbg !275

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !276
  br label %if.end, !dbg !278

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !279
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !281
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !282
  %tobool1 = icmp ne i32 %3, 0, !dbg !282
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !284

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !285
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !287
  br label %if.end4, !dbg !288

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !289
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !290 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !293, metadata !DIExpression()), !dbg !294
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !294
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !294
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !295
  store i8* %arraydecay, i8** %data, align 8, !dbg !296
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !297
  %tobool = icmp ne i32 %1, 0, !dbg !297
  br i1 %tobool, label %if.then, label %if.end, !dbg !299

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !300
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !302
  br label %if.end, !dbg !303

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !304
  %tobool1 = icmp ne i32 %3, 0, !dbg !304
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !306

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !307
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !309
  br label %if.end4, !dbg !310

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_04_good() #0 !dbg !312 {
entry:
  call void @goodB2G1(), !dbg !313
  call void @goodB2G2(), !dbg !314
  call void @goodG2B1(), !dbg !315
  call void @goodG2B2(), !dbg !316
  ret void, !dbg !317
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "STATIC_CONST_TRUE", scope: !2, file: !3, line: 34, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_04.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_013/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "STATIC_CONST_FALSE", scope: !2, file: !3, line: 35, type: !7, isLocal: false, isDefinition: true)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 12.0.0"}
!15 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_04_bad", scope: !3, file: !3, line: 39, type: !16, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !DILocalVariable(name: "data", scope: !15, file: !3, line: 41, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DILocation(line: 41, column: 12, scope: !15)
!22 = !DILocalVariable(name: "dataBuffer", scope: !15, file: !3, line: 42, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 42, column: 10, scope: !15)
!27 = !DILocation(line: 43, column: 12, scope: !15)
!28 = !DILocation(line: 43, column: 10, scope: !15)
!29 = !DILocation(line: 44, column: 8, scope: !30)
!30 = distinct !DILexicalBlock(scope: !15, file: !3, line: 44, column: 8)
!31 = !DILocation(line: 44, column: 8, scope: !15)
!32 = !DILocalVariable(name: "dataLen", scope: !33, file: !3, line: 48, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !3, line: 46, column: 9)
!34 = distinct !DILexicalBlock(scope: !30, file: !3, line: 45, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 48, column: 20, scope: !33)
!39 = !DILocation(line: 48, column: 37, scope: !33)
!40 = !DILocation(line: 48, column: 30, scope: !33)
!41 = !DILocalVariable(name: "pFile", scope: !33, file: !3, line: 49, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !44, line: 7, baseType: !45)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 49, size: 1728, elements: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !63, !65, !66, !67, !71, !73, !75, !79, !82, !84, !87, !90, !91, !92, !93, !94}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !45, file: !46, line: 51, baseType: !7, size: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !45, file: !46, line: 54, baseType: !19, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !45, file: !46, line: 55, baseType: !19, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !45, file: !46, line: 56, baseType: !19, size: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !45, file: !46, line: 57, baseType: !19, size: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !45, file: !46, line: 58, baseType: !19, size: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !45, file: !46, line: 59, baseType: !19, size: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !45, file: !46, line: 60, baseType: !19, size: 64, offset: 448)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !45, file: !46, line: 61, baseType: !19, size: 64, offset: 512)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !45, file: !46, line: 64, baseType: !19, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !45, file: !46, line: 65, baseType: !19, size: 64, offset: 640)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !45, file: !46, line: 66, baseType: !19, size: 64, offset: 704)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !45, file: !46, line: 68, baseType: !61, size: 64, offset: 768)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !46, line: 36, flags: DIFlagFwdDecl)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !45, file: !46, line: 70, baseType: !64, size: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !45, file: !46, line: 72, baseType: !7, size: 32, offset: 896)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !45, file: !46, line: 73, baseType: !7, size: 32, offset: 928)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !45, file: !46, line: 74, baseType: !68, size: 64, offset: 960)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !69, line: 152, baseType: !70)
!69 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!70 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !45, file: !46, line: 77, baseType: !72, size: 16, offset: 1024)
!72 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !45, file: !46, line: 78, baseType: !74, size: 8, offset: 1040)
!74 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !45, file: !46, line: 79, baseType: !76, size: 8, offset: 1048)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 8, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 1)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !45, file: !46, line: 81, baseType: !80, size: 64, offset: 1088)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !46, line: 43, baseType: null)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !45, file: !46, line: 89, baseType: !83, size: 64, offset: 1152)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !69, line: 153, baseType: !70)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !45, file: !46, line: 91, baseType: !85, size: 64, offset: 1216)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !46, line: 37, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !45, file: !46, line: 92, baseType: !88, size: 64, offset: 1280)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !46, line: 38, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !45, file: !46, line: 93, baseType: !64, size: 64, offset: 1344)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !45, file: !46, line: 94, baseType: !6, size: 64, offset: 1408)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !45, file: !46, line: 95, baseType: !35, size: 64, offset: 1472)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !45, file: !46, line: 96, baseType: !7, size: 32, offset: 1536)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !45, file: !46, line: 98, baseType: !95, size: 160, offset: 1568)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 160, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 20)
!98 = !DILocation(line: 49, column: 20, scope: !33)
!99 = !DILocation(line: 51, column: 21, scope: !100)
!100 = distinct !DILexicalBlock(scope: !33, file: !3, line: 51, column: 17)
!101 = !DILocation(line: 51, column: 20, scope: !100)
!102 = !DILocation(line: 51, column: 29, scope: !100)
!103 = !DILocation(line: 51, column: 17, scope: !33)
!104 = !DILocation(line: 53, column: 25, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !3, line: 52, column: 13)
!106 = !DILocation(line: 53, column: 23, scope: !105)
!107 = !DILocation(line: 54, column: 21, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !3, line: 54, column: 21)
!109 = !DILocation(line: 54, column: 27, scope: !108)
!110 = !DILocation(line: 54, column: 21, scope: !105)
!111 = !DILocation(line: 57, column: 31, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 57, column: 25)
!113 = distinct !DILexicalBlock(scope: !108, file: !3, line: 55, column: 17)
!114 = !DILocation(line: 57, column: 36, scope: !112)
!115 = !DILocation(line: 57, column: 35, scope: !112)
!116 = !DILocation(line: 57, column: 55, scope: !112)
!117 = !DILocation(line: 57, column: 54, scope: !112)
!118 = !DILocation(line: 57, column: 45, scope: !112)
!119 = !DILocation(line: 57, column: 65, scope: !112)
!120 = !DILocation(line: 57, column: 25, scope: !112)
!121 = !DILocation(line: 57, column: 72, scope: !112)
!122 = !DILocation(line: 57, column: 25, scope: !113)
!123 = !DILocation(line: 59, column: 25, scope: !124)
!124 = distinct !DILexicalBlock(scope: !112, file: !3, line: 58, column: 21)
!125 = !DILocation(line: 61, column: 25, scope: !124)
!126 = !DILocation(line: 61, column: 30, scope: !124)
!127 = !DILocation(line: 61, column: 39, scope: !124)
!128 = !DILocation(line: 62, column: 21, scope: !124)
!129 = !DILocation(line: 63, column: 28, scope: !113)
!130 = !DILocation(line: 63, column: 21, scope: !113)
!131 = !DILocation(line: 64, column: 17, scope: !113)
!132 = !DILocation(line: 65, column: 13, scope: !105)
!133 = !DILocation(line: 67, column: 5, scope: !34)
!134 = !DILocation(line: 68, column: 8, scope: !135)
!135 = distinct !DILexicalBlock(scope: !15, file: !3, line: 68, column: 8)
!136 = !DILocation(line: 68, column: 8, scope: !15)
!137 = !DILocation(line: 71, column: 16, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !3, line: 69, column: 5)
!139 = !DILocation(line: 71, column: 9, scope: !138)
!140 = !DILocation(line: 72, column: 5, scope: !138)
!141 = !DILocation(line: 73, column: 1, scope: !15)
!142 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 80, type: !16, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!143 = !DILocalVariable(name: "data", scope: !142, file: !3, line: 82, type: !19)
!144 = !DILocation(line: 82, column: 12, scope: !142)
!145 = !DILocalVariable(name: "dataBuffer", scope: !142, file: !3, line: 83, type: !23)
!146 = !DILocation(line: 83, column: 10, scope: !142)
!147 = !DILocation(line: 84, column: 12, scope: !142)
!148 = !DILocation(line: 84, column: 10, scope: !142)
!149 = !DILocation(line: 85, column: 8, scope: !150)
!150 = distinct !DILexicalBlock(scope: !142, file: !3, line: 85, column: 8)
!151 = !DILocation(line: 85, column: 8, scope: !142)
!152 = !DILocalVariable(name: "dataLen", scope: !153, file: !3, line: 89, type: !35)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 87, column: 9)
!154 = distinct !DILexicalBlock(scope: !150, file: !3, line: 86, column: 5)
!155 = !DILocation(line: 89, column: 20, scope: !153)
!156 = !DILocation(line: 89, column: 37, scope: !153)
!157 = !DILocation(line: 89, column: 30, scope: !153)
!158 = !DILocalVariable(name: "pFile", scope: !153, file: !3, line: 90, type: !42)
!159 = !DILocation(line: 90, column: 20, scope: !153)
!160 = !DILocation(line: 92, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !153, file: !3, line: 92, column: 17)
!162 = !DILocation(line: 92, column: 20, scope: !161)
!163 = !DILocation(line: 92, column: 29, scope: !161)
!164 = !DILocation(line: 92, column: 17, scope: !153)
!165 = !DILocation(line: 94, column: 25, scope: !166)
!166 = distinct !DILexicalBlock(scope: !161, file: !3, line: 93, column: 13)
!167 = !DILocation(line: 94, column: 23, scope: !166)
!168 = !DILocation(line: 95, column: 21, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !3, line: 95, column: 21)
!170 = !DILocation(line: 95, column: 27, scope: !169)
!171 = !DILocation(line: 95, column: 21, scope: !166)
!172 = !DILocation(line: 98, column: 31, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 98, column: 25)
!174 = distinct !DILexicalBlock(scope: !169, file: !3, line: 96, column: 17)
!175 = !DILocation(line: 98, column: 36, scope: !173)
!176 = !DILocation(line: 98, column: 35, scope: !173)
!177 = !DILocation(line: 98, column: 55, scope: !173)
!178 = !DILocation(line: 98, column: 54, scope: !173)
!179 = !DILocation(line: 98, column: 45, scope: !173)
!180 = !DILocation(line: 98, column: 65, scope: !173)
!181 = !DILocation(line: 98, column: 25, scope: !173)
!182 = !DILocation(line: 98, column: 72, scope: !173)
!183 = !DILocation(line: 98, column: 25, scope: !174)
!184 = !DILocation(line: 100, column: 25, scope: !185)
!185 = distinct !DILexicalBlock(scope: !173, file: !3, line: 99, column: 21)
!186 = !DILocation(line: 102, column: 25, scope: !185)
!187 = !DILocation(line: 102, column: 30, scope: !185)
!188 = !DILocation(line: 102, column: 39, scope: !185)
!189 = !DILocation(line: 103, column: 21, scope: !185)
!190 = !DILocation(line: 104, column: 28, scope: !174)
!191 = !DILocation(line: 104, column: 21, scope: !174)
!192 = !DILocation(line: 105, column: 17, scope: !174)
!193 = !DILocation(line: 106, column: 13, scope: !166)
!194 = !DILocation(line: 108, column: 5, scope: !154)
!195 = !DILocation(line: 109, column: 8, scope: !196)
!196 = distinct !DILexicalBlock(scope: !142, file: !3, line: 109, column: 8)
!197 = !DILocation(line: 109, column: 8, scope: !142)
!198 = !DILocation(line: 112, column: 9, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !3, line: 110, column: 5)
!200 = !DILocation(line: 113, column: 5, scope: !199)
!201 = !DILocation(line: 117, column: 24, scope: !202)
!202 = distinct !DILexicalBlock(scope: !196, file: !3, line: 115, column: 5)
!203 = !DILocation(line: 117, column: 9, scope: !202)
!204 = !DILocation(line: 119, column: 1, scope: !142)
!205 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 122, type: !16, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!206 = !DILocalVariable(name: "data", scope: !205, file: !3, line: 124, type: !19)
!207 = !DILocation(line: 124, column: 12, scope: !205)
!208 = !DILocalVariable(name: "dataBuffer", scope: !205, file: !3, line: 125, type: !23)
!209 = !DILocation(line: 125, column: 10, scope: !205)
!210 = !DILocation(line: 126, column: 12, scope: !205)
!211 = !DILocation(line: 126, column: 10, scope: !205)
!212 = !DILocation(line: 127, column: 8, scope: !213)
!213 = distinct !DILexicalBlock(scope: !205, file: !3, line: 127, column: 8)
!214 = !DILocation(line: 127, column: 8, scope: !205)
!215 = !DILocalVariable(name: "dataLen", scope: !216, file: !3, line: 131, type: !35)
!216 = distinct !DILexicalBlock(scope: !217, file: !3, line: 129, column: 9)
!217 = distinct !DILexicalBlock(scope: !213, file: !3, line: 128, column: 5)
!218 = !DILocation(line: 131, column: 20, scope: !216)
!219 = !DILocation(line: 131, column: 37, scope: !216)
!220 = !DILocation(line: 131, column: 30, scope: !216)
!221 = !DILocalVariable(name: "pFile", scope: !216, file: !3, line: 132, type: !42)
!222 = !DILocation(line: 132, column: 20, scope: !216)
!223 = !DILocation(line: 134, column: 21, scope: !224)
!224 = distinct !DILexicalBlock(scope: !216, file: !3, line: 134, column: 17)
!225 = !DILocation(line: 134, column: 20, scope: !224)
!226 = !DILocation(line: 134, column: 29, scope: !224)
!227 = !DILocation(line: 134, column: 17, scope: !216)
!228 = !DILocation(line: 136, column: 25, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !3, line: 135, column: 13)
!230 = !DILocation(line: 136, column: 23, scope: !229)
!231 = !DILocation(line: 137, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !3, line: 137, column: 21)
!233 = !DILocation(line: 137, column: 27, scope: !232)
!234 = !DILocation(line: 137, column: 21, scope: !229)
!235 = !DILocation(line: 140, column: 31, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 140, column: 25)
!237 = distinct !DILexicalBlock(scope: !232, file: !3, line: 138, column: 17)
!238 = !DILocation(line: 140, column: 36, scope: !236)
!239 = !DILocation(line: 140, column: 35, scope: !236)
!240 = !DILocation(line: 140, column: 55, scope: !236)
!241 = !DILocation(line: 140, column: 54, scope: !236)
!242 = !DILocation(line: 140, column: 45, scope: !236)
!243 = !DILocation(line: 140, column: 65, scope: !236)
!244 = !DILocation(line: 140, column: 25, scope: !236)
!245 = !DILocation(line: 140, column: 72, scope: !236)
!246 = !DILocation(line: 140, column: 25, scope: !237)
!247 = !DILocation(line: 142, column: 25, scope: !248)
!248 = distinct !DILexicalBlock(scope: !236, file: !3, line: 141, column: 21)
!249 = !DILocation(line: 144, column: 25, scope: !248)
!250 = !DILocation(line: 144, column: 30, scope: !248)
!251 = !DILocation(line: 144, column: 39, scope: !248)
!252 = !DILocation(line: 145, column: 21, scope: !248)
!253 = !DILocation(line: 146, column: 28, scope: !237)
!254 = !DILocation(line: 146, column: 21, scope: !237)
!255 = !DILocation(line: 147, column: 17, scope: !237)
!256 = !DILocation(line: 148, column: 13, scope: !229)
!257 = !DILocation(line: 150, column: 5, scope: !217)
!258 = !DILocation(line: 151, column: 8, scope: !259)
!259 = distinct !DILexicalBlock(scope: !205, file: !3, line: 151, column: 8)
!260 = !DILocation(line: 151, column: 8, scope: !205)
!261 = !DILocation(line: 154, column: 24, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !3, line: 152, column: 5)
!263 = !DILocation(line: 154, column: 9, scope: !262)
!264 = !DILocation(line: 155, column: 5, scope: !262)
!265 = !DILocation(line: 156, column: 1, scope: !205)
!266 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 159, type: !16, scopeLine: 160, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!267 = !DILocalVariable(name: "data", scope: !266, file: !3, line: 161, type: !19)
!268 = !DILocation(line: 161, column: 12, scope: !266)
!269 = !DILocalVariable(name: "dataBuffer", scope: !266, file: !3, line: 162, type: !23)
!270 = !DILocation(line: 162, column: 10, scope: !266)
!271 = !DILocation(line: 163, column: 12, scope: !266)
!272 = !DILocation(line: 163, column: 10, scope: !266)
!273 = !DILocation(line: 164, column: 8, scope: !274)
!274 = distinct !DILexicalBlock(scope: !266, file: !3, line: 164, column: 8)
!275 = !DILocation(line: 164, column: 8, scope: !266)
!276 = !DILocation(line: 167, column: 9, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !3, line: 165, column: 5)
!278 = !DILocation(line: 168, column: 5, scope: !277)
!279 = !DILocation(line: 172, column: 16, scope: !280)
!280 = distinct !DILexicalBlock(scope: !274, file: !3, line: 170, column: 5)
!281 = !DILocation(line: 172, column: 9, scope: !280)
!282 = !DILocation(line: 174, column: 8, scope: !283)
!283 = distinct !DILexicalBlock(scope: !266, file: !3, line: 174, column: 8)
!284 = !DILocation(line: 174, column: 8, scope: !266)
!285 = !DILocation(line: 177, column: 16, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !3, line: 175, column: 5)
!287 = !DILocation(line: 177, column: 9, scope: !286)
!288 = !DILocation(line: 178, column: 5, scope: !286)
!289 = !DILocation(line: 179, column: 1, scope: !266)
!290 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 182, type: !16, scopeLine: 183, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!291 = !DILocalVariable(name: "data", scope: !290, file: !3, line: 184, type: !19)
!292 = !DILocation(line: 184, column: 12, scope: !290)
!293 = !DILocalVariable(name: "dataBuffer", scope: !290, file: !3, line: 185, type: !23)
!294 = !DILocation(line: 185, column: 10, scope: !290)
!295 = !DILocation(line: 186, column: 12, scope: !290)
!296 = !DILocation(line: 186, column: 10, scope: !290)
!297 = !DILocation(line: 187, column: 8, scope: !298)
!298 = distinct !DILexicalBlock(scope: !290, file: !3, line: 187, column: 8)
!299 = !DILocation(line: 187, column: 8, scope: !290)
!300 = !DILocation(line: 190, column: 16, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !3, line: 188, column: 5)
!302 = !DILocation(line: 190, column: 9, scope: !301)
!303 = !DILocation(line: 191, column: 5, scope: !301)
!304 = !DILocation(line: 192, column: 8, scope: !305)
!305 = distinct !DILexicalBlock(scope: !290, file: !3, line: 192, column: 8)
!306 = !DILocation(line: 192, column: 8, scope: !290)
!307 = !DILocation(line: 195, column: 16, scope: !308)
!308 = distinct !DILexicalBlock(scope: !305, file: !3, line: 193, column: 5)
!309 = !DILocation(line: 195, column: 9, scope: !308)
!310 = !DILocation(line: 196, column: 5, scope: !308)
!311 = !DILocation(line: 197, column: 1, scope: !290)
!312 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_04_good", scope: !3, file: !3, line: 199, type: !16, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!313 = !DILocation(line: 201, column: 5, scope: !312)
!314 = !DILocation(line: 202, column: 5, scope: !312)
!315 = !DILocation(line: 203, column: 5, scope: !312)
!316 = !DILocation(line: 204, column: 5, scope: !312)
!317 = !DILocation(line: 205, column: 1, scope: !312)
