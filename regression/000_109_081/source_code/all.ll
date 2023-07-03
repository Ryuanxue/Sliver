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
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"15\00", align 1
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
@.str.4.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.13 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6.14 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
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
define dso_local i32 @staticReturnsTrue() #0 !dbg !52 {
entry:
  ret i32 1, !dbg !55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsFalse() #0 !dbg !56 {
entry:
  ret i32 0, !dbg !57
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_08_bad() #0 !dbg !58 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !63, metadata !DIExpression()), !dbg !67
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !67
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !68
  store i8* %arraydecay, i8** %data, align 8, !dbg !69
  %call = call i32 @staticReturnsTrue(), !dbg !70
  %tobool = icmp ne i32 %call, 0, !dbg !70
  br i1 %tobool, label %if.then, label %if.end14, !dbg !72

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !73, metadata !DIExpression()), !dbg !79
  %1 = load i8*, i8** %data, align 8, !dbg !80
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !81
  store i64 %call1, i64* %dataLen, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !82, metadata !DIExpression()), !dbg !138
  %2 = load i64, i64* %dataLen, align 8, !dbg !139
  %sub = sub i64 100, %2, !dbg !141
  %cmp = icmp ugt i64 %sub, 1, !dbg !142
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !143

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !144
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !146
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !147
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !149
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !150

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !151
  %5 = load i64, i64* %dataLen, align 8, !dbg !154
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !155
  %6 = load i64, i64* %dataLen, align 8, !dbg !156
  %sub6 = sub i64 100, %6, !dbg !157
  %conv = trunc i64 %sub6 to i32, !dbg !158
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !159
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !160
  %cmp8 = icmp eq i8* %call7, null, !dbg !161
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !162

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !163
  %8 = load i8*, i8** %data, align 8, !dbg !165
  %9 = load i64, i64* %dataLen, align 8, !dbg !166
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !165
  store i8 0, i8* %arrayidx, align 1, !dbg !167
  br label %if.end, !dbg !168

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !169
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !170
  br label %if.end12, !dbg !171

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !172

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !173

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 @staticReturnsTrue(), !dbg !174
  %tobool16 = icmp ne i32 %call15, 0, !dbg !174
  br i1 %tobool16, label %if.then17, label %if.end26, !dbg !176

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !177, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %n, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !183, metadata !DIExpression()), !dbg !184
  %11 = load i8*, i8** %data, align 8, !dbg !185
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !187
  %cmp19 = icmp eq i32 %call18, 1, !dbg !188
  br i1 %cmp19, label %if.then21, label %if.end25, !dbg !189

if.then21:                                        ; preds = %if.then17
  store i32 0, i32* %intVariable, align 4, !dbg !190
  store i32 0, i32* %i, align 4, !dbg !192
  br label %for.cond, !dbg !194

for.cond:                                         ; preds = %for.inc, %if.then21
  %12 = load i32, i32* %i, align 4, !dbg !195
  %13 = load i32, i32* %n, align 4, !dbg !197
  %cmp22 = icmp slt i32 %12, %13, !dbg !198
  br i1 %cmp22, label %for.body, label %for.end, !dbg !199

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !200
  %inc = add nsw i32 %14, 1, !dbg !200
  store i32 %inc, i32* %intVariable, align 4, !dbg !200
  br label %for.inc, !dbg !202

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !203
  %inc24 = add nsw i32 %15, 1, !dbg !203
  store i32 %inc24, i32* %i, align 4, !dbg !203
  br label %for.cond, !dbg !204, !llvm.loop !205

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !208
  call void @printIntLine(i32 %16), !dbg !209
  br label %if.end25, !dbg !210

if.end25:                                         ; preds = %for.end, %if.then17
  br label %if.end26, !dbg !211

if.end26:                                         ; preds = %if.end25, %if.end14
  ret void, !dbg !212
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

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !213 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !216, metadata !DIExpression()), !dbg !217
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !217
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !217
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !218
  store i8* %arraydecay, i8** %data, align 8, !dbg !219
  %call = call i32 @staticReturnsTrue(), !dbg !220
  %tobool = icmp ne i32 %call, 0, !dbg !220
  br i1 %tobool, label %if.then, label %if.end14, !dbg !222

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !223, metadata !DIExpression()), !dbg !226
  %1 = load i8*, i8** %data, align 8, !dbg !227
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !228
  store i64 %call1, i64* %dataLen, align 8, !dbg !226
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !229, metadata !DIExpression()), !dbg !230
  %2 = load i64, i64* %dataLen, align 8, !dbg !231
  %sub = sub i64 100, %2, !dbg !233
  %cmp = icmp ugt i64 %sub, 1, !dbg !234
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !235

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !236
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !238
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !239
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !241
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !242

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !243
  %5 = load i64, i64* %dataLen, align 8, !dbg !246
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !247
  %6 = load i64, i64* %dataLen, align 8, !dbg !248
  %sub6 = sub i64 100, %6, !dbg !249
  %conv = trunc i64 %sub6 to i32, !dbg !250
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !251
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !252
  %cmp8 = icmp eq i8* %call7, null, !dbg !253
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !254

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !255
  %8 = load i8*, i8** %data, align 8, !dbg !257
  %9 = load i64, i64* %dataLen, align 8, !dbg !258
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !257
  store i8 0, i8* %arrayidx, align 1, !dbg !259
  br label %if.end, !dbg !260

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !261
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !262
  br label %if.end12, !dbg !263

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !264

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !265

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 @staticReturnsFalse(), !dbg !266
  %tobool16 = icmp ne i32 %call15, 0, !dbg !266
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !268

if.then17:                                        ; preds = %if.end14
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !269
  br label %if.end30, !dbg !271

if.else:                                          ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !272, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata i32* %n, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !278, metadata !DIExpression()), !dbg !279
  %11 = load i8*, i8** %data, align 8, !dbg !280
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !282
  %cmp19 = icmp eq i32 %call18, 1, !dbg !283
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !284

if.then21:                                        ; preds = %if.else
  %12 = load i32, i32* %n, align 4, !dbg !285
  %cmp22 = icmp slt i32 %12, 10000, !dbg !288
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !289

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %intVariable, align 4, !dbg !290
  store i32 0, i32* %i, align 4, !dbg !292
  br label %for.cond, !dbg !294

for.cond:                                         ; preds = %for.inc, %if.then24
  %13 = load i32, i32* %i, align 4, !dbg !295
  %14 = load i32, i32* %n, align 4, !dbg !297
  %cmp25 = icmp slt i32 %13, %14, !dbg !298
  br i1 %cmp25, label %for.body, label %for.end, !dbg !299

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !300
  %inc = add nsw i32 %15, 1, !dbg !300
  store i32 %inc, i32* %intVariable, align 4, !dbg !300
  br label %for.inc, !dbg !302

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !303
  %inc27 = add nsw i32 %16, 1, !dbg !303
  store i32 %inc27, i32* %i, align 4, !dbg !303
  br label %for.cond, !dbg !304, !llvm.loop !305

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !307
  call void @printIntLine(i32 %17), !dbg !308
  br label %if.end28, !dbg !309

if.end28:                                         ; preds = %for.end, %if.then21
  br label %if.end29, !dbg !310

if.end29:                                         ; preds = %if.end28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then17
  ret void, !dbg !311
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !312 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !315, metadata !DIExpression()), !dbg !316
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !316
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !316
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !317
  store i8* %arraydecay, i8** %data, align 8, !dbg !318
  %call = call i32 @staticReturnsTrue(), !dbg !319
  %tobool = icmp ne i32 %call, 0, !dbg !319
  br i1 %tobool, label %if.then, label %if.end14, !dbg !321

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !322, metadata !DIExpression()), !dbg !325
  %1 = load i8*, i8** %data, align 8, !dbg !326
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !327
  store i64 %call1, i64* %dataLen, align 8, !dbg !325
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !328, metadata !DIExpression()), !dbg !329
  %2 = load i64, i64* %dataLen, align 8, !dbg !330
  %sub = sub i64 100, %2, !dbg !332
  %cmp = icmp ugt i64 %sub, 1, !dbg !333
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !334

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !335
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !337
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !338
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !340
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !341

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !342
  %5 = load i64, i64* %dataLen, align 8, !dbg !345
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !346
  %6 = load i64, i64* %dataLen, align 8, !dbg !347
  %sub6 = sub i64 100, %6, !dbg !348
  %conv = trunc i64 %sub6 to i32, !dbg !349
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !350
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !351
  %cmp8 = icmp eq i8* %call7, null, !dbg !352
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !353

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !354
  %8 = load i8*, i8** %data, align 8, !dbg !356
  %9 = load i64, i64* %dataLen, align 8, !dbg !357
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !356
  store i8 0, i8* %arrayidx, align 1, !dbg !358
  br label %if.end, !dbg !359

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !360
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !361
  br label %if.end12, !dbg !362

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !363

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !364

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 @staticReturnsTrue(), !dbg !365
  %tobool16 = icmp ne i32 %call15, 0, !dbg !365
  br i1 %tobool16, label %if.then17, label %if.end30, !dbg !367

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !368, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata i32* %n, metadata !372, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !374, metadata !DIExpression()), !dbg !375
  %11 = load i8*, i8** %data, align 8, !dbg !376
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !378
  %cmp19 = icmp eq i32 %call18, 1, !dbg !379
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !380

