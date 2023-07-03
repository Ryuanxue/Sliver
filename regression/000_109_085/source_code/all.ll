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
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.5 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.7 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.8 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4.11 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5.12 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_12_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i28 = alloca i32, align 4
  %n29 = alloca i32, align 4
  %intVariable30 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !64
  %tobool = icmp ne i32 %call, 0, !dbg !64
  br i1 %tobool, label %if.then, label %if.else, !dbg !66

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
  br label %if.end15, !dbg !167

if.else:                                          ; preds = %entry
  %11 = load i8*, i8** %data, align 8, !dbg !168
  %call14 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !170
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end13
  %call16 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !171
  %tobool17 = icmp ne i32 %call16, 0, !dbg !171
  br i1 %tobool17, label %if.then18, label %if.else27, !dbg !173

if.then18:                                        ; preds = %if.end15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !174, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i32* %n, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !180, metadata !DIExpression()), !dbg !181
  %12 = load i8*, i8** %data, align 8, !dbg !182
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !184
  %cmp20 = icmp eq i32 %call19, 1, !dbg !185
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !186

if.then22:                                        ; preds = %if.then18
  store i32 0, i32* %intVariable, align 4, !dbg !187
  store i32 0, i32* %i, align 4, !dbg !189
  br label %for.cond, !dbg !191

for.cond:                                         ; preds = %for.inc, %if.then22
  %13 = load i32, i32* %i, align 4, !dbg !192
  %14 = load i32, i32* %n, align 4, !dbg !194
  %cmp23 = icmp slt i32 %13, %14, !dbg !195
  br i1 %cmp23, label %for.body, label %for.end, !dbg !196

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !197
  %inc = add nsw i32 %15, 1, !dbg !197
  store i32 %inc, i32* %intVariable, align 4, !dbg !197
  br label %for.inc, !dbg !199

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !200
  %inc25 = add nsw i32 %16, 1, !dbg !200
  store i32 %inc25, i32* %i, align 4, !dbg !200
  br label %for.cond, !dbg !201, !llvm.loop !202

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !205
  call void @printIntLine(i32 %17), !dbg !206
  br label %if.end26, !dbg !207

if.end26:                                         ; preds = %for.end, %if.then18
  br label %if.end48, !dbg !208

if.else27:                                        ; preds = %if.end15
  call void @llvm.dbg.declare(metadata i32* %i28, metadata !209, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %n29, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata i32* %intVariable30, metadata !215, metadata !DIExpression()), !dbg !216
  %18 = load i8*, i8** %data, align 8, !dbg !217
  %call31 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n29) #8, !dbg !219
  %cmp32 = icmp eq i32 %call31, 1, !dbg !220
  br i1 %cmp32, label %if.then34, label %if.end47, !dbg !221

if.then34:                                        ; preds = %if.else27
  %19 = load i32, i32* %n29, align 4, !dbg !222
  %cmp35 = icmp slt i32 %19, 10000, !dbg !225
  br i1 %cmp35, label %if.then37, label %if.end46, !dbg !226

if.then37:                                        ; preds = %if.then34
  store i32 0, i32* %intVariable30, align 4, !dbg !227
  store i32 0, i32* %i28, align 4, !dbg !229
  br label %for.cond38, !dbg !231

for.cond38:                                       ; preds = %for.inc43, %if.then37
  %20 = load i32, i32* %i28, align 4, !dbg !232
  %21 = load i32, i32* %n29, align 4, !dbg !234
  %cmp39 = icmp slt i32 %20, %21, !dbg !235
  br i1 %cmp39, label %for.body41, label %for.end45, !dbg !236

for.body41:                                       ; preds = %for.cond38
  %22 = load i32, i32* %intVariable30, align 4, !dbg !237
  %inc42 = add nsw i32 %22, 1, !dbg !237
  store i32 %inc42, i32* %intVariable30, align 4, !dbg !237
  br label %for.inc43, !dbg !239

for.inc43:                                        ; preds = %for.body41
  %23 = load i32, i32* %i28, align 4, !dbg !240
  %inc44 = add nsw i32 %23, 1, !dbg !240
  store i32 %inc44, i32* %i28, align 4, !dbg !240
  br label %for.cond38, !dbg !241, !llvm.loop !242

for.end45:                                        ; preds = %for.cond38
  %24 = load i32, i32* %intVariable30, align 4, !dbg !244
  call void @printIntLine(i32 %24), !dbg !245
  br label %if.end46, !dbg !246

if.end46:                                         ; preds = %for.end45, %if.then34
  br label %if.end47, !dbg !247

if.end47:                                         ; preds = %if.end46, %if.else27
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end26
  ret void, !dbg !248
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
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !249 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %dataLen14 = alloca i64, align 8
  %pFile16 = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i54 = alloca i32, align 4
  %n55 = alloca i32, align 4
  %intVariable56 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !252, metadata !DIExpression()), !dbg !253
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !253
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !253
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !254
  store i8* %arraydecay, i8** %data, align 8, !dbg !255
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !256
  %tobool = icmp ne i32 %call, 0, !dbg !256
  br i1 %tobool, label %if.then, label %if.else, !dbg !258

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !259, metadata !DIExpression()), !dbg !262
  %1 = load i8*, i8** %data, align 8, !dbg !263
  %call1 = call i64 @strlen(i8* %1) #7, !dbg !264
  store i64 %call1, i64* %dataLen, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !265, metadata !DIExpression()), !dbg !266
  %2 = load i64, i64* %dataLen, align 8, !dbg !267
  %sub = sub i64 100, %2, !dbg !269
  %cmp = icmp ugt i64 %sub, 1, !dbg !270
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !271

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !272
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !274
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !275
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !277
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !278

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !279
  %5 = load i64, i64* %dataLen, align 8, !dbg !282
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !283
  %6 = load i64, i64* %dataLen, align 8, !dbg !284
  %sub6 = sub i64 100, %6, !dbg !285
  %conv = trunc i64 %sub6 to i32, !dbg !286
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !287
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !288
  %cmp8 = icmp eq i8* %call7, null, !dbg !289
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !290

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !291
  %8 = load i8*, i8** %data, align 8, !dbg !293
  %9 = load i64, i64* %dataLen, align 8, !dbg !294
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !293
  store i8 0, i8* %arrayidx, align 1, !dbg !295
  br label %if.end, !dbg !296

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !297
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !298
  br label %if.end12, !dbg !299

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !300

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end37, !dbg !301

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen14, metadata !302, metadata !DIExpression()), !dbg !305
  %11 = load i8*, i8** %data, align 8, !dbg !306
  %call15 = call i64 @strlen(i8* %11) #7, !dbg !307
  store i64 %call15, i64* %dataLen14, align 8, !dbg !305
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile16, metadata !308, metadata !DIExpression()), !dbg !309
  %12 = load i64, i64* %dataLen14, align 8, !dbg !310
  %sub17 = sub i64 100, %12, !dbg !312
  %cmp18 = icmp ugt i64 %sub17, 1, !dbg !313
  br i1 %cmp18, label %if.then20, label %if.end36, !dbg !314

if.then20:                                        ; preds = %if.else
  %call21 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !315
  store %struct._IO_FILE* %call21, %struct._IO_FILE** %pFile16, align 8, !dbg !317
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile16, align 8, !dbg !318
  %cmp22 = icmp ne %struct._IO_FILE* %13, null, !dbg !320
  br i1 %cmp22, label %if.then24, label %if.end35, !dbg !321

if.then24:                                        ; preds = %if.then20
  %14 = load i8*, i8** %data, align 8, !dbg !322
  %15 = load i64, i64* %dataLen14, align 8, !dbg !325
  %add.ptr25 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !326
  %16 = load i64, i64* %dataLen14, align 8, !dbg !327
  %sub26 = sub i64 100, %16, !dbg !328
  %conv27 = trunc i64 %sub26 to i32, !dbg !329
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile16, align 8, !dbg !330
  %call28 = call i8* @fgets(i8* %add.ptr25, i32 %conv27, %struct._IO_FILE* %17), !dbg !331
  %cmp29 = icmp eq i8* %call28, null, !dbg !332
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !333

if.then31:                                        ; preds = %if.then24
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !334
  %18 = load i8*, i8** %data, align 8, !dbg !336
  %19 = load i64, i64* %dataLen14, align 8, !dbg !337
  %arrayidx32 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !336
  store i8 0, i8* %arrayidx32, align 1, !dbg !338
  br label %if.end33, !dbg !339

if.end33:                                         ; preds = %if.then31, %if.then24
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile16, align 8, !dbg !340
  %call34 = call i32 @fclose(%struct._IO_FILE* %20), !dbg !341
  br label %if.end35, !dbg !342

if.end35:                                         ; preds = %if.end33, %if.then20
  br label %if.end36, !dbg !343

if.end36:                                         ; preds = %if.end35, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end13
  %call38 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !344
  %tobool39 = icmp ne i32 %call38, 0, !dbg !344
  br i1 %tobool39, label %if.then40, label %if.else53, !dbg !346

