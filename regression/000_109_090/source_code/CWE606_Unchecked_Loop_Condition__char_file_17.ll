; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_17.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_17_bad() #0 !dbg !10 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i17 = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %j, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !17, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %data, align 8, !dbg !27
  store i32 0, i32* %i, align 4, !dbg !28
  br label %for.cond, !dbg !30

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !31
  %cmp = icmp slt i32 %1, 1, !dbg !33
  br i1 %cmp, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !35, metadata !DIExpression()), !dbg !41
  %2 = load i8*, i8** %data, align 8, !dbg !42
  %call = call i64 @strlen(i8* %2) #6, !dbg !43
  store i64 %call, i64* %dataLen, align 8, !dbg !41
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !44, metadata !DIExpression()), !dbg !101
  %3 = load i64, i64* %dataLen, align 8, !dbg !102
  %sub = sub i64 100, %3, !dbg !104
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !105
  br i1 %cmp1, label %if.then, label %if.end12, !dbg !106

if.then:                                          ; preds = %for.body
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !107
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !109
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !110
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !112
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !113

if.then4:                                         ; preds = %if.then
  %5 = load i8*, i8** %data, align 8, !dbg !114
  %6 = load i64, i64* %dataLen, align 8, !dbg !117
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !118
  %7 = load i64, i64* %dataLen, align 8, !dbg !119
  %sub5 = sub i64 100, %7, !dbg !120
  %conv = trunc i64 %sub5 to i32, !dbg !121
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !122
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !123
  %cmp7 = icmp eq i8* %call6, null, !dbg !124
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !125

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !126
  %9 = load i8*, i8** %data, align 8, !dbg !128
  %10 = load i64, i64* %dataLen, align 8, !dbg !129
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !128
  store i8 0, i8* %arrayidx, align 1, !dbg !130
  br label %if.end, !dbg !131

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !132
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !133
  br label %if.end11, !dbg !134

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !135

if.end12:                                         ; preds = %if.end11, %for.body
  br label %for.inc, !dbg !136

for.inc:                                          ; preds = %if.end12
  %12 = load i32, i32* %i, align 4, !dbg !137
  %inc = add nsw i32 %12, 1, !dbg !137
  store i32 %inc, i32* %i, align 4, !dbg !137
  br label %for.cond, !dbg !138, !llvm.loop !139

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !142
  br label %for.cond13, !dbg !144

for.cond13:                                       ; preds = %for.inc31, %for.end
  %13 = load i32, i32* %j, align 4, !dbg !145
  %cmp14 = icmp slt i32 %13, 1, !dbg !147
  br i1 %cmp14, label %for.body16, label %for.end33, !dbg !148

for.body16:                                       ; preds = %for.cond13
  call void @llvm.dbg.declare(metadata i32* %i17, metadata !149, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.declare(metadata i32* %n, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !155, metadata !DIExpression()), !dbg !156
  %14 = load i8*, i8** %data, align 8, !dbg !157
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !159
  %cmp19 = icmp eq i32 %call18, 1, !dbg !160
  br i1 %cmp19, label %if.then21, label %if.end30, !dbg !161

if.then21:                                        ; preds = %for.body16
  store i32 0, i32* %intVariable, align 4, !dbg !162
  store i32 0, i32* %i17, align 4, !dbg !164
  br label %for.cond22, !dbg !166

for.cond22:                                       ; preds = %for.inc27, %if.then21
  %15 = load i32, i32* %i17, align 4, !dbg !167
  %16 = load i32, i32* %n, align 4, !dbg !169
  %cmp23 = icmp slt i32 %15, %16, !dbg !170
  br i1 %cmp23, label %for.body25, label %for.end29, !dbg !171

for.body25:                                       ; preds = %for.cond22
  %17 = load i32, i32* %intVariable, align 4, !dbg !172
  %inc26 = add nsw i32 %17, 1, !dbg !172
  store i32 %inc26, i32* %intVariable, align 4, !dbg !172
  br label %for.inc27, !dbg !174

for.inc27:                                        ; preds = %for.body25
  %18 = load i32, i32* %i17, align 4, !dbg !175
  %inc28 = add nsw i32 %18, 1, !dbg !175
  store i32 %inc28, i32* %i17, align 4, !dbg !175
  br label %for.cond22, !dbg !176, !llvm.loop !177

for.end29:                                        ; preds = %for.cond22
  %19 = load i32, i32* %intVariable, align 4, !dbg !179
  call void @printIntLine(i32 %19), !dbg !180
  br label %if.end30, !dbg !181

if.end30:                                         ; preds = %for.end29, %for.body16
  br label %for.inc31, !dbg !182

for.inc31:                                        ; preds = %if.end30
  %20 = load i32, i32* %j, align 4, !dbg !183
  %inc32 = add nsw i32 %20, 1, !dbg !183
  store i32 %inc32, i32* %j, align 4, !dbg !183
  br label %for.cond13, !dbg !184, !llvm.loop !185

for.end33:                                        ; preds = %for.cond13
  ret void, !dbg !187
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
define dso_local void @goodB2G() #0 !dbg !188 {
entry:
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i17 = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !189, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.declare(metadata i32* %k, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata i8** %data, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !195, metadata !DIExpression()), !dbg !196
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !196
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !196
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !197
  store i8* %arraydecay, i8** %data, align 8, !dbg !198
  store i32 0, i32* %i, align 4, !dbg !199
  br label %for.cond, !dbg !201

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4, !dbg !202
  %cmp = icmp slt i32 %1, 1, !dbg !204
  br i1 %cmp, label %for.body, label %for.end, !dbg !205

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !206, metadata !DIExpression()), !dbg !209
  %2 = load i8*, i8** %data, align 8, !dbg !210
  %call = call i64 @strlen(i8* %2) #6, !dbg !211
  store i64 %call, i64* %dataLen, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !212, metadata !DIExpression()), !dbg !213
  %3 = load i64, i64* %dataLen, align 8, !dbg !214
  %sub = sub i64 100, %3, !dbg !216
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !217
  br i1 %cmp1, label %if.then, label %if.end12, !dbg !218

