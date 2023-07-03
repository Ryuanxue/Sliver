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
@.str.3 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_14_bad() #0 !dbg !52 {
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
  %1 = load i32, i32* @globalFive, align 4, !dbg !64
  %cmp = icmp eq i32 %1, 5, !dbg !66
  br i1 %cmp, label %if.then, label %if.end14, !dbg !67

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !68, metadata !DIExpression()), !dbg !74
  %2 = load i8*, i8** %data, align 8, !dbg !75
  %call = call i64 @strlen(i8* %2) #7, !dbg !76
  store i64 %call, i64* %dataLen, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !77, metadata !DIExpression()), !dbg !133
  %3 = load i64, i64* %dataLen, align 8, !dbg !134
  %sub = sub i64 100, %3, !dbg !136
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !137
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !138

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !139
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !141
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !142
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !144
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !145

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !146
  %6 = load i64, i64* %dataLen, align 8, !dbg !149
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !150
  %7 = load i64, i64* %dataLen, align 8, !dbg !151
  %sub6 = sub i64 100, %7, !dbg !152
  %conv = trunc i64 %sub6 to i32, !dbg !153
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !154
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !155
  %cmp8 = icmp eq i8* %call7, null, !dbg !156
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !157

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !158
  %9 = load i8*, i8** %data, align 8, !dbg !160
  %10 = load i64, i64* %dataLen, align 8, !dbg !161
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !160
  store i8 0, i8* %arrayidx, align 1, !dbg !162
  br label %if.end, !dbg !163

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !164
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !165
  br label %if.end12, !dbg !166

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !167

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !168

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @globalFive, align 4, !dbg !169
  %cmp15 = icmp eq i32 %12, 5, !dbg !171
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !172

if.then17:                                        ; preds = %if.end14
  %13 = load i8*, i8** %data, align 8, !dbg !173
  %call18 = call i32 (i8*, ...) @printf(i8* %13), !dbg !175
  br label %if.end19, !dbg !176

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void, !dbg !177
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
define dso_local void @goodB2G1() #0 !dbg !178 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !181, metadata !DIExpression()), !dbg !182
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !182
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !182
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !183
  store i8* %arraydecay, i8** %data, align 8, !dbg !184
  %1 = load i32, i32* @globalFive, align 4, !dbg !185
  %cmp = icmp eq i32 %1, 5, !dbg !187
  br i1 %cmp, label %if.then, label %if.end14, !dbg !188

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !189, metadata !DIExpression()), !dbg !192
  %2 = load i8*, i8** %data, align 8, !dbg !193
  %call = call i64 @strlen(i8* %2) #7, !dbg !194
  store i64 %call, i64* %dataLen, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !195, metadata !DIExpression()), !dbg !196
  %3 = load i64, i64* %dataLen, align 8, !dbg !197
  %sub = sub i64 100, %3, !dbg !199
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !200
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !201

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !202
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !204
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !205
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !207
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !208

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !209
  %6 = load i64, i64* %dataLen, align 8, !dbg !212
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !213
  %7 = load i64, i64* %dataLen, align 8, !dbg !214
  %sub6 = sub i64 100, %7, !dbg !215
  %conv = trunc i64 %sub6 to i32, !dbg !216
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !217
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !218
  %cmp8 = icmp eq i8* %call7, null, !dbg !219
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !220

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !221
  %9 = load i8*, i8** %data, align 8, !dbg !223
  %10 = load i64, i64* %dataLen, align 8, !dbg !224
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !223
  store i8 0, i8* %arrayidx, align 1, !dbg !225
  br label %if.end, !dbg !226

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !227
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !228
  br label %if.end12, !dbg !229

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !230

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !231

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @globalFive, align 4, !dbg !232
  %cmp15 = icmp ne i32 %12, 5, !dbg !234
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !235

if.then17:                                        ; preds = %if.end14
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !236
  br label %if.end19, !dbg !238

if.else:                                          ; preds = %if.end14
  %13 = load i8*, i8** %data, align 8, !dbg !239
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !241
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  ret void, !dbg !242
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !243 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !246, metadata !DIExpression()), !dbg !247
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !247
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !247
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !248
  store i8* %arraydecay, i8** %data, align 8, !dbg !249
  %1 = load i32, i32* @globalFive, align 4, !dbg !250
  %cmp = icmp eq i32 %1, 5, !dbg !252
  br i1 %cmp, label %if.then, label %if.end14, !dbg !253

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !254, metadata !DIExpression()), !dbg !257
  %2 = load i8*, i8** %data, align 8, !dbg !258
  %call = call i64 @strlen(i8* %2) #7, !dbg !259
  store i64 %call, i64* %dataLen, align 8, !dbg !257
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !260, metadata !DIExpression()), !dbg !261
  %3 = load i64, i64* %dataLen, align 8, !dbg !262
  %sub = sub i64 100, %3, !dbg !264
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !265
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !266

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !267
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !269
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !270
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !272
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !273

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !274
  %6 = load i64, i64* %dataLen, align 8, !dbg !277
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !278
  %7 = load i64, i64* %dataLen, align 8, !dbg !279
  %sub6 = sub i64 100, %7, !dbg !280
  %conv = trunc i64 %sub6 to i32, !dbg !281
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !282
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !283
  %cmp8 = icmp eq i8* %call7, null, !dbg !284
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !285

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !286
  %9 = load i8*, i8** %data, align 8, !dbg !288
  %10 = load i64, i64* %dataLen, align 8, !dbg !289
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !288
  store i8 0, i8* %arrayidx, align 1, !dbg !290
  br label %if.end, !dbg !291

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !292
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !293
  br label %if.end12, !dbg !294

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !295

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !296

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @globalFive, align 4, !dbg !297
  %cmp15 = icmp eq i32 %12, 5, !dbg !299
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !300

if.then17:                                        ; preds = %if.end14
  %13 = load i8*, i8** %data, align 8, !dbg !301
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %13), !dbg !303
  br label %if.end19, !dbg !304

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void, !dbg !305
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !306 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !307, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !309, metadata !DIExpression()), !dbg !310
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !310
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !310
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !311
  store i8* %arraydecay, i8** %data, align 8, !dbg !312
  %1 = load i32, i32* @globalFive, align 4, !dbg !313
  %cmp = icmp ne i32 %1, 5, !dbg !315
  br i1 %cmp, label %if.then, label %if.else, !dbg !316

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !317
  br label %if.end, !dbg !319

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !320
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !322
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalFive, align 4, !dbg !323
  %cmp1 = icmp eq i32 %3, 5, !dbg !325
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !326

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !327
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !329
  br label %if.end4, !dbg !330

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !331
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !332 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !336
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !336
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !337
  store i8* %arraydecay, i8** %data, align 8, !dbg !338
  %1 = load i32, i32* @globalFive, align 4, !dbg !339
  %cmp = icmp eq i32 %1, 5, !dbg !341
  br i1 %cmp, label %if.then, label %if.end, !dbg !342

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !343
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !345
  br label %if.end, !dbg !346

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalFive, align 4, !dbg !347
  %cmp1 = icmp eq i32 %3, 5, !dbg !349
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !350