if.then40:                                        ; preds = %if.end37
  call void @llvm.dbg.declare(metadata i32* %i, metadata !347, metadata !DIExpression()), !dbg !350
  call void @llvm.dbg.declare(metadata i32* %n, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !353, metadata !DIExpression()), !dbg !354
  %21 = load i8*, i8** %data, align 8, !dbg !355
  %call41 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !357
  %cmp42 = icmp eq i32 %call41, 1, !dbg !358
  br i1 %cmp42, label %if.then44, label %if.end52, !dbg !359

if.then44:                                        ; preds = %if.then40
  %22 = load i32, i32* %n, align 4, !dbg !360
  %cmp45 = icmp slt i32 %22, 10000, !dbg !363
  br i1 %cmp45, label %if.then47, label %if.end51, !dbg !364

if.then47:                                        ; preds = %if.then44
  store i32 0, i32* %intVariable, align 4, !dbg !365
  store i32 0, i32* %i, align 4, !dbg !367
  br label %for.cond, !dbg !369

for.cond:                                         ; preds = %for.inc, %if.then47
  %23 = load i32, i32* %i, align 4, !dbg !370
  %24 = load i32, i32* %n, align 4, !dbg !372
  %cmp48 = icmp slt i32 %23, %24, !dbg !373
  br i1 %cmp48, label %for.body, label %for.end, !dbg !374

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %intVariable, align 4, !dbg !375
  %inc = add nsw i32 %25, 1, !dbg !375
  store i32 %inc, i32* %intVariable, align 4, !dbg !375
  br label %for.inc, !dbg !377

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !dbg !378
  %inc50 = add nsw i32 %26, 1, !dbg !378
  store i32 %inc50, i32* %i, align 4, !dbg !378
  br label %for.cond, !dbg !379, !llvm.loop !380

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !382
  call void @printIntLine(i32 %27), !dbg !383
  br label %if.end51, !dbg !384

if.end51:                                         ; preds = %for.end, %if.then44
  br label %if.end52, !dbg !385

if.end52:                                         ; preds = %if.end51, %if.then40
  br label %if.end74, !dbg !386

if.else53:                                        ; preds = %if.end37
  call void @llvm.dbg.declare(metadata i32* %i54, metadata !387, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata i32* %n55, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata i32* %intVariable56, metadata !393, metadata !DIExpression()), !dbg !394
  %28 = load i8*, i8** %data, align 8, !dbg !395
  %call57 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n55) #8, !dbg !397
  %cmp58 = icmp eq i32 %call57, 1, !dbg !398
  br i1 %cmp58, label %if.then60, label %if.end73, !dbg !399

if.then60:                                        ; preds = %if.else53
  %29 = load i32, i32* %n55, align 4, !dbg !400
  %cmp61 = icmp slt i32 %29, 10000, !dbg !403
  br i1 %cmp61, label %if.then63, label %if.end72, !dbg !404

if.then63:                                        ; preds = %if.then60
  store i32 0, i32* %intVariable56, align 4, !dbg !405
  store i32 0, i32* %i54, align 4, !dbg !407
  br label %for.cond64, !dbg !409

for.cond64:                                       ; preds = %for.inc69, %if.then63
  %30 = load i32, i32* %i54, align 4, !dbg !410
  %31 = load i32, i32* %n55, align 4, !dbg !412
  %cmp65 = icmp slt i32 %30, %31, !dbg !413
  br i1 %cmp65, label %for.body67, label %for.end71, !dbg !414

for.body67:                                       ; preds = %for.cond64
  %32 = load i32, i32* %intVariable56, align 4, !dbg !415
  %inc68 = add nsw i32 %32, 1, !dbg !415
  store i32 %inc68, i32* %intVariable56, align 4, !dbg !415
  br label %for.inc69, !dbg !417

for.inc69:                                        ; preds = %for.body67
  %33 = load i32, i32* %i54, align 4, !dbg !418
  %inc70 = add nsw i32 %33, 1, !dbg !418
  store i32 %inc70, i32* %i54, align 4, !dbg !418
  br label %for.cond64, !dbg !419, !llvm.loop !420

for.end71:                                        ; preds = %for.cond64
  %34 = load i32, i32* %intVariable56, align 4, !dbg !422
  call void @printIntLine(i32 %34), !dbg !423
  br label %if.end72, !dbg !424

if.end72:                                         ; preds = %for.end71, %if.then60
  br label %if.end73, !dbg !425

if.end73:                                         ; preds = %if.end72, %if.else53
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end52
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !427 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i12 = alloca i32, align 4
  %n13 = alloca i32, align 4
  %intVariable14 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !428, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !431
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !431
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !432
  store i8* %arraydecay, i8** %data, align 8, !dbg !433
  %call = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !434
  %tobool = icmp ne i32 %call, 0, !dbg !434
  br i1 %tobool, label %if.then, label %if.else, !dbg !436

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !437
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !439
  br label %if.end, !dbg !440

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !441
  %call2 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !443
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 (...) bitcast (i32 ()* @globalReturnsTrueOrFalse to i32 (...)*)(), !dbg !444
  %tobool4 = icmp ne i32 %call3, 0, !dbg !444
  br i1 %tobool4, label %if.then5, label %if.else11, !dbg !446

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !447, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata i32* %n, metadata !451, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !453, metadata !DIExpression()), !dbg !454
  %3 = load i8*, i8** %data, align 8, !dbg !455
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !457
  %cmp = icmp eq i32 %call6, 1, !dbg !458
  br i1 %cmp, label %if.then7, label %if.end10, !dbg !459

if.then7:                                         ; preds = %if.then5
  store i32 0, i32* %intVariable, align 4, !dbg !460
  store i32 0, i32* %i, align 4, !dbg !462
  br label %for.cond, !dbg !464

for.cond:                                         ; preds = %for.inc, %if.then7
  %4 = load i32, i32* %i, align 4, !dbg !465
  %5 = load i32, i32* %n, align 4, !dbg !467
  %cmp8 = icmp slt i32 %4, %5, !dbg !468
  br i1 %cmp8, label %for.body, label %for.end, !dbg !469

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !470
  %inc = add nsw i32 %6, 1, !dbg !470
  store i32 %inc, i32* %intVariable, align 4, !dbg !470
  br label %for.inc, !dbg !472

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !473
  %inc9 = add nsw i32 %7, 1, !dbg !473
  store i32 %inc9, i32* %i, align 4, !dbg !473
  br label %for.cond, !dbg !474, !llvm.loop !475

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !477
  call void @printIntLine(i32 %8), !dbg !478
  br label %if.end10, !dbg !479

if.end10:                                         ; preds = %for.end, %if.then5
  br label %if.end26, !dbg !480

if.else11:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i12, metadata !481, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.declare(metadata i32* %n13, metadata !485, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.declare(metadata i32* %intVariable14, metadata !487, metadata !DIExpression()), !dbg !488
  %9 = load i8*, i8** %data, align 8, !dbg !489
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n13) #8, !dbg !491
  %cmp16 = icmp eq i32 %call15, 1, !dbg !492
  br i1 %cmp16, label %if.then17, label %if.end25, !dbg !493

if.then17:                                        ; preds = %if.else11
  store i32 0, i32* %intVariable14, align 4, !dbg !494
  store i32 0, i32* %i12, align 4, !dbg !496
  br label %for.cond18, !dbg !498

for.cond18:                                       ; preds = %for.inc22, %if.then17
  %10 = load i32, i32* %i12, align 4, !dbg !499
  %11 = load i32, i32* %n13, align 4, !dbg !501
  %cmp19 = icmp slt i32 %10, %11, !dbg !502
  br i1 %cmp19, label %for.body20, label %for.end24, !dbg !503

for.body20:                                       ; preds = %for.cond18
  %12 = load i32, i32* %intVariable14, align 4, !dbg !504
  %inc21 = add nsw i32 %12, 1, !dbg !504
  store i32 %inc21, i32* %intVariable14, align 4, !dbg !504
  br label %for.inc22, !dbg !506

for.inc22:                                        ; preds = %for.body20
  %13 = load i32, i32* %i12, align 4, !dbg !507
  %inc23 = add nsw i32 %13, 1, !dbg !507
  store i32 %inc23, i32* %i12, align 4, !dbg !507
  br label %for.cond18, !dbg !508, !llvm.loop !509

for.end24:                                        ; preds = %for.cond18
  %14 = load i32, i32* %intVariable14, align 4, !dbg !511
  call void @printIntLine(i32 %14), !dbg !512
  br label %if.end25, !dbg !513

