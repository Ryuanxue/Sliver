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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_03_bad() #0 !dbg !52 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !64, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i64 @strlen(i8* %1) #7, !dbg !73
  store i64 %call, i64* %dataLen, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !74, metadata !DIExpression()), !dbg !130
  %2 = load i64, i64* %dataLen, align 8, !dbg !131
  %sub = sub i64 100, %2, !dbg !133
  %cmp = icmp ugt i64 %sub, 1, !dbg !134
  br i1 %cmp, label %if.then, label %if.end11, !dbg !135

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !136
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !138
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !139
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !141
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !142

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !143
  %5 = load i64, i64* %dataLen, align 8, !dbg !146
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !147
  %6 = load i64, i64* %dataLen, align 8, !dbg !148
  %sub4 = sub i64 100, %6, !dbg !149
  %conv = trunc i64 %sub4 to i32, !dbg !150
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !151
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !152
  %cmp6 = icmp eq i8* %call5, null, !dbg !153
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !154

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !155
  %8 = load i8*, i8** %data, align 8, !dbg !157
  %9 = load i64, i64* %dataLen, align 8, !dbg !158
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !157
  store i8 0, i8* %arrayidx, align 1, !dbg !159
  br label %if.end, !dbg !160

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !161
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !162
  br label %if.end10, !dbg !163

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !164

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !165, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata i32* %n, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !172, metadata !DIExpression()), !dbg !173
  %11 = load i8*, i8** %data, align 8, !dbg !174
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !176
  %cmp13 = icmp eq i32 %call12, 1, !dbg !177
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !178

if.then15:                                        ; preds = %if.end11
  store i32 0, i32* %intVariable, align 4, !dbg !179
  store i32 0, i32* %i, align 4, !dbg !181
  br label %for.cond, !dbg !183

for.cond:                                         ; preds = %for.inc, %if.then15
  %12 = load i32, i32* %i, align 4, !dbg !184
  %13 = load i32, i32* %n, align 4, !dbg !186
  %cmp16 = icmp slt i32 %12, %13, !dbg !187
  br i1 %cmp16, label %for.body, label %for.end, !dbg !188

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !189
  %inc = add nsw i32 %14, 1, !dbg !189
  store i32 %inc, i32* %intVariable, align 4, !dbg !189
  br label %for.inc, !dbg !191

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !192
  %inc18 = add nsw i32 %15, 1, !dbg !192
  store i32 %inc18, i32* %i, align 4, !dbg !192
  br label %for.cond, !dbg !193, !llvm.loop !194

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !197
  call void @printIntLine(i32 %16), !dbg !198
  br label %if.end19, !dbg !199

if.end19:                                         ; preds = %for.end, %if.end11
  ret void, !dbg !200
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
define dso_local void @goodB2G1() #0 !dbg !201 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !204, metadata !DIExpression()), !dbg !205
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !205
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !205
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !206
  store i8* %arraydecay, i8** %data, align 8, !dbg !207
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !208, metadata !DIExpression()), !dbg !212
  %1 = load i8*, i8** %data, align 8, !dbg !213
  %call = call i64 @strlen(i8* %1) #7, !dbg !214
  store i64 %call, i64* %dataLen, align 8, !dbg !212
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !215, metadata !DIExpression()), !dbg !216
  %2 = load i64, i64* %dataLen, align 8, !dbg !217
  %sub = sub i64 100, %2, !dbg !219
  %cmp = icmp ugt i64 %sub, 1, !dbg !220
  br i1 %cmp, label %if.then, label %if.end11, !dbg !221

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !222
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !224
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !225
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !227
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !228

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !229
  %5 = load i64, i64* %dataLen, align 8, !dbg !232
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !233
  %6 = load i64, i64* %dataLen, align 8, !dbg !234
  %sub4 = sub i64 100, %6, !dbg !235
  %conv = trunc i64 %sub4 to i32, !dbg !236
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !237
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !238
  %cmp6 = icmp eq i8* %call5, null, !dbg !239
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !240

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !241
  %8 = load i8*, i8** %data, align 8, !dbg !243
  %9 = load i64, i64* %dataLen, align 8, !dbg !244
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !243
  store i8 0, i8* %arrayidx, align 1, !dbg !245
  br label %if.end, !dbg !246

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !247
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !248
  br label %if.end10, !dbg !249

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !250

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !251, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata i32* %n, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !258, metadata !DIExpression()), !dbg !259
  %11 = load i8*, i8** %data, align 8, !dbg !260
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !262
  %cmp13 = icmp eq i32 %call12, 1, !dbg !263
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !264

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %n, align 4, !dbg !265
  %cmp16 = icmp slt i32 %12, 10000, !dbg !268
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !269

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !270
  store i32 0, i32* %i, align 4, !dbg !272
  br label %for.cond, !dbg !274

for.cond:                                         ; preds = %for.inc, %if.then18
  %13 = load i32, i32* %i, align 4, !dbg !275
  %14 = load i32, i32* %n, align 4, !dbg !277
  %cmp19 = icmp slt i32 %13, %14, !dbg !278
  br i1 %cmp19, label %for.body, label %for.end, !dbg !279

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !280
  %inc = add nsw i32 %15, 1, !dbg !280
  store i32 %inc, i32* %intVariable, align 4, !dbg !280
  br label %for.inc, !dbg !282

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !283
  %inc21 = add nsw i32 %16, 1, !dbg !283
  store i32 %inc21, i32* %i, align 4, !dbg !283
  br label %for.cond, !dbg !284, !llvm.loop !285

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !287
  call void @printIntLine(i32 %17), !dbg !288
  br label %if.end22, !dbg !289

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !290

if.end23:                                         ; preds = %if.end22, %if.end11
  ret void, !dbg !291
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !292 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !295, metadata !DIExpression()), !dbg !296
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !296
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !296
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !297
  store i8* %arraydecay, i8** %data, align 8, !dbg !298
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !299, metadata !DIExpression()), !dbg !303
  %1 = load i8*, i8** %data, align 8, !dbg !304
  %call = call i64 @strlen(i8* %1) #7, !dbg !305
  store i64 %call, i64* %dataLen, align 8, !dbg !303
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !306, metadata !DIExpression()), !dbg !307
  %2 = load i64, i64* %dataLen, align 8, !dbg !308
  %sub = sub i64 100, %2, !dbg !310
  %cmp = icmp ugt i64 %sub, 1, !dbg !311
  br i1 %cmp, label %if.then, label %if.end11, !dbg !312

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !313
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !315
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !316
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !318
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !319

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !320
  %5 = load i64, i64* %dataLen, align 8, !dbg !323
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !324
  %6 = load i64, i64* %dataLen, align 8, !dbg !325
  %sub4 = sub i64 100, %6, !dbg !326
  %conv = trunc i64 %sub4 to i32, !dbg !327
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !328
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !329
  %cmp6 = icmp eq i8* %call5, null, !dbg !330
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !331

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !332
  %8 = load i8*, i8** %data, align 8, !dbg !334
  %9 = load i64, i64* %dataLen, align 8, !dbg !335
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !334
  store i8 0, i8* %arrayidx, align 1, !dbg !336
  br label %if.end, !dbg !337

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !338
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !339
  br label %if.end10, !dbg !340

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !341

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !342, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata i32* %n, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !349, metadata !DIExpression()), !dbg !350
  %11 = load i8*, i8** %data, align 8, !dbg !351
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !353
  %cmp13 = icmp eq i32 %call12, 1, !dbg !354
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !355

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %n, align 4, !dbg !356
  %cmp16 = icmp slt i32 %12, 10000, !dbg !359
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !360

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !361
  store i32 0, i32* %i, align 4, !dbg !363
  br label %for.cond, !dbg !365

for.cond:                                         ; preds = %for.inc, %if.then18
  %13 = load i32, i32* %i, align 4, !dbg !366
  %14 = load i32, i32* %n, align 4, !dbg !368
  %cmp19 = icmp slt i32 %13, %14, !dbg !369
  br i1 %cmp19, label %for.body, label %for.end, !dbg !370

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !371
  %inc = add nsw i32 %15, 1, !dbg !371
  store i32 %inc, i32* %intVariable, align 4, !dbg !371
  br label %for.inc, !dbg !373

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !374
  %inc21 = add nsw i32 %16, 1, !dbg !374
  store i32 %inc21, i32* %i, align 4, !dbg !374
  br label %for.cond, !dbg !375, !llvm.loop !376

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !378
  call void @printIntLine(i32 %17), !dbg !379
  br label %if.end22, !dbg !380

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !381

