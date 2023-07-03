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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_15_bad() #0 !dbg !52 {
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
define dso_local void @goodB2G1() #0 !dbg !197 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !200, metadata !DIExpression()), !dbg !201
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !201
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !201
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !202
  store i8* %arraydecay, i8** %data, align 8, !dbg !203
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !204, metadata !DIExpression()), !dbg !206
  %1 = load i8*, i8** %data, align 8, !dbg !207
  %call = call i64 @strlen(i8* %1) #7, !dbg !208
  store i64 %call, i64* %dataLen, align 8, !dbg !206
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !209, metadata !DIExpression()), !dbg !210
  %2 = load i64, i64* %dataLen, align 8, !dbg !211
  %sub = sub i64 100, %2, !dbg !213
  %cmp = icmp ugt i64 %sub, 1, !dbg !214
  br i1 %cmp, label %if.then, label %if.end11, !dbg !215

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !216
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !218
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !219
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !221
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !222

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !223
  %5 = load i64, i64* %dataLen, align 8, !dbg !226
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !227
  %6 = load i64, i64* %dataLen, align 8, !dbg !228
  %sub4 = sub i64 100, %6, !dbg !229
  %conv = trunc i64 %sub4 to i32, !dbg !230
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !231
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !232
  %cmp6 = icmp eq i8* %call5, null, !dbg !233
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !234

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !235
  %8 = load i8*, i8** %data, align 8, !dbg !237
  %9 = load i64, i64* %dataLen, align 8, !dbg !238
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !237
  store i8 0, i8* %arrayidx, align 1, !dbg !239
  br label %if.end, !dbg !240

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !241
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !242
  br label %if.end10, !dbg !243

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !244

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !245, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata i32* %n, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !250, metadata !DIExpression()), !dbg !251
  %11 = load i8*, i8** %data, align 8, !dbg !252
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !254
  %cmp13 = icmp eq i32 %call12, 1, !dbg !255
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !256

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %n, align 4, !dbg !257
  %cmp16 = icmp slt i32 %12, 10000, !dbg !260
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !261

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !262
  store i32 0, i32* %i, align 4, !dbg !264
  br label %for.cond, !dbg !266

for.cond:                                         ; preds = %for.inc, %if.then18
  %13 = load i32, i32* %i, align 4, !dbg !267
  %14 = load i32, i32* %n, align 4, !dbg !269
  %cmp19 = icmp slt i32 %13, %14, !dbg !270
  br i1 %cmp19, label %for.body, label %for.end, !dbg !271

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !272
  %inc = add nsw i32 %15, 1, !dbg !272
  store i32 %inc, i32* %intVariable, align 4, !dbg !272
  br label %for.inc, !dbg !274

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !275
  %inc21 = add nsw i32 %16, 1, !dbg !275
  store i32 %inc21, i32* %i, align 4, !dbg !275
  br label %for.cond, !dbg !276, !llvm.loop !277

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !279
  call void @printIntLine(i32 %17), !dbg !280
  br label %if.end22, !dbg !281

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !282

if.end23:                                         ; preds = %if.end22, %if.end11
  ret void, !dbg !283
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !284 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !285, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !287, metadata !DIExpression()), !dbg !288
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !288
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !288
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !289
  store i8* %arraydecay, i8** %data, align 8, !dbg !290
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !291, metadata !DIExpression()), !dbg !293
  %1 = load i8*, i8** %data, align 8, !dbg !294
  %call = call i64 @strlen(i8* %1) #7, !dbg !295
  store i64 %call, i64* %dataLen, align 8, !dbg !293
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !296, metadata !DIExpression()), !dbg !297
  %2 = load i64, i64* %dataLen, align 8, !dbg !298
  %sub = sub i64 100, %2, !dbg !300
  %cmp = icmp ugt i64 %sub, 1, !dbg !301
  br i1 %cmp, label %if.then, label %if.end11, !dbg !302

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !303
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !305
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !306
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !308
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !309

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !310
  %5 = load i64, i64* %dataLen, align 8, !dbg !313
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !314
  %6 = load i64, i64* %dataLen, align 8, !dbg !315
  %sub4 = sub i64 100, %6, !dbg !316
  %conv = trunc i64 %sub4 to i32, !dbg !317
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !318
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !319
  %cmp6 = icmp eq i8* %call5, null, !dbg !320
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !321

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !322
  %8 = load i8*, i8** %data, align 8, !dbg !324
  %9 = load i64, i64* %dataLen, align 8, !dbg !325
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !324
  store i8 0, i8* %arrayidx, align 1, !dbg !326
  br label %if.end, !dbg !327

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !328
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !329
  br label %if.end10, !dbg !330

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !331

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !332, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata i32* %n, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !337, metadata !DIExpression()), !dbg !338
  %11 = load i8*, i8** %data, align 8, !dbg !339
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !341
  %cmp13 = icmp eq i32 %call12, 1, !dbg !342
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !343

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %n, align 4, !dbg !344
  %cmp16 = icmp slt i32 %12, 10000, !dbg !347
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !348

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !349
  store i32 0, i32* %i, align 4, !dbg !351
  br label %for.cond, !dbg !353

for.cond:                                         ; preds = %for.inc, %if.then18
  %13 = load i32, i32* %i, align 4, !dbg !354
  %14 = load i32, i32* %n, align 4, !dbg !356
  %cmp19 = icmp slt i32 %13, %14, !dbg !357
  br i1 %cmp19, label %for.body, label %for.end, !dbg !358

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !359
  %inc = add nsw i32 %15, 1, !dbg !359
  store i32 %inc, i32* %intVariable, align 4, !dbg !359
  br label %for.inc, !dbg !361

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !362
  %inc21 = add nsw i32 %16, 1, !dbg !362
  store i32 %inc21, i32* %i, align 4, !dbg !362
  br label %for.cond, !dbg !363, !llvm.loop !364

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !366
  call void @printIntLine(i32 %17), !dbg !367
  br label %if.end22, !dbg !368

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !369

