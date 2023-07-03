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
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_11_bad() #0 !dbg !52 {
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
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !64
  %tobool = icmp ne i32 %call, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.end14, !dbg !66

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !67, metadata !DIExpression()), !dbg !73
  %1 = load i8*, i8** %data, align 8, !dbg !74
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !75
  store i64 %call1, i64* %dataLen, align 8, !dbg !73
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !76, metadata !DIExpression()), !dbg !132
  %2 = load i64, i64* %dataLen, align 8, !dbg !133
  %sub = sub i64 100, %2, !dbg !135
  %cmp = icmp ugt i64 %sub, 1, !dbg !136
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !137

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !138
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !140
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !141
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !143
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !144

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !145
  %5 = load i64, i64* %dataLen, align 8, !dbg !148
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !149
  %6 = load i64, i64* %dataLen, align 8, !dbg !150
  %sub6 = sub i64 100, %6, !dbg !151
  %conv = trunc i64 %sub6 to i32, !dbg !152
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !153
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !154
  %cmp8 = icmp eq i8* %call7, null, !dbg !155
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !156

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !157
  %8 = load i8*, i8** %data, align 8, !dbg !159
  %9 = load i64, i64* %dataLen, align 8, !dbg !160
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !159
  store i8 0, i8* %arrayidx, align 1, !dbg !161
  br label %if.end, !dbg !162

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !163
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !164
  br label %if.end12, !dbg !165

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !166

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !167

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !168
  %tobool16 = icmp ne i32 %call15, 0, !dbg !168
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !170

if.then17:                                        ; preds = %if.end14
  %11 = load i8*, i8** %data, align 8, !dbg !171
  %call18 = call i32 (i8*, ...) @printf(i8* %11), !dbg !173
  br label %if.end19, !dbg !174

if.end19:                                         ; preds = %if.then17, %if.end14
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

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !176 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !179, metadata !DIExpression()), !dbg !180
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !180
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !180
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !181
  store i8* %arraydecay, i8** %data, align 8, !dbg !182
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !183
  %tobool = icmp ne i32 %call, 0, !dbg !183
  br i1 %tobool, label %if.then, label %if.end14, !dbg !185

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !186, metadata !DIExpression()), !dbg !189
  %1 = load i8*, i8** %data, align 8, !dbg !190
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !191
  store i64 %call1, i64* %dataLen, align 8, !dbg !189
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !192, metadata !DIExpression()), !dbg !193
  %2 = load i64, i64* %dataLen, align 8, !dbg !194
  %sub = sub i64 100, %2, !dbg !196
  %cmp = icmp ugt i64 %sub, 1, !dbg !197
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !198

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !199
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !201
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !202
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !204
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !205

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !206
  %5 = load i64, i64* %dataLen, align 8, !dbg !209
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !210
  %6 = load i64, i64* %dataLen, align 8, !dbg !211
  %sub6 = sub i64 100, %6, !dbg !212
  %conv = trunc i64 %sub6 to i32, !dbg !213
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !214
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !215
  %cmp8 = icmp eq i8* %call7, null, !dbg !216
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !217

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !218
  %8 = load i8*, i8** %data, align 8, !dbg !220
  %9 = load i64, i64* %dataLen, align 8, !dbg !221
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !220
  store i8 0, i8* %arrayidx, align 1, !dbg !222
  br label %if.end, !dbg !223

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !224
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !225
  br label %if.end12, !dbg !226

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !227

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !228

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 (...) bitcast (i32 ()* @globalReturnsFalse to i32 (...)*)(), !dbg !229
  %tobool16 = icmp ne i32 %call15, 0, !dbg !229
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !231

if.then17:                                        ; preds = %if.end14
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !232
  br label %if.end19, !dbg !234

if.else:                                          ; preds = %if.end14
  %11 = load i8*, i8** %data, align 8, !dbg !235
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %11), !dbg !237
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  ret void, !dbg !238
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !239 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !243
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !243
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !244
  store i8* %arraydecay, i8** %data, align 8, !dbg !245
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !246
  %tobool = icmp ne i32 %call, 0, !dbg !246
  br i1 %tobool, label %if.then, label %if.end14, !dbg !248

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !249, metadata !DIExpression()), !dbg !252
  %1 = load i8*, i8** %data, align 8, !dbg !253
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !254
  store i64 %call1, i64* %dataLen, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !255, metadata !DIExpression()), !dbg !256
  %2 = load i64, i64* %dataLen, align 8, !dbg !257
  %sub = sub i64 100, %2, !dbg !259
  %cmp = icmp ugt i64 %sub, 1, !dbg !260
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !261

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !262
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !264
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !265
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !267
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !268

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !269
  %5 = load i64, i64* %dataLen, align 8, !dbg !272
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !273
  %6 = load i64, i64* %dataLen, align 8, !dbg !274
  %sub6 = sub i64 100, %6, !dbg !275
  %conv = trunc i64 %sub6 to i32, !dbg !276
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !277
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !278
  %cmp8 = icmp eq i8* %call7, null, !dbg !279
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !280

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !281
  %8 = load i8*, i8** %data, align 8, !dbg !283
  %9 = load i64, i64* %dataLen, align 8, !dbg !284
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !283
  store i8 0, i8* %arrayidx, align 1, !dbg !285
  br label %if.end, !dbg !286

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !287
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !288
  br label %if.end12, !dbg !289

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !290

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !291

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !292
  %tobool16 = icmp ne i32 %call15, 0, !dbg !292
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !294

if.then17:                                        ; preds = %if.end14
  %11 = load i8*, i8** %data, align 8, !dbg !295
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %11), !dbg !297
  br label %if.end19, !dbg !298

