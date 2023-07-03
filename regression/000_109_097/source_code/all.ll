; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType = type { i8* }
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_34_bad() #0 !dbg !52 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %data12 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion, metadata !57, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !65, metadata !DIExpression()), !dbg !69
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !69
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !69
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !70
  store i8* %arraydecay, i8** %data, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !72, metadata !DIExpression()), !dbg !77
  %1 = load i8*, i8** %data, align 8, !dbg !78
  %call = call i64 @strlen(i8* %1) #7, !dbg !79
  store i64 %call, i64* %dataLen, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !80, metadata !DIExpression()), !dbg !136
  %2 = load i64, i64* %dataLen, align 8, !dbg !137
  %sub = sub i64 100, %2, !dbg !139
  %cmp = icmp ugt i64 %sub, 1, !dbg !140
  br i1 %cmp, label %if.then, label %if.end11, !dbg !141

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !142
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !144
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !145
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !147
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !148

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !149
  %5 = load i64, i64* %dataLen, align 8, !dbg !152
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !153
  %6 = load i64, i64* %dataLen, align 8, !dbg !154
  %sub4 = sub i64 100, %6, !dbg !155
  %conv = trunc i64 %sub4 to i32, !dbg !156
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !157
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !158
  %cmp6 = icmp eq i8* %call5, null, !dbg !159
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !160

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !161
  %8 = load i8*, i8** %data, align 8, !dbg !163
  %9 = load i64, i64* %dataLen, align 8, !dbg !164
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !163
  store i8 0, i8* %arrayidx, align 1, !dbg !165
  br label %if.end, !dbg !166

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !167
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !168
  br label %if.end10, !dbg !169

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !170

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !171
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion to i8**, !dbg !172
  store i8* %11, i8** %unionFirst, align 8, !dbg !173
  call void @llvm.dbg.declare(metadata i8** %data12, metadata !174, metadata !DIExpression()), !dbg !176
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion to i8**, !dbg !177
  %12 = load i8*, i8** %unionSecond, align 8, !dbg !177
  store i8* %12, i8** %data12, align 8, !dbg !176
  call void @llvm.dbg.declare(metadata i32* %i, metadata !178, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %n, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !183, metadata !DIExpression()), !dbg !184
  %13 = load i8*, i8** %data12, align 8, !dbg !185
  %call13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !187
  %cmp14 = icmp eq i32 %call13, 1, !dbg !188
  br i1 %cmp14, label %if.then16, label %if.end20, !dbg !189

if.then16:                                        ; preds = %if.end11
  store i32 0, i32* %intVariable, align 4, !dbg !190
  store i32 0, i32* %i, align 4, !dbg !192
  br label %for.cond, !dbg !194

for.cond:                                         ; preds = %for.inc, %if.then16
  %14 = load i32, i32* %i, align 4, !dbg !195
  %15 = load i32, i32* %n, align 4, !dbg !197
  %cmp17 = icmp slt i32 %14, %15, !dbg !198
  br i1 %cmp17, label %for.body, label %for.end, !dbg !199

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !200
  %inc = add nsw i32 %16, 1, !dbg !200
  store i32 %inc, i32* %intVariable, align 4, !dbg !200
  br label %for.inc, !dbg !202

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !203
  %inc19 = add nsw i32 %17, 1, !dbg !203
  store i32 %inc19, i32* %i, align 4, !dbg !203
  br label %for.cond, !dbg !204, !llvm.loop !205

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %intVariable, align 4, !dbg !208
  call void @printIntLine(i32 %18), !dbg !209
  br label %if.end20, !dbg !210

if.end20:                                         ; preds = %for.end, %if.end11
  ret void, !dbg !211
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
define dso_local void @goodG2B() #0 !dbg !212 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !213, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !217, metadata !DIExpression()), !dbg !218
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !218
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !218
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !219
  store i8* %arraydecay, i8** %data, align 8, !dbg !220
  %1 = load i8*, i8** %data, align 8, !dbg !221
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !222
  %2 = load i8*, i8** %data, align 8, !dbg !223
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion to i8**, !dbg !224
  store i8* %2, i8** %unionFirst, align 8, !dbg !225
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !226, metadata !DIExpression()), !dbg !228
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion to i8**, !dbg !229
  %3 = load i8*, i8** %unionSecond, align 8, !dbg !229
  store i8* %3, i8** %data1, align 8, !dbg !228
  call void @llvm.dbg.declare(metadata i32* %i, metadata !230, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata i32* %n, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !235, metadata !DIExpression()), !dbg !236
  %4 = load i8*, i8** %data1, align 8, !dbg !237
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !239
  %cmp = icmp eq i32 %call2, 1, !dbg !240
  br i1 %cmp, label %if.then, label %if.end, !dbg !241

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !242
  store i32 0, i32* %i, align 4, !dbg !244
  br label %for.cond, !dbg !246

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !247
  %6 = load i32, i32* %n, align 4, !dbg !249
  %cmp3 = icmp slt i32 %5, %6, !dbg !250
  br i1 %cmp3, label %for.body, label %for.end, !dbg !251

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !252
  %inc = add nsw i32 %7, 1, !dbg !252
  store i32 %inc, i32* %intVariable, align 4, !dbg !252
  br label %for.inc, !dbg !254

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !255
  %inc4 = add nsw i32 %8, 1, !dbg !255
  store i32 %inc4, i32* %i, align 4, !dbg !255
  br label %for.cond, !dbg !256, !llvm.loop !257

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !259
  call void @printIntLine(i32 %9), !dbg !260
  br label %if.end, !dbg !261

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !262
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !263 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %data12 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !268, metadata !DIExpression()), !dbg !269
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !269
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !269
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !270
  store i8* %arraydecay, i8** %data, align 8, !dbg !271
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !272, metadata !DIExpression()), !dbg !274
  %1 = load i8*, i8** %data, align 8, !dbg !275
  %call = call i64 @strlen(i8* %1) #7, !dbg !276
  store i64 %call, i64* %dataLen, align 8, !dbg !274
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !277, metadata !DIExpression()), !dbg !278
  %2 = load i64, i64* %dataLen, align 8, !dbg !279
  %sub = sub i64 100, %2, !dbg !281
  %cmp = icmp ugt i64 %sub, 1, !dbg !282
  br i1 %cmp, label %if.then, label %if.end11, !dbg !283

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !284
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !286
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !287
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !289
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !290

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !291
  %5 = load i64, i64* %dataLen, align 8, !dbg !294
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !295
  %6 = load i64, i64* %dataLen, align 8, !dbg !296
  %sub4 = sub i64 100, %6, !dbg !297
  %conv = trunc i64 %sub4 to i32, !dbg !298
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !299
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !300
  %cmp6 = icmp eq i8* %call5, null, !dbg !301
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !302

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !303
  %8 = load i8*, i8** %data, align 8, !dbg !305
  %9 = load i64, i64* %dataLen, align 8, !dbg !306
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !305
  store i8 0, i8* %arrayidx, align 1, !dbg !307
  br label %if.end, !dbg !308

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !309
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !310
  br label %if.end10, !dbg !311

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !312

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !313
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion to i8**, !dbg !314
  store i8* %11, i8** %unionFirst, align 8, !dbg !315
  call void @llvm.dbg.declare(metadata i8** %data12, metadata !316, metadata !DIExpression()), !dbg !318
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion to i8**, !dbg !319
  %12 = load i8*, i8** %unionSecond, align 8, !dbg !319
  store i8* %12, i8** %data12, align 8, !dbg !318
  call void @llvm.dbg.declare(metadata i32* %i, metadata !320, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.declare(metadata i32* %n, metadata !323, metadata !DIExpression()), !dbg !324
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !325, metadata !DIExpression()), !dbg !326
  %13 = load i8*, i8** %data12, align 8, !dbg !327
  %call13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !329
  %cmp14 = icmp eq i32 %call13, 1, !dbg !330
  br i1 %cmp14, label %if.then16, label %if.end24, !dbg !331

