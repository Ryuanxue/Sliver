; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_05.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_05.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@staticTrue = dso_local global i32 1, align 4, !dbg !0
@staticFalse = dso_local global i32 0, align 4, !dbg !9
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_05_bad() #0 !dbg !15 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %data, align 8, !dbg !28
  %1 = load i32, i32* @staticTrue, align 4, !dbg !29
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
  %12 = load i32, i32* @staticTrue, align 4, !dbg !134
  %tobool14 = icmp ne i32 %12, 0, !dbg !134
  br i1 %tobool14, label %if.then15, label %if.end24, !dbg !136

if.then15:                                        ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !137, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %n, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !143, metadata !DIExpression()), !dbg !144
  %13 = load i8*, i8** %data, align 8, !dbg !145
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !147
  %cmp17 = icmp eq i32 %call16, 1, !dbg !148
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !149

if.then19:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !150
  store i32 0, i32* %i, align 4, !dbg !152
  br label %for.cond, !dbg !154

for.cond:                                         ; preds = %for.inc, %if.then19
  %14 = load i32, i32* %i, align 4, !dbg !155
  %15 = load i32, i32* %n, align 4, !dbg !157
  %cmp20 = icmp slt i32 %14, %15, !dbg !158
  br i1 %cmp20, label %for.body, label %for.end, !dbg !159

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !160
  %inc = add nsw i32 %16, 1, !dbg !160
  store i32 %inc, i32* %intVariable, align 4, !dbg !160
  br label %for.inc, !dbg !162

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !163
  %inc22 = add nsw i32 %17, 1, !dbg !163
  store i32 %inc22, i32* %i, align 4, !dbg !163
  br label %for.cond, !dbg !164, !llvm.loop !165

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %intVariable, align 4, !dbg !168
  call void @printIntLine(i32 %18), !dbg !169
  br label %if.end23, !dbg !170

if.end23:                                         ; preds = %for.end, %if.then15
  br label %if.end24, !dbg !171

if.end24:                                         ; preds = %if.end23, %if.end13
  ret void, !dbg !172
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

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !173 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !176, metadata !DIExpression()), !dbg !177
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !177
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !177
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !178
  store i8* %arraydecay, i8** %data, align 8, !dbg !179
  %1 = load i32, i32* @staticTrue, align 4, !dbg !180
  %tobool = icmp ne i32 %1, 0, !dbg !180
  br i1 %tobool, label %if.then, label %if.end13, !dbg !182

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !183, metadata !DIExpression()), !dbg !186
  %2 = load i8*, i8** %data, align 8, !dbg !187
  %call = call i64 @strlen(i8* %2) #6, !dbg !188
  store i64 %call, i64* %dataLen, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !189, metadata !DIExpression()), !dbg !190
  %3 = load i64, i64* %dataLen, align 8, !dbg !191
  %sub = sub i64 100, %3, !dbg !193
  %cmp = icmp ugt i64 %sub, 1, !dbg !194
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !195

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !196
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !198
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !199
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !201
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !202

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !203
  %6 = load i64, i64* %dataLen, align 8, !dbg !206
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !207
  %7 = load i64, i64* %dataLen, align 8, !dbg !208
  %sub5 = sub i64 100, %7, !dbg !209
  %conv = trunc i64 %sub5 to i32, !dbg !210
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !211
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !212
  %cmp7 = icmp eq i8* %call6, null, !dbg !213
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !214

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !215
  %9 = load i8*, i8** %data, align 8, !dbg !217
  %10 = load i64, i64* %dataLen, align 8, !dbg !218
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !217
  store i8 0, i8* %arrayidx, align 1, !dbg !219
  br label %if.end, !dbg !220

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !221
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !222
  br label %if.end11, !dbg !223

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !224

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !225

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @staticFalse, align 4, !dbg !226
  %tobool14 = icmp ne i32 %12, 0, !dbg !226
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !228

if.then15:                                        ; preds = %if.end13
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !229
  br label %if.end28, !dbg !231

if.else:                                          ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !232, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i32* %n, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !238, metadata !DIExpression()), !dbg !239
  %13 = load i8*, i8** %data, align 8, !dbg !240
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !242
  %cmp17 = icmp eq i32 %call16, 1, !dbg !243
  br i1 %cmp17, label %if.then19, label %if.end27, !dbg !244

if.then19:                                        ; preds = %if.else
  %14 = load i32, i32* %n, align 4, !dbg !245
  %cmp20 = icmp slt i32 %14, 10000, !dbg !248
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !249

if.then22:                                        ; preds = %if.then19
  store i32 0, i32* %intVariable, align 4, !dbg !250
  store i32 0, i32* %i, align 4, !dbg !252
  br label %for.cond, !dbg !254

for.cond:                                         ; preds = %for.inc, %if.then22
  %15 = load i32, i32* %i, align 4, !dbg !255
  %16 = load i32, i32* %n, align 4, !dbg !257
  %cmp23 = icmp slt i32 %15, %16, !dbg !258
  br i1 %cmp23, label %for.body, label %for.end, !dbg !259

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !260
  %inc = add nsw i32 %17, 1, !dbg !260
  store i32 %inc, i32* %intVariable, align 4, !dbg !260
  br label %for.inc, !dbg !262

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !263
  %inc25 = add nsw i32 %18, 1, !dbg !263
  store i32 %inc25, i32* %i, align 4, !dbg !263
  br label %for.cond, !dbg !264, !llvm.loop !265

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !267
  call void @printIntLine(i32 %19), !dbg !268
  br label %if.end26, !dbg !269