if.end19:                                         ; preds = %if.then17, %if.end14
  ret void, !dbg !299
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !300 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !303, metadata !DIExpression()), !dbg !304
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !304
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !304
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !305
  store i8* %arraydecay, i8** %data, align 8, !dbg !306
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsFalse to i32 (...)*)(), !dbg !307
  %tobool = icmp ne i32 %call, 0, !dbg !307
  br i1 %tobool, label %if.then, label %if.else, !dbg !309

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)), !dbg !310
  br label %if.end, !dbg !312

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !313
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !315
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !316
  %tobool3 = icmp ne i32 %call2, 0, !dbg !316
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !318

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !319
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !321
  br label %if.end6, !dbg !322

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !323
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !324 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !325, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !327, metadata !DIExpression()), !dbg !328
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !328
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !328
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !329
  store i8* %arraydecay, i8** %data, align 8, !dbg !330
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !331
  %tobool = icmp ne i32 %call, 0, !dbg !331
  br i1 %tobool, label %if.then, label %if.end, !dbg !333

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !334
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !336
  br label %if.end, !dbg !337

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (...) bitcast (i32 ()* @globalReturnsTrue to i32 (...)*)(), !dbg !338
  %tobool3 = icmp ne i32 %call2, 0, !dbg !338
  br i1 %tobool3, label %if.then4, label %if.end6, !dbg !340

