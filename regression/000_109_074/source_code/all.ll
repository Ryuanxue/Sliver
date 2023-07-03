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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_01_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
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
  call void @llvm.dbg.declare(metadata i32* %i, metadata !163, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata i32* %n, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !168, metadata !DIExpression()), !dbg !169
  %11 = load i8*, i8** %data, align 8, !dbg !170
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !172
  %cmp13 = icmp eq i32 %call12, 1, !dbg !173
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !174

if.then15:                                        ; preds = %if.end11
  store i32 0, i32* %intVariable, align 4, !dbg !175
  store i32 0, i32* %i, align 4, !dbg !177
  br label %for.cond, !dbg !179

for.cond:                                         ; preds = %for.inc, %if.then15
  %12 = load i32, i32* %i, align 4, !dbg !180
  %13 = load i32, i32* %n, align 4, !dbg !182
  %cmp16 = icmp slt i32 %12, %13, !dbg !183
  br i1 %cmp16, label %for.body, label %for.end, !dbg !184

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !185
  %inc = add nsw i32 %14, 1, !dbg !185
  store i32 %inc, i32* %intVariable, align 4, !dbg !185
  br label %for.inc, !dbg !187

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !188
  %inc18 = add nsw i32 %15, 1, !dbg !188
  store i32 %inc18, i32* %i, align 4, !dbg !188
  br label %for.cond, !dbg !189, !llvm.loop !190

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !193
  call void @printIntLine(i32 %16), !dbg !194
  br label %if.end19, !dbg !195

if.end19:                                         ; preds = %for.end, %if.end11
  ret void, !dbg !196
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
define dso_local void @goodG2B() #0 !dbg !197 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !200, metadata !DIExpression()), !dbg !201
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !201
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !201
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !202
  store i8* %arraydecay, i8** %data, align 8, !dbg !203
  %1 = load i8*, i8** %data, align 8, !dbg !204
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !205
  call void @llvm.dbg.declare(metadata i32* %i, metadata !206, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %n, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !211, metadata !DIExpression()), !dbg !212
  %2 = load i8*, i8** %data, align 8, !dbg !213
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !215
  %cmp = icmp eq i32 %call1, 1, !dbg !216
  br i1 %cmp, label %if.then, label %if.end, !dbg !217

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !218
  store i32 0, i32* %i, align 4, !dbg !220
  br label %for.cond, !dbg !222

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !223
  %4 = load i32, i32* %n, align 4, !dbg !225
  %cmp2 = icmp slt i32 %3, %4, !dbg !226
  br i1 %cmp2, label %for.body, label %for.end, !dbg !227

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !228
  %inc = add nsw i32 %5, 1, !dbg !228
  store i32 %inc, i32* %intVariable, align 4, !dbg !228
  br label %for.inc, !dbg !230

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !231
  %inc3 = add nsw i32 %6, 1, !dbg !231
  store i32 %inc3, i32* %i, align 4, !dbg !231
  br label %for.cond, !dbg !232, !llvm.loop !233

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !235
  call void @printIntLine(i32 %7), !dbg !236
  br label %if.end, !dbg !237

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !238
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !239 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !243
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !243
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !244
  store i8* %arraydecay, i8** %data, align 8, !dbg !245
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !246, metadata !DIExpression()), !dbg !248
  %1 = load i8*, i8** %data, align 8, !dbg !249
  %call = call i64 @strlen(i8* %1) #7, !dbg !250
  store i64 %call, i64* %dataLen, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !251, metadata !DIExpression()), !dbg !252
  %2 = load i64, i64* %dataLen, align 8, !dbg !253
  %sub = sub i64 100, %2, !dbg !255
  %cmp = icmp ugt i64 %sub, 1, !dbg !256
  br i1 %cmp, label %if.then, label %if.end11, !dbg !257

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !258
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !260
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !261
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !263
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !264

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !265
  %5 = load i64, i64* %dataLen, align 8, !dbg !268
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !269
  %6 = load i64, i64* %dataLen, align 8, !dbg !270
  %sub4 = sub i64 100, %6, !dbg !271
  %conv = trunc i64 %sub4 to i32, !dbg !272
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !273
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !274
  %cmp6 = icmp eq i8* %call5, null, !dbg !275
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !276

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !277
  %8 = load i8*, i8** %data, align 8, !dbg !279
  %9 = load i64, i64* %dataLen, align 8, !dbg !280
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !279
  store i8 0, i8* %arrayidx, align 1, !dbg !281
  br label %if.end, !dbg !282

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !283
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !284
  br label %if.end10, !dbg !285

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !286

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !287, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata i32* %n, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !292, metadata !DIExpression()), !dbg !293
  %11 = load i8*, i8** %data, align 8, !dbg !294
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !296
  %cmp13 = icmp eq i32 %call12, 1, !dbg !297
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !298

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %n, align 4, !dbg !299
  %cmp16 = icmp slt i32 %12, 10000, !dbg !302
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !303

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !304
  store i32 0, i32* %i, align 4, !dbg !306
  br label %for.cond, !dbg !308

for.cond:                                         ; preds = %for.inc, %if.then18
  %13 = load i32, i32* %i, align 4, !dbg !309
  %14 = load i32, i32* %n, align 4, !dbg !311
  %cmp19 = icmp slt i32 %13, %14, !dbg !312
  br i1 %cmp19, label %for.body, label %for.end, !dbg !313

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !314
  %inc = add nsw i32 %15, 1, !dbg !314
  store i32 %inc, i32* %intVariable, align 4, !dbg !314
  br label %for.inc, !dbg !316

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !317
  %inc21 = add nsw i32 %16, 1, !dbg !317
  store i32 %inc21, i32* %i, align 4, !dbg !317
  br label %for.cond, !dbg !318, !llvm.loop !319

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !321
  call void @printIntLine(i32 %17), !dbg !322
  br label %if.end22, !dbg !323

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !324