if.then21:                                        ; preds = %if.then17
  %12 = load i32, i32* %n, align 4, !dbg !381
  %cmp22 = icmp slt i32 %12, 10000, !dbg !384
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !385

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %intVariable, align 4, !dbg !386
  store i32 0, i32* %i, align 4, !dbg !388
  br label %for.cond, !dbg !390

for.cond:                                         ; preds = %for.inc, %if.then24
  %13 = load i32, i32* %i, align 4, !dbg !391
  %14 = load i32, i32* %n, align 4, !dbg !393
  %cmp25 = icmp slt i32 %13, %14, !dbg !394
  br i1 %cmp25, label %for.body, label %for.end, !dbg !395

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !396
  %inc = add nsw i32 %15, 1, !dbg !396
  store i32 %inc, i32* %intVariable, align 4, !dbg !396
  br label %for.inc, !dbg !398

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !399
  %inc27 = add nsw i32 %16, 1, !dbg !399
  store i32 %inc27, i32* %i, align 4, !dbg !399
  br label %for.cond, !dbg !400, !llvm.loop !401

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !403
  call void @printIntLine(i32 %17), !dbg !404
  br label %if.end28, !dbg !405

if.end28:                                         ; preds = %for.end, %if.then21
  br label %if.end29, !dbg !406

if.end29:                                         ; preds = %if.end28, %if.then17
  br label %if.end30, !dbg !407