if.then4:                                         ; preds = %if.end
  %2 = load i8*, i8** %data, align 8, !dbg !341
  %call5 = call i32 (i8*, ...) @printf(i8* %2), !dbg !343
  br label %if.end6, !dbg !344

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !345
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_printf_11_good() #0 !dbg !346 {
entry:
  call void @goodB2G1(), !dbg !347
  call void @goodB2G2(), !dbg !348
  call void @goodG2B1(), !dbg !349
  call void @goodG2B2(), !dbg !350
  ret void, !dbg !351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !352 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !355, metadata !DIExpression()), !dbg !356
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !357
  %0 = load i8*, i8** %line.addr, align 8, !dbg !358
  %cmp = icmp ne i8* %0, null, !dbg !360
  br i1 %cmp, label %if.then, label %if.end, !dbg !361

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !362
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !364
  br label %if.end, !dbg !365

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.8, i64 0, i64 0)), !dbg !366
  ret void, !dbg !367
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !368 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !369, metadata !DIExpression()), !dbg !370
  %0 = load i8*, i8** %line.addr, align 8, !dbg !371
  %cmp = icmp ne i8* %0, null, !dbg !373
  br i1 %cmp, label %if.then, label %if.end, !dbg !374

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !375
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !377
  br label %if.end, !dbg !378

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !379
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !380 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load i32*, i32** %line.addr, align 8, !dbg !387
  %cmp = icmp ne i32* %0, null, !dbg !389
  br i1 %cmp, label %if.then, label %if.end, !dbg !390

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !391
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !393
  br label %if.end, !dbg !394

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !395
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !396 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !399, metadata !DIExpression()), !dbg !400
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !401
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.10, i64 0, i64 0), i32 %0), !dbg !402
  ret void, !dbg !403
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !404 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !408, metadata !DIExpression()), !dbg !409
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !410
  %conv = sext i16 %0 to i32, !dbg !410
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.11, i64 0, i64 0), i32 %conv), !dbg !411
  ret void, !dbg !412
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !413 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !417, metadata !DIExpression()), !dbg !418
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !419
  %conv = fpext float %0 to double, !dbg !419
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.12, i64 0, i64 0), double %conv), !dbg !420
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !422 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !427
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !430 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !436, metadata !DIExpression()), !dbg !437
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !438
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !439
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !441 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !444, metadata !DIExpression()), !dbg !445
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !446
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !447
  ret void, !dbg !448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !449 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !452, metadata !DIExpression()), !dbg !453
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !454
  %conv = sext i8 %0 to i32, !dbg !454
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !455
  ret void, !dbg !456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !457 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !460, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !462, metadata !DIExpression()), !dbg !466
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !467
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !468
  store i32 %0, i32* %arrayidx, align 4, !dbg !469
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !470
  store i32 0, i32* %arrayidx1, align 4, !dbg !471
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !472
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !473
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !475 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !478, metadata !DIExpression()), !dbg !479
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !480
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !481
  ret void, !dbg !482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !483 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !486, metadata !DIExpression()), !dbg !487
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !488
  %conv = zext i8 %0 to i32, !dbg !488
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !489
  ret void, !dbg !490
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !491 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !495, metadata !DIExpression()), !dbg !496
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !497
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !498
  ret void, !dbg !499
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !500 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !510, metadata !DIExpression()), !dbg !511
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !512
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !513
  %1 = load i32, i32* %intOne, align 4, !dbg !513
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !514
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !515
  %3 = load i32, i32* %intTwo, align 4, !dbg !515
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !516
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !518 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !522, metadata !DIExpression()), !dbg !523
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !524, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.declare(metadata i64* %i, metadata !526, metadata !DIExpression()), !dbg !527
  store i64 0, i64* %i, align 8, !dbg !528
  br label %for.cond, !dbg !530

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !531
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !533
  %cmp = icmp ult i64 %0, %1, !dbg !534
  br i1 %cmp, label %for.body, label %for.end, !dbg !535

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !536
  %3 = load i64, i64* %i, align 8, !dbg !538
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !536
  %4 = load i8, i8* %arrayidx, align 1, !dbg !536
  %conv = zext i8 %4 to i32, !dbg !536
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !539
  br label %for.inc, !dbg !540

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !541
  %inc = add i64 %5, 1, !dbg !541
  store i64 %inc, i64* %i, align 8, !dbg !541
  br label %for.cond, !dbg !542, !llvm.loop !543

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !546
  ret void, !dbg !547
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !548 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !551, metadata !DIExpression()), !dbg !552
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !553, metadata !DIExpression()), !dbg !554
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !555, metadata !DIExpression()), !dbg !556
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !557, metadata !DIExpression()), !dbg !558
  store i64 0, i64* %numWritten, align 8, !dbg !558
  br label %while.cond, !dbg !559

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !560
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !561
  %cmp = icmp ult i64 %0, %1, !dbg !562
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !563

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !564
  %2 = load i16*, i16** %call, align 8, !dbg !564
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !564
  %4 = load i64, i64* %numWritten, align 8, !dbg !564
  %mul = mul i64 2, %4, !dbg !564
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !564
  %5 = load i8, i8* %arrayidx, align 1, !dbg !564
  %conv = sext i8 %5 to i32, !dbg !564
  %idxprom = sext i32 %conv to i64, !dbg !564
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !564
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !564
  %conv2 = zext i16 %6 to i32, !dbg !564
  %and = and i32 %conv2, 4096, !dbg !564
  %tobool = icmp ne i32 %and, 0, !dbg !564
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !565

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !566
  %7 = load i16*, i16** %call3, align 8, !dbg !566
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !566
  %9 = load i64, i64* %numWritten, align 8, !dbg !566
  %mul4 = mul i64 2, %9, !dbg !566
  %add = add i64 %mul4, 1, !dbg !566
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !566
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !566
  %conv6 = sext i8 %10 to i32, !dbg !566
  %idxprom7 = sext i32 %conv6 to i64, !dbg !566
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !566
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !566
  %conv9 = zext i16 %11 to i32, !dbg !566
  %and10 = and i32 %conv9, 4096, !dbg !566
  %tobool11 = icmp ne i32 %and10, 0, !dbg !565
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !567
  br i1 %12, label %while.body, label %while.end, !dbg !559

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !568, metadata !DIExpression()), !dbg !570
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !571
  %14 = load i64, i64* %numWritten, align 8, !dbg !572
  %mul12 = mul i64 2, %14, !dbg !573
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !571
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !574
  %15 = load i32, i32* %byte, align 4, !dbg !575
  %conv15 = trunc i32 %15 to i8, !dbg !576
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !577
  %17 = load i64, i64* %numWritten, align 8, !dbg !578
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !577
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !579
  %18 = load i64, i64* %numWritten, align 8, !dbg !580
  %inc = add i64 %18, 1, !dbg !580
  store i64 %inc, i64* %numWritten, align 8, !dbg !580
  br label %while.cond, !dbg !559, !llvm.loop !581

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !583
  ret i64 %19, !dbg !584
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !585 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !588, metadata !DIExpression()), !dbg !589
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !590, metadata !DIExpression()), !dbg !591
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !592, metadata !DIExpression()), !dbg !593
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !594, metadata !DIExpression()), !dbg !595
  store i64 0, i64* %numWritten, align 8, !dbg !595
  br label %while.cond, !dbg !596

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !597
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !598
  %cmp = icmp ult i64 %0, %1, !dbg !599
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !600

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !601
  %3 = load i64, i64* %numWritten, align 8, !dbg !602
  %mul = mul i64 2, %3, !dbg !603
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !601
  %4 = load i32, i32* %arrayidx, align 4, !dbg !601
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !604
  %tobool = icmp ne i32 %call, 0, !dbg !604
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !605

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !606
  %6 = load i64, i64* %numWritten, align 8, !dbg !607
  %mul1 = mul i64 2, %6, !dbg !608
  %add = add i64 %mul1, 1, !dbg !609
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !606
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !606
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !610
  %tobool4 = icmp ne i32 %call3, 0, !dbg !605
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !611
  br i1 %8, label %while.body, label %while.end, !dbg !596

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !612, metadata !DIExpression()), !dbg !614
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !615
  %10 = load i64, i64* %numWritten, align 8, !dbg !616
  %mul5 = mul i64 2, %10, !dbg !617
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !615
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !618
  %11 = load i32, i32* %byte, align 4, !dbg !619
  %conv = trunc i32 %11 to i8, !dbg !620
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !621
  %13 = load i64, i64* %numWritten, align 8, !dbg !622
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !621
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !623
  %14 = load i64, i64* %numWritten, align 8, !dbg !624
  %inc = add i64 %14, 1, !dbg !624
  store i64 %inc, i64* %numWritten, align 8, !dbg !624
  br label %while.cond, !dbg !596, !llvm.loop !625

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !627
  ret i64 %15, !dbg !628
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !629 {
entry:
  ret i32 1, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !633 {
entry:
  ret i32 0, !dbg !634
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !635 {
entry:
  %call = call i32 @rand() #8, !dbg !636
  %rem = srem i32 %call, 2, !dbg !637
  ret i32 %rem, !dbg !638
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !639 {
entry:
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !641 {
entry:
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !645 {
entry:
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !673 {
entry:
  ret void, !dbg !674
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_020/source_code")
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
!45 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_printf_11.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_020/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_11_bad", scope: !45, file: !45, line: 33, type: !53, scopeLine: 34, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!66 = !DILocation(line: 38, column: 8, scope: !52)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 42, type: !70)
!68 = distinct !DILexicalBlock(scope: !69, file: !45, line: 40, column: 9)
!69 = distinct !DILexicalBlock(scope: !65, file: !45, line: 39, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 42, column: 20, scope: !68)
!74 = !DILocation(line: 42, column: 37, scope: !68)
!75 = !DILocation(line: 42, column: 30, scope: !68)
!76 = !DILocalVariable(name: "pFile", scope: !68, file: !45, line: 43, type: !77)
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
!132 = !DILocation(line: 43, column: 20, scope: !68)
!133 = !DILocation(line: 45, column: 21, scope: !134)
!134 = distinct !DILexicalBlock(scope: !68, file: !45, line: 45, column: 17)
!135 = !DILocation(line: 45, column: 20, scope: !134)
!136 = !DILocation(line: 45, column: 29, scope: !134)
!137 = !DILocation(line: 45, column: 17, scope: !68)
!138 = !DILocation(line: 47, column: 25, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !45, line: 46, column: 13)
!140 = !DILocation(line: 47, column: 23, scope: !139)
!141 = !DILocation(line: 48, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !45, line: 48, column: 21)
!143 = !DILocation(line: 48, column: 27, scope: !142)
!144 = !DILocation(line: 48, column: 21, scope: !139)
!145 = !DILocation(line: 51, column: 31, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !45, line: 51, column: 25)
!147 = distinct !DILexicalBlock(scope: !142, file: !45, line: 49, column: 17)
!148 = !DILocation(line: 51, column: 36, scope: !146)
!149 = !DILocation(line: 51, column: 35, scope: !146)
!150 = !DILocation(line: 51, column: 55, scope: !146)
!151 = !DILocation(line: 51, column: 54, scope: !146)
!152 = !DILocation(line: 51, column: 45, scope: !146)
!153 = !DILocation(line: 51, column: 65, scope: !146)
!154 = !DILocation(line: 51, column: 25, scope: !146)
!155 = !DILocation(line: 51, column: 72, scope: !146)
!156 = !DILocation(line: 51, column: 25, scope: !147)
!157 = !DILocation(line: 53, column: 25, scope: !158)
!158 = distinct !DILexicalBlock(scope: !146, file: !45, line: 52, column: 21)
!159 = !DILocation(line: 55, column: 25, scope: !158)
!160 = !DILocation(line: 55, column: 30, scope: !158)
!161 = !DILocation(line: 55, column: 39, scope: !158)
!162 = !DILocation(line: 56, column: 21, scope: !158)
!163 = !DILocation(line: 57, column: 28, scope: !147)
!164 = !DILocation(line: 57, column: 21, scope: !147)
!165 = !DILocation(line: 58, column: 17, scope: !147)
!166 = !DILocation(line: 59, column: 13, scope: !139)
!167 = !DILocation(line: 61, column: 5, scope: !69)
!168 = !DILocation(line: 62, column: 8, scope: !169)
!169 = distinct !DILexicalBlock(scope: !52, file: !45, line: 62, column: 8)
!170 = !DILocation(line: 62, column: 8, scope: !52)
!171 = !DILocation(line: 65, column: 16, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !45, line: 63, column: 5)
!173 = !DILocation(line: 65, column: 9, scope: !172)
!174 = !DILocation(line: 66, column: 5, scope: !172)
!175 = !DILocation(line: 67, column: 1, scope: !52)
!176 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 74, type: !53, scopeLine: 75, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!177 = !DILocalVariable(name: "data", scope: !176, file: !45, line: 76, type: !42)
!178 = !DILocation(line: 76, column: 12, scope: !176)
!179 = !DILocalVariable(name: "dataBuffer", scope: !176, file: !45, line: 77, type: !58)
!180 = !DILocation(line: 77, column: 10, scope: !176)
!181 = !DILocation(line: 78, column: 12, scope: !176)
!182 = !DILocation(line: 78, column: 10, scope: !176)
!183 = !DILocation(line: 79, column: 8, scope: !184)
!184 = distinct !DILexicalBlock(scope: !176, file: !45, line: 79, column: 8)
!185 = !DILocation(line: 79, column: 8, scope: !176)
!186 = !DILocalVariable(name: "dataLen", scope: !187, file: !45, line: 83, type: !70)
!187 = distinct !DILexicalBlock(scope: !188, file: !45, line: 81, column: 9)
!188 = distinct !DILexicalBlock(scope: !184, file: !45, line: 80, column: 5)
!189 = !DILocation(line: 83, column: 20, scope: !187)
!190 = !DILocation(line: 83, column: 37, scope: !187)
!191 = !DILocation(line: 83, column: 30, scope: !187)
!192 = !DILocalVariable(name: "pFile", scope: !187, file: !45, line: 84, type: !77)
!193 = !DILocation(line: 84, column: 20, scope: !187)
!194 = !DILocation(line: 86, column: 21, scope: !195)
!195 = distinct !DILexicalBlock(scope: !187, file: !45, line: 86, column: 17)
!196 = !DILocation(line: 86, column: 20, scope: !195)
!197 = !DILocation(line: 86, column: 29, scope: !195)
!198 = !DILocation(line: 86, column: 17, scope: !187)
!199 = !DILocation(line: 88, column: 25, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !45, line: 87, column: 13)
!201 = !DILocation(line: 88, column: 23, scope: !200)
!202 = !DILocation(line: 89, column: 21, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !45, line: 89, column: 21)
!204 = !DILocation(line: 89, column: 27, scope: !203)
!205 = !DILocation(line: 89, column: 21, scope: !200)
!206 = !DILocation(line: 92, column: 31, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !45, line: 92, column: 25)
!208 = distinct !DILexicalBlock(scope: !203, file: !45, line: 90, column: 17)
!209 = !DILocation(line: 92, column: 36, scope: !207)
!210 = !DILocation(line: 92, column: 35, scope: !207)
!211 = !DILocation(line: 92, column: 55, scope: !207)
!212 = !DILocation(line: 92, column: 54, scope: !207)
!213 = !DILocation(line: 92, column: 45, scope: !207)
!214 = !DILocation(line: 92, column: 65, scope: !207)
!215 = !DILocation(line: 92, column: 25, scope: !207)
!216 = !DILocation(line: 92, column: 72, scope: !207)
!217 = !DILocation(line: 92, column: 25, scope: !208)
!218 = !DILocation(line: 94, column: 25, scope: !219)
!219 = distinct !DILexicalBlock(scope: !207, file: !45, line: 93, column: 21)
!220 = !DILocation(line: 96, column: 25, scope: !219)
!221 = !DILocation(line: 96, column: 30, scope: !219)
!222 = !DILocation(line: 96, column: 39, scope: !219)
!223 = !DILocation(line: 97, column: 21, scope: !219)
!224 = !DILocation(line: 98, column: 28, scope: !208)
!225 = !DILocation(line: 98, column: 21, scope: !208)
!226 = !DILocation(line: 99, column: 17, scope: !208)
!227 = !DILocation(line: 100, column: 13, scope: !200)
!228 = !DILocation(line: 102, column: 5, scope: !188)
!229 = !DILocation(line: 103, column: 8, scope: !230)
!230 = distinct !DILexicalBlock(scope: !176, file: !45, line: 103, column: 8)
!231 = !DILocation(line: 103, column: 8, scope: !176)
!232 = !DILocation(line: 106, column: 9, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !45, line: 104, column: 5)
!234 = !DILocation(line: 107, column: 5, scope: !233)
!235 = !DILocation(line: 111, column: 24, scope: !236)
!236 = distinct !DILexicalBlock(scope: !230, file: !45, line: 109, column: 5)
!237 = !DILocation(line: 111, column: 9, scope: !236)
!238 = !DILocation(line: 113, column: 1, scope: !176)
!239 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 116, type: !53, scopeLine: 117, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!240 = !DILocalVariable(name: "data", scope: !239, file: !45, line: 118, type: !42)
!241 = !DILocation(line: 118, column: 12, scope: !239)
!242 = !DILocalVariable(name: "dataBuffer", scope: !239, file: !45, line: 119, type: !58)
!243 = !DILocation(line: 119, column: 10, scope: !239)
!244 = !DILocation(line: 120, column: 12, scope: !239)
!245 = !DILocation(line: 120, column: 10, scope: !239)
!246 = !DILocation(line: 121, column: 8, scope: !247)
!247 = distinct !DILexicalBlock(scope: !239, file: !45, line: 121, column: 8)
!248 = !DILocation(line: 121, column: 8, scope: !239)
!249 = !DILocalVariable(name: "dataLen", scope: !250, file: !45, line: 125, type: !70)
!250 = distinct !DILexicalBlock(scope: !251, file: !45, line: 123, column: 9)
!251 = distinct !DILexicalBlock(scope: !247, file: !45, line: 122, column: 5)
!252 = !DILocation(line: 125, column: 20, scope: !250)
!253 = !DILocation(line: 125, column: 37, scope: !250)
!254 = !DILocation(line: 125, column: 30, scope: !250)
!255 = !DILocalVariable(name: "pFile", scope: !250, file: !45, line: 126, type: !77)
!256 = !DILocation(line: 126, column: 20, scope: !250)
!257 = !DILocation(line: 128, column: 21, scope: !258)
!258 = distinct !DILexicalBlock(scope: !250, file: !45, line: 128, column: 17)
!259 = !DILocation(line: 128, column: 20, scope: !258)
!260 = !DILocation(line: 128, column: 29, scope: !258)
!261 = !DILocation(line: 128, column: 17, scope: !250)
!262 = !DILocation(line: 130, column: 25, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !45, line: 129, column: 13)
!264 = !DILocation(line: 130, column: 23, scope: !263)
!265 = !DILocation(line: 131, column: 21, scope: !266)
!266 = distinct !DILexicalBlock(scope: !263, file: !45, line: 131, column: 21)
!267 = !DILocation(line: 131, column: 27, scope: !266)
!268 = !DILocation(line: 131, column: 21, scope: !263)
!269 = !DILocation(line: 134, column: 31, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !45, line: 134, column: 25)
!271 = distinct !DILexicalBlock(scope: !266, file: !45, line: 132, column: 17)
!272 = !DILocation(line: 134, column: 36, scope: !270)
!273 = !DILocation(line: 134, column: 35, scope: !270)
!274 = !DILocation(line: 134, column: 55, scope: !270)
!275 = !DILocation(line: 134, column: 54, scope: !270)
!276 = !DILocation(line: 134, column: 45, scope: !270)
!277 = !DILocation(line: 134, column: 65, scope: !270)
!278 = !DILocation(line: 134, column: 25, scope: !270)
!279 = !DILocation(line: 134, column: 72, scope: !270)
!280 = !DILocation(line: 134, column: 25, scope: !271)
!281 = !DILocation(line: 136, column: 25, scope: !282)
!282 = distinct !DILexicalBlock(scope: !270, file: !45, line: 135, column: 21)
!283 = !DILocation(line: 138, column: 25, scope: !282)
!284 = !DILocation(line: 138, column: 30, scope: !282)
!285 = !DILocation(line: 138, column: 39, scope: !282)
!286 = !DILocation(line: 139, column: 21, scope: !282)
!287 = !DILocation(line: 140, column: 28, scope: !271)
!288 = !DILocation(line: 140, column: 21, scope: !271)
!289 = !DILocation(line: 141, column: 17, scope: !271)
!290 = !DILocation(line: 142, column: 13, scope: !263)
!291 = !DILocation(line: 144, column: 5, scope: !251)
!292 = !DILocation(line: 145, column: 8, scope: !293)
!293 = distinct !DILexicalBlock(scope: !239, file: !45, line: 145, column: 8)
!294 = !DILocation(line: 145, column: 8, scope: !239)
!295 = !DILocation(line: 148, column: 24, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !45, line: 146, column: 5)
!297 = !DILocation(line: 148, column: 9, scope: !296)
!298 = !DILocation(line: 149, column: 5, scope: !296)
!299 = !DILocation(line: 150, column: 1, scope: !239)
!300 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 153, type: !53, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!301 = !DILocalVariable(name: "data", scope: !300, file: !45, line: 155, type: !42)
!302 = !DILocation(line: 155, column: 12, scope: !300)
!303 = !DILocalVariable(name: "dataBuffer", scope: !300, file: !45, line: 156, type: !58)
!304 = !DILocation(line: 156, column: 10, scope: !300)
!305 = !DILocation(line: 157, column: 12, scope: !300)
!306 = !DILocation(line: 157, column: 10, scope: !300)
!307 = !DILocation(line: 158, column: 8, scope: !308)
!308 = distinct !DILexicalBlock(scope: !300, file: !45, line: 158, column: 8)
!309 = !DILocation(line: 158, column: 8, scope: !300)
!310 = !DILocation(line: 161, column: 9, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !45, line: 159, column: 5)
!312 = !DILocation(line: 162, column: 5, scope: !311)
!313 = !DILocation(line: 166, column: 16, scope: !314)
!314 = distinct !DILexicalBlock(scope: !308, file: !45, line: 164, column: 5)
!315 = !DILocation(line: 166, column: 9, scope: !314)
!316 = !DILocation(line: 168, column: 8, scope: !317)
!317 = distinct !DILexicalBlock(scope: !300, file: !45, line: 168, column: 8)
!318 = !DILocation(line: 168, column: 8, scope: !300)
!319 = !DILocation(line: 171, column: 16, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !45, line: 169, column: 5)
!321 = !DILocation(line: 171, column: 9, scope: !320)
!322 = !DILocation(line: 172, column: 5, scope: !320)
!323 = !DILocation(line: 173, column: 1, scope: !300)
!324 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 176, type: !53, scopeLine: 177, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!325 = !DILocalVariable(name: "data", scope: !324, file: !45, line: 178, type: !42)
!326 = !DILocation(line: 178, column: 12, scope: !324)
!327 = !DILocalVariable(name: "dataBuffer", scope: !324, file: !45, line: 179, type: !58)
!328 = !DILocation(line: 179, column: 10, scope: !324)
!329 = !DILocation(line: 180, column: 12, scope: !324)
!330 = !DILocation(line: 180, column: 10, scope: !324)
!331 = !DILocation(line: 181, column: 8, scope: !332)
!332 = distinct !DILexicalBlock(scope: !324, file: !45, line: 181, column: 8)
!333 = !DILocation(line: 181, column: 8, scope: !324)
!334 = !DILocation(line: 184, column: 16, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !45, line: 182, column: 5)
!336 = !DILocation(line: 184, column: 9, scope: !335)
!337 = !DILocation(line: 185, column: 5, scope: !335)
!338 = !DILocation(line: 186, column: 8, scope: !339)
!339 = distinct !DILexicalBlock(scope: !324, file: !45, line: 186, column: 8)
!340 = !DILocation(line: 186, column: 8, scope: !324)
!341 = !DILocation(line: 189, column: 16, scope: !342)
!342 = distinct !DILexicalBlock(scope: !339, file: !45, line: 187, column: 5)
!343 = !DILocation(line: 189, column: 9, scope: !342)
!344 = !DILocation(line: 190, column: 5, scope: !342)
!345 = !DILocation(line: 191, column: 1, scope: !324)
!346 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_printf_11_good", scope: !45, file: !45, line: 193, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!347 = !DILocation(line: 195, column: 5, scope: !346)
!348 = !DILocation(line: 196, column: 5, scope: !346)
!349 = !DILocation(line: 197, column: 5, scope: !346)
!350 = !DILocation(line: 198, column: 5, scope: !346)
!351 = !DILocation(line: 199, column: 1, scope: !346)
!352 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !353, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !42}
!355 = !DILocalVariable(name: "line", arg: 1, scope: !352, file: !3, line: 11, type: !42)
!356 = !DILocation(line: 11, column: 25, scope: !352)
!357 = !DILocation(line: 13, column: 1, scope: !352)
!358 = !DILocation(line: 14, column: 8, scope: !359)
!359 = distinct !DILexicalBlock(scope: !352, file: !3, line: 14, column: 8)
!360 = !DILocation(line: 14, column: 13, scope: !359)
!361 = !DILocation(line: 14, column: 8, scope: !352)
!362 = !DILocation(line: 16, column: 24, scope: !363)
!363 = distinct !DILexicalBlock(scope: !359, file: !3, line: 15, column: 5)
!364 = !DILocation(line: 16, column: 9, scope: !363)
!365 = !DILocation(line: 17, column: 5, scope: !363)
!366 = !DILocation(line: 18, column: 5, scope: !352)
!367 = !DILocation(line: 19, column: 1, scope: !352)
!368 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !353, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!369 = !DILocalVariable(name: "line", arg: 1, scope: !368, file: !3, line: 20, type: !42)
!370 = !DILocation(line: 20, column: 29, scope: !368)
!371 = !DILocation(line: 22, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !368, file: !3, line: 22, column: 8)
!373 = !DILocation(line: 22, column: 13, scope: !372)
!374 = !DILocation(line: 22, column: 8, scope: !368)
!375 = !DILocation(line: 24, column: 24, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !3, line: 23, column: 5)
!377 = !DILocation(line: 24, column: 9, scope: !376)
!378 = !DILocation(line: 25, column: 5, scope: !376)
!379 = !DILocation(line: 26, column: 1, scope: !368)
!380 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !381, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !383}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!385 = !DILocalVariable(name: "line", arg: 1, scope: !380, file: !3, line: 27, type: !383)
!386 = !DILocation(line: 27, column: 29, scope: !380)
!387 = !DILocation(line: 29, column: 8, scope: !388)
!388 = distinct !DILexicalBlock(scope: !380, file: !3, line: 29, column: 8)
!389 = !DILocation(line: 29, column: 13, scope: !388)
!390 = !DILocation(line: 29, column: 8, scope: !380)
!391 = !DILocation(line: 31, column: 27, scope: !392)
!392 = distinct !DILexicalBlock(scope: !388, file: !3, line: 30, column: 5)
!393 = !DILocation(line: 31, column: 9, scope: !392)
!394 = !DILocation(line: 32, column: 5, scope: !392)
!395 = !DILocation(line: 33, column: 1, scope: !380)
!396 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !397, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!397 = !DISubroutineType(types: !398)
!398 = !{null, !23}
!399 = !DILocalVariable(name: "intNumber", arg: 1, scope: !396, file: !3, line: 35, type: !23)
!400 = !DILocation(line: 35, column: 24, scope: !396)
!401 = !DILocation(line: 37, column: 20, scope: !396)
!402 = !DILocation(line: 37, column: 5, scope: !396)
!403 = !DILocation(line: 38, column: 1, scope: !396)
!404 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !405, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!405 = !DISubroutineType(types: !406)
!406 = !{null, !407}
!407 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!408 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !404, file: !3, line: 40, type: !407)
!409 = !DILocation(line: 40, column: 28, scope: !404)
!410 = !DILocation(line: 42, column: 21, scope: !404)
!411 = !DILocation(line: 42, column: 5, scope: !404)
!412 = !DILocation(line: 43, column: 1, scope: !404)
!413 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !414, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!414 = !DISubroutineType(types: !415)
!415 = !{null, !416}
!416 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!417 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !413, file: !3, line: 45, type: !416)
!418 = !DILocation(line: 45, column: 28, scope: !413)
!419 = !DILocation(line: 47, column: 20, scope: !413)
!420 = !DILocation(line: 47, column: 5, scope: !413)
!421 = !DILocation(line: 48, column: 1, scope: !413)
!422 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !423, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !105}
!425 = !DILocalVariable(name: "longNumber", arg: 1, scope: !422, file: !3, line: 50, type: !105)
!426 = !DILocation(line: 50, column: 26, scope: !422)
!427 = !DILocation(line: 52, column: 21, scope: !422)
!428 = !DILocation(line: 52, column: 5, scope: !422)
!429 = !DILocation(line: 53, column: 1, scope: !422)
!430 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !431, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !433}
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !434, line: 27, baseType: !435)
!434 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !104, line: 44, baseType: !105)
!436 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !430, file: !3, line: 55, type: !433)
!437 = !DILocation(line: 55, column: 33, scope: !430)
!438 = !DILocation(line: 57, column: 29, scope: !430)
!439 = !DILocation(line: 57, column: 5, scope: !430)
!440 = !DILocation(line: 58, column: 1, scope: !430)
!441 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !442, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !70}
!444 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !441, file: !3, line: 60, type: !70)
!445 = !DILocation(line: 60, column: 29, scope: !441)
!446 = !DILocation(line: 62, column: 21, scope: !441)
!447 = !DILocation(line: 62, column: 5, scope: !441)
!448 = !DILocation(line: 63, column: 1, scope: !441)
!449 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !450, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !43}
!452 = !DILocalVariable(name: "charHex", arg: 1, scope: !449, file: !3, line: 65, type: !43)
!453 = !DILocation(line: 65, column: 29, scope: !449)
!454 = !DILocation(line: 67, column: 22, scope: !449)
!455 = !DILocation(line: 67, column: 5, scope: !449)
!456 = !DILocation(line: 68, column: 1, scope: !449)
!457 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !458, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !384}
!460 = !DILocalVariable(name: "wideChar", arg: 1, scope: !457, file: !3, line: 70, type: !384)
!461 = !DILocation(line: 70, column: 29, scope: !457)
!462 = !DILocalVariable(name: "s", scope: !457, file: !3, line: 74, type: !463)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 64, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 2)
!466 = !DILocation(line: 74, column: 13, scope: !457)
!467 = !DILocation(line: 75, column: 16, scope: !457)
!468 = !DILocation(line: 75, column: 9, scope: !457)
!469 = !DILocation(line: 75, column: 14, scope: !457)
!470 = !DILocation(line: 76, column: 9, scope: !457)
!471 = !DILocation(line: 76, column: 14, scope: !457)
!472 = !DILocation(line: 77, column: 21, scope: !457)
!473 = !DILocation(line: 77, column: 5, scope: !457)
!474 = !DILocation(line: 78, column: 1, scope: !457)
!475 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !476, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !7}
!478 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !475, file: !3, line: 80, type: !7)
!479 = !DILocation(line: 80, column: 33, scope: !475)
!480 = !DILocation(line: 82, column: 20, scope: !475)
!481 = !DILocation(line: 82, column: 5, scope: !475)
!482 = !DILocation(line: 83, column: 1, scope: !475)
!483 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !484, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !25}
!486 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !483, file: !3, line: 85, type: !25)
!487 = !DILocation(line: 85, column: 45, scope: !483)
!488 = !DILocation(line: 87, column: 22, scope: !483)
!489 = !DILocation(line: 87, column: 5, scope: !483)
!490 = !DILocation(line: 88, column: 1, scope: !483)
!491 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !492, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!492 = !DISubroutineType(types: !493)
!493 = !{null, !494}
!494 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!495 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !491, file: !3, line: 90, type: !494)
!496 = !DILocation(line: 90, column: 29, scope: !491)
!497 = !DILocation(line: 92, column: 20, scope: !491)
!498 = !DILocation(line: 92, column: 5, scope: !491)
!499 = !DILocation(line: 93, column: 1, scope: !491)
!500 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !501, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !503}
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !505, line: 100, baseType: !506)
!505 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_020/source_code")
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !505, line: 96, size: 64, elements: !507)
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !506, file: !505, line: 98, baseType: !23, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !506, file: !505, line: 99, baseType: !23, size: 32, offset: 32)
!510 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !500, file: !3, line: 95, type: !503)
!511 = !DILocation(line: 95, column: 40, scope: !500)
!512 = !DILocation(line: 97, column: 26, scope: !500)
!513 = !DILocation(line: 97, column: 47, scope: !500)
!514 = !DILocation(line: 97, column: 55, scope: !500)
!515 = !DILocation(line: 97, column: 76, scope: !500)
!516 = !DILocation(line: 97, column: 5, scope: !500)
!517 = !DILocation(line: 98, column: 1, scope: !500)
!518 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !519, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !521, !70}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!522 = !DILocalVariable(name: "bytes", arg: 1, scope: !518, file: !3, line: 100, type: !521)
!523 = !DILocation(line: 100, column: 38, scope: !518)
!524 = !DILocalVariable(name: "numBytes", arg: 2, scope: !518, file: !3, line: 100, type: !70)
!525 = !DILocation(line: 100, column: 52, scope: !518)
!526 = !DILocalVariable(name: "i", scope: !518, file: !3, line: 102, type: !70)
!527 = !DILocation(line: 102, column: 12, scope: !518)
!528 = !DILocation(line: 103, column: 12, scope: !529)
!529 = distinct !DILexicalBlock(scope: !518, file: !3, line: 103, column: 5)
!530 = !DILocation(line: 103, column: 10, scope: !529)
!531 = !DILocation(line: 103, column: 17, scope: !532)
!532 = distinct !DILexicalBlock(scope: !529, file: !3, line: 103, column: 5)
!533 = !DILocation(line: 103, column: 21, scope: !532)
!534 = !DILocation(line: 103, column: 19, scope: !532)
!535 = !DILocation(line: 103, column: 5, scope: !529)
!536 = !DILocation(line: 105, column: 24, scope: !537)
!537 = distinct !DILexicalBlock(scope: !532, file: !3, line: 104, column: 5)
!538 = !DILocation(line: 105, column: 30, scope: !537)
!539 = !DILocation(line: 105, column: 9, scope: !537)
!540 = !DILocation(line: 106, column: 5, scope: !537)
!541 = !DILocation(line: 103, column: 31, scope: !532)
!542 = !DILocation(line: 103, column: 5, scope: !532)
!543 = distinct !{!543, !535, !544, !545}
!544 = !DILocation(line: 106, column: 5, scope: !529)
!545 = !{!"llvm.loop.mustprogress"}
!546 = !DILocation(line: 107, column: 5, scope: !518)
!547 = !DILocation(line: 108, column: 1, scope: !518)
!548 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !549, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!549 = !DISubroutineType(types: !550)
!550 = !{!70, !521, !70, !42}
!551 = !DILocalVariable(name: "bytes", arg: 1, scope: !548, file: !3, line: 113, type: !521)
!552 = !DILocation(line: 113, column: 39, scope: !548)
!553 = !DILocalVariable(name: "numBytes", arg: 2, scope: !548, file: !3, line: 113, type: !70)
!554 = !DILocation(line: 113, column: 53, scope: !548)
!555 = !DILocalVariable(name: "hex", arg: 3, scope: !548, file: !3, line: 113, type: !42)
!556 = !DILocation(line: 113, column: 71, scope: !548)
!557 = !DILocalVariable(name: "numWritten", scope: !548, file: !3, line: 115, type: !70)
!558 = !DILocation(line: 115, column: 12, scope: !548)
!559 = !DILocation(line: 121, column: 5, scope: !548)
!560 = !DILocation(line: 121, column: 12, scope: !548)
!561 = !DILocation(line: 121, column: 25, scope: !548)
!562 = !DILocation(line: 121, column: 23, scope: !548)
!563 = !DILocation(line: 121, column: 34, scope: !548)
!564 = !DILocation(line: 121, column: 37, scope: !548)
!565 = !DILocation(line: 121, column: 67, scope: !548)
!566 = !DILocation(line: 121, column: 70, scope: !548)
!567 = !DILocation(line: 0, scope: !548)
!568 = !DILocalVariable(name: "byte", scope: !569, file: !3, line: 123, type: !23)
!569 = distinct !DILexicalBlock(scope: !548, file: !3, line: 122, column: 5)
!570 = !DILocation(line: 123, column: 13, scope: !569)
!571 = !DILocation(line: 124, column: 17, scope: !569)
!572 = !DILocation(line: 124, column: 25, scope: !569)
!573 = !DILocation(line: 124, column: 23, scope: !569)
!574 = !DILocation(line: 124, column: 9, scope: !569)
!575 = !DILocation(line: 125, column: 45, scope: !569)
!576 = !DILocation(line: 125, column: 29, scope: !569)
!577 = !DILocation(line: 125, column: 9, scope: !569)
!578 = !DILocation(line: 125, column: 15, scope: !569)
!579 = !DILocation(line: 125, column: 27, scope: !569)
!580 = !DILocation(line: 126, column: 9, scope: !569)
!581 = distinct !{!581, !559, !582, !545}
!582 = !DILocation(line: 127, column: 5, scope: !548)
!583 = !DILocation(line: 129, column: 12, scope: !548)
!584 = !DILocation(line: 129, column: 5, scope: !548)
!585 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !586, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!586 = !DISubroutineType(types: !587)
!587 = !{!70, !521, !70, !383}
!588 = !DILocalVariable(name: "bytes", arg: 1, scope: !585, file: !3, line: 135, type: !521)
!589 = !DILocation(line: 135, column: 41, scope: !585)
!590 = !DILocalVariable(name: "numBytes", arg: 2, scope: !585, file: !3, line: 135, type: !70)
!591 = !DILocation(line: 135, column: 55, scope: !585)
!592 = !DILocalVariable(name: "hex", arg: 3, scope: !585, file: !3, line: 135, type: !383)
!593 = !DILocation(line: 135, column: 76, scope: !585)
!594 = !DILocalVariable(name: "numWritten", scope: !585, file: !3, line: 137, type: !70)
!595 = !DILocation(line: 137, column: 12, scope: !585)
!596 = !DILocation(line: 143, column: 5, scope: !585)
!597 = !DILocation(line: 143, column: 12, scope: !585)
!598 = !DILocation(line: 143, column: 25, scope: !585)
!599 = !DILocation(line: 143, column: 23, scope: !585)
!600 = !DILocation(line: 143, column: 34, scope: !585)
!601 = !DILocation(line: 143, column: 47, scope: !585)
!602 = !DILocation(line: 143, column: 55, scope: !585)
!603 = !DILocation(line: 143, column: 53, scope: !585)
!604 = !DILocation(line: 143, column: 37, scope: !585)
!605 = !DILocation(line: 143, column: 68, scope: !585)
!606 = !DILocation(line: 143, column: 81, scope: !585)
!607 = !DILocation(line: 143, column: 89, scope: !585)
!608 = !DILocation(line: 143, column: 87, scope: !585)
!609 = !DILocation(line: 143, column: 100, scope: !585)
!610 = !DILocation(line: 143, column: 71, scope: !585)
!611 = !DILocation(line: 0, scope: !585)
!612 = !DILocalVariable(name: "byte", scope: !613, file: !3, line: 145, type: !23)
!613 = distinct !DILexicalBlock(scope: !585, file: !3, line: 144, column: 5)
!614 = !DILocation(line: 145, column: 13, scope: !613)
!615 = !DILocation(line: 146, column: 18, scope: !613)
!616 = !DILocation(line: 146, column: 26, scope: !613)
!617 = !DILocation(line: 146, column: 24, scope: !613)
!618 = !DILocation(line: 146, column: 9, scope: !613)
!619 = !DILocation(line: 147, column: 45, scope: !613)
!620 = !DILocation(line: 147, column: 29, scope: !613)
!621 = !DILocation(line: 147, column: 9, scope: !613)
!622 = !DILocation(line: 147, column: 15, scope: !613)
!623 = !DILocation(line: 147, column: 27, scope: !613)
!624 = !DILocation(line: 148, column: 9, scope: !613)
!625 = distinct !{!625, !596, !626, !545}
!626 = !DILocation(line: 149, column: 5, scope: !585)
!627 = !DILocation(line: 151, column: 12, scope: !585)
!628 = !DILocation(line: 151, column: 5, scope: !585)
!629 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !630, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DISubroutineType(types: !631)
!631 = !{!23}
!632 = !DILocation(line: 158, column: 5, scope: !629)
!633 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !630, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 163, column: 5, scope: !633)
!635 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !630, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!636 = !DILocation(line: 168, column: 13, scope: !635)
!637 = !DILocation(line: 168, column: 20, scope: !635)
!638 = !DILocation(line: 168, column: 5, scope: !635)
!639 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 187, column: 16, scope: !639)
!641 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DILocation(line: 188, column: 16, scope: !641)
!643 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DILocation(line: 189, column: 16, scope: !643)
!645 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!646 = !DILocation(line: 190, column: 16, scope: !645)
!647 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DILocation(line: 191, column: 16, scope: !647)
!649 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 192, column: 16, scope: !649)
!651 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 193, column: 16, scope: !651)
!653 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 194, column: 16, scope: !653)
!655 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!656 = !DILocation(line: 195, column: 16, scope: !655)
!657 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 198, column: 15, scope: !657)
!659 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 199, column: 15, scope: !659)
!661 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 200, column: 15, scope: !661)
!663 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 201, column: 15, scope: !663)
!665 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 202, column: 15, scope: !665)
!667 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 203, column: 15, scope: !667)
!669 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 204, column: 15, scope: !669)
!671 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 205, column: 15, scope: !671)
!673 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 206, column: 15, scope: !673)
