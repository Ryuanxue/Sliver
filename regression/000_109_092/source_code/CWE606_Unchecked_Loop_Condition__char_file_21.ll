; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_21.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@badStatic = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@goodB2G1Static = dso_local global i32 0, align 4, !dbg !9
@goodB2G2Static = dso_local global i32 0, align 4, !dbg !11
@goodG2BStatic = dso_local global i32 0, align 4, !dbg !13
@.str.4 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i8* %data) #0 !dbg !19 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !24, metadata !DIExpression()), !dbg !25
  %0 = load i32, i32* @badStatic, align 4, !dbg !26
  %tobool = icmp ne i32 %0, 0, !dbg !26
  br i1 %tobool, label %if.then, label %if.end4, !dbg !28

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !29, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %n, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !35, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %data.addr, align 8, !dbg !37
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !39
  %cmp = icmp eq i32 %call, 1, !dbg !40
  br i1 %cmp, label %if.then1, label %if.end, !dbg !41

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !42
  store i32 0, i32* %i, align 4, !dbg !44
  br label %for.cond, !dbg !46

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !47
  %3 = load i32, i32* %n, align 4, !dbg !49
  %cmp2 = icmp slt i32 %2, %3, !dbg !50
  br i1 %cmp2, label %for.body, label %for.end, !dbg !51

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !52
  %inc = add nsw i32 %4, 1, !dbg !52
  store i32 %inc, i32* %intVariable, align 4, !dbg !52
  br label %for.inc, !dbg !54

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !55
  %inc3 = add nsw i32 %5, 1, !dbg !55
  store i32 %inc3, i32* %i, align 4, !dbg !55
  br label %for.cond, !dbg !56, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !60
  call void @printIntLine(i32 %6), !dbg !61
  br label %if.end, !dbg !62

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !63

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !64
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_21_bad() #0 !dbg !65 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !70, metadata !DIExpression()), !dbg !74
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !74
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !74
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !75
  store i8* %arraydecay, i8** %data, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !77, metadata !DIExpression()), !dbg !82
  %1 = load i8*, i8** %data, align 8, !dbg !83
  %call = call i64 @strlen(i8* %1) #7, !dbg !84
  store i64 %call, i64* %dataLen, align 8, !dbg !82
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !85, metadata !DIExpression()), !dbg !142
  %2 = load i64, i64* %dataLen, align 8, !dbg !143
  %sub = sub i64 100, %2, !dbg !145
  %cmp = icmp ugt i64 %sub, 1, !dbg !146
  br i1 %cmp, label %if.then, label %if.end11, !dbg !147

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !148
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !150
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !151
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !153
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !154

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !155
  %5 = load i64, i64* %dataLen, align 8, !dbg !158
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !159
  %6 = load i64, i64* %dataLen, align 8, !dbg !160
  %sub4 = sub i64 100, %6, !dbg !161
  %conv = trunc i64 %sub4 to i32, !dbg !162
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !163
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !164
  %cmp6 = icmp eq i8* %call5, null, !dbg !165
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !166

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !167
  %8 = load i8*, i8** %data, align 8, !dbg !169
  %9 = load i64, i64* %dataLen, align 8, !dbg !170
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !169
  store i8 0, i8* %arrayidx, align 1, !dbg !171
  br label %if.end, !dbg !172

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !173
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !174
  br label %if.end10, !dbg !175

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !176

if.end11:                                         ; preds = %if.end10, %entry
  store i32 1, i32* @badStatic, align 4, !dbg !177
  %11 = load i8*, i8** %data, align 8, !dbg !178
  call void @badSink(i8* %11), !dbg !179
  ret void, !dbg !180
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1Sink(i8* %data) #0 !dbg !181 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !182, metadata !DIExpression()), !dbg !183
  %0 = load i32, i32* @goodB2G1Static, align 4, !dbg !184
  %tobool = icmp ne i32 %0, 0, !dbg !184
  br i1 %tobool, label %if.then, label %if.else, !dbg !186

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !187
  br label %if.end7, !dbg !189

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !190, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata i32* %n, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !196, metadata !DIExpression()), !dbg !197
  %1 = load i8*, i8** %data.addr, align 8, !dbg !198
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !200
  %cmp = icmp eq i32 %call, 1, !dbg !201
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !202

if.then1:                                         ; preds = %if.else
  %2 = load i32, i32* %n, align 4, !dbg !203
  %cmp2 = icmp slt i32 %2, 10000, !dbg !206
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !207

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !208
  store i32 0, i32* %i, align 4, !dbg !210
  br label %for.cond, !dbg !212

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !213
  %4 = load i32, i32* %n, align 4, !dbg !215
  %cmp4 = icmp slt i32 %3, %4, !dbg !216
  br i1 %cmp4, label %for.body, label %for.end, !dbg !217

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !218
  %inc = add nsw i32 %5, 1, !dbg !218
  store i32 %inc, i32* %intVariable, align 4, !dbg !218
  br label %for.inc, !dbg !220

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !221
  %inc5 = add nsw i32 %6, 1, !dbg !221
  store i32 %inc5, i32* %i, align 4, !dbg !221
  br label %for.cond, !dbg !222, !llvm.loop !223

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !225
  call void @printIntLine(i32 %7), !dbg !226
  br label %if.end, !dbg !227

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !228