if.end26:                                         ; preds = %for.end, %if.then19
  br label %if.end27, !dbg !270

if.end27:                                         ; preds = %if.end26, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then15
  ret void, !dbg !271
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !272 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !273, metadata !DIExpression()), !dbg !274
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !276
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !276
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !277
  store i8* %arraydecay, i8** %data, align 8, !dbg !278
  %1 = load i32, i32* @staticTrue, align 4, !dbg !279
  %tobool = icmp ne i32 %1, 0, !dbg !279
  br i1 %tobool, label %if.then, label %if.end13, !dbg !281

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !282, metadata !DIExpression()), !dbg !285
  %2 = load i8*, i8** %data, align 8, !dbg !286
  %call = call i64 @strlen(i8* %2) #6, !dbg !287
  store i64 %call, i64* %dataLen, align 8, !dbg !285
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !288, metadata !DIExpression()), !dbg !289
  %3 = load i64, i64* %dataLen, align 8, !dbg !290
  %sub = sub i64 100, %3, !dbg !292
  %cmp = icmp ugt i64 %sub, 1, !dbg !293
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !294

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !295
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !297
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !298
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !300
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !301

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !302
  %6 = load i64, i64* %dataLen, align 8, !dbg !305
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !306
  %7 = load i64, i64* %dataLen, align 8, !dbg !307
  %sub5 = sub i64 100, %7, !dbg !308
  %conv = trunc i64 %sub5 to i32, !dbg !309
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !310
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !311
  %cmp7 = icmp eq i8* %call6, null, !dbg !312
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !313

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !314
  %9 = load i8*, i8** %data, align 8, !dbg !316
  %10 = load i64, i64* %dataLen, align 8, !dbg !317
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !316
  store i8 0, i8* %arrayidx, align 1, !dbg !318
  br label %if.end, !dbg !319

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !320
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !321
  br label %if.end11, !dbg !322

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !323

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !324

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @staticTrue, align 4, !dbg !325
  %tobool14 = icmp ne i32 %12, 0, !dbg !325
  br i1 %tobool14, label %if.then15, label %if.end28, !dbg !327

if.then15:                                        ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !328, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata i32* %n, metadata !332, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !334, metadata !DIExpression()), !dbg !335
  %13 = load i8*, i8** %data, align 8, !dbg !336
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !338
  %cmp17 = icmp eq i32 %call16, 1, !dbg !339
  br i1 %cmp17, label %if.then19, label %if.end27, !dbg !340

if.then19:                                        ; preds = %if.then15
  %14 = load i32, i32* %n, align 4, !dbg !341
  %cmp20 = icmp slt i32 %14, 10000, !dbg !344
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !345

if.then22:                                        ; preds = %if.then19
  store i32 0, i32* %intVariable, align 4, !dbg !346
  store i32 0, i32* %i, align 4, !dbg !348
  br label %for.cond, !dbg !350

for.cond:                                         ; preds = %for.inc, %if.then22
  %15 = load i32, i32* %i, align 4, !dbg !351
  %16 = load i32, i32* %n, align 4, !dbg !353
  %cmp23 = icmp slt i32 %15, %16, !dbg !354
  br i1 %cmp23, label %for.body, label %for.end, !dbg !355

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !356
  %inc = add nsw i32 %17, 1, !dbg !356
  store i32 %inc, i32* %intVariable, align 4, !dbg !356
  br label %for.inc, !dbg !358

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !359
  %inc25 = add nsw i32 %18, 1, !dbg !359
  store i32 %inc25, i32* %i, align 4, !dbg !359
  br label %for.cond, !dbg !360, !llvm.loop !361

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !363
  call void @printIntLine(i32 %19), !dbg !364
  br label %if.end26, !dbg !365

if.end26:                                         ; preds = %for.end, %if.then19
  br label %if.end27, !dbg !366

if.end27:                                         ; preds = %if.end26, %if.then15
  br label %if.end28, !dbg !367