if.end23:                                         ; preds = %if.end22, %if.end11
  ret void, !dbg !370
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !371 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !372, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !375
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !375
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !376
  store i8* %arraydecay, i8** %data, align 8, !dbg !377
  %1 = load i8*, i8** %data, align 8, !dbg !378
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !379
  call void @llvm.dbg.declare(metadata i32* %i, metadata !380, metadata !DIExpression()), !dbg !382
  call void @llvm.dbg.declare(metadata i32* %n, metadata !383, metadata !DIExpression()), !dbg !384
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !385, metadata !DIExpression()), !dbg !386
  %2 = load i8*, i8** %data, align 8, !dbg !387
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !389
  %cmp = icmp eq i32 %call1, 1, !dbg !390
  br i1 %cmp, label %if.then, label %if.end, !dbg !391

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !392
  store i32 0, i32* %i, align 4, !dbg !394
  br label %for.cond, !dbg !396

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !397
  %4 = load i32, i32* %n, align 4, !dbg !399
  %cmp2 = icmp slt i32 %3, %4, !dbg !400
  br i1 %cmp2, label %for.body, label %for.end, !dbg !401

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !402
  %inc = add nsw i32 %5, 1, !dbg !402
  store i32 %inc, i32* %intVariable, align 4, !dbg !402
  br label %for.inc, !dbg !404

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !405
  %inc3 = add nsw i32 %6, 1, !dbg !405
  store i32 %inc3, i32* %i, align 4, !dbg !405
  br label %for.cond, !dbg !406, !llvm.loop !407

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !409
  call void @printIntLine(i32 %7), !dbg !410
  br label %if.end, !dbg !411

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !412
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !413 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !416, metadata !DIExpression()), !dbg !417
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !417
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !417
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !418
  store i8* %arraydecay, i8** %data, align 8, !dbg !419
  %1 = load i8*, i8** %data, align 8, !dbg !420
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !421
  call void @llvm.dbg.declare(metadata i32* %i, metadata !422, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.declare(metadata i32* %n, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !427, metadata !DIExpression()), !dbg !428
  %2 = load i8*, i8** %data, align 8, !dbg !429
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !431
  %cmp = icmp eq i32 %call1, 1, !dbg !432
  br i1 %cmp, label %if.then, label %if.end, !dbg !433

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !434
  store i32 0, i32* %i, align 4, !dbg !436
  br label %for.cond, !dbg !438

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !439
  %4 = load i32, i32* %n, align 4, !dbg !441
  %cmp2 = icmp slt i32 %3, %4, !dbg !442
  br i1 %cmp2, label %for.body, label %for.end, !dbg !443

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !444
  %inc = add nsw i32 %5, 1, !dbg !444
  store i32 %inc, i32* %intVariable, align 4, !dbg !444
  br label %for.inc, !dbg !446

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !447
  %inc3 = add nsw i32 %6, 1, !dbg !447
  store i32 %inc3, i32* %i, align 4, !dbg !447
  br label %for.cond, !dbg !448, !llvm.loop !449

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !451
  call void @printIntLine(i32 %7), !dbg !452
  br label %if.end, !dbg !453

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_15_good() #0 !dbg !455 {
entry:
  call void @goodB2G1(), !dbg !456
  call void @goodB2G2(), !dbg !457
  call void @goodG2B1(), !dbg !458
  call void @goodG2B2(), !dbg !459
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !461 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !464, metadata !DIExpression()), !dbg !465
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !466
  %0 = load i8*, i8** %line.addr, align 8, !dbg !467
  %cmp = icmp ne i8* %0, null, !dbg !469
  br i1 %cmp, label %if.then, label %if.end, !dbg !470

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !471
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !473
  br label %if.end, !dbg !474

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !475
  ret void, !dbg !476
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !477 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !478, metadata !DIExpression()), !dbg !479
  %0 = load i8*, i8** %line.addr, align 8, !dbg !480
  %cmp = icmp ne i8* %0, null, !dbg !482
  br i1 %cmp, label %if.then, label %if.end, !dbg !483

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !484
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !486
  br label %if.end, !dbg !487

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !489 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !494, metadata !DIExpression()), !dbg !495
  %0 = load i32*, i32** %line.addr, align 8, !dbg !496
  %cmp = icmp ne i32* %0, null, !dbg !498
  br i1 %cmp, label %if.then, label %if.end, !dbg !499

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !500
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !502
  br label %if.end, !dbg !503

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !504
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !505 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !508, metadata !DIExpression()), !dbg !509
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !510
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.11, i64 0, i64 0), i32 %0), !dbg !511
  ret void, !dbg !512
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !513 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !517, metadata !DIExpression()), !dbg !518
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !519
  %conv = sext i16 %0 to i32, !dbg !519
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.12, i64 0, i64 0), i32 %conv), !dbg !520
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !522 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !526, metadata !DIExpression()), !dbg !527
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !528
  %conv = fpext float %0 to double, !dbg !528
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !529
  ret void, !dbg !530
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !531 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !534, metadata !DIExpression()), !dbg !535
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !536
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !537
  ret void, !dbg !538
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !539 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !545, metadata !DIExpression()), !dbg !546
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !547
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !548
  ret void, !dbg !549
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !550 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !553, metadata !DIExpression()), !dbg !554
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !555
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !556
  ret void, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !558 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !561, metadata !DIExpression()), !dbg !562
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !563
  %conv = sext i8 %0 to i32, !dbg !563
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !564
  ret void, !dbg !565
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !566 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !569, metadata !DIExpression()), !dbg !570
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !571, metadata !DIExpression()), !dbg !575
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !576
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !577
  store i32 %0, i32* %arrayidx, align 4, !dbg !578
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !579
  store i32 0, i32* %arrayidx1, align 4, !dbg !580
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !581
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !582
  ret void, !dbg !583
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !584 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !587, metadata !DIExpression()), !dbg !588
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !589
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !590
  ret void, !dbg !591
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !592 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !595, metadata !DIExpression()), !dbg !596
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !597
  %conv = zext i8 %0 to i32, !dbg !597
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !598
  ret void, !dbg !599
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !600 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !604, metadata !DIExpression()), !dbg !605
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !606
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !607
  ret void, !dbg !608
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !609 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !619, metadata !DIExpression()), !dbg !620
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !621
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !622
  %1 = load i32, i32* %intOne, align 4, !dbg !622
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !623
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !624
  %3 = load i32, i32* %intTwo, align 4, !dbg !624
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !625
  ret void, !dbg !626
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !627 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !631, metadata !DIExpression()), !dbg !632
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !633, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.declare(metadata i64* %i, metadata !635, metadata !DIExpression()), !dbg !636
  store i64 0, i64* %i, align 8, !dbg !637
  br label %for.cond, !dbg !639

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !640
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !642
  %cmp = icmp ult i64 %0, %1, !dbg !643
  br i1 %cmp, label %for.body, label %for.end, !dbg !644

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !645
  %3 = load i64, i64* %i, align 8, !dbg !647
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !645
  %4 = load i8, i8* %arrayidx, align 1, !dbg !645
  %conv = zext i8 %4 to i32, !dbg !645
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !648
  br label %for.inc, !dbg !649

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !650
  %inc = add i64 %5, 1, !dbg !650
  store i64 %inc, i64* %i, align 8, !dbg !650
  br label %for.cond, !dbg !651, !llvm.loop !652

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !654
  ret void, !dbg !655
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !656 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !659, metadata !DIExpression()), !dbg !660
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !661, metadata !DIExpression()), !dbg !662
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !663, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !665, metadata !DIExpression()), !dbg !666
  store i64 0, i64* %numWritten, align 8, !dbg !666
  br label %while.cond, !dbg !667

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !668
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !669
  %cmp = icmp ult i64 %0, %1, !dbg !670
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !671

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !672
  %2 = load i16*, i16** %call, align 8, !dbg !672
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !672
  %4 = load i64, i64* %numWritten, align 8, !dbg !672
  %mul = mul i64 2, %4, !dbg !672
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !672
  %5 = load i8, i8* %arrayidx, align 1, !dbg !672
  %conv = sext i8 %5 to i32, !dbg !672
  %idxprom = sext i32 %conv to i64, !dbg !672
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !672
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !672
  %conv2 = zext i16 %6 to i32, !dbg !672
  %and = and i32 %conv2, 4096, !dbg !672
  %tobool = icmp ne i32 %and, 0, !dbg !672
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !673

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !674
  %7 = load i16*, i16** %call3, align 8, !dbg !674
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !674
  %9 = load i64, i64* %numWritten, align 8, !dbg !674
  %mul4 = mul i64 2, %9, !dbg !674
  %add = add i64 %mul4, 1, !dbg !674
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !674
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !674
  %conv6 = sext i8 %10 to i32, !dbg !674
  %idxprom7 = sext i32 %conv6 to i64, !dbg !674
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !674
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !674
  %conv9 = zext i16 %11 to i32, !dbg !674
  %and10 = and i32 %conv9, 4096, !dbg !674
  %tobool11 = icmp ne i32 %and10, 0, !dbg !673
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !675
  br i1 %12, label %while.body, label %while.end, !dbg !667

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !676, metadata !DIExpression()), !dbg !678
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !679
  %14 = load i64, i64* %numWritten, align 8, !dbg !680
  %mul12 = mul i64 2, %14, !dbg !681
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !679
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !682
  %15 = load i32, i32* %byte, align 4, !dbg !683
  %conv15 = trunc i32 %15 to i8, !dbg !684
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !685
  %17 = load i64, i64* %numWritten, align 8, !dbg !686
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !685
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !687
  %18 = load i64, i64* %numWritten, align 8, !dbg !688
  %inc = add i64 %18, 1, !dbg !688
  store i64 %inc, i64* %numWritten, align 8, !dbg !688
  br label %while.cond, !dbg !667, !llvm.loop !689

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !691
  ret i64 %19, !dbg !692
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !693 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !696, metadata !DIExpression()), !dbg !697
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !698, metadata !DIExpression()), !dbg !699
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !700, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !702, metadata !DIExpression()), !dbg !703
  store i64 0, i64* %numWritten, align 8, !dbg !703
  br label %while.cond, !dbg !704

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !705
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !706
  %cmp = icmp ult i64 %0, %1, !dbg !707
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !708

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !709
  %3 = load i64, i64* %numWritten, align 8, !dbg !710
  %mul = mul i64 2, %3, !dbg !711
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !709
  %4 = load i32, i32* %arrayidx, align 4, !dbg !709
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !712
  %tobool = icmp ne i32 %call, 0, !dbg !712
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !713

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !714
  %6 = load i64, i64* %numWritten, align 8, !dbg !715
  %mul1 = mul i64 2, %6, !dbg !716
  %add = add i64 %mul1, 1, !dbg !717
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !714
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !714
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !718
  %tobool4 = icmp ne i32 %call3, 0, !dbg !713
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !719
  br i1 %8, label %while.body, label %while.end, !dbg !704

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !720, metadata !DIExpression()), !dbg !722
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !723
  %10 = load i64, i64* %numWritten, align 8, !dbg !724
  %mul5 = mul i64 2, %10, !dbg !725
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !723
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !726
  %11 = load i32, i32* %byte, align 4, !dbg !727
  %conv = trunc i32 %11 to i8, !dbg !728
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !729
  %13 = load i64, i64* %numWritten, align 8, !dbg !730
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !729
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !731
  %14 = load i64, i64* %numWritten, align 8, !dbg !732
  %inc = add i64 %14, 1, !dbg !732
  store i64 %inc, i64* %numWritten, align 8, !dbg !732
  br label %while.cond, !dbg !704, !llvm.loop !733

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !735
  ret i64 %15, !dbg !736
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !737 {
entry:
  ret i32 1, !dbg !740
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !741 {
entry:
  ret i32 0, !dbg !742
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !743 {
entry:
  %call = call i32 @rand() #8, !dbg !744
  %rem = srem i32 %call, 2, !dbg !745
  ret i32 %rem, !dbg !746
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !747 {
entry:
  ret void, !dbg !748
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !749 {
entry:
  ret void, !dbg !750
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !751 {
entry:
  ret void, !dbg !752
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !753 {
entry:
  ret void, !dbg !754
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !755 {
entry:
  ret void, !dbg !756
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !757 {
entry:
  ret void, !dbg !758
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !759 {
entry:
  ret void, !dbg !760
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !761 {
entry:
  ret void, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !763 {
entry:
  ret void, !dbg !764
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !765 {
entry:
  ret void, !dbg !766
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !767 {
entry:
  ret void, !dbg !768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !769 {
entry:
  ret void, !dbg !770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !771 {
entry:
  ret void, !dbg !772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !773 {
entry:
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !775 {
entry:
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !777 {
entry:
  ret void, !dbg !778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !779 {
entry:
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !781 {
entry:
  ret void, !dbg !782
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_088/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_088/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_15_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 45, type: !66)
!65 = distinct !DILexicalBlock(scope: !52, file: !45, line: 43, column: 5)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !67, line: 46, baseType: !68)
!67 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!68 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!69 = !DILocation(line: 45, column: 16, scope: !65)
!70 = !DILocation(line: 45, column: 33, scope: !65)
!71 = !DILocation(line: 45, column: 26, scope: !65)
!72 = !DILocalVariable(name: "pFile", scope: !65, file: !45, line: 46, type: !73)
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
!128 = !DILocation(line: 46, column: 16, scope: !65)
!129 = !DILocation(line: 48, column: 17, scope: !130)
!130 = distinct !DILexicalBlock(scope: !65, file: !45, line: 48, column: 13)
!131 = !DILocation(line: 48, column: 16, scope: !130)
!132 = !DILocation(line: 48, column: 25, scope: !130)
!133 = !DILocation(line: 48, column: 13, scope: !65)
!134 = !DILocation(line: 50, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !45, line: 49, column: 9)
!136 = !DILocation(line: 50, column: 19, scope: !135)
!137 = !DILocation(line: 51, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !45, line: 51, column: 17)
!139 = !DILocation(line: 51, column: 23, scope: !138)
!140 = !DILocation(line: 51, column: 17, scope: !135)
!141 = !DILocation(line: 54, column: 27, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !45, line: 54, column: 21)
!143 = distinct !DILexicalBlock(scope: !138, file: !45, line: 52, column: 13)
!144 = !DILocation(line: 54, column: 32, scope: !142)
!145 = !DILocation(line: 54, column: 31, scope: !142)
!146 = !DILocation(line: 54, column: 51, scope: !142)
!147 = !DILocation(line: 54, column: 50, scope: !142)
!148 = !DILocation(line: 54, column: 41, scope: !142)
!149 = !DILocation(line: 54, column: 61, scope: !142)
!150 = !DILocation(line: 54, column: 21, scope: !142)
!151 = !DILocation(line: 54, column: 68, scope: !142)
!152 = !DILocation(line: 54, column: 21, scope: !143)
!153 = !DILocation(line: 56, column: 21, scope: !154)
!154 = distinct !DILexicalBlock(scope: !142, file: !45, line: 55, column: 17)
!155 = !DILocation(line: 58, column: 21, scope: !154)
!156 = !DILocation(line: 58, column: 26, scope: !154)
!157 = !DILocation(line: 58, column: 35, scope: !154)
!158 = !DILocation(line: 59, column: 17, scope: !154)
!159 = !DILocation(line: 60, column: 24, scope: !143)
!160 = !DILocation(line: 60, column: 17, scope: !143)
!161 = !DILocation(line: 61, column: 13, scope: !143)
!162 = !DILocation(line: 62, column: 9, scope: !135)
!163 = !DILocalVariable(name: "i", scope: !164, file: !45, line: 74, type: !23)
!164 = distinct !DILexicalBlock(scope: !52, file: !45, line: 73, column: 5)
!165 = !DILocation(line: 74, column: 13, scope: !164)
!166 = !DILocalVariable(name: "n", scope: !164, file: !45, line: 74, type: !23)
!167 = !DILocation(line: 74, column: 16, scope: !164)
!168 = !DILocalVariable(name: "intVariable", scope: !164, file: !45, line: 74, type: !23)
!169 = !DILocation(line: 74, column: 19, scope: !164)
!170 = !DILocation(line: 75, column: 20, scope: !171)
!171 = distinct !DILexicalBlock(scope: !164, file: !45, line: 75, column: 13)
!172 = !DILocation(line: 75, column: 13, scope: !171)
!173 = !DILocation(line: 75, column: 36, scope: !171)
!174 = !DILocation(line: 75, column: 13, scope: !164)
!175 = !DILocation(line: 78, column: 25, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !45, line: 76, column: 9)
!177 = !DILocation(line: 79, column: 20, scope: !178)
!178 = distinct !DILexicalBlock(scope: !176, file: !45, line: 79, column: 13)
!179 = !DILocation(line: 79, column: 18, scope: !178)
!180 = !DILocation(line: 79, column: 25, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !45, line: 79, column: 13)
!182 = !DILocation(line: 79, column: 29, scope: !181)
!183 = !DILocation(line: 79, column: 27, scope: !181)
!184 = !DILocation(line: 79, column: 13, scope: !178)
!185 = !DILocation(line: 82, column: 28, scope: !186)
!186 = distinct !DILexicalBlock(scope: !181, file: !45, line: 80, column: 13)
!187 = !DILocation(line: 83, column: 13, scope: !186)
!188 = !DILocation(line: 79, column: 33, scope: !181)
!189 = !DILocation(line: 79, column: 13, scope: !181)
!190 = distinct !{!190, !184, !191, !192}
!191 = !DILocation(line: 83, column: 13, scope: !178)
!192 = !{!"llvm.loop.mustprogress"}
!193 = !DILocation(line: 84, column: 26, scope: !176)
!194 = !DILocation(line: 84, column: 13, scope: !176)
!195 = !DILocation(line: 85, column: 9, scope: !176)
!196 = !DILocation(line: 93, column: 1, scope: !52)
!197 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 100, type: !53, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!198 = !DILocalVariable(name: "data", scope: !197, file: !45, line: 102, type: !42)
!199 = !DILocation(line: 102, column: 12, scope: !197)
!200 = !DILocalVariable(name: "dataBuffer", scope: !197, file: !45, line: 103, type: !58)
!201 = !DILocation(line: 103, column: 10, scope: !197)
!202 = !DILocation(line: 104, column: 12, scope: !197)
!203 = !DILocation(line: 104, column: 10, scope: !197)
!204 = !DILocalVariable(name: "dataLen", scope: !205, file: !45, line: 110, type: !66)
!205 = distinct !DILexicalBlock(scope: !197, file: !45, line: 108, column: 5)
!206 = !DILocation(line: 110, column: 16, scope: !205)
!207 = !DILocation(line: 110, column: 33, scope: !205)
!208 = !DILocation(line: 110, column: 26, scope: !205)
!209 = !DILocalVariable(name: "pFile", scope: !205, file: !45, line: 111, type: !73)
!210 = !DILocation(line: 111, column: 16, scope: !205)
!211 = !DILocation(line: 113, column: 17, scope: !212)
!212 = distinct !DILexicalBlock(scope: !205, file: !45, line: 113, column: 13)
!213 = !DILocation(line: 113, column: 16, scope: !212)
!214 = !DILocation(line: 113, column: 25, scope: !212)
!215 = !DILocation(line: 113, column: 13, scope: !205)
!216 = !DILocation(line: 115, column: 21, scope: !217)
!217 = distinct !DILexicalBlock(scope: !212, file: !45, line: 114, column: 9)
!218 = !DILocation(line: 115, column: 19, scope: !217)
!219 = !DILocation(line: 116, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !45, line: 116, column: 17)
!221 = !DILocation(line: 116, column: 23, scope: !220)
!222 = !DILocation(line: 116, column: 17, scope: !217)
!223 = !DILocation(line: 119, column: 27, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !45, line: 119, column: 21)
!225 = distinct !DILexicalBlock(scope: !220, file: !45, line: 117, column: 13)
!226 = !DILocation(line: 119, column: 32, scope: !224)
!227 = !DILocation(line: 119, column: 31, scope: !224)
!228 = !DILocation(line: 119, column: 51, scope: !224)
!229 = !DILocation(line: 119, column: 50, scope: !224)
!230 = !DILocation(line: 119, column: 41, scope: !224)
!231 = !DILocation(line: 119, column: 61, scope: !224)
!232 = !DILocation(line: 119, column: 21, scope: !224)
!233 = !DILocation(line: 119, column: 68, scope: !224)
!234 = !DILocation(line: 119, column: 21, scope: !225)
!235 = !DILocation(line: 121, column: 21, scope: !236)
!236 = distinct !DILexicalBlock(scope: !224, file: !45, line: 120, column: 17)
!237 = !DILocation(line: 123, column: 21, scope: !236)
!238 = !DILocation(line: 123, column: 26, scope: !236)
!239 = !DILocation(line: 123, column: 35, scope: !236)
!240 = !DILocation(line: 124, column: 17, scope: !236)
!241 = !DILocation(line: 125, column: 24, scope: !225)
!242 = !DILocation(line: 125, column: 17, scope: !225)
!243 = !DILocation(line: 126, column: 13, scope: !225)
!244 = !DILocation(line: 127, column: 9, scope: !217)
!245 = !DILocalVariable(name: "i", scope: !246, file: !45, line: 143, type: !23)
!246 = distinct !DILexicalBlock(scope: !197, file: !45, line: 142, column: 5)
!247 = !DILocation(line: 143, column: 13, scope: !246)
!248 = !DILocalVariable(name: "n", scope: !246, file: !45, line: 143, type: !23)
!249 = !DILocation(line: 143, column: 16, scope: !246)
!250 = !DILocalVariable(name: "intVariable", scope: !246, file: !45, line: 143, type: !23)
!251 = !DILocation(line: 143, column: 19, scope: !246)
!252 = !DILocation(line: 144, column: 20, scope: !253)
!253 = distinct !DILexicalBlock(scope: !246, file: !45, line: 144, column: 13)
!254 = !DILocation(line: 144, column: 13, scope: !253)
!255 = !DILocation(line: 144, column: 36, scope: !253)
!256 = !DILocation(line: 144, column: 13, scope: !246)
!257 = !DILocation(line: 147, column: 17, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !45, line: 147, column: 17)
!259 = distinct !DILexicalBlock(scope: !253, file: !45, line: 145, column: 9)
!260 = !DILocation(line: 147, column: 19, scope: !258)
!261 = !DILocation(line: 147, column: 17, scope: !259)
!262 = !DILocation(line: 149, column: 29, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !45, line: 148, column: 13)
!264 = !DILocation(line: 150, column: 24, scope: !265)
!265 = distinct !DILexicalBlock(scope: !263, file: !45, line: 150, column: 17)
!266 = !DILocation(line: 150, column: 22, scope: !265)
!267 = !DILocation(line: 150, column: 29, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !45, line: 150, column: 17)
!269 = !DILocation(line: 150, column: 33, scope: !268)
!270 = !DILocation(line: 150, column: 31, scope: !268)
!271 = !DILocation(line: 150, column: 17, scope: !265)
!272 = !DILocation(line: 153, column: 32, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !45, line: 151, column: 17)
!274 = !DILocation(line: 154, column: 17, scope: !273)
!275 = !DILocation(line: 150, column: 37, scope: !268)
!276 = !DILocation(line: 150, column: 17, scope: !268)
!277 = distinct !{!277, !271, !278, !192}
!278 = !DILocation(line: 154, column: 17, scope: !265)
!279 = !DILocation(line: 155, column: 30, scope: !263)
!280 = !DILocation(line: 155, column: 17, scope: !263)
!281 = !DILocation(line: 156, column: 13, scope: !263)
!282 = !DILocation(line: 157, column: 9, scope: !259)
!283 = !DILocation(line: 161, column: 1, scope: !197)
!284 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 164, type: !53, scopeLine: 165, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!285 = !DILocalVariable(name: "data", scope: !284, file: !45, line: 166, type: !42)
!286 = !DILocation(line: 166, column: 12, scope: !284)
!287 = !DILocalVariable(name: "dataBuffer", scope: !284, file: !45, line: 167, type: !58)
!288 = !DILocation(line: 167, column: 10, scope: !284)
!289 = !DILocation(line: 168, column: 12, scope: !284)
!290 = !DILocation(line: 168, column: 10, scope: !284)
!291 = !DILocalVariable(name: "dataLen", scope: !292, file: !45, line: 174, type: !66)
!292 = distinct !DILexicalBlock(scope: !284, file: !45, line: 172, column: 5)
!293 = !DILocation(line: 174, column: 16, scope: !292)
!294 = !DILocation(line: 174, column: 33, scope: !292)
!295 = !DILocation(line: 174, column: 26, scope: !292)
!296 = !DILocalVariable(name: "pFile", scope: !292, file: !45, line: 175, type: !73)
!297 = !DILocation(line: 175, column: 16, scope: !292)
!298 = !DILocation(line: 177, column: 17, scope: !299)
!299 = distinct !DILexicalBlock(scope: !292, file: !45, line: 177, column: 13)
!300 = !DILocation(line: 177, column: 16, scope: !299)
!301 = !DILocation(line: 177, column: 25, scope: !299)
!302 = !DILocation(line: 177, column: 13, scope: !292)
!303 = !DILocation(line: 179, column: 21, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !45, line: 178, column: 9)
!305 = !DILocation(line: 179, column: 19, scope: !304)
!306 = !DILocation(line: 180, column: 17, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !45, line: 180, column: 17)
!308 = !DILocation(line: 180, column: 23, scope: !307)
!309 = !DILocation(line: 180, column: 17, scope: !304)
!310 = !DILocation(line: 183, column: 27, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !45, line: 183, column: 21)
!312 = distinct !DILexicalBlock(scope: !307, file: !45, line: 181, column: 13)
!313 = !DILocation(line: 183, column: 32, scope: !311)
!314 = !DILocation(line: 183, column: 31, scope: !311)
!315 = !DILocation(line: 183, column: 51, scope: !311)
!316 = !DILocation(line: 183, column: 50, scope: !311)
!317 = !DILocation(line: 183, column: 41, scope: !311)
!318 = !DILocation(line: 183, column: 61, scope: !311)
!319 = !DILocation(line: 183, column: 21, scope: !311)
!320 = !DILocation(line: 183, column: 68, scope: !311)
!321 = !DILocation(line: 183, column: 21, scope: !312)
!322 = !DILocation(line: 185, column: 21, scope: !323)
!323 = distinct !DILexicalBlock(scope: !311, file: !45, line: 184, column: 17)
!324 = !DILocation(line: 187, column: 21, scope: !323)
!325 = !DILocation(line: 187, column: 26, scope: !323)
!326 = !DILocation(line: 187, column: 35, scope: !323)
!327 = !DILocation(line: 188, column: 17, scope: !323)
!328 = !DILocation(line: 189, column: 24, scope: !312)
!329 = !DILocation(line: 189, column: 17, scope: !312)
!330 = !DILocation(line: 190, column: 13, scope: !312)
!331 = !DILocation(line: 191, column: 9, scope: !304)
!332 = !DILocalVariable(name: "i", scope: !333, file: !45, line: 203, type: !23)
!333 = distinct !DILexicalBlock(scope: !284, file: !45, line: 202, column: 5)
!334 = !DILocation(line: 203, column: 13, scope: !333)
!335 = !DILocalVariable(name: "n", scope: !333, file: !45, line: 203, type: !23)
!336 = !DILocation(line: 203, column: 16, scope: !333)
!337 = !DILocalVariable(name: "intVariable", scope: !333, file: !45, line: 203, type: !23)
!338 = !DILocation(line: 203, column: 19, scope: !333)
!339 = !DILocation(line: 204, column: 20, scope: !340)
!340 = distinct !DILexicalBlock(scope: !333, file: !45, line: 204, column: 13)
!341 = !DILocation(line: 204, column: 13, scope: !340)
!342 = !DILocation(line: 204, column: 36, scope: !340)
!343 = !DILocation(line: 204, column: 13, scope: !333)
!344 = !DILocation(line: 207, column: 17, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !45, line: 207, column: 17)
!346 = distinct !DILexicalBlock(scope: !340, file: !45, line: 205, column: 9)
!347 = !DILocation(line: 207, column: 19, scope: !345)
!348 = !DILocation(line: 207, column: 17, scope: !346)
!349 = !DILocation(line: 209, column: 29, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !45, line: 208, column: 13)
!351 = !DILocation(line: 210, column: 24, scope: !352)
!352 = distinct !DILexicalBlock(scope: !350, file: !45, line: 210, column: 17)
!353 = !DILocation(line: 210, column: 22, scope: !352)
!354 = !DILocation(line: 210, column: 29, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !45, line: 210, column: 17)
!356 = !DILocation(line: 210, column: 33, scope: !355)
!357 = !DILocation(line: 210, column: 31, scope: !355)
!358 = !DILocation(line: 210, column: 17, scope: !352)
!359 = !DILocation(line: 213, column: 32, scope: !360)
!360 = distinct !DILexicalBlock(scope: !355, file: !45, line: 211, column: 17)
!361 = !DILocation(line: 214, column: 17, scope: !360)
!362 = !DILocation(line: 210, column: 37, scope: !355)
!363 = !DILocation(line: 210, column: 17, scope: !355)
!364 = distinct !{!364, !358, !365, !192}
!365 = !DILocation(line: 214, column: 17, scope: !352)
!366 = !DILocation(line: 215, column: 30, scope: !350)
!367 = !DILocation(line: 215, column: 17, scope: !350)
!368 = !DILocation(line: 216, column: 13, scope: !350)
!369 = !DILocation(line: 217, column: 9, scope: !346)
!370 = !DILocation(line: 225, column: 1, scope: !284)
!371 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 228, type: !53, scopeLine: 229, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!372 = !DILocalVariable(name: "data", scope: !371, file: !45, line: 230, type: !42)
!373 = !DILocation(line: 230, column: 12, scope: !371)
!374 = !DILocalVariable(name: "dataBuffer", scope: !371, file: !45, line: 231, type: !58)
!375 = !DILocation(line: 231, column: 10, scope: !371)
!376 = !DILocation(line: 232, column: 12, scope: !371)
!377 = !DILocation(line: 232, column: 10, scope: !371)
!378 = !DILocation(line: 241, column: 16, scope: !371)
!379 = !DILocation(line: 241, column: 9, scope: !371)
!380 = !DILocalVariable(name: "i", scope: !381, file: !45, line: 248, type: !23)
!381 = distinct !DILexicalBlock(scope: !371, file: !45, line: 247, column: 5)
!382 = !DILocation(line: 248, column: 13, scope: !381)
!383 = !DILocalVariable(name: "n", scope: !381, file: !45, line: 248, type: !23)
!384 = !DILocation(line: 248, column: 16, scope: !381)
!385 = !DILocalVariable(name: "intVariable", scope: !381, file: !45, line: 248, type: !23)
!386 = !DILocation(line: 248, column: 19, scope: !381)
!387 = !DILocation(line: 249, column: 20, scope: !388)
!388 = distinct !DILexicalBlock(scope: !381, file: !45, line: 249, column: 13)
!389 = !DILocation(line: 249, column: 13, scope: !388)
!390 = !DILocation(line: 249, column: 36, scope: !388)
!391 = !DILocation(line: 249, column: 13, scope: !381)
!392 = !DILocation(line: 252, column: 25, scope: !393)
!393 = distinct !DILexicalBlock(scope: !388, file: !45, line: 250, column: 9)
!394 = !DILocation(line: 253, column: 20, scope: !395)
!395 = distinct !DILexicalBlock(scope: !393, file: !45, line: 253, column: 13)
!396 = !DILocation(line: 253, column: 18, scope: !395)
!397 = !DILocation(line: 253, column: 25, scope: !398)
!398 = distinct !DILexicalBlock(scope: !395, file: !45, line: 253, column: 13)
!399 = !DILocation(line: 253, column: 29, scope: !398)
!400 = !DILocation(line: 253, column: 27, scope: !398)
!401 = !DILocation(line: 253, column: 13, scope: !395)
!402 = !DILocation(line: 256, column: 28, scope: !403)
!403 = distinct !DILexicalBlock(scope: !398, file: !45, line: 254, column: 13)
!404 = !DILocation(line: 257, column: 13, scope: !403)
!405 = !DILocation(line: 253, column: 33, scope: !398)
!406 = !DILocation(line: 253, column: 13, scope: !398)
!407 = distinct !{!407, !401, !408, !192}
!408 = !DILocation(line: 257, column: 13, scope: !395)
!409 = !DILocation(line: 258, column: 26, scope: !393)
!410 = !DILocation(line: 258, column: 13, scope: !393)
!411 = !DILocation(line: 259, column: 9, scope: !393)
!412 = !DILocation(line: 267, column: 1, scope: !371)
!413 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 270, type: !53, scopeLine: 271, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!414 = !DILocalVariable(name: "data", scope: !413, file: !45, line: 272, type: !42)
!415 = !DILocation(line: 272, column: 12, scope: !413)
!416 = !DILocalVariable(name: "dataBuffer", scope: !413, file: !45, line: 273, type: !58)
!417 = !DILocation(line: 273, column: 10, scope: !413)
!418 = !DILocation(line: 274, column: 12, scope: !413)
!419 = !DILocation(line: 274, column: 10, scope: !413)
!420 = !DILocation(line: 279, column: 16, scope: !413)
!421 = !DILocation(line: 279, column: 9, scope: !413)
!422 = !DILocalVariable(name: "i", scope: !423, file: !45, line: 290, type: !23)
!423 = distinct !DILexicalBlock(scope: !413, file: !45, line: 289, column: 5)
!424 = !DILocation(line: 290, column: 13, scope: !423)
!425 = !DILocalVariable(name: "n", scope: !423, file: !45, line: 290, type: !23)
!426 = !DILocation(line: 290, column: 16, scope: !423)
!427 = !DILocalVariable(name: "intVariable", scope: !423, file: !45, line: 290, type: !23)
!428 = !DILocation(line: 290, column: 19, scope: !423)
!429 = !DILocation(line: 291, column: 20, scope: !430)
!430 = distinct !DILexicalBlock(scope: !423, file: !45, line: 291, column: 13)
!431 = !DILocation(line: 291, column: 13, scope: !430)
!432 = !DILocation(line: 291, column: 36, scope: !430)
!433 = !DILocation(line: 291, column: 13, scope: !423)
!434 = !DILocation(line: 294, column: 25, scope: !435)
!435 = distinct !DILexicalBlock(scope: !430, file: !45, line: 292, column: 9)
!436 = !DILocation(line: 295, column: 20, scope: !437)
!437 = distinct !DILexicalBlock(scope: !435, file: !45, line: 295, column: 13)
!438 = !DILocation(line: 295, column: 18, scope: !437)
!439 = !DILocation(line: 295, column: 25, scope: !440)
!440 = distinct !DILexicalBlock(scope: !437, file: !45, line: 295, column: 13)
!441 = !DILocation(line: 295, column: 29, scope: !440)
!442 = !DILocation(line: 295, column: 27, scope: !440)
!443 = !DILocation(line: 295, column: 13, scope: !437)
!444 = !DILocation(line: 298, column: 28, scope: !445)
!445 = distinct !DILexicalBlock(scope: !440, file: !45, line: 296, column: 13)
!446 = !DILocation(line: 299, column: 13, scope: !445)
!447 = !DILocation(line: 295, column: 33, scope: !440)
!448 = !DILocation(line: 295, column: 13, scope: !440)
!449 = distinct !{!449, !443, !450, !192}
!450 = !DILocation(line: 299, column: 13, scope: !437)
!451 = !DILocation(line: 300, column: 26, scope: !435)
!452 = !DILocation(line: 300, column: 13, scope: !435)
!453 = !DILocation(line: 301, column: 9, scope: !435)
!454 = !DILocation(line: 309, column: 1, scope: !413)
!455 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_15_good", scope: !45, file: !45, line: 311, type: !53, scopeLine: 312, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!456 = !DILocation(line: 313, column: 5, scope: !455)
!457 = !DILocation(line: 314, column: 5, scope: !455)
!458 = !DILocation(line: 315, column: 5, scope: !455)
!459 = !DILocation(line: 316, column: 5, scope: !455)
!460 = !DILocation(line: 317, column: 1, scope: !455)
!461 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !462, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !42}
!464 = !DILocalVariable(name: "line", arg: 1, scope: !461, file: !3, line: 11, type: !42)
!465 = !DILocation(line: 11, column: 25, scope: !461)
!466 = !DILocation(line: 13, column: 1, scope: !461)
!467 = !DILocation(line: 14, column: 8, scope: !468)
!468 = distinct !DILexicalBlock(scope: !461, file: !3, line: 14, column: 8)
!469 = !DILocation(line: 14, column: 13, scope: !468)
!470 = !DILocation(line: 14, column: 8, scope: !461)
!471 = !DILocation(line: 16, column: 24, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !3, line: 15, column: 5)
!473 = !DILocation(line: 16, column: 9, scope: !472)
!474 = !DILocation(line: 17, column: 5, scope: !472)
!475 = !DILocation(line: 18, column: 5, scope: !461)
!476 = !DILocation(line: 19, column: 1, scope: !461)
!477 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !462, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!478 = !DILocalVariable(name: "line", arg: 1, scope: !477, file: !3, line: 20, type: !42)
!479 = !DILocation(line: 20, column: 29, scope: !477)
!480 = !DILocation(line: 22, column: 8, scope: !481)
!481 = distinct !DILexicalBlock(scope: !477, file: !3, line: 22, column: 8)
!482 = !DILocation(line: 22, column: 13, scope: !481)
!483 = !DILocation(line: 22, column: 8, scope: !477)
!484 = !DILocation(line: 24, column: 24, scope: !485)
!485 = distinct !DILexicalBlock(scope: !481, file: !3, line: 23, column: 5)
!486 = !DILocation(line: 24, column: 9, scope: !485)
!487 = !DILocation(line: 25, column: 5, scope: !485)
!488 = !DILocation(line: 26, column: 1, scope: !477)
!489 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !490, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !492}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !67, line: 74, baseType: !23)
!494 = !DILocalVariable(name: "line", arg: 1, scope: !489, file: !3, line: 27, type: !492)
!495 = !DILocation(line: 27, column: 29, scope: !489)
!496 = !DILocation(line: 29, column: 8, scope: !497)
!497 = distinct !DILexicalBlock(scope: !489, file: !3, line: 29, column: 8)
!498 = !DILocation(line: 29, column: 13, scope: !497)
!499 = !DILocation(line: 29, column: 8, scope: !489)
!500 = !DILocation(line: 31, column: 27, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !3, line: 30, column: 5)
!502 = !DILocation(line: 31, column: 9, scope: !501)
!503 = !DILocation(line: 32, column: 5, scope: !501)
!504 = !DILocation(line: 33, column: 1, scope: !489)
!505 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !506, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!506 = !DISubroutineType(types: !507)
!507 = !{null, !23}
!508 = !DILocalVariable(name: "intNumber", arg: 1, scope: !505, file: !3, line: 35, type: !23)
!509 = !DILocation(line: 35, column: 24, scope: !505)
!510 = !DILocation(line: 37, column: 20, scope: !505)
!511 = !DILocation(line: 37, column: 5, scope: !505)
!512 = !DILocation(line: 38, column: 1, scope: !505)
!513 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !514, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !516}
!516 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!517 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !513, file: !3, line: 40, type: !516)
!518 = !DILocation(line: 40, column: 28, scope: !513)
!519 = !DILocation(line: 42, column: 21, scope: !513)
!520 = !DILocation(line: 42, column: 5, scope: !513)
!521 = !DILocation(line: 43, column: 1, scope: !513)
!522 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !523, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !525}
!525 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!526 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !522, file: !3, line: 45, type: !525)
!527 = !DILocation(line: 45, column: 28, scope: !522)
!528 = !DILocation(line: 47, column: 20, scope: !522)
!529 = !DILocation(line: 47, column: 5, scope: !522)
!530 = !DILocation(line: 48, column: 1, scope: !522)
!531 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !532, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !101}
!534 = !DILocalVariable(name: "longNumber", arg: 1, scope: !531, file: !3, line: 50, type: !101)
!535 = !DILocation(line: 50, column: 26, scope: !531)
!536 = !DILocation(line: 52, column: 21, scope: !531)
!537 = !DILocation(line: 52, column: 5, scope: !531)
!538 = !DILocation(line: 53, column: 1, scope: !531)
!539 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !540, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!540 = !DISubroutineType(types: !541)
!541 = !{null, !542}
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !543, line: 27, baseType: !544)
!543 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !100, line: 44, baseType: !101)
!545 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !539, file: !3, line: 55, type: !542)
!546 = !DILocation(line: 55, column: 33, scope: !539)
!547 = !DILocation(line: 57, column: 29, scope: !539)
!548 = !DILocation(line: 57, column: 5, scope: !539)
!549 = !DILocation(line: 58, column: 1, scope: !539)
!550 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !551, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !66}
!553 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !550, file: !3, line: 60, type: !66)
!554 = !DILocation(line: 60, column: 29, scope: !550)
!555 = !DILocation(line: 62, column: 21, scope: !550)
!556 = !DILocation(line: 62, column: 5, scope: !550)
!557 = !DILocation(line: 63, column: 1, scope: !550)
!558 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !559, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !43}
!561 = !DILocalVariable(name: "charHex", arg: 1, scope: !558, file: !3, line: 65, type: !43)
!562 = !DILocation(line: 65, column: 29, scope: !558)
!563 = !DILocation(line: 67, column: 22, scope: !558)
!564 = !DILocation(line: 67, column: 5, scope: !558)
!565 = !DILocation(line: 68, column: 1, scope: !558)
!566 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !567, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!567 = !DISubroutineType(types: !568)
!568 = !{null, !493}
!569 = !DILocalVariable(name: "wideChar", arg: 1, scope: !566, file: !3, line: 70, type: !493)
!570 = !DILocation(line: 70, column: 29, scope: !566)
!571 = !DILocalVariable(name: "s", scope: !566, file: !3, line: 74, type: !572)
!572 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, size: 64, elements: !573)
!573 = !{!574}
!574 = !DISubrange(count: 2)
!575 = !DILocation(line: 74, column: 13, scope: !566)
!576 = !DILocation(line: 75, column: 16, scope: !566)
!577 = !DILocation(line: 75, column: 9, scope: !566)
!578 = !DILocation(line: 75, column: 14, scope: !566)
!579 = !DILocation(line: 76, column: 9, scope: !566)
!580 = !DILocation(line: 76, column: 14, scope: !566)
!581 = !DILocation(line: 77, column: 21, scope: !566)
!582 = !DILocation(line: 77, column: 5, scope: !566)
!583 = !DILocation(line: 78, column: 1, scope: !566)
!584 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !585, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!585 = !DISubroutineType(types: !586)
!586 = !{null, !7}
!587 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !584, file: !3, line: 80, type: !7)
!588 = !DILocation(line: 80, column: 33, scope: !584)
!589 = !DILocation(line: 82, column: 20, scope: !584)
!590 = !DILocation(line: 82, column: 5, scope: !584)
!591 = !DILocation(line: 83, column: 1, scope: !584)
!592 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !593, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !25}
!595 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !592, file: !3, line: 85, type: !25)
!596 = !DILocation(line: 85, column: 45, scope: !592)
!597 = !DILocation(line: 87, column: 22, scope: !592)
!598 = !DILocation(line: 87, column: 5, scope: !592)
!599 = !DILocation(line: 88, column: 1, scope: !592)
!600 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !601, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !603}
!603 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!604 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !600, file: !3, line: 90, type: !603)
!605 = !DILocation(line: 90, column: 29, scope: !600)
!606 = !DILocation(line: 92, column: 20, scope: !600)
!607 = !DILocation(line: 92, column: 5, scope: !600)
!608 = !DILocation(line: 93, column: 1, scope: !600)
!609 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !610, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!610 = !DISubroutineType(types: !611)
!611 = !{null, !612}
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !614, line: 100, baseType: !615)
!614 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_088/source_code")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !614, line: 96, size: 64, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !615, file: !614, line: 98, baseType: !23, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !615, file: !614, line: 99, baseType: !23, size: 32, offset: 32)
!619 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !609, file: !3, line: 95, type: !612)
!620 = !DILocation(line: 95, column: 40, scope: !609)
!621 = !DILocation(line: 97, column: 26, scope: !609)
!622 = !DILocation(line: 97, column: 47, scope: !609)
!623 = !DILocation(line: 97, column: 55, scope: !609)
!624 = !DILocation(line: 97, column: 76, scope: !609)
!625 = !DILocation(line: 97, column: 5, scope: !609)
!626 = !DILocation(line: 98, column: 1, scope: !609)
!627 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !628, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!628 = !DISubroutineType(types: !629)
!629 = !{null, !630, !66}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!631 = !DILocalVariable(name: "bytes", arg: 1, scope: !627, file: !3, line: 100, type: !630)
!632 = !DILocation(line: 100, column: 38, scope: !627)
!633 = !DILocalVariable(name: "numBytes", arg: 2, scope: !627, file: !3, line: 100, type: !66)
!634 = !DILocation(line: 100, column: 52, scope: !627)
!635 = !DILocalVariable(name: "i", scope: !627, file: !3, line: 102, type: !66)
!636 = !DILocation(line: 102, column: 12, scope: !627)
!637 = !DILocation(line: 103, column: 12, scope: !638)
!638 = distinct !DILexicalBlock(scope: !627, file: !3, line: 103, column: 5)
!639 = !DILocation(line: 103, column: 10, scope: !638)
!640 = !DILocation(line: 103, column: 17, scope: !641)
!641 = distinct !DILexicalBlock(scope: !638, file: !3, line: 103, column: 5)
!642 = !DILocation(line: 103, column: 21, scope: !641)
!643 = !DILocation(line: 103, column: 19, scope: !641)
!644 = !DILocation(line: 103, column: 5, scope: !638)
!645 = !DILocation(line: 105, column: 24, scope: !646)
!646 = distinct !DILexicalBlock(scope: !641, file: !3, line: 104, column: 5)
!647 = !DILocation(line: 105, column: 30, scope: !646)
!648 = !DILocation(line: 105, column: 9, scope: !646)
!649 = !DILocation(line: 106, column: 5, scope: !646)
!650 = !DILocation(line: 103, column: 31, scope: !641)
!651 = !DILocation(line: 103, column: 5, scope: !641)
!652 = distinct !{!652, !644, !653, !192}
!653 = !DILocation(line: 106, column: 5, scope: !638)
!654 = !DILocation(line: 107, column: 5, scope: !627)
!655 = !DILocation(line: 108, column: 1, scope: !627)
!656 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !657, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!657 = !DISubroutineType(types: !658)
!658 = !{!66, !630, !66, !42}
!659 = !DILocalVariable(name: "bytes", arg: 1, scope: !656, file: !3, line: 113, type: !630)
!660 = !DILocation(line: 113, column: 39, scope: !656)
!661 = !DILocalVariable(name: "numBytes", arg: 2, scope: !656, file: !3, line: 113, type: !66)
!662 = !DILocation(line: 113, column: 53, scope: !656)
!663 = !DILocalVariable(name: "hex", arg: 3, scope: !656, file: !3, line: 113, type: !42)
!664 = !DILocation(line: 113, column: 71, scope: !656)
!665 = !DILocalVariable(name: "numWritten", scope: !656, file: !3, line: 115, type: !66)
!666 = !DILocation(line: 115, column: 12, scope: !656)
!667 = !DILocation(line: 121, column: 5, scope: !656)
!668 = !DILocation(line: 121, column: 12, scope: !656)
!669 = !DILocation(line: 121, column: 25, scope: !656)
!670 = !DILocation(line: 121, column: 23, scope: !656)
!671 = !DILocation(line: 121, column: 34, scope: !656)
!672 = !DILocation(line: 121, column: 37, scope: !656)
!673 = !DILocation(line: 121, column: 67, scope: !656)
!674 = !DILocation(line: 121, column: 70, scope: !656)
!675 = !DILocation(line: 0, scope: !656)
!676 = !DILocalVariable(name: "byte", scope: !677, file: !3, line: 123, type: !23)
!677 = distinct !DILexicalBlock(scope: !656, file: !3, line: 122, column: 5)
!678 = !DILocation(line: 123, column: 13, scope: !677)
!679 = !DILocation(line: 124, column: 17, scope: !677)
!680 = !DILocation(line: 124, column: 25, scope: !677)
!681 = !DILocation(line: 124, column: 23, scope: !677)
!682 = !DILocation(line: 124, column: 9, scope: !677)
!683 = !DILocation(line: 125, column: 45, scope: !677)
!684 = !DILocation(line: 125, column: 29, scope: !677)
!685 = !DILocation(line: 125, column: 9, scope: !677)
!686 = !DILocation(line: 125, column: 15, scope: !677)
!687 = !DILocation(line: 125, column: 27, scope: !677)
!688 = !DILocation(line: 126, column: 9, scope: !677)
!689 = distinct !{!689, !667, !690, !192}
!690 = !DILocation(line: 127, column: 5, scope: !656)
!691 = !DILocation(line: 129, column: 12, scope: !656)
!692 = !DILocation(line: 129, column: 5, scope: !656)
!693 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !694, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!694 = !DISubroutineType(types: !695)
!695 = !{!66, !630, !66, !492}
!696 = !DILocalVariable(name: "bytes", arg: 1, scope: !693, file: !3, line: 135, type: !630)
!697 = !DILocation(line: 135, column: 41, scope: !693)
!698 = !DILocalVariable(name: "numBytes", arg: 2, scope: !693, file: !3, line: 135, type: !66)
!699 = !DILocation(line: 135, column: 55, scope: !693)
!700 = !DILocalVariable(name: "hex", arg: 3, scope: !693, file: !3, line: 135, type: !492)
!701 = !DILocation(line: 135, column: 76, scope: !693)
!702 = !DILocalVariable(name: "numWritten", scope: !693, file: !3, line: 137, type: !66)
!703 = !DILocation(line: 137, column: 12, scope: !693)
!704 = !DILocation(line: 143, column: 5, scope: !693)
!705 = !DILocation(line: 143, column: 12, scope: !693)
!706 = !DILocation(line: 143, column: 25, scope: !693)
!707 = !DILocation(line: 143, column: 23, scope: !693)
!708 = !DILocation(line: 143, column: 34, scope: !693)
!709 = !DILocation(line: 143, column: 47, scope: !693)
!710 = !DILocation(line: 143, column: 55, scope: !693)
!711 = !DILocation(line: 143, column: 53, scope: !693)
!712 = !DILocation(line: 143, column: 37, scope: !693)
!713 = !DILocation(line: 143, column: 68, scope: !693)
!714 = !DILocation(line: 143, column: 81, scope: !693)
!715 = !DILocation(line: 143, column: 89, scope: !693)
!716 = !DILocation(line: 143, column: 87, scope: !693)
!717 = !DILocation(line: 143, column: 100, scope: !693)
!718 = !DILocation(line: 143, column: 71, scope: !693)
!719 = !DILocation(line: 0, scope: !693)
!720 = !DILocalVariable(name: "byte", scope: !721, file: !3, line: 145, type: !23)
!721 = distinct !DILexicalBlock(scope: !693, file: !3, line: 144, column: 5)
!722 = !DILocation(line: 145, column: 13, scope: !721)
!723 = !DILocation(line: 146, column: 18, scope: !721)
!724 = !DILocation(line: 146, column: 26, scope: !721)
!725 = !DILocation(line: 146, column: 24, scope: !721)
!726 = !DILocation(line: 146, column: 9, scope: !721)
!727 = !DILocation(line: 147, column: 45, scope: !721)
!728 = !DILocation(line: 147, column: 29, scope: !721)
!729 = !DILocation(line: 147, column: 9, scope: !721)
!730 = !DILocation(line: 147, column: 15, scope: !721)
!731 = !DILocation(line: 147, column: 27, scope: !721)
!732 = !DILocation(line: 148, column: 9, scope: !721)
!733 = distinct !{!733, !704, !734, !192}
!734 = !DILocation(line: 149, column: 5, scope: !693)
!735 = !DILocation(line: 151, column: 12, scope: !693)
!736 = !DILocation(line: 151, column: 5, scope: !693)
!737 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !738, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!738 = !DISubroutineType(types: !739)
!739 = !{!23}
!740 = !DILocation(line: 158, column: 5, scope: !737)
!741 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !738, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!742 = !DILocation(line: 163, column: 5, scope: !741)
!743 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !738, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!744 = !DILocation(line: 168, column: 13, scope: !743)
!745 = !DILocation(line: 168, column: 20, scope: !743)
!746 = !DILocation(line: 168, column: 5, scope: !743)
!747 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!748 = !DILocation(line: 187, column: 16, scope: !747)
!749 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!750 = !DILocation(line: 188, column: 16, scope: !749)
!751 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!752 = !DILocation(line: 189, column: 16, scope: !751)
!753 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!754 = !DILocation(line: 190, column: 16, scope: !753)
!755 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!756 = !DILocation(line: 191, column: 16, scope: !755)
!757 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!758 = !DILocation(line: 192, column: 16, scope: !757)
!759 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!760 = !DILocation(line: 193, column: 16, scope: !759)
!761 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!762 = !DILocation(line: 194, column: 16, scope: !761)
!763 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!764 = !DILocation(line: 195, column: 16, scope: !763)
!765 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!766 = !DILocation(line: 198, column: 15, scope: !765)
!767 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!768 = !DILocation(line: 199, column: 15, scope: !767)
!769 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!770 = !DILocation(line: 200, column: 15, scope: !769)
!771 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!772 = !DILocation(line: 201, column: 15, scope: !771)
!773 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!774 = !DILocation(line: 202, column: 15, scope: !773)
!775 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!776 = !DILocation(line: 203, column: 15, scope: !775)
!777 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!778 = !DILocation(line: 204, column: 15, scope: !777)
!779 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!780 = !DILocation(line: 205, column: 15, scope: !779)
!781 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!782 = !DILocation(line: 206, column: 15, scope: !781)
