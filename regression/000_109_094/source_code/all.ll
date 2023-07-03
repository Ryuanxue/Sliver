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
@.str.4 = private unnamed_addr constant [3 x i8] c"15\00", align 1
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_31_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %dataCopy = alloca i8*, align 8
  %data12 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !57, metadata !DIExpression()), !dbg !61
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !61
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !62
  store i8* %arraydecay, i8** %data, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !69
  %1 = load i8*, i8** %data, align 8, !dbg !70
  %call = call i64 @strlen(i8* %1) #7, !dbg !71
  store i64 %call, i64* %dataLen, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !72, metadata !DIExpression()), !dbg !128
  %2 = load i64, i64* %dataLen, align 8, !dbg !129
  %sub = sub i64 100, %2, !dbg !131
  %cmp = icmp ugt i64 %sub, 1, !dbg !132
  br i1 %cmp, label %if.then, label %if.end11, !dbg !133

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !134
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !136
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !137
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !139
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !140

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !141
  %5 = load i64, i64* %dataLen, align 8, !dbg !144
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !145
  %6 = load i64, i64* %dataLen, align 8, !dbg !146
  %sub4 = sub i64 100, %6, !dbg !147
  %conv = trunc i64 %sub4 to i32, !dbg !148
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !149
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !150
  %cmp6 = icmp eq i8* %call5, null, !dbg !151
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !152

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !153
  %8 = load i8*, i8** %data, align 8, !dbg !155
  %9 = load i64, i64* %dataLen, align 8, !dbg !156
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !155
  store i8 0, i8* %arrayidx, align 1, !dbg !157
  br label %if.end, !dbg !158

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !159
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !160
  br label %if.end10, !dbg !161

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !162

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !163, metadata !DIExpression()), !dbg !165
  %11 = load i8*, i8** %data, align 8, !dbg !166
  store i8* %11, i8** %dataCopy, align 8, !dbg !165
  call void @llvm.dbg.declare(metadata i8** %data12, metadata !167, metadata !DIExpression()), !dbg !168
  %12 = load i8*, i8** %dataCopy, align 8, !dbg !169
  store i8* %12, i8** %data12, align 8, !dbg !168
  call void @llvm.dbg.declare(metadata i32* %i, metadata !170, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %n, metadata !173, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !175, metadata !DIExpression()), !dbg !176
  %13 = load i8*, i8** %data12, align 8, !dbg !177
  %call13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !179
  %cmp14 = icmp eq i32 %call13, 1, !dbg !180
  br i1 %cmp14, label %if.then16, label %if.end20, !dbg !181

if.then16:                                        ; preds = %if.end11
  store i32 0, i32* %intVariable, align 4, !dbg !182
  store i32 0, i32* %i, align 4, !dbg !184
  br label %for.cond, !dbg !186

for.cond:                                         ; preds = %for.inc, %if.then16
  %14 = load i32, i32* %i, align 4, !dbg !187
  %15 = load i32, i32* %n, align 4, !dbg !189
  %cmp17 = icmp slt i32 %14, %15, !dbg !190
  br i1 %cmp17, label %for.body, label %for.end, !dbg !191

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !192
  %inc = add nsw i32 %16, 1, !dbg !192
  store i32 %inc, i32* %intVariable, align 4, !dbg !192
  br label %for.inc, !dbg !194

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !195
  %inc19 = add nsw i32 %17, 1, !dbg !195
  store i32 %inc19, i32* %i, align 4, !dbg !195
  br label %for.cond, !dbg !196, !llvm.loop !197

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %intVariable, align 4, !dbg !200
  call void @printIntLine(i32 %18), !dbg !201
  br label %if.end20, !dbg !202