if.end6:                                          ; preds = %if.end, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void, !dbg !229
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !230 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !233, metadata !DIExpression()), !dbg !234
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !234
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !234
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !235
  store i8* %arraydecay, i8** %data, align 8, !dbg !236
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !237, metadata !DIExpression()), !dbg !239
  %1 = load i8*, i8** %data, align 8, !dbg !240
  %call = call i64 @strlen(i8* %1) #7, !dbg !241
  store i64 %call, i64* %dataLen, align 8, !dbg !239
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !242, metadata !DIExpression()), !dbg !243
  %2 = load i64, i64* %dataLen, align 8, !dbg !244
  %sub = sub i64 100, %2, !dbg !246
  %cmp = icmp ugt i64 %sub, 1, !dbg !247
  br i1 %cmp, label %if.then, label %if.end11, !dbg !248

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !249
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !251
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !252
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !254
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !255

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !256
  %5 = load i64, i64* %dataLen, align 8, !dbg !259
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !260
  %6 = load i64, i64* %dataLen, align 8, !dbg !261
  %sub4 = sub i64 100, %6, !dbg !262
  %conv = trunc i64 %sub4 to i32, !dbg !263
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !264
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !265
  %cmp6 = icmp eq i8* %call5, null, !dbg !266
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !267

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !268
  %8 = load i8*, i8** %data, align 8, !dbg !270
  %9 = load i64, i64* %dataLen, align 8, !dbg !271
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !270
  store i8 0, i8* %arrayidx, align 1, !dbg !272
  br label %if.end, !dbg !273

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !274
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !275
  br label %if.end10, !dbg !276

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !277

if.end11:                                         ; preds = %if.end10, %entry
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !278
  %11 = load i8*, i8** %data, align 8, !dbg !279
  call void @goodB2G1Sink(i8* %11), !dbg !280
  ret void, !dbg !281
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2Sink(i8* %data) #0 !dbg !282 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !283, metadata !DIExpression()), !dbg !284
  %0 = load i32, i32* @goodB2G2Static, align 4, !dbg !285
  %tobool = icmp ne i32 %0, 0, !dbg !285
  br i1 %tobool, label %if.then, label %if.end7, !dbg !287

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !288, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata i32* %n, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !294, metadata !DIExpression()), !dbg !295
  %1 = load i8*, i8** %data.addr, align 8, !dbg !296
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !298
  %cmp = icmp eq i32 %call, 1, !dbg !299
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !300

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* %n, align 4, !dbg !301
  %cmp2 = icmp slt i32 %2, 10000, !dbg !304
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !305

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !306
  store i32 0, i32* %i, align 4, !dbg !308
  br label %for.cond, !dbg !310

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !311
  %4 = load i32, i32* %n, align 4, !dbg !313
  %cmp4 = icmp slt i32 %3, %4, !dbg !314
  br i1 %cmp4, label %for.body, label %for.end, !dbg !315

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !316
  %inc = add nsw i32 %5, 1, !dbg !316
  store i32 %inc, i32* %intVariable, align 4, !dbg !316
  br label %for.inc, !dbg !318

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !319
  %inc5 = add nsw i32 %6, 1, !dbg !319
  store i32 %inc5, i32* %i, align 4, !dbg !319
  br label %for.cond, !dbg !320, !llvm.loop !321

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !323
  call void @printIntLine(i32 %7), !dbg !324
  br label %if.end, !dbg !325

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !326

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end7, !dbg !327

if.end7:                                          ; preds = %if.end6, %entry
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !329 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !332, metadata !DIExpression()), !dbg !333
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !333
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !333
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !334
  store i8* %arraydecay, i8** %data, align 8, !dbg !335
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !336, metadata !DIExpression()), !dbg !338
  %1 = load i8*, i8** %data, align 8, !dbg !339
  %call = call i64 @strlen(i8* %1) #7, !dbg !340
  store i64 %call, i64* %dataLen, align 8, !dbg !338
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !341, metadata !DIExpression()), !dbg !342
  %2 = load i64, i64* %dataLen, align 8, !dbg !343
  %sub = sub i64 100, %2, !dbg !345
  %cmp = icmp ugt i64 %sub, 1, !dbg !346
  br i1 %cmp, label %if.then, label %if.end11, !dbg !347

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !348
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !350
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !351
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !353
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !354

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !355
  %5 = load i64, i64* %dataLen, align 8, !dbg !358
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !359
  %6 = load i64, i64* %dataLen, align 8, !dbg !360
  %sub4 = sub i64 100, %6, !dbg !361
  %conv = trunc i64 %sub4 to i32, !dbg !362
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !363
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !364
  %cmp6 = icmp eq i8* %call5, null, !dbg !365
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !366

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !367
  %8 = load i8*, i8** %data, align 8, !dbg !369
  %9 = load i64, i64* %dataLen, align 8, !dbg !370
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !369
  store i8 0, i8* %arrayidx, align 1, !dbg !371
  br label %if.end, !dbg !372

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !373
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !374
  br label %if.end10, !dbg !375

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !376