if.end28:                                         ; preds = %if.end27, %if.end13
  ret void, !dbg !368
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !369 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !370, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !373
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !373
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !374
  store i8* %arraydecay, i8** %data, align 8, !dbg !375
  %1 = load i32, i32* @staticFalse, align 4, !dbg !376
  %tobool = icmp ne i32 %1, 0, !dbg !376
  br i1 %tobool, label %if.then, label %if.else, !dbg !378

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !379
  br label %if.end, !dbg !381

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !382
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !384
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @staticTrue, align 4, !dbg !385
  %tobool1 = icmp ne i32 %3, 0, !dbg !385
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !387

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !388, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.declare(metadata i32* %n, metadata !392, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !394, metadata !DIExpression()), !dbg !395
  %4 = load i8*, i8** %data, align 8, !dbg !396
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !398
  %cmp = icmp eq i32 %call3, 1, !dbg !399
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !400

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !401
  store i32 0, i32* %i, align 4, !dbg !403
  br label %for.cond, !dbg !405

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !406
  %6 = load i32, i32* %n, align 4, !dbg !408
  %cmp5 = icmp slt i32 %5, %6, !dbg !409
  br i1 %cmp5, label %for.body, label %for.end, !dbg !410

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !411
  %inc = add nsw i32 %7, 1, !dbg !411
  store i32 %inc, i32* %intVariable, align 4, !dbg !411
  br label %for.inc, !dbg !413

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !414
  %inc6 = add nsw i32 %8, 1, !dbg !414
  store i32 %inc6, i32* %i, align 4, !dbg !414
  br label %for.cond, !dbg !415, !llvm.loop !416

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !418
  call void @printIntLine(i32 %9), !dbg !419
  br label %if.end7, !dbg !420

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !421

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !422
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !423 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !424, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !427
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !427
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !428
  store i8* %arraydecay, i8** %data, align 8, !dbg !429
  %1 = load i32, i32* @staticTrue, align 4, !dbg !430
  %tobool = icmp ne i32 %1, 0, !dbg !430
  br i1 %tobool, label %if.then, label %if.end, !dbg !432

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !433
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !435
  br label %if.end, !dbg !436

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @staticTrue, align 4, !dbg !437
  %tobool1 = icmp ne i32 %3, 0, !dbg !437
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !439

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !440, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.declare(metadata i32* %n, metadata !444, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !446, metadata !DIExpression()), !dbg !447
  %4 = load i8*, i8** %data, align 8, !dbg !448
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !450
  %cmp = icmp eq i32 %call3, 1, !dbg !451
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !452

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !453
  store i32 0, i32* %i, align 4, !dbg !455
  br label %for.cond, !dbg !457

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !458
  %6 = load i32, i32* %n, align 4, !dbg !460
  %cmp5 = icmp slt i32 %5, %6, !dbg !461
  br i1 %cmp5, label %for.body, label %for.end, !dbg !462

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !463
  %inc = add nsw i32 %7, 1, !dbg !463
  store i32 %inc, i32* %intVariable, align 4, !dbg !463
  br label %for.inc, !dbg !465

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !466
  %inc6 = add nsw i32 %8, 1, !dbg !466
  store i32 %inc6, i32* %i, align 4, !dbg !466
  br label %for.cond, !dbg !467, !llvm.loop !468

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !470
  call void @printIntLine(i32 %9), !dbg !471
  br label %if.end7, !dbg !472

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !473

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_05_good() #0 !dbg !475 {
entry:
  call void @goodB2G1(), !dbg !476
  call void @goodB2G2(), !dbg !477
  call void @goodG2B1(), !dbg !478
  call void @goodG2B2(), !dbg !479
  ret void, !dbg !480
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
!1 = distinct !DIGlobalVariable(name: "staticTrue", scope: !2, file: !3, line: 36, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_05.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_078/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "staticFalse", scope: !2, file: !3, line: 37, type: !7, isLocal: false, isDefinition: true)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 12.0.0"}
!15 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_05_bad", scope: !3, file: !3, line: 41, type: !16, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !DILocalVariable(name: "data", scope: !15, file: !3, line: 43, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DILocation(line: 43, column: 12, scope: !15)
!22 = !DILocalVariable(name: "dataBuffer", scope: !15, file: !3, line: 44, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 44, column: 10, scope: !15)
!27 = !DILocation(line: 45, column: 12, scope: !15)
!28 = !DILocation(line: 45, column: 10, scope: !15)
!29 = !DILocation(line: 46, column: 8, scope: !30)
!30 = distinct !DILexicalBlock(scope: !15, file: !3, line: 46, column: 8)
!31 = !DILocation(line: 46, column: 8, scope: !15)
!32 = !DILocalVariable(name: "dataLen", scope: !33, file: !3, line: 50, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !3, line: 48, column: 9)
!34 = distinct !DILexicalBlock(scope: !30, file: !3, line: 47, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 50, column: 20, scope: !33)
!39 = !DILocation(line: 50, column: 37, scope: !33)
!40 = !DILocation(line: 50, column: 30, scope: !33)
!41 = !DILocalVariable(name: "pFile", scope: !33, file: !3, line: 51, type: !42)
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
!98 = !DILocation(line: 51, column: 20, scope: !33)
!99 = !DILocation(line: 53, column: 21, scope: !100)
!100 = distinct !DILexicalBlock(scope: !33, file: !3, line: 53, column: 17)
!101 = !DILocation(line: 53, column: 20, scope: !100)
!102 = !DILocation(line: 53, column: 29, scope: !100)
!103 = !DILocation(line: 53, column: 17, scope: !33)
!104 = !DILocation(line: 55, column: 25, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !3, line: 54, column: 13)
!106 = !DILocation(line: 55, column: 23, scope: !105)
!107 = !DILocation(line: 56, column: 21, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !3, line: 56, column: 21)
!109 = !DILocation(line: 56, column: 27, scope: !108)
!110 = !DILocation(line: 56, column: 21, scope: !105)
!111 = !DILocation(line: 59, column: 31, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 59, column: 25)
!113 = distinct !DILexicalBlock(scope: !108, file: !3, line: 57, column: 17)
!114 = !DILocation(line: 59, column: 36, scope: !112)
!115 = !DILocation(line: 59, column: 35, scope: !112)
!116 = !DILocation(line: 59, column: 55, scope: !112)
!117 = !DILocation(line: 59, column: 54, scope: !112)
!118 = !DILocation(line: 59, column: 45, scope: !112)
!119 = !DILocation(line: 59, column: 65, scope: !112)
!120 = !DILocation(line: 59, column: 25, scope: !112)
!121 = !DILocation(line: 59, column: 72, scope: !112)
!122 = !DILocation(line: 59, column: 25, scope: !113)
!123 = !DILocation(line: 61, column: 25, scope: !124)
!124 = distinct !DILexicalBlock(scope: !112, file: !3, line: 60, column: 21)
!125 = !DILocation(line: 63, column: 25, scope: !124)
!126 = !DILocation(line: 63, column: 30, scope: !124)
!127 = !DILocation(line: 63, column: 39, scope: !124)
!128 = !DILocation(line: 64, column: 21, scope: !124)
!129 = !DILocation(line: 65, column: 28, scope: !113)
!130 = !DILocation(line: 65, column: 21, scope: !113)
!131 = !DILocation(line: 66, column: 17, scope: !113)
!132 = !DILocation(line: 67, column: 13, scope: !105)
!133 = !DILocation(line: 69, column: 5, scope: !34)
!134 = !DILocation(line: 70, column: 8, scope: !135)
!135 = distinct !DILexicalBlock(scope: !15, file: !3, line: 70, column: 8)
!136 = !DILocation(line: 70, column: 8, scope: !15)
!137 = !DILocalVariable(name: "i", scope: !138, file: !3, line: 73, type: !7)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 72, column: 9)
!139 = distinct !DILexicalBlock(scope: !135, file: !3, line: 71, column: 5)
!140 = !DILocation(line: 73, column: 17, scope: !138)
!141 = !DILocalVariable(name: "n", scope: !138, file: !3, line: 73, type: !7)
!142 = !DILocation(line: 73, column: 20, scope: !138)
!143 = !DILocalVariable(name: "intVariable", scope: !138, file: !3, line: 73, type: !7)
!144 = !DILocation(line: 73, column: 23, scope: !138)
!145 = !DILocation(line: 74, column: 24, scope: !146)
!146 = distinct !DILexicalBlock(scope: !138, file: !3, line: 74, column: 17)
!147 = !DILocation(line: 74, column: 17, scope: !146)
!148 = !DILocation(line: 74, column: 40, scope: !146)
!149 = !DILocation(line: 74, column: 17, scope: !138)
!150 = !DILocation(line: 77, column: 29, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !3, line: 75, column: 13)
!152 = !DILocation(line: 78, column: 24, scope: !153)
!153 = distinct !DILexicalBlock(scope: !151, file: !3, line: 78, column: 17)
!154 = !DILocation(line: 78, column: 22, scope: !153)
!155 = !DILocation(line: 78, column: 29, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !3, line: 78, column: 17)
!157 = !DILocation(line: 78, column: 33, scope: !156)
!158 = !DILocation(line: 78, column: 31, scope: !156)
!159 = !DILocation(line: 78, column: 17, scope: !153)
!160 = !DILocation(line: 81, column: 32, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !3, line: 79, column: 17)
!162 = !DILocation(line: 82, column: 17, scope: !161)
!163 = !DILocation(line: 78, column: 37, scope: !156)
!164 = !DILocation(line: 78, column: 17, scope: !156)
!165 = distinct !{!165, !159, !166, !167}
!166 = !DILocation(line: 82, column: 17, scope: !153)
!167 = !{!"llvm.loop.mustprogress"}
!168 = !DILocation(line: 83, column: 30, scope: !151)
!169 = !DILocation(line: 83, column: 17, scope: !151)
!170 = !DILocation(line: 84, column: 13, scope: !151)
!171 = !DILocation(line: 86, column: 5, scope: !139)
!172 = !DILocation(line: 87, column: 1, scope: !15)
!173 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 94, type: !16, scopeLine: 95, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!174 = !DILocalVariable(name: "data", scope: !173, file: !3, line: 96, type: !19)
!175 = !DILocation(line: 96, column: 12, scope: !173)
!176 = !DILocalVariable(name: "dataBuffer", scope: !173, file: !3, line: 97, type: !23)
!177 = !DILocation(line: 97, column: 10, scope: !173)
!178 = !DILocation(line: 98, column: 12, scope: !173)
!179 = !DILocation(line: 98, column: 10, scope: !173)
!180 = !DILocation(line: 99, column: 8, scope: !181)
!181 = distinct !DILexicalBlock(scope: !173, file: !3, line: 99, column: 8)
!182 = !DILocation(line: 99, column: 8, scope: !173)
!183 = !DILocalVariable(name: "dataLen", scope: !184, file: !3, line: 103, type: !35)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 101, column: 9)
!185 = distinct !DILexicalBlock(scope: !181, file: !3, line: 100, column: 5)
!186 = !DILocation(line: 103, column: 20, scope: !184)
!187 = !DILocation(line: 103, column: 37, scope: !184)
!188 = !DILocation(line: 103, column: 30, scope: !184)
!189 = !DILocalVariable(name: "pFile", scope: !184, file: !3, line: 104, type: !42)
!190 = !DILocation(line: 104, column: 20, scope: !184)
!191 = !DILocation(line: 106, column: 21, scope: !192)
!192 = distinct !DILexicalBlock(scope: !184, file: !3, line: 106, column: 17)
!193 = !DILocation(line: 106, column: 20, scope: !192)
!194 = !DILocation(line: 106, column: 29, scope: !192)
!195 = !DILocation(line: 106, column: 17, scope: !184)
!196 = !DILocation(line: 108, column: 25, scope: !197)
!197 = distinct !DILexicalBlock(scope: !192, file: !3, line: 107, column: 13)
!198 = !DILocation(line: 108, column: 23, scope: !197)
!199 = !DILocation(line: 109, column: 21, scope: !200)
!200 = distinct !DILexicalBlock(scope: !197, file: !3, line: 109, column: 21)
!201 = !DILocation(line: 109, column: 27, scope: !200)
!202 = !DILocation(line: 109, column: 21, scope: !197)
!203 = !DILocation(line: 112, column: 31, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !3, line: 112, column: 25)
!205 = distinct !DILexicalBlock(scope: !200, file: !3, line: 110, column: 17)
!206 = !DILocation(line: 112, column: 36, scope: !204)
!207 = !DILocation(line: 112, column: 35, scope: !204)
!208 = !DILocation(line: 112, column: 55, scope: !204)
!209 = !DILocation(line: 112, column: 54, scope: !204)
!210 = !DILocation(line: 112, column: 45, scope: !204)
!211 = !DILocation(line: 112, column: 65, scope: !204)
!212 = !DILocation(line: 112, column: 25, scope: !204)
!213 = !DILocation(line: 112, column: 72, scope: !204)
!214 = !DILocation(line: 112, column: 25, scope: !205)
!215 = !DILocation(line: 114, column: 25, scope: !216)
!216 = distinct !DILexicalBlock(scope: !204, file: !3, line: 113, column: 21)
!217 = !DILocation(line: 116, column: 25, scope: !216)
!218 = !DILocation(line: 116, column: 30, scope: !216)
!219 = !DILocation(line: 116, column: 39, scope: !216)
!220 = !DILocation(line: 117, column: 21, scope: !216)
!221 = !DILocation(line: 118, column: 28, scope: !205)
!222 = !DILocation(line: 118, column: 21, scope: !205)
!223 = !DILocation(line: 119, column: 17, scope: !205)
!224 = !DILocation(line: 120, column: 13, scope: !197)
!225 = !DILocation(line: 122, column: 5, scope: !185)
!226 = !DILocation(line: 123, column: 8, scope: !227)
!227 = distinct !DILexicalBlock(scope: !173, file: !3, line: 123, column: 8)
!228 = !DILocation(line: 123, column: 8, scope: !173)
!229 = !DILocation(line: 126, column: 9, scope: !230)
!230 = distinct !DILexicalBlock(scope: !227, file: !3, line: 124, column: 5)
!231 = !DILocation(line: 127, column: 5, scope: !230)
!232 = !DILocalVariable(name: "i", scope: !233, file: !3, line: 131, type: !7)
!233 = distinct !DILexicalBlock(scope: !234, file: !3, line: 130, column: 9)
!234 = distinct !DILexicalBlock(scope: !227, file: !3, line: 129, column: 5)
!235 = !DILocation(line: 131, column: 17, scope: !233)
!236 = !DILocalVariable(name: "n", scope: !233, file: !3, line: 131, type: !7)
!237 = !DILocation(line: 131, column: 20, scope: !233)
!238 = !DILocalVariable(name: "intVariable", scope: !233, file: !3, line: 131, type: !7)
!239 = !DILocation(line: 131, column: 23, scope: !233)
!240 = !DILocation(line: 132, column: 24, scope: !241)
!241 = distinct !DILexicalBlock(scope: !233, file: !3, line: 132, column: 17)
!242 = !DILocation(line: 132, column: 17, scope: !241)
!243 = !DILocation(line: 132, column: 40, scope: !241)
!244 = !DILocation(line: 132, column: 17, scope: !233)
!245 = !DILocation(line: 135, column: 21, scope: !246)
!246 = distinct !DILexicalBlock(scope: !247, file: !3, line: 135, column: 21)
!247 = distinct !DILexicalBlock(scope: !241, file: !3, line: 133, column: 13)
!248 = !DILocation(line: 135, column: 23, scope: !246)
!249 = !DILocation(line: 135, column: 21, scope: !247)
!250 = !DILocation(line: 137, column: 33, scope: !251)
!251 = distinct !DILexicalBlock(scope: !246, file: !3, line: 136, column: 17)
!252 = !DILocation(line: 138, column: 28, scope: !253)
!253 = distinct !DILexicalBlock(scope: !251, file: !3, line: 138, column: 21)
!254 = !DILocation(line: 138, column: 26, scope: !253)
!255 = !DILocation(line: 138, column: 33, scope: !256)
!256 = distinct !DILexicalBlock(scope: !253, file: !3, line: 138, column: 21)
!257 = !DILocation(line: 138, column: 37, scope: !256)
!258 = !DILocation(line: 138, column: 35, scope: !256)
!259 = !DILocation(line: 138, column: 21, scope: !253)
!260 = !DILocation(line: 141, column: 36, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !3, line: 139, column: 21)
!262 = !DILocation(line: 142, column: 21, scope: !261)
!263 = !DILocation(line: 138, column: 41, scope: !256)
!264 = !DILocation(line: 138, column: 21, scope: !256)
!265 = distinct !{!265, !259, !266, !167}
!266 = !DILocation(line: 142, column: 21, scope: !253)
!267 = !DILocation(line: 143, column: 34, scope: !251)
!268 = !DILocation(line: 143, column: 21, scope: !251)
!269 = !DILocation(line: 144, column: 17, scope: !251)
!270 = !DILocation(line: 145, column: 13, scope: !247)
!271 = !DILocation(line: 148, column: 1, scope: !173)
!272 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 151, type: !16, scopeLine: 152, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!273 = !DILocalVariable(name: "data", scope: !272, file: !3, line: 153, type: !19)
!274 = !DILocation(line: 153, column: 12, scope: !272)
!275 = !DILocalVariable(name: "dataBuffer", scope: !272, file: !3, line: 154, type: !23)
!276 = !DILocation(line: 154, column: 10, scope: !272)
!277 = !DILocation(line: 155, column: 12, scope: !272)
!278 = !DILocation(line: 155, column: 10, scope: !272)
!279 = !DILocation(line: 156, column: 8, scope: !280)
!280 = distinct !DILexicalBlock(scope: !272, file: !3, line: 156, column: 8)
!281 = !DILocation(line: 156, column: 8, scope: !272)
!282 = !DILocalVariable(name: "dataLen", scope: !283, file: !3, line: 160, type: !35)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 158, column: 9)
!284 = distinct !DILexicalBlock(scope: !280, file: !3, line: 157, column: 5)
!285 = !DILocation(line: 160, column: 20, scope: !283)
!286 = !DILocation(line: 160, column: 37, scope: !283)
!287 = !DILocation(line: 160, column: 30, scope: !283)
!288 = !DILocalVariable(name: "pFile", scope: !283, file: !3, line: 161, type: !42)
!289 = !DILocation(line: 161, column: 20, scope: !283)
!290 = !DILocation(line: 163, column: 21, scope: !291)
!291 = distinct !DILexicalBlock(scope: !283, file: !3, line: 163, column: 17)
!292 = !DILocation(line: 163, column: 20, scope: !291)
!293 = !DILocation(line: 163, column: 29, scope: !291)
!294 = !DILocation(line: 163, column: 17, scope: !283)
!295 = !DILocation(line: 165, column: 25, scope: !296)
!296 = distinct !DILexicalBlock(scope: !291, file: !3, line: 164, column: 13)
!297 = !DILocation(line: 165, column: 23, scope: !296)
!298 = !DILocation(line: 166, column: 21, scope: !299)
!299 = distinct !DILexicalBlock(scope: !296, file: !3, line: 166, column: 21)
!300 = !DILocation(line: 166, column: 27, scope: !299)
!301 = !DILocation(line: 166, column: 21, scope: !296)
!302 = !DILocation(line: 169, column: 31, scope: !303)
!303 = distinct !DILexicalBlock(scope: !304, file: !3, line: 169, column: 25)
!304 = distinct !DILexicalBlock(scope: !299, file: !3, line: 167, column: 17)
!305 = !DILocation(line: 169, column: 36, scope: !303)
!306 = !DILocation(line: 169, column: 35, scope: !303)
!307 = !DILocation(line: 169, column: 55, scope: !303)
!308 = !DILocation(line: 169, column: 54, scope: !303)
!309 = !DILocation(line: 169, column: 45, scope: !303)
!310 = !DILocation(line: 169, column: 65, scope: !303)
!311 = !DILocation(line: 169, column: 25, scope: !303)
!312 = !DILocation(line: 169, column: 72, scope: !303)
!313 = !DILocation(line: 169, column: 25, scope: !304)
!314 = !DILocation(line: 171, column: 25, scope: !315)
!315 = distinct !DILexicalBlock(scope: !303, file: !3, line: 170, column: 21)
!316 = !DILocation(line: 173, column: 25, scope: !315)
!317 = !DILocation(line: 173, column: 30, scope: !315)
!318 = !DILocation(line: 173, column: 39, scope: !315)
!319 = !DILocation(line: 174, column: 21, scope: !315)
!320 = !DILocation(line: 175, column: 28, scope: !304)
!321 = !DILocation(line: 175, column: 21, scope: !304)
!322 = !DILocation(line: 176, column: 17, scope: !304)
!323 = !DILocation(line: 177, column: 13, scope: !296)
!324 = !DILocation(line: 179, column: 5, scope: !284)
!325 = !DILocation(line: 180, column: 8, scope: !326)
!326 = distinct !DILexicalBlock(scope: !272, file: !3, line: 180, column: 8)
!327 = !DILocation(line: 180, column: 8, scope: !272)
!328 = !DILocalVariable(name: "i", scope: !329, file: !3, line: 183, type: !7)
!329 = distinct !DILexicalBlock(scope: !330, file: !3, line: 182, column: 9)
!330 = distinct !DILexicalBlock(scope: !326, file: !3, line: 181, column: 5)
!331 = !DILocation(line: 183, column: 17, scope: !329)
!332 = !DILocalVariable(name: "n", scope: !329, file: !3, line: 183, type: !7)
!333 = !DILocation(line: 183, column: 20, scope: !329)
!334 = !DILocalVariable(name: "intVariable", scope: !329, file: !3, line: 183, type: !7)
!335 = !DILocation(line: 183, column: 23, scope: !329)
!336 = !DILocation(line: 184, column: 24, scope: !337)
!337 = distinct !DILexicalBlock(scope: !329, file: !3, line: 184, column: 17)
!338 = !DILocation(line: 184, column: 17, scope: !337)
!339 = !DILocation(line: 184, column: 40, scope: !337)
!340 = !DILocation(line: 184, column: 17, scope: !329)
!341 = !DILocation(line: 187, column: 21, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !3, line: 187, column: 21)
!343 = distinct !DILexicalBlock(scope: !337, file: !3, line: 185, column: 13)
!344 = !DILocation(line: 187, column: 23, scope: !342)
!345 = !DILocation(line: 187, column: 21, scope: !343)
!346 = !DILocation(line: 189, column: 33, scope: !347)
!347 = distinct !DILexicalBlock(scope: !342, file: !3, line: 188, column: 17)
!348 = !DILocation(line: 190, column: 28, scope: !349)
!349 = distinct !DILexicalBlock(scope: !347, file: !3, line: 190, column: 21)
!350 = !DILocation(line: 190, column: 26, scope: !349)
!351 = !DILocation(line: 190, column: 33, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !3, line: 190, column: 21)
!353 = !DILocation(line: 190, column: 37, scope: !352)
!354 = !DILocation(line: 190, column: 35, scope: !352)
!355 = !DILocation(line: 190, column: 21, scope: !349)
!356 = !DILocation(line: 193, column: 36, scope: !357)
!357 = distinct !DILexicalBlock(scope: !352, file: !3, line: 191, column: 21)
!358 = !DILocation(line: 194, column: 21, scope: !357)
!359 = !DILocation(line: 190, column: 41, scope: !352)
!360 = !DILocation(line: 190, column: 21, scope: !352)
!361 = distinct !{!361, !355, !362, !167}
!362 = !DILocation(line: 194, column: 21, scope: !349)
!363 = !DILocation(line: 195, column: 34, scope: !347)
!364 = !DILocation(line: 195, column: 21, scope: !347)
!365 = !DILocation(line: 196, column: 17, scope: !347)
!366 = !DILocation(line: 197, column: 13, scope: !343)
!367 = !DILocation(line: 199, column: 5, scope: !330)
!368 = !DILocation(line: 200, column: 1, scope: !272)
!369 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 203, type: !16, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!370 = !DILocalVariable(name: "data", scope: !369, file: !3, line: 205, type: !19)
!371 = !DILocation(line: 205, column: 12, scope: !369)
!372 = !DILocalVariable(name: "dataBuffer", scope: !369, file: !3, line: 206, type: !23)
!373 = !DILocation(line: 206, column: 10, scope: !369)
!374 = !DILocation(line: 207, column: 12, scope: !369)
!375 = !DILocation(line: 207, column: 10, scope: !369)
!376 = !DILocation(line: 208, column: 8, scope: !377)
!377 = distinct !DILexicalBlock(scope: !369, file: !3, line: 208, column: 8)
!378 = !DILocation(line: 208, column: 8, scope: !369)
!379 = !DILocation(line: 211, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !3, line: 209, column: 5)
!381 = !DILocation(line: 212, column: 5, scope: !380)
!382 = !DILocation(line: 216, column: 16, scope: !383)
!383 = distinct !DILexicalBlock(scope: !377, file: !3, line: 214, column: 5)
!384 = !DILocation(line: 216, column: 9, scope: !383)
!385 = !DILocation(line: 218, column: 8, scope: !386)
!386 = distinct !DILexicalBlock(scope: !369, file: !3, line: 218, column: 8)
!387 = !DILocation(line: 218, column: 8, scope: !369)
!388 = !DILocalVariable(name: "i", scope: !389, file: !3, line: 221, type: !7)
!389 = distinct !DILexicalBlock(scope: !390, file: !3, line: 220, column: 9)
!390 = distinct !DILexicalBlock(scope: !386, file: !3, line: 219, column: 5)
!391 = !DILocation(line: 221, column: 17, scope: !389)
!392 = !DILocalVariable(name: "n", scope: !389, file: !3, line: 221, type: !7)
!393 = !DILocation(line: 221, column: 20, scope: !389)
!394 = !DILocalVariable(name: "intVariable", scope: !389, file: !3, line: 221, type: !7)
!395 = !DILocation(line: 221, column: 23, scope: !389)
!396 = !DILocation(line: 222, column: 24, scope: !397)
!397 = distinct !DILexicalBlock(scope: !389, file: !3, line: 222, column: 17)
!398 = !DILocation(line: 222, column: 17, scope: !397)
!399 = !DILocation(line: 222, column: 40, scope: !397)
!400 = !DILocation(line: 222, column: 17, scope: !389)
!401 = !DILocation(line: 225, column: 29, scope: !402)
!402 = distinct !DILexicalBlock(scope: !397, file: !3, line: 223, column: 13)
!403 = !DILocation(line: 226, column: 24, scope: !404)
!404 = distinct !DILexicalBlock(scope: !402, file: !3, line: 226, column: 17)
!405 = !DILocation(line: 226, column: 22, scope: !404)
!406 = !DILocation(line: 226, column: 29, scope: !407)
!407 = distinct !DILexicalBlock(scope: !404, file: !3, line: 226, column: 17)
!408 = !DILocation(line: 226, column: 33, scope: !407)
!409 = !DILocation(line: 226, column: 31, scope: !407)
!410 = !DILocation(line: 226, column: 17, scope: !404)
!411 = !DILocation(line: 229, column: 32, scope: !412)
!412 = distinct !DILexicalBlock(scope: !407, file: !3, line: 227, column: 17)
!413 = !DILocation(line: 230, column: 17, scope: !412)
!414 = !DILocation(line: 226, column: 37, scope: !407)
!415 = !DILocation(line: 226, column: 17, scope: !407)
!416 = distinct !{!416, !410, !417, !167}
!417 = !DILocation(line: 230, column: 17, scope: !404)
!418 = !DILocation(line: 231, column: 30, scope: !402)
!419 = !DILocation(line: 231, column: 17, scope: !402)
!420 = !DILocation(line: 232, column: 13, scope: !402)
!421 = !DILocation(line: 234, column: 5, scope: !390)
!422 = !DILocation(line: 235, column: 1, scope: !369)
!423 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 238, type: !16, scopeLine: 239, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!424 = !DILocalVariable(name: "data", scope: !423, file: !3, line: 240, type: !19)
!425 = !DILocation(line: 240, column: 12, scope: !423)
!426 = !DILocalVariable(name: "dataBuffer", scope: !423, file: !3, line: 241, type: !23)
!427 = !DILocation(line: 241, column: 10, scope: !423)
!428 = !DILocation(line: 242, column: 12, scope: !423)
!429 = !DILocation(line: 242, column: 10, scope: !423)
!430 = !DILocation(line: 243, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !423, file: !3, line: 243, column: 8)
!432 = !DILocation(line: 243, column: 8, scope: !423)
!433 = !DILocation(line: 246, column: 16, scope: !434)
!434 = distinct !DILexicalBlock(scope: !431, file: !3, line: 244, column: 5)
!435 = !DILocation(line: 246, column: 9, scope: !434)
!436 = !DILocation(line: 247, column: 5, scope: !434)
!437 = !DILocation(line: 248, column: 8, scope: !438)
!438 = distinct !DILexicalBlock(scope: !423, file: !3, line: 248, column: 8)
!439 = !DILocation(line: 248, column: 8, scope: !423)
!440 = !DILocalVariable(name: "i", scope: !441, file: !3, line: 251, type: !7)
!441 = distinct !DILexicalBlock(scope: !442, file: !3, line: 250, column: 9)
!442 = distinct !DILexicalBlock(scope: !438, file: !3, line: 249, column: 5)
!443 = !DILocation(line: 251, column: 17, scope: !441)
!444 = !DILocalVariable(name: "n", scope: !441, file: !3, line: 251, type: !7)
!445 = !DILocation(line: 251, column: 20, scope: !441)
!446 = !DILocalVariable(name: "intVariable", scope: !441, file: !3, line: 251, type: !7)
!447 = !DILocation(line: 251, column: 23, scope: !441)
!448 = !DILocation(line: 252, column: 24, scope: !449)
!449 = distinct !DILexicalBlock(scope: !441, file: !3, line: 252, column: 17)
!450 = !DILocation(line: 252, column: 17, scope: !449)
!451 = !DILocation(line: 252, column: 40, scope: !449)
!452 = !DILocation(line: 252, column: 17, scope: !441)
!453 = !DILocation(line: 255, column: 29, scope: !454)
!454 = distinct !DILexicalBlock(scope: !449, file: !3, line: 253, column: 13)
!455 = !DILocation(line: 256, column: 24, scope: !456)
!456 = distinct !DILexicalBlock(scope: !454, file: !3, line: 256, column: 17)
!457 = !DILocation(line: 256, column: 22, scope: !456)
!458 = !DILocation(line: 256, column: 29, scope: !459)
!459 = distinct !DILexicalBlock(scope: !456, file: !3, line: 256, column: 17)
!460 = !DILocation(line: 256, column: 33, scope: !459)
!461 = !DILocation(line: 256, column: 31, scope: !459)
!462 = !DILocation(line: 256, column: 17, scope: !456)
!463 = !DILocation(line: 259, column: 32, scope: !464)
!464 = distinct !DILexicalBlock(scope: !459, file: !3, line: 257, column: 17)
!465 = !DILocation(line: 260, column: 17, scope: !464)
!466 = !DILocation(line: 256, column: 37, scope: !459)
!467 = !DILocation(line: 256, column: 17, scope: !459)
!468 = distinct !{!468, !462, !469, !167}
!469 = !DILocation(line: 260, column: 17, scope: !456)
!470 = !DILocation(line: 261, column: 30, scope: !454)
!471 = !DILocation(line: 261, column: 17, scope: !454)
!472 = !DILocation(line: 262, column: 13, scope: !454)
!473 = !DILocation(line: 264, column: 5, scope: !442)
!474 = !DILocation(line: 265, column: 1, scope: !423)
!475 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_05_good", scope: !3, file: !3, line: 267, type: !16, scopeLine: 268, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!476 = !DILocation(line: 269, column: 5, scope: !475)
!477 = !DILocation(line: 270, column: 5, scope: !475)
!478 = !DILocation(line: 271, column: 5, scope: !475)
!479 = !DILocation(line: 272, column: 5, scope: !475)
!480 = !DILocation(line: 273, column: 1, scope: !475)