if.then16:                                        ; preds = %if.end11
  %14 = load i32, i32* %n, align 4, !dbg !332
  %cmp17 = icmp slt i32 %14, 10000, !dbg !335
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !336

if.then19:                                        ; preds = %if.then16
  store i32 0, i32* %intVariable, align 4, !dbg !337
  store i32 0, i32* %i, align 4, !dbg !339
  br label %for.cond, !dbg !341

for.cond:                                         ; preds = %for.inc, %if.then19
  %15 = load i32, i32* %i, align 4, !dbg !342
  %16 = load i32, i32* %n, align 4, !dbg !344
  %cmp20 = icmp slt i32 %15, %16, !dbg !345
  br i1 %cmp20, label %for.body, label %for.end, !dbg !346

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !347
  %inc = add nsw i32 %17, 1, !dbg !347
  store i32 %inc, i32* %intVariable, align 4, !dbg !347
  br label %for.inc, !dbg !349

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !350
  %inc22 = add nsw i32 %18, 1, !dbg !350
  store i32 %inc22, i32* %i, align 4, !dbg !350
  br label %for.cond, !dbg !351, !llvm.loop !352

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !354
  call void @printIntLine(i32 %19), !dbg !355
  br label %if.end23, !dbg !356

if.end23:                                         ; preds = %for.end, %if.then16
  br label %if.end24, !dbg !357