if.end11:                                         ; preds = %if.end10, %entry
  store i32 1, i32* @goodB2G2Static, align 4, !dbg !377
  %11 = load i8*, i8** %data, align 8, !dbg !378
  call void @goodB2G2Sink(i8* %11), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !381 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %0 = load i32, i32* @goodG2BStatic, align 4, !dbg !384
  %tobool = icmp ne i32 %0, 0, !dbg !384
  br i1 %tobool, label %if.then, label %if.end4, !dbg !386

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !387, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata i32* %n, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !393, metadata !DIExpression()), !dbg !394
  %1 = load i8*, i8** %data.addr, align 8, !dbg !395
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !397
  %cmp = icmp eq i32 %call, 1, !dbg !398
  br i1 %cmp, label %if.then1, label %if.end, !dbg !399

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !400
  store i32 0, i32* %i, align 4, !dbg !402
  br label %for.cond, !dbg !404

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !405
  %3 = load i32, i32* %n, align 4, !dbg !407
  %cmp2 = icmp slt i32 %2, %3, !dbg !408
  br i1 %cmp2, label %for.body, label %for.end, !dbg !409

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !410
  %inc = add nsw i32 %4, 1, !dbg !410
  store i32 %inc, i32* %intVariable, align 4, !dbg !410
  br label %for.inc, !dbg !412

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !413
  %inc3 = add nsw i32 %5, 1, !dbg !413
  store i32 %inc3, i32* %i, align 4, !dbg !413
  br label %for.cond, !dbg !414, !llvm.loop !415

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !417
  call void @printIntLine(i32 %6), !dbg !418
  br label %if.end, !dbg !419

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !420

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !421
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !422 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !423, metadata !DIExpression()), !dbg !424
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !426
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !426
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !427
  store i8* %arraydecay, i8** %data, align 8, !dbg !428
  %1 = load i8*, i8** %data, align 8, !dbg !429
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !430
  store i32 1, i32* @goodG2BStatic, align 4, !dbg !431
  %2 = load i8*, i8** %data, align 8, !dbg !432
  call void @goodG2BSink(i8* %2), !dbg !433
  ret void, !dbg !434
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_21_good() #0 !dbg !435 {
entry:
  call void @goodB2G1(), !dbg !436
  call void @goodB2G2(), !dbg !437
  call void @goodG2B(), !dbg !438
  ret void, !dbg !439
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "badStatic", scope: !2, file: !3, line: 36, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_21.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_092/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0, !9, !11, !13}
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "goodB2G1Static", scope: !2, file: !3, line: 94, type: !7, isLocal: false, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "goodB2G2Static", scope: !2, file: !3, line: 95, type: !7, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "goodG2BStatic", scope: !2, file: !3, line: 96, type: !7, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "badSink", scope: !3, file: !3, line: 38, type: !20, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DILocalVariable(name: "data", arg: 1, scope: !19, file: !3, line: 38, type: !22)
!25 = !DILocation(line: 38, column: 21, scope: !19)
!26 = !DILocation(line: 40, column: 8, scope: !27)
!27 = distinct !DILexicalBlock(scope: !19, file: !3, line: 40, column: 8)
!28 = !DILocation(line: 40, column: 8, scope: !19)
!29 = !DILocalVariable(name: "i", scope: !30, file: !3, line: 43, type: !7)
!30 = distinct !DILexicalBlock(scope: !31, file: !3, line: 42, column: 9)
!31 = distinct !DILexicalBlock(scope: !27, file: !3, line: 41, column: 5)
!32 = !DILocation(line: 43, column: 17, scope: !30)
!33 = !DILocalVariable(name: "n", scope: !30, file: !3, line: 43, type: !7)
!34 = !DILocation(line: 43, column: 20, scope: !30)
!35 = !DILocalVariable(name: "intVariable", scope: !30, file: !3, line: 43, type: !7)
!36 = !DILocation(line: 43, column: 23, scope: !30)
!37 = !DILocation(line: 44, column: 24, scope: !38)
!38 = distinct !DILexicalBlock(scope: !30, file: !3, line: 44, column: 17)
!39 = !DILocation(line: 44, column: 17, scope: !38)
!40 = !DILocation(line: 44, column: 40, scope: !38)
!41 = !DILocation(line: 44, column: 17, scope: !30)
!42 = !DILocation(line: 47, column: 29, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !3, line: 45, column: 13)
!44 = !DILocation(line: 48, column: 24, scope: !45)
!45 = distinct !DILexicalBlock(scope: !43, file: !3, line: 48, column: 17)
!46 = !DILocation(line: 48, column: 22, scope: !45)
!47 = !DILocation(line: 48, column: 29, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !3, line: 48, column: 17)
!49 = !DILocation(line: 48, column: 33, scope: !48)
!50 = !DILocation(line: 48, column: 31, scope: !48)
!51 = !DILocation(line: 48, column: 17, scope: !45)
!52 = !DILocation(line: 51, column: 32, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !3, line: 49, column: 17)
!54 = !DILocation(line: 52, column: 17, scope: !53)
!55 = !DILocation(line: 48, column: 37, scope: !48)
!56 = !DILocation(line: 48, column: 17, scope: !48)
!57 = distinct !{!57, !51, !58, !59}
!58 = !DILocation(line: 52, column: 17, scope: !45)
!59 = !{!"llvm.loop.mustprogress"}
!60 = !DILocation(line: 53, column: 30, scope: !43)
!61 = !DILocation(line: 53, column: 17, scope: !43)
!62 = !DILocation(line: 54, column: 13, scope: !43)
!63 = !DILocation(line: 56, column: 5, scope: !31)
!64 = !DILocation(line: 57, column: 1, scope: !19)
!65 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_21_bad", scope: !3, file: !3, line: 59, type: !66, scopeLine: 60, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!66 = !DISubroutineType(types: !67)
!67 = !{null}
!68 = !DILocalVariable(name: "data", scope: !65, file: !3, line: 61, type: !22)
!69 = !DILocation(line: 61, column: 12, scope: !65)
!70 = !DILocalVariable(name: "dataBuffer", scope: !65, file: !3, line: 62, type: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 800, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 100)
!74 = !DILocation(line: 62, column: 10, scope: !65)
!75 = !DILocation(line: 63, column: 12, scope: !65)
!76 = !DILocation(line: 63, column: 10, scope: !65)
!77 = !DILocalVariable(name: "dataLen", scope: !78, file: !3, line: 66, type: !79)
!78 = distinct !DILexicalBlock(scope: !65, file: !3, line: 64, column: 5)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !80, line: 46, baseType: !81)
!80 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!81 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!82 = !DILocation(line: 66, column: 16, scope: !78)
!83 = !DILocation(line: 66, column: 33, scope: !78)
!84 = !DILocation(line: 66, column: 26, scope: !78)
!85 = !DILocalVariable(name: "pFile", scope: !78, file: !3, line: 67, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !88, line: 7, baseType: !89)
!88 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !90, line: 49, size: 1728, elements: !91)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !107, !109, !110, !111, !115, !117, !119, !123, !126, !128, !131, !134, !135, !136, !137, !138}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !89, file: !90, line: 51, baseType: !7, size: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !89, file: !90, line: 54, baseType: !22, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !89, file: !90, line: 55, baseType: !22, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !89, file: !90, line: 56, baseType: !22, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !89, file: !90, line: 57, baseType: !22, size: 64, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !89, file: !90, line: 58, baseType: !22, size: 64, offset: 320)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !89, file: !90, line: 59, baseType: !22, size: 64, offset: 384)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !89, file: !90, line: 60, baseType: !22, size: 64, offset: 448)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !89, file: !90, line: 61, baseType: !22, size: 64, offset: 512)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !89, file: !90, line: 64, baseType: !22, size: 64, offset: 576)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !89, file: !90, line: 65, baseType: !22, size: 64, offset: 640)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !89, file: !90, line: 66, baseType: !22, size: 64, offset: 704)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !89, file: !90, line: 68, baseType: !105, size: 64, offset: 768)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !90, line: 36, flags: DIFlagFwdDecl)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !89, file: !90, line: 70, baseType: !108, size: 64, offset: 832)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !89, file: !90, line: 72, baseType: !7, size: 32, offset: 896)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !89, file: !90, line: 73, baseType: !7, size: 32, offset: 928)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !89, file: !90, line: 74, baseType: !112, size: 64, offset: 960)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !113, line: 152, baseType: !114)
!113 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!114 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !89, file: !90, line: 77, baseType: !116, size: 16, offset: 1024)
!116 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !89, file: !90, line: 78, baseType: !118, size: 8, offset: 1040)
!118 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !89, file: !90, line: 79, baseType: !120, size: 8, offset: 1048)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 1)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !89, file: !90, line: 81, baseType: !124, size: 64, offset: 1088)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !90, line: 43, baseType: null)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !89, file: !90, line: 89, baseType: !127, size: 64, offset: 1152)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !113, line: 153, baseType: !114)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !89, file: !90, line: 91, baseType: !129, size: 64, offset: 1216)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !90, line: 37, flags: DIFlagFwdDecl)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !89, file: !90, line: 92, baseType: !132, size: 64, offset: 1280)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !90, line: 38, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !89, file: !90, line: 93, baseType: !108, size: 64, offset: 1344)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !89, file: !90, line: 94, baseType: !6, size: 64, offset: 1408)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !89, file: !90, line: 95, baseType: !79, size: 64, offset: 1472)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !89, file: !90, line: 96, baseType: !7, size: 32, offset: 1536)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !89, file: !90, line: 98, baseType: !139, size: 160, offset: 1568)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 20)
!142 = !DILocation(line: 67, column: 16, scope: !78)
!143 = !DILocation(line: 69, column: 17, scope: !144)
!144 = distinct !DILexicalBlock(scope: !78, file: !3, line: 69, column: 13)
!145 = !DILocation(line: 69, column: 16, scope: !144)
!146 = !DILocation(line: 69, column: 25, scope: !144)
!147 = !DILocation(line: 69, column: 13, scope: !78)
!148 = !DILocation(line: 71, column: 21, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !3, line: 70, column: 9)
!150 = !DILocation(line: 71, column: 19, scope: !149)
!151 = !DILocation(line: 72, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !3, line: 72, column: 17)
!153 = !DILocation(line: 72, column: 23, scope: !152)
!154 = !DILocation(line: 72, column: 17, scope: !149)
!155 = !DILocation(line: 75, column: 27, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !3, line: 75, column: 21)
!157 = distinct !DILexicalBlock(scope: !152, file: !3, line: 73, column: 13)
!158 = !DILocation(line: 75, column: 32, scope: !156)
!159 = !DILocation(line: 75, column: 31, scope: !156)
!160 = !DILocation(line: 75, column: 51, scope: !156)
!161 = !DILocation(line: 75, column: 50, scope: !156)
!162 = !DILocation(line: 75, column: 41, scope: !156)
!163 = !DILocation(line: 75, column: 61, scope: !156)
!164 = !DILocation(line: 75, column: 21, scope: !156)
!165 = !DILocation(line: 75, column: 68, scope: !156)
!166 = !DILocation(line: 75, column: 21, scope: !157)
!167 = !DILocation(line: 77, column: 21, scope: !168)
!168 = distinct !DILexicalBlock(scope: !156, file: !3, line: 76, column: 17)
!169 = !DILocation(line: 79, column: 21, scope: !168)
!170 = !DILocation(line: 79, column: 26, scope: !168)
!171 = !DILocation(line: 79, column: 35, scope: !168)
!172 = !DILocation(line: 80, column: 17, scope: !168)
!173 = !DILocation(line: 81, column: 24, scope: !157)
!174 = !DILocation(line: 81, column: 17, scope: !157)
!175 = !DILocation(line: 82, column: 13, scope: !157)
!176 = !DILocation(line: 83, column: 9, scope: !149)
!177 = !DILocation(line: 85, column: 15, scope: !65)
!178 = !DILocation(line: 86, column: 13, scope: !65)
!179 = !DILocation(line: 86, column: 5, scope: !65)
!180 = !DILocation(line: 87, column: 1, scope: !65)
!181 = distinct !DISubprogram(name: "goodB2G1Sink", scope: !3, file: !3, line: 99, type: !20, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!182 = !DILocalVariable(name: "data", arg: 1, scope: !181, file: !3, line: 99, type: !22)
!183 = !DILocation(line: 99, column: 26, scope: !181)
!184 = !DILocation(line: 101, column: 8, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !3, line: 101, column: 8)
!186 = !DILocation(line: 101, column: 8, scope: !181)
!187 = !DILocation(line: 104, column: 9, scope: !188)
!188 = distinct !DILexicalBlock(scope: !185, file: !3, line: 102, column: 5)
!189 = !DILocation(line: 105, column: 5, scope: !188)
!190 = !DILocalVariable(name: "i", scope: !191, file: !3, line: 109, type: !7)
!191 = distinct !DILexicalBlock(scope: !192, file: !3, line: 108, column: 9)
!192 = distinct !DILexicalBlock(scope: !185, file: !3, line: 107, column: 5)
!193 = !DILocation(line: 109, column: 17, scope: !191)
!194 = !DILocalVariable(name: "n", scope: !191, file: !3, line: 109, type: !7)
!195 = !DILocation(line: 109, column: 20, scope: !191)
!196 = !DILocalVariable(name: "intVariable", scope: !191, file: !3, line: 109, type: !7)
!197 = !DILocation(line: 109, column: 23, scope: !191)
!198 = !DILocation(line: 110, column: 24, scope: !199)
!199 = distinct !DILexicalBlock(scope: !191, file: !3, line: 110, column: 17)
!200 = !DILocation(line: 110, column: 17, scope: !199)
!201 = !DILocation(line: 110, column: 40, scope: !199)
!202 = !DILocation(line: 110, column: 17, scope: !191)
!203 = !DILocation(line: 113, column: 21, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !3, line: 113, column: 21)
!205 = distinct !DILexicalBlock(scope: !199, file: !3, line: 111, column: 13)
!206 = !DILocation(line: 113, column: 23, scope: !204)
!207 = !DILocation(line: 113, column: 21, scope: !205)
!208 = !DILocation(line: 115, column: 33, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !3, line: 114, column: 17)
!210 = !DILocation(line: 116, column: 28, scope: !211)
!211 = distinct !DILexicalBlock(scope: !209, file: !3, line: 116, column: 21)
!212 = !DILocation(line: 116, column: 26, scope: !211)
!213 = !DILocation(line: 116, column: 33, scope: !214)
!214 = distinct !DILexicalBlock(scope: !211, file: !3, line: 116, column: 21)
!215 = !DILocation(line: 116, column: 37, scope: !214)
!216 = !DILocation(line: 116, column: 35, scope: !214)
!217 = !DILocation(line: 116, column: 21, scope: !211)
!218 = !DILocation(line: 119, column: 36, scope: !219)
!219 = distinct !DILexicalBlock(scope: !214, file: !3, line: 117, column: 21)
!220 = !DILocation(line: 120, column: 21, scope: !219)
!221 = !DILocation(line: 116, column: 41, scope: !214)
!222 = !DILocation(line: 116, column: 21, scope: !214)
!223 = distinct !{!223, !217, !224, !59}
!224 = !DILocation(line: 120, column: 21, scope: !211)
!225 = !DILocation(line: 121, column: 34, scope: !209)
!226 = !DILocation(line: 121, column: 21, scope: !209)
!227 = !DILocation(line: 122, column: 17, scope: !209)
!228 = !DILocation(line: 123, column: 13, scope: !205)
!229 = !DILocation(line: 126, column: 1, scope: !181)
!230 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 128, type: !66, scopeLine: 129, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!231 = !DILocalVariable(name: "data", scope: !230, file: !3, line: 130, type: !22)
!232 = !DILocation(line: 130, column: 12, scope: !230)
!233 = !DILocalVariable(name: "dataBuffer", scope: !230, file: !3, line: 131, type: !71)
!234 = !DILocation(line: 131, column: 10, scope: !230)
!235 = !DILocation(line: 132, column: 12, scope: !230)
!236 = !DILocation(line: 132, column: 10, scope: !230)
!237 = !DILocalVariable(name: "dataLen", scope: !238, file: !3, line: 135, type: !79)
!238 = distinct !DILexicalBlock(scope: !230, file: !3, line: 133, column: 5)
!239 = !DILocation(line: 135, column: 16, scope: !238)
!240 = !DILocation(line: 135, column: 33, scope: !238)
!241 = !DILocation(line: 135, column: 26, scope: !238)
!242 = !DILocalVariable(name: "pFile", scope: !238, file: !3, line: 136, type: !86)
!243 = !DILocation(line: 136, column: 16, scope: !238)
!244 = !DILocation(line: 138, column: 17, scope: !245)
!245 = distinct !DILexicalBlock(scope: !238, file: !3, line: 138, column: 13)
!246 = !DILocation(line: 138, column: 16, scope: !245)
!247 = !DILocation(line: 138, column: 25, scope: !245)
!248 = !DILocation(line: 138, column: 13, scope: !238)
!249 = !DILocation(line: 140, column: 21, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !3, line: 139, column: 9)
!251 = !DILocation(line: 140, column: 19, scope: !250)
!252 = !DILocation(line: 141, column: 17, scope: !253)
!253 = distinct !DILexicalBlock(scope: !250, file: !3, line: 141, column: 17)
!254 = !DILocation(line: 141, column: 23, scope: !253)
!255 = !DILocation(line: 141, column: 17, scope: !250)
!256 = !DILocation(line: 144, column: 27, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 144, column: 21)
!258 = distinct !DILexicalBlock(scope: !253, file: !3, line: 142, column: 13)
!259 = !DILocation(line: 144, column: 32, scope: !257)
!260 = !DILocation(line: 144, column: 31, scope: !257)
!261 = !DILocation(line: 144, column: 51, scope: !257)
!262 = !DILocation(line: 144, column: 50, scope: !257)
!263 = !DILocation(line: 144, column: 41, scope: !257)
!264 = !DILocation(line: 144, column: 61, scope: !257)
!265 = !DILocation(line: 144, column: 21, scope: !257)
!266 = !DILocation(line: 144, column: 68, scope: !257)
!267 = !DILocation(line: 144, column: 21, scope: !258)
!268 = !DILocation(line: 146, column: 21, scope: !269)
!269 = distinct !DILexicalBlock(scope: !257, file: !3, line: 145, column: 17)
!270 = !DILocation(line: 148, column: 21, scope: !269)
!271 = !DILocation(line: 148, column: 26, scope: !269)
!272 = !DILocation(line: 148, column: 35, scope: !269)
!273 = !DILocation(line: 149, column: 17, scope: !269)
!274 = !DILocation(line: 150, column: 24, scope: !258)
!275 = !DILocation(line: 150, column: 17, scope: !258)
!276 = !DILocation(line: 151, column: 13, scope: !258)
!277 = !DILocation(line: 152, column: 9, scope: !250)
!278 = !DILocation(line: 154, column: 20, scope: !230)
!279 = !DILocation(line: 155, column: 18, scope: !230)
!280 = !DILocation(line: 155, column: 5, scope: !230)
!281 = !DILocation(line: 156, column: 1, scope: !230)
!282 = distinct !DISubprogram(name: "goodB2G2Sink", scope: !3, file: !3, line: 159, type: !20, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!283 = !DILocalVariable(name: "data", arg: 1, scope: !282, file: !3, line: 159, type: !22)
!284 = !DILocation(line: 159, column: 26, scope: !282)
!285 = !DILocation(line: 161, column: 8, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !3, line: 161, column: 8)
!287 = !DILocation(line: 161, column: 8, scope: !282)
!288 = !DILocalVariable(name: "i", scope: !289, file: !3, line: 164, type: !7)
!289 = distinct !DILexicalBlock(scope: !290, file: !3, line: 163, column: 9)
!290 = distinct !DILexicalBlock(scope: !286, file: !3, line: 162, column: 5)
!291 = !DILocation(line: 164, column: 17, scope: !289)
!292 = !DILocalVariable(name: "n", scope: !289, file: !3, line: 164, type: !7)
!293 = !DILocation(line: 164, column: 20, scope: !289)
!294 = !DILocalVariable(name: "intVariable", scope: !289, file: !3, line: 164, type: !7)
!295 = !DILocation(line: 164, column: 23, scope: !289)
!296 = !DILocation(line: 165, column: 24, scope: !297)
!297 = distinct !DILexicalBlock(scope: !289, file: !3, line: 165, column: 17)
!298 = !DILocation(line: 165, column: 17, scope: !297)
!299 = !DILocation(line: 165, column: 40, scope: !297)
!300 = !DILocation(line: 165, column: 17, scope: !289)
!301 = !DILocation(line: 168, column: 21, scope: !302)
!302 = distinct !DILexicalBlock(scope: !303, file: !3, line: 168, column: 21)
!303 = distinct !DILexicalBlock(scope: !297, file: !3, line: 166, column: 13)
!304 = !DILocation(line: 168, column: 23, scope: !302)
!305 = !DILocation(line: 168, column: 21, scope: !303)
!306 = !DILocation(line: 170, column: 33, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !3, line: 169, column: 17)
!308 = !DILocation(line: 171, column: 28, scope: !309)
!309 = distinct !DILexicalBlock(scope: !307, file: !3, line: 171, column: 21)
!310 = !DILocation(line: 171, column: 26, scope: !309)
!311 = !DILocation(line: 171, column: 33, scope: !312)
!312 = distinct !DILexicalBlock(scope: !309, file: !3, line: 171, column: 21)
!313 = !DILocation(line: 171, column: 37, scope: !312)
!314 = !DILocation(line: 171, column: 35, scope: !312)
!315 = !DILocation(line: 171, column: 21, scope: !309)
!316 = !DILocation(line: 174, column: 36, scope: !317)
!317 = distinct !DILexicalBlock(scope: !312, file: !3, line: 172, column: 21)
!318 = !DILocation(line: 175, column: 21, scope: !317)
!319 = !DILocation(line: 171, column: 41, scope: !312)
!320 = !DILocation(line: 171, column: 21, scope: !312)
!321 = distinct !{!321, !315, !322, !59}
!322 = !DILocation(line: 175, column: 21, scope: !309)
!323 = !DILocation(line: 176, column: 34, scope: !307)
!324 = !DILocation(line: 176, column: 21, scope: !307)
!325 = !DILocation(line: 177, column: 17, scope: !307)
!326 = !DILocation(line: 178, column: 13, scope: !303)
!327 = !DILocation(line: 180, column: 5, scope: !290)
!328 = !DILocation(line: 181, column: 1, scope: !282)
!329 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 183, type: !66, scopeLine: 184, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!330 = !DILocalVariable(name: "data", scope: !329, file: !3, line: 185, type: !22)
!331 = !DILocation(line: 185, column: 12, scope: !329)
!332 = !DILocalVariable(name: "dataBuffer", scope: !329, file: !3, line: 186, type: !71)
!333 = !DILocation(line: 186, column: 10, scope: !329)
!334 = !DILocation(line: 187, column: 12, scope: !329)
!335 = !DILocation(line: 187, column: 10, scope: !329)
!336 = !DILocalVariable(name: "dataLen", scope: !337, file: !3, line: 190, type: !79)
!337 = distinct !DILexicalBlock(scope: !329, file: !3, line: 188, column: 5)
!338 = !DILocation(line: 190, column: 16, scope: !337)
!339 = !DILocation(line: 190, column: 33, scope: !337)
!340 = !DILocation(line: 190, column: 26, scope: !337)
!341 = !DILocalVariable(name: "pFile", scope: !337, file: !3, line: 191, type: !86)
!342 = !DILocation(line: 191, column: 16, scope: !337)
!343 = !DILocation(line: 193, column: 17, scope: !344)
!344 = distinct !DILexicalBlock(scope: !337, file: !3, line: 193, column: 13)
!345 = !DILocation(line: 193, column: 16, scope: !344)
!346 = !DILocation(line: 193, column: 25, scope: !344)
!347 = !DILocation(line: 193, column: 13, scope: !337)
!348 = !DILocation(line: 195, column: 21, scope: !349)
!349 = distinct !DILexicalBlock(scope: !344, file: !3, line: 194, column: 9)
!350 = !DILocation(line: 195, column: 19, scope: !349)
!351 = !DILocation(line: 196, column: 17, scope: !352)
!352 = distinct !DILexicalBlock(scope: !349, file: !3, line: 196, column: 17)
!353 = !DILocation(line: 196, column: 23, scope: !352)
!354 = !DILocation(line: 196, column: 17, scope: !349)
!355 = !DILocation(line: 199, column: 27, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 199, column: 21)
!357 = distinct !DILexicalBlock(scope: !352, file: !3, line: 197, column: 13)
!358 = !DILocation(line: 199, column: 32, scope: !356)
!359 = !DILocation(line: 199, column: 31, scope: !356)
!360 = !DILocation(line: 199, column: 51, scope: !356)
!361 = !DILocation(line: 199, column: 50, scope: !356)
!362 = !DILocation(line: 199, column: 41, scope: !356)
!363 = !DILocation(line: 199, column: 61, scope: !356)
!364 = !DILocation(line: 199, column: 21, scope: !356)
!365 = !DILocation(line: 199, column: 68, scope: !356)
!366 = !DILocation(line: 199, column: 21, scope: !357)
!367 = !DILocation(line: 201, column: 21, scope: !368)
!368 = distinct !DILexicalBlock(scope: !356, file: !3, line: 200, column: 17)
!369 = !DILocation(line: 203, column: 21, scope: !368)
!370 = !DILocation(line: 203, column: 26, scope: !368)
!371 = !DILocation(line: 203, column: 35, scope: !368)
!372 = !DILocation(line: 204, column: 17, scope: !368)
!373 = !DILocation(line: 205, column: 24, scope: !357)
!374 = !DILocation(line: 205, column: 17, scope: !357)
!375 = !DILocation(line: 206, column: 13, scope: !357)
!376 = !DILocation(line: 207, column: 9, scope: !349)
!377 = !DILocation(line: 209, column: 20, scope: !329)
!378 = !DILocation(line: 210, column: 18, scope: !329)
!379 = !DILocation(line: 210, column: 5, scope: !329)
!380 = !DILocation(line: 211, column: 1, scope: !329)
!381 = distinct !DISubprogram(name: "goodG2BSink", scope: !3, file: !3, line: 214, type: !20, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!382 = !DILocalVariable(name: "data", arg: 1, scope: !381, file: !3, line: 214, type: !22)
!383 = !DILocation(line: 214, column: 25, scope: !381)
!384 = !DILocation(line: 216, column: 8, scope: !385)
!385 = distinct !DILexicalBlock(scope: !381, file: !3, line: 216, column: 8)
!386 = !DILocation(line: 216, column: 8, scope: !381)
!387 = !DILocalVariable(name: "i", scope: !388, file: !3, line: 219, type: !7)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 218, column: 9)
!389 = distinct !DILexicalBlock(scope: !385, file: !3, line: 217, column: 5)
!390 = !DILocation(line: 219, column: 17, scope: !388)
!391 = !DILocalVariable(name: "n", scope: !388, file: !3, line: 219, type: !7)
!392 = !DILocation(line: 219, column: 20, scope: !388)
!393 = !DILocalVariable(name: "intVariable", scope: !388, file: !3, line: 219, type: !7)
!394 = !DILocation(line: 219, column: 23, scope: !388)
!395 = !DILocation(line: 220, column: 24, scope: !396)
!396 = distinct !DILexicalBlock(scope: !388, file: !3, line: 220, column: 17)
!397 = !DILocation(line: 220, column: 17, scope: !396)
!398 = !DILocation(line: 220, column: 40, scope: !396)
!399 = !DILocation(line: 220, column: 17, scope: !388)
!400 = !DILocation(line: 223, column: 29, scope: !401)
!401 = distinct !DILexicalBlock(scope: !396, file: !3, line: 221, column: 13)
!402 = !DILocation(line: 224, column: 24, scope: !403)
!403 = distinct !DILexicalBlock(scope: !401, file: !3, line: 224, column: 17)
!404 = !DILocation(line: 224, column: 22, scope: !403)
!405 = !DILocation(line: 224, column: 29, scope: !406)
!406 = distinct !DILexicalBlock(scope: !403, file: !3, line: 224, column: 17)
!407 = !DILocation(line: 224, column: 33, scope: !406)
!408 = !DILocation(line: 224, column: 31, scope: !406)
!409 = !DILocation(line: 224, column: 17, scope: !403)
!410 = !DILocation(line: 227, column: 32, scope: !411)
!411 = distinct !DILexicalBlock(scope: !406, file: !3, line: 225, column: 17)
!412 = !DILocation(line: 228, column: 17, scope: !411)
!413 = !DILocation(line: 224, column: 37, scope: !406)
!414 = !DILocation(line: 224, column: 17, scope: !406)
!415 = distinct !{!415, !409, !416, !59}
!416 = !DILocation(line: 228, column: 17, scope: !403)
!417 = !DILocation(line: 229, column: 30, scope: !401)
!418 = !DILocation(line: 229, column: 17, scope: !401)
!419 = !DILocation(line: 230, column: 13, scope: !401)
!420 = !DILocation(line: 232, column: 5, scope: !389)
!421 = !DILocation(line: 233, column: 1, scope: !381)
!422 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 235, type: !66, scopeLine: 236, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!423 = !DILocalVariable(name: "data", scope: !422, file: !3, line: 237, type: !22)
!424 = !DILocation(line: 237, column: 12, scope: !422)
!425 = !DILocalVariable(name: "dataBuffer", scope: !422, file: !3, line: 238, type: !71)
!426 = !DILocation(line: 238, column: 10, scope: !422)
!427 = !DILocation(line: 239, column: 12, scope: !422)
!428 = !DILocation(line: 239, column: 10, scope: !422)
!429 = !DILocation(line: 241, column: 12, scope: !422)
!430 = !DILocation(line: 241, column: 5, scope: !422)
!431 = !DILocation(line: 242, column: 19, scope: !422)
!432 = !DILocation(line: 243, column: 17, scope: !422)
!433 = !DILocation(line: 243, column: 5, scope: !422)
!434 = !DILocation(line: 244, column: 1, scope: !422)
!435 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_21_good", scope: !3, file: !3, line: 246, type: !66, scopeLine: 247, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!436 = !DILocation(line: 248, column: 5, scope: !435)
!437 = !DILocation(line: 249, column: 5, scope: !435)
!438 = !DILocation(line: 250, column: 5, scope: !435)
!439 = !DILocation(line: 251, column: 1, scope: !435)