if.then:                                          ; preds = %for.body
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !219
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !221
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !222
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !224
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !225

if.then4:                                         ; preds = %if.then
  %5 = load i8*, i8** %data, align 8, !dbg !226
  %6 = load i64, i64* %dataLen, align 8, !dbg !229
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !230
  %7 = load i64, i64* %dataLen, align 8, !dbg !231
  %sub5 = sub i64 100, %7, !dbg !232
  %conv = trunc i64 %sub5 to i32, !dbg !233
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !234
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !235
  %cmp7 = icmp eq i8* %call6, null, !dbg !236
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !237

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !238
  %9 = load i8*, i8** %data, align 8, !dbg !240
  %10 = load i64, i64* %dataLen, align 8, !dbg !241
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !240
  store i8 0, i8* %arrayidx, align 1, !dbg !242
  br label %if.end, !dbg !243

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !244
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !245
  br label %if.end11, !dbg !246

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !247

if.end12:                                         ; preds = %if.end11, %for.body
  br label %for.inc, !dbg !248

for.inc:                                          ; preds = %if.end12
  %12 = load i32, i32* %i, align 4, !dbg !249
  %inc = add nsw i32 %12, 1, !dbg !249
  store i32 %inc, i32* %i, align 4, !dbg !249
  br label %for.cond, !dbg !250, !llvm.loop !251

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !253
  br label %for.cond13, !dbg !255

for.cond13:                                       ; preds = %for.inc35, %for.end
  %13 = load i32, i32* %k, align 4, !dbg !256
  %cmp14 = icmp slt i32 %13, 1, !dbg !258
  br i1 %cmp14, label %for.body16, label %for.end37, !dbg !259

for.body16:                                       ; preds = %for.cond13
  call void @llvm.dbg.declare(metadata i32* %i17, metadata !260, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata i32* %n, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !266, metadata !DIExpression()), !dbg !267
  %14 = load i8*, i8** %data, align 8, !dbg !268
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !270
  %cmp19 = icmp eq i32 %call18, 1, !dbg !271
  br i1 %cmp19, label %if.then21, label %if.end34, !dbg !272

if.then21:                                        ; preds = %for.body16
  %15 = load i32, i32* %n, align 4, !dbg !273
  %cmp22 = icmp slt i32 %15, 10000, !dbg !276
  br i1 %cmp22, label %if.then24, label %if.end33, !dbg !277

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %intVariable, align 4, !dbg !278
  store i32 0, i32* %i17, align 4, !dbg !280
  br label %for.cond25, !dbg !282

for.cond25:                                       ; preds = %for.inc30, %if.then24
  %16 = load i32, i32* %i17, align 4, !dbg !283
  %17 = load i32, i32* %n, align 4, !dbg !285
  %cmp26 = icmp slt i32 %16, %17, !dbg !286
  br i1 %cmp26, label %for.body28, label %for.end32, !dbg !287

for.body28:                                       ; preds = %for.cond25
  %18 = load i32, i32* %intVariable, align 4, !dbg !288
  %inc29 = add nsw i32 %18, 1, !dbg !288
  store i32 %inc29, i32* %intVariable, align 4, !dbg !288
  br label %for.inc30, !dbg !290