if.end24:                                         ; preds = %if.end23, %if.end11
  ret void, !dbg !358
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_34_good() #0 !dbg !359 {
entry:
  call void @goodG2B(), !dbg !360
  call void @goodB2G(), !dbg !361
  ret void, !dbg !362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !363 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !366, metadata !DIExpression()), !dbg !367
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !368
  %0 = load i8*, i8** %line.addr, align 8, !dbg !369
  %cmp = icmp ne i8* %0, null, !dbg !371
  br i1 %cmp, label %if.then, label %if.end, !dbg !372

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !373
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !375
  br label %if.end, !dbg !376

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !377
  ret void, !dbg !378
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !379 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !380, metadata !DIExpression()), !dbg !381
  %0 = load i8*, i8** %line.addr, align 8, !dbg !382
  %cmp = icmp ne i8* %0, null, !dbg !384
  br i1 %cmp, label %if.then, label %if.end, !dbg !385

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !386
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !388
  br label %if.end, !dbg !389

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !390
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !391 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load i32*, i32** %line.addr, align 8, !dbg !398
  %cmp = icmp ne i32* %0, null, !dbg !400
  br i1 %cmp, label %if.then, label %if.end, !dbg !401

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !402
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !404
  br label %if.end, !dbg !405

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !406
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !407 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !410, metadata !DIExpression()), !dbg !411
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !412
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.11, i64 0, i64 0), i32 %0), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !415 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !419, metadata !DIExpression()), !dbg !420
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !421
  %conv = sext i16 %0 to i32, !dbg !421
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.12, i64 0, i64 0), i32 %conv), !dbg !422
  ret void, !dbg !423
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !424 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !428, metadata !DIExpression()), !dbg !429
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !430
  %conv = fpext float %0 to double, !dbg !430
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !431
  ret void, !dbg !432
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !433 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !436, metadata !DIExpression()), !dbg !437
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !438
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !439
  ret void, !dbg !440
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !441 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !447, metadata !DIExpression()), !dbg !448
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !449
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !450
  ret void, !dbg !451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !452 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !455, metadata !DIExpression()), !dbg !456
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !457
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !458
  ret void, !dbg !459
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !460 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !463, metadata !DIExpression()), !dbg !464
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !465
  %conv = sext i8 %0 to i32, !dbg !465
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !466
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !468 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !473, metadata !DIExpression()), !dbg !477
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !478
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !479
  store i32 %0, i32* %arrayidx, align 4, !dbg !480
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !481
  store i32 0, i32* %arrayidx1, align 4, !dbg !482
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !483
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !484
  ret void, !dbg !485
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !486 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !489, metadata !DIExpression()), !dbg !490
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !491
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !492
  ret void, !dbg !493
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !494 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !497, metadata !DIExpression()), !dbg !498
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !499
  %conv = zext i8 %0 to i32, !dbg !499
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !500
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !502 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !506, metadata !DIExpression()), !dbg !507
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !508
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !509
  ret void, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !511 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !521, metadata !DIExpression()), !dbg !522
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !523
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !524
  %1 = load i32, i32* %intOne, align 4, !dbg !524
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !525
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !526
  %3 = load i32, i32* %intTwo, align 4, !dbg !526
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !527
  ret void, !dbg !528
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !529 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !533, metadata !DIExpression()), !dbg !534
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata i64* %i, metadata !537, metadata !DIExpression()), !dbg !538
  store i64 0, i64* %i, align 8, !dbg !539
  br label %for.cond, !dbg !541

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !542
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !544
  %cmp = icmp ult i64 %0, %1, !dbg !545
  br i1 %cmp, label %for.body, label %for.end, !dbg !546

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !547
  %3 = load i64, i64* %i, align 8, !dbg !549
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !547
  %4 = load i8, i8* %arrayidx, align 1, !dbg !547
  %conv = zext i8 %4 to i32, !dbg !547
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !550
  br label %for.inc, !dbg !551

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !552
  %inc = add i64 %5, 1, !dbg !552
  store i64 %inc, i64* %i, align 8, !dbg !552
  br label %for.cond, !dbg !553, !llvm.loop !554

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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_097/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_097/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_34_bad", scope: !45, file: !45, line: 36, type: !53, scopeLine: 37, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{null}
!55 = !DILocalVariable(name: "data", scope: !52, file: !45, line: 38, type: !42)
!56 = !DILocation(line: 38, column: 12, scope: !52)
!57 = !DILocalVariable(name: "myUnion", scope: !52, file: !45, line: 39, type: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_file_34_unionType", file: !59, line: 9, baseType: !60)
!59 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_097/source_code")
!60 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !59, line: 5, size: 64, elements: !61)
!61 = !{!62, !63}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !60, file: !59, line: 7, baseType: !42, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !60, file: !59, line: 8, baseType: !42, size: 64)
!64 = !DILocation(line: 39, column: 61, scope: !52)
!65 = !DILocalVariable(name: "dataBuffer", scope: !52, file: !45, line: 40, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 100)
!69 = !DILocation(line: 40, column: 10, scope: !52)
!70 = !DILocation(line: 41, column: 12, scope: !52)
!71 = !DILocation(line: 41, column: 10, scope: !52)
!72 = !DILocalVariable(name: "dataLen", scope: !73, file: !45, line: 44, type: !74)
!73 = distinct !DILexicalBlock(scope: !52, file: !45, line: 42, column: 5)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocation(line: 44, column: 16, scope: !73)
!78 = !DILocation(line: 44, column: 33, scope: !73)
!79 = !DILocation(line: 44, column: 26, scope: !73)
!80 = !DILocalVariable(name: "pFile", scope: !73, file: !45, line: 45, type: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !83, line: 7, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !85, line: 49, size: 1728, elements: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !102, !104, !105, !106, !110, !111, !113, !117, !120, !122, !125, !128, !129, !130, !131, !132}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !84, file: !85, line: 51, baseType: !23, size: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !84, file: !85, line: 54, baseType: !42, size: 64, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !84, file: !85, line: 55, baseType: !42, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !84, file: !85, line: 56, baseType: !42, size: 64, offset: 192)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !84, file: !85, line: 57, baseType: !42, size: 64, offset: 256)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !84, file: !85, line: 58, baseType: !42, size: 64, offset: 320)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !84, file: !85, line: 59, baseType: !42, size: 64, offset: 384)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !84, file: !85, line: 60, baseType: !42, size: 64, offset: 448)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !84, file: !85, line: 61, baseType: !42, size: 64, offset: 512)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !84, file: !85, line: 64, baseType: !42, size: 64, offset: 576)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !84, file: !85, line: 65, baseType: !42, size: 64, offset: 640)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !84, file: !85, line: 66, baseType: !42, size: 64, offset: 704)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !84, file: !85, line: 68, baseType: !100, size: 64, offset: 768)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !85, line: 36, flags: DIFlagFwdDecl)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !84, file: !85, line: 70, baseType: !103, size: 64, offset: 832)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !84, file: !85, line: 72, baseType: !23, size: 32, offset: 896)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !84, file: !85, line: 73, baseType: !23, size: 32, offset: 928)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !84, file: !85, line: 74, baseType: !107, size: 64, offset: 960)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !108, line: 152, baseType: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!109 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !84, file: !85, line: 77, baseType: !24, size: 16, offset: 1024)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !84, file: !85, line: 78, baseType: !112, size: 8, offset: 1040)
!112 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !84, file: !85, line: 79, baseType: !114, size: 8, offset: 1048)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 1)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !84, file: !85, line: 81, baseType: !118, size: 64, offset: 1088)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !85, line: 43, baseType: null)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !84, file: !85, line: 89, baseType: !121, size: 64, offset: 1152)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !108, line: 153, baseType: !109)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !84, file: !85, line: 91, baseType: !123, size: 64, offset: 1216)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !85, line: 37, flags: DIFlagFwdDecl)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !84, file: !85, line: 92, baseType: !126, size: 64, offset: 1280)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !85, line: 38, flags: DIFlagFwdDecl)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !84, file: !85, line: 93, baseType: !103, size: 64, offset: 1344)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !84, file: !85, line: 94, baseType: !22, size: 64, offset: 1408)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !84, file: !85, line: 95, baseType: !74, size: 64, offset: 1472)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !84, file: !85, line: 96, baseType: !23, size: 32, offset: 1536)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !84, file: !85, line: 98, baseType: !133, size: 160, offset: 1568)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 20)
!136 = !DILocation(line: 45, column: 16, scope: !73)
!137 = !DILocation(line: 47, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !73, file: !45, line: 47, column: 13)
!139 = !DILocation(line: 47, column: 16, scope: !138)
!140 = !DILocation(line: 47, column: 25, scope: !138)
!141 = !DILocation(line: 47, column: 13, scope: !73)
!142 = !DILocation(line: 49, column: 21, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !45, line: 48, column: 9)
!144 = !DILocation(line: 49, column: 19, scope: !143)
!145 = !DILocation(line: 50, column: 17, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !45, line: 50, column: 17)
!147 = !DILocation(line: 50, column: 23, scope: !146)
!148 = !DILocation(line: 50, column: 17, scope: !143)
!149 = !DILocation(line: 53, column: 27, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !45, line: 53, column: 21)
!151 = distinct !DILexicalBlock(scope: !146, file: !45, line: 51, column: 13)
!152 = !DILocation(line: 53, column: 32, scope: !150)
!153 = !DILocation(line: 53, column: 31, scope: !150)
!154 = !DILocation(line: 53, column: 51, scope: !150)
!155 = !DILocation(line: 53, column: 50, scope: !150)
!156 = !DILocation(line: 53, column: 41, scope: !150)
!157 = !DILocation(line: 53, column: 61, scope: !150)
!158 = !DILocation(line: 53, column: 21, scope: !150)
!159 = !DILocation(line: 53, column: 68, scope: !150)
!160 = !DILocation(line: 53, column: 21, scope: !151)
!161 = !DILocation(line: 55, column: 21, scope: !162)
!162 = distinct !DILexicalBlock(scope: !150, file: !45, line: 54, column: 17)
!163 = !DILocation(line: 57, column: 21, scope: !162)
!164 = !DILocation(line: 57, column: 26, scope: !162)
!165 = !DILocation(line: 57, column: 35, scope: !162)
!166 = !DILocation(line: 58, column: 17, scope: !162)
!167 = !DILocation(line: 59, column: 24, scope: !151)
!168 = !DILocation(line: 59, column: 17, scope: !151)
!169 = !DILocation(line: 60, column: 13, scope: !151)
!170 = !DILocation(line: 61, column: 9, scope: !143)
!171 = !DILocation(line: 63, column: 26, scope: !52)
!172 = !DILocation(line: 63, column: 13, scope: !52)
!173 = !DILocation(line: 63, column: 24, scope: !52)
!174 = !DILocalVariable(name: "data", scope: !175, file: !45, line: 65, type: !42)
!175 = distinct !DILexicalBlock(scope: !52, file: !45, line: 64, column: 5)
!176 = !DILocation(line: 65, column: 16, scope: !175)
!177 = !DILocation(line: 65, column: 31, scope: !175)
!178 = !DILocalVariable(name: "i", scope: !179, file: !45, line: 67, type: !23)
!179 = distinct !DILexicalBlock(scope: !175, file: !45, line: 66, column: 9)
!180 = !DILocation(line: 67, column: 17, scope: !179)
!181 = !DILocalVariable(name: "n", scope: !179, file: !45, line: 67, type: !23)
!182 = !DILocation(line: 67, column: 20, scope: !179)
!183 = !DILocalVariable(name: "intVariable", scope: !179, file: !45, line: 67, type: !23)
!184 = !DILocation(line: 67, column: 23, scope: !179)
!185 = !DILocation(line: 68, column: 24, scope: !186)
!186 = distinct !DILexicalBlock(scope: !179, file: !45, line: 68, column: 17)
!187 = !DILocation(line: 68, column: 17, scope: !186)
!188 = !DILocation(line: 68, column: 40, scope: !186)
!189 = !DILocation(line: 68, column: 17, scope: !179)
!190 = !DILocation(line: 71, column: 29, scope: !191)
!191 = distinct !DILexicalBlock(scope: !186, file: !45, line: 69, column: 13)
!192 = !DILocation(line: 72, column: 24, scope: !193)
!193 = distinct !DILexicalBlock(scope: !191, file: !45, line: 72, column: 17)
!194 = !DILocation(line: 72, column: 22, scope: !193)
!195 = !DILocation(line: 72, column: 29, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !45, line: 72, column: 17)
!197 = !DILocation(line: 72, column: 33, scope: !196)
!198 = !DILocation(line: 72, column: 31, scope: !196)
!199 = !DILocation(line: 72, column: 17, scope: !193)
!200 = !DILocation(line: 75, column: 32, scope: !201)
!201 = distinct !DILexicalBlock(scope: !196, file: !45, line: 73, column: 17)
!202 = !DILocation(line: 76, column: 17, scope: !201)
!203 = !DILocation(line: 72, column: 37, scope: !196)
!204 = !DILocation(line: 72, column: 17, scope: !196)
!205 = distinct !{!205, !199, !206, !207}
!206 = !DILocation(line: 76, column: 17, scope: !193)
!207 = !{!"llvm.loop.mustprogress"}
!208 = !DILocation(line: 77, column: 30, scope: !191)
!209 = !DILocation(line: 77, column: 17, scope: !191)
!210 = !DILocation(line: 78, column: 13, scope: !191)
!211 = !DILocation(line: 81, column: 1, scope: !52)
!212 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 88, type: !53, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!213 = !DILocalVariable(name: "data", scope: !212, file: !45, line: 90, type: !42)
!214 = !DILocation(line: 90, column: 12, scope: !212)
!215 = !DILocalVariable(name: "myUnion", scope: !212, file: !45, line: 91, type: !58)
!216 = !DILocation(line: 91, column: 61, scope: !212)
!217 = !DILocalVariable(name: "dataBuffer", scope: !212, file: !45, line: 92, type: !66)
!218 = !DILocation(line: 92, column: 10, scope: !212)
!219 = !DILocation(line: 93, column: 12, scope: !212)
!220 = !DILocation(line: 93, column: 10, scope: !212)
!221 = !DILocation(line: 95, column: 12, scope: !212)
!222 = !DILocation(line: 95, column: 5, scope: !212)
!223 = !DILocation(line: 96, column: 26, scope: !212)
!224 = !DILocation(line: 96, column: 13, scope: !212)
!225 = !DILocation(line: 96, column: 24, scope: !212)
!226 = !DILocalVariable(name: "data", scope: !227, file: !45, line: 98, type: !42)
!227 = distinct !DILexicalBlock(scope: !212, file: !45, line: 97, column: 5)
!228 = !DILocation(line: 98, column: 16, scope: !227)
!229 = !DILocation(line: 98, column: 31, scope: !227)
!230 = !DILocalVariable(name: "i", scope: !231, file: !45, line: 100, type: !23)
!231 = distinct !DILexicalBlock(scope: !227, file: !45, line: 99, column: 9)
!232 = !DILocation(line: 100, column: 17, scope: !231)
!233 = !DILocalVariable(name: "n", scope: !231, file: !45, line: 100, type: !23)
!234 = !DILocation(line: 100, column: 20, scope: !231)
!235 = !DILocalVariable(name: "intVariable", scope: !231, file: !45, line: 100, type: !23)
!236 = !DILocation(line: 100, column: 23, scope: !231)
!237 = !DILocation(line: 101, column: 24, scope: !238)
!238 = distinct !DILexicalBlock(scope: !231, file: !45, line: 101, column: 17)
!239 = !DILocation(line: 101, column: 17, scope: !238)
!240 = !DILocation(line: 101, column: 40, scope: !238)
!241 = !DILocation(line: 101, column: 17, scope: !231)
!242 = !DILocation(line: 104, column: 29, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !45, line: 102, column: 13)
!244 = !DILocation(line: 105, column: 24, scope: !245)
!245 = distinct !DILexicalBlock(scope: !243, file: !45, line: 105, column: 17)
!246 = !DILocation(line: 105, column: 22, scope: !245)
!247 = !DILocation(line: 105, column: 29, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !45, line: 105, column: 17)
!249 = !DILocation(line: 105, column: 33, scope: !248)
!250 = !DILocation(line: 105, column: 31, scope: !248)
!251 = !DILocation(line: 105, column: 17, scope: !245)
!252 = !DILocation(line: 108, column: 32, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !45, line: 106, column: 17)
!254 = !DILocation(line: 109, column: 17, scope: !253)
!255 = !DILocation(line: 105, column: 37, scope: !248)
!256 = !DILocation(line: 105, column: 17, scope: !248)
!257 = distinct !{!257, !251, !258, !207}
!258 = !DILocation(line: 109, column: 17, scope: !245)
!259 = !DILocation(line: 110, column: 30, scope: !243)
!260 = !DILocation(line: 110, column: 17, scope: !243)
!261 = !DILocation(line: 111, column: 13, scope: !243)
!262 = !DILocation(line: 114, column: 1, scope: !212)
!263 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 117, type: !53, scopeLine: 118, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!264 = !DILocalVariable(name: "data", scope: !263, file: !45, line: 119, type: !42)
!265 = !DILocation(line: 119, column: 12, scope: !263)
!266 = !DILocalVariable(name: "myUnion", scope: !263, file: !45, line: 120, type: !58)
!267 = !DILocation(line: 120, column: 61, scope: !263)
!268 = !DILocalVariable(name: "dataBuffer", scope: !263, file: !45, line: 121, type: !66)
!269 = !DILocation(line: 121, column: 10, scope: !263)
!270 = !DILocation(line: 122, column: 12, scope: !263)
!271 = !DILocation(line: 122, column: 10, scope: !263)
!272 = !DILocalVariable(name: "dataLen", scope: !273, file: !45, line: 125, type: !74)
!273 = distinct !DILexicalBlock(scope: !263, file: !45, line: 123, column: 5)
!274 = !DILocation(line: 125, column: 16, scope: !273)
!275 = !DILocation(line: 125, column: 33, scope: !273)
!276 = !DILocation(line: 125, column: 26, scope: !273)
!277 = !DILocalVariable(name: "pFile", scope: !273, file: !45, line: 126, type: !81)
!278 = !DILocation(line: 126, column: 16, scope: !273)
!279 = !DILocation(line: 128, column: 17, scope: !280)
!280 = distinct !DILexicalBlock(scope: !273, file: !45, line: 128, column: 13)
!281 = !DILocation(line: 128, column: 16, scope: !280)
!282 = !DILocation(line: 128, column: 25, scope: !280)
!283 = !DILocation(line: 128, column: 13, scope: !273)
!284 = !DILocation(line: 130, column: 21, scope: !285)
!285 = distinct !DILexicalBlock(scope: !280, file: !45, line: 129, column: 9)
!286 = !DILocation(line: 130, column: 19, scope: !285)
!287 = !DILocation(line: 131, column: 17, scope: !288)
!288 = distinct !DILexicalBlock(scope: !285, file: !45, line: 131, column: 17)
!289 = !DILocation(line: 131, column: 23, scope: !288)
!290 = !DILocation(line: 131, column: 17, scope: !285)
!291 = !DILocation(line: 134, column: 27, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !45, line: 134, column: 21)
!293 = distinct !DILexicalBlock(scope: !288, file: !45, line: 132, column: 13)
!294 = !DILocation(line: 134, column: 32, scope: !292)
!295 = !DILocation(line: 134, column: 31, scope: !292)
!296 = !DILocation(line: 134, column: 51, scope: !292)
!297 = !DILocation(line: 134, column: 50, scope: !292)
!298 = !DILocation(line: 134, column: 41, scope: !292)
!299 = !DILocation(line: 134, column: 61, scope: !292)
!300 = !DILocation(line: 134, column: 21, scope: !292)
!301 = !DILocation(line: 134, column: 68, scope: !292)
!302 = !DILocation(line: 134, column: 21, scope: !293)
!303 = !DILocation(line: 136, column: 21, scope: !304)
!304 = distinct !DILexicalBlock(scope: !292, file: !45, line: 135, column: 17)
!305 = !DILocation(line: 138, column: 21, scope: !304)
!306 = !DILocation(line: 138, column: 26, scope: !304)
!307 = !DILocation(line: 138, column: 35, scope: !304)
!308 = !DILocation(line: 139, column: 17, scope: !304)
!309 = !DILocation(line: 140, column: 24, scope: !293)
!310 = !DILocation(line: 140, column: 17, scope: !293)
!311 = !DILocation(line: 141, column: 13, scope: !293)
!312 = !DILocation(line: 142, column: 9, scope: !285)
!313 = !DILocation(line: 144, column: 26, scope: !263)
!314 = !DILocation(line: 144, column: 13, scope: !263)
!315 = !DILocation(line: 144, column: 24, scope: !263)
!316 = !DILocalVariable(name: "data", scope: !317, file: !45, line: 146, type: !42)
!317 = distinct !DILexicalBlock(scope: !263, file: !45, line: 145, column: 5)
!318 = !DILocation(line: 146, column: 16, scope: !317)
!319 = !DILocation(line: 146, column: 31, scope: !317)
!320 = !DILocalVariable(name: "i", scope: !321, file: !45, line: 148, type: !23)
!321 = distinct !DILexicalBlock(scope: !317, file: !45, line: 147, column: 9)
!322 = !DILocation(line: 148, column: 17, scope: !321)
!323 = !DILocalVariable(name: "n", scope: !321, file: !45, line: 148, type: !23)
!324 = !DILocation(line: 148, column: 20, scope: !321)
!325 = !DILocalVariable(name: "intVariable", scope: !321, file: !45, line: 148, type: !23)
!326 = !DILocation(line: 148, column: 23, scope: !321)
!327 = !DILocation(line: 149, column: 24, scope: !328)
!328 = distinct !DILexicalBlock(scope: !321, file: !45, line: 149, column: 17)
!329 = !DILocation(line: 149, column: 17, scope: !328)
!330 = !DILocation(line: 149, column: 40, scope: !328)
!331 = !DILocation(line: 149, column: 17, scope: !321)
!332 = !DILocation(line: 152, column: 21, scope: !333)
!333 = distinct !DILexicalBlock(scope: !334, file: !45, line: 152, column: 21)
!334 = distinct !DILexicalBlock(scope: !328, file: !45, line: 150, column: 13)
!335 = !DILocation(line: 152, column: 23, scope: !333)
!336 = !DILocation(line: 152, column: 21, scope: !334)
!337 = !DILocation(line: 154, column: 33, scope: !338)
!338 = distinct !DILexicalBlock(scope: !333, file: !45, line: 153, column: 17)
!339 = !DILocation(line: 155, column: 28, scope: !340)
!340 = distinct !DILexicalBlock(scope: !338, file: !45, line: 155, column: 21)
!341 = !DILocation(line: 155, column: 26, scope: !340)
!342 = !DILocation(line: 155, column: 33, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !45, line: 155, column: 21)
!344 = !DILocation(line: 155, column: 37, scope: !343)
!345 = !DILocation(line: 155, column: 35, scope: !343)
!346 = !DILocation(line: 155, column: 21, scope: !340)
!347 = !DILocation(line: 158, column: 36, scope: !348)
!348 = distinct !DILexicalBlock(scope: !343, file: !45, line: 156, column: 21)
!349 = !DILocation(line: 159, column: 21, scope: !348)
!350 = !DILocation(line: 155, column: 41, scope: !343)
!351 = !DILocation(line: 155, column: 21, scope: !343)
!352 = distinct !{!352, !346, !353, !207}
!353 = !DILocation(line: 159, column: 21, scope: !340)
!354 = !DILocation(line: 160, column: 34, scope: !338)
!355 = !DILocation(line: 160, column: 21, scope: !338)
!356 = !DILocation(line: 161, column: 17, scope: !338)
!357 = !DILocation(line: 162, column: 13, scope: !334)
!358 = !DILocation(line: 165, column: 1, scope: !263)
!359 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_34_good", scope: !45, file: !45, line: 167, type: !53, scopeLine: 168, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!360 = !DILocation(line: 169, column: 5, scope: !359)
!361 = !DILocation(line: 170, column: 5, scope: !359)
!362 = !DILocation(line: 171, column: 1, scope: !359)
!363 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !364, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!364 = !DISubroutineType(types: !365)
!365 = !{null, !42}
!366 = !DILocalVariable(name: "line", arg: 1, scope: !363, file: !3, line: 11, type: !42)
!367 = !DILocation(line: 11, column: 25, scope: !363)
!368 = !DILocation(line: 13, column: 1, scope: !363)
!369 = !DILocation(line: 14, column: 8, scope: !370)
!370 = distinct !DILexicalBlock(scope: !363, file: !3, line: 14, column: 8)
!371 = !DILocation(line: 14, column: 13, scope: !370)
!372 = !DILocation(line: 14, column: 8, scope: !363)
!373 = !DILocation(line: 16, column: 24, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !3, line: 15, column: 5)
!375 = !DILocation(line: 16, column: 9, scope: !374)
!376 = !DILocation(line: 17, column: 5, scope: !374)
!377 = !DILocation(line: 18, column: 5, scope: !363)
!378 = !DILocation(line: 19, column: 1, scope: !363)
!379 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !364, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!380 = !DILocalVariable(name: "line", arg: 1, scope: !379, file: !3, line: 20, type: !42)
!381 = !DILocation(line: 20, column: 29, scope: !379)
!382 = !DILocation(line: 22, column: 8, scope: !383)
!383 = distinct !DILexicalBlock(scope: !379, file: !3, line: 22, column: 8)
!384 = !DILocation(line: 22, column: 13, scope: !383)
!385 = !DILocation(line: 22, column: 8, scope: !379)
!386 = !DILocation(line: 24, column: 24, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !3, line: 23, column: 5)
!388 = !DILocation(line: 24, column: 9, scope: !387)
!389 = !DILocation(line: 25, column: 5, scope: !387)
!390 = !DILocation(line: 26, column: 1, scope: !379)
!391 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !392, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !75, line: 74, baseType: !23)
!396 = !DILocalVariable(name: "line", arg: 1, scope: !391, file: !3, line: 27, type: !394)
!397 = !DILocation(line: 27, column: 29, scope: !391)
!398 = !DILocation(line: 29, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !391, file: !3, line: 29, column: 8)
!400 = !DILocation(line: 29, column: 13, scope: !399)
!401 = !DILocation(line: 29, column: 8, scope: !391)
!402 = !DILocation(line: 31, column: 27, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !3, line: 30, column: 5)
!404 = !DILocation(line: 31, column: 9, scope: !403)
!405 = !DILocation(line: 32, column: 5, scope: !403)
!406 = !DILocation(line: 33, column: 1, scope: !391)
!407 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !408, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !23}
!410 = !DILocalVariable(name: "intNumber", arg: 1, scope: !407, file: !3, line: 35, type: !23)
!411 = !DILocation(line: 35, column: 24, scope: !407)
!412 = !DILocation(line: 37, column: 20, scope: !407)
!413 = !DILocation(line: 37, column: 5, scope: !407)
!414 = !DILocation(line: 38, column: 1, scope: !407)
!415 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !416, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!416 = !DISubroutineType(types: !417)
!417 = !{null, !418}
!418 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!419 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !415, file: !3, line: 40, type: !418)
!420 = !DILocation(line: 40, column: 28, scope: !415)
!421 = !DILocation(line: 42, column: 21, scope: !415)
!422 = !DILocation(line: 42, column: 5, scope: !415)
!423 = !DILocation(line: 43, column: 1, scope: !415)
!424 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !425, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !427}
!427 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!428 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !424, file: !3, line: 45, type: !427)
!429 = !DILocation(line: 45, column: 28, scope: !424)
!430 = !DILocation(line: 47, column: 20, scope: !424)
!431 = !DILocation(line: 47, column: 5, scope: !424)
!432 = !DILocation(line: 48, column: 1, scope: !424)
!433 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !434, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!434 = !DISubroutineType(types: !435)
!435 = !{null, !109}
!436 = !DILocalVariable(name: "longNumber", arg: 1, scope: !433, file: !3, line: 50, type: !109)
!437 = !DILocation(line: 50, column: 26, scope: !433)
!438 = !DILocation(line: 52, column: 21, scope: !433)
!439 = !DILocation(line: 52, column: 5, scope: !433)
!440 = !DILocation(line: 53, column: 1, scope: !433)
!441 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !442, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!442 = !DISubroutineType(types: !443)
!443 = !{null, !444}
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !445, line: 27, baseType: !446)
!445 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !108, line: 44, baseType: !109)
!447 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !441, file: !3, line: 55, type: !444)
!448 = !DILocation(line: 55, column: 33, scope: !441)
!449 = !DILocation(line: 57, column: 29, scope: !441)
!450 = !DILocation(line: 57, column: 5, scope: !441)
!451 = !DILocation(line: 58, column: 1, scope: !441)
!452 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !453, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !74}
!455 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !452, file: !3, line: 60, type: !74)
!456 = !DILocation(line: 60, column: 29, scope: !452)
!457 = !DILocation(line: 62, column: 21, scope: !452)
!458 = !DILocation(line: 62, column: 5, scope: !452)
!459 = !DILocation(line: 63, column: 1, scope: !452)
!460 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !461, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !43}
!463 = !DILocalVariable(name: "charHex", arg: 1, scope: !460, file: !3, line: 65, type: !43)
!464 = !DILocation(line: 65, column: 29, scope: !460)
!465 = !DILocation(line: 67, column: 22, scope: !460)
!466 = !DILocation(line: 67, column: 5, scope: !460)
!467 = !DILocation(line: 68, column: 1, scope: !460)
!468 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !469, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !395}
!471 = !DILocalVariable(name: "wideChar", arg: 1, scope: !468, file: !3, line: 70, type: !395)
!472 = !DILocation(line: 70, column: 29, scope: !468)
!473 = !DILocalVariable(name: "s", scope: !468, file: !3, line: 74, type: !474)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 64, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 2)
!477 = !DILocation(line: 74, column: 13, scope: !468)
!478 = !DILocation(line: 75, column: 16, scope: !468)
!479 = !DILocation(line: 75, column: 9, scope: !468)
!480 = !DILocation(line: 75, column: 14, scope: !468)
!481 = !DILocation(line: 76, column: 9, scope: !468)
!482 = !DILocation(line: 76, column: 14, scope: !468)
!483 = !DILocation(line: 77, column: 21, scope: !468)
!484 = !DILocation(line: 77, column: 5, scope: !468)
!485 = !DILocation(line: 78, column: 1, scope: !468)
!486 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !487, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !7}
!489 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !486, file: !3, line: 80, type: !7)
!490 = !DILocation(line: 80, column: 33, scope: !486)
!491 = !DILocation(line: 82, column: 20, scope: !486)
!492 = !DILocation(line: 82, column: 5, scope: !486)
!493 = !DILocation(line: 83, column: 1, scope: !486)
!494 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !495, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !25}
!497 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !494, file: !3, line: 85, type: !25)
!498 = !DILocation(line: 85, column: 45, scope: !494)
!499 = !DILocation(line: 87, column: 22, scope: !494)
!500 = !DILocation(line: 87, column: 5, scope: !494)
!501 = !DILocation(line: 88, column: 1, scope: !494)
!502 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !503, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !505}
!505 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!506 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !502, file: !3, line: 90, type: !505)
!507 = !DILocation(line: 90, column: 29, scope: !502)
!508 = !DILocation(line: 92, column: 20, scope: !502)
!509 = !DILocation(line: 92, column: 5, scope: !502)
!510 = !DILocation(line: 93, column: 1, scope: !502)
!511 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !512, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!512 = !DISubroutineType(types: !513)
!513 = !{null, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !516, line: 100, baseType: !517)
!516 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_097/source_code")
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !516, line: 96, size: 64, elements: !518)
!518 = !{!519, !520}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !517, file: !516, line: 98, baseType: !23, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !517, file: !516, line: 99, baseType: !23, size: 32, offset: 32)
!521 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !511, file: !3, line: 95, type: !514)
!522 = !DILocation(line: 95, column: 40, scope: !511)
!523 = !DILocation(line: 97, column: 26, scope: !511)
!524 = !DILocation(line: 97, column: 47, scope: !511)
!525 = !DILocation(line: 97, column: 55, scope: !511)
!526 = !DILocation(line: 97, column: 76, scope: !511)
!527 = !DILocation(line: 97, column: 5, scope: !511)
!528 = !DILocation(line: 98, column: 1, scope: !511)
!529 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !530, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!530 = !DISubroutineType(types: !531)
!531 = !{null, !532, !74}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!533 = !DILocalVariable(name: "bytes", arg: 1, scope: !529, file: !3, line: 100, type: !532)
!534 = !DILocation(line: 100, column: 38, scope: !529)
!535 = !DILocalVariable(name: "numBytes", arg: 2, scope: !529, file: !3, line: 100, type: !74)
!536 = !DILocation(line: 100, column: 52, scope: !529)
!537 = !DILocalVariable(name: "i", scope: !529, file: !3, line: 102, type: !74)
!538 = !DILocation(line: 102, column: 12, scope: !529)
!539 = !DILocation(line: 103, column: 12, scope: !540)
!540 = distinct !DILexicalBlock(scope: !529, file: !3, line: 103, column: 5)
!541 = !DILocation(line: 103, column: 10, scope: !540)
!542 = !DILocation(line: 103, column: 17, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !3, line: 103, column: 5)
!544 = !DILocation(line: 103, column: 21, scope: !543)
!545 = !DILocation(line: 103, column: 19, scope: !543)
!546 = !DILocation(line: 103, column: 5, scope: !540)
!547 = !DILocation(line: 105, column: 24, scope: !548)
!548 = distinct !DILexicalBlock(scope: !543, file: !3, line: 104, column: 5)
!549 = !DILocation(line: 105, column: 30, scope: !548)
!550 = !DILocation(line: 105, column: 9, scope: !548)
!551 = !DILocation(line: 106, column: 5, scope: !548)
!552 = !DILocation(line: 103, column: 31, scope: !543)
!553 = !DILocation(line: 103, column: 5, scope: !543)
!554 = distinct !{!554, !546, !555, !207}
!555 = !DILocation(line: 106, column: 5, scope: !540)
!556 = !DILocation(line: 107, column: 5, scope: !529)
!557 = !DILocation(line: 108, column: 1, scope: !529)
!558 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !559, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!559 = !DISubroutineType(types: !560)
!560 = !{!74, !532, !74, !42}
!561 = !DILocalVariable(name: "bytes", arg: 1, scope: !558, file: !3, line: 113, type: !532)
!562 = !DILocation(line: 113, column: 39, scope: !558)
!563 = !DILocalVariable(name: "numBytes", arg: 2, scope: !558, file: !3, line: 113, type: !74)
!564 = !DILocation(line: 113, column: 53, scope: !558)
!565 = !DILocalVariable(name: "hex", arg: 3, scope: !558, file: !3, line: 113, type: !42)
!566 = !DILocation(line: 113, column: 71, scope: !558)
!567 = !DILocalVariable(name: "numWritten", scope: !558, file: !3, line: 115, type: !74)
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
!591 = distinct !{!591, !569, !592, !207}
!592 = !DILocation(line: 127, column: 5, scope: !558)
!593 = !DILocation(line: 129, column: 12, scope: !558)
!594 = !DILocation(line: 129, column: 5, scope: !558)
!595 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !596, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!596 = !DISubroutineType(types: !597)
!597 = !{!74, !532, !74, !394}
!598 = !DILocalVariable(name: "bytes", arg: 1, scope: !595, file: !3, line: 135, type: !532)
!599 = !DILocation(line: 135, column: 41, scope: !595)
!600 = !DILocalVariable(name: "numBytes", arg: 2, scope: !595, file: !3, line: 135, type: !74)
!601 = !DILocation(line: 135, column: 55, scope: !595)
!602 = !DILocalVariable(name: "hex", arg: 3, scope: !595, file: !3, line: 135, type: !394)
!603 = !DILocation(line: 135, column: 76, scope: !595)
!604 = !DILocalVariable(name: "numWritten", scope: !595, file: !3, line: 137, type: !74)
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
!635 = distinct !{!635, !606, !636, !207}
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