if.end30:                                         ; preds = %if.end29, %if.end14
  ret void, !dbg !408
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !409 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !410, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !413
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !413
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !414
  store i8* %arraydecay, i8** %data, align 8, !dbg !415
  %call = call i32 @staticReturnsFalse(), !dbg !416
  %tobool = icmp ne i32 %call, 0, !dbg !416
  br i1 %tobool, label %if.then, label %if.else, !dbg !418

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !419
  br label %if.end, !dbg !421

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !422
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !424
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @staticReturnsTrue(), !dbg !425
  %tobool3 = icmp ne i32 %call2, 0, !dbg !425
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !427

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !428, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata i32* %n, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !434, metadata !DIExpression()), !dbg !435
  %2 = load i8*, i8** %data, align 8, !dbg !436
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !438
  %cmp = icmp eq i32 %call5, 1, !dbg !439
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !440

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !441
  store i32 0, i32* %i, align 4, !dbg !443
  br label %for.cond, !dbg !445

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !446
  %4 = load i32, i32* %n, align 4, !dbg !448
  %cmp7 = icmp slt i32 %3, %4, !dbg !449
  br i1 %cmp7, label %for.body, label %for.end, !dbg !450

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !451
  %inc = add nsw i32 %5, 1, !dbg !451
  store i32 %inc, i32* %intVariable, align 4, !dbg !451
  br label %for.inc, !dbg !453

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !454
  %inc8 = add nsw i32 %6, 1, !dbg !454
  store i32 %inc8, i32* %i, align 4, !dbg !454
  br label %for.cond, !dbg !455, !llvm.loop !456

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !458
  call void @printIntLine(i32 %7), !dbg !459
  br label %if.end9, !dbg !460

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !461

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !462
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !463 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !464, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !466, metadata !DIExpression()), !dbg !467
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !467
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !467
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !468
  store i8* %arraydecay, i8** %data, align 8, !dbg !469
  %call = call i32 @staticReturnsTrue(), !dbg !470
  %tobool = icmp ne i32 %call, 0, !dbg !470
  br i1 %tobool, label %if.then, label %if.end, !dbg !472

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !473
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !475
  br label %if.end, !dbg !476

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @staticReturnsTrue(), !dbg !477
  %tobool3 = icmp ne i32 %call2, 0, !dbg !477
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !479

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !480, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.declare(metadata i32* %n, metadata !484, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !486, metadata !DIExpression()), !dbg !487
  %2 = load i8*, i8** %data, align 8, !dbg !488
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !490
  %cmp = icmp eq i32 %call5, 1, !dbg !491
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !492

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !493
  store i32 0, i32* %i, align 4, !dbg !495
  br label %for.cond, !dbg !497

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !498
  %4 = load i32, i32* %n, align 4, !dbg !500
  %cmp7 = icmp slt i32 %3, %4, !dbg !501
  br i1 %cmp7, label %for.body, label %for.end, !dbg !502

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !503
  %inc = add nsw i32 %5, 1, !dbg !503
  store i32 %inc, i32* %intVariable, align 4, !dbg !503
  br label %for.inc, !dbg !505

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !506
  %inc8 = add nsw i32 %6, 1, !dbg !506
  store i32 %inc8, i32* %i, align 4, !dbg !506
  br label %for.cond, !dbg !507, !llvm.loop !508

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !510
  call void @printIntLine(i32 %7), !dbg !511
  br label %if.end9, !dbg !512

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !513

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_08_good() #0 !dbg !515 {
entry:
  call void @goodB2G1(), !dbg !516
  call void @goodB2G2(), !dbg !517
  call void @goodG2B1(), !dbg !518
  call void @goodG2B2(), !dbg !519
  ret void, !dbg !520
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !521 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !524, metadata !DIExpression()), !dbg !525
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !526
  %0 = load i8*, i8** %line.addr, align 8, !dbg !527
  %cmp = icmp ne i8* %0, null, !dbg !529
  br i1 %cmp, label %if.then, label %if.end, !dbg !530

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !531
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !533
  br label %if.end, !dbg !534

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.8, i64 0, i64 0)), !dbg !535
  ret void, !dbg !536
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !537 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !538, metadata !DIExpression()), !dbg !539
  %0 = load i8*, i8** %line.addr, align 8, !dbg !540
  %cmp = icmp ne i8* %0, null, !dbg !542
  br i1 %cmp, label %if.then, label %if.end, !dbg !543

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !544
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.7, i64 0, i64 0), i8* %1), !dbg !546
  br label %if.end, !dbg !547

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !548
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !549 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = load i32*, i32** %line.addr, align 8, !dbg !556
  %cmp = icmp ne i32* %0, null, !dbg !558
  br i1 %cmp, label %if.then, label %if.end, !dbg !559

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !560
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.9, i64 0, i64 0), i32* %1), !dbg !562
  br label %if.end, !dbg !563

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !564
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !565 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !568, metadata !DIExpression()), !dbg !569
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !570
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.12, i64 0, i64 0), i32 %0), !dbg !571
  ret void, !dbg !572
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !573 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !577, metadata !DIExpression()), !dbg !578
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !579
  %conv = sext i16 %0 to i32, !dbg !579
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.13, i64 0, i64 0), i32 %conv), !dbg !580
  ret void, !dbg !581
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !582 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !586, metadata !DIExpression()), !dbg !587
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !588
  %conv = fpext float %0 to double, !dbg !588
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6.14, i64 0, i64 0), double %conv), !dbg !589
  ret void, !dbg !590
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !591 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !594, metadata !DIExpression()), !dbg !595
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !596
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !597
  ret void, !dbg !598
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !599 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !605, metadata !DIExpression()), !dbg !606
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !607
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !608
  ret void, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !610 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !613, metadata !DIExpression()), !dbg !614
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !615
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !616
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !618 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !621, metadata !DIExpression()), !dbg !622
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !623
  %conv = sext i8 %0 to i32, !dbg !623
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !624
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !626 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !629, metadata !DIExpression()), !dbg !630
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !631, metadata !DIExpression()), !dbg !635
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !636
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !637
  store i32 %0, i32* %arrayidx, align 4, !dbg !638
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !639
  store i32 0, i32* %arrayidx1, align 4, !dbg !640
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !641
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !642
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !644 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !647, metadata !DIExpression()), !dbg !648
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !649
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !650
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !652 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !655, metadata !DIExpression()), !dbg !656
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !657
  %conv = zext i8 %0 to i32, !dbg !657
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !658
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !660 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !664, metadata !DIExpression()), !dbg !665
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !666
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !667
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !669 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !679, metadata !DIExpression()), !dbg !680
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !681
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !682
  %1 = load i32, i32* %intOne, align 4, !dbg !682
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !683
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !684
  %3 = load i32, i32* %intTwo, align 4, !dbg !684
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !685
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !687 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !691, metadata !DIExpression()), !dbg !692
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !693, metadata !DIExpression()), !dbg !694
  call void @llvm.dbg.declare(metadata i64* %i, metadata !695, metadata !DIExpression()), !dbg !696
  store i64 0, i64* %i, align 8, !dbg !697
  br label %for.cond, !dbg !699

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !700
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !702
  %cmp = icmp ult i64 %0, %1, !dbg !703
  br i1 %cmp, label %for.body, label %for.end, !dbg !704

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !705
  %3 = load i64, i64* %i, align 8, !dbg !707
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !705
  %4 = load i8, i8* %arrayidx, align 1, !dbg !705
  %conv = zext i8 %4 to i32, !dbg !705
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !708
  br label %for.inc, !dbg !709

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !710
  %inc = add i64 %5, 1, !dbg !710
  store i64 %inc, i64* %i, align 8, !dbg !710
  br label %for.cond, !dbg !711, !llvm.loop !712

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !714
  ret void, !dbg !715
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !716 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !719, metadata !DIExpression()), !dbg !720
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !721, metadata !DIExpression()), !dbg !722
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !723, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !725, metadata !DIExpression()), !dbg !726
  store i64 0, i64* %numWritten, align 8, !dbg !726
  br label %while.cond, !dbg !727

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !728
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !729
  %cmp = icmp ult i64 %0, %1, !dbg !730
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !731

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !732
  %2 = load i16*, i16** %call, align 8, !dbg !732
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !732
  %4 = load i64, i64* %numWritten, align 8, !dbg !732
  %mul = mul i64 2, %4, !dbg !732
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !732
  %5 = load i8, i8* %arrayidx, align 1, !dbg !732
  %conv = sext i8 %5 to i32, !dbg !732
  %idxprom = sext i32 %conv to i64, !dbg !732
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !732
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !732
  %conv2 = zext i16 %6 to i32, !dbg !732
  %and = and i32 %conv2, 4096, !dbg !732
  %tobool = icmp ne i32 %and, 0, !dbg !732
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !733

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !734
  %7 = load i16*, i16** %call3, align 8, !dbg !734
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !734
  %9 = load i64, i64* %numWritten, align 8, !dbg !734
  %mul4 = mul i64 2, %9, !dbg !734
  %add = add i64 %mul4, 1, !dbg !734
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !734
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !734
  %conv6 = sext i8 %10 to i32, !dbg !734
  %idxprom7 = sext i32 %conv6 to i64, !dbg !734
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !734
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !734
  %conv9 = zext i16 %11 to i32, !dbg !734
  %and10 = and i32 %conv9, 4096, !dbg !734
  %tobool11 = icmp ne i32 %and10, 0, !dbg !733
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !735
  br i1 %12, label %while.body, label %while.end, !dbg !727

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !736, metadata !DIExpression()), !dbg !738
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !739
  %14 = load i64, i64* %numWritten, align 8, !dbg !740
  %mul12 = mul i64 2, %14, !dbg !741
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !739
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !742
  %15 = load i32, i32* %byte, align 4, !dbg !743
  %conv15 = trunc i32 %15 to i8, !dbg !744
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !745
  %17 = load i64, i64* %numWritten, align 8, !dbg !746
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !745
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !747
  %18 = load i64, i64* %numWritten, align 8, !dbg !748
  %inc = add i64 %18, 1, !dbg !748
  store i64 %inc, i64* %numWritten, align 8, !dbg !748
  br label %while.cond, !dbg !727, !llvm.loop !749

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !751
  ret i64 %19, !dbg !752
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !753 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !756, metadata !DIExpression()), !dbg !757
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !758, metadata !DIExpression()), !dbg !759
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !760, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !762, metadata !DIExpression()), !dbg !763
  store i64 0, i64* %numWritten, align 8, !dbg !763
  br label %while.cond, !dbg !764

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !765
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !766
  %cmp = icmp ult i64 %0, %1, !dbg !767
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !768

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !769
  %3 = load i64, i64* %numWritten, align 8, !dbg !770
  %mul = mul i64 2, %3, !dbg !771
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !769
  %4 = load i32, i32* %arrayidx, align 4, !dbg !769
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !772
  %tobool = icmp ne i32 %call, 0, !dbg !772
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !773

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !774
  %6 = load i64, i64* %numWritten, align 8, !dbg !775
  %mul1 = mul i64 2, %6, !dbg !776
  %add = add i64 %mul1, 1, !dbg !777
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !774
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !774
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !778
  %tobool4 = icmp ne i32 %call3, 0, !dbg !773
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !779
  br i1 %8, label %while.body, label %while.end, !dbg !764

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !780, metadata !DIExpression()), !dbg !782
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !783
  %10 = load i64, i64* %numWritten, align 8, !dbg !784
  %mul5 = mul i64 2, %10, !dbg !785
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !783
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !786
  %11 = load i32, i32* %byte, align 4, !dbg !787
  %conv = trunc i32 %11 to i8, !dbg !788
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !789
  %13 = load i64, i64* %numWritten, align 8, !dbg !790
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !789
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !791
  %14 = load i64, i64* %numWritten, align 8, !dbg !792
  %inc = add i64 %14, 1, !dbg !792
  store i64 %inc, i64* %numWritten, align 8, !dbg !792
  br label %while.cond, !dbg !764, !llvm.loop !793

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !795
  ret i64 %15, !dbg !796
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !797 {
entry:
  ret i32 1, !dbg !798
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !799 {
entry:
  ret i32 0, !dbg !800
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !801 {
entry:
  %call = call i32 @rand() #8, !dbg !802
  %rem = srem i32 %call, 2, !dbg !803
  ret i32 %rem, !dbg !804
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !805 {
entry:
  ret void, !dbg !806
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !807 {
entry:
  ret void, !dbg !808
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !809 {
entry:
  ret void, !dbg !810
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !811 {
entry:
  ret void, !dbg !812
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !813 {
entry:
  ret void, !dbg !814
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !815 {
entry:
  ret void, !dbg !816
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !817 {
entry:
  ret void, !dbg !818
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !819 {
entry:
  ret void, !dbg !820
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !821 {
entry:
  ret void, !dbg !822
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !823 {
entry:
  ret void, !dbg !824
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !825 {
entry:
  ret void, !dbg !826
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !827 {
entry:
  ret void, !dbg !828
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !829 {
entry:
  ret void, !dbg !830
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !831 {
entry:
  ret void, !dbg !832
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !833 {
entry:
  ret void, !dbg !834
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !835 {
entry:
  ret void, !dbg !836
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !837 {
entry:
  ret void, !dbg !838
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !839 {
entry:
  ret void, !dbg !840
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_081/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_081/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !45, file: !45, line: 36, type: !53, scopeLine: 37, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{!23}
!55 = !DILocation(line: 38, column: 5, scope: !52)
!56 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !45, file: !45, line: 41, type: !53, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!57 = !DILocation(line: 43, column: 5, scope: !56)
!58 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_08_bad", scope: !45, file: !45, line: 48, type: !59, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DILocalVariable(name: "data", scope: !58, file: !45, line: 50, type: !42)
!62 = !DILocation(line: 50, column: 12, scope: !58)
!63 = !DILocalVariable(name: "dataBuffer", scope: !58, file: !45, line: 51, type: !64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 100)
!67 = !DILocation(line: 51, column: 10, scope: !58)
!68 = !DILocation(line: 52, column: 12, scope: !58)
!69 = !DILocation(line: 52, column: 10, scope: !58)
!70 = !DILocation(line: 53, column: 8, scope: !71)
!71 = distinct !DILexicalBlock(scope: !58, file: !45, line: 53, column: 8)
!72 = !DILocation(line: 53, column: 8, scope: !58)
!73 = !DILocalVariable(name: "dataLen", scope: !74, file: !45, line: 57, type: !76)
!74 = distinct !DILexicalBlock(scope: !75, file: !45, line: 55, column: 9)
!75 = distinct !DILexicalBlock(scope: !71, file: !45, line: 54, column: 5)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 46, baseType: !78)
!77 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !DILocation(line: 57, column: 20, scope: !74)
!80 = !DILocation(line: 57, column: 37, scope: !74)
!81 = !DILocation(line: 57, column: 30, scope: !74)
!82 = !DILocalVariable(name: "pFile", scope: !74, file: !45, line: 58, type: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !85, line: 7, baseType: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !87, line: 49, size: 1728, elements: !88)
!87 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !104, !106, !107, !108, !112, !113, !115, !119, !122, !124, !127, !130, !131, !132, !133, !134}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !86, file: !87, line: 51, baseType: !23, size: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !86, file: !87, line: 54, baseType: !42, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !86, file: !87, line: 55, baseType: !42, size: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !86, file: !87, line: 56, baseType: !42, size: 64, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !86, file: !87, line: 57, baseType: !42, size: 64, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !86, file: !87, line: 58, baseType: !42, size: 64, offset: 320)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !86, file: !87, line: 59, baseType: !42, size: 64, offset: 384)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !86, file: !87, line: 60, baseType: !42, size: 64, offset: 448)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !86, file: !87, line: 61, baseType: !42, size: 64, offset: 512)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !86, file: !87, line: 64, baseType: !42, size: 64, offset: 576)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !86, file: !87, line: 65, baseType: !42, size: 64, offset: 640)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !86, file: !87, line: 66, baseType: !42, size: 64, offset: 704)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !86, file: !87, line: 68, baseType: !102, size: 64, offset: 768)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !87, line: 36, flags: DIFlagFwdDecl)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !86, file: !87, line: 70, baseType: !105, size: 64, offset: 832)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !86, file: !87, line: 72, baseType: !23, size: 32, offset: 896)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !86, file: !87, line: 73, baseType: !23, size: 32, offset: 928)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !86, file: !87, line: 74, baseType: !109, size: 64, offset: 960)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !110, line: 152, baseType: !111)
!110 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!111 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !86, file: !87, line: 77, baseType: !24, size: 16, offset: 1024)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !86, file: !87, line: 78, baseType: !114, size: 8, offset: 1040)
!114 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !86, file: !87, line: 79, baseType: !116, size: 8, offset: 1048)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 1)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !86, file: !87, line: 81, baseType: !120, size: 64, offset: 1088)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !87, line: 43, baseType: null)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !86, file: !87, line: 89, baseType: !123, size: 64, offset: 1152)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !110, line: 153, baseType: !111)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !86, file: !87, line: 91, baseType: !125, size: 64, offset: 1216)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !87, line: 37, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !86, file: !87, line: 92, baseType: !128, size: 64, offset: 1280)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !87, line: 38, flags: DIFlagFwdDecl)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !86, file: !87, line: 93, baseType: !105, size: 64, offset: 1344)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !86, file: !87, line: 94, baseType: !22, size: 64, offset: 1408)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !86, file: !87, line: 95, baseType: !76, size: 64, offset: 1472)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !86, file: !87, line: 96, baseType: !23, size: 32, offset: 1536)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !86, file: !87, line: 98, baseType: !135, size: 160, offset: 1568)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 20)
!138 = !DILocation(line: 58, column: 20, scope: !74)
!139 = !DILocation(line: 60, column: 21, scope: !140)
!140 = distinct !DILexicalBlock(scope: !74, file: !45, line: 60, column: 17)
!141 = !DILocation(line: 60, column: 20, scope: !140)
!142 = !DILocation(line: 60, column: 29, scope: !140)
!143 = !DILocation(line: 60, column: 17, scope: !74)
!144 = !DILocation(line: 62, column: 25, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !45, line: 61, column: 13)
!146 = !DILocation(line: 62, column: 23, scope: !145)
!147 = !DILocation(line: 63, column: 21, scope: !148)
!148 = distinct !DILexicalBlock(scope: !145, file: !45, line: 63, column: 21)
!149 = !DILocation(line: 63, column: 27, scope: !148)
!150 = !DILocation(line: 63, column: 21, scope: !145)
!151 = !DILocation(line: 66, column: 31, scope: !152)
!152 = distinct !DILexicalBlock(scope: !153, file: !45, line: 66, column: 25)
!153 = distinct !DILexicalBlock(scope: !148, file: !45, line: 64, column: 17)
!154 = !DILocation(line: 66, column: 36, scope: !152)
!155 = !DILocation(line: 66, column: 35, scope: !152)
!156 = !DILocation(line: 66, column: 55, scope: !152)
!157 = !DILocation(line: 66, column: 54, scope: !152)
!158 = !DILocation(line: 66, column: 45, scope: !152)
!159 = !DILocation(line: 66, column: 65, scope: !152)
!160 = !DILocation(line: 66, column: 25, scope: !152)
!161 = !DILocation(line: 66, column: 72, scope: !152)
!162 = !DILocation(line: 66, column: 25, scope: !153)
!163 = !DILocation(line: 68, column: 25, scope: !164)
!164 = distinct !DILexicalBlock(scope: !152, file: !45, line: 67, column: 21)
!165 = !DILocation(line: 70, column: 25, scope: !164)
!166 = !DILocation(line: 70, column: 30, scope: !164)
!167 = !DILocation(line: 70, column: 39, scope: !164)
!168 = !DILocation(line: 71, column: 21, scope: !164)
!169 = !DILocation(line: 72, column: 28, scope: !153)
!170 = !DILocation(line: 72, column: 21, scope: !153)
!171 = !DILocation(line: 73, column: 17, scope: !153)
!172 = !DILocation(line: 74, column: 13, scope: !145)
!173 = !DILocation(line: 76, column: 5, scope: !75)
!174 = !DILocation(line: 77, column: 8, scope: !175)
!175 = distinct !DILexicalBlock(scope: !58, file: !45, line: 77, column: 8)
!176 = !DILocation(line: 77, column: 8, scope: !58)
!177 = !DILocalVariable(name: "i", scope: !178, file: !45, line: 80, type: !23)
!178 = distinct !DILexicalBlock(scope: !179, file: !45, line: 79, column: 9)
!179 = distinct !DILexicalBlock(scope: !175, file: !45, line: 78, column: 5)
!180 = !DILocation(line: 80, column: 17, scope: !178)
!181 = !DILocalVariable(name: "n", scope: !178, file: !45, line: 80, type: !23)
!182 = !DILocation(line: 80, column: 20, scope: !178)
!183 = !DILocalVariable(name: "intVariable", scope: !178, file: !45, line: 80, type: !23)
!184 = !DILocation(line: 80, column: 23, scope: !178)
!185 = !DILocation(line: 81, column: 24, scope: !186)
!186 = distinct !DILexicalBlock(scope: !178, file: !45, line: 81, column: 17)
!187 = !DILocation(line: 81, column: 17, scope: !186)
!188 = !DILocation(line: 81, column: 40, scope: !186)
!189 = !DILocation(line: 81, column: 17, scope: !178)
!190 = !DILocation(line: 84, column: 29, scope: !191)
!191 = distinct !DILexicalBlock(scope: !186, file: !45, line: 82, column: 13)
!192 = !DILocation(line: 85, column: 24, scope: !193)
!193 = distinct !DILexicalBlock(scope: !191, file: !45, line: 85, column: 17)
!194 = !DILocation(line: 85, column: 22, scope: !193)
!195 = !DILocation(line: 85, column: 29, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !45, line: 85, column: 17)
!197 = !DILocation(line: 85, column: 33, scope: !196)
!198 = !DILocation(line: 85, column: 31, scope: !196)
!199 = !DILocation(line: 85, column: 17, scope: !193)
!200 = !DILocation(line: 88, column: 32, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !45, line: 86, column: 17)
!202 = !DILocation(line: 89, column: 17, scope: !201)
!203 = !DILocation(line: 85, column: 37, scope: !196)
!204 = !DILocation(line: 85, column: 17, scope: !196)
!205 = distinct !{!205, !199, !206, !207}
!206 = !DILocation(line: 89, column: 17, scope: !193)
!207 = !{!"llvm.loop.mustprogress"}
!208 = !DILocation(line: 90, column: 30, scope: !191)
!209 = !DILocation(line: 90, column: 17, scope: !191)
!210 = !DILocation(line: 91, column: 13, scope: !191)
!211 = !DILocation(line: 93, column: 5, scope: !179)
!212 = !DILocation(line: 94, column: 1, scope: !58)
!213 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 101, type: !59, scopeLine: 102, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!214 = !DILocalVariable(name: "data", scope: !213, file: !45, line: 103, type: !42)
!215 = !DILocation(line: 103, column: 12, scope: !213)
!216 = !DILocalVariable(name: "dataBuffer", scope: !213, file: !45, line: 104, type: !64)
!217 = !DILocation(line: 104, column: 10, scope: !213)
!218 = !DILocation(line: 105, column: 12, scope: !213)
!219 = !DILocation(line: 105, column: 10, scope: !213)
!220 = !DILocation(line: 106, column: 8, scope: !221)
!221 = distinct !DILexicalBlock(scope: !213, file: !45, line: 106, column: 8)
!222 = !DILocation(line: 106, column: 8, scope: !213)
!223 = !DILocalVariable(name: "dataLen", scope: !224, file: !45, line: 110, type: !76)
!224 = distinct !DILexicalBlock(scope: !225, file: !45, line: 108, column: 9)
!225 = distinct !DILexicalBlock(scope: !221, file: !45, line: 107, column: 5)
!226 = !DILocation(line: 110, column: 20, scope: !224)
!227 = !DILocation(line: 110, column: 37, scope: !224)
!228 = !DILocation(line: 110, column: 30, scope: !224)
!229 = !DILocalVariable(name: "pFile", scope: !224, file: !45, line: 111, type: !83)
!230 = !DILocation(line: 111, column: 20, scope: !224)
!231 = !DILocation(line: 113, column: 21, scope: !232)
!232 = distinct !DILexicalBlock(scope: !224, file: !45, line: 113, column: 17)
!233 = !DILocation(line: 113, column: 20, scope: !232)
!234 = !DILocation(line: 113, column: 29, scope: !232)
!235 = !DILocation(line: 113, column: 17, scope: !224)
!236 = !DILocation(line: 115, column: 25, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !45, line: 114, column: 13)
!238 = !DILocation(line: 115, column: 23, scope: !237)
!239 = !DILocation(line: 116, column: 21, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !45, line: 116, column: 21)
!241 = !DILocation(line: 116, column: 27, scope: !240)
!242 = !DILocation(line: 116, column: 21, scope: !237)
!243 = !DILocation(line: 119, column: 31, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !45, line: 119, column: 25)
!245 = distinct !DILexicalBlock(scope: !240, file: !45, line: 117, column: 17)
!246 = !DILocation(line: 119, column: 36, scope: !244)
!247 = !DILocation(line: 119, column: 35, scope: !244)
!248 = !DILocation(line: 119, column: 55, scope: !244)
!249 = !DILocation(line: 119, column: 54, scope: !244)
!250 = !DILocation(line: 119, column: 45, scope: !244)
!251 = !DILocation(line: 119, column: 65, scope: !244)
!252 = !DILocation(line: 119, column: 25, scope: !244)
!253 = !DILocation(line: 119, column: 72, scope: !244)
!254 = !DILocation(line: 119, column: 25, scope: !245)
!255 = !DILocation(line: 121, column: 25, scope: !256)
!256 = distinct !DILexicalBlock(scope: !244, file: !45, line: 120, column: 21)
!257 = !DILocation(line: 123, column: 25, scope: !256)
!258 = !DILocation(line: 123, column: 30, scope: !256)
!259 = !DILocation(line: 123, column: 39, scope: !256)
!260 = !DILocation(line: 124, column: 21, scope: !256)
!261 = !DILocation(line: 125, column: 28, scope: !245)
!262 = !DILocation(line: 125, column: 21, scope: !245)
!263 = !DILocation(line: 126, column: 17, scope: !245)
!264 = !DILocation(line: 127, column: 13, scope: !237)
!265 = !DILocation(line: 129, column: 5, scope: !225)
!266 = !DILocation(line: 130, column: 8, scope: !267)
!267 = distinct !DILexicalBlock(scope: !213, file: !45, line: 130, column: 8)
!268 = !DILocation(line: 130, column: 8, scope: !213)
!269 = !DILocation(line: 133, column: 9, scope: !270)
!270 = distinct !DILexicalBlock(scope: !267, file: !45, line: 131, column: 5)
!271 = !DILocation(line: 134, column: 5, scope: !270)
!272 = !DILocalVariable(name: "i", scope: !273, file: !45, line: 138, type: !23)
!273 = distinct !DILexicalBlock(scope: !274, file: !45, line: 137, column: 9)
!274 = distinct !DILexicalBlock(scope: !267, file: !45, line: 136, column: 5)
!275 = !DILocation(line: 138, column: 17, scope: !273)
!276 = !DILocalVariable(name: "n", scope: !273, file: !45, line: 138, type: !23)
!277 = !DILocation(line: 138, column: 20, scope: !273)
!278 = !DILocalVariable(name: "intVariable", scope: !273, file: !45, line: 138, type: !23)
!279 = !DILocation(line: 138, column: 23, scope: !273)
!280 = !DILocation(line: 139, column: 24, scope: !281)
!281 = distinct !DILexicalBlock(scope: !273, file: !45, line: 139, column: 17)
!282 = !DILocation(line: 139, column: 17, scope: !281)
!283 = !DILocation(line: 139, column: 40, scope: !281)
!284 = !DILocation(line: 139, column: 17, scope: !273)
!285 = !DILocation(line: 142, column: 21, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !45, line: 142, column: 21)
!287 = distinct !DILexicalBlock(scope: !281, file: !45, line: 140, column: 13)
!288 = !DILocation(line: 142, column: 23, scope: !286)
!289 = !DILocation(line: 142, column: 21, scope: !287)
!290 = !DILocation(line: 144, column: 33, scope: !291)
!291 = distinct !DILexicalBlock(scope: !286, file: !45, line: 143, column: 17)
!292 = !DILocation(line: 145, column: 28, scope: !293)
!293 = distinct !DILexicalBlock(scope: !291, file: !45, line: 145, column: 21)
!294 = !DILocation(line: 145, column: 26, scope: !293)
!295 = !DILocation(line: 145, column: 33, scope: !296)
!296 = distinct !DILexicalBlock(scope: !293, file: !45, line: 145, column: 21)
!297 = !DILocation(line: 145, column: 37, scope: !296)
!298 = !DILocation(line: 145, column: 35, scope: !296)
!299 = !DILocation(line: 145, column: 21, scope: !293)
!300 = !DILocation(line: 148, column: 36, scope: !301)
!301 = distinct !DILexicalBlock(scope: !296, file: !45, line: 146, column: 21)
!302 = !DILocation(line: 149, column: 21, scope: !301)
!303 = !DILocation(line: 145, column: 41, scope: !296)
!304 = !DILocation(line: 145, column: 21, scope: !296)
!305 = distinct !{!305, !299, !306, !207}
!306 = !DILocation(line: 149, column: 21, scope: !293)
!307 = !DILocation(line: 150, column: 34, scope: !291)
!308 = !DILocation(line: 150, column: 21, scope: !291)
!309 = !DILocation(line: 151, column: 17, scope: !291)
!310 = !DILocation(line: 152, column: 13, scope: !287)
!311 = !DILocation(line: 155, column: 1, scope: !213)
!312 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 158, type: !59, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!313 = !DILocalVariable(name: "data", scope: !312, file: !45, line: 160, type: !42)
!314 = !DILocation(line: 160, column: 12, scope: !312)
!315 = !DILocalVariable(name: "dataBuffer", scope: !312, file: !45, line: 161, type: !64)
!316 = !DILocation(line: 161, column: 10, scope: !312)
!317 = !DILocation(line: 162, column: 12, scope: !312)
!318 = !DILocation(line: 162, column: 10, scope: !312)
!319 = !DILocation(line: 163, column: 8, scope: !320)
!320 = distinct !DILexicalBlock(scope: !312, file: !45, line: 163, column: 8)
!321 = !DILocation(line: 163, column: 8, scope: !312)
!322 = !DILocalVariable(name: "dataLen", scope: !323, file: !45, line: 167, type: !76)
!323 = distinct !DILexicalBlock(scope: !324, file: !45, line: 165, column: 9)
!324 = distinct !DILexicalBlock(scope: !320, file: !45, line: 164, column: 5)
!325 = !DILocation(line: 167, column: 20, scope: !323)
!326 = !DILocation(line: 167, column: 37, scope: !323)
!327 = !DILocation(line: 167, column: 30, scope: !323)
!328 = !DILocalVariable(name: "pFile", scope: !323, file: !45, line: 168, type: !83)
!329 = !DILocation(line: 168, column: 20, scope: !323)
!330 = !DILocation(line: 170, column: 21, scope: !331)
!331 = distinct !DILexicalBlock(scope: !323, file: !45, line: 170, column: 17)
!332 = !DILocation(line: 170, column: 20, scope: !331)
!333 = !DILocation(line: 170, column: 29, scope: !331)
!334 = !DILocation(line: 170, column: 17, scope: !323)
!335 = !DILocation(line: 172, column: 25, scope: !336)
!336 = distinct !DILexicalBlock(scope: !331, file: !45, line: 171, column: 13)
!337 = !DILocation(line: 172, column: 23, scope: !336)
!338 = !DILocation(line: 173, column: 21, scope: !339)
!339 = distinct !DILexicalBlock(scope: !336, file: !45, line: 173, column: 21)
!340 = !DILocation(line: 173, column: 27, scope: !339)
!341 = !DILocation(line: 173, column: 21, scope: !336)
!342 = !DILocation(line: 176, column: 31, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !45, line: 176, column: 25)
!344 = distinct !DILexicalBlock(scope: !339, file: !45, line: 174, column: 17)
!345 = !DILocation(line: 176, column: 36, scope: !343)
!346 = !DILocation(line: 176, column: 35, scope: !343)
!347 = !DILocation(line: 176, column: 55, scope: !343)
!348 = !DILocation(line: 176, column: 54, scope: !343)
!349 = !DILocation(line: 176, column: 45, scope: !343)
!350 = !DILocation(line: 176, column: 65, scope: !343)
!351 = !DILocation(line: 176, column: 25, scope: !343)
!352 = !DILocation(line: 176, column: 72, scope: !343)
!353 = !DILocation(line: 176, column: 25, scope: !344)
!354 = !DILocation(line: 178, column: 25, scope: !355)
!355 = distinct !DILexicalBlock(scope: !343, file: !45, line: 177, column: 21)
!356 = !DILocation(line: 180, column: 25, scope: !355)
!357 = !DILocation(line: 180, column: 30, scope: !355)
!358 = !DILocation(line: 180, column: 39, scope: !355)
!359 = !DILocation(line: 181, column: 21, scope: !355)
!360 = !DILocation(line: 182, column: 28, scope: !344)
!361 = !DILocation(line: 182, column: 21, scope: !344)
!362 = !DILocation(line: 183, column: 17, scope: !344)
!363 = !DILocation(line: 184, column: 13, scope: !336)
!364 = !DILocation(line: 186, column: 5, scope: !324)
!365 = !DILocation(line: 187, column: 8, scope: !366)
!366 = distinct !DILexicalBlock(scope: !312, file: !45, line: 187, column: 8)
!367 = !DILocation(line: 187, column: 8, scope: !312)
!368 = !DILocalVariable(name: "i", scope: !369, file: !45, line: 190, type: !23)
!369 = distinct !DILexicalBlock(scope: !370, file: !45, line: 189, column: 9)
!370 = distinct !DILexicalBlock(scope: !366, file: !45, line: 188, column: 5)
!371 = !DILocation(line: 190, column: 17, scope: !369)
!372 = !DILocalVariable(name: "n", scope: !369, file: !45, line: 190, type: !23)
!373 = !DILocation(line: 190, column: 20, scope: !369)
!374 = !DILocalVariable(name: "intVariable", scope: !369, file: !45, line: 190, type: !23)
!375 = !DILocation(line: 190, column: 23, scope: !369)
!376 = !DILocation(line: 191, column: 24, scope: !377)
!377 = distinct !DILexicalBlock(scope: !369, file: !45, line: 191, column: 17)
!378 = !DILocation(line: 191, column: 17, scope: !377)
!379 = !DILocation(line: 191, column: 40, scope: !377)
!380 = !DILocation(line: 191, column: 17, scope: !369)
!381 = !DILocation(line: 194, column: 21, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !45, line: 194, column: 21)
!383 = distinct !DILexicalBlock(scope: !377, file: !45, line: 192, column: 13)
!384 = !DILocation(line: 194, column: 23, scope: !382)
!385 = !DILocation(line: 194, column: 21, scope: !383)
!386 = !DILocation(line: 196, column: 33, scope: !387)
!387 = distinct !DILexicalBlock(scope: !382, file: !45, line: 195, column: 17)
!388 = !DILocation(line: 197, column: 28, scope: !389)
!389 = distinct !DILexicalBlock(scope: !387, file: !45, line: 197, column: 21)
!390 = !DILocation(line: 197, column: 26, scope: !389)
!391 = !DILocation(line: 197, column: 33, scope: !392)
!392 = distinct !DILexicalBlock(scope: !389, file: !45, line: 197, column: 21)
!393 = !DILocation(line: 197, column: 37, scope: !392)
!394 = !DILocation(line: 197, column: 35, scope: !392)
!395 = !DILocation(line: 197, column: 21, scope: !389)
!396 = !DILocation(line: 200, column: 36, scope: !397)
!397 = distinct !DILexicalBlock(scope: !392, file: !45, line: 198, column: 21)
!398 = !DILocation(line: 201, column: 21, scope: !397)
!399 = !DILocation(line: 197, column: 41, scope: !392)
!400 = !DILocation(line: 197, column: 21, scope: !392)
!401 = distinct !{!401, !395, !402, !207}
!402 = !DILocation(line: 201, column: 21, scope: !389)
!403 = !DILocation(line: 202, column: 34, scope: !387)
!404 = !DILocation(line: 202, column: 21, scope: !387)
!405 = !DILocation(line: 203, column: 17, scope: !387)
!406 = !DILocation(line: 204, column: 13, scope: !383)
!407 = !DILocation(line: 206, column: 5, scope: !370)
!408 = !DILocation(line: 207, column: 1, scope: !312)
!409 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 210, type: !59, scopeLine: 211, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!410 = !DILocalVariable(name: "data", scope: !409, file: !45, line: 212, type: !42)
!411 = !DILocation(line: 212, column: 12, scope: !409)
!412 = !DILocalVariable(name: "dataBuffer", scope: !409, file: !45, line: 213, type: !64)
!413 = !DILocation(line: 213, column: 10, scope: !409)
!414 = !DILocation(line: 214, column: 12, scope: !409)
!415 = !DILocation(line: 214, column: 10, scope: !409)
!416 = !DILocation(line: 215, column: 8, scope: !417)
!417 = distinct !DILexicalBlock(scope: !409, file: !45, line: 215, column: 8)
!418 = !DILocation(line: 215, column: 8, scope: !409)
!419 = !DILocation(line: 218, column: 9, scope: !420)
!420 = distinct !DILexicalBlock(scope: !417, file: !45, line: 216, column: 5)
!421 = !DILocation(line: 219, column: 5, scope: !420)
!422 = !DILocation(line: 223, column: 16, scope: !423)
!423 = distinct !DILexicalBlock(scope: !417, file: !45, line: 221, column: 5)
!424 = !DILocation(line: 223, column: 9, scope: !423)
!425 = !DILocation(line: 225, column: 8, scope: !426)
!426 = distinct !DILexicalBlock(scope: !409, file: !45, line: 225, column: 8)
!427 = !DILocation(line: 225, column: 8, scope: !409)
!428 = !DILocalVariable(name: "i", scope: !429, file: !45, line: 228, type: !23)
!429 = distinct !DILexicalBlock(scope: !430, file: !45, line: 227, column: 9)
!430 = distinct !DILexicalBlock(scope: !426, file: !45, line: 226, column: 5)
!431 = !DILocation(line: 228, column: 17, scope: !429)
!432 = !DILocalVariable(name: "n", scope: !429, file: !45, line: 228, type: !23)
!433 = !DILocation(line: 228, column: 20, scope: !429)
!434 = !DILocalVariable(name: "intVariable", scope: !429, file: !45, line: 228, type: !23)
!435 = !DILocation(line: 228, column: 23, scope: !429)
!436 = !DILocation(line: 229, column: 24, scope: !437)
!437 = distinct !DILexicalBlock(scope: !429, file: !45, line: 229, column: 17)
!438 = !DILocation(line: 229, column: 17, scope: !437)
!439 = !DILocation(line: 229, column: 40, scope: !437)
!440 = !DILocation(line: 229, column: 17, scope: !429)
!441 = !DILocation(line: 232, column: 29, scope: !442)
!442 = distinct !DILexicalBlock(scope: !437, file: !45, line: 230, column: 13)
!443 = !DILocation(line: 233, column: 24, scope: !444)
!444 = distinct !DILexicalBlock(scope: !442, file: !45, line: 233, column: 17)
!445 = !DILocation(line: 233, column: 22, scope: !444)
!446 = !DILocation(line: 233, column: 29, scope: !447)
!447 = distinct !DILexicalBlock(scope: !444, file: !45, line: 233, column: 17)
!448 = !DILocation(line: 233, column: 33, scope: !447)
!449 = !DILocation(line: 233, column: 31, scope: !447)
!450 = !DILocation(line: 233, column: 17, scope: !444)
!451 = !DILocation(line: 236, column: 32, scope: !452)
!452 = distinct !DILexicalBlock(scope: !447, file: !45, line: 234, column: 17)
!453 = !DILocation(line: 237, column: 17, scope: !452)
!454 = !DILocation(line: 233, column: 37, scope: !447)
!455 = !DILocation(line: 233, column: 17, scope: !447)
!456 = distinct !{!456, !450, !457, !207}
!457 = !DILocation(line: 237, column: 17, scope: !444)
!458 = !DILocation(line: 238, column: 30, scope: !442)
!459 = !DILocation(line: 238, column: 17, scope: !442)
!460 = !DILocation(line: 239, column: 13, scope: !442)
!461 = !DILocation(line: 241, column: 5, scope: !430)
!462 = !DILocation(line: 242, column: 1, scope: !409)
!463 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 245, type: !59, scopeLine: 246, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!464 = !DILocalVariable(name: "data", scope: !463, file: !45, line: 247, type: !42)
!465 = !DILocation(line: 247, column: 12, scope: !463)
!466 = !DILocalVariable(name: "dataBuffer", scope: !463, file: !45, line: 248, type: !64)
!467 = !DILocation(line: 248, column: 10, scope: !463)
!468 = !DILocation(line: 249, column: 12, scope: !463)
!469 = !DILocation(line: 249, column: 10, scope: !463)
!470 = !DILocation(line: 250, column: 8, scope: !471)
!471 = distinct !DILexicalBlock(scope: !463, file: !45, line: 250, column: 8)
!472 = !DILocation(line: 250, column: 8, scope: !463)
!473 = !DILocation(line: 253, column: 16, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !45, line: 251, column: 5)
!475 = !DILocation(line: 253, column: 9, scope: !474)
!476 = !DILocation(line: 254, column: 5, scope: !474)
!477 = !DILocation(line: 255, column: 8, scope: !478)
!478 = distinct !DILexicalBlock(scope: !463, file: !45, line: 255, column: 8)
!479 = !DILocation(line: 255, column: 8, scope: !463)
!480 = !DILocalVariable(name: "i", scope: !481, file: !45, line: 258, type: !23)
!481 = distinct !DILexicalBlock(scope: !482, file: !45, line: 257, column: 9)
!482 = distinct !DILexicalBlock(scope: !478, file: !45, line: 256, column: 5)
!483 = !DILocation(line: 258, column: 17, scope: !481)
!484 = !DILocalVariable(name: "n", scope: !481, file: !45, line: 258, type: !23)
!485 = !DILocation(line: 258, column: 20, scope: !481)
!486 = !DILocalVariable(name: "intVariable", scope: !481, file: !45, line: 258, type: !23)
!487 = !DILocation(line: 258, column: 23, scope: !481)
!488 = !DILocation(line: 259, column: 24, scope: !489)
!489 = distinct !DILexicalBlock(scope: !481, file: !45, line: 259, column: 17)
!490 = !DILocation(line: 259, column: 17, scope: !489)
!491 = !DILocation(line: 259, column: 40, scope: !489)
!492 = !DILocation(line: 259, column: 17, scope: !481)
!493 = !DILocation(line: 262, column: 29, scope: !494)
!494 = distinct !DILexicalBlock(scope: !489, file: !45, line: 260, column: 13)
!495 = !DILocation(line: 263, column: 24, scope: !496)
!496 = distinct !DILexicalBlock(scope: !494, file: !45, line: 263, column: 17)
!497 = !DILocation(line: 263, column: 22, scope: !496)
!498 = !DILocation(line: 263, column: 29, scope: !499)
!499 = distinct !DILexicalBlock(scope: !496, file: !45, line: 263, column: 17)
!500 = !DILocation(line: 263, column: 33, scope: !499)
!501 = !DILocation(line: 263, column: 31, scope: !499)
!502 = !DILocation(line: 263, column: 17, scope: !496)
!503 = !DILocation(line: 266, column: 32, scope: !504)
!504 = distinct !DILexicalBlock(scope: !499, file: !45, line: 264, column: 17)
!505 = !DILocation(line: 267, column: 17, scope: !504)
!506 = !DILocation(line: 263, column: 37, scope: !499)
!507 = !DILocation(line: 263, column: 17, scope: !499)
!508 = distinct !{!508, !502, !509, !207}
!509 = !DILocation(line: 267, column: 17, scope: !496)
!510 = !DILocation(line: 268, column: 30, scope: !494)
!511 = !DILocation(line: 268, column: 17, scope: !494)
!512 = !DILocation(line: 269, column: 13, scope: !494)
!513 = !DILocation(line: 271, column: 5, scope: !482)
!514 = !DILocation(line: 272, column: 1, scope: !463)
!515 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_08_good", scope: !45, file: !45, line: 274, type: !59, scopeLine: 275, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!516 = !DILocation(line: 276, column: 5, scope: !515)
!517 = !DILocation(line: 277, column: 5, scope: !515)
!518 = !DILocation(line: 278, column: 5, scope: !515)
!519 = !DILocation(line: 279, column: 5, scope: !515)
!520 = !DILocation(line: 280, column: 1, scope: !515)
!521 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !522, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !42}
!524 = !DILocalVariable(name: "line", arg: 1, scope: !521, file: !3, line: 11, type: !42)
!525 = !DILocation(line: 11, column: 25, scope: !521)
!526 = !DILocation(line: 13, column: 1, scope: !521)
!527 = !DILocation(line: 14, column: 8, scope: !528)
!528 = distinct !DILexicalBlock(scope: !521, file: !3, line: 14, column: 8)
!529 = !DILocation(line: 14, column: 13, scope: !528)
!530 = !DILocation(line: 14, column: 8, scope: !521)
!531 = !DILocation(line: 16, column: 24, scope: !532)
!532 = distinct !DILexicalBlock(scope: !528, file: !3, line: 15, column: 5)
!533 = !DILocation(line: 16, column: 9, scope: !532)
!534 = !DILocation(line: 17, column: 5, scope: !532)
!535 = !DILocation(line: 18, column: 5, scope: !521)
!536 = !DILocation(line: 19, column: 1, scope: !521)
!537 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !522, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!538 = !DILocalVariable(name: "line", arg: 1, scope: !537, file: !3, line: 20, type: !42)
!539 = !DILocation(line: 20, column: 29, scope: !537)
!540 = !DILocation(line: 22, column: 8, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !3, line: 22, column: 8)
!542 = !DILocation(line: 22, column: 13, scope: !541)
!543 = !DILocation(line: 22, column: 8, scope: !537)
!544 = !DILocation(line: 24, column: 24, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !3, line: 23, column: 5)
!546 = !DILocation(line: 24, column: 9, scope: !545)
!547 = !DILocation(line: 25, column: 5, scope: !545)
!548 = !DILocation(line: 26, column: 1, scope: !537)
!549 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !550, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!550 = !DISubroutineType(types: !551)
!551 = !{null, !552}
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !77, line: 74, baseType: !23)
!554 = !DILocalVariable(name: "line", arg: 1, scope: !549, file: !3, line: 27, type: !552)
!555 = !DILocation(line: 27, column: 29, scope: !549)
!556 = !DILocation(line: 29, column: 8, scope: !557)
!557 = distinct !DILexicalBlock(scope: !549, file: !3, line: 29, column: 8)
!558 = !DILocation(line: 29, column: 13, scope: !557)
!559 = !DILocation(line: 29, column: 8, scope: !549)
!560 = !DILocation(line: 31, column: 27, scope: !561)
!561 = distinct !DILexicalBlock(scope: !557, file: !3, line: 30, column: 5)
!562 = !DILocation(line: 31, column: 9, scope: !561)
!563 = !DILocation(line: 32, column: 5, scope: !561)
!564 = !DILocation(line: 33, column: 1, scope: !549)
!565 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !566, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!566 = !DISubroutineType(types: !567)
!567 = !{null, !23}
!568 = !DILocalVariable(name: "intNumber", arg: 1, scope: !565, file: !3, line: 35, type: !23)
!569 = !DILocation(line: 35, column: 24, scope: !565)
!570 = !DILocation(line: 37, column: 20, scope: !565)
!571 = !DILocation(line: 37, column: 5, scope: !565)
!572 = !DILocation(line: 38, column: 1, scope: !565)
!573 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !574, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !576}
!576 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!577 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !573, file: !3, line: 40, type: !576)
!578 = !DILocation(line: 40, column: 28, scope: !573)
!579 = !DILocation(line: 42, column: 21, scope: !573)
!580 = !DILocation(line: 42, column: 5, scope: !573)
!581 = !DILocation(line: 43, column: 1, scope: !573)
!582 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !583, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !585}
!585 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!586 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !582, file: !3, line: 45, type: !585)
!587 = !DILocation(line: 45, column: 28, scope: !582)
!588 = !DILocation(line: 47, column: 20, scope: !582)
!589 = !DILocation(line: 47, column: 5, scope: !582)
!590 = !DILocation(line: 48, column: 1, scope: !582)
!591 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !592, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!592 = !DISubroutineType(types: !593)
!593 = !{null, !111}
!594 = !DILocalVariable(name: "longNumber", arg: 1, scope: !591, file: !3, line: 50, type: !111)
!595 = !DILocation(line: 50, column: 26, scope: !591)
!596 = !DILocation(line: 52, column: 21, scope: !591)
!597 = !DILocation(line: 52, column: 5, scope: !591)
!598 = !DILocation(line: 53, column: 1, scope: !591)
!599 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !600, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !602}
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !603, line: 27, baseType: !604)
!603 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !110, line: 44, baseType: !111)
!605 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !599, file: !3, line: 55, type: !602)
!606 = !DILocation(line: 55, column: 33, scope: !599)
!607 = !DILocation(line: 57, column: 29, scope: !599)
!608 = !DILocation(line: 57, column: 5, scope: !599)
!609 = !DILocation(line: 58, column: 1, scope: !599)
!610 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !611, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DISubroutineType(types: !612)
!612 = !{null, !76}
!613 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !610, file: !3, line: 60, type: !76)
!614 = !DILocation(line: 60, column: 29, scope: !610)
!615 = !DILocation(line: 62, column: 21, scope: !610)
!616 = !DILocation(line: 62, column: 5, scope: !610)
!617 = !DILocation(line: 63, column: 1, scope: !610)
!618 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !619, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!619 = !DISubroutineType(types: !620)
!620 = !{null, !43}
!621 = !DILocalVariable(name: "charHex", arg: 1, scope: !618, file: !3, line: 65, type: !43)
!622 = !DILocation(line: 65, column: 29, scope: !618)
!623 = !DILocation(line: 67, column: 22, scope: !618)
!624 = !DILocation(line: 67, column: 5, scope: !618)
!625 = !DILocation(line: 68, column: 1, scope: !618)
!626 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !627, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!627 = !DISubroutineType(types: !628)
!628 = !{null, !553}
!629 = !DILocalVariable(name: "wideChar", arg: 1, scope: !626, file: !3, line: 70, type: !553)
!630 = !DILocation(line: 70, column: 29, scope: !626)
!631 = !DILocalVariable(name: "s", scope: !626, file: !3, line: 74, type: !632)
!632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 64, elements: !633)
!633 = !{!634}
!634 = !DISubrange(count: 2)
!635 = !DILocation(line: 74, column: 13, scope: !626)
!636 = !DILocation(line: 75, column: 16, scope: !626)
!637 = !DILocation(line: 75, column: 9, scope: !626)
!638 = !DILocation(line: 75, column: 14, scope: !626)
!639 = !DILocation(line: 76, column: 9, scope: !626)
!640 = !DILocation(line: 76, column: 14, scope: !626)
!641 = !DILocation(line: 77, column: 21, scope: !626)
!642 = !DILocation(line: 77, column: 5, scope: !626)
!643 = !DILocation(line: 78, column: 1, scope: !626)
!644 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !645, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !7}
!647 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !644, file: !3, line: 80, type: !7)
!648 = !DILocation(line: 80, column: 33, scope: !644)
!649 = !DILocation(line: 82, column: 20, scope: !644)
!650 = !DILocation(line: 82, column: 5, scope: !644)
!651 = !DILocation(line: 83, column: 1, scope: !644)
!652 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !653, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !25}
!655 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !652, file: !3, line: 85, type: !25)
!656 = !DILocation(line: 85, column: 45, scope: !652)
!657 = !DILocation(line: 87, column: 22, scope: !652)
!658 = !DILocation(line: 87, column: 5, scope: !652)
!659 = !DILocation(line: 88, column: 1, scope: !652)
!660 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !661, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !663}
!663 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!664 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !660, file: !3, line: 90, type: !663)
!665 = !DILocation(line: 90, column: 29, scope: !660)
!666 = !DILocation(line: 92, column: 20, scope: !660)
!667 = !DILocation(line: 92, column: 5, scope: !660)
!668 = !DILocation(line: 93, column: 1, scope: !660)
!669 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !670, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !674, line: 100, baseType: !675)
!674 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_081/source_code")
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !674, line: 96, size: 64, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !675, file: !674, line: 98, baseType: !23, size: 32)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !675, file: !674, line: 99, baseType: !23, size: 32, offset: 32)
!679 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !669, file: !3, line: 95, type: !672)
!680 = !DILocation(line: 95, column: 40, scope: !669)
!681 = !DILocation(line: 97, column: 26, scope: !669)
!682 = !DILocation(line: 97, column: 47, scope: !669)
!683 = !DILocation(line: 97, column: 55, scope: !669)
!684 = !DILocation(line: 97, column: 76, scope: !669)
!685 = !DILocation(line: 97, column: 5, scope: !669)
!686 = !DILocation(line: 98, column: 1, scope: !669)
!687 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !688, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !690, !76}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!691 = !DILocalVariable(name: "bytes", arg: 1, scope: !687, file: !3, line: 100, type: !690)
!692 = !DILocation(line: 100, column: 38, scope: !687)
!693 = !DILocalVariable(name: "numBytes", arg: 2, scope: !687, file: !3, line: 100, type: !76)
!694 = !DILocation(line: 100, column: 52, scope: !687)
!695 = !DILocalVariable(name: "i", scope: !687, file: !3, line: 102, type: !76)
!696 = !DILocation(line: 102, column: 12, scope: !687)
!697 = !DILocation(line: 103, column: 12, scope: !698)
!698 = distinct !DILexicalBlock(scope: !687, file: !3, line: 103, column: 5)
!699 = !DILocation(line: 103, column: 10, scope: !698)
!700 = !DILocation(line: 103, column: 17, scope: !701)
!701 = distinct !DILexicalBlock(scope: !698, file: !3, line: 103, column: 5)
!702 = !DILocation(line: 103, column: 21, scope: !701)
!703 = !DILocation(line: 103, column: 19, scope: !701)
!704 = !DILocation(line: 103, column: 5, scope: !698)
!705 = !DILocation(line: 105, column: 24, scope: !706)
!706 = distinct !DILexicalBlock(scope: !701, file: !3, line: 104, column: 5)
!707 = !DILocation(line: 105, column: 30, scope: !706)
!708 = !DILocation(line: 105, column: 9, scope: !706)
!709 = !DILocation(line: 106, column: 5, scope: !706)
!710 = !DILocation(line: 103, column: 31, scope: !701)
!711 = !DILocation(line: 103, column: 5, scope: !701)
!712 = distinct !{!712, !704, !713, !207}
!713 = !DILocation(line: 106, column: 5, scope: !698)
!714 = !DILocation(line: 107, column: 5, scope: !687)
!715 = !DILocation(line: 108, column: 1, scope: !687)
!716 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !717, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!717 = !DISubroutineType(types: !718)
!718 = !{!76, !690, !76, !42}
!719 = !DILocalVariable(name: "bytes", arg: 1, scope: !716, file: !3, line: 113, type: !690)
!720 = !DILocation(line: 113, column: 39, scope: !716)
!721 = !DILocalVariable(name: "numBytes", arg: 2, scope: !716, file: !3, line: 113, type: !76)
!722 = !DILocation(line: 113, column: 53, scope: !716)
!723 = !DILocalVariable(name: "hex", arg: 3, scope: !716, file: !3, line: 113, type: !42)
!724 = !DILocation(line: 113, column: 71, scope: !716)
!725 = !DILocalVariable(name: "numWritten", scope: !716, file: !3, line: 115, type: !76)
!726 = !DILocation(line: 115, column: 12, scope: !716)
!727 = !DILocation(line: 121, column: 5, scope: !716)
!728 = !DILocation(line: 121, column: 12, scope: !716)
!729 = !DILocation(line: 121, column: 25, scope: !716)
!730 = !DILocation(line: 121, column: 23, scope: !716)
!731 = !DILocation(line: 121, column: 34, scope: !716)
!732 = !DILocation(line: 121, column: 37, scope: !716)
!733 = !DILocation(line: 121, column: 67, scope: !716)
!734 = !DILocation(line: 121, column: 70, scope: !716)
!735 = !DILocation(line: 0, scope: !716)
!736 = !DILocalVariable(name: "byte", scope: !737, file: !3, line: 123, type: !23)
!737 = distinct !DILexicalBlock(scope: !716, file: !3, line: 122, column: 5)
!738 = !DILocation(line: 123, column: 13, scope: !737)
!739 = !DILocation(line: 124, column: 17, scope: !737)
!740 = !DILocation(line: 124, column: 25, scope: !737)
!741 = !DILocation(line: 124, column: 23, scope: !737)
!742 = !DILocation(line: 124, column: 9, scope: !737)
!743 = !DILocation(line: 125, column: 45, scope: !737)
!744 = !DILocation(line: 125, column: 29, scope: !737)
!745 = !DILocation(line: 125, column: 9, scope: !737)
!746 = !DILocation(line: 125, column: 15, scope: !737)
!747 = !DILocation(line: 125, column: 27, scope: !737)
!748 = !DILocation(line: 126, column: 9, scope: !737)
!749 = distinct !{!749, !727, !750, !207}
!750 = !DILocation(line: 127, column: 5, scope: !716)
!751 = !DILocation(line: 129, column: 12, scope: !716)
!752 = !DILocation(line: 129, column: 5, scope: !716)
!753 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !754, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!754 = !DISubroutineType(types: !755)
!755 = !{!76, !690, !76, !552}
!756 = !DILocalVariable(name: "bytes", arg: 1, scope: !753, file: !3, line: 135, type: !690)
!757 = !DILocation(line: 135, column: 41, scope: !753)
!758 = !DILocalVariable(name: "numBytes", arg: 2, scope: !753, file: !3, line: 135, type: !76)
!759 = !DILocation(line: 135, column: 55, scope: !753)
!760 = !DILocalVariable(name: "hex", arg: 3, scope: !753, file: !3, line: 135, type: !552)
!761 = !DILocation(line: 135, column: 76, scope: !753)
!762 = !DILocalVariable(name: "numWritten", scope: !753, file: !3, line: 137, type: !76)
!763 = !DILocation(line: 137, column: 12, scope: !753)
!764 = !DILocation(line: 143, column: 5, scope: !753)
!765 = !DILocation(line: 143, column: 12, scope: !753)
!766 = !DILocation(line: 143, column: 25, scope: !753)
!767 = !DILocation(line: 143, column: 23, scope: !753)
!768 = !DILocation(line: 143, column: 34, scope: !753)
!769 = !DILocation(line: 143, column: 47, scope: !753)
!770 = !DILocation(line: 143, column: 55, scope: !753)
!771 = !DILocation(line: 143, column: 53, scope: !753)
!772 = !DILocation(line: 143, column: 37, scope: !753)
!773 = !DILocation(line: 143, column: 68, scope: !753)
!774 = !DILocation(line: 143, column: 81, scope: !753)
!775 = !DILocation(line: 143, column: 89, scope: !753)
!776 = !DILocation(line: 143, column: 87, scope: !753)
!777 = !DILocation(line: 143, column: 100, scope: !753)
!778 = !DILocation(line: 143, column: 71, scope: !753)
!779 = !DILocation(line: 0, scope: !753)
!780 = !DILocalVariable(name: "byte", scope: !781, file: !3, line: 145, type: !23)
!781 = distinct !DILexicalBlock(scope: !753, file: !3, line: 144, column: 5)
!782 = !DILocation(line: 145, column: 13, scope: !781)
!783 = !DILocation(line: 146, column: 18, scope: !781)
!784 = !DILocation(line: 146, column: 26, scope: !781)
!785 = !DILocation(line: 146, column: 24, scope: !781)
!786 = !DILocation(line: 146, column: 9, scope: !781)
!787 = !DILocation(line: 147, column: 45, scope: !781)
!788 = !DILocation(line: 147, column: 29, scope: !781)
!789 = !DILocation(line: 147, column: 9, scope: !781)
!790 = !DILocation(line: 147, column: 15, scope: !781)
!791 = !DILocation(line: 147, column: 27, scope: !781)
!792 = !DILocation(line: 148, column: 9, scope: !781)
!793 = distinct !{!793, !764, !794, !207}
!794 = !DILocation(line: 149, column: 5, scope: !753)
!795 = !DILocation(line: 151, column: 12, scope: !753)
!796 = !DILocation(line: 151, column: 5, scope: !753)
!797 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !53, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!798 = !DILocation(line: 158, column: 5, scope: !797)
!799 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !53, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!800 = !DILocation(line: 163, column: 5, scope: !799)
!801 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !53, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!802 = !DILocation(line: 168, column: 13, scope: !801)
!803 = !DILocation(line: 168, column: 20, scope: !801)
!804 = !DILocation(line: 168, column: 5, scope: !801)
!805 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !59, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!806 = !DILocation(line: 187, column: 16, scope: !805)
!807 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !59, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!808 = !DILocation(line: 188, column: 16, scope: !807)
!809 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !59, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!810 = !DILocation(line: 189, column: 16, scope: !809)
!811 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !59, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!812 = !DILocation(line: 190, column: 16, scope: !811)
!813 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !59, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!814 = !DILocation(line: 191, column: 16, scope: !813)
!815 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !59, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!816 = !DILocation(line: 192, column: 16, scope: !815)
!817 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !59, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!818 = !DILocation(line: 193, column: 16, scope: !817)
!819 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !59, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!820 = !DILocation(line: 194, column: 16, scope: !819)
!821 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !59, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!822 = !DILocation(line: 195, column: 16, scope: !821)
!823 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !59, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!824 = !DILocation(line: 198, column: 15, scope: !823)
!825 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !59, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!826 = !DILocation(line: 199, column: 15, scope: !825)
!827 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !59, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!828 = !DILocation(line: 200, column: 15, scope: !827)
!829 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !59, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!830 = !DILocation(line: 201, column: 15, scope: !829)
!831 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !59, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!832 = !DILocation(line: 202, column: 15, scope: !831)
!833 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !59, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!834 = !DILocation(line: 203, column: 15, scope: !833)
!835 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !59, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!836 = !DILocation(line: 204, column: 15, scope: !835)
!837 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !59, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!838 = !DILocation(line: 205, column: 15, scope: !837)
!839 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !59, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!840 = !DILocation(line: 206, column: 15, scope: !839)