if.end25:                                         ; preds = %for.end24, %if.else11
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end10
  ret void, !dbg !514
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_12_good() #0 !dbg !515 {
entry:
  call void @goodB2G(), !dbg !516
  call void @goodG2B(), !dbg !517
  ret void, !dbg !518
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !519 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !522, metadata !DIExpression()), !dbg !523
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !524
  %0 = load i8*, i8** %line.addr, align 8, !dbg !525
  %cmp = icmp ne i8* %0, null, !dbg !527
  br i1 %cmp, label %if.then, label %if.end, !dbg !528

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !529
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !531
  br label %if.end, !dbg !532

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !533
  ret void, !dbg !534
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !535 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !536, metadata !DIExpression()), !dbg !537
  %0 = load i8*, i8** %line.addr, align 8, !dbg !538
  %cmp = icmp ne i8* %0, null, !dbg !540
  br i1 %cmp, label %if.then, label %if.end, !dbg !541

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !542
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !544
  br label %if.end, !dbg !545

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !546
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !547 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !552, metadata !DIExpression()), !dbg !553
  %0 = load i32*, i32** %line.addr, align 8, !dbg !554
  %cmp = icmp ne i32* %0, null, !dbg !556
  br i1 %cmp, label %if.then, label %if.end, !dbg !557

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !558
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !560
  br label %if.end, !dbg !561

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !562
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !563 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !566, metadata !DIExpression()), !dbg !567
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !568
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.11, i64 0, i64 0), i32 %0), !dbg !569
  ret void, !dbg !570
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !571 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !575, metadata !DIExpression()), !dbg !576
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !577
  %conv = sext i16 %0 to i32, !dbg !577
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.12, i64 0, i64 0), i32 %conv), !dbg !578
  ret void, !dbg !579
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !580 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !584, metadata !DIExpression()), !dbg !585
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !586
  %conv = fpext float %0 to double, !dbg !586
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !587
  ret void, !dbg !588
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !589 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !592, metadata !DIExpression()), !dbg !593
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !594
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !595
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !597 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !603, metadata !DIExpression()), !dbg !604
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !605
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !606
  ret void, !dbg !607
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !608 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !611, metadata !DIExpression()), !dbg !612
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !613
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !614
  ret void, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !616 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !619, metadata !DIExpression()), !dbg !620
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !621
  %conv = sext i8 %0 to i32, !dbg !621
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !622
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !624 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !627, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !629, metadata !DIExpression()), !dbg !633
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !634
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !635
  store i32 %0, i32* %arrayidx, align 4, !dbg !636
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !637
  store i32 0, i32* %arrayidx1, align 4, !dbg !638
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !639
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !640
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !642 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !645, metadata !DIExpression()), !dbg !646
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !647
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !648
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !650 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !653, metadata !DIExpression()), !dbg !654
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !655
  %conv = zext i8 %0 to i32, !dbg !655
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !656
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !658 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !662, metadata !DIExpression()), !dbg !663
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !664
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !665
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !667 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !677, metadata !DIExpression()), !dbg !678
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !679
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !680
  %1 = load i32, i32* %intOne, align 4, !dbg !680
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !681
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !682
  %3 = load i32, i32* %intTwo, align 4, !dbg !682
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !683
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !685 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !689, metadata !DIExpression()), !dbg !690
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !691, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.declare(metadata i64* %i, metadata !693, metadata !DIExpression()), !dbg !694
  store i64 0, i64* %i, align 8, !dbg !695
  br label %for.cond, !dbg !697

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !698
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !700
  %cmp = icmp ult i64 %0, %1, !dbg !701
  br i1 %cmp, label %for.body, label %for.end, !dbg !702

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !703
  %3 = load i64, i64* %i, align 8, !dbg !705
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !703
  %4 = load i8, i8* %arrayidx, align 1, !dbg !703
  %conv = zext i8 %4 to i32, !dbg !703
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !706
  br label %for.inc, !dbg !707

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !708
  %inc = add i64 %5, 1, !dbg !708
  store i64 %inc, i64* %i, align 8, !dbg !708
  br label %for.cond, !dbg !709, !llvm.loop !710

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !712
  ret void, !dbg !713
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !714 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !717, metadata !DIExpression()), !dbg !718
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !719, metadata !DIExpression()), !dbg !720
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !721, metadata !DIExpression()), !dbg !722
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !723, metadata !DIExpression()), !dbg !724
  store i64 0, i64* %numWritten, align 8, !dbg !724
  br label %while.cond, !dbg !725

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !726
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !727
  %cmp = icmp ult i64 %0, %1, !dbg !728
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !729

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !730
  %2 = load i16*, i16** %call, align 8, !dbg !730
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !730
  %4 = load i64, i64* %numWritten, align 8, !dbg !730
  %mul = mul i64 2, %4, !dbg !730
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !730
  %5 = load i8, i8* %arrayidx, align 1, !dbg !730
  %conv = sext i8 %5 to i32, !dbg !730
  %idxprom = sext i32 %conv to i64, !dbg !730
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !730
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !730
  %conv2 = zext i16 %6 to i32, !dbg !730
  %and = and i32 %conv2, 4096, !dbg !730
  %tobool = icmp ne i32 %and, 0, !dbg !730
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !731

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !732
  %7 = load i16*, i16** %call3, align 8, !dbg !732
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !732
  %9 = load i64, i64* %numWritten, align 8, !dbg !732
  %mul4 = mul i64 2, %9, !dbg !732
  %add = add i64 %mul4, 1, !dbg !732
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !732
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !732
  %conv6 = sext i8 %10 to i32, !dbg !732
  %idxprom7 = sext i32 %conv6 to i64, !dbg !732
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !732
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !732
  %conv9 = zext i16 %11 to i32, !dbg !732
  %and10 = and i32 %conv9, 4096, !dbg !732
  %tobool11 = icmp ne i32 %and10, 0, !dbg !731
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !733
  br i1 %12, label %while.body, label %while.end, !dbg !725

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !734, metadata !DIExpression()), !dbg !736
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !737
  %14 = load i64, i64* %numWritten, align 8, !dbg !738
  %mul12 = mul i64 2, %14, !dbg !739
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !737
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !740
  %15 = load i32, i32* %byte, align 4, !dbg !741
  %conv15 = trunc i32 %15 to i8, !dbg !742
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !743
  %17 = load i64, i64* %numWritten, align 8, !dbg !744
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !743
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !745
  %18 = load i64, i64* %numWritten, align 8, !dbg !746
  %inc = add i64 %18, 1, !dbg !746
  store i64 %inc, i64* %numWritten, align 8, !dbg !746
  br label %while.cond, !dbg !725, !llvm.loop !747

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !749
  ret i64 %19, !dbg !750
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !751 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !754, metadata !DIExpression()), !dbg !755
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !756, metadata !DIExpression()), !dbg !757
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !758, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !760, metadata !DIExpression()), !dbg !761
  store i64 0, i64* %numWritten, align 8, !dbg !761
  br label %while.cond, !dbg !762

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !763
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !764
  %cmp = icmp ult i64 %0, %1, !dbg !765
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !766

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !767
  %3 = load i64, i64* %numWritten, align 8, !dbg !768
  %mul = mul i64 2, %3, !dbg !769
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !767
  %4 = load i32, i32* %arrayidx, align 4, !dbg !767
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !770
  %tobool = icmp ne i32 %call, 0, !dbg !770
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !771

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !772
  %6 = load i64, i64* %numWritten, align 8, !dbg !773
  %mul1 = mul i64 2, %6, !dbg !774
  %add = add i64 %mul1, 1, !dbg !775
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !772
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !772
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !776
  %tobool4 = icmp ne i32 %call3, 0, !dbg !771
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !777
  br i1 %8, label %while.body, label %while.end, !dbg !762

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !778, metadata !DIExpression()), !dbg !780
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !781
  %10 = load i64, i64* %numWritten, align 8, !dbg !782
  %mul5 = mul i64 2, %10, !dbg !783
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !781
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !784
  %11 = load i32, i32* %byte, align 4, !dbg !785
  %conv = trunc i32 %11 to i8, !dbg !786
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !787
  %13 = load i64, i64* %numWritten, align 8, !dbg !788
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !787
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !789
  %14 = load i64, i64* %numWritten, align 8, !dbg !790
  %inc = add i64 %14, 1, !dbg !790
  store i64 %inc, i64* %numWritten, align 8, !dbg !790
  br label %while.cond, !dbg !762, !llvm.loop !791

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !793
  ret i64 %15, !dbg !794
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !795 {
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_085/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_085/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_12_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 37, type: !42)
!56 = !DILocation(line: 37, column: 12, scope: !52)
!57 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 38, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 100)
!61 = !DILocation(line: 38, column: 10, scope: !52)
!62 = !DILocation(line: 39, column: 12, scope: !52)
!63 = !DILocation(line: 39, column: 10, scope: !52)
!64 = !DILocation(line: 40, column: 8, scope: !65)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 40, column: 8)
!66 = !DILocation(line: 40, column: 8, scope: !52)
!67 = !DILocalVariable(name: "dataLen", scope: !68, file: !45, line: 44, type: !70)
!68 = distinct !DILexicalBlock(scope: !69, file: !45, line: 42, column: 9)
!69 = distinct !DILexicalBlock(scope: !65, file: !45, line: 41, column: 5)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !71, line: 46, baseType: !72)
!71 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DILocation(line: 44, column: 20, scope: !68)
!74 = !DILocation(line: 44, column: 37, scope: !68)
!75 = !DILocation(line: 44, column: 30, scope: !68)
!76 = !DILocalVariable(name: "pFile", scope: !68, file: !45, line: 45, type: !77)
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
!132 = !DILocation(line: 45, column: 20, scope: !68)
!133 = !DILocation(line: 47, column: 21, scope: !134)
!134 = distinct !DILexicalBlock(scope: !68, file: !45, line: 47, column: 17)
!135 = !DILocation(line: 47, column: 20, scope: !134)
!136 = !DILocation(line: 47, column: 29, scope: !134)
!137 = !DILocation(line: 47, column: 17, scope: !68)
!138 = !DILocation(line: 49, column: 25, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !45, line: 48, column: 13)
!140 = !DILocation(line: 49, column: 23, scope: !139)
!141 = !DILocation(line: 50, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !45, line: 50, column: 21)
!143 = !DILocation(line: 50, column: 27, scope: !142)
!144 = !DILocation(line: 50, column: 21, scope: !139)
!145 = !DILocation(line: 53, column: 31, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !45, line: 53, column: 25)
!147 = distinct !DILexicalBlock(scope: !142, file: !45, line: 51, column: 17)
!148 = !DILocation(line: 53, column: 36, scope: !146)
!149 = !DILocation(line: 53, column: 35, scope: !146)
!150 = !DILocation(line: 53, column: 55, scope: !146)
!151 = !DILocation(line: 53, column: 54, scope: !146)
!152 = !DILocation(line: 53, column: 45, scope: !146)
!153 = !DILocation(line: 53, column: 65, scope: !146)
!154 = !DILocation(line: 53, column: 25, scope: !146)
!155 = !DILocation(line: 53, column: 72, scope: !146)
!156 = !DILocation(line: 53, column: 25, scope: !147)
!157 = !DILocation(line: 55, column: 25, scope: !158)
!158 = distinct !DILexicalBlock(scope: !146, file: !45, line: 54, column: 21)
!159 = !DILocation(line: 57, column: 25, scope: !158)
!160 = !DILocation(line: 57, column: 30, scope: !158)
!161 = !DILocation(line: 57, column: 39, scope: !158)
!162 = !DILocation(line: 58, column: 21, scope: !158)
!163 = !DILocation(line: 59, column: 28, scope: !147)
!164 = !DILocation(line: 59, column: 21, scope: !147)
!165 = !DILocation(line: 60, column: 17, scope: !147)
!166 = !DILocation(line: 61, column: 13, scope: !139)
!167 = !DILocation(line: 63, column: 5, scope: !69)
!168 = !DILocation(line: 67, column: 16, scope: !169)
!169 = distinct !DILexicalBlock(scope: !65, file: !45, line: 65, column: 5)
!170 = !DILocation(line: 67, column: 9, scope: !169)
!171 = !DILocation(line: 69, column: 8, scope: !172)
!172 = distinct !DILexicalBlock(scope: !52, file: !45, line: 69, column: 8)
!173 = !DILocation(line: 69, column: 8, scope: !52)
!174 = !DILocalVariable(name: "i", scope: !175, file: !45, line: 72, type: !23)
!175 = distinct !DILexicalBlock(scope: !176, file: !45, line: 71, column: 9)
!176 = distinct !DILexicalBlock(scope: !172, file: !45, line: 70, column: 5)
!177 = !DILocation(line: 72, column: 17, scope: !175)
!178 = !DILocalVariable(name: "n", scope: !175, file: !45, line: 72, type: !23)
!179 = !DILocation(line: 72, column: 20, scope: !175)
!180 = !DILocalVariable(name: "intVariable", scope: !175, file: !45, line: 72, type: !23)
!181 = !DILocation(line: 72, column: 23, scope: !175)
!182 = !DILocation(line: 73, column: 24, scope: !183)
!183 = distinct !DILexicalBlock(scope: !175, file: !45, line: 73, column: 17)
!184 = !DILocation(line: 73, column: 17, scope: !183)
!185 = !DILocation(line: 73, column: 40, scope: !183)
!186 = !DILocation(line: 73, column: 17, scope: !175)
!187 = !DILocation(line: 76, column: 29, scope: !188)
!188 = distinct !DILexicalBlock(scope: !183, file: !45, line: 74, column: 13)
!189 = !DILocation(line: 77, column: 24, scope: !190)
!190 = distinct !DILexicalBlock(scope: !188, file: !45, line: 77, column: 17)
!191 = !DILocation(line: 77, column: 22, scope: !190)
!192 = !DILocation(line: 77, column: 29, scope: !193)
!193 = distinct !DILexicalBlock(scope: !190, file: !45, line: 77, column: 17)
!194 = !DILocation(line: 77, column: 33, scope: !193)
!195 = !DILocation(line: 77, column: 31, scope: !193)
!196 = !DILocation(line: 77, column: 17, scope: !190)
!197 = !DILocation(line: 80, column: 32, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !45, line: 78, column: 17)
!199 = !DILocation(line: 81, column: 17, scope: !198)
!200 = !DILocation(line: 77, column: 37, scope: !193)
!201 = !DILocation(line: 77, column: 17, scope: !193)
!202 = distinct !{!202, !196, !203, !204}
!203 = !DILocation(line: 81, column: 17, scope: !190)
!204 = !{!"llvm.loop.mustprogress"}
!205 = !DILocation(line: 82, column: 30, scope: !188)
!206 = !DILocation(line: 82, column: 17, scope: !188)
!207 = !DILocation(line: 83, column: 13, scope: !188)
!208 = !DILocation(line: 85, column: 5, scope: !176)
!209 = !DILocalVariable(name: "i", scope: !210, file: !45, line: 89, type: !23)
!210 = distinct !DILexicalBlock(scope: !211, file: !45, line: 88, column: 9)
!211 = distinct !DILexicalBlock(scope: !172, file: !45, line: 87, column: 5)
!212 = !DILocation(line: 89, column: 17, scope: !210)
!213 = !DILocalVariable(name: "n", scope: !210, file: !45, line: 89, type: !23)
!214 = !DILocation(line: 89, column: 20, scope: !210)
!215 = !DILocalVariable(name: "intVariable", scope: !210, file: !45, line: 89, type: !23)
!216 = !DILocation(line: 89, column: 23, scope: !210)
!217 = !DILocation(line: 90, column: 24, scope: !218)
!218 = distinct !DILexicalBlock(scope: !210, file: !45, line: 90, column: 17)
!219 = !DILocation(line: 90, column: 17, scope: !218)
!220 = !DILocation(line: 90, column: 40, scope: !218)
!221 = !DILocation(line: 90, column: 17, scope: !210)
!222 = !DILocation(line: 93, column: 21, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !45, line: 93, column: 21)
!224 = distinct !DILexicalBlock(scope: !218, file: !45, line: 91, column: 13)
!225 = !DILocation(line: 93, column: 23, scope: !223)
!226 = !DILocation(line: 93, column: 21, scope: !224)
!227 = !DILocation(line: 95, column: 33, scope: !228)
!228 = distinct !DILexicalBlock(scope: !223, file: !45, line: 94, column: 17)
!229 = !DILocation(line: 96, column: 28, scope: !230)
!230 = distinct !DILexicalBlock(scope: !228, file: !45, line: 96, column: 21)
!231 = !DILocation(line: 96, column: 26, scope: !230)
!232 = !DILocation(line: 96, column: 33, scope: !233)
!233 = distinct !DILexicalBlock(scope: !230, file: !45, line: 96, column: 21)
!234 = !DILocation(line: 96, column: 37, scope: !233)
!235 = !DILocation(line: 96, column: 35, scope: !233)
!236 = !DILocation(line: 96, column: 21, scope: !230)
!237 = !DILocation(line: 99, column: 36, scope: !238)
!238 = distinct !DILexicalBlock(scope: !233, file: !45, line: 97, column: 21)
!239 = !DILocation(line: 100, column: 21, scope: !238)
!240 = !DILocation(line: 96, column: 41, scope: !233)
!241 = !DILocation(line: 96, column: 21, scope: !233)
!242 = distinct !{!242, !236, !243, !204}
!243 = !DILocation(line: 100, column: 21, scope: !230)
!244 = !DILocation(line: 101, column: 34, scope: !228)
!245 = !DILocation(line: 101, column: 21, scope: !228)
!246 = !DILocation(line: 102, column: 17, scope: !228)
!247 = !DILocation(line: 103, column: 13, scope: !224)
!248 = !DILocation(line: 106, column: 1, scope: !52)
!249 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 115, type: !53, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!250 = !DILocalVariable(name: "data", scope: !249, file: !45, line: 117, type: !42)
!251 = !DILocation(line: 117, column: 12, scope: !249)
!252 = !DILocalVariable(name: "dataBuffer", scope: !249, file: !45, line: 118, type: !58)
!253 = !DILocation(line: 118, column: 10, scope: !249)
!254 = !DILocation(line: 119, column: 12, scope: !249)
!255 = !DILocation(line: 119, column: 10, scope: !249)
!256 = !DILocation(line: 120, column: 8, scope: !257)
!257 = distinct !DILexicalBlock(scope: !249, file: !45, line: 120, column: 8)
!258 = !DILocation(line: 120, column: 8, scope: !249)
!259 = !DILocalVariable(name: "dataLen", scope: !260, file: !45, line: 124, type: !70)
!260 = distinct !DILexicalBlock(scope: !261, file: !45, line: 122, column: 9)
!261 = distinct !DILexicalBlock(scope: !257, file: !45, line: 121, column: 5)
!262 = !DILocation(line: 124, column: 20, scope: !260)
!263 = !DILocation(line: 124, column: 37, scope: !260)
!264 = !DILocation(line: 124, column: 30, scope: !260)
!265 = !DILocalVariable(name: "pFile", scope: !260, file: !45, line: 125, type: !77)
!266 = !DILocation(line: 125, column: 20, scope: !260)
!267 = !DILocation(line: 127, column: 21, scope: !268)
!268 = distinct !DILexicalBlock(scope: !260, file: !45, line: 127, column: 17)
!269 = !DILocation(line: 127, column: 20, scope: !268)
!270 = !DILocation(line: 127, column: 29, scope: !268)
!271 = !DILocation(line: 127, column: 17, scope: !260)
!272 = !DILocation(line: 129, column: 25, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !45, line: 128, column: 13)
!274 = !DILocation(line: 129, column: 23, scope: !273)
!275 = !DILocation(line: 130, column: 21, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !45, line: 130, column: 21)
!277 = !DILocation(line: 130, column: 27, scope: !276)
!278 = !DILocation(line: 130, column: 21, scope: !273)
!279 = !DILocation(line: 133, column: 31, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !45, line: 133, column: 25)
!281 = distinct !DILexicalBlock(scope: !276, file: !45, line: 131, column: 17)
!282 = !DILocation(line: 133, column: 36, scope: !280)
!283 = !DILocation(line: 133, column: 35, scope: !280)
!284 = !DILocation(line: 133, column: 55, scope: !280)
!285 = !DILocation(line: 133, column: 54, scope: !280)
!286 = !DILocation(line: 133, column: 45, scope: !280)
!287 = !DILocation(line: 133, column: 65, scope: !280)
!288 = !DILocation(line: 133, column: 25, scope: !280)
!289 = !DILocation(line: 133, column: 72, scope: !280)
!290 = !DILocation(line: 133, column: 25, scope: !281)
!291 = !DILocation(line: 135, column: 25, scope: !292)
!292 = distinct !DILexicalBlock(scope: !280, file: !45, line: 134, column: 21)
!293 = !DILocation(line: 137, column: 25, scope: !292)
!294 = !DILocation(line: 137, column: 30, scope: !292)
!295 = !DILocation(line: 137, column: 39, scope: !292)
!296 = !DILocation(line: 138, column: 21, scope: !292)
!297 = !DILocation(line: 139, column: 28, scope: !281)
!298 = !DILocation(line: 139, column: 21, scope: !281)
!299 = !DILocation(line: 140, column: 17, scope: !281)
!300 = !DILocation(line: 141, column: 13, scope: !273)
!301 = !DILocation(line: 143, column: 5, scope: !261)
!302 = !DILocalVariable(name: "dataLen", scope: !303, file: !45, line: 148, type: !70)
!303 = distinct !DILexicalBlock(scope: !304, file: !45, line: 146, column: 9)
!304 = distinct !DILexicalBlock(scope: !257, file: !45, line: 145, column: 5)
!305 = !DILocation(line: 148, column: 20, scope: !303)
!306 = !DILocation(line: 148, column: 37, scope: !303)
!307 = !DILocation(line: 148, column: 30, scope: !303)
!308 = !DILocalVariable(name: "pFile", scope: !303, file: !45, line: 149, type: !77)
!309 = !DILocation(line: 149, column: 20, scope: !303)
!310 = !DILocation(line: 151, column: 21, scope: !311)
!311 = distinct !DILexicalBlock(scope: !303, file: !45, line: 151, column: 17)
!312 = !DILocation(line: 151, column: 20, scope: !311)
!313 = !DILocation(line: 151, column: 29, scope: !311)
!314 = !DILocation(line: 151, column: 17, scope: !303)
!315 = !DILocation(line: 153, column: 25, scope: !316)
!316 = distinct !DILexicalBlock(scope: !311, file: !45, line: 152, column: 13)
!317 = !DILocation(line: 153, column: 23, scope: !316)
!318 = !DILocation(line: 154, column: 21, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !45, line: 154, column: 21)
!320 = !DILocation(line: 154, column: 27, scope: !319)
!321 = !DILocation(line: 154, column: 21, scope: !316)
!322 = !DILocation(line: 157, column: 31, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !45, line: 157, column: 25)
!324 = distinct !DILexicalBlock(scope: !319, file: !45, line: 155, column: 17)
!325 = !DILocation(line: 157, column: 36, scope: !323)
!326 = !DILocation(line: 157, column: 35, scope: !323)
!327 = !DILocation(line: 157, column: 55, scope: !323)
!328 = !DILocation(line: 157, column: 54, scope: !323)
!329 = !DILocation(line: 157, column: 45, scope: !323)
!330 = !DILocation(line: 157, column: 65, scope: !323)
!331 = !DILocation(line: 157, column: 25, scope: !323)
!332 = !DILocation(line: 157, column: 72, scope: !323)
!333 = !DILocation(line: 157, column: 25, scope: !324)
!334 = !DILocation(line: 159, column: 25, scope: !335)
!335 = distinct !DILexicalBlock(scope: !323, file: !45, line: 158, column: 21)
!336 = !DILocation(line: 161, column: 25, scope: !335)
!337 = !DILocation(line: 161, column: 30, scope: !335)
!338 = !DILocation(line: 161, column: 39, scope: !335)
!339 = !DILocation(line: 162, column: 21, scope: !335)
!340 = !DILocation(line: 163, column: 28, scope: !324)
!341 = !DILocation(line: 163, column: 21, scope: !324)
!342 = !DILocation(line: 164, column: 17, scope: !324)
!343 = !DILocation(line: 165, column: 13, scope: !316)
!344 = !DILocation(line: 168, column: 8, scope: !345)
!345 = distinct !DILexicalBlock(scope: !249, file: !45, line: 168, column: 8)
!346 = !DILocation(line: 168, column: 8, scope: !249)
!347 = !DILocalVariable(name: "i", scope: !348, file: !45, line: 171, type: !23)
!348 = distinct !DILexicalBlock(scope: !349, file: !45, line: 170, column: 9)
!349 = distinct !DILexicalBlock(scope: !345, file: !45, line: 169, column: 5)
!350 = !DILocation(line: 171, column: 17, scope: !348)
!351 = !DILocalVariable(name: "n", scope: !348, file: !45, line: 171, type: !23)
!352 = !DILocation(line: 171, column: 20, scope: !348)
!353 = !DILocalVariable(name: "intVariable", scope: !348, file: !45, line: 171, type: !23)
!354 = !DILocation(line: 171, column: 23, scope: !348)
!355 = !DILocation(line: 172, column: 24, scope: !356)
!356 = distinct !DILexicalBlock(scope: !348, file: !45, line: 172, column: 17)
!357 = !DILocation(line: 172, column: 17, scope: !356)
!358 = !DILocation(line: 172, column: 40, scope: !356)
!359 = !DILocation(line: 172, column: 17, scope: !348)
!360 = !DILocation(line: 175, column: 21, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !45, line: 175, column: 21)
!362 = distinct !DILexicalBlock(scope: !356, file: !45, line: 173, column: 13)
!363 = !DILocation(line: 175, column: 23, scope: !361)
!364 = !DILocation(line: 175, column: 21, scope: !362)
!365 = !DILocation(line: 177, column: 33, scope: !366)
!366 = distinct !DILexicalBlock(scope: !361, file: !45, line: 176, column: 17)
!367 = !DILocation(line: 178, column: 28, scope: !368)
!368 = distinct !DILexicalBlock(scope: !366, file: !45, line: 178, column: 21)
!369 = !DILocation(line: 178, column: 26, scope: !368)
!370 = !DILocation(line: 178, column: 33, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !45, line: 178, column: 21)
!372 = !DILocation(line: 178, column: 37, scope: !371)
!373 = !DILocation(line: 178, column: 35, scope: !371)
!374 = !DILocation(line: 178, column: 21, scope: !368)
!375 = !DILocation(line: 181, column: 36, scope: !376)
!376 = distinct !DILexicalBlock(scope: !371, file: !45, line: 179, column: 21)
!377 = !DILocation(line: 182, column: 21, scope: !376)
!378 = !DILocation(line: 178, column: 41, scope: !371)
!379 = !DILocation(line: 178, column: 21, scope: !371)
!380 = distinct !{!380, !374, !381, !204}
!381 = !DILocation(line: 182, column: 21, scope: !368)
!382 = !DILocation(line: 183, column: 34, scope: !366)
!383 = !DILocation(line: 183, column: 21, scope: !366)
!384 = !DILocation(line: 184, column: 17, scope: !366)
!385 = !DILocation(line: 185, column: 13, scope: !362)
!386 = !DILocation(line: 187, column: 5, scope: !349)
!387 = !DILocalVariable(name: "i", scope: !388, file: !45, line: 191, type: !23)
!388 = distinct !DILexicalBlock(scope: !389, file: !45, line: 190, column: 9)
!389 = distinct !DILexicalBlock(scope: !345, file: !45, line: 189, column: 5)
!390 = !DILocation(line: 191, column: 17, scope: !388)
!391 = !DILocalVariable(name: "n", scope: !388, file: !45, line: 191, type: !23)
!392 = !DILocation(line: 191, column: 20, scope: !388)
!393 = !DILocalVariable(name: "intVariable", scope: !388, file: !45, line: 191, type: !23)
!394 = !DILocation(line: 191, column: 23, scope: !388)
!395 = !DILocation(line: 192, column: 24, scope: !396)
!396 = distinct !DILexicalBlock(scope: !388, file: !45, line: 192, column: 17)
!397 = !DILocation(line: 192, column: 17, scope: !396)
!398 = !DILocation(line: 192, column: 40, scope: !396)
!399 = !DILocation(line: 192, column: 17, scope: !388)
!400 = !DILocation(line: 195, column: 21, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !45, line: 195, column: 21)
!402 = distinct !DILexicalBlock(scope: !396, file: !45, line: 193, column: 13)
!403 = !DILocation(line: 195, column: 23, scope: !401)
!404 = !DILocation(line: 195, column: 21, scope: !402)
!405 = !DILocation(line: 197, column: 33, scope: !406)
!406 = distinct !DILexicalBlock(scope: !401, file: !45, line: 196, column: 17)
!407 = !DILocation(line: 198, column: 28, scope: !408)
!408 = distinct !DILexicalBlock(scope: !406, file: !45, line: 198, column: 21)
!409 = !DILocation(line: 198, column: 26, scope: !408)
!410 = !DILocation(line: 198, column: 33, scope: !411)
!411 = distinct !DILexicalBlock(scope: !408, file: !45, line: 198, column: 21)
!412 = !DILocation(line: 198, column: 37, scope: !411)
!413 = !DILocation(line: 198, column: 35, scope: !411)
!414 = !DILocation(line: 198, column: 21, scope: !408)
!415 = !DILocation(line: 201, column: 36, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !45, line: 199, column: 21)
!417 = !DILocation(line: 202, column: 21, scope: !416)
!418 = !DILocation(line: 198, column: 41, scope: !411)
!419 = !DILocation(line: 198, column: 21, scope: !411)
!420 = distinct !{!420, !414, !421, !204}
!421 = !DILocation(line: 202, column: 21, scope: !408)
!422 = !DILocation(line: 203, column: 34, scope: !406)
!423 = !DILocation(line: 203, column: 21, scope: !406)
!424 = !DILocation(line: 204, column: 17, scope: !406)
!425 = !DILocation(line: 205, column: 13, scope: !402)
!426 = !DILocation(line: 208, column: 1, scope: !249)
!427 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 213, type: !53, scopeLine: 214, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!428 = !DILocalVariable(name: "data", scope: !427, file: !45, line: 215, type: !42)
!429 = !DILocation(line: 215, column: 12, scope: !427)
!430 = !DILocalVariable(name: "dataBuffer", scope: !427, file: !45, line: 216, type: !58)
!431 = !DILocation(line: 216, column: 10, scope: !427)
!432 = !DILocation(line: 217, column: 12, scope: !427)
!433 = !DILocation(line: 217, column: 10, scope: !427)
!434 = !DILocation(line: 218, column: 8, scope: !435)
!435 = distinct !DILexicalBlock(scope: !427, file: !45, line: 218, column: 8)
!436 = !DILocation(line: 218, column: 8, scope: !427)
!437 = !DILocation(line: 221, column: 16, scope: !438)
!438 = distinct !DILexicalBlock(scope: !435, file: !45, line: 219, column: 5)
!439 = !DILocation(line: 221, column: 9, scope: !438)
!440 = !DILocation(line: 222, column: 5, scope: !438)
!441 = !DILocation(line: 226, column: 16, scope: !442)
!442 = distinct !DILexicalBlock(scope: !435, file: !45, line: 224, column: 5)
!443 = !DILocation(line: 226, column: 9, scope: !442)
!444 = !DILocation(line: 228, column: 8, scope: !445)
!445 = distinct !DILexicalBlock(scope: !427, file: !45, line: 228, column: 8)
!446 = !DILocation(line: 228, column: 8, scope: !427)
!447 = !DILocalVariable(name: "i", scope: !448, file: !45, line: 231, type: !23)
!448 = distinct !DILexicalBlock(scope: !449, file: !45, line: 230, column: 9)
!449 = distinct !DILexicalBlock(scope: !445, file: !45, line: 229, column: 5)
!450 = !DILocation(line: 231, column: 17, scope: !448)
!451 = !DILocalVariable(name: "n", scope: !448, file: !45, line: 231, type: !23)
!452 = !DILocation(line: 231, column: 20, scope: !448)
!453 = !DILocalVariable(name: "intVariable", scope: !448, file: !45, line: 231, type: !23)
!454 = !DILocation(line: 231, column: 23, scope: !448)
!455 = !DILocation(line: 232, column: 24, scope: !456)
!456 = distinct !DILexicalBlock(scope: !448, file: !45, line: 232, column: 17)
!457 = !DILocation(line: 232, column: 17, scope: !456)
!458 = !DILocation(line: 232, column: 40, scope: !456)
!459 = !DILocation(line: 232, column: 17, scope: !448)
!460 = !DILocation(line: 235, column: 29, scope: !461)
!461 = distinct !DILexicalBlock(scope: !456, file: !45, line: 233, column: 13)
!462 = !DILocation(line: 236, column: 24, scope: !463)
!463 = distinct !DILexicalBlock(scope: !461, file: !45, line: 236, column: 17)
!464 = !DILocation(line: 236, column: 22, scope: !463)
!465 = !DILocation(line: 236, column: 29, scope: !466)
!466 = distinct !DILexicalBlock(scope: !463, file: !45, line: 236, column: 17)
!467 = !DILocation(line: 236, column: 33, scope: !466)
!468 = !DILocation(line: 236, column: 31, scope: !466)
!469 = !DILocation(line: 236, column: 17, scope: !463)
!470 = !DILocation(line: 239, column: 32, scope: !471)
!471 = distinct !DILexicalBlock(scope: !466, file: !45, line: 237, column: 17)
!472 = !DILocation(line: 240, column: 17, scope: !471)
!473 = !DILocation(line: 236, column: 37, scope: !466)
!474 = !DILocation(line: 236, column: 17, scope: !466)
!475 = distinct !{!475, !469, !476, !204}
!476 = !DILocation(line: 240, column: 17, scope: !463)
!477 = !DILocation(line: 241, column: 30, scope: !461)
!478 = !DILocation(line: 241, column: 17, scope: !461)
!479 = !DILocation(line: 242, column: 13, scope: !461)
!480 = !DILocation(line: 244, column: 5, scope: !449)
!481 = !DILocalVariable(name: "i", scope: !482, file: !45, line: 248, type: !23)
!482 = distinct !DILexicalBlock(scope: !483, file: !45, line: 247, column: 9)
!483 = distinct !DILexicalBlock(scope: !445, file: !45, line: 246, column: 5)
!484 = !DILocation(line: 248, column: 17, scope: !482)
!485 = !DILocalVariable(name: "n", scope: !482, file: !45, line: 248, type: !23)
!486 = !DILocation(line: 248, column: 20, scope: !482)
!487 = !DILocalVariable(name: "intVariable", scope: !482, file: !45, line: 248, type: !23)
!488 = !DILocation(line: 248, column: 23, scope: !482)
!489 = !DILocation(line: 249, column: 24, scope: !490)
!490 = distinct !DILexicalBlock(scope: !482, file: !45, line: 249, column: 17)
!491 = !DILocation(line: 249, column: 17, scope: !490)
!492 = !DILocation(line: 249, column: 40, scope: !490)
!493 = !DILocation(line: 249, column: 17, scope: !482)
!494 = !DILocation(line: 252, column: 29, scope: !495)
!495 = distinct !DILexicalBlock(scope: !490, file: !45, line: 250, column: 13)
!496 = !DILocation(line: 253, column: 24, scope: !497)
!497 = distinct !DILexicalBlock(scope: !495, file: !45, line: 253, column: 17)
!498 = !DILocation(line: 253, column: 22, scope: !497)
!499 = !DILocation(line: 253, column: 29, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !45, line: 253, column: 17)
!501 = !DILocation(line: 253, column: 33, scope: !500)
!502 = !DILocation(line: 253, column: 31, scope: !500)
!503 = !DILocation(line: 253, column: 17, scope: !497)
!504 = !DILocation(line: 256, column: 32, scope: !505)
!505 = distinct !DILexicalBlock(scope: !500, file: !45, line: 254, column: 17)
!506 = !DILocation(line: 257, column: 17, scope: !505)
!507 = !DILocation(line: 253, column: 37, scope: !500)
!508 = !DILocation(line: 253, column: 17, scope: !500)
!509 = distinct !{!509, !503, !510, !204}
!510 = !DILocation(line: 257, column: 17, scope: !497)
!511 = !DILocation(line: 258, column: 30, scope: !495)
!512 = !DILocation(line: 258, column: 17, scope: !495)
!513 = !DILocation(line: 259, column: 13, scope: !495)
!514 = !DILocation(line: 262, column: 1, scope: !427)
!515 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_12_good", scope: !45, file: !45, line: 264, type: !53, scopeLine: 265, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!516 = !DILocation(line: 266, column: 5, scope: !515)
!517 = !DILocation(line: 267, column: 5, scope: !515)
!518 = !DILocation(line: 268, column: 1, scope: !515)
!519 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !520, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!520 = !DISubroutineType(types: !521)
!521 = !{null, !42}
!522 = !DILocalVariable(name: "line", arg: 1, scope: !519, file: !3, line: 11, type: !42)
!523 = !DILocation(line: 11, column: 25, scope: !519)
!524 = !DILocation(line: 13, column: 1, scope: !519)
!525 = !DILocation(line: 14, column: 8, scope: !526)
!526 = distinct !DILexicalBlock(scope: !519, file: !3, line: 14, column: 8)
!527 = !DILocation(line: 14, column: 13, scope: !526)
!528 = !DILocation(line: 14, column: 8, scope: !519)
!529 = !DILocation(line: 16, column: 24, scope: !530)
!530 = distinct !DILexicalBlock(scope: !526, file: !3, line: 15, column: 5)
!531 = !DILocation(line: 16, column: 9, scope: !530)
!532 = !DILocation(line: 17, column: 5, scope: !530)
!533 = !DILocation(line: 18, column: 5, scope: !519)
!534 = !DILocation(line: 19, column: 1, scope: !519)
!535 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !520, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!536 = !DILocalVariable(name: "line", arg: 1, scope: !535, file: !3, line: 20, type: !42)
!537 = !DILocation(line: 20, column: 29, scope: !535)
!538 = !DILocation(line: 22, column: 8, scope: !539)
!539 = distinct !DILexicalBlock(scope: !535, file: !3, line: 22, column: 8)
!540 = !DILocation(line: 22, column: 13, scope: !539)
!541 = !DILocation(line: 22, column: 8, scope: !535)
!542 = !DILocation(line: 24, column: 24, scope: !543)
!543 = distinct !DILexicalBlock(scope: !539, file: !3, line: 23, column: 5)
!544 = !DILocation(line: 24, column: 9, scope: !543)
!545 = !DILocation(line: 25, column: 5, scope: !543)
!546 = !DILocation(line: 26, column: 1, scope: !535)
!547 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !548, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!548 = !DISubroutineType(types: !549)
!549 = !{null, !550}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !71, line: 74, baseType: !23)
!552 = !DILocalVariable(name: "line", arg: 1, scope: !547, file: !3, line: 27, type: !550)
!553 = !DILocation(line: 27, column: 29, scope: !547)
!554 = !DILocation(line: 29, column: 8, scope: !555)
!555 = distinct !DILexicalBlock(scope: !547, file: !3, line: 29, column: 8)
!556 = !DILocation(line: 29, column: 13, scope: !555)
!557 = !DILocation(line: 29, column: 8, scope: !547)
!558 = !DILocation(line: 31, column: 27, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !3, line: 30, column: 5)
!560 = !DILocation(line: 31, column: 9, scope: !559)
!561 = !DILocation(line: 32, column: 5, scope: !559)
!562 = !DILocation(line: 33, column: 1, scope: !547)
!563 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !564, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !23}
!566 = !DILocalVariable(name: "intNumber", arg: 1, scope: !563, file: !3, line: 35, type: !23)
!567 = !DILocation(line: 35, column: 24, scope: !563)
!568 = !DILocation(line: 37, column: 20, scope: !563)
!569 = !DILocation(line: 37, column: 5, scope: !563)
!570 = !DILocation(line: 38, column: 1, scope: !563)
!571 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !572, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!572 = !DISubroutineType(types: !573)
!573 = !{null, !574}
!574 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!575 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !571, file: !3, line: 40, type: !574)
!576 = !DILocation(line: 40, column: 28, scope: !571)
!577 = !DILocation(line: 42, column: 21, scope: !571)
!578 = !DILocation(line: 42, column: 5, scope: !571)
!579 = !DILocation(line: 43, column: 1, scope: !571)
!580 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !581, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !583}
!583 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!584 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !580, file: !3, line: 45, type: !583)
!585 = !DILocation(line: 45, column: 28, scope: !580)
!586 = !DILocation(line: 47, column: 20, scope: !580)
!587 = !DILocation(line: 47, column: 5, scope: !580)
!588 = !DILocation(line: 48, column: 1, scope: !580)
!589 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !590, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!590 = !DISubroutineType(types: !591)
!591 = !{null, !105}
!592 = !DILocalVariable(name: "longNumber", arg: 1, scope: !589, file: !3, line: 50, type: !105)
!593 = !DILocation(line: 50, column: 26, scope: !589)
!594 = !DILocation(line: 52, column: 21, scope: !589)
!595 = !DILocation(line: 52, column: 5, scope: !589)
!596 = !DILocation(line: 53, column: 1, scope: !589)
!597 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !598, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !600}
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !601, line: 27, baseType: !602)
!601 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !104, line: 44, baseType: !105)
!603 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !597, file: !3, line: 55, type: !600)
!604 = !DILocation(line: 55, column: 33, scope: !597)
!605 = !DILocation(line: 57, column: 29, scope: !597)
!606 = !DILocation(line: 57, column: 5, scope: !597)
!607 = !DILocation(line: 58, column: 1, scope: !597)
!608 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !609, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !70}
!611 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !608, file: !3, line: 60, type: !70)
!612 = !DILocation(line: 60, column: 29, scope: !608)
!613 = !DILocation(line: 62, column: 21, scope: !608)
!614 = !DILocation(line: 62, column: 5, scope: !608)
!615 = !DILocation(line: 63, column: 1, scope: !608)
!616 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !617, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !43}
!619 = !DILocalVariable(name: "charHex", arg: 1, scope: !616, file: !3, line: 65, type: !43)
!620 = !DILocation(line: 65, column: 29, scope: !616)
!621 = !DILocation(line: 67, column: 22, scope: !616)
!622 = !DILocation(line: 67, column: 5, scope: !616)
!623 = !DILocation(line: 68, column: 1, scope: !616)
!624 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !625, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DISubroutineType(types: !626)
!626 = !{null, !551}
!627 = !DILocalVariable(name: "wideChar", arg: 1, scope: !624, file: !3, line: 70, type: !551)
!628 = !DILocation(line: 70, column: 29, scope: !624)
!629 = !DILocalVariable(name: "s", scope: !624, file: !3, line: 74, type: !630)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !551, size: 64, elements: !631)
!631 = !{!632}
!632 = !DISubrange(count: 2)
!633 = !DILocation(line: 74, column: 13, scope: !624)
!634 = !DILocation(line: 75, column: 16, scope: !624)
!635 = !DILocation(line: 75, column: 9, scope: !624)
!636 = !DILocation(line: 75, column: 14, scope: !624)
!637 = !DILocation(line: 76, column: 9, scope: !624)
!638 = !DILocation(line: 76, column: 14, scope: !624)
!639 = !DILocation(line: 77, column: 21, scope: !624)
!640 = !DILocation(line: 77, column: 5, scope: !624)
!641 = !DILocation(line: 78, column: 1, scope: !624)
!642 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !643, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !7}
!645 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !642, file: !3, line: 80, type: !7)
!646 = !DILocation(line: 80, column: 33, scope: !642)
!647 = !DILocation(line: 82, column: 20, scope: !642)
!648 = !DILocation(line: 82, column: 5, scope: !642)
!649 = !DILocation(line: 83, column: 1, scope: !642)
!650 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !651, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!651 = !DISubroutineType(types: !652)
!652 = !{null, !25}
!653 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !650, file: !3, line: 85, type: !25)
!654 = !DILocation(line: 85, column: 45, scope: !650)
!655 = !DILocation(line: 87, column: 22, scope: !650)
!656 = !DILocation(line: 87, column: 5, scope: !650)
!657 = !DILocation(line: 88, column: 1, scope: !650)
!658 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !659, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !661}
!661 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!662 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !658, file: !3, line: 90, type: !661)
!663 = !DILocation(line: 90, column: 29, scope: !658)
!664 = !DILocation(line: 92, column: 20, scope: !658)
!665 = !DILocation(line: 92, column: 5, scope: !658)
!666 = !DILocation(line: 93, column: 1, scope: !658)
!667 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !668, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DISubroutineType(types: !669)
!669 = !{null, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !672, line: 100, baseType: !673)
!672 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_085/source_code")
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !672, line: 96, size: 64, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !673, file: !672, line: 98, baseType: !23, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !673, file: !672, line: 99, baseType: !23, size: 32, offset: 32)
!677 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !667, file: !3, line: 95, type: !670)
!678 = !DILocation(line: 95, column: 40, scope: !667)
!679 = !DILocation(line: 97, column: 26, scope: !667)
!680 = !DILocation(line: 97, column: 47, scope: !667)
!681 = !DILocation(line: 97, column: 55, scope: !667)
!682 = !DILocation(line: 97, column: 76, scope: !667)
!683 = !DILocation(line: 97, column: 5, scope: !667)
!684 = !DILocation(line: 98, column: 1, scope: !667)
!685 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !686, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !688, !70}
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!689 = !DILocalVariable(name: "bytes", arg: 1, scope: !685, file: !3, line: 100, type: !688)
!690 = !DILocation(line: 100, column: 38, scope: !685)
!691 = !DILocalVariable(name: "numBytes", arg: 2, scope: !685, file: !3, line: 100, type: !70)
!692 = !DILocation(line: 100, column: 52, scope: !685)
!693 = !DILocalVariable(name: "i", scope: !685, file: !3, line: 102, type: !70)
!694 = !DILocation(line: 102, column: 12, scope: !685)
!695 = !DILocation(line: 103, column: 12, scope: !696)
!696 = distinct !DILexicalBlock(scope: !685, file: !3, line: 103, column: 5)
!697 = !DILocation(line: 103, column: 10, scope: !696)
!698 = !DILocation(line: 103, column: 17, scope: !699)
!699 = distinct !DILexicalBlock(scope: !696, file: !3, line: 103, column: 5)
!700 = !DILocation(line: 103, column: 21, scope: !699)
!701 = !DILocation(line: 103, column: 19, scope: !699)
!702 = !DILocation(line: 103, column: 5, scope: !696)
!703 = !DILocation(line: 105, column: 24, scope: !704)
!704 = distinct !DILexicalBlock(scope: !699, file: !3, line: 104, column: 5)
!705 = !DILocation(line: 105, column: 30, scope: !704)
!706 = !DILocation(line: 105, column: 9, scope: !704)
!707 = !DILocation(line: 106, column: 5, scope: !704)
!708 = !DILocation(line: 103, column: 31, scope: !699)
!709 = !DILocation(line: 103, column: 5, scope: !699)
!710 = distinct !{!710, !702, !711, !204}
!711 = !DILocation(line: 106, column: 5, scope: !696)
!712 = !DILocation(line: 107, column: 5, scope: !685)
!713 = !DILocation(line: 108, column: 1, scope: !685)
!714 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !715, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!715 = !DISubroutineType(types: !716)
!716 = !{!70, !688, !70, !42}
!717 = !DILocalVariable(name: "bytes", arg: 1, scope: !714, file: !3, line: 113, type: !688)
!718 = !DILocation(line: 113, column: 39, scope: !714)
!719 = !DILocalVariable(name: "numBytes", arg: 2, scope: !714, file: !3, line: 113, type: !70)
!720 = !DILocation(line: 113, column: 53, scope: !714)
!721 = !DILocalVariable(name: "hex", arg: 3, scope: !714, file: !3, line: 113, type: !42)
!722 = !DILocation(line: 113, column: 71, scope: !714)
!723 = !DILocalVariable(name: "numWritten", scope: !714, file: !3, line: 115, type: !70)
!724 = !DILocation(line: 115, column: 12, scope: !714)
!725 = !DILocation(line: 121, column: 5, scope: !714)
!726 = !DILocation(line: 121, column: 12, scope: !714)
!727 = !DILocation(line: 121, column: 25, scope: !714)
!728 = !DILocation(line: 121, column: 23, scope: !714)
!729 = !DILocation(line: 121, column: 34, scope: !714)
!730 = !DILocation(line: 121, column: 37, scope: !714)
!731 = !DILocation(line: 121, column: 67, scope: !714)
!732 = !DILocation(line: 121, column: 70, scope: !714)
!733 = !DILocation(line: 0, scope: !714)
!734 = !DILocalVariable(name: "byte", scope: !735, file: !3, line: 123, type: !23)
!735 = distinct !DILexicalBlock(scope: !714, file: !3, line: 122, column: 5)
!736 = !DILocation(line: 123, column: 13, scope: !735)
!737 = !DILocation(line: 124, column: 17, scope: !735)
!738 = !DILocation(line: 124, column: 25, scope: !735)
!739 = !DILocation(line: 124, column: 23, scope: !735)
!740 = !DILocation(line: 124, column: 9, scope: !735)
!741 = !DILocation(line: 125, column: 45, scope: !735)
!742 = !DILocation(line: 125, column: 29, scope: !735)
!743 = !DILocation(line: 125, column: 9, scope: !735)
!744 = !DILocation(line: 125, column: 15, scope: !735)
!745 = !DILocation(line: 125, column: 27, scope: !735)
!746 = !DILocation(line: 126, column: 9, scope: !735)
!747 = distinct !{!747, !725, !748, !204}
!748 = !DILocation(line: 127, column: 5, scope: !714)
!749 = !DILocation(line: 129, column: 12, scope: !714)
!750 = !DILocation(line: 129, column: 5, scope: !714)
!751 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !752, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!752 = !DISubroutineType(types: !753)
!753 = !{!70, !688, !70, !550}
!754 = !DILocalVariable(name: "bytes", arg: 1, scope: !751, file: !3, line: 135, type: !688)
!755 = !DILocation(line: 135, column: 41, scope: !751)
!756 = !DILocalVariable(name: "numBytes", arg: 2, scope: !751, file: !3, line: 135, type: !70)
!757 = !DILocation(line: 135, column: 55, scope: !751)
!758 = !DILocalVariable(name: "hex", arg: 3, scope: !751, file: !3, line: 135, type: !550)
!759 = !DILocation(line: 135, column: 76, scope: !751)
!760 = !DILocalVariable(name: "numWritten", scope: !751, file: !3, line: 137, type: !70)
!761 = !DILocation(line: 137, column: 12, scope: !751)
!762 = !DILocation(line: 143, column: 5, scope: !751)
!763 = !DILocation(line: 143, column: 12, scope: !751)
!764 = !DILocation(line: 143, column: 25, scope: !751)
!765 = !DILocation(line: 143, column: 23, scope: !751)
!766 = !DILocation(line: 143, column: 34, scope: !751)
!767 = !DILocation(line: 143, column: 47, scope: !751)
!768 = !DILocation(line: 143, column: 55, scope: !751)
!769 = !DILocation(line: 143, column: 53, scope: !751)
!770 = !DILocation(line: 143, column: 37, scope: !751)
!771 = !DILocation(line: 143, column: 68, scope: !751)
!772 = !DILocation(line: 143, column: 81, scope: !751)
!773 = !DILocation(line: 143, column: 89, scope: !751)
!774 = !DILocation(line: 143, column: 87, scope: !751)
!775 = !DILocation(line: 143, column: 100, scope: !751)
!776 = !DILocation(line: 143, column: 71, scope: !751)
!777 = !DILocation(line: 0, scope: !751)
!778 = !DILocalVariable(name: "byte", scope: !779, file: !3, line: 145, type: !23)
!779 = distinct !DILexicalBlock(scope: !751, file: !3, line: 144, column: 5)
!780 = !DILocation(line: 145, column: 13, scope: !779)
!781 = !DILocation(line: 146, column: 18, scope: !779)
!782 = !DILocation(line: 146, column: 26, scope: !779)
!783 = !DILocation(line: 146, column: 24, scope: !779)
!784 = !DILocation(line: 146, column: 9, scope: !779)
!785 = !DILocation(line: 147, column: 45, scope: !779)
!786 = !DILocation(line: 147, column: 29, scope: !779)
!787 = !DILocation(line: 147, column: 9, scope: !779)
!788 = !DILocation(line: 147, column: 15, scope: !779)
!789 = !DILocation(line: 147, column: 27, scope: !779)
!790 = !DILocation(line: 148, column: 9, scope: !779)
!791 = distinct !{!791, !762, !792, !204}
!792 = !DILocation(line: 149, column: 5, scope: !751)
!793 = !DILocation(line: 151, column: 12, scope: !751)
!794 = !DILocation(line: 151, column: 5, scope: !751)
!795 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !796, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!796 = !DISubroutineType(types: !797)
!797 = !{!23}
!798 = !DILocation(line: 158, column: 5, scope: !795)
!799 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !796, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!800 = !DILocation(line: 163, column: 5, scope: !799)
!801 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !796, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!802 = !DILocation(line: 168, column: 13, scope: !801)
!803 = !DILocation(line: 168, column: 20, scope: !801)
!804 = !DILocation(line: 168, column: 5, scope: !801)
!805 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!806 = !DILocation(line: 187, column: 16, scope: !805)
!807 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!808 = !DILocation(line: 188, column: 16, scope: !807)
!809 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!810 = !DILocation(line: 189, column: 16, scope: !809)
!811 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!812 = !DILocation(line: 190, column: 16, scope: !811)
!813 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!814 = !DILocation(line: 191, column: 16, scope: !813)
!815 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!816 = !DILocation(line: 192, column: 16, scope: !815)
!817 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!818 = !DILocation(line: 193, column: 16, scope: !817)
!819 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!820 = !DILocation(line: 194, column: 16, scope: !819)
!821 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!822 = !DILocation(line: 195, column: 16, scope: !821)
!823 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!824 = !DILocation(line: 198, column: 15, scope: !823)
!825 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!826 = !DILocation(line: 199, column: 15, scope: !825)
!827 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!828 = !DILocation(line: 200, column: 15, scope: !827)
!829 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!830 = !DILocation(line: 201, column: 15, scope: !829)
!831 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!832 = !DILocation(line: 202, column: 15, scope: !831)
!833 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!834 = !DILocation(line: 203, column: 15, scope: !833)
!835 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!836 = !DILocation(line: 204, column: 15, scope: !835)
!837 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!838 = !DILocation(line: 205, column: 15, scope: !837)
!839 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!840 = !DILocation(line: 206, column: 15, scope: !839)