for.inc30:                                        ; preds = %for.body28
  %19 = load i32, i32* %i17, align 4, !dbg !291
  %inc31 = add nsw i32 %19, 1, !dbg !291
  store i32 %inc31, i32* %i17, align 4, !dbg !291
  br label %for.cond25, !dbg !292, !llvm.loop !293

for.end32:                                        ; preds = %for.cond25
  %20 = load i32, i32* %intVariable, align 4, !dbg !295
  call void @printIntLine(i32 %20), !dbg !296
  br label %if.end33, !dbg !297

if.end33:                                         ; preds = %for.end32, %if.then21
  br label %if.end34, !dbg !298

if.end34:                                         ; preds = %if.end33, %for.body16
  br label %for.inc35, !dbg !299

for.inc35:                                        ; preds = %if.end34
  %21 = load i32, i32* %k, align 4, !dbg !300
  %inc36 = add nsw i32 %21, 1, !dbg !300
  store i32 %inc36, i32* %k, align 4, !dbg !300
  br label %for.cond13, !dbg !301, !llvm.loop !302

for.end37:                                        ; preds = %for.cond13
  ret void, !dbg !304
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !305 {
entry:
  %h = alloca i32, align 4
  %j = alloca i32, align 4
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %h, metadata !306, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata i32* %j, metadata !308, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.declare(metadata i8** %data, metadata !310, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !312, metadata !DIExpression()), !dbg !313
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !313
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !313
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !314
  store i8* %arraydecay, i8** %data, align 8, !dbg !315
  store i32 0, i32* %h, align 4, !dbg !316
  br label %for.cond, !dbg !318

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %h, align 4, !dbg !319
  %cmp = icmp slt i32 %1, 1, !dbg !321
  br i1 %cmp, label %for.body, label %for.end, !dbg !322

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %data, align 8, !dbg !323
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !325
  br label %for.inc, !dbg !326

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %h, align 4, !dbg !327
  %inc = add nsw i32 %3, 1, !dbg !327
  store i32 %inc, i32* %h, align 4, !dbg !327
  br label %for.cond, !dbg !328, !llvm.loop !329

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !331
  br label %for.cond1, !dbg !333

for.cond1:                                        ; preds = %for.inc13, %for.end
  %4 = load i32, i32* %j, align 4, !dbg !334
  %cmp2 = icmp slt i32 %4, 1, !dbg !336
  br i1 %cmp2, label %for.body3, label %for.end15, !dbg !337

for.body3:                                        ; preds = %for.cond1
  call void @llvm.dbg.declare(metadata i32* %i, metadata !338, metadata !DIExpression()), !dbg !341
  call void @llvm.dbg.declare(metadata i32* %n, metadata !342, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !344, metadata !DIExpression()), !dbg !345
  %5 = load i8*, i8** %data, align 8, !dbg !346
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !348
  %cmp5 = icmp eq i32 %call4, 1, !dbg !349
  br i1 %cmp5, label %if.then, label %if.end, !dbg !350

if.then:                                          ; preds = %for.body3
  store i32 0, i32* %intVariable, align 4, !dbg !351
  store i32 0, i32* %i, align 4, !dbg !353
  br label %for.cond6, !dbg !355

for.cond6:                                        ; preds = %for.inc10, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !356
  %7 = load i32, i32* %n, align 4, !dbg !358
  %cmp7 = icmp slt i32 %6, %7, !dbg !359
  br i1 %cmp7, label %for.body8, label %for.end12, !dbg !360

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, i32* %intVariable, align 4, !dbg !361
  %inc9 = add nsw i32 %8, 1, !dbg !361
  store i32 %inc9, i32* %intVariable, align 4, !dbg !361
  br label %for.inc10, !dbg !363

for.inc10:                                        ; preds = %for.body8
  %9 = load i32, i32* %i, align 4, !dbg !364
  %inc11 = add nsw i32 %9, 1, !dbg !364
  store i32 %inc11, i32* %i, align 4, !dbg !364
  br label %for.cond6, !dbg !365, !llvm.loop !366

for.end12:                                        ; preds = %for.cond6
  %10 = load i32, i32* %intVariable, align 4, !dbg !368
  call void @printIntLine(i32 %10), !dbg !369
  br label %if.end, !dbg !370

if.end:                                           ; preds = %for.end12, %for.body3
  br label %for.inc13, !dbg !371

for.inc13:                                        ; preds = %if.end
  %11 = load i32, i32* %j, align 4, !dbg !372
  %inc14 = add nsw i32 %11, 1, !dbg !372
  store i32 %inc14, i32* %j, align 4, !dbg !372
  br label %for.cond1, !dbg !373, !llvm.loop !374

for.end15:                                        ; preds = %for.cond1
  ret void, !dbg !376
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_17_good() #0 !dbg !377 {
entry:
  call void @goodB2G(), !dbg !378
  call void @goodG2B(), !dbg !379
  ret void, !dbg !380
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_17.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_090/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_17_bad", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "i", scope: !10, file: !1, line: 37, type: !5)
!14 = !DILocation(line: 37, column: 9, scope: !10)
!15 = !DILocalVariable(name: "j", scope: !10, file: !1, line: 37, type: !5)
!16 = !DILocation(line: 37, column: 11, scope: !10)
!17 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 38, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DILocation(line: 38, column: 12, scope: !10)
!21 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 39, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 39, column: 10, scope: !10)
!26 = !DILocation(line: 40, column: 12, scope: !10)
!27 = !DILocation(line: 40, column: 10, scope: !10)
!28 = !DILocation(line: 41, column: 11, scope: !29)
!29 = distinct !DILexicalBlock(scope: !10, file: !1, line: 41, column: 5)
!30 = !DILocation(line: 41, column: 9, scope: !29)
!31 = !DILocation(line: 41, column: 16, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !1, line: 41, column: 5)
!33 = !DILocation(line: 41, column: 18, scope: !32)
!34 = !DILocation(line: 41, column: 5, scope: !29)
!35 = !DILocalVariable(name: "dataLen", scope: !36, file: !1, line: 45, type: !38)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 43, column: 9)
!37 = distinct !DILexicalBlock(scope: !32, file: !1, line: 42, column: 5)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DILocation(line: 45, column: 20, scope: !36)
!42 = !DILocation(line: 45, column: 37, scope: !36)
!43 = !DILocation(line: 45, column: 30, scope: !36)
!44 = !DILocalVariable(name: "pFile", scope: !36, file: !1, line: 46, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !47, line: 7, baseType: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !49, line: 49, size: 1728, elements: !50)
!49 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !66, !68, !69, !70, !74, !76, !78, !82, !85, !87, !90, !93, !94, !95, !96, !97}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !48, file: !49, line: 51, baseType: !5, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !48, file: !49, line: 54, baseType: !18, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !48, file: !49, line: 55, baseType: !18, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !48, file: !49, line: 56, baseType: !18, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !48, file: !49, line: 57, baseType: !18, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !48, file: !49, line: 58, baseType: !18, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !48, file: !49, line: 59, baseType: !18, size: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !48, file: !49, line: 60, baseType: !18, size: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !48, file: !49, line: 61, baseType: !18, size: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !48, file: !49, line: 64, baseType: !18, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !48, file: !49, line: 65, baseType: !18, size: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !48, file: !49, line: 66, baseType: !18, size: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !48, file: !49, line: 68, baseType: !64, size: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !49, line: 36, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !48, file: !49, line: 70, baseType: !67, size: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !48, file: !49, line: 72, baseType: !5, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !48, file: !49, line: 73, baseType: !5, size: 32, offset: 928)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !48, file: !49, line: 74, baseType: !71, size: 64, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !72, line: 152, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!73 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !48, file: !49, line: 77, baseType: !75, size: 16, offset: 1024)
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !48, file: !49, line: 78, baseType: !77, size: 8, offset: 1040)
!77 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !48, file: !49, line: 79, baseType: !79, size: 8, offset: 1048)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !48, file: !49, line: 81, baseType: !83, size: 64, offset: 1088)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !49, line: 43, baseType: null)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !48, file: !49, line: 89, baseType: !86, size: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !72, line: 153, baseType: !73)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !48, file: !49, line: 91, baseType: !88, size: 64, offset: 1216)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !49, line: 37, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !48, file: !49, line: 92, baseType: !91, size: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !49, line: 38, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !48, file: !49, line: 93, baseType: !67, size: 64, offset: 1344)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !48, file: !49, line: 94, baseType: !4, size: 64, offset: 1408)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !48, file: !49, line: 95, baseType: !38, size: 64, offset: 1472)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !48, file: !49, line: 96, baseType: !5, size: 32, offset: 1536)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !48, file: !49, line: 98, baseType: !98, size: 160, offset: 1568)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 160, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 20)
!101 = !DILocation(line: 46, column: 20, scope: !36)
!102 = !DILocation(line: 48, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !36, file: !1, line: 48, column: 17)
!104 = !DILocation(line: 48, column: 20, scope: !103)
!105 = !DILocation(line: 48, column: 29, scope: !103)
!106 = !DILocation(line: 48, column: 17, scope: !36)
!107 = !DILocation(line: 50, column: 25, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 49, column: 13)
!109 = !DILocation(line: 50, column: 23, scope: !108)
!110 = !DILocation(line: 51, column: 21, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 51, column: 21)
!112 = !DILocation(line: 51, column: 27, scope: !111)
!113 = !DILocation(line: 51, column: 21, scope: !108)
!114 = !DILocation(line: 54, column: 31, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 54, column: 25)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 52, column: 17)
!117 = !DILocation(line: 54, column: 36, scope: !115)
!118 = !DILocation(line: 54, column: 35, scope: !115)
!119 = !DILocation(line: 54, column: 55, scope: !115)
!120 = !DILocation(line: 54, column: 54, scope: !115)
!121 = !DILocation(line: 54, column: 45, scope: !115)
!122 = !DILocation(line: 54, column: 65, scope: !115)
!123 = !DILocation(line: 54, column: 25, scope: !115)
!124 = !DILocation(line: 54, column: 72, scope: !115)
!125 = !DILocation(line: 54, column: 25, scope: !116)
!126 = !DILocation(line: 56, column: 25, scope: !127)
!127 = distinct !DILexicalBlock(scope: !115, file: !1, line: 55, column: 21)
!128 = !DILocation(line: 58, column: 25, scope: !127)
!129 = !DILocation(line: 58, column: 30, scope: !127)
!130 = !DILocation(line: 58, column: 39, scope: !127)
!131 = !DILocation(line: 59, column: 21, scope: !127)
!132 = !DILocation(line: 60, column: 28, scope: !116)
!133 = !DILocation(line: 60, column: 21, scope: !116)
!134 = !DILocation(line: 61, column: 17, scope: !116)
!135 = !DILocation(line: 62, column: 13, scope: !108)
!136 = !DILocation(line: 64, column: 5, scope: !37)
!137 = !DILocation(line: 41, column: 24, scope: !32)
!138 = !DILocation(line: 41, column: 5, scope: !32)
!139 = distinct !{!139, !34, !140, !141}
!140 = !DILocation(line: 64, column: 5, scope: !29)
!141 = !{!"llvm.loop.mustprogress"}
!142 = !DILocation(line: 65, column: 11, scope: !143)
!143 = distinct !DILexicalBlock(scope: !10, file: !1, line: 65, column: 5)
!144 = !DILocation(line: 65, column: 9, scope: !143)
!145 = !DILocation(line: 65, column: 16, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !1, line: 65, column: 5)
!147 = !DILocation(line: 65, column: 18, scope: !146)
!148 = !DILocation(line: 65, column: 5, scope: !143)
!149 = !DILocalVariable(name: "i", scope: !150, file: !1, line: 68, type: !5)
!150 = distinct !DILexicalBlock(scope: !151, file: !1, line: 67, column: 9)
!151 = distinct !DILexicalBlock(scope: !146, file: !1, line: 66, column: 5)
!152 = !DILocation(line: 68, column: 17, scope: !150)
!153 = !DILocalVariable(name: "n", scope: !150, file: !1, line: 68, type: !5)
!154 = !DILocation(line: 68, column: 20, scope: !150)
!155 = !DILocalVariable(name: "intVariable", scope: !150, file: !1, line: 68, type: !5)
!156 = !DILocation(line: 68, column: 23, scope: !150)
!157 = !DILocation(line: 69, column: 24, scope: !158)
!158 = distinct !DILexicalBlock(scope: !150, file: !1, line: 69, column: 17)
!159 = !DILocation(line: 69, column: 17, scope: !158)
!160 = !DILocation(line: 69, column: 40, scope: !158)
!161 = !DILocation(line: 69, column: 17, scope: !150)
!162 = !DILocation(line: 72, column: 29, scope: !163)
!163 = distinct !DILexicalBlock(scope: !158, file: !1, line: 70, column: 13)
!164 = !DILocation(line: 73, column: 24, scope: !165)
!165 = distinct !DILexicalBlock(scope: !163, file: !1, line: 73, column: 17)
!166 = !DILocation(line: 73, column: 22, scope: !165)
!167 = !DILocation(line: 73, column: 29, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !1, line: 73, column: 17)
!169 = !DILocation(line: 73, column: 33, scope: !168)
!170 = !DILocation(line: 73, column: 31, scope: !168)
!171 = !DILocation(line: 73, column: 17, scope: !165)
!172 = !DILocation(line: 76, column: 32, scope: !173)
!173 = distinct !DILexicalBlock(scope: !168, file: !1, line: 74, column: 17)
!174 = !DILocation(line: 77, column: 17, scope: !173)
!175 = !DILocation(line: 73, column: 37, scope: !168)
!176 = !DILocation(line: 73, column: 17, scope: !168)
!177 = distinct !{!177, !171, !178, !141}
!178 = !DILocation(line: 77, column: 17, scope: !165)
!179 = !DILocation(line: 78, column: 30, scope: !163)
!180 = !DILocation(line: 78, column: 17, scope: !163)
!181 = !DILocation(line: 79, column: 13, scope: !163)
!182 = !DILocation(line: 81, column: 5, scope: !151)
!183 = !DILocation(line: 65, column: 24, scope: !146)
!184 = !DILocation(line: 65, column: 5, scope: !146)
!185 = distinct !{!185, !148, !186, !141}
!186 = !DILocation(line: 81, column: 5, scope: !143)
!187 = !DILocation(line: 82, column: 1, scope: !10)
!188 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 89, type: !11, scopeLine: 90, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!189 = !DILocalVariable(name: "i", scope: !188, file: !1, line: 91, type: !5)
!190 = !DILocation(line: 91, column: 9, scope: !188)
!191 = !DILocalVariable(name: "k", scope: !188, file: !1, line: 91, type: !5)
!192 = !DILocation(line: 91, column: 11, scope: !188)
!193 = !DILocalVariable(name: "data", scope: !188, file: !1, line: 92, type: !18)
!194 = !DILocation(line: 92, column: 12, scope: !188)
!195 = !DILocalVariable(name: "dataBuffer", scope: !188, file: !1, line: 93, type: !22)
!196 = !DILocation(line: 93, column: 10, scope: !188)
!197 = !DILocation(line: 94, column: 12, scope: !188)
!198 = !DILocation(line: 94, column: 10, scope: !188)
!199 = !DILocation(line: 95, column: 11, scope: !200)
!200 = distinct !DILexicalBlock(scope: !188, file: !1, line: 95, column: 5)
!201 = !DILocation(line: 95, column: 9, scope: !200)
!202 = !DILocation(line: 95, column: 16, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !1, line: 95, column: 5)
!204 = !DILocation(line: 95, column: 18, scope: !203)
!205 = !DILocation(line: 95, column: 5, scope: !200)
!206 = !DILocalVariable(name: "dataLen", scope: !207, file: !1, line: 99, type: !38)
!207 = distinct !DILexicalBlock(scope: !208, file: !1, line: 97, column: 9)
!208 = distinct !DILexicalBlock(scope: !203, file: !1, line: 96, column: 5)
!209 = !DILocation(line: 99, column: 20, scope: !207)
!210 = !DILocation(line: 99, column: 37, scope: !207)
!211 = !DILocation(line: 99, column: 30, scope: !207)
!212 = !DILocalVariable(name: "pFile", scope: !207, file: !1, line: 100, type: !45)
!213 = !DILocation(line: 100, column: 20, scope: !207)
!214 = !DILocation(line: 102, column: 21, scope: !215)
!215 = distinct !DILexicalBlock(scope: !207, file: !1, line: 102, column: 17)
!216 = !DILocation(line: 102, column: 20, scope: !215)
!217 = !DILocation(line: 102, column: 29, scope: !215)
!218 = !DILocation(line: 102, column: 17, scope: !207)
!219 = !DILocation(line: 104, column: 25, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 103, column: 13)
!221 = !DILocation(line: 104, column: 23, scope: !220)
!222 = !DILocation(line: 105, column: 21, scope: !223)
!223 = distinct !DILexicalBlock(scope: !220, file: !1, line: 105, column: 21)
!224 = !DILocation(line: 105, column: 27, scope: !223)
!225 = !DILocation(line: 105, column: 21, scope: !220)
!226 = !DILocation(line: 108, column: 31, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 108, column: 25)
!228 = distinct !DILexicalBlock(scope: !223, file: !1, line: 106, column: 17)
!229 = !DILocation(line: 108, column: 36, scope: !227)
!230 = !DILocation(line: 108, column: 35, scope: !227)
!231 = !DILocation(line: 108, column: 55, scope: !227)
!232 = !DILocation(line: 108, column: 54, scope: !227)
!233 = !DILocation(line: 108, column: 45, scope: !227)
!234 = !DILocation(line: 108, column: 65, scope: !227)
!235 = !DILocation(line: 108, column: 25, scope: !227)
!236 = !DILocation(line: 108, column: 72, scope: !227)
!237 = !DILocation(line: 108, column: 25, scope: !228)
!238 = !DILocation(line: 110, column: 25, scope: !239)
!239 = distinct !DILexicalBlock(scope: !227, file: !1, line: 109, column: 21)
!240 = !DILocation(line: 112, column: 25, scope: !239)
!241 = !DILocation(line: 112, column: 30, scope: !239)
!242 = !DILocation(line: 112, column: 39, scope: !239)
!243 = !DILocation(line: 113, column: 21, scope: !239)
!244 = !DILocation(line: 114, column: 28, scope: !228)
!245 = !DILocation(line: 114, column: 21, scope: !228)
!246 = !DILocation(line: 115, column: 17, scope: !228)
!247 = !DILocation(line: 116, column: 13, scope: !220)
!248 = !DILocation(line: 118, column: 5, scope: !208)
!249 = !DILocation(line: 95, column: 24, scope: !203)
!250 = !DILocation(line: 95, column: 5, scope: !203)
!251 = distinct !{!251, !205, !252, !141}
!252 = !DILocation(line: 118, column: 5, scope: !200)
!253 = !DILocation(line: 119, column: 11, scope: !254)
!254 = distinct !DILexicalBlock(scope: !188, file: !1, line: 119, column: 5)
!255 = !DILocation(line: 119, column: 9, scope: !254)
!256 = !DILocation(line: 119, column: 16, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !1, line: 119, column: 5)
!258 = !DILocation(line: 119, column: 18, scope: !257)
!259 = !DILocation(line: 119, column: 5, scope: !254)
!260 = !DILocalVariable(name: "i", scope: !261, file: !1, line: 122, type: !5)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 121, column: 9)
!262 = distinct !DILexicalBlock(scope: !257, file: !1, line: 120, column: 5)
!263 = !DILocation(line: 122, column: 17, scope: !261)
!264 = !DILocalVariable(name: "n", scope: !261, file: !1, line: 122, type: !5)
!265 = !DILocation(line: 122, column: 20, scope: !261)
!266 = !DILocalVariable(name: "intVariable", scope: !261, file: !1, line: 122, type: !5)
!267 = !DILocation(line: 122, column: 23, scope: !261)
!268 = !DILocation(line: 123, column: 24, scope: !269)
!269 = distinct !DILexicalBlock(scope: !261, file: !1, line: 123, column: 17)
!270 = !DILocation(line: 123, column: 17, scope: !269)
!271 = !DILocation(line: 123, column: 40, scope: !269)
!272 = !DILocation(line: 123, column: 17, scope: !261)
!273 = !DILocation(line: 126, column: 21, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !1, line: 126, column: 21)
!275 = distinct !DILexicalBlock(scope: !269, file: !1, line: 124, column: 13)
!276 = !DILocation(line: 126, column: 23, scope: !274)
!277 = !DILocation(line: 126, column: 21, scope: !275)
!278 = !DILocation(line: 128, column: 33, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !1, line: 127, column: 17)
!280 = !DILocation(line: 129, column: 28, scope: !281)
!281 = distinct !DILexicalBlock(scope: !279, file: !1, line: 129, column: 21)
!282 = !DILocation(line: 129, column: 26, scope: !281)
!283 = !DILocation(line: 129, column: 33, scope: !284)
!284 = distinct !DILexicalBlock(scope: !281, file: !1, line: 129, column: 21)
!285 = !DILocation(line: 129, column: 37, scope: !284)
!286 = !DILocation(line: 129, column: 35, scope: !284)
!287 = !DILocation(line: 129, column: 21, scope: !281)
!288 = !DILocation(line: 132, column: 36, scope: !289)
!289 = distinct !DILexicalBlock(scope: !284, file: !1, line: 130, column: 21)
!290 = !DILocation(line: 133, column: 21, scope: !289)
!291 = !DILocation(line: 129, column: 41, scope: !284)
!292 = !DILocation(line: 129, column: 21, scope: !284)
!293 = distinct !{!293, !287, !294, !141}
!294 = !DILocation(line: 133, column: 21, scope: !281)
!295 = !DILocation(line: 134, column: 34, scope: !279)
!296 = !DILocation(line: 134, column: 21, scope: !279)
!297 = !DILocation(line: 135, column: 17, scope: !279)
!298 = !DILocation(line: 136, column: 13, scope: !275)
!299 = !DILocation(line: 138, column: 5, scope: !262)
!300 = !DILocation(line: 119, column: 24, scope: !257)
!301 = !DILocation(line: 119, column: 5, scope: !257)
!302 = distinct !{!302, !259, !303, !141}
!303 = !DILocation(line: 138, column: 5, scope: !254)
!304 = !DILocation(line: 139, column: 1, scope: !188)
!305 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 142, type: !11, scopeLine: 143, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!306 = !DILocalVariable(name: "h", scope: !305, file: !1, line: 144, type: !5)
!307 = !DILocation(line: 144, column: 9, scope: !305)
!308 = !DILocalVariable(name: "j", scope: !305, file: !1, line: 144, type: !5)
!309 = !DILocation(line: 144, column: 11, scope: !305)
!310 = !DILocalVariable(name: "data", scope: !305, file: !1, line: 145, type: !18)
!311 = !DILocation(line: 145, column: 12, scope: !305)
!312 = !DILocalVariable(name: "dataBuffer", scope: !305, file: !1, line: 146, type: !22)
!313 = !DILocation(line: 146, column: 10, scope: !305)
!314 = !DILocation(line: 147, column: 12, scope: !305)
!315 = !DILocation(line: 147, column: 10, scope: !305)
!316 = !DILocation(line: 148, column: 11, scope: !317)
!317 = distinct !DILexicalBlock(scope: !305, file: !1, line: 148, column: 5)
!318 = !DILocation(line: 148, column: 9, scope: !317)
!319 = !DILocation(line: 148, column: 16, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !1, line: 148, column: 5)
!321 = !DILocation(line: 148, column: 18, scope: !320)
!322 = !DILocation(line: 148, column: 5, scope: !317)
!323 = !DILocation(line: 151, column: 16, scope: !324)
!324 = distinct !DILexicalBlock(scope: !320, file: !1, line: 149, column: 5)
!325 = !DILocation(line: 151, column: 9, scope: !324)
!326 = !DILocation(line: 152, column: 5, scope: !324)
!327 = !DILocation(line: 148, column: 24, scope: !320)
!328 = !DILocation(line: 148, column: 5, scope: !320)
!329 = distinct !{!329, !322, !330, !141}
!330 = !DILocation(line: 152, column: 5, scope: !317)
!331 = !DILocation(line: 153, column: 11, scope: !332)
!332 = distinct !DILexicalBlock(scope: !305, file: !1, line: 153, column: 5)
!333 = !DILocation(line: 153, column: 9, scope: !332)
!334 = !DILocation(line: 153, column: 16, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !1, line: 153, column: 5)
!336 = !DILocation(line: 153, column: 18, scope: !335)
!337 = !DILocation(line: 153, column: 5, scope: !332)
!338 = !DILocalVariable(name: "i", scope: !339, file: !1, line: 156, type: !5)
!339 = distinct !DILexicalBlock(scope: !340, file: !1, line: 155, column: 9)
!340 = distinct !DILexicalBlock(scope: !335, file: !1, line: 154, column: 5)
!341 = !DILocation(line: 156, column: 17, scope: !339)
!342 = !DILocalVariable(name: "n", scope: !339, file: !1, line: 156, type: !5)
!343 = !DILocation(line: 156, column: 20, scope: !339)
!344 = !DILocalVariable(name: "intVariable", scope: !339, file: !1, line: 156, type: !5)
!345 = !DILocation(line: 156, column: 23, scope: !339)
!346 = !DILocation(line: 157, column: 24, scope: !347)
!347 = distinct !DILexicalBlock(scope: !339, file: !1, line: 157, column: 17)
!348 = !DILocation(line: 157, column: 17, scope: !347)
!349 = !DILocation(line: 157, column: 40, scope: !347)
!350 = !DILocation(line: 157, column: 17, scope: !339)
!351 = !DILocation(line: 160, column: 29, scope: !352)
!352 = distinct !DILexicalBlock(scope: !347, file: !1, line: 158, column: 13)
!353 = !DILocation(line: 161, column: 24, scope: !354)
!354 = distinct !DILexicalBlock(scope: !352, file: !1, line: 161, column: 17)
!355 = !DILocation(line: 161, column: 22, scope: !354)
!356 = !DILocation(line: 161, column: 29, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !1, line: 161, column: 17)
!358 = !DILocation(line: 161, column: 33, scope: !357)
!359 = !DILocation(line: 161, column: 31, scope: !357)
!360 = !DILocation(line: 161, column: 17, scope: !354)
!361 = !DILocation(line: 164, column: 32, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !1, line: 162, column: 17)
!363 = !DILocation(line: 165, column: 17, scope: !362)
!364 = !DILocation(line: 161, column: 37, scope: !357)
!365 = !DILocation(line: 161, column: 17, scope: !357)
!366 = distinct !{!366, !360, !367, !141}
!367 = !DILocation(line: 165, column: 17, scope: !354)
!368 = !DILocation(line: 166, column: 30, scope: !352)
!369 = !DILocation(line: 166, column: 17, scope: !352)
!370 = !DILocation(line: 167, column: 13, scope: !352)
!371 = !DILocation(line: 169, column: 5, scope: !340)
!372 = !DILocation(line: 153, column: 24, scope: !335)
!373 = !DILocation(line: 153, column: 5, scope: !335)
!374 = distinct !{!374, !337, !375, !141}
!375 = !DILocation(line: 169, column: 5, scope: !332)
!376 = !DILocation(line: 170, column: 1, scope: !305)
!377 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_17_good", scope: !1, file: !1, line: 172, type: !11, scopeLine: 173, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!378 = !DILocation(line: 174, column: 5, scope: !377)
!379 = !DILocation(line: 175, column: 5, scope: !377)
!380 = !DILocation(line: 176, column: 1, scope: !377)