if.end20:                                         ; preds = %for.end, %if.end11
  ret void, !dbg !203
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
define dso_local void @goodG2B() #0 !dbg !204 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataCopy = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !207, metadata !DIExpression()), !dbg !208
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !208
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !208
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !209
  store i8* %arraydecay, i8** %data, align 8, !dbg !210
  %1 = load i8*, i8** %data, align 8, !dbg !211
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !212
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !213, metadata !DIExpression()), !dbg !215
  %2 = load i8*, i8** %data, align 8, !dbg !216
  store i8* %2, i8** %dataCopy, align 8, !dbg !215
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !217, metadata !DIExpression()), !dbg !218
  %3 = load i8*, i8** %dataCopy, align 8, !dbg !219
  store i8* %3, i8** %data1, align 8, !dbg !218
  call void @llvm.dbg.declare(metadata i32* %i, metadata !220, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %n, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !225, metadata !DIExpression()), !dbg !226
  %4 = load i8*, i8** %data1, align 8, !dbg !227
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !229
  %cmp = icmp eq i32 %call2, 1, !dbg !230
  br i1 %cmp, label %if.then, label %if.end, !dbg !231

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !232
  store i32 0, i32* %i, align 4, !dbg !234
  br label %for.cond, !dbg !236

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !237
  %6 = load i32, i32* %n, align 4, !dbg !239
  %cmp3 = icmp slt i32 %5, %6, !dbg !240
  br i1 %cmp3, label %for.body, label %for.end, !dbg !241

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !242
  %inc = add nsw i32 %7, 1, !dbg !242
  store i32 %inc, i32* %intVariable, align 4, !dbg !242
  br label %for.inc, !dbg !244

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !245
  %inc4 = add nsw i32 %8, 1, !dbg !245
  store i32 %inc4, i32* %i, align 4, !dbg !245
  br label %for.cond, !dbg !246, !llvm.loop !247

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !249
  call void @printIntLine(i32 %9), !dbg !250
  br label %if.end, !dbg !251

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !252
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !253 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %dataCopy = alloca i8*, align 8
  %data12 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !254, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !257
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !257
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !258
  store i8* %arraydecay, i8** %data, align 8, !dbg !259
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !260, metadata !DIExpression()), !dbg !262
  %1 = load i8*, i8** %data, align 8, !dbg !263
  %call = call i64 @strlen(i8* %1) #7, !dbg !264
  store i64 %call, i64* %dataLen, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !265, metadata !DIExpression()), !dbg !266
  %2 = load i64, i64* %dataLen, align 8, !dbg !267
  %sub = sub i64 100, %2, !dbg !269
  %cmp = icmp ugt i64 %sub, 1, !dbg !270
  br i1 %cmp, label %if.then, label %if.end11, !dbg !271

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !272
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !274
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !275
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !277
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !278

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !279
  %5 = load i64, i64* %dataLen, align 8, !dbg !282
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !283
  %6 = load i64, i64* %dataLen, align 8, !dbg !284
  %sub4 = sub i64 100, %6, !dbg !285
  %conv = trunc i64 %sub4 to i32, !dbg !286
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !287
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !288
  %cmp6 = icmp eq i8* %call5, null, !dbg !289
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !290

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !291
  %8 = load i8*, i8** %data, align 8, !dbg !293
  %9 = load i64, i64* %dataLen, align 8, !dbg !294
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !293
  store i8 0, i8* %arrayidx, align 1, !dbg !295
  br label %if.end, !dbg !296

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !297
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !298
  br label %if.end10, !dbg !299

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !300

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !301, metadata !DIExpression()), !dbg !303
  %11 = load i8*, i8** %data, align 8, !dbg !304
  store i8* %11, i8** %dataCopy, align 8, !dbg !303
  call void @llvm.dbg.declare(metadata i8** %data12, metadata !305, metadata !DIExpression()), !dbg !306
  %12 = load i8*, i8** %dataCopy, align 8, !dbg !307
  store i8* %12, i8** %data12, align 8, !dbg !306
  call void @llvm.dbg.declare(metadata i32* %i, metadata !308, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.declare(metadata i32* %n, metadata !311, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !313, metadata !DIExpression()), !dbg !314
  %13 = load i8*, i8** %data12, align 8, !dbg !315
  %call13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !317
  %cmp14 = icmp eq i32 %call13, 1, !dbg !318
  br i1 %cmp14, label %if.then16, label %if.end24, !dbg !319

if.then16:                                        ; preds = %if.end11
  %14 = load i32, i32* %n, align 4, !dbg !320
  %cmp17 = icmp slt i32 %14, 10000, !dbg !323
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !324

if.then19:                                        ; preds = %if.then16
  store i32 0, i32* %intVariable, align 4, !dbg !325
  store i32 0, i32* %i, align 4, !dbg !327
  br label %for.cond, !dbg !329

for.cond:                                         ; preds = %for.inc, %if.then19
  %15 = load i32, i32* %i, align 4, !dbg !330
  %16 = load i32, i32* %n, align 4, !dbg !332
  %cmp20 = icmp slt i32 %15, %16, !dbg !333
  br i1 %cmp20, label %for.body, label %for.end, !dbg !334

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !335
  %inc = add nsw i32 %17, 1, !dbg !335
  store i32 %inc, i32* %intVariable, align 4, !dbg !335
  br label %for.inc, !dbg !337

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !338
  %inc22 = add nsw i32 %18, 1, !dbg !338
  store i32 %inc22, i32* %i, align 4, !dbg !338
  br label %for.cond, !dbg !339, !llvm.loop !340

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !342
  call void @printIntLine(i32 %19), !dbg !343
  br label %if.end23, !dbg !344

if.end23:                                         ; preds = %for.end, %if.then16
  br label %if.end24, !dbg !345

if.end24:                                         ; preds = %if.end23, %if.end11
  ret void, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_31_good() #0 !dbg !347 {
entry:
  call void @goodG2B(), !dbg !348
  call void @goodB2G(), !dbg !349
  ret void, !dbg !350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !351 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !354, metadata !DIExpression()), !dbg !355
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !356
  %0 = load i8*, i8** %line.addr, align 8, !dbg !357
  %cmp = icmp ne i8* %0, null, !dbg !359
  br i1 %cmp, label %if.then, label %if.end, !dbg !360

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !361
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !363
  br label %if.end, !dbg !364

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !365
  ret void, !dbg !366
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !367 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !368, metadata !DIExpression()), !dbg !369
  %0 = load i8*, i8** %line.addr, align 8, !dbg !370
  %cmp = icmp ne i8* %0, null, !dbg !372
  br i1 %cmp, label %if.then, label %if.end, !dbg !373

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !374
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !376
  br label %if.end, !dbg !377

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !379 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !384, metadata !DIExpression()), !dbg !385
  %0 = load i32*, i32** %line.addr, align 8, !dbg !386
  %cmp = icmp ne i32* %0, null, !dbg !388
  br i1 %cmp, label %if.then, label %if.end, !dbg !389

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !390
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !392
  br label %if.end, !dbg !393

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !394
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !395 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !398, metadata !DIExpression()), !dbg !399
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !400
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.11, i64 0, i64 0), i32 %0), !dbg !401
  ret void, !dbg !402
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !403 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !407, metadata !DIExpression()), !dbg !408
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !409
  %conv = sext i16 %0 to i32, !dbg !409
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.12, i64 0, i64 0), i32 %conv), !dbg !410
  ret void, !dbg !411
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !412 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !418
  %conv = fpext float %0 to double, !dbg !418
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !419
  ret void, !dbg !420
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !421 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !426
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !427
  ret void, !dbg !428
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !429 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !437
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !438
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !440 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !443, metadata !DIExpression()), !dbg !444
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !445
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !446
  ret void, !dbg !447
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !448 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !451, metadata !DIExpression()), !dbg !452
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !453
  %conv = sext i8 %0 to i32, !dbg !453
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !454
  ret void, !dbg !455
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !456 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !459, metadata !DIExpression()), !dbg !460
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !461, metadata !DIExpression()), !dbg !465
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !466
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !467
  store i32 %0, i32* %arrayidx, align 4, !dbg !468
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !469
  store i32 0, i32* %arrayidx1, align 4, !dbg !470
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !471
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !472
  ret void, !dbg !473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !474 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !477, metadata !DIExpression()), !dbg !478
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !479
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !480
  ret void, !dbg !481
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !482 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !485, metadata !DIExpression()), !dbg !486
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !487
  %conv = zext i8 %0 to i32, !dbg !487
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !488
  ret void, !dbg !489
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !490 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !496
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !497
  ret void, !dbg !498
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !499 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !509, metadata !DIExpression()), !dbg !510
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !511
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !512
  %1 = load i32, i32* %intOne, align 4, !dbg !512
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !513
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !514
  %3 = load i32, i32* %intTwo, align 4, !dbg !514
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !515
  ret void, !dbg !516
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !517 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !521, metadata !DIExpression()), !dbg !522
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !523, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata i64* %i, metadata !525, metadata !DIExpression()), !dbg !526
  store i64 0, i64* %i, align 8, !dbg !527
  br label %for.cond, !dbg !529

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !530
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !532
  %cmp = icmp ult i64 %0, %1, !dbg !533
  br i1 %cmp, label %for.body, label %for.end, !dbg !534

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !535
  %3 = load i64, i64* %i, align 8, !dbg !537
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !535
  %4 = load i8, i8* %arrayidx, align 1, !dbg !535
  %conv = zext i8 %4 to i32, !dbg !535
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !538
  br label %for.inc, !dbg !539

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !540
  %inc = add i64 %5, 1, !dbg !540
  store i64 %inc, i64* %i, align 8, !dbg !540
  br label %for.cond, !dbg !541, !llvm.loop !542

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !544
  ret void, !dbg !545
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !546 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !549, metadata !DIExpression()), !dbg !550
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !551, metadata !DIExpression()), !dbg !552
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !553, metadata !DIExpression()), !dbg !554
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !555, metadata !DIExpression()), !dbg !556
  store i64 0, i64* %numWritten, align 8, !dbg !556
  br label %while.cond, !dbg !557

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !558
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !559
  %cmp = icmp ult i64 %0, %1, !dbg !560
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !561

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !562
  %2 = load i16*, i16** %call, align 8, !dbg !562
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !562
  %4 = load i64, i64* %numWritten, align 8, !dbg !562
  %mul = mul i64 2, %4, !dbg !562
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !562
  %5 = load i8, i8* %arrayidx, align 1, !dbg !562
  %conv = sext i8 %5 to i32, !dbg !562
  %idxprom = sext i32 %conv to i64, !dbg !562
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !562
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !562
  %conv2 = zext i16 %6 to i32, !dbg !562
  %and = and i32 %conv2, 4096, !dbg !562
  %tobool = icmp ne i32 %and, 0, !dbg !562
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !563

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !564
  %7 = load i16*, i16** %call3, align 8, !dbg !564
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !564
  %9 = load i64, i64* %numWritten, align 8, !dbg !564
  %mul4 = mul i64 2, %9, !dbg !564
  %add = add i64 %mul4, 1, !dbg !564
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !564
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !564
  %conv6 = sext i8 %10 to i32, !dbg !564
  %idxprom7 = sext i32 %conv6 to i64, !dbg !564
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !564
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !564
  %conv9 = zext i16 %11 to i32, !dbg !564
  %and10 = and i32 %conv9, 4096, !dbg !564
  %tobool11 = icmp ne i32 %and10, 0, !dbg !563
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !565
  br i1 %12, label %while.body, label %while.end, !dbg !557

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !566, metadata !DIExpression()), !dbg !568
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !569
  %14 = load i64, i64* %numWritten, align 8, !dbg !570
  %mul12 = mul i64 2, %14, !dbg !571
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !569
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !572
  %15 = load i32, i32* %byte, align 4, !dbg !573
  %conv15 = trunc i32 %15 to i8, !dbg !574
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !575
  %17 = load i64, i64* %numWritten, align 8, !dbg !576
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !575
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !577
  %18 = load i64, i64* %numWritten, align 8, !dbg !578
  %inc = add i64 %18, 1, !dbg !578
  store i64 %inc, i64* %numWritten, align 8, !dbg !578
  br label %while.cond, !dbg !557, !llvm.loop !579

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !581
  ret i64 %19, !dbg !582
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !583 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !586, metadata !DIExpression()), !dbg !587
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !588, metadata !DIExpression()), !dbg !589
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !592, metadata !DIExpression()), !dbg !593
  store i64 0, i64* %numWritten, align 8, !dbg !593
  br label %while.cond, !dbg !594

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !595
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !596
  %cmp = icmp ult i64 %0, %1, !dbg !597
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !598

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !599
  %3 = load i64, i64* %numWritten, align 8, !dbg !600
  %mul = mul i64 2, %3, !dbg !601
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !599
  %4 = load i32, i32* %arrayidx, align 4, !dbg !599
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !602
  %tobool = icmp ne i32 %call, 0, !dbg !602
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !603

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !604
  %6 = load i64, i64* %numWritten, align 8, !dbg !605
  %mul1 = mul i64 2, %6, !dbg !606
  %add = add i64 %mul1, 1, !dbg !607
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !604
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !604
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !608
  %tobool4 = icmp ne i32 %call3, 0, !dbg !603
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !609
  br i1 %8, label %while.body, label %while.end, !dbg !594

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !610, metadata !DIExpression()), !dbg !612
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !613
  %10 = load i64, i64* %numWritten, align 8, !dbg !614
  %mul5 = mul i64 2, %10, !dbg !615
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !613
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !616
  %11 = load i32, i32* %byte, align 4, !dbg !617
  %conv = trunc i32 %11 to i8, !dbg !618
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !619
  %13 = load i64, i64* %numWritten, align 8, !dbg !620
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !619
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !621
  %14 = load i64, i64* %numWritten, align 8, !dbg !622
  %inc = add i64 %14, 1, !dbg !622
  store i64 %inc, i64* %numWritten, align 8, !dbg !622
  br label %while.cond, !dbg !594, !llvm.loop !623

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !625
  ret i64 %15, !dbg !626
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !627 {
entry:
  ret i32 1, !dbg !630
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !631 {
entry:
  ret i32 0, !dbg !632
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !633 {
entry:
  %call = call i32 @rand() #8, !dbg !634
  %rem = srem i32 %call, 2, !dbg !635
  ret i32 %rem, !dbg !636
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !637 {
entry:
  ret void, !dbg !638
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !639 {
entry:
  ret void, !dbg !640
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !641 {
entry:
  ret void, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !643 {
entry:
  ret void, !dbg !644
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !645 {
entry:
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !647 {
entry:
  ret void, !dbg !648
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !649 {
entry:
  ret void, !dbg !650
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !651 {
entry:
  ret void, !dbg !652
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !653 {
entry:
  ret void, !dbg !654
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !655 {
entry:
  ret void, !dbg !656
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !657 {
entry:
  ret void, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !659 {
entry:
  ret void, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !661 {
entry:
  ret void, !dbg !662
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !663 {
entry:
  ret void, !dbg !664
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !671 {
entry:
  ret void, !dbg !672
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_094/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_094/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_31_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 42, type: !66)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 40, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocation(line: 42, column: 16, scope: !65)
!70 = !DILocation(line: 42, column: 33, scope: !65)
!71 = !DILocation(line: 42, column: 26, scope: !65)
!72 = !DILocalVariable(name: "pFile", scope: !65, file: !45, line: 43, type: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !75, line: 7, baseType: !76)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !77, line: 49, size: 1728, elements: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !94, !96, !97, !98, !102, !103, !105, !109, !112, !114, !117, !120, !121, !122, !123, !124}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !76, file: !77, line: 51, baseType: !23, size: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !76, file: !77, line: 54, baseType: !42, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !76, file: !77, line: 55, baseType: !42, size: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !76, file: !77, line: 56, baseType: !42, size: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !76, file: !77, line: 57, baseType: !42, size: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !76, file: !77, line: 58, baseType: !42, size: 64, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !76, file: !77, line: 59, baseType: !42, size: 64, offset: 384)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !76, file: !77, line: 60, baseType: !42, size: 64, offset: 448)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !76, file: !77, line: 61, baseType: !42, size: 64, offset: 512)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !76, file: !77, line: 64, baseType: !42, size: 64, offset: 576)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !76, file: !77, line: 65, baseType: !42, size: 64, offset: 640)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !76, file: !77, line: 66, baseType: !42, size: 64, offset: 704)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !76, file: !77, line: 68, baseType: !92, size: 64, offset: 768)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !77, line: 36, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !76, file: !77, line: 70, baseType: !95, size: 64, offset: 832)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !76, file: !77, line: 72, baseType: !23, size: 32, offset: 896)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !76, file: !77, line: 73, baseType: !23, size: 32, offset: 928)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !76, file: !77, line: 74, baseType: !99, size: 64, offset: 960)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !100, line: 152, baseType: !101)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!101 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !76, file: !77, line: 77, baseType: !24, size: 16, offset: 1024)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !76, file: !77, line: 78, baseType: !104, size: 8, offset: 1040)
!104 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !76, file: !77, line: 79, baseType: !106, size: 8, offset: 1048)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 1)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !76, file: !77, line: 81, baseType: !110, size: 64, offset: 1088)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !77, line: 43, baseType: null)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !76, file: !77, line: 89, baseType: !113, size: 64, offset: 1152)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !100, line: 153, baseType: !101)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !76, file: !77, line: 91, baseType: !115, size: 64, offset: 1216)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !77, line: 37, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !76, file: !77, line: 92, baseType: !118, size: 64, offset: 1280)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !77, line: 38, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !76, file: !77, line: 93, baseType: !95, size: 64, offset: 1344)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !76, file: !77, line: 94, baseType: !22, size: 64, offset: 1408)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !76, file: !77, line: 95, baseType: !66, size: 64, offset: 1472)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !76, file: !77, line: 96, baseType: !23, size: 32, offset: 1536)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !76, file: !77, line: 98, baseType: !125, size: 160, offset: 1568)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 20)
!128 = !DILocation(line: 43, column: 16, scope: !65)
!129 = !DILocation(line: 45, column: 17, scope: !130)
!130 = distinct !DILexicalBlock(scope: !65, file: !45, line: 45, column: 13)
!131 = !DILocation(line: 45, column: 16, scope: !130)
!132 = !DILocation(line: 45, column: 25, scope: !130)
!133 = !DILocation(line: 45, column: 13, scope: !65)
!134 = !DILocation(line: 47, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !45, line: 46, column: 9)
!136 = !DILocation(line: 47, column: 19, scope: !135)
!137 = !DILocation(line: 48, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !45, line: 48, column: 17)
!139 = !DILocation(line: 48, column: 23, scope: !138)
!140 = !DILocation(line: 48, column: 17, scope: !135)
!141 = !DILocation(line: 51, column: 27, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !45, line: 51, column: 21)
!143 = distinct !DILexicalBlock(scope: !138, file: !45, line: 49, column: 13)
!144 = !DILocation(line: 51, column: 32, scope: !142)
!145 = !DILocation(line: 51, column: 31, scope: !142)
!146 = !DILocation(line: 51, column: 51, scope: !142)
!147 = !DILocation(line: 51, column: 50, scope: !142)
!148 = !DILocation(line: 51, column: 41, scope: !142)
!149 = !DILocation(line: 51, column: 61, scope: !142)
!150 = !DILocation(line: 51, column: 21, scope: !142)
!151 = !DILocation(line: 51, column: 68, scope: !142)
!152 = !DILocation(line: 51, column: 21, scope: !143)
!153 = !DILocation(line: 53, column: 21, scope: !154)
!154 = distinct !DILexicalBlock(scope: !142, file: !45, line: 52, column: 17)
!155 = !DILocation(line: 55, column: 21, scope: !154)
!156 = !DILocation(line: 55, column: 26, scope: !154)
!157 = !DILocation(line: 55, column: 35, scope: !154)
!158 = !DILocation(line: 56, column: 17, scope: !154)
!159 = !DILocation(line: 57, column: 24, scope: !143)
!160 = !DILocation(line: 57, column: 17, scope: !143)
!161 = !DILocation(line: 58, column: 13, scope: !143)
!162 = !DILocation(line: 59, column: 9, scope: !135)
!163 = !DILocalVariable(name: "dataCopy", scope: !164, file: !45, line: 62, type: !42)
!164 = distinct !DILexicalBlock(scope: !52, file: !45, line: 61, column: 5)
!165 = !DILocation(line: 62, column: 16, scope: !164)
!166 = !DILocation(line: 62, column: 27, scope: !164)
!167 = !DILocalVariable(name: "data", scope: !164, file: !45, line: 63, type: !42)
!168 = !DILocation(line: 63, column: 16, scope: !164)
!169 = !DILocation(line: 63, column: 23, scope: !164)
!170 = !DILocalVariable(name: "i", scope: !171, file: !45, line: 65, type: !23)
!171 = distinct !DILexicalBlock(scope: !164, file: !45, line: 64, column: 9)
!172 = !DILocation(line: 65, column: 17, scope: !171)
!173 = !DILocalVariable(name: "n", scope: !171, file: !45, line: 65, type: !23)
!174 = !DILocation(line: 65, column: 20, scope: !171)
!175 = !DILocalVariable(name: "intVariable", scope: !171, file: !45, line: 65, type: !23)
!176 = !DILocation(line: 65, column: 23, scope: !171)
!177 = !DILocation(line: 66, column: 24, scope: !178)
!178 = distinct !DILexicalBlock(scope: !171, file: !45, line: 66, column: 17)
!179 = !DILocation(line: 66, column: 17, scope: !178)
!180 = !DILocation(line: 66, column: 40, scope: !178)
!181 = !DILocation(line: 66, column: 17, scope: !171)
!182 = !DILocation(line: 69, column: 29, scope: !183)
!183 = distinct !DILexicalBlock(scope: !178, file: !45, line: 67, column: 13)
!184 = !DILocation(line: 70, column: 24, scope: !185)
!185 = distinct !DILexicalBlock(scope: !183, file: !45, line: 70, column: 17)
!186 = !DILocation(line: 70, column: 22, scope: !185)
!187 = !DILocation(line: 70, column: 29, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !45, line: 70, column: 17)
!189 = !DILocation(line: 70, column: 33, scope: !188)
!190 = !DILocation(line: 70, column: 31, scope: !188)
!191 = !DILocation(line: 70, column: 17, scope: !185)
!192 = !DILocation(line: 73, column: 32, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !45, line: 71, column: 17)
!194 = !DILocation(line: 74, column: 17, scope: !193)
!195 = !DILocation(line: 70, column: 37, scope: !188)
!196 = !DILocation(line: 70, column: 17, scope: !188)
!197 = distinct !{!197, !191, !198, !199}
!198 = !DILocation(line: 74, column: 17, scope: !185)
!199 = !{!"llvm.loop.mustprogress"}
!200 = !DILocation(line: 75, column: 30, scope: !183)
!201 = !DILocation(line: 75, column: 17, scope: !183)
!202 = !DILocation(line: 76, column: 13, scope: !183)
!203 = !DILocation(line: 79, column: 1, scope: !52)
!204 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 86, type: !53, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!205 = !DILocalVariable(name: "data", scope: !204, file: !45, line: 88, type: !42)
!206 = !DILocation(line: 88, column: 12, scope: !204)
!207 = !DILocalVariable(name: "dataBuffer", scope: !204, file: !45, line: 89, type: !58)
!208 = !DILocation(line: 89, column: 10, scope: !204)
!209 = !DILocation(line: 90, column: 12, scope: !204)
!210 = !DILocation(line: 90, column: 10, scope: !204)
!211 = !DILocation(line: 92, column: 12, scope: !204)
!212 = !DILocation(line: 92, column: 5, scope: !204)
!213 = !DILocalVariable(name: "dataCopy", scope: !214, file: !45, line: 94, type: !42)
!214 = distinct !DILexicalBlock(scope: !204, file: !45, line: 93, column: 5)
!215 = !DILocation(line: 94, column: 16, scope: !214)
!216 = !DILocation(line: 94, column: 27, scope: !214)
!217 = !DILocalVariable(name: "data", scope: !214, file: !45, line: 95, type: !42)
!218 = !DILocation(line: 95, column: 16, scope: !214)
!219 = !DILocation(line: 95, column: 23, scope: !214)
!220 = !DILocalVariable(name: "i", scope: !221, file: !45, line: 97, type: !23)
!221 = distinct !DILexicalBlock(scope: !214, file: !45, line: 96, column: 9)
!222 = !DILocation(line: 97, column: 17, scope: !221)
!223 = !DILocalVariable(name: "n", scope: !221, file: !45, line: 97, type: !23)
!224 = !DILocation(line: 97, column: 20, scope: !221)
!225 = !DILocalVariable(name: "intVariable", scope: !221, file: !45, line: 97, type: !23)
!226 = !DILocation(line: 97, column: 23, scope: !221)
!227 = !DILocation(line: 98, column: 24, scope: !228)
!228 = distinct !DILexicalBlock(scope: !221, file: !45, line: 98, column: 17)
!229 = !DILocation(line: 98, column: 17, scope: !228)
!230 = !DILocation(line: 98, column: 40, scope: !228)
!231 = !DILocation(line: 98, column: 17, scope: !221)
!232 = !DILocation(line: 101, column: 29, scope: !233)
!233 = distinct !DILexicalBlock(scope: !228, file: !45, line: 99, column: 13)
!234 = !DILocation(line: 102, column: 24, scope: !235)
!235 = distinct !DILexicalBlock(scope: !233, file: !45, line: 102, column: 17)
!236 = !DILocation(line: 102, column: 22, scope: !235)
!237 = !DILocation(line: 102, column: 29, scope: !238)
!238 = distinct !DILexicalBlock(scope: !235, file: !45, line: 102, column: 17)
!239 = !DILocation(line: 102, column: 33, scope: !238)
!240 = !DILocation(line: 102, column: 31, scope: !238)
!241 = !DILocation(line: 102, column: 17, scope: !235)
!242 = !DILocation(line: 105, column: 32, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !45, line: 103, column: 17)
!244 = !DILocation(line: 106, column: 17, scope: !243)
!245 = !DILocation(line: 102, column: 37, scope: !238)
!246 = !DILocation(line: 102, column: 17, scope: !238)
!247 = distinct !{!247, !241, !248, !199}
!248 = !DILocation(line: 106, column: 17, scope: !235)
!249 = !DILocation(line: 107, column: 30, scope: !233)
!250 = !DILocation(line: 107, column: 17, scope: !233)
!251 = !DILocation(line: 108, column: 13, scope: !233)
!252 = !DILocation(line: 111, column: 1, scope: !204)
!253 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 114, type: !53, scopeLine: 115, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!254 = !DILocalVariable(name: "data", scope: !253, file: !45, line: 116, type: !42)
!255 = !DILocation(line: 116, column: 12, scope: !253)
!256 = !DILocalVariable(name: "dataBuffer", scope: !253, file: !45, line: 117, type: !58)
!257 = !DILocation(line: 117, column: 10, scope: !253)
!258 = !DILocation(line: 118, column: 12, scope: !253)
!259 = !DILocation(line: 118, column: 10, scope: !253)
!260 = !DILocalVariable(name: "dataLen", scope: !261, file: !45, line: 121, type: !66)
!261 = distinct !DILexicalBlock(scope: !253, file: !45, line: 119, column: 5)
!262 = !DILocation(line: 121, column: 16, scope: !261)
!263 = !DILocation(line: 121, column: 33, scope: !261)
!264 = !DILocation(line: 121, column: 26, scope: !261)
!265 = !DILocalVariable(name: "pFile", scope: !261, file: !45, line: 122, type: !73)
!266 = !DILocation(line: 122, column: 16, scope: !261)
!267 = !DILocation(line: 124, column: 17, scope: !268)
!268 = distinct !DILexicalBlock(scope: !261, file: !45, line: 124, column: 13)
!269 = !DILocation(line: 124, column: 16, scope: !268)
!270 = !DILocation(line: 124, column: 25, scope: !268)
!271 = !DILocation(line: 124, column: 13, scope: !261)
!272 = !DILocation(line: 126, column: 21, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !45, line: 125, column: 9)
!274 = !DILocation(line: 126, column: 19, scope: !273)
!275 = !DILocation(line: 127, column: 17, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !45, line: 127, column: 17)
!277 = !DILocation(line: 127, column: 23, scope: !276)
!278 = !DILocation(line: 127, column: 17, scope: !273)
!279 = !DILocation(line: 130, column: 27, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !45, line: 130, column: 21)
!281 = distinct !DILexicalBlock(scope: !276, file: !45, line: 128, column: 13)
!282 = !DILocation(line: 130, column: 32, scope: !280)
!283 = !DILocation(line: 130, column: 31, scope: !280)
!284 = !DILocation(line: 130, column: 51, scope: !280)
!285 = !DILocation(line: 130, column: 50, scope: !280)
!286 = !DILocation(line: 130, column: 41, scope: !280)
!287 = !DILocation(line: 130, column: 61, scope: !280)
!288 = !DILocation(line: 130, column: 21, scope: !280)
!289 = !DILocation(line: 130, column: 68, scope: !280)
!290 = !DILocation(line: 130, column: 21, scope: !281)
!291 = !DILocation(line: 132, column: 21, scope: !292)
!292 = distinct !DILexicalBlock(scope: !280, file: !45, line: 131, column: 17)
!293 = !DILocation(line: 134, column: 21, scope: !292)
!294 = !DILocation(line: 134, column: 26, scope: !292)
!295 = !DILocation(line: 134, column: 35, scope: !292)
!296 = !DILocation(line: 135, column: 17, scope: !292)
!297 = !DILocation(line: 136, column: 24, scope: !281)
!298 = !DILocation(line: 136, column: 17, scope: !281)
!299 = !DILocation(line: 137, column: 13, scope: !281)
!300 = !DILocation(line: 138, column: 9, scope: !273)
!301 = !DILocalVariable(name: "dataCopy", scope: !302, file: !45, line: 141, type: !42)
!302 = distinct !DILexicalBlock(scope: !253, file: !45, line: 140, column: 5)
!303 = !DILocation(line: 141, column: 16, scope: !302)
!304 = !DILocation(line: 141, column: 27, scope: !302)
!305 = !DILocalVariable(name: "data", scope: !302, file: !45, line: 142, type: !42)
!306 = !DILocation(line: 142, column: 16, scope: !302)
!307 = !DILocation(line: 142, column: 23, scope: !302)
!308 = !DILocalVariable(name: "i", scope: !309, file: !45, line: 144, type: !23)
!309 = distinct !DILexicalBlock(scope: !302, file: !45, line: 143, column: 9)
!310 = !DILocation(line: 144, column: 17, scope: !309)
!311 = !DILocalVariable(name: "n", scope: !309, file: !45, line: 144, type: !23)
!312 = !DILocation(line: 144, column: 20, scope: !309)
!313 = !DILocalVariable(name: "intVariable", scope: !309, file: !45, line: 144, type: !23)
!314 = !DILocation(line: 144, column: 23, scope: !309)
!315 = !DILocation(line: 145, column: 24, scope: !316)
!316 = distinct !DILexicalBlock(scope: !309, file: !45, line: 145, column: 17)
!317 = !DILocation(line: 145, column: 17, scope: !316)
!318 = !DILocation(line: 145, column: 40, scope: !316)
!319 = !DILocation(line: 145, column: 17, scope: !309)
!320 = !DILocation(line: 148, column: 21, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !45, line: 148, column: 21)
!322 = distinct !DILexicalBlock(scope: !316, file: !45, line: 146, column: 13)
!323 = !DILocation(line: 148, column: 23, scope: !321)
!324 = !DILocation(line: 148, column: 21, scope: !322)
!325 = !DILocation(line: 150, column: 33, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !45, line: 149, column: 17)
!327 = !DILocation(line: 151, column: 28, scope: !328)
!328 = distinct !DILexicalBlock(scope: !326, file: !45, line: 151, column: 21)
!329 = !DILocation(line: 151, column: 26, scope: !328)
!330 = !DILocation(line: 151, column: 33, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !45, line: 151, column: 21)
!332 = !DILocation(line: 151, column: 37, scope: !331)
!333 = !DILocation(line: 151, column: 35, scope: !331)
!334 = !DILocation(line: 151, column: 21, scope: !328)
!335 = !DILocation(line: 154, column: 36, scope: !336)
!336 = distinct !DILexicalBlock(scope: !331, file: !45, line: 152, column: 21)
!337 = !DILocation(line: 155, column: 21, scope: !336)
!338 = !DILocation(line: 151, column: 41, scope: !331)
!339 = !DILocation(line: 151, column: 21, scope: !331)
!340 = distinct !{!340, !334, !341, !199}
!341 = !DILocation(line: 155, column: 21, scope: !328)
!342 = !DILocation(line: 156, column: 34, scope: !326)
!343 = !DILocation(line: 156, column: 21, scope: !326)
!344 = !DILocation(line: 157, column: 17, scope: !326)
!345 = !DILocation(line: 158, column: 13, scope: !322)
!346 = !DILocation(line: 161, column: 1, scope: !253)
!347 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_31_good", scope: !45, file: !45, line: 163, type: !53, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!348 = !DILocation(line: 165, column: 5, scope: !347)
!349 = !DILocation(line: 166, column: 5, scope: !347)
!350 = !DILocation(line: 167, column: 1, scope: !347)
!351 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !352, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !42}
!354 = !DILocalVariable(name: "line", arg: 1, scope: !351, file: !3, line: 11, type: !42)
!355 = !DILocation(line: 11, column: 25, scope: !351)
!356 = !DILocation(line: 13, column: 1, scope: !351)
!357 = !DILocation(line: 14, column: 8, scope: !358)
!358 = distinct !DILexicalBlock(scope: !351, file: !3, line: 14, column: 8)
!359 = !DILocation(line: 14, column: 13, scope: !358)
!360 = !DILocation(line: 14, column: 8, scope: !351)
!361 = !DILocation(line: 16, column: 24, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !3, line: 15, column: 5)
!363 = !DILocation(line: 16, column: 9, scope: !362)
!364 = !DILocation(line: 17, column: 5, scope: !362)
!365 = !DILocation(line: 18, column: 5, scope: !351)
!366 = !DILocation(line: 19, column: 1, scope: !351)
!367 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !352, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!368 = !DILocalVariable(name: "line", arg: 1, scope: !367, file: !3, line: 20, type: !42)
!369 = !DILocation(line: 20, column: 29, scope: !367)
!370 = !DILocation(line: 22, column: 8, scope: !371)
!371 = distinct !DILexicalBlock(scope: !367, file: !3, line: 22, column: 8)
!372 = !DILocation(line: 22, column: 13, scope: !371)
!373 = !DILocation(line: 22, column: 8, scope: !367)
!374 = !DILocation(line: 24, column: 24, scope: !375)
!375 = distinct !DILexicalBlock(scope: !371, file: !3, line: 23, column: 5)
!376 = !DILocation(line: 24, column: 9, scope: !375)
!377 = !DILocation(line: 25, column: 5, scope: !375)
!378 = !DILocation(line: 26, column: 1, scope: !367)
!379 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !380, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !67, line: 74, baseType: !23)
!384 = !DILocalVariable(name: "line", arg: 1, scope: !379, file: !3, line: 27, type: !382)
!385 = !DILocation(line: 27, column: 29, scope: !379)
!386 = !DILocation(line: 29, column: 8, scope: !387)
!387 = distinct !DILexicalBlock(scope: !379, file: !3, line: 29, column: 8)
!388 = !DILocation(line: 29, column: 13, scope: !387)
!389 = !DILocation(line: 29, column: 8, scope: !379)
!390 = !DILocation(line: 31, column: 27, scope: !391)
!391 = distinct !DILexicalBlock(scope: !387, file: !3, line: 30, column: 5)
!392 = !DILocation(line: 31, column: 9, scope: !391)
!393 = !DILocation(line: 32, column: 5, scope: !391)
!394 = !DILocation(line: 33, column: 1, scope: !379)
!395 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !396, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !23}
!398 = !DILocalVariable(name: "intNumber", arg: 1, scope: !395, file: !3, line: 35, type: !23)
!399 = !DILocation(line: 35, column: 24, scope: !395)
!400 = !DILocation(line: 37, column: 20, scope: !395)
!401 = !DILocation(line: 37, column: 5, scope: !395)
!402 = !DILocation(line: 38, column: 1, scope: !395)
!403 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !404, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !406}
!406 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!407 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !403, file: !3, line: 40, type: !406)
!408 = !DILocation(line: 40, column: 28, scope: !403)
!409 = !DILocation(line: 42, column: 21, scope: !403)
!410 = !DILocation(line: 42, column: 5, scope: !403)
!411 = !DILocation(line: 43, column: 1, scope: !403)
!412 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !413, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !415}
!415 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!416 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !412, file: !3, line: 45, type: !415)
!417 = !DILocation(line: 45, column: 28, scope: !412)
!418 = !DILocation(line: 47, column: 20, scope: !412)
!419 = !DILocation(line: 47, column: 5, scope: !412)
!420 = !DILocation(line: 48, column: 1, scope: !412)
!421 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !422, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!422 = !DISubroutineType(types: !423)
!423 = !{null, !101}
!424 = !DILocalVariable(name: "longNumber", arg: 1, scope: !421, file: !3, line: 50, type: !101)
!425 = !DILocation(line: 50, column: 26, scope: !421)
!426 = !DILocation(line: 52, column: 21, scope: !421)
!427 = !DILocation(line: 52, column: 5, scope: !421)
!428 = !DILocation(line: 53, column: 1, scope: !421)
!429 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !430, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !432}
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !433, line: 27, baseType: !434)
!433 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !100, line: 44, baseType: !101)
!435 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !429, file: !3, line: 55, type: !432)
!436 = !DILocation(line: 55, column: 33, scope: !429)
!437 = !DILocation(line: 57, column: 29, scope: !429)
!438 = !DILocation(line: 57, column: 5, scope: !429)
!439 = !DILocation(line: 58, column: 1, scope: !429)
!440 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !441, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !66}
!443 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !440, file: !3, line: 60, type: !66)
!444 = !DILocation(line: 60, column: 29, scope: !440)
!445 = !DILocation(line: 62, column: 21, scope: !440)
!446 = !DILocation(line: 62, column: 5, scope: !440)
!447 = !DILocation(line: 63, column: 1, scope: !440)
!448 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !449, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !43}
!451 = !DILocalVariable(name: "charHex", arg: 1, scope: !448, file: !3, line: 65, type: !43)
!452 = !DILocation(line: 65, column: 29, scope: !448)
!453 = !DILocation(line: 67, column: 22, scope: !448)
!454 = !DILocation(line: 67, column: 5, scope: !448)
!455 = !DILocation(line: 68, column: 1, scope: !448)
!456 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !457, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !383}
!459 = !DILocalVariable(name: "wideChar", arg: 1, scope: !456, file: !3, line: 70, type: !383)
!460 = !DILocation(line: 70, column: 29, scope: !456)
!461 = !DILocalVariable(name: "s", scope: !456, file: !3, line: 74, type: !462)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 64, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 2)
!465 = !DILocation(line: 74, column: 13, scope: !456)
!466 = !DILocation(line: 75, column: 16, scope: !456)
!467 = !DILocation(line: 75, column: 9, scope: !456)
!468 = !DILocation(line: 75, column: 14, scope: !456)
!469 = !DILocation(line: 76, column: 9, scope: !456)
!470 = !DILocation(line: 76, column: 14, scope: !456)
!471 = !DILocation(line: 77, column: 21, scope: !456)
!472 = !DILocation(line: 77, column: 5, scope: !456)
!473 = !DILocation(line: 78, column: 1, scope: !456)
!474 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !475, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!475 = !DISubroutineType(types: !476)
!476 = !{null, !7}
!477 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !474, file: !3, line: 80, type: !7)
!478 = !DILocation(line: 80, column: 33, scope: !474)
!479 = !DILocation(line: 82, column: 20, scope: !474)
!480 = !DILocation(line: 82, column: 5, scope: !474)
!481 = !DILocation(line: 83, column: 1, scope: !474)
!482 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !483, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!483 = !DISubroutineType(types: !484)
!484 = !{null, !25}
!485 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !482, file: !3, line: 85, type: !25)
!486 = !DILocation(line: 85, column: 45, scope: !482)
!487 = !DILocation(line: 87, column: 22, scope: !482)
!488 = !DILocation(line: 87, column: 5, scope: !482)
!489 = !DILocation(line: 88, column: 1, scope: !482)
!490 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !491, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !493}
!493 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!494 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !490, file: !3, line: 90, type: !493)
!495 = !DILocation(line: 90, column: 29, scope: !490)
!496 = !DILocation(line: 92, column: 20, scope: !490)
!497 = !DILocation(line: 92, column: 5, scope: !490)
!498 = !DILocation(line: 93, column: 1, scope: !490)
!499 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !500, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !504, line: 100, baseType: !505)
!504 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_094/source_code")
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !504, line: 96, size: 64, elements: !506)
!506 = !{!507, !508}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !505, file: !504, line: 98, baseType: !23, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !505, file: !504, line: 99, baseType: !23, size: 32, offset: 32)
!509 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !499, file: !3, line: 95, type: !502)
!510 = !DILocation(line: 95, column: 40, scope: !499)
!511 = !DILocation(line: 97, column: 26, scope: !499)
!512 = !DILocation(line: 97, column: 47, scope: !499)
!513 = !DILocation(line: 97, column: 55, scope: !499)
!514 = !DILocation(line: 97, column: 76, scope: !499)
!515 = !DILocation(line: 97, column: 5, scope: !499)
!516 = !DILocation(line: 98, column: 1, scope: !499)
!517 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !518, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !520, !66}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!521 = !DILocalVariable(name: "bytes", arg: 1, scope: !517, file: !3, line: 100, type: !520)
!522 = !DILocation(line: 100, column: 38, scope: !517)
!523 = !DILocalVariable(name: "numBytes", arg: 2, scope: !517, file: !3, line: 100, type: !66)
!524 = !DILocation(line: 100, column: 52, scope: !517)
!525 = !DILocalVariable(name: "i", scope: !517, file: !3, line: 102, type: !66)
!526 = !DILocation(line: 102, column: 12, scope: !517)
!527 = !DILocation(line: 103, column: 12, scope: !528)
!528 = distinct !DILexicalBlock(scope: !517, file: !3, line: 103, column: 5)
!529 = !DILocation(line: 103, column: 10, scope: !528)
!530 = !DILocation(line: 103, column: 17, scope: !531)
!531 = distinct !DILexicalBlock(scope: !528, file: !3, line: 103, column: 5)
!532 = !DILocation(line: 103, column: 21, scope: !531)
!533 = !DILocation(line: 103, column: 19, scope: !531)
!534 = !DILocation(line: 103, column: 5, scope: !528)
!535 = !DILocation(line: 105, column: 24, scope: !536)
!536 = distinct !DILexicalBlock(scope: !531, file: !3, line: 104, column: 5)
!537 = !DILocation(line: 105, column: 30, scope: !536)
!538 = !DILocation(line: 105, column: 9, scope: !536)
!539 = !DILocation(line: 106, column: 5, scope: !536)
!540 = !DILocation(line: 103, column: 31, scope: !531)
!541 = !DILocation(line: 103, column: 5, scope: !531)
!542 = distinct !{!542, !534, !543, !199}
!543 = !DILocation(line: 106, column: 5, scope: !528)
!544 = !DILocation(line: 107, column: 5, scope: !517)
!545 = !DILocation(line: 108, column: 1, scope: !517)
!546 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !547, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!547 = !DISubroutineType(types: !548)
!548 = !{!66, !520, !66, !42}
!549 = !DILocalVariable(name: "bytes", arg: 1, scope: !546, file: !3, line: 113, type: !520)
!550 = !DILocation(line: 113, column: 39, scope: !546)
!551 = !DILocalVariable(name: "numBytes", arg: 2, scope: !546, file: !3, line: 113, type: !66)
!552 = !DILocation(line: 113, column: 53, scope: !546)
!553 = !DILocalVariable(name: "hex", arg: 3, scope: !546, file: !3, line: 113, type: !42)
!554 = !DILocation(line: 113, column: 71, scope: !546)
!555 = !DILocalVariable(name: "numWritten", scope: !546, file: !3, line: 115, type: !66)
!556 = !DILocation(line: 115, column: 12, scope: !546)
!557 = !DILocation(line: 121, column: 5, scope: !546)
!558 = !DILocation(line: 121, column: 12, scope: !546)
!559 = !DILocation(line: 121, column: 25, scope: !546)
!560 = !DILocation(line: 121, column: 23, scope: !546)
!561 = !DILocation(line: 121, column: 34, scope: !546)
!562 = !DILocation(line: 121, column: 37, scope: !546)
!563 = !DILocation(line: 121, column: 67, scope: !546)
!564 = !DILocation(line: 121, column: 70, scope: !546)
!565 = !DILocation(line: 0, scope: !546)
!566 = !DILocalVariable(name: "byte", scope: !567, file: !3, line: 123, type: !23)
!567 = distinct !DILexicalBlock(scope: !546, file: !3, line: 122, column: 5)
!568 = !DILocation(line: 123, column: 13, scope: !567)
!569 = !DILocation(line: 124, column: 17, scope: !567)
!570 = !DILocation(line: 124, column: 25, scope: !567)
!571 = !DILocation(line: 124, column: 23, scope: !567)
!572 = !DILocation(line: 124, column: 9, scope: !567)
!573 = !DILocation(line: 125, column: 45, scope: !567)
!574 = !DILocation(line: 125, column: 29, scope: !567)
!575 = !DILocation(line: 125, column: 9, scope: !567)
!576 = !DILocation(line: 125, column: 15, scope: !567)
!577 = !DILocation(line: 125, column: 27, scope: !567)
!578 = !DILocation(line: 126, column: 9, scope: !567)
!579 = distinct !{!579, !557, !580, !199}
!580 = !DILocation(line: 127, column: 5, scope: !546)
!581 = !DILocation(line: 129, column: 12, scope: !546)
!582 = !DILocation(line: 129, column: 5, scope: !546)
!583 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !584, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!584 = !DISubroutineType(types: !585)
!585 = !{!66, !520, !66, !382}
!586 = !DILocalVariable(name: "bytes", arg: 1, scope: !583, file: !3, line: 135, type: !520)
!587 = !DILocation(line: 135, column: 41, scope: !583)
!588 = !DILocalVariable(name: "numBytes", arg: 2, scope: !583, file: !3, line: 135, type: !66)
!589 = !DILocation(line: 135, column: 55, scope: !583)
!590 = !DILocalVariable(name: "hex", arg: 3, scope: !583, file: !3, line: 135, type: !382)
!591 = !DILocation(line: 135, column: 76, scope: !583)
!592 = !DILocalVariable(name: "numWritten", scope: !583, file: !3, line: 137, type: !66)
!593 = !DILocation(line: 137, column: 12, scope: !583)
!594 = !DILocation(line: 143, column: 5, scope: !583)
!595 = !DILocation(line: 143, column: 12, scope: !583)
!596 = !DILocation(line: 143, column: 25, scope: !583)
!597 = !DILocation(line: 143, column: 23, scope: !583)
!598 = !DILocation(line: 143, column: 34, scope: !583)
!599 = !DILocation(line: 143, column: 47, scope: !583)
!600 = !DILocation(line: 143, column: 55, scope: !583)
!601 = !DILocation(line: 143, column: 53, scope: !583)
!602 = !DILocation(line: 143, column: 37, scope: !583)
!603 = !DILocation(line: 143, column: 68, scope: !583)
!604 = !DILocation(line: 143, column: 81, scope: !583)
!605 = !DILocation(line: 143, column: 89, scope: !583)
!606 = !DILocation(line: 143, column: 87, scope: !583)
!607 = !DILocation(line: 143, column: 100, scope: !583)
!608 = !DILocation(line: 143, column: 71, scope: !583)
!609 = !DILocation(line: 0, scope: !583)
!610 = !DILocalVariable(name: "byte", scope: !611, file: !3, line: 145, type: !23)
!611 = distinct !DILexicalBlock(scope: !583, file: !3, line: 144, column: 5)
!612 = !DILocation(line: 145, column: 13, scope: !611)
!613 = !DILocation(line: 146, column: 18, scope: !611)
!614 = !DILocation(line: 146, column: 26, scope: !611)
!615 = !DILocation(line: 146, column: 24, scope: !611)
!616 = !DILocation(line: 146, column: 9, scope: !611)
!617 = !DILocation(line: 147, column: 45, scope: !611)
!618 = !DILocation(line: 147, column: 29, scope: !611)
!619 = !DILocation(line: 147, column: 9, scope: !611)
!620 = !DILocation(line: 147, column: 15, scope: !611)
!621 = !DILocation(line: 147, column: 27, scope: !611)
!622 = !DILocation(line: 148, column: 9, scope: !611)
!623 = distinct !{!623, !594, !624, !199}
!624 = !DILocation(line: 149, column: 5, scope: !583)
!625 = !DILocation(line: 151, column: 12, scope: !583)
!626 = !DILocation(line: 151, column: 5, scope: !583)
!627 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !628, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DISubroutineType(types: !629)
!629 = !{!23}
!630 = !DILocation(line: 158, column: 5, scope: !627)
!631 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !628, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!632 = !DILocation(line: 163, column: 5, scope: !631)
!633 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !628, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!634 = !DILocation(line: 168, column: 13, scope: !633)
!635 = !DILocation(line: 168, column: 20, scope: !633)
!636 = !DILocation(line: 168, column: 5, scope: !633)
!637 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!638 = !DILocation(line: 187, column: 16, scope: !637)
!639 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!640 = !DILocation(line: 188, column: 16, scope: !639)
!641 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!642 = !DILocation(line: 189, column: 16, scope: !641)
!643 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!644 = !DILocation(line: 190, column: 16, scope: !643)
!645 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!646 = !DILocation(line: 191, column: 16, scope: !645)
!647 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DILocation(line: 192, column: 16, scope: !647)
!649 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!650 = !DILocation(line: 193, column: 16, scope: !649)
!651 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!652 = !DILocation(line: 194, column: 16, scope: !651)
!653 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!654 = !DILocation(line: 195, column: 16, scope: !653)
!655 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!656 = !DILocation(line: 198, column: 15, scope: !655)
!657 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!658 = !DILocation(line: 199, column: 15, scope: !657)
!659 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 200, column: 15, scope: !659)
!661 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 201, column: 15, scope: !661)
!663 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!664 = !DILocation(line: 202, column: 15, scope: !663)
!665 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 203, column: 15, scope: !665)
!667 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 204, column: 15, scope: !667)
!669 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 205, column: 15, scope: !669)
!671 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 206, column: 15, scope: !671)