if.end23:                                         ; preds = %if.end22, %if.end11
  ret void, !dbg !382
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !383 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !384, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !386, metadata !DIExpression()), !dbg !387
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !387
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !387
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !388
  store i8* %arraydecay, i8** %data, align 8, !dbg !389
  %1 = load i8*, i8** %data, align 8, !dbg !390
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !393
  call void @llvm.dbg.declare(metadata i32* %i, metadata !394, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata i32* %n, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !401, metadata !DIExpression()), !dbg !402
  %2 = load i8*, i8** %data, align 8, !dbg !403
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !405
  %cmp = icmp eq i32 %call1, 1, !dbg !406
  br i1 %cmp, label %if.then, label %if.end, !dbg !407

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !408
  store i32 0, i32* %i, align 4, !dbg !410
  br label %for.cond, !dbg !412

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !413
  %4 = load i32, i32* %n, align 4, !dbg !415
  %cmp2 = icmp slt i32 %3, %4, !dbg !416
  br i1 %cmp2, label %for.body, label %for.end, !dbg !417

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !418
  %inc = add nsw i32 %5, 1, !dbg !418
  store i32 %inc, i32* %intVariable, align 4, !dbg !418
  br label %for.inc, !dbg !420

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !421
  %inc3 = add nsw i32 %6, 1, !dbg !421
  store i32 %inc3, i32* %i, align 4, !dbg !421
  br label %for.cond, !dbg !422, !llvm.loop !423

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !425
  call void @printIntLine(i32 %7), !dbg !426
  br label %if.end, !dbg !427

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !428
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !429 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !430, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !432, metadata !DIExpression()), !dbg !433
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !433
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !433
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !434
  store i8* %arraydecay, i8** %data, align 8, !dbg !435
  %1 = load i8*, i8** %data, align 8, !dbg !436
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !439
  call void @llvm.dbg.declare(metadata i32* %i, metadata !440, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata i32* %n, metadata !445, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !447, metadata !DIExpression()), !dbg !448
  %2 = load i8*, i8** %data, align 8, !dbg !449
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !451
  %cmp = icmp eq i32 %call1, 1, !dbg !452
  br i1 %cmp, label %if.then, label %if.end, !dbg !453

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !454
  store i32 0, i32* %i, align 4, !dbg !456
  br label %for.cond, !dbg !458

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !459
  %4 = load i32, i32* %n, align 4, !dbg !461
  %cmp2 = icmp slt i32 %3, %4, !dbg !462
  br i1 %cmp2, label %for.body, label %for.end, !dbg !463

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !464
  %inc = add nsw i32 %5, 1, !dbg !464
  store i32 %inc, i32* %intVariable, align 4, !dbg !464
  br label %for.inc, !dbg !466

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !467
  %inc3 = add nsw i32 %6, 1, !dbg !467
  store i32 %inc3, i32* %i, align 4, !dbg !467
  br label %for.cond, !dbg !468, !llvm.loop !469

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !471
  call void @printIntLine(i32 %7), !dbg !472
  br label %if.end, !dbg !473

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !474
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_03_good() #0 !dbg !475 {
entry:
  call void @goodB2G1(), !dbg !476
  call void @goodB2G2(), !dbg !477
  call void @goodG2B1(), !dbg !478
  call void @goodG2B2(), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !481 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !484, metadata !DIExpression()), !dbg !485
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !486
  %0 = load i8*, i8** %line.addr, align 8, !dbg !487
  %cmp = icmp ne i8* %0, null, !dbg !489
  br i1 %cmp, label %if.then, label %if.end, !dbg !490

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !491
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !493
  br label %if.end, !dbg !494

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !495
  ret void, !dbg !496
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !497 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !498, metadata !DIExpression()), !dbg !499
  %0 = load i8*, i8** %line.addr, align 8, !dbg !500
  %cmp = icmp ne i8* %0, null, !dbg !502
  br i1 %cmp, label %if.then, label %if.end, !dbg !503

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !504
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !506
  br label %if.end, !dbg !507

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !508
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !509 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !514, metadata !DIExpression()), !dbg !515
  %0 = load i32*, i32** %line.addr, align 8, !dbg !516
  %cmp = icmp ne i32* %0, null, !dbg !518
  br i1 %cmp, label %if.then, label %if.end, !dbg !519

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !520
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !522
  br label %if.end, !dbg !523

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !524
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !525 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !528, metadata !DIExpression()), !dbg !529
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !530
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.11, i64 0, i64 0), i32 %0), !dbg !531
  ret void, !dbg !532
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !533 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !537, metadata !DIExpression()), !dbg !538
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !539
  %conv = sext i16 %0 to i32, !dbg !539
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.12, i64 0, i64 0), i32 %conv), !dbg !540
  ret void, !dbg !541
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !542 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !546, metadata !DIExpression()), !dbg !547
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !548
  %conv = fpext float %0 to double, !dbg !548
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !549
  ret void, !dbg !550
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !551 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !554, metadata !DIExpression()), !dbg !555
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !556
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !557
  ret void, !dbg !558
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !559 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !565, metadata !DIExpression()), !dbg !566
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !567
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !568
  ret void, !dbg !569
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !570 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !573, metadata !DIExpression()), !dbg !574
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !575
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !576
  ret void, !dbg !577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !578 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !581, metadata !DIExpression()), !dbg !582
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !583
  %conv = sext i8 %0 to i32, !dbg !583
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !584
  ret void, !dbg !585
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !586 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !589, metadata !DIExpression()), !dbg !590
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !591, metadata !DIExpression()), !dbg !595
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !596
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !597
  store i32 %0, i32* %arrayidx, align 4, !dbg !598
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !599
  store i32 0, i32* %arrayidx1, align 4, !dbg !600
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !601
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !602
  ret void, !dbg !603
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !604 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !607, metadata !DIExpression()), !dbg !608
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !609
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !610
  ret void, !dbg !611
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !612 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !615, metadata !DIExpression()), !dbg !616
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !617
  %conv = zext i8 %0 to i32, !dbg !617
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !618
  ret void, !dbg !619
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !620 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !624, metadata !DIExpression()), !dbg !625
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !626
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !627
  ret void, !dbg !628
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !629 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !639, metadata !DIExpression()), !dbg !640
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !641
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !642
  %1 = load i32, i32* %intOne, align 4, !dbg !642
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !643
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !644
  %3 = load i32, i32* %intTwo, align 4, !dbg !644
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !645
  ret void, !dbg !646
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !647 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !651, metadata !DIExpression()), !dbg !652
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !653, metadata !DIExpression()), !dbg !654
  call void @llvm.dbg.declare(metadata i64* %i, metadata !655, metadata !DIExpression()), !dbg !656
  store i64 0, i64* %i, align 8, !dbg !657
  br label %for.cond, !dbg !659

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !660
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !662
  %cmp = icmp ult i64 %0, %1, !dbg !663
  br i1 %cmp, label %for.body, label %for.end, !dbg !664

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !665
  %3 = load i64, i64* %i, align 8, !dbg !667
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !665
  %4 = load i8, i8* %arrayidx, align 1, !dbg !665
  %conv = zext i8 %4 to i32, !dbg !665
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !668
  br label %for.inc, !dbg !669

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !670
  %inc = add i64 %5, 1, !dbg !670
  store i64 %inc, i64* %i, align 8, !dbg !670
  br label %for.cond, !dbg !671, !llvm.loop !672

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !674
  ret void, !dbg !675
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !676 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !679, metadata !DIExpression()), !dbg !680
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !681, metadata !DIExpression()), !dbg !682
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !683, metadata !DIExpression()), !dbg !684
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !685, metadata !DIExpression()), !dbg !686
  store i64 0, i64* %numWritten, align 8, !dbg !686
  br label %while.cond, !dbg !687

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !688
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !689
  %cmp = icmp ult i64 %0, %1, !dbg !690
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !691

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !692
  %2 = load i16*, i16** %call, align 8, !dbg !692
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !692
  %4 = load i64, i64* %numWritten, align 8, !dbg !692
  %mul = mul i64 2, %4, !dbg !692
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !692
  %5 = load i8, i8* %arrayidx, align 1, !dbg !692
  %conv = sext i8 %5 to i32, !dbg !692
  %idxprom = sext i32 %conv to i64, !dbg !692
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !692
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !692
  %conv2 = zext i16 %6 to i32, !dbg !692
  %and = and i32 %conv2, 4096, !dbg !692
  %tobool = icmp ne i32 %and, 0, !dbg !692
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !693

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !694
  %7 = load i16*, i16** %call3, align 8, !dbg !694
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !694
  %9 = load i64, i64* %numWritten, align 8, !dbg !694
  %mul4 = mul i64 2, %9, !dbg !694
  %add = add i64 %mul4, 1, !dbg !694
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !694
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !694
  %conv6 = sext i8 %10 to i32, !dbg !694
  %idxprom7 = sext i32 %conv6 to i64, !dbg !694
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !694
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !694
  %conv9 = zext i16 %11 to i32, !dbg !694
  %and10 = and i32 %conv9, 4096, !dbg !694
  %tobool11 = icmp ne i32 %and10, 0, !dbg !693
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !695
  br i1 %12, label %while.body, label %while.end, !dbg !687

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !696, metadata !DIExpression()), !dbg !698
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !699
  %14 = load i64, i64* %numWritten, align 8, !dbg !700
  %mul12 = mul i64 2, %14, !dbg !701
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !699
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !702
  %15 = load i32, i32* %byte, align 4, !dbg !703
  %conv15 = trunc i32 %15 to i8, !dbg !704
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !705
  %17 = load i64, i64* %numWritten, align 8, !dbg !706
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !705
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !707
  %18 = load i64, i64* %numWritten, align 8, !dbg !708
  %inc = add i64 %18, 1, !dbg !708
  store i64 %inc, i64* %numWritten, align 8, !dbg !708
  br label %while.cond, !dbg !687, !llvm.loop !709

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !711
  ret i64 %19, !dbg !712
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !713 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !716, metadata !DIExpression()), !dbg !717
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !718, metadata !DIExpression()), !dbg !719
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !720, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !722, metadata !DIExpression()), !dbg !723
  store i64 0, i64* %numWritten, align 8, !dbg !723
  br label %while.cond, !dbg !724

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !725
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !726
  %cmp = icmp ult i64 %0, %1, !dbg !727
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !728

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !729
  %3 = load i64, i64* %numWritten, align 8, !dbg !730
  %mul = mul i64 2, %3, !dbg !731
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !729
  %4 = load i32, i32* %arrayidx, align 4, !dbg !729
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !732
  %tobool = icmp ne i32 %call, 0, !dbg !732
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !733

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !734
  %6 = load i64, i64* %numWritten, align 8, !dbg !735
  %mul1 = mul i64 2, %6, !dbg !736
  %add = add i64 %mul1, 1, !dbg !737
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !734
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !734
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !738
  %tobool4 = icmp ne i32 %call3, 0, !dbg !733
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !739
  br i1 %8, label %while.body, label %while.end, !dbg !724

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !740, metadata !DIExpression()), !dbg !742
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !743
  %10 = load i64, i64* %numWritten, align 8, !dbg !744
  %mul5 = mul i64 2, %10, !dbg !745
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !743
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !746
  %11 = load i32, i32* %byte, align 4, !dbg !747
  %conv = trunc i32 %11 to i8, !dbg !748
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !749
  %13 = load i64, i64* %numWritten, align 8, !dbg !750
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !749
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !751
  %14 = load i64, i64* %numWritten, align 8, !dbg !752
  %inc = add i64 %14, 1, !dbg !752
  store i64 %inc, i64* %numWritten, align 8, !dbg !752
  br label %while.cond, !dbg !724, !llvm.loop !753

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !755
  ret i64 %15, !dbg !756
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !757 {
entry:
  ret i32 1, !dbg !760
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !761 {
entry:
  ret i32 0, !dbg !762
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !763 {
entry:
  %call = call i32 @rand() #8, !dbg !764
  %rem = srem i32 %call, 2, !dbg !765
  ret i32 %rem, !dbg !766
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !767 {
entry:
  ret void, !dbg !768
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !769 {
entry:
  ret void, !dbg !770
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !771 {
entry:
  ret void, !dbg !772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !773 {
entry:
  ret void, !dbg !774
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !775 {
entry:
  ret void, !dbg !776
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !777 {
entry:
  ret void, !dbg !778
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !779 {
entry:
  ret void, !dbg !780
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !781 {
entry:
  ret void, !dbg !782
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !783 {
entry:
  ret void, !dbg !784
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !785 {
entry:
  ret void, !dbg !786
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !787 {
entry:
  ret void, !dbg !788
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !789 {
entry:
  ret void, !dbg !790
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !791 {
entry:
  ret void, !dbg !792
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !793 {
entry:
  ret void, !dbg !794
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !795 {
entry:
  ret void, !dbg !796
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !797 {
entry:
  ret void, !dbg !798
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !799 {
entry:
  ret void, !dbg !800
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !801 {
entry:
  ret void, !dbg !802
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_076/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_03.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_076/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_03_bad", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
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
!64 = !DILocalVariable(name: "dataLen", scope: !65, file: !45, line: 44, type: !68)
!65 = distinct !DILexicalBlock(scope: !66, file: !45, line: 42, column: 9)
!66 = distinct !DILexicalBlock(scope: !67, file: !45, line: 41, column: 5)
!67 = distinct !DILexicalBlock(scope: !52, file: !45, line: 40, column: 8)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 44, column: 20, scope: !65)
!72 = !DILocation(line: 44, column: 37, scope: !65)
!73 = !DILocation(line: 44, column: 30, scope: !65)
!74 = !DILocalVariable(name: "pFile", scope: !65, file: !45, line: 45, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !77, line: 7, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !79, line: 49, size: 1728, elements: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !96, !98, !99, !100, !104, !105, !107, !111, !114, !116, !119, !122, !123, !124, !125, !126}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !78, file: !79, line: 51, baseType: !23, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !78, file: !79, line: 54, baseType: !42, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !78, file: !79, line: 55, baseType: !42, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !78, file: !79, line: 56, baseType: !42, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !78, file: !79, line: 57, baseType: !42, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !78, file: !79, line: 58, baseType: !42, size: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !78, file: !79, line: 59, baseType: !42, size: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !78, file: !79, line: 60, baseType: !42, size: 64, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !78, file: !79, line: 61, baseType: !42, size: 64, offset: 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !78, file: !79, line: 64, baseType: !42, size: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !78, file: !79, line: 65, baseType: !42, size: 64, offset: 640)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !78, file: !79, line: 66, baseType: !42, size: 64, offset: 704)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !78, file: !79, line: 68, baseType: !94, size: 64, offset: 768)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !79, line: 36, flags: DIFlagFwdDecl)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !78, file: !79, line: 70, baseType: !97, size: 64, offset: 832)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !78, file: !79, line: 72, baseType: !23, size: 32, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !78, file: !79, line: 73, baseType: !23, size: 32, offset: 928)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !78, file: !79, line: 74, baseType: !101, size: 64, offset: 960)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !102, line: 152, baseType: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!103 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !78, file: !79, line: 77, baseType: !24, size: 16, offset: 1024)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !78, file: !79, line: 78, baseType: !106, size: 8, offset: 1040)
!106 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !78, file: !79, line: 79, baseType: !108, size: 8, offset: 1048)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 1)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !78, file: !79, line: 81, baseType: !112, size: 64, offset: 1088)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !79, line: 43, baseType: null)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !78, file: !79, line: 89, baseType: !115, size: 64, offset: 1152)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !102, line: 153, baseType: !103)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !78, file: !79, line: 91, baseType: !117, size: 64, offset: 1216)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !79, line: 37, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !78, file: !79, line: 92, baseType: !120, size: 64, offset: 1280)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !79, line: 38, flags: DIFlagFwdDecl)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !78, file: !79, line: 93, baseType: !97, size: 64, offset: 1344)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !78, file: !79, line: 94, baseType: !22, size: 64, offset: 1408)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !78, file: !79, line: 95, baseType: !68, size: 64, offset: 1472)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !78, file: !79, line: 96, baseType: !23, size: 32, offset: 1536)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !78, file: !79, line: 98, baseType: !127, size: 160, offset: 1568)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 20)
!130 = !DILocation(line: 45, column: 20, scope: !65)
!131 = !DILocation(line: 47, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !65, file: !45, line: 47, column: 17)
!133 = !DILocation(line: 47, column: 20, scope: !132)
!134 = !DILocation(line: 47, column: 29, scope: !132)
!135 = !DILocation(line: 47, column: 17, scope: !65)
!136 = !DILocation(line: 49, column: 25, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !45, line: 48, column: 13)
!138 = !DILocation(line: 49, column: 23, scope: !137)
!139 = !DILocation(line: 50, column: 21, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !45, line: 50, column: 21)
!141 = !DILocation(line: 50, column: 27, scope: !140)
!142 = !DILocation(line: 50, column: 21, scope: !137)
!143 = !DILocation(line: 53, column: 31, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !45, line: 53, column: 25)
!145 = distinct !DILexicalBlock(scope: !140, file: !45, line: 51, column: 17)
!146 = !DILocation(line: 53, column: 36, scope: !144)
!147 = !DILocation(line: 53, column: 35, scope: !144)
!148 = !DILocation(line: 53, column: 55, scope: !144)
!149 = !DILocation(line: 53, column: 54, scope: !144)
!150 = !DILocation(line: 53, column: 45, scope: !144)
!151 = !DILocation(line: 53, column: 65, scope: !144)
!152 = !DILocation(line: 53, column: 25, scope: !144)
!153 = !DILocation(line: 53, column: 72, scope: !144)
!154 = !DILocation(line: 53, column: 25, scope: !145)
!155 = !DILocation(line: 55, column: 25, scope: !156)
!156 = distinct !DILexicalBlock(scope: !144, file: !45, line: 54, column: 21)
!157 = !DILocation(line: 57, column: 25, scope: !156)
!158 = !DILocation(line: 57, column: 30, scope: !156)
!159 = !DILocation(line: 57, column: 39, scope: !156)
!160 = !DILocation(line: 58, column: 21, scope: !156)
!161 = !DILocation(line: 59, column: 28, scope: !145)
!162 = !DILocation(line: 59, column: 21, scope: !145)
!163 = !DILocation(line: 60, column: 17, scope: !145)
!164 = !DILocation(line: 61, column: 13, scope: !137)
!165 = !DILocalVariable(name: "i", scope: !166, file: !45, line: 67, type: !23)
!166 = distinct !DILexicalBlock(scope: !167, file: !45, line: 66, column: 9)
!167 = distinct !DILexicalBlock(scope: !168, file: !45, line: 65, column: 5)
!168 = distinct !DILexicalBlock(scope: !52, file: !45, line: 64, column: 8)
!169 = !DILocation(line: 67, column: 17, scope: !166)
!170 = !DILocalVariable(name: "n", scope: !166, file: !45, line: 67, type: !23)
!171 = !DILocation(line: 67, column: 20, scope: !166)
!172 = !DILocalVariable(name: "intVariable", scope: !166, file: !45, line: 67, type: !23)
!173 = !DILocation(line: 67, column: 23, scope: !166)
!174 = !DILocation(line: 68, column: 24, scope: !175)
!175 = distinct !DILexicalBlock(scope: !166, file: !45, line: 68, column: 17)
!176 = !DILocation(line: 68, column: 17, scope: !175)
!177 = !DILocation(line: 68, column: 40, scope: !175)
!178 = !DILocation(line: 68, column: 17, scope: !166)
!179 = !DILocation(line: 71, column: 29, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !45, line: 69, column: 13)
!181 = !DILocation(line: 72, column: 24, scope: !182)
!182 = distinct !DILexicalBlock(scope: !180, file: !45, line: 72, column: 17)
!183 = !DILocation(line: 72, column: 22, scope: !182)
!184 = !DILocation(line: 72, column: 29, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !45, line: 72, column: 17)
!186 = !DILocation(line: 72, column: 33, scope: !185)
!187 = !DILocation(line: 72, column: 31, scope: !185)
!188 = !DILocation(line: 72, column: 17, scope: !182)
!189 = !DILocation(line: 75, column: 32, scope: !190)
!190 = distinct !DILexicalBlock(scope: !185, file: !45, line: 73, column: 17)
!191 = !DILocation(line: 76, column: 17, scope: !190)
!192 = !DILocation(line: 72, column: 37, scope: !185)
!193 = !DILocation(line: 72, column: 17, scope: !185)
!194 = distinct !{!194, !188, !195, !196}
!195 = !DILocation(line: 76, column: 17, scope: !182)
!196 = !{!"llvm.loop.mustprogress"}
!197 = !DILocation(line: 77, column: 30, scope: !180)
!198 = !DILocation(line: 77, column: 17, scope: !180)
!199 = !DILocation(line: 78, column: 13, scope: !180)
!200 = !DILocation(line: 81, column: 1, scope: !52)
!201 = distinct !DISubprogram(name: "goodB2G1", scope: !45, file: !45, line: 88, type: !53, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!202 = !DILocalVariable(name: "data", scope: !201, file: !45, line: 90, type: !42)
!203 = !DILocation(line: 90, column: 12, scope: !201)
!204 = !DILocalVariable(name: "dataBuffer", scope: !201, file: !45, line: 91, type: !58)
!205 = !DILocation(line: 91, column: 10, scope: !201)
!206 = !DILocation(line: 92, column: 12, scope: !201)
!207 = !DILocation(line: 92, column: 10, scope: !201)
!208 = !DILocalVariable(name: "dataLen", scope: !209, file: !45, line: 97, type: !68)
!209 = distinct !DILexicalBlock(scope: !210, file: !45, line: 95, column: 9)
!210 = distinct !DILexicalBlock(scope: !211, file: !45, line: 94, column: 5)
!211 = distinct !DILexicalBlock(scope: !201, file: !45, line: 93, column: 8)
!212 = !DILocation(line: 97, column: 20, scope: !209)
!213 = !DILocation(line: 97, column: 37, scope: !209)
!214 = !DILocation(line: 97, column: 30, scope: !209)
!215 = !DILocalVariable(name: "pFile", scope: !209, file: !45, line: 98, type: !75)
!216 = !DILocation(line: 98, column: 20, scope: !209)
!217 = !DILocation(line: 100, column: 21, scope: !218)
!218 = distinct !DILexicalBlock(scope: !209, file: !45, line: 100, column: 17)
!219 = !DILocation(line: 100, column: 20, scope: !218)
!220 = !DILocation(line: 100, column: 29, scope: !218)
!221 = !DILocation(line: 100, column: 17, scope: !209)
!222 = !DILocation(line: 102, column: 25, scope: !223)
!223 = distinct !DILexicalBlock(scope: !218, file: !45, line: 101, column: 13)
!224 = !DILocation(line: 102, column: 23, scope: !223)
!225 = !DILocation(line: 103, column: 21, scope: !226)
!226 = distinct !DILexicalBlock(scope: !223, file: !45, line: 103, column: 21)
!227 = !DILocation(line: 103, column: 27, scope: !226)
!228 = !DILocation(line: 103, column: 21, scope: !223)
!229 = !DILocation(line: 106, column: 31, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !45, line: 106, column: 25)
!231 = distinct !DILexicalBlock(scope: !226, file: !45, line: 104, column: 17)
!232 = !DILocation(line: 106, column: 36, scope: !230)
!233 = !DILocation(line: 106, column: 35, scope: !230)
!234 = !DILocation(line: 106, column: 55, scope: !230)
!235 = !DILocation(line: 106, column: 54, scope: !230)
!236 = !DILocation(line: 106, column: 45, scope: !230)
!237 = !DILocation(line: 106, column: 65, scope: !230)
!238 = !DILocation(line: 106, column: 25, scope: !230)
!239 = !DILocation(line: 106, column: 72, scope: !230)
!240 = !DILocation(line: 106, column: 25, scope: !231)
!241 = !DILocation(line: 108, column: 25, scope: !242)
!242 = distinct !DILexicalBlock(scope: !230, file: !45, line: 107, column: 21)
!243 = !DILocation(line: 110, column: 25, scope: !242)
!244 = !DILocation(line: 110, column: 30, scope: !242)
!245 = !DILocation(line: 110, column: 39, scope: !242)
!246 = !DILocation(line: 111, column: 21, scope: !242)
!247 = !DILocation(line: 112, column: 28, scope: !231)
!248 = !DILocation(line: 112, column: 21, scope: !231)
!249 = !DILocation(line: 113, column: 17, scope: !231)
!250 = !DILocation(line: 114, column: 13, scope: !223)
!251 = !DILocalVariable(name: "i", scope: !252, file: !45, line: 125, type: !23)
!252 = distinct !DILexicalBlock(scope: !253, file: !45, line: 124, column: 9)
!253 = distinct !DILexicalBlock(scope: !254, file: !45, line: 123, column: 5)
!254 = distinct !DILexicalBlock(scope: !201, file: !45, line: 117, column: 8)
!255 = !DILocation(line: 125, column: 17, scope: !252)
!256 = !DILocalVariable(name: "n", scope: !252, file: !45, line: 125, type: !23)
!257 = !DILocation(line: 125, column: 20, scope: !252)
!258 = !DILocalVariable(name: "intVariable", scope: !252, file: !45, line: 125, type: !23)
!259 = !DILocation(line: 125, column: 23, scope: !252)
!260 = !DILocation(line: 126, column: 24, scope: !261)
!261 = distinct !DILexicalBlock(scope: !252, file: !45, line: 126, column: 17)
!262 = !DILocation(line: 126, column: 17, scope: !261)
!263 = !DILocation(line: 126, column: 40, scope: !261)
!264 = !DILocation(line: 126, column: 17, scope: !252)
!265 = !DILocation(line: 129, column: 21, scope: !266)
!266 = distinct !DILexicalBlock(scope: !267, file: !45, line: 129, column: 21)
!267 = distinct !DILexicalBlock(scope: !261, file: !45, line: 127, column: 13)
!268 = !DILocation(line: 129, column: 23, scope: !266)
!269 = !DILocation(line: 129, column: 21, scope: !267)
!270 = !DILocation(line: 131, column: 33, scope: !271)
!271 = distinct !DILexicalBlock(scope: !266, file: !45, line: 130, column: 17)
!272 = !DILocation(line: 132, column: 28, scope: !273)
!273 = distinct !DILexicalBlock(scope: !271, file: !45, line: 132, column: 21)
!274 = !DILocation(line: 132, column: 26, scope: !273)
!275 = !DILocation(line: 132, column: 33, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !45, line: 132, column: 21)
!277 = !DILocation(line: 132, column: 37, scope: !276)
!278 = !DILocation(line: 132, column: 35, scope: !276)
!279 = !DILocation(line: 132, column: 21, scope: !273)
!280 = !DILocation(line: 135, column: 36, scope: !281)
!281 = distinct !DILexicalBlock(scope: !276, file: !45, line: 133, column: 21)
!282 = !DILocation(line: 136, column: 21, scope: !281)
!283 = !DILocation(line: 132, column: 41, scope: !276)
!284 = !DILocation(line: 132, column: 21, scope: !276)
!285 = distinct !{!285, !279, !286, !196}
!286 = !DILocation(line: 136, column: 21, scope: !273)
!287 = !DILocation(line: 137, column: 34, scope: !271)
!288 = !DILocation(line: 137, column: 21, scope: !271)
!289 = !DILocation(line: 138, column: 17, scope: !271)
!290 = !DILocation(line: 139, column: 13, scope: !267)
!291 = !DILocation(line: 142, column: 1, scope: !201)
!292 = distinct !DISubprogram(name: "goodB2G2", scope: !45, file: !45, line: 145, type: !53, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!293 = !DILocalVariable(name: "data", scope: !292, file: !45, line: 147, type: !42)
!294 = !DILocation(line: 147, column: 12, scope: !292)
!295 = !DILocalVariable(name: "dataBuffer", scope: !292, file: !45, line: 148, type: !58)
!296 = !DILocation(line: 148, column: 10, scope: !292)
!297 = !DILocation(line: 149, column: 12, scope: !292)
!298 = !DILocation(line: 149, column: 10, scope: !292)
!299 = !DILocalVariable(name: "dataLen", scope: !300, file: !45, line: 154, type: !68)
!300 = distinct !DILexicalBlock(scope: !301, file: !45, line: 152, column: 9)
!301 = distinct !DILexicalBlock(scope: !302, file: !45, line: 151, column: 5)
!302 = distinct !DILexicalBlock(scope: !292, file: !45, line: 150, column: 8)
!303 = !DILocation(line: 154, column: 20, scope: !300)
!304 = !DILocation(line: 154, column: 37, scope: !300)
!305 = !DILocation(line: 154, column: 30, scope: !300)
!306 = !DILocalVariable(name: "pFile", scope: !300, file: !45, line: 155, type: !75)
!307 = !DILocation(line: 155, column: 20, scope: !300)
!308 = !DILocation(line: 157, column: 21, scope: !309)
!309 = distinct !DILexicalBlock(scope: !300, file: !45, line: 157, column: 17)
!310 = !DILocation(line: 157, column: 20, scope: !309)
!311 = !DILocation(line: 157, column: 29, scope: !309)
!312 = !DILocation(line: 157, column: 17, scope: !300)
!313 = !DILocation(line: 159, column: 25, scope: !314)
!314 = distinct !DILexicalBlock(scope: !309, file: !45, line: 158, column: 13)
!315 = !DILocation(line: 159, column: 23, scope: !314)
!316 = !DILocation(line: 160, column: 21, scope: !317)
!317 = distinct !DILexicalBlock(scope: !314, file: !45, line: 160, column: 21)
!318 = !DILocation(line: 160, column: 27, scope: !317)
!319 = !DILocation(line: 160, column: 21, scope: !314)
!320 = !DILocation(line: 163, column: 31, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !45, line: 163, column: 25)
!322 = distinct !DILexicalBlock(scope: !317, file: !45, line: 161, column: 17)
!323 = !DILocation(line: 163, column: 36, scope: !321)
!324 = !DILocation(line: 163, column: 35, scope: !321)
!325 = !DILocation(line: 163, column: 55, scope: !321)
!326 = !DILocation(line: 163, column: 54, scope: !321)
!327 = !DILocation(line: 163, column: 45, scope: !321)
!328 = !DILocation(line: 163, column: 65, scope: !321)
!329 = !DILocation(line: 163, column: 25, scope: !321)
!330 = !DILocation(line: 163, column: 72, scope: !321)
!331 = !DILocation(line: 163, column: 25, scope: !322)
!332 = !DILocation(line: 165, column: 25, scope: !333)
!333 = distinct !DILexicalBlock(scope: !321, file: !45, line: 164, column: 21)
!334 = !DILocation(line: 167, column: 25, scope: !333)
!335 = !DILocation(line: 167, column: 30, scope: !333)
!336 = !DILocation(line: 167, column: 39, scope: !333)
!337 = !DILocation(line: 168, column: 21, scope: !333)
!338 = !DILocation(line: 169, column: 28, scope: !322)
!339 = !DILocation(line: 169, column: 21, scope: !322)
!340 = !DILocation(line: 170, column: 17, scope: !322)
!341 = !DILocation(line: 171, column: 13, scope: !314)
!342 = !DILocalVariable(name: "i", scope: !343, file: !45, line: 177, type: !23)
!343 = distinct !DILexicalBlock(scope: !344, file: !45, line: 176, column: 9)
!344 = distinct !DILexicalBlock(scope: !345, file: !45, line: 175, column: 5)
!345 = distinct !DILexicalBlock(scope: !292, file: !45, line: 174, column: 8)
!346 = !DILocation(line: 177, column: 17, scope: !343)
!347 = !DILocalVariable(name: "n", scope: !343, file: !45, line: 177, type: !23)
!348 = !DILocation(line: 177, column: 20, scope: !343)
!349 = !DILocalVariable(name: "intVariable", scope: !343, file: !45, line: 177, type: !23)
!350 = !DILocation(line: 177, column: 23, scope: !343)
!351 = !DILocation(line: 178, column: 24, scope: !352)
!352 = distinct !DILexicalBlock(scope: !343, file: !45, line: 178, column: 17)
!353 = !DILocation(line: 178, column: 17, scope: !352)
!354 = !DILocation(line: 178, column: 40, scope: !352)
!355 = !DILocation(line: 178, column: 17, scope: !343)
!356 = !DILocation(line: 181, column: 21, scope: !357)
!357 = distinct !DILexicalBlock(scope: !358, file: !45, line: 181, column: 21)
!358 = distinct !DILexicalBlock(scope: !352, file: !45, line: 179, column: 13)
!359 = !DILocation(line: 181, column: 23, scope: !357)
!360 = !DILocation(line: 181, column: 21, scope: !358)
!361 = !DILocation(line: 183, column: 33, scope: !362)
!362 = distinct !DILexicalBlock(scope: !357, file: !45, line: 182, column: 17)
!363 = !DILocation(line: 184, column: 28, scope: !364)
!364 = distinct !DILexicalBlock(scope: !362, file: !45, line: 184, column: 21)
!365 = !DILocation(line: 184, column: 26, scope: !364)
!366 = !DILocation(line: 184, column: 33, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !45, line: 184, column: 21)
!368 = !DILocation(line: 184, column: 37, scope: !367)
!369 = !DILocation(line: 184, column: 35, scope: !367)
!370 = !DILocation(line: 184, column: 21, scope: !364)
!371 = !DILocation(line: 187, column: 36, scope: !372)
!372 = distinct !DILexicalBlock(scope: !367, file: !45, line: 185, column: 21)
!373 = !DILocation(line: 188, column: 21, scope: !372)
!374 = !DILocation(line: 184, column: 41, scope: !367)
!375 = !DILocation(line: 184, column: 21, scope: !367)
!376 = distinct !{!376, !370, !377, !196}
!377 = !DILocation(line: 188, column: 21, scope: !364)
!378 = !DILocation(line: 189, column: 34, scope: !362)
!379 = !DILocation(line: 189, column: 21, scope: !362)
!380 = !DILocation(line: 190, column: 17, scope: !362)
!381 = !DILocation(line: 191, column: 13, scope: !358)
!382 = !DILocation(line: 194, column: 1, scope: !292)
!383 = distinct !DISubprogram(name: "goodG2B1", scope: !45, file: !45, line: 197, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!384 = !DILocalVariable(name: "data", scope: !383, file: !45, line: 199, type: !42)
!385 = !DILocation(line: 199, column: 12, scope: !383)
!386 = !DILocalVariable(name: "dataBuffer", scope: !383, file: !45, line: 200, type: !58)
!387 = !DILocation(line: 200, column: 10, scope: !383)
!388 = !DILocation(line: 201, column: 12, scope: !383)
!389 = !DILocation(line: 201, column: 10, scope: !383)
!390 = !DILocation(line: 210, column: 16, scope: !391)
!391 = distinct !DILexicalBlock(scope: !392, file: !45, line: 208, column: 5)
!392 = distinct !DILexicalBlock(scope: !383, file: !45, line: 202, column: 8)
!393 = !DILocation(line: 210, column: 9, scope: !391)
!394 = !DILocalVariable(name: "i", scope: !395, file: !45, line: 215, type: !23)
!395 = distinct !DILexicalBlock(scope: !396, file: !45, line: 214, column: 9)
!396 = distinct !DILexicalBlock(scope: !397, file: !45, line: 213, column: 5)
!397 = distinct !DILexicalBlock(scope: !383, file: !45, line: 212, column: 8)
!398 = !DILocation(line: 215, column: 17, scope: !395)
!399 = !DILocalVariable(name: "n", scope: !395, file: !45, line: 215, type: !23)
!400 = !DILocation(line: 215, column: 20, scope: !395)
!401 = !DILocalVariable(name: "intVariable", scope: !395, file: !45, line: 215, type: !23)
!402 = !DILocation(line: 215, column: 23, scope: !395)
!403 = !DILocation(line: 216, column: 24, scope: !404)
!404 = distinct !DILexicalBlock(scope: !395, file: !45, line: 216, column: 17)
!405 = !DILocation(line: 216, column: 17, scope: !404)
!406 = !DILocation(line: 216, column: 40, scope: !404)
!407 = !DILocation(line: 216, column: 17, scope: !395)
!408 = !DILocation(line: 219, column: 29, scope: !409)
!409 = distinct !DILexicalBlock(scope: !404, file: !45, line: 217, column: 13)
!410 = !DILocation(line: 220, column: 24, scope: !411)
!411 = distinct !DILexicalBlock(scope: !409, file: !45, line: 220, column: 17)
!412 = !DILocation(line: 220, column: 22, scope: !411)
!413 = !DILocation(line: 220, column: 29, scope: !414)
!414 = distinct !DILexicalBlock(scope: !411, file: !45, line: 220, column: 17)
!415 = !DILocation(line: 220, column: 33, scope: !414)
!416 = !DILocation(line: 220, column: 31, scope: !414)
!417 = !DILocation(line: 220, column: 17, scope: !411)
!418 = !DILocation(line: 223, column: 32, scope: !419)
!419 = distinct !DILexicalBlock(scope: !414, file: !45, line: 221, column: 17)
!420 = !DILocation(line: 224, column: 17, scope: !419)
!421 = !DILocation(line: 220, column: 37, scope: !414)
!422 = !DILocation(line: 220, column: 17, scope: !414)
!423 = distinct !{!423, !417, !424, !196}
!424 = !DILocation(line: 224, column: 17, scope: !411)
!425 = !DILocation(line: 225, column: 30, scope: !409)
!426 = !DILocation(line: 225, column: 17, scope: !409)
!427 = !DILocation(line: 226, column: 13, scope: !409)
!428 = !DILocation(line: 229, column: 1, scope: !383)
!429 = distinct !DISubprogram(name: "goodG2B2", scope: !45, file: !45, line: 232, type: !53, scopeLine: 233, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!430 = !DILocalVariable(name: "data", scope: !429, file: !45, line: 234, type: !42)
!431 = !DILocation(line: 234, column: 12, scope: !429)
!432 = !DILocalVariable(name: "dataBuffer", scope: !429, file: !45, line: 235, type: !58)
!433 = !DILocation(line: 235, column: 10, scope: !429)
!434 = !DILocation(line: 236, column: 12, scope: !429)
!435 = !DILocation(line: 236, column: 10, scope: !429)
!436 = !DILocation(line: 240, column: 16, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !45, line: 238, column: 5)
!438 = distinct !DILexicalBlock(scope: !429, file: !45, line: 237, column: 8)
!439 = !DILocation(line: 240, column: 9, scope: !437)
!440 = !DILocalVariable(name: "i", scope: !441, file: !45, line: 245, type: !23)
!441 = distinct !DILexicalBlock(scope: !442, file: !45, line: 244, column: 9)
!442 = distinct !DILexicalBlock(scope: !443, file: !45, line: 243, column: 5)
!443 = distinct !DILexicalBlock(scope: !429, file: !45, line: 242, column: 8)
!444 = !DILocation(line: 245, column: 17, scope: !441)
!445 = !DILocalVariable(name: "n", scope: !441, file: !45, line: 245, type: !23)
!446 = !DILocation(line: 245, column: 20, scope: !441)
!447 = !DILocalVariable(name: "intVariable", scope: !441, file: !45, line: 245, type: !23)
!448 = !DILocation(line: 245, column: 23, scope: !441)
!449 = !DILocation(line: 246, column: 24, scope: !450)
!450 = distinct !DILexicalBlock(scope: !441, file: !45, line: 246, column: 17)
!451 = !DILocation(line: 246, column: 17, scope: !450)
!452 = !DILocation(line: 246, column: 40, scope: !450)
!453 = !DILocation(line: 246, column: 17, scope: !441)
!454 = !DILocation(line: 249, column: 29, scope: !455)
!455 = distinct !DILexicalBlock(scope: !450, file: !45, line: 247, column: 13)
!456 = !DILocation(line: 250, column: 24, scope: !457)
!457 = distinct !DILexicalBlock(scope: !455, file: !45, line: 250, column: 17)
!458 = !DILocation(line: 250, column: 22, scope: !457)
!459 = !DILocation(line: 250, column: 29, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !45, line: 250, column: 17)
!461 = !DILocation(line: 250, column: 33, scope: !460)
!462 = !DILocation(line: 250, column: 31, scope: !460)
!463 = !DILocation(line: 250, column: 17, scope: !457)
!464 = !DILocation(line: 253, column: 32, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !45, line: 251, column: 17)
!466 = !DILocation(line: 254, column: 17, scope: !465)
!467 = !DILocation(line: 250, column: 37, scope: !460)
!468 = !DILocation(line: 250, column: 17, scope: !460)
!469 = distinct !{!469, !463, !470, !196}
!470 = !DILocation(line: 254, column: 17, scope: !457)
!471 = !DILocation(line: 255, column: 30, scope: !455)
!472 = !DILocation(line: 255, column: 17, scope: !455)
!473 = !DILocation(line: 256, column: 13, scope: !455)
!474 = !DILocation(line: 259, column: 1, scope: !429)
!475 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_03_good", scope: !45, file: !45, line: 261, type: !53, scopeLine: 262, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!476 = !DILocation(line: 263, column: 5, scope: !475)
!477 = !DILocation(line: 264, column: 5, scope: !475)
!478 = !DILocation(line: 265, column: 5, scope: !475)
!479 = !DILocation(line: 266, column: 5, scope: !475)
!480 = !DILocation(line: 267, column: 1, scope: !475)
!481 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !482, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !42}
!484 = !DILocalVariable(name: "line", arg: 1, scope: !481, file: !3, line: 11, type: !42)
!485 = !DILocation(line: 11, column: 25, scope: !481)
!486 = !DILocation(line: 13, column: 1, scope: !481)
!487 = !DILocation(line: 14, column: 8, scope: !488)
!488 = distinct !DILexicalBlock(scope: !481, file: !3, line: 14, column: 8)
!489 = !DILocation(line: 14, column: 13, scope: !488)
!490 = !DILocation(line: 14, column: 8, scope: !481)
!491 = !DILocation(line: 16, column: 24, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !3, line: 15, column: 5)
!493 = !DILocation(line: 16, column: 9, scope: !492)
!494 = !DILocation(line: 17, column: 5, scope: !492)
!495 = !DILocation(line: 18, column: 5, scope: !481)
!496 = !DILocation(line: 19, column: 1, scope: !481)
!497 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !482, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DILocalVariable(name: "line", arg: 1, scope: !497, file: !3, line: 20, type: !42)
!499 = !DILocation(line: 20, column: 29, scope: !497)
!500 = !DILocation(line: 22, column: 8, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !3, line: 22, column: 8)
!502 = !DILocation(line: 22, column: 13, scope: !501)
!503 = !DILocation(line: 22, column: 8, scope: !497)
!504 = !DILocation(line: 24, column: 24, scope: !505)
!505 = distinct !DILexicalBlock(scope: !501, file: !3, line: 23, column: 5)
!506 = !DILocation(line: 24, column: 9, scope: !505)
!507 = !DILocation(line: 25, column: 5, scope: !505)
!508 = !DILocation(line: 26, column: 1, scope: !497)
!509 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !510, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!510 = !DISubroutineType(types: !511)
!511 = !{null, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !69, line: 74, baseType: !23)
!514 = !DILocalVariable(name: "line", arg: 1, scope: !509, file: !3, line: 27, type: !512)
!515 = !DILocation(line: 27, column: 29, scope: !509)
!516 = !DILocation(line: 29, column: 8, scope: !517)
!517 = distinct !DILexicalBlock(scope: !509, file: !3, line: 29, column: 8)
!518 = !DILocation(line: 29, column: 13, scope: !517)
!519 = !DILocation(line: 29, column: 8, scope: !509)
!520 = !DILocation(line: 31, column: 27, scope: !521)
!521 = distinct !DILexicalBlock(scope: !517, file: !3, line: 30, column: 5)
!522 = !DILocation(line: 31, column: 9, scope: !521)
!523 = !DILocation(line: 32, column: 5, scope: !521)
!524 = !DILocation(line: 33, column: 1, scope: !509)
!525 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !526, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !23}
!528 = !DILocalVariable(name: "intNumber", arg: 1, scope: !525, file: !3, line: 35, type: !23)
!529 = !DILocation(line: 35, column: 24, scope: !525)
!530 = !DILocation(line: 37, column: 20, scope: !525)
!531 = !DILocation(line: 37, column: 5, scope: !525)
!532 = !DILocation(line: 38, column: 1, scope: !525)
!533 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !534, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !536}
!536 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!537 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !533, file: !3, line: 40, type: !536)
!538 = !DILocation(line: 40, column: 28, scope: !533)
!539 = !DILocation(line: 42, column: 21, scope: !533)
!540 = !DILocation(line: 42, column: 5, scope: !533)
!541 = !DILocation(line: 43, column: 1, scope: !533)
!542 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !543, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !545}
!545 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!546 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !542, file: !3, line: 45, type: !545)
!547 = !DILocation(line: 45, column: 28, scope: !542)
!548 = !DILocation(line: 47, column: 20, scope: !542)
!549 = !DILocation(line: 47, column: 5, scope: !542)
!550 = !DILocation(line: 48, column: 1, scope: !542)
!551 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !552, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !103}
!554 = !DILocalVariable(name: "longNumber", arg: 1, scope: !551, file: !3, line: 50, type: !103)
!555 = !DILocation(line: 50, column: 26, scope: !551)
!556 = !DILocation(line: 52, column: 21, scope: !551)
!557 = !DILocation(line: 52, column: 5, scope: !551)
!558 = !DILocation(line: 53, column: 1, scope: !551)
!559 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !560, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !562}
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !563, line: 27, baseType: !564)
!563 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !102, line: 44, baseType: !103)
!565 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !559, file: !3, line: 55, type: !562)
!566 = !DILocation(line: 55, column: 33, scope: !559)
!567 = !DILocation(line: 57, column: 29, scope: !559)
!568 = !DILocation(line: 57, column: 5, scope: !559)
!569 = !DILocation(line: 58, column: 1, scope: !559)
!570 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !571, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !68}
!573 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !570, file: !3, line: 60, type: !68)
!574 = !DILocation(line: 60, column: 29, scope: !570)
!575 = !DILocation(line: 62, column: 21, scope: !570)
!576 = !DILocation(line: 62, column: 5, scope: !570)
!577 = !DILocation(line: 63, column: 1, scope: !570)
!578 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !579, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!579 = !DISubroutineType(types: !580)
!580 = !{null, !43}
!581 = !DILocalVariable(name: "charHex", arg: 1, scope: !578, file: !3, line: 65, type: !43)
!582 = !DILocation(line: 65, column: 29, scope: !578)
!583 = !DILocation(line: 67, column: 22, scope: !578)
!584 = !DILocation(line: 67, column: 5, scope: !578)
!585 = !DILocation(line: 68, column: 1, scope: !578)
!586 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !587, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !513}
!589 = !DILocalVariable(name: "wideChar", arg: 1, scope: !586, file: !3, line: 70, type: !513)
!590 = !DILocation(line: 70, column: 29, scope: !586)
!591 = !DILocalVariable(name: "s", scope: !586, file: !3, line: 74, type: !592)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 64, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 2)
!595 = !DILocation(line: 74, column: 13, scope: !586)
!596 = !DILocation(line: 75, column: 16, scope: !586)
!597 = !DILocation(line: 75, column: 9, scope: !586)
!598 = !DILocation(line: 75, column: 14, scope: !586)
!599 = !DILocation(line: 76, column: 9, scope: !586)
!600 = !DILocation(line: 76, column: 14, scope: !586)
!601 = !DILocation(line: 77, column: 21, scope: !586)
!602 = !DILocation(line: 77, column: 5, scope: !586)
!603 = !DILocation(line: 78, column: 1, scope: !586)
!604 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !605, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!605 = !DISubroutineType(types: !606)
!606 = !{null, !7}
!607 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !604, file: !3, line: 80, type: !7)
!608 = !DILocation(line: 80, column: 33, scope: !604)
!609 = !DILocation(line: 82, column: 20, scope: !604)
!610 = !DILocation(line: 82, column: 5, scope: !604)
!611 = !DILocation(line: 83, column: 1, scope: !604)
!612 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !613, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!613 = !DISubroutineType(types: !614)
!614 = !{null, !25}
!615 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !612, file: !3, line: 85, type: !25)
!616 = !DILocation(line: 85, column: 45, scope: !612)
!617 = !DILocation(line: 87, column: 22, scope: !612)
!618 = !DILocation(line: 87, column: 5, scope: !612)
!619 = !DILocation(line: 88, column: 1, scope: !612)
!620 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !621, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!621 = !DISubroutineType(types: !622)
!622 = !{null, !623}
!623 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!624 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !620, file: !3, line: 90, type: !623)
!625 = !DILocation(line: 90, column: 29, scope: !620)
!626 = !DILocation(line: 92, column: 20, scope: !620)
!627 = !DILocation(line: 92, column: 5, scope: !620)
!628 = !DILocation(line: 93, column: 1, scope: !620)
!629 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !630, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !632}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !634, line: 100, baseType: !635)
!634 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_076/source_code")
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !634, line: 96, size: 64, elements: !636)
!636 = !{!637, !638}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !635, file: !634, line: 98, baseType: !23, size: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !635, file: !634, line: 99, baseType: !23, size: 32, offset: 32)
!639 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !629, file: !3, line: 95, type: !632)
!640 = !DILocation(line: 95, column: 40, scope: !629)
!641 = !DILocation(line: 97, column: 26, scope: !629)
!642 = !DILocation(line: 97, column: 47, scope: !629)
!643 = !DILocation(line: 97, column: 55, scope: !629)
!644 = !DILocation(line: 97, column: 76, scope: !629)
!645 = !DILocation(line: 97, column: 5, scope: !629)
!646 = !DILocation(line: 98, column: 1, scope: !629)
!647 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !648, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !650, !68}
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!651 = !DILocalVariable(name: "bytes", arg: 1, scope: !647, file: !3, line: 100, type: !650)
!652 = !DILocation(line: 100, column: 38, scope: !647)
!653 = !DILocalVariable(name: "numBytes", arg: 2, scope: !647, file: !3, line: 100, type: !68)
!654 = !DILocation(line: 100, column: 52, scope: !647)
!655 = !DILocalVariable(name: "i", scope: !647, file: !3, line: 102, type: !68)
!656 = !DILocation(line: 102, column: 12, scope: !647)
!657 = !DILocation(line: 103, column: 12, scope: !658)
!658 = distinct !DILexicalBlock(scope: !647, file: !3, line: 103, column: 5)
!659 = !DILocation(line: 103, column: 10, scope: !658)
!660 = !DILocation(line: 103, column: 17, scope: !661)
!661 = distinct !DILexicalBlock(scope: !658, file: !3, line: 103, column: 5)
!662 = !DILocation(line: 103, column: 21, scope: !661)
!663 = !DILocation(line: 103, column: 19, scope: !661)
!664 = !DILocation(line: 103, column: 5, scope: !658)
!665 = !DILocation(line: 105, column: 24, scope: !666)
!666 = distinct !DILexicalBlock(scope: !661, file: !3, line: 104, column: 5)
!667 = !DILocation(line: 105, column: 30, scope: !666)
!668 = !DILocation(line: 105, column: 9, scope: !666)
!669 = !DILocation(line: 106, column: 5, scope: !666)
!670 = !DILocation(line: 103, column: 31, scope: !661)
!671 = !DILocation(line: 103, column: 5, scope: !661)
!672 = distinct !{!672, !664, !673, !196}
!673 = !DILocation(line: 106, column: 5, scope: !658)
!674 = !DILocation(line: 107, column: 5, scope: !647)
!675 = !DILocation(line: 108, column: 1, scope: !647)
!676 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !677, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!677 = !DISubroutineType(types: !678)
!678 = !{!68, !650, !68, !42}
!679 = !DILocalVariable(name: "bytes", arg: 1, scope: !676, file: !3, line: 113, type: !650)
!680 = !DILocation(line: 113, column: 39, scope: !676)
!681 = !DILocalVariable(name: "numBytes", arg: 2, scope: !676, file: !3, line: 113, type: !68)
!682 = !DILocation(line: 113, column: 53, scope: !676)
!683 = !DILocalVariable(name: "hex", arg: 3, scope: !676, file: !3, line: 113, type: !42)
!684 = !DILocation(line: 113, column: 71, scope: !676)
!685 = !DILocalVariable(name: "numWritten", scope: !676, file: !3, line: 115, type: !68)
!686 = !DILocation(line: 115, column: 12, scope: !676)
!687 = !DILocation(line: 121, column: 5, scope: !676)
!688 = !DILocation(line: 121, column: 12, scope: !676)
!689 = !DILocation(line: 121, column: 25, scope: !676)
!690 = !DILocation(line: 121, column: 23, scope: !676)
!691 = !DILocation(line: 121, column: 34, scope: !676)
!692 = !DILocation(line: 121, column: 37, scope: !676)
!693 = !DILocation(line: 121, column: 67, scope: !676)
!694 = !DILocation(line: 121, column: 70, scope: !676)
!695 = !DILocation(line: 0, scope: !676)
!696 = !DILocalVariable(name: "byte", scope: !697, file: !3, line: 123, type: !23)
!697 = distinct !DILexicalBlock(scope: !676, file: !3, line: 122, column: 5)
!698 = !DILocation(line: 123, column: 13, scope: !697)
!699 = !DILocation(line: 124, column: 17, scope: !697)
!700 = !DILocation(line: 124, column: 25, scope: !697)
!701 = !DILocation(line: 124, column: 23, scope: !697)
!702 = !DILocation(line: 124, column: 9, scope: !697)
!703 = !DILocation(line: 125, column: 45, scope: !697)
!704 = !DILocation(line: 125, column: 29, scope: !697)
!705 = !DILocation(line: 125, column: 9, scope: !697)
!706 = !DILocation(line: 125, column: 15, scope: !697)
!707 = !DILocation(line: 125, column: 27, scope: !697)
!708 = !DILocation(line: 126, column: 9, scope: !697)
!709 = distinct !{!709, !687, !710, !196}
!710 = !DILocation(line: 127, column: 5, scope: !676)
!711 = !DILocation(line: 129, column: 12, scope: !676)
!712 = !DILocation(line: 129, column: 5, scope: !676)
!713 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !714, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!714 = !DISubroutineType(types: !715)
!715 = !{!68, !650, !68, !512}
!716 = !DILocalVariable(name: "bytes", arg: 1, scope: !713, file: !3, line: 135, type: !650)
!717 = !DILocation(line: 135, column: 41, scope: !713)
!718 = !DILocalVariable(name: "numBytes", arg: 2, scope: !713, file: !3, line: 135, type: !68)
!719 = !DILocation(line: 135, column: 55, scope: !713)
!720 = !DILocalVariable(name: "hex", arg: 3, scope: !713, file: !3, line: 135, type: !512)
!721 = !DILocation(line: 135, column: 76, scope: !713)
!722 = !DILocalVariable(name: "numWritten", scope: !713, file: !3, line: 137, type: !68)
!723 = !DILocation(line: 137, column: 12, scope: !713)
!724 = !DILocation(line: 143, column: 5, scope: !713)
!725 = !DILocation(line: 143, column: 12, scope: !713)
!726 = !DILocation(line: 143, column: 25, scope: !713)
!727 = !DILocation(line: 143, column: 23, scope: !713)
!728 = !DILocation(line: 143, column: 34, scope: !713)
!729 = !DILocation(line: 143, column: 47, scope: !713)
!730 = !DILocation(line: 143, column: 55, scope: !713)
!731 = !DILocation(line: 143, column: 53, scope: !713)
!732 = !DILocation(line: 143, column: 37, scope: !713)
!733 = !DILocation(line: 143, column: 68, scope: !713)
!734 = !DILocation(line: 143, column: 81, scope: !713)
!735 = !DILocation(line: 143, column: 89, scope: !713)
!736 = !DILocation(line: 143, column: 87, scope: !713)
!737 = !DILocation(line: 143, column: 100, scope: !713)
!738 = !DILocation(line: 143, column: 71, scope: !713)
!739 = !DILocation(line: 0, scope: !713)
!740 = !DILocalVariable(name: "byte", scope: !741, file: !3, line: 145, type: !23)
!741 = distinct !DILexicalBlock(scope: !713, file: !3, line: 144, column: 5)
!742 = !DILocation(line: 145, column: 13, scope: !741)
!743 = !DILocation(line: 146, column: 18, scope: !741)
!744 = !DILocation(line: 146, column: 26, scope: !741)
!745 = !DILocation(line: 146, column: 24, scope: !741)
!746 = !DILocation(line: 146, column: 9, scope: !741)
!747 = !DILocation(line: 147, column: 45, scope: !741)
!748 = !DILocation(line: 147, column: 29, scope: !741)
!749 = !DILocation(line: 147, column: 9, scope: !741)
!750 = !DILocation(line: 147, column: 15, scope: !741)
!751 = !DILocation(line: 147, column: 27, scope: !741)
!752 = !DILocation(line: 148, column: 9, scope: !741)
!753 = distinct !{!753, !724, !754, !196}
!754 = !DILocation(line: 149, column: 5, scope: !713)
!755 = !DILocation(line: 151, column: 12, scope: !713)
!756 = !DILocation(line: 151, column: 5, scope: !713)
!757 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !758, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!758 = !DISubroutineType(types: !759)
!759 = !{!23}
!760 = !DILocation(line: 158, column: 5, scope: !757)
!761 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !758, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!762 = !DILocation(line: 163, column: 5, scope: !761)
!763 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !758, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!764 = !DILocation(line: 168, column: 13, scope: !763)
!765 = !DILocation(line: 168, column: 20, scope: !763)
!766 = !DILocation(line: 168, column: 5, scope: !763)
!767 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !53, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!768 = !DILocation(line: 187, column: 16, scope: !767)
!769 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !53, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!770 = !DILocation(line: 188, column: 16, scope: !769)
!771 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !53, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!772 = !DILocation(line: 189, column: 16, scope: !771)
!773 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !53, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!774 = !DILocation(line: 190, column: 16, scope: !773)
!775 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !53, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!776 = !DILocation(line: 191, column: 16, scope: !775)
!777 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !53, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!778 = !DILocation(line: 192, column: 16, scope: !777)
!779 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !53, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!780 = !DILocation(line: 193, column: 16, scope: !779)
!781 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !53, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!782 = !DILocation(line: 194, column: 16, scope: !781)
!783 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !53, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!784 = !DILocation(line: 195, column: 16, scope: !783)
!785 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !53, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!786 = !DILocation(line: 198, column: 15, scope: !785)
!787 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !53, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!788 = !DILocation(line: 199, column: 15, scope: !787)
!789 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !53, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!790 = !DILocation(line: 200, column: 15, scope: !789)
!791 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !53, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!792 = !DILocation(line: 201, column: 15, scope: !791)
!793 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !53, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!794 = !DILocation(line: 202, column: 15, scope: !793)
!795 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !53, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!796 = !DILocation(line: 203, column: 15, scope: !795)
!797 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !53, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!798 = !DILocation(line: 204, column: 15, scope: !797)
!799 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !53, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!800 = !DILocation(line: 205, column: 15, scope: !799)
!801 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !53, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!802 = !DILocation(line: 206, column: 15, scope: !801)