if.then2:                                         ; preds = %if.end
  %4 = load i8*, i8** %data, align 8, !dbg !351
  %call3 = call i32 (i8*, ...) @printf(i8* %4), !dbg !353
  br label %if.end4, !dbg !354

if.end4:                                          ; preds = %if.then2, %if.end
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_14_good() #0 !dbg !356 {
entry:
  call void @goodB2G1(), !dbg !357
  call void @goodB2G2(), !dbg !358
  call void @goodG2B1(), !dbg !359
  call void @goodG2B2(), !dbg !360
  ret void, !dbg !361
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !362 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !365, metadata !DIExpression()), !dbg !366
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !367
  %0 = load i8*, i8** %line.addr, align 8, !dbg !368
  %cmp = icmp ne i8* %0, null, !dbg !370
  br i1 %cmp, label %if.then, label %if.end, !dbg !371

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !372
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !374
  br label %if.end, !dbg !375

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.8, i64 0, i64 0)), !dbg !376
  ret void, !dbg !377
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !378 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !379, metadata !DIExpression()), !dbg !380
  %0 = load i8*, i8** %line.addr, align 8, !dbg !381
  %cmp = icmp ne i8* %0, null, !dbg !383
  br i1 %cmp, label %if.then, label %if.end, !dbg !384

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !387
  br label %if.end, !dbg !388

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !389
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !390 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load i32*, i32** %line.addr, align 8, !dbg !397
  %cmp = icmp ne i32* %0, null, !dbg !399
  br i1 %cmp, label %if.then, label %if.end, !dbg !400

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !401
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !403
  br label %if.end, !dbg !404

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !405
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !406 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !409, metadata !DIExpression()), !dbg !410
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !411
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !412
  ret void, !dbg !413
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !414 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !418, metadata !DIExpression()), !dbg !419
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !420
  %conv = sext i16 %0 to i32, !dbg !420
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.11, i64 0, i64 0), i32 %conv), !dbg !421
  ret void, !dbg !422
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !423 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !427, metadata !DIExpression()), !dbg !428
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !429
  %conv = fpext float %0 to double, !dbg !429
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.12, i64 0, i64 0), double %conv), !dbg !430
  ret void, !dbg !431
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !432 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !437
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !438
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !440 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !446, metadata !DIExpression()), !dbg !447
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !448
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !449
  ret void, !dbg !450
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !451 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !454, metadata !DIExpression()), !dbg !455
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !456
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !457
  ret void, !dbg !458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !459 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !462, metadata !DIExpression()), !dbg !463
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !464
  %conv = sext i8 %0 to i32, !dbg !464
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !465
  ret void, !dbg !466
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !467 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !470, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !472, metadata !DIExpression()), !dbg !476
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !477
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !478
  store i32 %0, i32* %arrayidx, align 4, !dbg !479
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !480
  store i32 0, i32* %arrayidx1, align 4, !dbg !481
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !482
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !483
  ret void, !dbg !484
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !485 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !488, metadata !DIExpression()), !dbg !489
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !490
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !491
  ret void, !dbg !492
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !493 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !496, metadata !DIExpression()), !dbg !497
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !498
  %conv = zext i8 %0 to i32, !dbg !498
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !499
  ret void, !dbg !500
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !501 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !505, metadata !DIExpression()), !dbg !506
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !507
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !508
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !510 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !520, metadata !DIExpression()), !dbg !521
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !522
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !523
  %1 = load i32, i32* %intOne, align 4, !dbg !523
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !524
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !525
  %3 = load i32, i32* %intTwo, align 4, !dbg !525
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !526
  ret void, !dbg !527
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !528 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !532, metadata !DIExpression()), !dbg !533
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !534, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.declare(metadata i64* %i, metadata !536, metadata !DIExpression()), !dbg !537
  store i64 0, i64* %i, align 8, !dbg !538
  br label %for.cond, !dbg !540

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !541
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !543
  %cmp = icmp ult i64 %0, %1, !dbg !544
  br i1 %cmp, label %for.body, label %for.end, !dbg !545

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !546
  %3 = load i64, i64* %i, align 8, !dbg !548
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !546
  %4 = load i8, i8* %arrayidx, align 1, !dbg !546
  %conv = zext i8 %4 to i32, !dbg !546
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !549
  br label %for.inc, !dbg !550

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !551
  %inc = add i64 %5, 1, !dbg !551
  store i64 %inc, i64* %i, align 8, !dbg !551
  br label %for.cond, !dbg !552, !llvm.loop !553

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !556
  ret void, !dbg !557
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !558 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !561, metadata !DIExpression()), !dbg !562
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !563, metadata !DIExpression()), !dbg !564
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !565, metadata !DIExpression()), !dbg !566
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !567, metadata !DIExpression()), !dbg !568
  store i64 0, i64* %numWritten, align 8, !dbg !568
  br label %while.cond, !dbg !569

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !570
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !571
  %cmp = icmp ult i64 %0, %1, !dbg !572
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !573

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !574
  %2 = load i16*, i16** %call, align 8, !dbg !574
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !574
  %4 = load i64, i64* %numWritten, align 8, !dbg !574
  %mul = mul i64 2, %4, !dbg !574
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !574
  %5 = load i8, i8* %arrayidx, align 1, !dbg !574
  %conv = sext i8 %5 to i32, !dbg !574
  %idxprom = sext i32 %conv to i64, !dbg !574
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !574
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !574
  %conv2 = zext i16 %6 to i32, !dbg !574
  %and = and i32 %conv2, 4096, !dbg !574
  %tobool = icmp ne i32 %and, 0, !dbg !574
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !575

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !576
  %7 = load i16*, i16** %call3, align 8, !dbg !576
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !576
  %9 = load i64, i64* %numWritten, align 8, !dbg !576
  %mul4 = mul i64 2, %9, !dbg !576
  %add = add i64 %mul4, 1, !dbg !576
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !576
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !576
  %conv6 = sext i8 %10 to i32, !dbg !576
  %idxprom7 = sext i32 %conv6 to i64, !dbg !576
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !576
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !576
  %conv9 = zext i16 %11 to i32, !dbg !576
  %and10 = and i32 %conv9, 4096, !dbg !576
  %tobool11 = icmp ne i32 %and10, 0, !dbg !575
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !577
  br i1 %12, label %while.body, label %while.end, !dbg !569

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !578, metadata !DIExpression()), !dbg !580
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !581
  %14 = load i64, i64* %numWritten, align 8, !dbg !582
  %mul12 = mul i64 2, %14, !dbg !583
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !581
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !584
  %15 = load i32, i32* %byte, align 4, !dbg !585
  %conv15 = trunc i32 %15 to i8, !dbg !586
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !587
  %17 = load i64, i64* %numWritten, align 8, !dbg !588
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !587
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !589
  %18 = load i64, i64* %numWritten, align 8, !dbg !590
  %inc = add i64 %18, 1, !dbg !590
  store i64 %inc, i64* %numWritten, align 8, !dbg !590
  br label %while.cond, !dbg !569, !llvm.loop !591

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !593
  ret i64 %19, !dbg !594
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !595 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !598, metadata !DIExpression()), !dbg !599
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !600, metadata !DIExpression()), !dbg !601
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !602, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !604, metadata !DIExpression()), !dbg !605
  store i64 0, i64* %numWritten, align 8, !dbg !605
  br label %while.cond, !dbg !606

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !607
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !608
  %cmp = icmp ult i64 %0, %1, !dbg !609
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !610

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !611
  %3 = load i64, i64* %numWritten, align 8, !dbg !612
  %mul = mul i64 2, %3, !dbg !613
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !611
  %4 = load i32, i32* %arrayidx, align 4, !dbg !611
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !614
  %tobool = icmp ne i32 %call, 0, !dbg !614
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !615

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !616
  %6 = load i64, i64* %numWritten, align 8, !dbg !617
  %mul1 = mul i64 2, %6, !dbg !618
  %add = add i64 %mul1, 1, !dbg !619
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !616
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !616
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !620
  %tobool4 = icmp ne i32 %call3, 0, !dbg !615
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !621
  br i1 %8, label %while.body, label %while.end, !dbg !606

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !622, metadata !DIExpression()), !dbg !624
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !625
  %10 = load i64, i64* %numWritten, align 8, !dbg !626
  %mul5 = mul i64 2, %10, !dbg !627
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !625
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !628
  %11 = load i32, i32* %byte, align 4, !dbg !629
  %conv = trunc i32 %11 to i8, !dbg !630
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !631
  %13 = load i64, i64* %numWritten, align 8, !dbg !632
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !631
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !633
  %14 = load i64, i64* %numWritten, align 8, !dbg !634
  %inc = add i64 %14, 1, !dbg !634
  store i64 %inc, i64* %numWritten, align 8, !dbg !634
  br label %while.cond, !dbg !606, !llvm.loop !635

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !637
  ret i64 %15, !dbg !638
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !639 {
entry:
  ret i32 1, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !643 {
entry:
  ret i32 0, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !645 {
entry:
  %call = call i32 @rand() #8, !dbg !646
  %rem = srem i32 %call, 2, !dbg !647
  ret i32 %rem, !dbg !648
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !683 {
entry:
  ret void, !dbg !684
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_023/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_14.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_023/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_14_bad", scope: !45, file: !45, line: 33, type: !53, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocation(line: 38, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 38, column: 8)
!66 = !DILocation(line: 38, column: 18, scope: !65)
!67 = !DILocation(line: 38, column: 8, scope: !52)
!68 = !DILocalVariable(name: "dataLen", scope: !69, file: !45, line: 42, type: !71)
!69 = distinct !DILexicalBlock(scope: !70, file: !45, line: 40, column: 9)
!70 = distinct !DILexicalBlock(scope: !65, file: !45, line: 39, column: 5)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !72, line: 46, baseType: !73)
!72 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DILocation(line: 42, column: 20, scope: !69)
!75 = !DILocation(line: 42, column: 37, scope: !69)
!76 = !DILocation(line: 42, column: 30, scope: !69)
!77 = !DILocalVariable(name: "pFile", scope: !69, file: !45, line: 43, type: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !80, line: 7, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !82, line: 49, size: 1728, elements: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !99, !101, !102, !103, !107, !108, !110, !114, !117, !119, !122, !125, !126, !127, !128, !129}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !81, file: !82, line: 51, baseType: !23, size: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !81, file: !82, line: 54, baseType: !42, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !81, file: !82, line: 55, baseType: !42, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !81, file: !82, line: 56, baseType: !42, size: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !81, file: !82, line: 57, baseType: !42, size: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !81, file: !82, line: 58, baseType: !42, size: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !81, file: !82, line: 59, baseType: !42, size: 64, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !81, file: !82, line: 60, baseType: !42, size: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !81, file: !82, line: 61, baseType: !42, size: 64, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !81, file: !82, line: 64, baseType: !42, size: 64, offset: 576)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !81, file: !82, line: 65, baseType: !42, size: 64, offset: 640)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !81, file: !82, line: 66, baseType: !42, size: 64, offset: 704)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !81, file: !82, line: 68, baseType: !97, size: 64, offset: 768)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !82, line: 36, flags: DIFlagFwdDecl)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !81, file: !82, line: 70, baseType: !100, size: 64, offset: 832)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !81, file: !82, line: 72, baseType: !23, size: 32, offset: 896)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !81, file: !82, line: 73, baseType: !23, size: 32, offset: 928)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !81, file: !82, line: 74, baseType: !104, size: 64, offset: 960)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !105, line: 152, baseType: !106)
!105 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!106 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !81, file: !82, line: 77, baseType: !24, size: 16, offset: 1024)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !81, file: !82, line: 78, baseType: !109, size: 8, offset: 1040)
!109 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !81, file: !82, line: 79, baseType: !111, size: 8, offset: 1048)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 1)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !81, file: !82, line: 81, baseType: !115, size: 64, offset: 1088)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !82, line: 43, baseType: null)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !81, file: !82, line: 89, baseType: !118, size: 64, offset: 1152)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !105, line: 153, baseType: !106)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !81, file: !82, line: 91, baseType: !120, size: 64, offset: 1216)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !82, line: 37, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !81, file: !82, line: 92, baseType: !123, size: 64, offset: 1280)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !82, line: 38, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !81, file: !82, line: 93, baseType: !100, size: 64, offset: 1344)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !81, file: !82, line: 94, baseType: !22, size: 64, offset: 1408)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !81, file: !82, line: 95, baseType: !71, size: 64, offset: 1472)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !81, file: !82, line: 96, baseType: !23, size: 32, offset: 1536)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !81, file: !82, line: 98, baseType: !130, size: 160, offset: 1568)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 20)
!133 = !DILocation(line: 43, column: 20, scope: !69)
!134 = !DILocation(line: 45, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !69, file: !45, line: 45, column: 17)
!136 = !DILocation(line: 45, column: 20, scope: !135)
!137 = !DILocation(line: 45, column: 29, scope: !135)
!138 = !DILocation(line: 45, column: 17, scope: !69)
!139 = !DILocation(line: 47, column: 25, scope: !140)
!140 = distinct !DILexicalBlock(scope: !135, file: !45, line: 46, column: 13)
!141 = !DILocation(line: 47, column: 23, scope: !140)
!142 = !DILocation(line: 48, column: 21, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !45, line: 48, column: 21)
!144 = !DILocation(line: 48, column: 27, scope: !143)
!145 = !DILocation(line: 48, column: 21, scope: !140)
!146 = !DILocation(line: 51, column: 31, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !45, line: 51, column: 25)
!148 = distinct !DILexicalBlock(scope: !143, file: !45, line: 49, column: 17)
!149 = !DILocation(line: 51, column: 36, scope: !147)
!150 = !DILocation(line: 51, column: 35, scope: !147)
!151 = !DILocation(line: 51, column: 55, scope: !147)
!152 = !DILocation(line: 51, column: 54, scope: !147)
!153 = !DILocation(line: 51, column: 45, scope: !147)
!154 = !DILocation(line: 51, column: 65, scope: !147)
!155 = !DILocation(line: 51, column: 25, scope: !147)
!156 = !DILocation(line: 51, column: 72, scope: !147)
!157 = !DILocation(line: 51, column: 25, scope: !148)
!158 = !DILocation(line: 53, column: 25, scope: !159)
!159 = distinct !DILexicalBlock(scope: !147, file: !45, line: 52, column: 21)
!160 = !DILocation(line: 55, column: 25, scope: !159)
!161 = !DILocation(line: 55, column: 30, scope: !159)
!162 = !DILocation(line: 55, column: 39, scope: !159)
!163 = !DILocation(line: 56, column: 21, scope: !159)
!164 = !DILocation(line: 57, column: 28, scope: !148)
!165 = !DILocation(line: 57, column: 21, scope: !148)
!166 = !DILocation(line: 58, column: 17, scope: !148)
!167 = !DILocation(line: 59, column: 13, scope: !140)
!168 = !DILocation(line: 61, column: 5, scope: !70)
!169 = !DILocation(line: 62, column: 8, scope: !170)
!170 = distinct !DILexicalBlock(scope: !52, file: !45, line: 62, column: 8)
!171 = !DILocation(line: 62, column: 18, scope: !170)
!172 = !DILocation(line: 62, column: 8, scope: !52)
!173 = !DILocation(line: 65, column: 16, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !45, line: 63, column: 5)
!175 = !DILocation(line: 65, column: 9, scope: !174)
!176 = !DILocation(line: 66, column: 5, scope: !174)
!177 = !DILocation(line: 67, column: 1, scope: !52)
!178 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 74, type: !53, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!179 = !DILocalVariable(name: "data", scope: !178, file: !45, line: 76, type: !42)
!180 = !DILocation(line: 76, column: 12, scope: !178)
!181 = !DILocalVariable(name: "dataBuffer", scope: !178, file: !45, line: 77, type: !58)
!182 = !DILocation(line: 77, column: 10, scope: !178)
!183 = !DILocation(line: 78, column: 12, scope: !178)
!184 = !DILocation(line: 78, column: 10, scope: !178)
!185 = !DILocation(line: 79, column: 8, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !45, line: 79, column: 8)
!187 = !DILocation(line: 79, column: 18, scope: !186)
!188 = !DILocation(line: 79, column: 8, scope: !178)
!189 = !DILocalVariable(name: "dataLen", scope: !190, file: !45, line: 83, type: !71)
!190 = distinct !DILexicalBlock(scope: !191, file: !45, line: 81, column: 9)
!191 = distinct !DILexicalBlock(scope: !186, file: !45, line: 80, column: 5)
!192 = !DILocation(line: 83, column: 20, scope: !190)
!193 = !DILocation(line: 83, column: 37, scope: !190)
!194 = !DILocation(line: 83, column: 30, scope: !190)
!195 = !DILocalVariable(name: "pFile", scope: !190, file: !45, line: 84, type: !78)
!196 = !DILocation(line: 84, column: 20, scope: !190)
!197 = !DILocation(line: 86, column: 21, scope: !198)
!198 = distinct !DILexicalBlock(scope: !190, file: !45, line: 86, column: 17)
!199 = !DILocation(line: 86, column: 20, scope: !198)
!200 = !DILocation(line: 86, column: 29, scope: !198)
!201 = !DILocation(line: 86, column: 17, scope: !190)
!202 = !DILocation(line: 88, column: 25, scope: !203)
!203 = distinct !DILexicalBlock(scope: !198, file: !45, line: 87, column: 13)
!204 = !DILocation(line: 88, column: 23, scope: !203)
!205 = !DILocation(line: 89, column: 21, scope: !206)
!206 = distinct !DILexicalBlock(scope: !203, file: !45, line: 89, column: 21)
!207 = !DILocation(line: 89, column: 27, scope: !206)
!208 = !DILocation(line: 89, column: 21, scope: !203)
!209 = !DILocation(line: 92, column: 31, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !45, line: 92, column: 25)
!211 = distinct !DILexicalBlock(scope: !206, file: !45, line: 90, column: 17)
!212 = !DILocation(line: 92, column: 36, scope: !210)
!213 = !DILocation(line: 92, column: 35, scope: !210)
!214 = !DILocation(line: 92, column: 55, scope: !210)
!215 = !DILocation(line: 92, column: 54, scope: !210)
!216 = !DILocation(line: 92, column: 45, scope: !210)
!217 = !DILocation(line: 92, column: 65, scope: !210)
!218 = !DILocation(line: 92, column: 25, scope: !210)
!219 = !DILocation(line: 92, column: 72, scope: !210)
!220 = !DILocation(line: 92, column: 25, scope: !211)
!221 = !DILocation(line: 94, column: 25, scope: !222)
!222 = distinct !DILexicalBlock(scope: !210, file: !45, line: 93, column: 21)
!223 = !DILocation(line: 96, column: 25, scope: !222)
!224 = !DILocation(line: 96, column: 30, scope: !222)
!225 = !DILocation(line: 96, column: 39, scope: !222)
!226 = !DILocation(line: 97, column: 21, scope: !222)
!227 = !DILocation(line: 98, column: 28, scope: !211)
!228 = !DILocation(line: 98, column: 21, scope: !211)
!229 = !DILocation(line: 99, column: 17, scope: !211)
!230 = !DILocation(line: 100, column: 13, scope: !203)
!231 = !DILocation(line: 102, column: 5, scope: !191)
!232 = !DILocation(line: 103, column: 8, scope: !233)
!233 = distinct !DILexicalBlock(scope: !178, file: !45, line: 103, column: 8)
!234 = !DILocation(line: 103, column: 18, scope: !233)
!235 = !DILocation(line: 103, column: 8, scope: !178)
!236 = !DILocation(line: 106, column: 9, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !45, line: 104, column: 5)
!238 = !DILocation(line: 107, column: 5, scope: !237)
!239 = !DILocation(line: 111, column: 24, scope: !240)
!240 = distinct !DILexicalBlock(scope: !233, file: !45, line: 109, column: 5)
!241 = !DILocation(line: 111, column: 9, scope: !240)
!242 = !DILocation(line: 113, column: 1, scope: !178)
!243 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 116, type: !53, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!244 = !DILocalVariable(name: "data", scope: !243, file: !45, line: 118, type: !42)
!245 = !DILocation(line: 118, column: 12, scope: !243)
!246 = !DILocalVariable(name: "dataBuffer", scope: !243, file: !45, line: 119, type: !58)
!247 = !DILocation(line: 119, column: 10, scope: !243)
!248 = !DILocation(line: 120, column: 12, scope: !243)
!249 = !DILocation(line: 120, column: 10, scope: !243)
!250 = !DILocation(line: 121, column: 8, scope: !251)
!251 = distinct !DILexicalBlock(scope: !243, file: !45, line: 121, column: 8)
!252 = !DILocation(line: 121, column: 18, scope: !251)
!253 = !DILocation(line: 121, column: 8, scope: !243)
!254 = !DILocalVariable(name: "dataLen", scope: !255, file: !45, line: 125, type: !71)
!255 = distinct !DILexicalBlock(scope: !256, file: !45, line: 123, column: 9)
!256 = distinct !DILexicalBlock(scope: !251, file: !45, line: 122, column: 5)
!257 = !DILocation(line: 125, column: 20, scope: !255)
!258 = !DILocation(line: 125, column: 37, scope: !255)
!259 = !DILocation(line: 125, column: 30, scope: !255)
!260 = !DILocalVariable(name: "pFile", scope: !255, file: !45, line: 126, type: !78)
!261 = !DILocation(line: 126, column: 20, scope: !255)
!262 = !DILocation(line: 128, column: 21, scope: !263)
!263 = distinct !DILexicalBlock(scope: !255, file: !45, line: 128, column: 17)
!264 = !DILocation(line: 128, column: 20, scope: !263)
!265 = !DILocation(line: 128, column: 29, scope: !263)
!266 = !DILocation(line: 128, column: 17, scope: !255)
!267 = !DILocation(line: 130, column: 25, scope: !268)
!268 = distinct !DILexicalBlock(scope: !263, file: !45, line: 129, column: 13)
!269 = !DILocation(line: 130, column: 23, scope: !268)
!270 = !DILocation(line: 131, column: 21, scope: !271)
!271 = distinct !DILexicalBlock(scope: !268, file: !45, line: 131, column: 21)
!272 = !DILocation(line: 131, column: 27, scope: !271)
!273 = !DILocation(line: 131, column: 21, scope: !268)
!274 = !DILocation(line: 134, column: 31, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !45, line: 134, column: 25)
!276 = distinct !DILexicalBlock(scope: !271, file: !45, line: 132, column: 17)
!277 = !DILocation(line: 134, column: 36, scope: !275)
!278 = !DILocation(line: 134, column: 35, scope: !275)
!279 = !DILocation(line: 134, column: 55, scope: !275)
!280 = !DILocation(line: 134, column: 54, scope: !275)
!281 = !DILocation(line: 134, column: 45, scope: !275)
!282 = !DILocation(line: 134, column: 65, scope: !275)
!283 = !DILocation(line: 134, column: 25, scope: !275)
!284 = !DILocation(line: 134, column: 72, scope: !275)
!285 = !DILocation(line: 134, column: 25, scope: !276)
!286 = !DILocation(line: 136, column: 25, scope: !287)
!287 = distinct !DILexicalBlock(scope: !275, file: !45, line: 135, column: 21)
!288 = !DILocation(line: 138, column: 25, scope: !287)
!289 = !DILocation(line: 138, column: 30, scope: !287)
!290 = !DILocation(line: 138, column: 39, scope: !287)
!291 = !DILocation(line: 139, column: 21, scope: !287)
!292 = !DILocation(line: 140, column: 28, scope: !276)
!293 = !DILocation(line: 140, column: 21, scope: !276)
!294 = !DILocation(line: 141, column: 17, scope: !276)
!295 = !DILocation(line: 142, column: 13, scope: !268)
!296 = !DILocation(line: 144, column: 5, scope: !256)
!297 = !DILocation(line: 145, column: 8, scope: !298)
!298 = distinct !DILexicalBlock(scope: !243, file: !45, line: 145, column: 8)
!299 = !DILocation(line: 145, column: 18, scope: !298)
!300 = !DILocation(line: 145, column: 8, scope: !243)
!301 = !DILocation(line: 148, column: 24, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !45, line: 146, column: 5)
!303 = !DILocation(line: 148, column: 9, scope: !302)
!304 = !DILocation(line: 149, column: 5, scope: !302)
!305 = !DILocation(line: 150, column: 1, scope: !243)
!306 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 153, type: !53, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!307 = !DILocalVariable(name: "data", scope: !306, file: !45, line: 155, type: !42)
!308 = !DILocation(line: 155, column: 12, scope: !306)
!309 = !DILocalVariable(name: "dataBuffer", scope: !306, file: !45, line: 156, type: !58)
!310 = !DILocation(line: 156, column: 10, scope: !306)
!311 = !DILocation(line: 157, column: 12, scope: !306)
!312 = !DILocation(line: 157, column: 10, scope: !306)
!313 = !DILocation(line: 158, column: 8, scope: !314)
!314 = distinct !DILexicalBlock(scope: !306, file: !45, line: 158, column: 8)
!315 = !DILocation(line: 158, column: 18, scope: !314)
!316 = !DILocation(line: 158, column: 8, scope: !306)
!317 = !DILocation(line: 161, column: 9, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !45, line: 159, column: 5)
!319 = !DILocation(line: 162, column: 5, scope: !318)
!320 = !DILocation(line: 166, column: 16, scope: !321)
!321 = distinct !DILexicalBlock(scope: !314, file: !45, line: 164, column: 5)
!322 = !DILocation(line: 166, column: 9, scope: !321)
!323 = !DILocation(line: 168, column: 8, scope: !324)
!324 = distinct !DILexicalBlock(scope: !306, file: !45, line: 168, column: 8)
!325 = !DILocation(line: 168, column: 18, scope: !324)
!326 = !DILocation(line: 168, column: 8, scope: !306)
!327 = !DILocation(line: 171, column: 16, scope: !328)
!328 = distinct !DILexicalBlock(scope: !324, file: !45, line: 169, column: 5)
!329 = !DILocation(line: 171, column: 9, scope: !328)
!330 = !DILocation(line: 172, column: 5, scope: !328)
!331 = !DILocation(line: 173, column: 1, scope: !306)
!332 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 176, type: !53, scopeLine: 177, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!333 = !DILocalVariable(name: "data", scope: !332, file: !45, line: 178, type: !42)
!334 = !DILocation(line: 178, column: 12, scope: !332)
!335 = !DILocalVariable(name: "dataBuffer", scope: !332, file: !45, line: 179, type: !58)
!336 = !DILocation(line: 179, column: 10, scope: !332)
!337 = !DILocation(line: 180, column: 12, scope: !332)
!338 = !DILocation(line: 180, column: 10, scope: !332)
!339 = !DILocation(line: 181, column: 8, scope: !340)
!340 = distinct !DILexicalBlock(scope: !332, file: !45, line: 181, column: 8)
!341 = !DILocation(line: 181, column: 18, scope: !340)
!342 = !DILocation(line: 181, column: 8, scope: !332)
!343 = !DILocation(line: 184, column: 16, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !45, line: 182, column: 5)
!345 = !DILocation(line: 184, column: 9, scope: !344)
!346 = !DILocation(line: 185, column: 5, scope: !344)
!347 = !DILocation(line: 186, column: 8, scope: !348)
!348 = distinct !DILexicalBlock(scope: !332, file: !45, line: 186, column: 8)
!349 = !DILocation(line: 186, column: 18, scope: !348)
!350 = !DILocation(line: 186, column: 8, scope: !332)
!351 = !DILocation(line: 189, column: 16, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !45, line: 187, column: 5)
!353 = !DILocation(line: 189, column: 9, scope: !352)
!354 = !DILocation(line: 190, column: 5, scope: !352)
!355 = !DILocation(line: 191, column: 1, scope: !332)
!356 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_14_good", scope: !45, file: !45, line: 193, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!357 = !DILocation(line: 195, column: 5, scope: !356)
!358 = !DILocation(line: 196, column: 5, scope: !356)
!359 = !DILocation(line: 197, column: 5, scope: !356)
!360 = !DILocation(line: 198, column: 5, scope: !356)
!361 = !DILocation(line: 199, column: 1, scope: !356)
!362 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !363, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !42}
!365 = !DILocalVariable(name: "line", arg: 1, scope: !362, file: !3, line: 11, type: !42)
!366 = !DILocation(line: 11, column: 25, scope: !362)
!367 = !DILocation(line: 13, column: 1, scope: !362)
!368 = !DILocation(line: 14, column: 8, scope: !369)
!369 = distinct !DILexicalBlock(scope: !362, file: !3, line: 14, column: 8)
!370 = !DILocation(line: 14, column: 13, scope: !369)
!371 = !DILocation(line: 14, column: 8, scope: !362)
!372 = !DILocation(line: 16, column: 24, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !3, line: 15, column: 5)
!374 = !DILocation(line: 16, column: 9, scope: !373)
!375 = !DILocation(line: 17, column: 5, scope: !373)
!376 = !DILocation(line: 18, column: 5, scope: !362)
!377 = !DILocation(line: 19, column: 1, scope: !362)
!378 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !363, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!379 = !DILocalVariable(name: "line", arg: 1, scope: !378, file: !3, line: 20, type: !42)
!380 = !DILocation(line: 20, column: 29, scope: !378)
!381 = !DILocation(line: 22, column: 8, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !3, line: 22, column: 8)
!383 = !DILocation(line: 22, column: 13, scope: !382)
!384 = !DILocation(line: 22, column: 8, scope: !378)
!385 = !DILocation(line: 24, column: 24, scope: !386)
!386 = distinct !DILexicalBlock(scope: !382, file: !3, line: 23, column: 5)
!387 = !DILocation(line: 24, column: 9, scope: !386)
!388 = !DILocation(line: 25, column: 5, scope: !386)
!389 = !DILocation(line: 26, column: 1, scope: !378)
!390 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !391, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !72, line: 74, baseType: !23)
!395 = !DILocalVariable(name: "line", arg: 1, scope: !390, file: !3, line: 27, type: !393)
!396 = !DILocation(line: 27, column: 29, scope: !390)
!397 = !DILocation(line: 29, column: 8, scope: !398)
!398 = distinct !DILexicalBlock(scope: !390, file: !3, line: 29, column: 8)
!399 = !DILocation(line: 29, column: 13, scope: !398)
!400 = !DILocation(line: 29, column: 8, scope: !390)
!401 = !DILocation(line: 31, column: 27, scope: !402)
!402 = distinct !DILexicalBlock(scope: !398, file: !3, line: 30, column: 5)
!403 = !DILocation(line: 31, column: 9, scope: !402)
!404 = !DILocation(line: 32, column: 5, scope: !402)
!405 = !DILocation(line: 33, column: 1, scope: !390)
!406 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !407, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !23}
!409 = !DILocalVariable(name: "intNumber", arg: 1, scope: !406, file: !3, line: 35, type: !23)
!410 = !DILocation(line: 35, column: 24, scope: !406)
!411 = !DILocation(line: 37, column: 20, scope: !406)
!412 = !DILocation(line: 37, column: 5, scope: !406)
!413 = !DILocation(line: 38, column: 1, scope: !406)
!414 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !415, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !417}
!417 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!418 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !414, file: !3, line: 40, type: !417)
!419 = !DILocation(line: 40, column: 28, scope: !414)
!420 = !DILocation(line: 42, column: 21, scope: !414)
!421 = !DILocation(line: 42, column: 5, scope: !414)
!422 = !DILocation(line: 43, column: 1, scope: !414)
!423 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !424, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !426}
!426 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!427 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !423, file: !3, line: 45, type: !426)
!428 = !DILocation(line: 45, column: 28, scope: !423)
!429 = !DILocation(line: 47, column: 20, scope: !423)
!430 = !DILocation(line: 47, column: 5, scope: !423)
!431 = !DILocation(line: 48, column: 1, scope: !423)
!432 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !433, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!433 = !DISubroutineType(types: !434)
!434 = !{null, !106}
!435 = !DILocalVariable(name: "longNumber", arg: 1, scope: !432, file: !3, line: 50, type: !106)
!436 = !DILocation(line: 50, column: 26, scope: !432)
!437 = !DILocation(line: 52, column: 21, scope: !432)
!438 = !DILocation(line: 52, column: 5, scope: !432)
!439 = !DILocation(line: 53, column: 1, scope: !432)
!440 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !441, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !443}
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !444, line: 27, baseType: !445)
!444 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !105, line: 44, baseType: !106)
!446 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !440, file: !3, line: 55, type: !443)
!447 = !DILocation(line: 55, column: 33, scope: !440)
!448 = !DILocation(line: 57, column: 29, scope: !440)
!449 = !DILocation(line: 57, column: 5, scope: !440)
!450 = !DILocation(line: 58, column: 1, scope: !440)
!451 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !452, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !71}
!454 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !451, file: !3, line: 60, type: !71)
!455 = !DILocation(line: 60, column: 29, scope: !451)
!456 = !DILocation(line: 62, column: 21, scope: !451)
!457 = !DILocation(line: 62, column: 5, scope: !451)
!458 = !DILocation(line: 63, column: 1, scope: !451)
!459 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !460, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !43}
!462 = !DILocalVariable(name: "charHex", arg: 1, scope: !459, file: !3, line: 65, type: !43)
!463 = !DILocation(line: 65, column: 29, scope: !459)
!464 = !DILocation(line: 67, column: 22, scope: !459)
!465 = !DILocation(line: 67, column: 5, scope: !459)
!466 = !DILocation(line: 68, column: 1, scope: !459)
!467 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !468, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !394}
!470 = !DILocalVariable(name: "wideChar", arg: 1, scope: !467, file: !3, line: 70, type: !394)
!471 = !DILocation(line: 70, column: 29, scope: !467)
!472 = !DILocalVariable(name: "s", scope: !467, file: !3, line: 74, type: !473)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 64, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 2)
!476 = !DILocation(line: 74, column: 13, scope: !467)
!477 = !DILocation(line: 75, column: 16, scope: !467)
!478 = !DILocation(line: 75, column: 9, scope: !467)
!479 = !DILocation(line: 75, column: 14, scope: !467)
!480 = !DILocation(line: 76, column: 9, scope: !467)
!481 = !DILocation(line: 76, column: 14, scope: !467)
!482 = !DILocation(line: 77, column: 21, scope: !467)
!483 = !DILocation(line: 77, column: 5, scope: !467)
!484 = !DILocation(line: 78, column: 1, scope: !467)
!485 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !486, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !7}
!488 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !485, file: !3, line: 80, type: !7)
!489 = !DILocation(line: 80, column: 33, scope: !485)
!490 = !DILocation(line: 82, column: 20, scope: !485)
!491 = !DILocation(line: 82, column: 5, scope: !485)
!492 = !DILocation(line: 83, column: 1, scope: !485)
!493 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !494, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !25}
!496 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !493, file: !3, line: 85, type: !25)
!497 = !DILocation(line: 85, column: 45, scope: !493)
!498 = !DILocation(line: 87, column: 22, scope: !493)
!499 = !DILocation(line: 87, column: 5, scope: !493)
!500 = !DILocation(line: 88, column: 1, scope: !493)
!501 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !502, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !504}
!504 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!505 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !501, file: !3, line: 90, type: !504)
!506 = !DILocation(line: 90, column: 29, scope: !501)
!507 = !DILocation(line: 92, column: 20, scope: !501)
!508 = !DILocation(line: 92, column: 5, scope: !501)
!509 = !DILocation(line: 93, column: 1, scope: !501)
!510 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !511, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !515, line: 100, baseType: !516)
!515 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_023/source_code")
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !515, line: 96, size: 64, elements: !517)
!517 = !{!518, !519}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !516, file: !515, line: 98, baseType: !23, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !516, file: !515, line: 99, baseType: !23, size: 32, offset: 32)
!520 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !510, file: !3, line: 95, type: !513)
!521 = !DILocation(line: 95, column: 40, scope: !510)
!522 = !DILocation(line: 97, column: 26, scope: !510)
!523 = !DILocation(line: 97, column: 47, scope: !510)
!524 = !DILocation(line: 97, column: 55, scope: !510)
!525 = !DILocation(line: 97, column: 76, scope: !510)
!526 = !DILocation(line: 97, column: 5, scope: !510)
!527 = !DILocation(line: 98, column: 1, scope: !510)
!528 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !529, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!529 = !DISubroutineType(types: !530)
!530 = !{null, !531, !71}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!532 = !DILocalVariable(name: "bytes", arg: 1, scope: !528, file: !3, line: 100, type: !531)
!533 = !DILocation(line: 100, column: 38, scope: !528)
!534 = !DILocalVariable(name: "numBytes", arg: 2, scope: !528, file: !3, line: 100, type: !71)
!535 = !DILocation(line: 100, column: 52, scope: !528)
!536 = !DILocalVariable(name: "i", scope: !528, file: !3, line: 102, type: !71)
!537 = !DILocation(line: 102, column: 12, scope: !528)
!538 = !DILocation(line: 103, column: 12, scope: !539)
!539 = distinct !DILexicalBlock(scope: !528, file: !3, line: 103, column: 5)
!540 = !DILocation(line: 103, column: 10, scope: !539)
!541 = !DILocation(line: 103, column: 17, scope: !542)
!542 = distinct !DILexicalBlock(scope: !539, file: !3, line: 103, column: 5)
!543 = !DILocation(line: 103, column: 21, scope: !542)
!544 = !DILocation(line: 103, column: 19, scope: !542)
!545 = !DILocation(line: 103, column: 5, scope: !539)
!546 = !DILocation(line: 105, column: 24, scope: !547)
!547 = distinct !DILexicalBlock(scope: !542, file: !3, line: 104, column: 5)
!548 = !DILocation(line: 105, column: 30, scope: !547)
!549 = !DILocation(line: 105, column: 9, scope: !547)
!550 = !DILocation(line: 106, column: 5, scope: !547)
!551 = !DILocation(line: 103, column: 31, scope: !542)
!552 = !DILocation(line: 103, column: 5, scope: !542)
!553 = distinct !{!553, !545, !554, !555}
!554 = !DILocation(line: 106, column: 5, scope: !539)
!555 = !{!"llvm.loop.mustprogress"}
!556 = !DILocation(line: 107, column: 5, scope: !528)
!557 = !DILocation(line: 108, column: 1, scope: !528)
!558 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !559, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DISubroutineType(types: !560)
!560 = !{!71, !531, !71, !42}
!561 = !DILocalVariable(name: "bytes", arg: 1, scope: !558, file: !3, line: 113, type: !531)
!562 = !DILocation(line: 113, column: 39, scope: !558)
!563 = !DILocalVariable(name: "numBytes", arg: 2, scope: !558, file: !3, line: 113, type: !71)
!564 = !DILocation(line: 113, column: 53, scope: !558)
!565 = !DILocalVariable(name: "hex", arg: 3, scope: !558, file: !3, line: 113, type: !42)
!566 = !DILocation(line: 113, column: 71, scope: !558)
!567 = !DILocalVariable(name: "numWritten", scope: !558, file: !3, line: 115, type: !71)
!568 = !DILocation(line: 115, column: 12, scope: !558)
!569 = !DILocation(line: 121, column: 5, scope: !558)
!570 = !DILocation(line: 121, column: 12, scope: !558)
!571 = !DILocation(line: 121, column: 25, scope: !558)
!572 = !DILocation(line: 121, column: 23, scope: !558)
!573 = !DILocation(line: 121, column: 34, scope: !558)
!574 = !DILocation(line: 121, column: 37, scope: !558)
!575 = !DILocation(line: 121, column: 67, scope: !558)
!576 = !DILocation(line: 121, column: 70, scope: !558)
!577 = !DILocation(line: 0, scope: !558)
!578 = !DILocalVariable(name: "byte", scope: !579, file: !3, line: 123, type: !23)
!579 = distinct !DILexicalBlock(scope: !558, file: !3, line: 122, column: 5)
!580 = !DILocation(line: 123, column: 13, scope: !579)
!581 = !DILocation(line: 124, column: 17, scope: !579)
!582 = !DILocation(line: 124, column: 25, scope: !579)
!583 = !DILocation(line: 124, column: 23, scope: !579)
!584 = !DILocation(line: 124, column: 9, scope: !579)
!585 = !DILocation(line: 125, column: 45, scope: !579)
!586 = !DILocation(line: 125, column: 29, scope: !579)
!587 = !DILocation(line: 125, column: 9, scope: !579)
!588 = !DILocation(line: 125, column: 15, scope: !579)
!589 = !DILocation(line: 125, column: 27, scope: !579)
!590 = !DILocation(line: 126, column: 9, scope: !579)
!591 = distinct !{!591, !569, !592, !555}
!592 = !DILocation(line: 127, column: 5, scope: !558)
!593 = !DILocation(line: 129, column: 12, scope: !558)
!594 = !DILocation(line: 129, column: 5, scope: !558)
!595 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !596, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DISubroutineType(types: !597)
!597 = !{!71, !531, !71, !393}
!598 = !DILocalVariable(name: "bytes", arg: 1, scope: !595, file: !3, line: 135, type: !531)
!599 = !DILocation(line: 135, column: 41, scope: !595)
!600 = !DILocalVariable(name: "numBytes", arg: 2, scope: !595, file: !3, line: 135, type: !71)
!601 = !DILocation(line: 135, column: 55, scope: !595)
!602 = !DILocalVariable(name: "hex", arg: 3, scope: !595, file: !3, line: 135, type: !393)
!603 = !DILocation(line: 135, column: 76, scope: !595)
!604 = !DILocalVariable(name: "numWritten", scope: !595, file: !3, line: 137, type: !71)
!605 = !DILocation(line: 137, column: 12, scope: !595)
!606 = !DILocation(line: 143, column: 5, scope: !595)
!607 = !DILocation(line: 143, column: 12, scope: !595)
!608 = !DILocation(line: 143, column: 25, scope: !595)
!609 = !DILocation(line: 143, column: 23, scope: !595)
!610 = !DILocation(line: 143, column: 34, scope: !595)
!611 = !DILocation(line: 143, column: 47, scope: !595)
!612 = !DILocation(line: 143, column: 55, scope: !595)
!613 = !DILocation(line: 143, column: 53, scope: !595)
!614 = !DILocation(line: 143, column: 37, scope: !595)
!615 = !DILocation(line: 143, column: 68, scope: !595)
!616 = !DILocation(line: 143, column: 81, scope: !595)
!617 = !DILocation(line: 143, column: 89, scope: !595)
!618 = !DILocation(line: 143, column: 87, scope: !595)
!619 = !DILocation(line: 143, column: 100, scope: !595)
!620 = !DILocation(line: 143, column: 71, scope: !595)
!621 = !DILocation(line: 0, scope: !595)
!622 = !DILocalVariable(name: "byte", scope: !623, file: !3, line: 145, type: !23)
!623 = distinct !DILexicalBlock(scope: !595, file: !3, line: 144, column: 5)
!624 = !DILocation(line: 145, column: 13, scope: !623)
!625 = !DILocation(line: 146, column: 18, scope: !623)
!626 = !DILocation(line: 146, column: 26, scope: !623)
!627 = !DILocation(line: 146, column: 24, scope: !623)
!628 = !DILocation(line: 146, column: 9, scope: !623)
!629 = !DILocation(line: 147, column: 45, scope: !623)
!630 = !DILocation(line: 147, column: 29, scope: !623)
!631 = !DILocation(line: 147, column: 9, scope: !623)
!632 = !DILocation(line: 147, column: 15, scope: !623)
!633 = !DILocation(line: 147, column: 27, scope: !623)
!634 = !DILocation(line: 148, column: 9, scope: !623)
!635 = distinct !{!635, !606, !636, !555}
!636 = !DILocation(line: 149, column: 5, scope: !595)
!637 = !DILocation(line: 151, column: 12, scope: !595)
!638 = !DILocation(line: 151, column: 5, scope: !595)
!639 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !640, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DISubroutineType(types: !641)
!641 = !{!23}
!642 = !DILocation(line: 158, column: 5, scope: !639)
!643 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !640, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DILocation(line: 163, column: 5, scope: !643)
!645 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !640, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!646 = !DILocation(line: 168, column: 13, scope: !645)
!647 = !DILocation(line: 168, column: 20, scope: !645)
!648 = !DILocation(line: 168, column: 5, scope: !645)
!649 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 187, column: 16, scope: !649)
!651 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 188, column: 16, scope: !651)
!653 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 189, column: 16, scope: !653)
!655 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!656 = !DILocation(line: 190, column: 16, scope: !655)
!657 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 191, column: 16, scope: !657)
!659 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 192, column: 16, scope: !659)
!661 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 193, column: 16, scope: !661)
!663 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 194, column: 16, scope: !663)
!665 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 195, column: 16, scope: !665)
!667 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 198, column: 15, scope: !667)
!669 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 199, column: 15, scope: !669)
!671 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 200, column: 15, scope: !671)
!673 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 201, column: 15, scope: !673)
!675 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 202, column: 15, scope: !675)
!677 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!678 = !DILocation(line: 203, column: 15, scope: !677)
!679 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!680 = !DILocation(line: 204, column: 15, scope: !679)
!681 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DILocation(line: 205, column: 15, scope: !681)
!683 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!684 = !DILocation(line: 206, column: 15, scope: !683)