if.end23:                                         ; preds = %if.end22, %if.end11
  ret void, !dbg !325
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_01_good() #0 !dbg !326 {
entry:
  call void @goodG2B(), !dbg !327
  call void @goodB2G(), !dbg !328
  ret void, !dbg !329
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !330 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !333, metadata !DIExpression()), !dbg !334
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !335
  %0 = load i8*, i8** %line.addr, align 8, !dbg !336
  %cmp = icmp ne i8* %0, null, !dbg !338
  br i1 %cmp, label %if.then, label %if.end, !dbg !339

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !340
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !342
  br label %if.end, !dbg !343

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !344
  ret void, !dbg !345
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !346 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !347, metadata !DIExpression()), !dbg !348
  %0 = load i8*, i8** %line.addr, align 8, !dbg !349
  %cmp = icmp ne i8* %0, null, !dbg !351
  br i1 %cmp, label %if.then, label %if.end, !dbg !352

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !353
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !355
  br label %if.end, !dbg !356

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !358 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !363, metadata !DIExpression()), !dbg !364
  %0 = load i32*, i32** %line.addr, align 8, !dbg !365
  %cmp = icmp ne i32* %0, null, !dbg !367
  br i1 %cmp, label %if.then, label %if.end, !dbg !368

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !369
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !371
  br label %if.end, !dbg !372

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !373
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !374 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !379
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.11, i64 0, i64 0), i32 %0), !dbg !380
  ret void, !dbg !381
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !382 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !388
  %conv = sext i16 %0 to i32, !dbg !388
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.12, i64 0, i64 0), i32 %conv), !dbg !389
  ret void, !dbg !390
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !391 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !397
  %conv = fpext float %0 to double, !dbg !397
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !398
  ret void, !dbg !399
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !400 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !408 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !416
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !417
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !419 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !422, metadata !DIExpression()), !dbg !423
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !424
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !425
  ret void, !dbg !426
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !427 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !430, metadata !DIExpression()), !dbg !431
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !432
  %conv = sext i8 %0 to i32, !dbg !432
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !435 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !438, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !440, metadata !DIExpression()), !dbg !444
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !445
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !446
  store i32 %0, i32* %arrayidx, align 4, !dbg !447
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !448
  store i32 0, i32* %arrayidx1, align 4, !dbg !449
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !450
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !451
  ret void, !dbg !452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !453 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !456, metadata !DIExpression()), !dbg !457
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !458
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !459
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !461 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !464, metadata !DIExpression()), !dbg !465
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !466
  %conv = zext i8 %0 to i32, !dbg !466
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !467
  ret void, !dbg !468
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !469 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !475
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !476
  ret void, !dbg !477
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !478 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !488, metadata !DIExpression()), !dbg !489
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !490
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !491
  %1 = load i32, i32* %intOne, align 4, !dbg !491
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !492
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !493
  %3 = load i32, i32* %intTwo, align 4, !dbg !493
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !494
  ret void, !dbg !495
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !496 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !500, metadata !DIExpression()), !dbg !501
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !502, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.declare(metadata i64* %i, metadata !504, metadata !DIExpression()), !dbg !505
  store i64 0, i64* %i, align 8, !dbg !506
  br label %for.cond, !dbg !508

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !509
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !511
  %cmp = icmp ult i64 %0, %1, !dbg !512
  br i1 %cmp, label %for.body, label %for.end, !dbg !513

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !514
  %3 = load i64, i64* %i, align 8, !dbg !516
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !514
  %4 = load i8, i8* %arrayidx, align 1, !dbg !514
  %conv = zext i8 %4 to i32, !dbg !514
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !517
  br label %for.inc, !dbg !518

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !519
  %inc = add i64 %5, 1, !dbg !519
  store i64 %inc, i64* %i, align 8, !dbg !519
  br label %for.cond, !dbg !520, !llvm.loop !521

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !523
  ret void, !dbg !524
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !525 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !528, metadata !DIExpression()), !dbg !529
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !530, metadata !DIExpression()), !dbg !531
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !532, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !534, metadata !DIExpression()), !dbg !535
  store i64 0, i64* %numWritten, align 8, !dbg !535
  br label %while.cond, !dbg !536

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !537
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !538
  %cmp = icmp ult i64 %0, %1, !dbg !539
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !540

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !541
  %2 = load i16*, i16** %call, align 8, !dbg !541
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !541
  %4 = load i64, i64* %numWritten, align 8, !dbg !541
  %mul = mul i64 2, %4, !dbg !541
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !541
  %5 = load i8, i8* %arrayidx, align 1, !dbg !541
  %conv = sext i8 %5 to i32, !dbg !541
  %idxprom = sext i32 %conv to i64, !dbg !541
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !541
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !541
  %conv2 = zext i16 %6 to i32, !dbg !541
  %and = and i32 %conv2, 4096, !dbg !541
  %tobool = icmp ne i32 %and, 0, !dbg !541
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !542

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !543
  %7 = load i16*, i16** %call3, align 8, !dbg !543
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !543
  %9 = load i64, i64* %numWritten, align 8, !dbg !543
  %mul4 = mul i64 2, %9, !dbg !543
  %add = add i64 %mul4, 1, !dbg !543
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !543
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !543
  %conv6 = sext i8 %10 to i32, !dbg !543
  %idxprom7 = sext i32 %conv6 to i64, !dbg !543
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !543
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !543
  %conv9 = zext i16 %11 to i32, !dbg !543
  %and10 = and i32 %conv9, 4096, !dbg !543
  %tobool11 = icmp ne i32 %and10, 0, !dbg !542
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !544
  br i1 %12, label %while.body, label %while.end, !dbg !536

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !545, metadata !DIExpression()), !dbg !547
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !548
  %14 = load i64, i64* %numWritten, align 8, !dbg !549
  %mul12 = mul i64 2, %14, !dbg !550
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !548
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !551
  %15 = load i32, i32* %byte, align 4, !dbg !552
  %conv15 = trunc i32 %15 to i8, !dbg !553
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !554
  %17 = load i64, i64* %numWritten, align 8, !dbg !555
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !554
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !556
  %18 = load i64, i64* %numWritten, align 8, !dbg !557
  %inc = add i64 %18, 1, !dbg !557
  store i64 %inc, i64* %numWritten, align 8, !dbg !557
  br label %while.cond, !dbg !536, !llvm.loop !558

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !560
  ret i64 %19, !dbg !561
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !562 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !565, metadata !DIExpression()), !dbg !566
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !567, metadata !DIExpression()), !dbg !568
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !569, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !571, metadata !DIExpression()), !dbg !572
  store i64 0, i64* %numWritten, align 8, !dbg !572
  br label %while.cond, !dbg !573

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !574
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !575
  %cmp = icmp ult i64 %0, %1, !dbg !576
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !577

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !578
  %3 = load i64, i64* %numWritten, align 8, !dbg !579
  %mul = mul i64 2, %3, !dbg !580
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !578
  %4 = load i32, i32* %arrayidx, align 4, !dbg !578
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !581
  %tobool = icmp ne i32 %call, 0, !dbg !581
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !582

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !583
  %6 = load i64, i64* %numWritten, align 8, !dbg !584
  %mul1 = mul i64 2, %6, !dbg !585
  %add = add i64 %mul1, 1, !dbg !586
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !583
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !583
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !587
  %tobool4 = icmp ne i32 %call3, 0, !dbg !582
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !588
  br i1 %8, label %while.body, label %while.end, !dbg !573

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !589, metadata !DIExpression()), !dbg !591
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !592
  %10 = load i64, i64* %numWritten, align 8, !dbg !593
  %mul5 = mul i64 2, %10, !dbg !594
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !592
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !595
  %11 = load i32, i32* %byte, align 4, !dbg !596
  %conv = trunc i32 %11 to i8, !dbg !597
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !598
  %13 = load i64, i64* %numWritten, align 8, !dbg !599
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !598
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !600
  %14 = load i64, i64* %numWritten, align 8, !dbg !601
  %inc = add i64 %14, 1, !dbg !601
  store i64 %inc, i64* %numWritten, align 8, !dbg !601
  br label %while.cond, !dbg !573, !llvm.loop !602

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !604
  ret i64 %15, !dbg !605
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !606 {
entry:
  ret i32 1, !dbg !609
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !610 {
entry:
  ret i32 0, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !612 {
entry:
  %call = call i32 @rand() #8, !dbg !613
  %rem = srem i32 %call, 2, !dbg !614
  ret i32 %rem, !dbg !615
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !616 {
entry:
  ret void, !dbg !617
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !618 {
entry:
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !620 {
entry:
  ret void, !dbg !621
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !622 {
entry:
  ret void, !dbg !623
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !624 {
entry:
  ret void, !dbg !625
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !626 {
entry:
  ret void, !dbg !627
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !628 {
entry:
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !630 {
entry:
  ret void, !dbg !631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !632 {
entry:
  ret void, !dbg !633
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !634 {
entry:
  ret void, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !636 {
entry:
  ret void, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !638 {
entry:
  ret void, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !640 {
entry:
  ret void, !dbg !641
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !642 {
entry:
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !644 {
entry:
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !646 {
entry:
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !648 {
entry:
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !650 {
entry:
  ret void, !dbg !651
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_074/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_01.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_074/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_01_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!163 = !DILocalVariable(name: "i", scope: !164, file: !45, line: 62, type: !23)
!164 = distinct !DILexicalBlock(scope: !52, file: !45, line: 61, column: 5)
!165 = !DILocation(line: 62, column: 13, scope: !164)
!166 = !DILocalVariable(name: "n", scope: !164, file: !45, line: 62, type: !23)
!167 = !DILocation(line: 62, column: 16, scope: !164)
!168 = !DILocalVariable(name: "intVariable", scope: !164, file: !45, line: 62, type: !23)
!169 = !DILocation(line: 62, column: 19, scope: !164)
!170 = !DILocation(line: 63, column: 20, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !45, line: 63, column: 13)
!172 = !DILocation(line: 63, column: 13, scope: !171)
!173 = !DILocation(line: 63, column: 36, scope: !171)
!174 = !DILocation(line: 63, column: 13, scope: !164)
!175 = !DILocation(line: 66, column: 25, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !45, line: 64, column: 9)
!177 = !DILocation(line: 67, column: 20, scope: !178)
!178 = distinct !DILexicalBlock(scope: !176, file: !45, line: 67, column: 13)
!179 = !DILocation(line: 67, column: 18, scope: !178)
!180 = !DILocation(line: 67, column: 25, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !45, line: 67, column: 13)
!182 = !DILocation(line: 67, column: 29, scope: !181)
!183 = !DILocation(line: 67, column: 27, scope: !181)
!184 = !DILocation(line: 67, column: 13, scope: !178)
!185 = !DILocation(line: 70, column: 28, scope: !186)
!186 = distinct !DILexicalBlock(scope: !181, file: !45, line: 68, column: 13)
!187 = !DILocation(line: 71, column: 13, scope: !186)
!188 = !DILocation(line: 67, column: 33, scope: !181)
!189 = !DILocation(line: 67, column: 13, scope: !181)
!190 = distinct !{!190, !184, !191, !192}
!191 = !DILocation(line: 71, column: 13, scope: !178)
!192 = !{!"llvm.loop.mustprogress"}
!193 = !DILocation(line: 72, column: 26, scope: !176)
!194 = !DILocation(line: 72, column: 13, scope: !176)
!195 = !DILocation(line: 73, column: 9, scope: !176)
!196 = !DILocation(line: 75, column: 1, scope: !52)
!197 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 82, type: !53, scopeLine: 83, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!198 = !DILocalVariable(name: "data", scope: !197, file: !45, line: 84, type: !42)
!199 = !DILocation(line: 84, column: 12, scope: !197)
!200 = !DILocalVariable(name: "dataBuffer", scope: !197, file: !45, line: 85, type: !58)
!201 = !DILocation(line: 85, column: 10, scope: !197)
!202 = !DILocation(line: 86, column: 12, scope: !197)
!203 = !DILocation(line: 86, column: 10, scope: !197)
!204 = !DILocation(line: 88, column: 12, scope: !197)
!205 = !DILocation(line: 88, column: 5, scope: !197)
!206 = !DILocalVariable(name: "i", scope: !207, file: !45, line: 90, type: !23)
!207 = distinct !DILexicalBlock(scope: !197, file: !45, line: 89, column: 5)
!208 = !DILocation(line: 90, column: 13, scope: !207)
!209 = !DILocalVariable(name: "n", scope: !207, file: !45, line: 90, type: !23)
!210 = !DILocation(line: 90, column: 16, scope: !207)
!211 = !DILocalVariable(name: "intVariable", scope: !207, file: !45, line: 90, type: !23)
!212 = !DILocation(line: 90, column: 19, scope: !207)
!213 = !DILocation(line: 91, column: 20, scope: !214)
!214 = distinct !DILexicalBlock(scope: !207, file: !45, line: 91, column: 13)
!215 = !DILocation(line: 91, column: 13, scope: !214)
!216 = !DILocation(line: 91, column: 36, scope: !214)
!217 = !DILocation(line: 91, column: 13, scope: !207)
!218 = !DILocation(line: 94, column: 25, scope: !219)
!219 = distinct !DILexicalBlock(scope: !214, file: !45, line: 92, column: 9)
!220 = !DILocation(line: 95, column: 20, scope: !221)
!221 = distinct !DILexicalBlock(scope: !219, file: !45, line: 95, column: 13)
!222 = !DILocation(line: 95, column: 18, scope: !221)
!223 = !DILocation(line: 95, column: 25, scope: !224)
!224 = distinct !DILexicalBlock(scope: !221, file: !45, line: 95, column: 13)
!225 = !DILocation(line: 95, column: 29, scope: !224)
!226 = !DILocation(line: 95, column: 27, scope: !224)
!227 = !DILocation(line: 95, column: 13, scope: !221)
!228 = !DILocation(line: 98, column: 28, scope: !229)
!229 = distinct !DILexicalBlock(scope: !224, file: !45, line: 96, column: 13)
!230 = !DILocation(line: 99, column: 13, scope: !229)
!231 = !DILocation(line: 95, column: 33, scope: !224)
!232 = !DILocation(line: 95, column: 13, scope: !224)
!233 = distinct !{!233, !227, !234, !192}
!234 = !DILocation(line: 99, column: 13, scope: !221)
!235 = !DILocation(line: 100, column: 26, scope: !219)
!236 = !DILocation(line: 100, column: 13, scope: !219)
!237 = !DILocation(line: 101, column: 9, scope: !219)
!238 = !DILocation(line: 103, column: 1, scope: !197)
!239 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 106, type: !53, scopeLine: 107, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!240 = !DILocalVariable(name: "data", scope: !239, file: !45, line: 108, type: !42)
!241 = !DILocation(line: 108, column: 12, scope: !239)
!242 = !DILocalVariable(name: "dataBuffer", scope: !239, file: !45, line: 109, type: !58)
!243 = !DILocation(line: 109, column: 10, scope: !239)
!244 = !DILocation(line: 110, column: 12, scope: !239)
!245 = !DILocation(line: 110, column: 10, scope: !239)
!246 = !DILocalVariable(name: "dataLen", scope: !247, file: !45, line: 113, type: !66)
!247 = distinct !DILexicalBlock(scope: !239, file: !45, line: 111, column: 5)
!248 = !DILocation(line: 113, column: 16, scope: !247)
!249 = !DILocation(line: 113, column: 33, scope: !247)
!250 = !DILocation(line: 113, column: 26, scope: !247)
!251 = !DILocalVariable(name: "pFile", scope: !247, file: !45, line: 114, type: !73)
!252 = !DILocation(line: 114, column: 16, scope: !247)
!253 = !DILocation(line: 116, column: 17, scope: !254)
!254 = distinct !DILexicalBlock(scope: !247, file: !45, line: 116, column: 13)
!255 = !DILocation(line: 116, column: 16, scope: !254)
!256 = !DILocation(line: 116, column: 25, scope: !254)
!257 = !DILocation(line: 116, column: 13, scope: !247)
!258 = !DILocation(line: 118, column: 21, scope: !259)
!259 = distinct !DILexicalBlock(scope: !254, file: !45, line: 117, column: 9)
!260 = !DILocation(line: 118, column: 19, scope: !259)
!261 = !DILocation(line: 119, column: 17, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !45, line: 119, column: 17)
!263 = !DILocation(line: 119, column: 23, scope: !262)
!264 = !DILocation(line: 119, column: 17, scope: !259)
!265 = !DILocation(line: 122, column: 27, scope: !266)
!266 = distinct !DILexicalBlock(scope: !267, file: !45, line: 122, column: 21)
!267 = distinct !DILexicalBlock(scope: !262, file: !45, line: 120, column: 13)
!268 = !DILocation(line: 122, column: 32, scope: !266)
!269 = !DILocation(line: 122, column: 31, scope: !266)
!270 = !DILocation(line: 122, column: 51, scope: !266)
!271 = !DILocation(line: 122, column: 50, scope: !266)
!272 = !DILocation(line: 122, column: 41, scope: !266)
!273 = !DILocation(line: 122, column: 61, scope: !266)
!274 = !DILocation(line: 122, column: 21, scope: !266)
!275 = !DILocation(line: 122, column: 68, scope: !266)
!276 = !DILocation(line: 122, column: 21, scope: !267)
!277 = !DILocation(line: 124, column: 21, scope: !278)
!278 = distinct !DILexicalBlock(scope: !266, file: !45, line: 123, column: 17)
!279 = !DILocation(line: 126, column: 21, scope: !278)
!280 = !DILocation(line: 126, column: 26, scope: !278)
!281 = !DILocation(line: 126, column: 35, scope: !278)
!282 = !DILocation(line: 127, column: 17, scope: !278)
!283 = !DILocation(line: 128, column: 24, scope: !267)
!284 = !DILocation(line: 128, column: 17, scope: !267)
!285 = !DILocation(line: 129, column: 13, scope: !267)
!286 = !DILocation(line: 130, column: 9, scope: !259)
!287 = !DILocalVariable(name: "i", scope: !288, file: !45, line: 133, type: !23)
!288 = distinct !DILexicalBlock(scope: !239, file: !45, line: 132, column: 5)
!289 = !DILocation(line: 133, column: 13, scope: !288)
!290 = !DILocalVariable(name: "n", scope: !288, file: !45, line: 133, type: !23)
!291 = !DILocation(line: 133, column: 16, scope: !288)
!292 = !DILocalVariable(name: "intVariable", scope: !288, file: !45, line: 133, type: !23)
!293 = !DILocation(line: 133, column: 19, scope: !288)
!294 = !DILocation(line: 134, column: 20, scope: !295)
!295 = distinct !DILexicalBlock(scope: !288, file: !45, line: 134, column: 13)
!296 = !DILocation(line: 134, column: 13, scope: !295)
!297 = !DILocation(line: 134, column: 36, scope: !295)
!298 = !DILocation(line: 134, column: 13, scope: !288)
!299 = !DILocation(line: 137, column: 17, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !45, line: 137, column: 17)
!301 = distinct !DILexicalBlock(scope: !295, file: !45, line: 135, column: 9)
!302 = !DILocation(line: 137, column: 19, scope: !300)
!303 = !DILocation(line: 137, column: 17, scope: !301)
!304 = !DILocation(line: 139, column: 29, scope: !305)
!305 = distinct !DILexicalBlock(scope: !300, file: !45, line: 138, column: 13)
!306 = !DILocation(line: 140, column: 24, scope: !307)
!307 = distinct !DILexicalBlock(scope: !305, file: !45, line: 140, column: 17)
!308 = !DILocation(line: 140, column: 22, scope: !307)
!309 = !DILocation(line: 140, column: 29, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !45, line: 140, column: 17)
!311 = !DILocation(line: 140, column: 33, scope: !310)
!312 = !DILocation(line: 140, column: 31, scope: !310)
!313 = !DILocation(line: 140, column: 17, scope: !307)
!314 = !DILocation(line: 143, column: 32, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !45, line: 141, column: 17)
!316 = !DILocation(line: 144, column: 17, scope: !315)
!317 = !DILocation(line: 140, column: 37, scope: !310)
!318 = !DILocation(line: 140, column: 17, scope: !310)
!319 = distinct !{!319, !313, !320, !192}
!320 = !DILocation(line: 144, column: 17, scope: !307)
!321 = !DILocation(line: 145, column: 30, scope: !305)
!322 = !DILocation(line: 145, column: 17, scope: !305)
!323 = !DILocation(line: 146, column: 13, scope: !305)
!324 = !DILocation(line: 147, column: 9, scope: !301)
!325 = !DILocation(line: 149, column: 1, scope: !239)
!326 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_01_good", scope: !45, file: !45, line: 151, type: !53, scopeLine: 152, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!327 = !DILocation(line: 153, column: 5, scope: !326)
!328 = !DILocation(line: 154, column: 5, scope: !326)
!329 = !DILocation(line: 155, column: 1, scope: !326)
!330 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !331, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !42}
!333 = !DILocalVariable(name: "line", arg: 1, scope: !330, file: !3, line: 11, type: !42)
!334 = !DILocation(line: 11, column: 25, scope: !330)
!335 = !DILocation(line: 13, column: 1, scope: !330)
!336 = !DILocation(line: 14, column: 8, scope: !337)
!337 = distinct !DILexicalBlock(scope: !330, file: !3, line: 14, column: 8)
!338 = !DILocation(line: 14, column: 13, scope: !337)
!339 = !DILocation(line: 14, column: 8, scope: !330)
!340 = !DILocation(line: 16, column: 24, scope: !341)
!341 = distinct !DILexicalBlock(scope: !337, file: !3, line: 15, column: 5)
!342 = !DILocation(line: 16, column: 9, scope: !341)
!343 = !DILocation(line: 17, column: 5, scope: !341)
!344 = !DILocation(line: 18, column: 5, scope: !330)
!345 = !DILocation(line: 19, column: 1, scope: !330)
!346 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !331, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!347 = !DILocalVariable(name: "line", arg: 1, scope: !346, file: !3, line: 20, type: !42)
!348 = !DILocation(line: 20, column: 29, scope: !346)
!349 = !DILocation(line: 22, column: 8, scope: !350)
!350 = distinct !DILexicalBlock(scope: !346, file: !3, line: 22, column: 8)
!351 = !DILocation(line: 22, column: 13, scope: !350)
!352 = !DILocation(line: 22, column: 8, scope: !346)
!353 = !DILocation(line: 24, column: 24, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !3, line: 23, column: 5)
!355 = !DILocation(line: 24, column: 9, scope: !354)
!356 = !DILocation(line: 25, column: 5, scope: !354)
!357 = !DILocation(line: 26, column: 1, scope: !346)
!358 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !359, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !361}
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !67, line: 74, baseType: !23)
!363 = !DILocalVariable(name: "line", arg: 1, scope: !358, file: !3, line: 27, type: !361)
!364 = !DILocation(line: 27, column: 29, scope: !358)
!365 = !DILocation(line: 29, column: 8, scope: !366)
!366 = distinct !DILexicalBlock(scope: !358, file: !3, line: 29, column: 8)
!367 = !DILocation(line: 29, column: 13, scope: !366)
!368 = !DILocation(line: 29, column: 8, scope: !358)
!369 = !DILocation(line: 31, column: 27, scope: !370)
!370 = distinct !DILexicalBlock(scope: !366, file: !3, line: 30, column: 5)
!371 = !DILocation(line: 31, column: 9, scope: !370)
!372 = !DILocation(line: 32, column: 5, scope: !370)
!373 = !DILocation(line: 33, column: 1, scope: !358)
!374 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !375, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !23}
!377 = !DILocalVariable(name: "intNumber", arg: 1, scope: !374, file: !3, line: 35, type: !23)
!378 = !DILocation(line: 35, column: 24, scope: !374)
!379 = !DILocation(line: 37, column: 20, scope: !374)
!380 = !DILocation(line: 37, column: 5, scope: !374)
!381 = !DILocation(line: 38, column: 1, scope: !374)
!382 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !383, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!383 = !DISubroutineType(types: !384)
!384 = !{null, !385}
!385 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!386 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !382, file: !3, line: 40, type: !385)
!387 = !DILocation(line: 40, column: 28, scope: !382)
!388 = !DILocation(line: 42, column: 21, scope: !382)
!389 = !DILocation(line: 42, column: 5, scope: !382)
!390 = !DILocation(line: 43, column: 1, scope: !382)
!391 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !392, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !394}
!394 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!395 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !391, file: !3, line: 45, type: !394)
!396 = !DILocation(line: 45, column: 28, scope: !391)
!397 = !DILocation(line: 47, column: 20, scope: !391)
!398 = !DILocation(line: 47, column: 5, scope: !391)
!399 = !DILocation(line: 48, column: 1, scope: !391)
!400 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !401, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !101}
!403 = !DILocalVariable(name: "longNumber", arg: 1, scope: !400, file: !3, line: 50, type: !101)
!404 = !DILocation(line: 50, column: 26, scope: !400)
!405 = !DILocation(line: 52, column: 21, scope: !400)
!406 = !DILocation(line: 52, column: 5, scope: !400)
!407 = !DILocation(line: 53, column: 1, scope: !400)
!408 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !409, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411}
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !412, line: 27, baseType: !413)
!412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !100, line: 44, baseType: !101)
!414 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !408, file: !3, line: 55, type: !411)
!415 = !DILocation(line: 55, column: 33, scope: !408)
!416 = !DILocation(line: 57, column: 29, scope: !408)
!417 = !DILocation(line: 57, column: 5, scope: !408)
!418 = !DILocation(line: 58, column: 1, scope: !408)
!419 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !420, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !66}
!422 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !419, file: !3, line: 60, type: !66)
!423 = !DILocation(line: 60, column: 29, scope: !419)
!424 = !DILocation(line: 62, column: 21, scope: !419)
!425 = !DILocation(line: 62, column: 5, scope: !419)
!426 = !DILocation(line: 63, column: 1, scope: !419)
!427 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !428, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!428 = !DISubroutineType(types: !429)
!429 = !{null, !43}
!430 = !DILocalVariable(name: "charHex", arg: 1, scope: !427, file: !3, line: 65, type: !43)
!431 = !DILocation(line: 65, column: 29, scope: !427)
!432 = !DILocation(line: 67, column: 22, scope: !427)
!433 = !DILocation(line: 67, column: 5, scope: !427)
!434 = !DILocation(line: 68, column: 1, scope: !427)
!435 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !436, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !362}
!438 = !DILocalVariable(name: "wideChar", arg: 1, scope: !435, file: !3, line: 70, type: !362)
!439 = !DILocation(line: 70, column: 29, scope: !435)
!440 = !DILocalVariable(name: "s", scope: !435, file: !3, line: 74, type: !441)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 64, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 2)
!444 = !DILocation(line: 74, column: 13, scope: !435)
!445 = !DILocation(line: 75, column: 16, scope: !435)
!446 = !DILocation(line: 75, column: 9, scope: !435)
!447 = !DILocation(line: 75, column: 14, scope: !435)
!448 = !DILocation(line: 76, column: 9, scope: !435)
!449 = !DILocation(line: 76, column: 14, scope: !435)
!450 = !DILocation(line: 77, column: 21, scope: !435)
!451 = !DILocation(line: 77, column: 5, scope: !435)
!452 = !DILocation(line: 78, column: 1, scope: !435)
!453 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !454, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !7}
!456 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !453, file: !3, line: 80, type: !7)
!457 = !DILocation(line: 80, column: 33, scope: !453)
!458 = !DILocation(line: 82, column: 20, scope: !453)
!459 = !DILocation(line: 82, column: 5, scope: !453)
!460 = !DILocation(line: 83, column: 1, scope: !453)
!461 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !462, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !25}
!464 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !461, file: !3, line: 85, type: !25)
!465 = !DILocation(line: 85, column: 45, scope: !461)
!466 = !DILocation(line: 87, column: 22, scope: !461)
!467 = !DILocation(line: 87, column: 5, scope: !461)
!468 = !DILocation(line: 88, column: 1, scope: !461)
!469 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !470, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !472}
!472 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!473 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !469, file: !3, line: 90, type: !472)
!474 = !DILocation(line: 90, column: 29, scope: !469)
!475 = !DILocation(line: 92, column: 20, scope: !469)
!476 = !DILocation(line: 92, column: 5, scope: !469)
!477 = !DILocation(line: 93, column: 1, scope: !469)
!478 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !479, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !481}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !483, line: 100, baseType: !484)
!483 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_074/source_code")
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !483, line: 96, size: 64, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !484, file: !483, line: 98, baseType: !23, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !484, file: !483, line: 99, baseType: !23, size: 32, offset: 32)
!488 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !478, file: !3, line: 95, type: !481)
!489 = !DILocation(line: 95, column: 40, scope: !478)
!490 = !DILocation(line: 97, column: 26, scope: !478)
!491 = !DILocation(line: 97, column: 47, scope: !478)
!492 = !DILocation(line: 97, column: 55, scope: !478)
!493 = !DILocation(line: 97, column: 76, scope: !478)
!494 = !DILocation(line: 97, column: 5, scope: !478)
!495 = !DILocation(line: 98, column: 1, scope: !478)
!496 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !497, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !499, !66}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!500 = !DILocalVariable(name: "bytes", arg: 1, scope: !496, file: !3, line: 100, type: !499)
!501 = !DILocation(line: 100, column: 38, scope: !496)
!502 = !DILocalVariable(name: "numBytes", arg: 2, scope: !496, file: !3, line: 100, type: !66)
!503 = !DILocation(line: 100, column: 52, scope: !496)
!504 = !DILocalVariable(name: "i", scope: !496, file: !3, line: 102, type: !66)
!505 = !DILocation(line: 102, column: 12, scope: !496)
!506 = !DILocation(line: 103, column: 12, scope: !507)
!507 = distinct !DILexicalBlock(scope: !496, file: !3, line: 103, column: 5)
!508 = !DILocation(line: 103, column: 10, scope: !507)
!509 = !DILocation(line: 103, column: 17, scope: !510)
!510 = distinct !DILexicalBlock(scope: !507, file: !3, line: 103, column: 5)
!511 = !DILocation(line: 103, column: 21, scope: !510)
!512 = !DILocation(line: 103, column: 19, scope: !510)
!513 = !DILocation(line: 103, column: 5, scope: !507)
!514 = !DILocation(line: 105, column: 24, scope: !515)
!515 = distinct !DILexicalBlock(scope: !510, file: !3, line: 104, column: 5)
!516 = !DILocation(line: 105, column: 30, scope: !515)
!517 = !DILocation(line: 105, column: 9, scope: !515)
!518 = !DILocation(line: 106, column: 5, scope: !515)
!519 = !DILocation(line: 103, column: 31, scope: !510)
!520 = !DILocation(line: 103, column: 5, scope: !510)
!521 = distinct !{!521, !513, !522, !192}
!522 = !DILocation(line: 106, column: 5, scope: !507)
!523 = !DILocation(line: 107, column: 5, scope: !496)
!524 = !DILocation(line: 108, column: 1, scope: !496)
!525 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !526, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DISubroutineType(types: !527)
!527 = !{!66, !499, !66, !42}
!528 = !DILocalVariable(name: "bytes", arg: 1, scope: !525, file: !3, line: 113, type: !499)
!529 = !DILocation(line: 113, column: 39, scope: !525)
!530 = !DILocalVariable(name: "numBytes", arg: 2, scope: !525, file: !3, line: 113, type: !66)
!531 = !DILocation(line: 113, column: 53, scope: !525)
!532 = !DILocalVariable(name: "hex", arg: 3, scope: !525, file: !3, line: 113, type: !42)
!533 = !DILocation(line: 113, column: 71, scope: !525)
!534 = !DILocalVariable(name: "numWritten", scope: !525, file: !3, line: 115, type: !66)
!535 = !DILocation(line: 115, column: 12, scope: !525)
!536 = !DILocation(line: 121, column: 5, scope: !525)
!537 = !DILocation(line: 121, column: 12, scope: !525)
!538 = !DILocation(line: 121, column: 25, scope: !525)
!539 = !DILocation(line: 121, column: 23, scope: !525)
!540 = !DILocation(line: 121, column: 34, scope: !525)
!541 = !DILocation(line: 121, column: 37, scope: !525)
!542 = !DILocation(line: 121, column: 67, scope: !525)
!543 = !DILocation(line: 121, column: 70, scope: !525)
!544 = !DILocation(line: 0, scope: !525)
!545 = !DILocalVariable(name: "byte", scope: !546, file: !3, line: 123, type: !23)
!546 = distinct !DILexicalBlock(scope: !525, file: !3, line: 122, column: 5)
!547 = !DILocation(line: 123, column: 13, scope: !546)
!548 = !DILocation(line: 124, column: 17, scope: !546)
!549 = !DILocation(line: 124, column: 25, scope: !546)
!550 = !DILocation(line: 124, column: 23, scope: !546)
!551 = !DILocation(line: 124, column: 9, scope: !546)
!552 = !DILocation(line: 125, column: 45, scope: !546)
!553 = !DILocation(line: 125, column: 29, scope: !546)
!554 = !DILocation(line: 125, column: 9, scope: !546)
!555 = !DILocation(line: 125, column: 15, scope: !546)
!556 = !DILocation(line: 125, column: 27, scope: !546)
!557 = !DILocation(line: 126, column: 9, scope: !546)
!558 = distinct !{!558, !536, !559, !192}
!559 = !DILocation(line: 127, column: 5, scope: !525)
!560 = !DILocation(line: 129, column: 12, scope: !525)
!561 = !DILocation(line: 129, column: 5, scope: !525)
!562 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !563, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!563 = !DISubroutineType(types: !564)
!564 = !{!66, !499, !66, !361}
!565 = !DILocalVariable(name: "bytes", arg: 1, scope: !562, file: !3, line: 135, type: !499)
!566 = !DILocation(line: 135, column: 41, scope: !562)
!567 = !DILocalVariable(name: "numBytes", arg: 2, scope: !562, file: !3, line: 135, type: !66)
!568 = !DILocation(line: 135, column: 55, scope: !562)
!569 = !DILocalVariable(name: "hex", arg: 3, scope: !562, file: !3, line: 135, type: !361)
!570 = !DILocation(line: 135, column: 76, scope: !562)
!571 = !DILocalVariable(name: "numWritten", scope: !562, file: !3, line: 137, type: !66)
!572 = !DILocation(line: 137, column: 12, scope: !562)
!573 = !DILocation(line: 143, column: 5, scope: !562)
!574 = !DILocation(line: 143, column: 12, scope: !562)
!575 = !DILocation(line: 143, column: 25, scope: !562)
!576 = !DILocation(line: 143, column: 23, scope: !562)
!577 = !DILocation(line: 143, column: 34, scope: !562)
!578 = !DILocation(line: 143, column: 47, scope: !562)
!579 = !DILocation(line: 143, column: 55, scope: !562)
!580 = !DILocation(line: 143, column: 53, scope: !562)
!581 = !DILocation(line: 143, column: 37, scope: !562)
!582 = !DILocation(line: 143, column: 68, scope: !562)
!583 = !DILocation(line: 143, column: 81, scope: !562)
!584 = !DILocation(line: 143, column: 89, scope: !562)
!585 = !DILocation(line: 143, column: 87, scope: !562)
!586 = !DILocation(line: 143, column: 100, scope: !562)
!587 = !DILocation(line: 143, column: 71, scope: !562)
!588 = !DILocation(line: 0, scope: !562)
!589 = !DILocalVariable(name: "byte", scope: !590, file: !3, line: 145, type: !23)
!590 = distinct !DILexicalBlock(scope: !562, file: !3, line: 144, column: 5)
!591 = !DILocation(line: 145, column: 13, scope: !590)
!592 = !DILocation(line: 146, column: 18, scope: !590)
!593 = !DILocation(line: 146, column: 26, scope: !590)
!594 = !DILocation(line: 146, column: 24, scope: !590)
!595 = !DILocation(line: 146, column: 9, scope: !590)
!596 = !DILocation(line: 147, column: 45, scope: !590)
!597 = !DILocation(line: 147, column: 29, scope: !590)
!598 = !DILocation(line: 147, column: 9, scope: !590)
!599 = !DILocation(line: 147, column: 15, scope: !590)
!600 = !DILocation(line: 147, column: 27, scope: !590)
!601 = !DILocation(line: 148, column: 9, scope: !590)
!602 = distinct !{!602, !573, !603, !192}
!603 = !DILocation(line: 149, column: 5, scope: !562)
!604 = !DILocation(line: 151, column: 12, scope: !562)
!605 = !DILocation(line: 151, column: 5, scope: !562)
!606 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !607, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!607 = !DISubroutineType(types: !608)
!608 = !{!23}
!609 = !DILocation(line: 158, column: 5, scope: !606)
!610 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !607, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!611 = !DILocation(line: 163, column: 5, scope: !610)
!612 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !607, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!613 = !DILocation(line: 168, column: 13, scope: !612)
!614 = !DILocation(line: 168, column: 20, scope: !612)
!615 = !DILocation(line: 168, column: 5, scope: !612)
!616 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!617 = !DILocation(line: 187, column: 16, scope: !616)
!618 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!619 = !DILocation(line: 188, column: 16, scope: !618)
!620 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DILocation(line: 189, column: 16, scope: !620)
!622 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!623 = !DILocation(line: 190, column: 16, scope: !622)
!624 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!625 = !DILocation(line: 191, column: 16, scope: !624)
!626 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!627 = !DILocation(line: 192, column: 16, scope: !626)
!628 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!629 = !DILocation(line: 193, column: 16, scope: !628)
!630 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!631 = !DILocation(line: 194, column: 16, scope: !630)
!632 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DILocation(line: 195, column: 16, scope: !632)
!634 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!635 = !DILocation(line: 198, column: 15, scope: !634)
!636 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!637 = !DILocation(line: 199, column: 15, scope: !636)
!638 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!639 = !DILocation(line: 200, column: 15, scope: !638)
!640 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!641 = !DILocation(line: 201, column: 15, scope: !640)
!642 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!643 = !DILocation(line: 202, column: 15, scope: !642)
!644 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!645 = !DILocation(line: 203, column: 15, scope: !644)
!646 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!647 = !DILocation(line: 204, column: 15, scope: !646)
!648 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!649 = !DILocation(line: 205, column: 15, scope: !648)
!650 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!651 = !DILocation(line: 206, column: 15, scope: !650)
