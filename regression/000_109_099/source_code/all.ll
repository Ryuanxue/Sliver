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
define dso_local i8* @badSource(i8* %data) #0 !dbg !52 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !57, metadata !DIExpression()), !dbg !62
  %0 = load i8*, i8** %data.addr, align 8, !dbg !63
  %call = call i64 @strlen(i8* %0) #7, !dbg !64
  store i64 %call, i64* %dataLen, align 8, !dbg !62
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !65, metadata !DIExpression()), !dbg !121
  %1 = load i64, i64* %dataLen, align 8, !dbg !122
  %sub = sub i64 100, %1, !dbg !124
  %cmp = icmp ugt i64 %sub, 1, !dbg !125
  br i1 %cmp, label %if.then, label %if.end11, !dbg !126

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !127
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !129
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !130
  %cmp2 = icmp ne %struct._IO_FILE* %2, null, !dbg !132
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !133

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data.addr, align 8, !dbg !134
  %4 = load i64, i64* %dataLen, align 8, !dbg !137
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !138
  %5 = load i64, i64* %dataLen, align 8, !dbg !139
  %sub4 = sub i64 100, %5, !dbg !140
  %conv = trunc i64 %sub4 to i32, !dbg !141
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !142
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !143
  %cmp6 = icmp eq i8* %call5, null, !dbg !144
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !145

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !146
  %7 = load i8*, i8** %data.addr, align 8, !dbg !148
  %8 = load i64, i64* %dataLen, align 8, !dbg !149
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !148
  store i8 0, i8* %arrayidx, align 1, !dbg !150
  br label %if.end, !dbg !151

if.end:                                           ; preds = %if.then8, %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !152
  %call9 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !153
  br label %if.end10, !dbg !154

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !155

if.end11:                                         ; preds = %if.end10, %entry
  %10 = load i8*, i8** %data.addr, align 8, !dbg !156
  ret i8* %10, !dbg !157
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_42_bad() #0 !dbg !158 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !161, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !163, metadata !DIExpression()), !dbg !167
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !167
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !167
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !168
  store i8* %arraydecay, i8** %data, align 8, !dbg !169
  %1 = load i8*, i8** %data, align 8, !dbg !170
  %call = call i8* @badSource(i8* %1), !dbg !171
  store i8* %call, i8** %data, align 8, !dbg !172
  call void @llvm.dbg.declare(metadata i32* %i, metadata !173, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %n, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !178, metadata !DIExpression()), !dbg !179
  %2 = load i8*, i8** %data, align 8, !dbg !180
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !182
  %cmp = icmp eq i32 %call1, 1, !dbg !183
  br i1 %cmp, label %if.then, label %if.end, !dbg !184

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !185
  store i32 0, i32* %i, align 4, !dbg !187
  br label %for.cond, !dbg !189

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !190
  %4 = load i32, i32* %n, align 4, !dbg !192
  %cmp2 = icmp slt i32 %3, %4, !dbg !193
  br i1 %cmp2, label %for.body, label %for.end, !dbg !194

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !195
  %inc = add nsw i32 %5, 1, !dbg !195
  store i32 %inc, i32* %intVariable, align 4, !dbg !195
  br label %for.inc, !dbg !197

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !198
  %inc3 = add nsw i32 %6, 1, !dbg !198
  store i32 %inc3, i32* %i, align 4, !dbg !198
  br label %for.cond, !dbg !199, !llvm.loop !200

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !203
  call void @printIntLine(i32 %7), !dbg !204
  br label %if.end, !dbg !205

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !206
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodG2BSource(i8* %data) #0 !dbg !207 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !208, metadata !DIExpression()), !dbg !209
  %0 = load i8*, i8** %data.addr, align 8, !dbg !210
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #8, !dbg !211
  %1 = load i8*, i8** %data.addr, align 8, !dbg !212
  ret i8* %1, !dbg !213
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !214 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !217, metadata !DIExpression()), !dbg !218
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !218
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !218
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !219
  store i8* %arraydecay, i8** %data, align 8, !dbg !220
  %1 = load i8*, i8** %data, align 8, !dbg !221
  %call = call i8* @goodG2BSource(i8* %1), !dbg !222
  store i8* %call, i8** %data, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata i32* %i, metadata !224, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i32* %n, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !229, metadata !DIExpression()), !dbg !230
  %2 = load i8*, i8** %data, align 8, !dbg !231
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !233
  %cmp = icmp eq i32 %call1, 1, !dbg !234
  br i1 %cmp, label %if.then, label %if.end, !dbg !235

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !236
  store i32 0, i32* %i, align 4, !dbg !238
  br label %for.cond, !dbg !240

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !241
  %4 = load i32, i32* %n, align 4, !dbg !243
  %cmp2 = icmp slt i32 %3, %4, !dbg !244
  br i1 %cmp2, label %for.body, label %for.end, !dbg !245

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !246
  %inc = add nsw i32 %5, 1, !dbg !246
  store i32 %inc, i32* %intVariable, align 4, !dbg !246
  br label %for.inc, !dbg !248

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !249
  %inc3 = add nsw i32 %6, 1, !dbg !249
  store i32 %inc3, i32* %i, align 4, !dbg !249
  br label %for.cond, !dbg !250, !llvm.loop !251

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !253
  call void @printIntLine(i32 %7), !dbg !254
  br label %if.end, !dbg !255

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !256
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodB2GSource(i8* %data) #0 !dbg !257 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !260, metadata !DIExpression()), !dbg !262
  %0 = load i8*, i8** %data.addr, align 8, !dbg !263
  %call = call i64 @strlen(i8* %0) #7, !dbg !264
  store i64 %call, i64* %dataLen, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !265, metadata !DIExpression()), !dbg !266
  %1 = load i64, i64* %dataLen, align 8, !dbg !267
  %sub = sub i64 100, %1, !dbg !269
  %cmp = icmp ugt i64 %sub, 1, !dbg !270
  br i1 %cmp, label %if.then, label %if.end11, !dbg !271

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !272
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !274
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !275
  %cmp2 = icmp ne %struct._IO_FILE* %2, null, !dbg !277
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !278

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data.addr, align 8, !dbg !279
  %4 = load i64, i64* %dataLen, align 8, !dbg !282
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !283
  %5 = load i64, i64* %dataLen, align 8, !dbg !284
  %sub4 = sub i64 100, %5, !dbg !285
  %conv = trunc i64 %sub4 to i32, !dbg !286
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !287
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !288
  %cmp6 = icmp eq i8* %call5, null, !dbg !289
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !290

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !291
  %7 = load i8*, i8** %data.addr, align 8, !dbg !293
  %8 = load i64, i64* %dataLen, align 8, !dbg !294
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !293
  store i8 0, i8* %arrayidx, align 1, !dbg !295
  br label %if.end, !dbg !296

if.end:                                           ; preds = %if.then8, %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !297
  %call9 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !298
  br label %if.end10, !dbg !299

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !300

if.end11:                                         ; preds = %if.end10, %entry
  %10 = load i8*, i8** %data.addr, align 8, !dbg !301
  ret i8* %10, !dbg !302
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !303 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !307
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !307
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !308
  store i8* %arraydecay, i8** %data, align 8, !dbg !309
  %1 = load i8*, i8** %data, align 8, !dbg !310
  %call = call i8* @goodB2GSource(i8* %1), !dbg !311
  store i8* %call, i8** %data, align 8, !dbg !312
  call void @llvm.dbg.declare(metadata i32* %i, metadata !313, metadata !DIExpression()), !dbg !315
  call void @llvm.dbg.declare(metadata i32* %n, metadata !316, metadata !DIExpression()), !dbg !317
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !318, metadata !DIExpression()), !dbg !319
  %2 = load i8*, i8** %data, align 8, !dbg !320
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #8, !dbg !322
  %cmp = icmp eq i32 %call1, 1, !dbg !323
  br i1 %cmp, label %if.then, label %if.end6, !dbg !324

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !325
  %cmp2 = icmp slt i32 %3, 10000, !dbg !328
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !329

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !330
  store i32 0, i32* %i, align 4, !dbg !332
  br label %for.cond, !dbg !334

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, i32* %i, align 4, !dbg !335
  %5 = load i32, i32* %n, align 4, !dbg !337
  %cmp4 = icmp slt i32 %4, %5, !dbg !338
  br i1 %cmp4, label %for.body, label %for.end, !dbg !339

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !340
  %inc = add nsw i32 %6, 1, !dbg !340
  store i32 %inc, i32* %intVariable, align 4, !dbg !340
  br label %for.inc, !dbg !342

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !343
  %inc5 = add nsw i32 %7, 1, !dbg !343
  store i32 %inc5, i32* %i, align 4, !dbg !343
  br label %for.cond, !dbg !344, !llvm.loop !345

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !347
  call void @printIntLine(i32 %8), !dbg !348
  br label %if.end, !dbg !349

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end6, !dbg !350

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !351
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_42_good() #0 !dbg !352 {
entry:
  call void @goodB2G(), !dbg !353
  call void @goodG2B(), !dbg !354
  ret void, !dbg !355
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !356 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !359, metadata !DIExpression()), !dbg !360
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !361
  %0 = load i8*, i8** %line.addr, align 8, !dbg !362
  %cmp = icmp ne i8* %0, null, !dbg !364
  br i1 %cmp, label %if.then, label %if.end, !dbg !365

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !366
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !368
  br label %if.end, !dbg !369

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.7, i64 0, i64 0)), !dbg !370
  ret void, !dbg !371
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !372 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !373, metadata !DIExpression()), !dbg !374
  %0 = load i8*, i8** %line.addr, align 8, !dbg !375
  %cmp = icmp ne i8* %0, null, !dbg !377
  br i1 %cmp, label %if.then, label %if.end, !dbg !378

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !379
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.6, i64 0, i64 0), i8* %1), !dbg !381
  br label %if.end, !dbg !382

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !383
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !384 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !389, metadata !DIExpression()), !dbg !390
  %0 = load i32*, i32** %line.addr, align 8, !dbg !391
  %cmp = icmp ne i32* %0, null, !dbg !393
  br i1 %cmp, label %if.then, label %if.end, !dbg !394

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !395
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.8, i64 0, i64 0), i32* %1), !dbg !397
  br label %if.end, !dbg !398

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !399
}

declare dso_local i32 @wprintf(i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !400 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !405
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.11, i64 0, i64 0), i32 %0), !dbg !406
  ret void, !dbg !407
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !408 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !414
  %conv = sext i16 %0 to i32, !dbg !414
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5.12, i64 0, i64 0), i32 %conv), !dbg !415
  ret void, !dbg !416
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !417 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !421, metadata !DIExpression()), !dbg !422
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !423
  %conv = fpext float %0 to double, !dbg !423
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !424
  ret void, !dbg !425
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !426 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !429, metadata !DIExpression()), !dbg !430
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !431
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !432
  ret void, !dbg !433
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !434 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !440, metadata !DIExpression()), !dbg !441
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !442
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !443
  ret void, !dbg !444
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !445 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !448, metadata !DIExpression()), !dbg !449
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !450
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !451
  ret void, !dbg !452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !453 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !456, metadata !DIExpression()), !dbg !457
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !458
  %conv = sext i8 %0 to i32, !dbg !458
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !459
  ret void, !dbg !460
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !461 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !464, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !466, metadata !DIExpression()), !dbg !470
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !471
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !472
  store i32 %0, i32* %arrayidx, align 4, !dbg !473
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !474
  store i32 0, i32* %arrayidx1, align 4, !dbg !475
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !476
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !477
  ret void, !dbg !478
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !479 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !482, metadata !DIExpression()), !dbg !483
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !484
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %0), !dbg !485
  ret void, !dbg !486
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !487 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !490, metadata !DIExpression()), !dbg !491
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !492
  %conv = zext i8 %0 to i32, !dbg !492
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !493
  ret void, !dbg !494
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !495 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !499, metadata !DIExpression()), !dbg !500
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !501
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !502
  ret void, !dbg !503
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !504 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !514, metadata !DIExpression()), !dbg !515
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !516
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !517
  %1 = load i32, i32* %intOne, align 4, !dbg !517
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !518
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !519
  %3 = load i32, i32* %intTwo, align 4, !dbg !519
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !520
  ret void, !dbg !521
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !522 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !526, metadata !DIExpression()), !dbg !527
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !528, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.declare(metadata i64* %i, metadata !530, metadata !DIExpression()), !dbg !531
  store i64 0, i64* %i, align 8, !dbg !532
  br label %for.cond, !dbg !534

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !535
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !537
  %cmp = icmp ult i64 %0, %1, !dbg !538
  br i1 %cmp, label %for.body, label %for.end, !dbg !539

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !540
  %3 = load i64, i64* %i, align 8, !dbg !542
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !540
  %4 = load i8, i8* %arrayidx, align 1, !dbg !540
  %conv = zext i8 %4 to i32, !dbg !540
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !543
  br label %for.inc, !dbg !544

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !545
  %inc = add i64 %5, 1, !dbg !545
  store i64 %inc, i64* %i, align 8, !dbg !545
  br label %for.cond, !dbg !546, !llvm.loop !547

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !549
  ret void, !dbg !550
}

declare dso_local i32 @puts(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !551 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !554, metadata !DIExpression()), !dbg !555
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !556, metadata !DIExpression()), !dbg !557
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !560, metadata !DIExpression()), !dbg !561
  store i64 0, i64* %numWritten, align 8, !dbg !561
  br label %while.cond, !dbg !562

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !563
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !564
  %cmp = icmp ult i64 %0, %1, !dbg !565
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !566

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !567
  %2 = load i16*, i16** %call, align 8, !dbg !567
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !567
  %4 = load i64, i64* %numWritten, align 8, !dbg !567
  %mul = mul i64 2, %4, !dbg !567
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !567
  %5 = load i8, i8* %arrayidx, align 1, !dbg !567
  %conv = sext i8 %5 to i32, !dbg !567
  %idxprom = sext i32 %conv to i64, !dbg !567
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !567
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !567
  %conv2 = zext i16 %6 to i32, !dbg !567
  %and = and i32 %conv2, 4096, !dbg !567
  %tobool = icmp ne i32 %and, 0, !dbg !567
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !568

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !569
  %7 = load i16*, i16** %call3, align 8, !dbg !569
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !569
  %9 = load i64, i64* %numWritten, align 8, !dbg !569
  %mul4 = mul i64 2, %9, !dbg !569
  %add = add i64 %mul4, 1, !dbg !569
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !569
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !569
  %conv6 = sext i8 %10 to i32, !dbg !569
  %idxprom7 = sext i32 %conv6 to i64, !dbg !569
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !569
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !569
  %conv9 = zext i16 %11 to i32, !dbg !569
  %and10 = and i32 %conv9, 4096, !dbg !569
  %tobool11 = icmp ne i32 %and10, 0, !dbg !568
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !570
  br i1 %12, label %while.body, label %while.end, !dbg !562

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !571, metadata !DIExpression()), !dbg !573
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !574
  %14 = load i64, i64* %numWritten, align 8, !dbg !575
  %mul12 = mul i64 2, %14, !dbg !576
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !574
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !577
  %15 = load i32, i32* %byte, align 4, !dbg !578
  %conv15 = trunc i32 %15 to i8, !dbg !579
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !580
  %17 = load i64, i64* %numWritten, align 8, !dbg !581
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !580
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !582
  %18 = load i64, i64* %numWritten, align 8, !dbg !583
  %inc = add i64 %18, 1, !dbg !583
  store i64 %inc, i64* %numWritten, align 8, !dbg !583
  br label %while.cond, !dbg !562, !llvm.loop !584

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !586
  ret i64 %19, !dbg !587
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !588 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !591, metadata !DIExpression()), !dbg !592
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !593, metadata !DIExpression()), !dbg !594
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !595, metadata !DIExpression()), !dbg !596
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !597, metadata !DIExpression()), !dbg !598
  store i64 0, i64* %numWritten, align 8, !dbg !598
  br label %while.cond, !dbg !599

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !600
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !601
  %cmp = icmp ult i64 %0, %1, !dbg !602
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !603

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !604
  %3 = load i64, i64* %numWritten, align 8, !dbg !605
  %mul = mul i64 2, %3, !dbg !606
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !604
  %4 = load i32, i32* %arrayidx, align 4, !dbg !604
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !607
  %tobool = icmp ne i32 %call, 0, !dbg !607
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !608

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !609
  %6 = load i64, i64* %numWritten, align 8, !dbg !610
  %mul1 = mul i64 2, %6, !dbg !611
  %add = add i64 %mul1, 1, !dbg !612
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !609
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !609
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !613
  %tobool4 = icmp ne i32 %call3, 0, !dbg !608
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !614
  br i1 %8, label %while.body, label %while.end, !dbg !599

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !615, metadata !DIExpression()), !dbg !617
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !618
  %10 = load i64, i64* %numWritten, align 8, !dbg !619
  %mul5 = mul i64 2, %10, !dbg !620
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !618
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !621
  %11 = load i32, i32* %byte, align 4, !dbg !622
  %conv = trunc i32 %11 to i8, !dbg !623
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !624
  %13 = load i64, i64* %numWritten, align 8, !dbg !625
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !624
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !626
  %14 = load i64, i64* %numWritten, align 8, !dbg !627
  %inc = add i64 %14, 1, !dbg !627
  store i64 %inc, i64* %numWritten, align 8, !dbg !627
  br label %while.cond, !dbg !599, !llvm.loop !628

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !630
  ret i64 %15, !dbg !631
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !632 {
entry:
  ret i32 1, !dbg !635
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !636 {
entry:
  ret i32 0, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !638 {
entry:
  %call = call i32 @rand() #8, !dbg !639
  %rem = srem i32 %call, 2, !dbg !640
  ret i32 %rem, !dbg !641
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !642 {
entry:
  ret void, !dbg !643
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !644 {
entry:
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !646 {
entry:
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !648 {
entry:
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !650 {
entry:
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !652 {
entry:
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !654 {
entry:
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !656 {
entry:
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !658 {
entry:
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !660 {
entry:
  ret void, !dbg !661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !662 {
entry:
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !664 {
entry:
  ret void, !dbg !665
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !666 {
entry:
  ret void, !dbg !667
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !668 {
entry:
  ret void, !dbg !669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !670 {
entry:
  ret void, !dbg !671
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !672 {
entry:
  ret void, !dbg !673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !674 {
entry:
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !676 {
entry:
  ret void, !dbg !677
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
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
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_099/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_099/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = !{!"clang version 12.0.0"}
!49 = !{i32 7, !"Dwarf Version", i32 4}
!50 = !{i32 2, !"Debug Info Version", i32 3}
!51 = !{i32 1, !"wchar_size", i32 4}
!52 = distinct !DISubprogram(name: "badSource", scope: !45, file: !45, line: 35, type: !53, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!53 = !DISubroutineType(types: !54)
!54 = !{!42, !42}
!55 = !DILocalVariable(name: "data", arg: 1, scope: !52, file: !45, line: 35, type: !42)
!56 = !DILocation(line: 35, column: 25, scope: !52)
!57 = !DILocalVariable(name: "dataLen", scope: !58, file: !45, line: 39, type: !59)
!58 = distinct !DILexicalBlock(scope: !52, file: !45, line: 37, column: 5)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !60, line: 46, baseType: !61)
!60 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!61 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!62 = !DILocation(line: 39, column: 16, scope: !58)
!63 = !DILocation(line: 39, column: 33, scope: !58)
!64 = !DILocation(line: 39, column: 26, scope: !58)
!65 = !DILocalVariable(name: "pFile", scope: !58, file: !45, line: 40, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !68, line: 7, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !70, line: 49, size: 1728, elements: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !87, !89, !90, !91, !95, !96, !98, !102, !105, !107, !110, !113, !114, !115, !116, !117}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !69, file: !70, line: 51, baseType: !23, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !69, file: !70, line: 54, baseType: !42, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !69, file: !70, line: 55, baseType: !42, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !69, file: !70, line: 56, baseType: !42, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !69, file: !70, line: 57, baseType: !42, size: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !69, file: !70, line: 58, baseType: !42, size: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !69, file: !70, line: 59, baseType: !42, size: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !69, file: !70, line: 60, baseType: !42, size: 64, offset: 448)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !69, file: !70, line: 61, baseType: !42, size: 64, offset: 512)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !69, file: !70, line: 64, baseType: !42, size: 64, offset: 576)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !69, file: !70, line: 65, baseType: !42, size: 64, offset: 640)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !69, file: !70, line: 66, baseType: !42, size: 64, offset: 704)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !69, file: !70, line: 68, baseType: !85, size: 64, offset: 768)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !70, line: 36, flags: DIFlagFwdDecl)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !69, file: !70, line: 70, baseType: !88, size: 64, offset: 832)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !69, file: !70, line: 72, baseType: !23, size: 32, offset: 896)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !69, file: !70, line: 73, baseType: !23, size: 32, offset: 928)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !69, file: !70, line: 74, baseType: !92, size: 64, offset: 960)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !93, line: 152, baseType: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!94 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !69, file: !70, line: 77, baseType: !24, size: 16, offset: 1024)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !69, file: !70, line: 78, baseType: !97, size: 8, offset: 1040)
!97 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !69, file: !70, line: 79, baseType: !99, size: 8, offset: 1048)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 1)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !69, file: !70, line: 81, baseType: !103, size: 64, offset: 1088)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !70, line: 43, baseType: null)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !69, file: !70, line: 89, baseType: !106, size: 64, offset: 1152)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !93, line: 153, baseType: !94)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !69, file: !70, line: 91, baseType: !108, size: 64, offset: 1216)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !70, line: 37, flags: DIFlagFwdDecl)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !69, file: !70, line: 92, baseType: !111, size: 64, offset: 1280)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !70, line: 38, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !69, file: !70, line: 93, baseType: !88, size: 64, offset: 1344)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !69, file: !70, line: 94, baseType: !22, size: 64, offset: 1408)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !69, file: !70, line: 95, baseType: !59, size: 64, offset: 1472)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !69, file: !70, line: 96, baseType: !23, size: 32, offset: 1536)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !69, file: !70, line: 98, baseType: !118, size: 160, offset: 1568)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 20)
!121 = !DILocation(line: 40, column: 16, scope: !58)
!122 = !DILocation(line: 42, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !58, file: !45, line: 42, column: 13)
!124 = !DILocation(line: 42, column: 16, scope: !123)
!125 = !DILocation(line: 42, column: 25, scope: !123)
!126 = !DILocation(line: 42, column: 13, scope: !58)
!127 = !DILocation(line: 44, column: 21, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !45, line: 43, column: 9)
!129 = !DILocation(line: 44, column: 19, scope: !128)
!130 = !DILocation(line: 45, column: 17, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !45, line: 45, column: 17)
!132 = !DILocation(line: 45, column: 23, scope: !131)
!133 = !DILocation(line: 45, column: 17, scope: !128)
!134 = !DILocation(line: 48, column: 27, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !45, line: 48, column: 21)
!136 = distinct !DILexicalBlock(scope: !131, file: !45, line: 46, column: 13)
!137 = !DILocation(line: 48, column: 32, scope: !135)
!138 = !DILocation(line: 48, column: 31, scope: !135)
!139 = !DILocation(line: 48, column: 51, scope: !135)
!140 = !DILocation(line: 48, column: 50, scope: !135)
!141 = !DILocation(line: 48, column: 41, scope: !135)
!142 = !DILocation(line: 48, column: 61, scope: !135)
!143 = !DILocation(line: 48, column: 21, scope: !135)
!144 = !DILocation(line: 48, column: 68, scope: !135)
!145 = !DILocation(line: 48, column: 21, scope: !136)
!146 = !DILocation(line: 50, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !135, file: !45, line: 49, column: 17)
!148 = !DILocation(line: 52, column: 21, scope: !147)
!149 = !DILocation(line: 52, column: 26, scope: !147)
!150 = !DILocation(line: 52, column: 35, scope: !147)
!151 = !DILocation(line: 53, column: 17, scope: !147)
!152 = !DILocation(line: 54, column: 24, scope: !136)
!153 = !DILocation(line: 54, column: 17, scope: !136)
!154 = !DILocation(line: 55, column: 13, scope: !136)
!155 = !DILocation(line: 56, column: 9, scope: !128)
!156 = !DILocation(line: 58, column: 12, scope: !52)
!157 = !DILocation(line: 58, column: 5, scope: !52)
!158 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_42_bad", scope: !45, file: !45, line: 61, type: !159, scopeLine: 62, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!159 = !DISubroutineType(types: !160)
!160 = !{null}
!161 = !DILocalVariable(name: "data", scope: !158, file: !45, line: 63, type: !42)
!162 = !DILocation(line: 63, column: 12, scope: !158)
!163 = !DILocalVariable(name: "dataBuffer", scope: !158, file: !45, line: 64, type: !164)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 100)
!167 = !DILocation(line: 64, column: 10, scope: !158)
!168 = !DILocation(line: 65, column: 12, scope: !158)
!169 = !DILocation(line: 65, column: 10, scope: !158)
!170 = !DILocation(line: 66, column: 22, scope: !158)
!171 = !DILocation(line: 66, column: 12, scope: !158)
!172 = !DILocation(line: 66, column: 10, scope: !158)
!173 = !DILocalVariable(name: "i", scope: !174, file: !45, line: 68, type: !23)
!174 = distinct !DILexicalBlock(scope: !158, file: !45, line: 67, column: 5)
!175 = !DILocation(line: 68, column: 13, scope: !174)
!176 = !DILocalVariable(name: "n", scope: !174, file: !45, line: 68, type: !23)
!177 = !DILocation(line: 68, column: 16, scope: !174)
!178 = !DILocalVariable(name: "intVariable", scope: !174, file: !45, line: 68, type: !23)
!179 = !DILocation(line: 68, column: 19, scope: !174)
!180 = !DILocation(line: 69, column: 20, scope: !181)
!181 = distinct !DILexicalBlock(scope: !174, file: !45, line: 69, column: 13)
!182 = !DILocation(line: 69, column: 13, scope: !181)
!183 = !DILocation(line: 69, column: 36, scope: !181)
!184 = !DILocation(line: 69, column: 13, scope: !174)
!185 = !DILocation(line: 72, column: 25, scope: !186)
!186 = distinct !DILexicalBlock(scope: !181, file: !45, line: 70, column: 9)
!187 = !DILocation(line: 73, column: 20, scope: !188)
!188 = distinct !DILexicalBlock(scope: !186, file: !45, line: 73, column: 13)
!189 = !DILocation(line: 73, column: 18, scope: !188)
!190 = !DILocation(line: 73, column: 25, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !45, line: 73, column: 13)
!192 = !DILocation(line: 73, column: 29, scope: !191)
!193 = !DILocation(line: 73, column: 27, scope: !191)
!194 = !DILocation(line: 73, column: 13, scope: !188)
!195 = !DILocation(line: 76, column: 28, scope: !196)
!196 = distinct !DILexicalBlock(scope: !191, file: !45, line: 74, column: 13)
!197 = !DILocation(line: 77, column: 13, scope: !196)
!198 = !DILocation(line: 73, column: 33, scope: !191)
!199 = !DILocation(line: 73, column: 13, scope: !191)
!200 = distinct !{!200, !194, !201, !202}
!201 = !DILocation(line: 77, column: 13, scope: !188)
!202 = !{!"llvm.loop.mustprogress"}
!203 = !DILocation(line: 78, column: 26, scope: !186)
!204 = !DILocation(line: 78, column: 13, scope: !186)
!205 = !DILocation(line: 79, column: 9, scope: !186)
!206 = !DILocation(line: 81, column: 1, scope: !158)
!207 = distinct !DISubprogram(name: "goodG2BSource", scope: !45, file: !45, line: 88, type: !53, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!208 = !DILocalVariable(name: "data", arg: 1, scope: !207, file: !45, line: 88, type: !42)
!209 = !DILocation(line: 88, column: 29, scope: !207)
!210 = !DILocation(line: 91, column: 12, scope: !207)
!211 = !DILocation(line: 91, column: 5, scope: !207)
!212 = !DILocation(line: 92, column: 12, scope: !207)
!213 = !DILocation(line: 92, column: 5, scope: !207)
!214 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 95, type: !159, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!215 = !DILocalVariable(name: "data", scope: !214, file: !45, line: 97, type: !42)
!216 = !DILocation(line: 97, column: 12, scope: !214)
!217 = !DILocalVariable(name: "dataBuffer", scope: !214, file: !45, line: 98, type: !164)
!218 = !DILocation(line: 98, column: 10, scope: !214)
!219 = !DILocation(line: 99, column: 12, scope: !214)
!220 = !DILocation(line: 99, column: 10, scope: !214)
!221 = !DILocation(line: 100, column: 26, scope: !214)
!222 = !DILocation(line: 100, column: 12, scope: !214)
!223 = !DILocation(line: 100, column: 10, scope: !214)
!224 = !DILocalVariable(name: "i", scope: !225, file: !45, line: 102, type: !23)
!225 = distinct !DILexicalBlock(scope: !214, file: !45, line: 101, column: 5)
!226 = !DILocation(line: 102, column: 13, scope: !225)
!227 = !DILocalVariable(name: "n", scope: !225, file: !45, line: 102, type: !23)
!228 = !DILocation(line: 102, column: 16, scope: !225)
!229 = !DILocalVariable(name: "intVariable", scope: !225, file: !45, line: 102, type: !23)
!230 = !DILocation(line: 102, column: 19, scope: !225)
!231 = !DILocation(line: 103, column: 20, scope: !232)
!232 = distinct !DILexicalBlock(scope: !225, file: !45, line: 103, column: 13)
!233 = !DILocation(line: 103, column: 13, scope: !232)
!234 = !DILocation(line: 103, column: 36, scope: !232)
!235 = !DILocation(line: 103, column: 13, scope: !225)
!236 = !DILocation(line: 106, column: 25, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !45, line: 104, column: 9)
!238 = !DILocation(line: 107, column: 20, scope: !239)
!239 = distinct !DILexicalBlock(scope: !237, file: !45, line: 107, column: 13)
!240 = !DILocation(line: 107, column: 18, scope: !239)
!241 = !DILocation(line: 107, column: 25, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !45, line: 107, column: 13)
!243 = !DILocation(line: 107, column: 29, scope: !242)
!244 = !DILocation(line: 107, column: 27, scope: !242)
!245 = !DILocation(line: 107, column: 13, scope: !239)
!246 = !DILocation(line: 110, column: 28, scope: !247)
!247 = distinct !DILexicalBlock(scope: !242, file: !45, line: 108, column: 13)
!248 = !DILocation(line: 111, column: 13, scope: !247)
!249 = !DILocation(line: 107, column: 33, scope: !242)
!250 = !DILocation(line: 107, column: 13, scope: !242)
!251 = distinct !{!251, !245, !252, !202}
!252 = !DILocation(line: 111, column: 13, scope: !239)
!253 = !DILocation(line: 112, column: 26, scope: !237)
!254 = !DILocation(line: 112, column: 13, scope: !237)
!255 = !DILocation(line: 113, column: 9, scope: !237)
!256 = !DILocation(line: 115, column: 1, scope: !214)
!257 = distinct !DISubprogram(name: "goodB2GSource", scope: !45, file: !45, line: 118, type: !53, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!258 = !DILocalVariable(name: "data", arg: 1, scope: !257, file: !45, line: 118, type: !42)
!259 = !DILocation(line: 118, column: 29, scope: !257)
!260 = !DILocalVariable(name: "dataLen", scope: !261, file: !45, line: 122, type: !59)
!261 = distinct !DILexicalBlock(scope: !257, file: !45, line: 120, column: 5)
!262 = !DILocation(line: 122, column: 16, scope: !261)
!263 = !DILocation(line: 122, column: 33, scope: !261)
!264 = !DILocation(line: 122, column: 26, scope: !261)
!265 = !DILocalVariable(name: "pFile", scope: !261, file: !45, line: 123, type: !66)
!266 = !DILocation(line: 123, column: 16, scope: !261)
!267 = !DILocation(line: 125, column: 17, scope: !268)
!268 = distinct !DILexicalBlock(scope: !261, file: !45, line: 125, column: 13)
!269 = !DILocation(line: 125, column: 16, scope: !268)
!270 = !DILocation(line: 125, column: 25, scope: !268)
!271 = !DILocation(line: 125, column: 13, scope: !261)
!272 = !DILocation(line: 127, column: 21, scope: !273)
!273 = distinct !DILexicalBlock(scope: !268, file: !45, line: 126, column: 9)
!274 = !DILocation(line: 127, column: 19, scope: !273)
!275 = !DILocation(line: 128, column: 17, scope: !276)
!276 = distinct !DILexicalBlock(scope: !273, file: !45, line: 128, column: 17)
!277 = !DILocation(line: 128, column: 23, scope: !276)
!278 = !DILocation(line: 128, column: 17, scope: !273)
!279 = !DILocation(line: 131, column: 27, scope: !280)
!280 = distinct !DILexicalBlock(scope: !281, file: !45, line: 131, column: 21)
!281 = distinct !DILexicalBlock(scope: !276, file: !45, line: 129, column: 13)
!282 = !DILocation(line: 131, column: 32, scope: !280)
!283 = !DILocation(line: 131, column: 31, scope: !280)
!284 = !DILocation(line: 131, column: 51, scope: !280)
!285 = !DILocation(line: 131, column: 50, scope: !280)
!286 = !DILocation(line: 131, column: 41, scope: !280)
!287 = !DILocation(line: 131, column: 61, scope: !280)
!288 = !DILocation(line: 131, column: 21, scope: !280)
!289 = !DILocation(line: 131, column: 68, scope: !280)
!290 = !DILocation(line: 131, column: 21, scope: !281)
!291 = !DILocation(line: 133, column: 21, scope: !292)
!292 = distinct !DILexicalBlock(scope: !280, file: !45, line: 132, column: 17)
!293 = !DILocation(line: 135, column: 21, scope: !292)
!294 = !DILocation(line: 135, column: 26, scope: !292)
!295 = !DILocation(line: 135, column: 35, scope: !292)
!296 = !DILocation(line: 136, column: 17, scope: !292)
!297 = !DILocation(line: 137, column: 24, scope: !281)
!298 = !DILocation(line: 137, column: 17, scope: !281)
!299 = !DILocation(line: 138, column: 13, scope: !281)
!300 = !DILocation(line: 139, column: 9, scope: !273)
!301 = !DILocation(line: 141, column: 12, scope: !257)
!302 = !DILocation(line: 141, column: 5, scope: !257)
!303 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 144, type: !159, scopeLine: 145, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!304 = !DILocalVariable(name: "data", scope: !303, file: !45, line: 146, type: !42)
!305 = !DILocation(line: 146, column: 12, scope: !303)
!306 = !DILocalVariable(name: "dataBuffer", scope: !303, file: !45, line: 147, type: !164)
!307 = !DILocation(line: 147, column: 10, scope: !303)
!308 = !DILocation(line: 148, column: 12, scope: !303)
!309 = !DILocation(line: 148, column: 10, scope: !303)
!310 = !DILocation(line: 149, column: 26, scope: !303)
!311 = !DILocation(line: 149, column: 12, scope: !303)
!312 = !DILocation(line: 149, column: 10, scope: !303)
!313 = !DILocalVariable(name: "i", scope: !314, file: !45, line: 151, type: !23)
!314 = distinct !DILexicalBlock(scope: !303, file: !45, line: 150, column: 5)
!315 = !DILocation(line: 151, column: 13, scope: !314)
!316 = !DILocalVariable(name: "n", scope: !314, file: !45, line: 151, type: !23)
!317 = !DILocation(line: 151, column: 16, scope: !314)
!318 = !DILocalVariable(name: "intVariable", scope: !314, file: !45, line: 151, type: !23)
!319 = !DILocation(line: 151, column: 19, scope: !314)
!320 = !DILocation(line: 152, column: 20, scope: !321)
!321 = distinct !DILexicalBlock(scope: !314, file: !45, line: 152, column: 13)
!322 = !DILocation(line: 152, column: 13, scope: !321)
!323 = !DILocation(line: 152, column: 36, scope: !321)
!324 = !DILocation(line: 152, column: 13, scope: !314)
!325 = !DILocation(line: 155, column: 17, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !45, line: 155, column: 17)
!327 = distinct !DILexicalBlock(scope: !321, file: !45, line: 153, column: 9)
!328 = !DILocation(line: 155, column: 19, scope: !326)
!329 = !DILocation(line: 155, column: 17, scope: !327)
!330 = !DILocation(line: 157, column: 29, scope: !331)
!331 = distinct !DILexicalBlock(scope: !326, file: !45, line: 156, column: 13)
!332 = !DILocation(line: 158, column: 24, scope: !333)
!333 = distinct !DILexicalBlock(scope: !331, file: !45, line: 158, column: 17)
!334 = !DILocation(line: 158, column: 22, scope: !333)
!335 = !DILocation(line: 158, column: 29, scope: !336)
!336 = distinct !DILexicalBlock(scope: !333, file: !45, line: 158, column: 17)
!337 = !DILocation(line: 158, column: 33, scope: !336)
!338 = !DILocation(line: 158, column: 31, scope: !336)
!339 = !DILocation(line: 158, column: 17, scope: !333)
!340 = !DILocation(line: 161, column: 32, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !45, line: 159, column: 17)
!342 = !DILocation(line: 162, column: 17, scope: !341)
!343 = !DILocation(line: 158, column: 37, scope: !336)
!344 = !DILocation(line: 158, column: 17, scope: !336)
!345 = distinct !{!345, !339, !346, !202}
!346 = !DILocation(line: 162, column: 17, scope: !333)
!347 = !DILocation(line: 163, column: 30, scope: !331)
!348 = !DILocation(line: 163, column: 17, scope: !331)
!349 = !DILocation(line: 164, column: 13, scope: !331)
!350 = !DILocation(line: 165, column: 9, scope: !327)
!351 = !DILocation(line: 167, column: 1, scope: !303)
!352 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_42_good", scope: !45, file: !45, line: 169, type: !159, scopeLine: 170, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!353 = !DILocation(line: 171, column: 5, scope: !352)
!354 = !DILocation(line: 172, column: 5, scope: !352)
!355 = !DILocation(line: 173, column: 1, scope: !352)
!356 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !357, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !42}
!359 = !DILocalVariable(name: "line", arg: 1, scope: !356, file: !3, line: 11, type: !42)
!360 = !DILocation(line: 11, column: 25, scope: !356)
!361 = !DILocation(line: 13, column: 1, scope: !356)
!362 = !DILocation(line: 14, column: 8, scope: !363)
!363 = distinct !DILexicalBlock(scope: !356, file: !3, line: 14, column: 8)
!364 = !DILocation(line: 14, column: 13, scope: !363)
!365 = !DILocation(line: 14, column: 8, scope: !356)
!366 = !DILocation(line: 16, column: 24, scope: !367)
!367 = distinct !DILexicalBlock(scope: !363, file: !3, line: 15, column: 5)
!368 = !DILocation(line: 16, column: 9, scope: !367)
!369 = !DILocation(line: 17, column: 5, scope: !367)
!370 = !DILocation(line: 18, column: 5, scope: !356)
!371 = !DILocation(line: 19, column: 1, scope: !356)
!372 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !357, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!373 = !DILocalVariable(name: "line", arg: 1, scope: !372, file: !3, line: 20, type: !42)
!374 = !DILocation(line: 20, column: 29, scope: !372)
!375 = !DILocation(line: 22, column: 8, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !3, line: 22, column: 8)
!377 = !DILocation(line: 22, column: 13, scope: !376)
!378 = !DILocation(line: 22, column: 8, scope: !372)
!379 = !DILocation(line: 24, column: 24, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !3, line: 23, column: 5)
!381 = !DILocation(line: 24, column: 9, scope: !380)
!382 = !DILocation(line: 25, column: 5, scope: !380)
!383 = !DILocation(line: 26, column: 1, scope: !372)
!384 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !385, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !60, line: 74, baseType: !23)
!389 = !DILocalVariable(name: "line", arg: 1, scope: !384, file: !3, line: 27, type: !387)
!390 = !DILocation(line: 27, column: 29, scope: !384)
!391 = !DILocation(line: 29, column: 8, scope: !392)
!392 = distinct !DILexicalBlock(scope: !384, file: !3, line: 29, column: 8)
!393 = !DILocation(line: 29, column: 13, scope: !392)
!394 = !DILocation(line: 29, column: 8, scope: !384)
!395 = !DILocation(line: 31, column: 27, scope: !396)
!396 = distinct !DILexicalBlock(scope: !392, file: !3, line: 30, column: 5)
!397 = !DILocation(line: 31, column: 9, scope: !396)
!398 = !DILocation(line: 32, column: 5, scope: !396)
!399 = !DILocation(line: 33, column: 1, scope: !384)
!400 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !401, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !23}
!403 = !DILocalVariable(name: "intNumber", arg: 1, scope: !400, file: !3, line: 35, type: !23)
!404 = !DILocation(line: 35, column: 24, scope: !400)
!405 = !DILocation(line: 37, column: 20, scope: !400)
!406 = !DILocation(line: 37, column: 5, scope: !400)
!407 = !DILocation(line: 38, column: 1, scope: !400)
!408 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !409, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!409 = !DISubroutineType(types: !410)
!410 = !{null, !411}
!411 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!412 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !408, file: !3, line: 40, type: !411)
!413 = !DILocation(line: 40, column: 28, scope: !408)
!414 = !DILocation(line: 42, column: 21, scope: !408)
!415 = !DILocation(line: 42, column: 5, scope: !408)
!416 = !DILocation(line: 43, column: 1, scope: !408)
!417 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !418, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !420}
!420 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!421 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !417, file: !3, line: 45, type: !420)
!422 = !DILocation(line: 45, column: 28, scope: !417)
!423 = !DILocation(line: 47, column: 20, scope: !417)
!424 = !DILocation(line: 47, column: 5, scope: !417)
!425 = !DILocation(line: 48, column: 1, scope: !417)
!426 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !427, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!427 = !DISubroutineType(types: !428)
!428 = !{null, !94}
!429 = !DILocalVariable(name: "longNumber", arg: 1, scope: !426, file: !3, line: 50, type: !94)
!430 = !DILocation(line: 50, column: 26, scope: !426)
!431 = !DILocation(line: 52, column: 21, scope: !426)
!432 = !DILocation(line: 52, column: 5, scope: !426)
!433 = !DILocation(line: 53, column: 1, scope: !426)
!434 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !435, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !437}
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !438, line: 27, baseType: !439)
!438 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !93, line: 44, baseType: !94)
!440 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !434, file: !3, line: 55, type: !437)
!441 = !DILocation(line: 55, column: 33, scope: !434)
!442 = !DILocation(line: 57, column: 29, scope: !434)
!443 = !DILocation(line: 57, column: 5, scope: !434)
!444 = !DILocation(line: 58, column: 1, scope: !434)
!445 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !446, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!446 = !DISubroutineType(types: !447)
!447 = !{null, !59}
!448 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !445, file: !3, line: 60, type: !59)
!449 = !DILocation(line: 60, column: 29, scope: !445)
!450 = !DILocation(line: 62, column: 21, scope: !445)
!451 = !DILocation(line: 62, column: 5, scope: !445)
!452 = !DILocation(line: 63, column: 1, scope: !445)
!453 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !454, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !43}
!456 = !DILocalVariable(name: "charHex", arg: 1, scope: !453, file: !3, line: 65, type: !43)
!457 = !DILocation(line: 65, column: 29, scope: !453)
!458 = !DILocation(line: 67, column: 22, scope: !453)
!459 = !DILocation(line: 67, column: 5, scope: !453)
!460 = !DILocation(line: 68, column: 1, scope: !453)
!461 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !462, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !388}
!464 = !DILocalVariable(name: "wideChar", arg: 1, scope: !461, file: !3, line: 70, type: !388)
!465 = !DILocation(line: 70, column: 29, scope: !461)
!466 = !DILocalVariable(name: "s", scope: !461, file: !3, line: 74, type: !467)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !388, size: 64, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 2)
!470 = !DILocation(line: 74, column: 13, scope: !461)
!471 = !DILocation(line: 75, column: 16, scope: !461)
!472 = !DILocation(line: 75, column: 9, scope: !461)
!473 = !DILocation(line: 75, column: 14, scope: !461)
!474 = !DILocation(line: 76, column: 9, scope: !461)
!475 = !DILocation(line: 76, column: 14, scope: !461)
!476 = !DILocation(line: 77, column: 21, scope: !461)
!477 = !DILocation(line: 77, column: 5, scope: !461)
!478 = !DILocation(line: 78, column: 1, scope: !461)
!479 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !480, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !7}
!482 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !479, file: !3, line: 80, type: !7)
!483 = !DILocation(line: 80, column: 33, scope: !479)
!484 = !DILocation(line: 82, column: 20, scope: !479)
!485 = !DILocation(line: 82, column: 5, scope: !479)
!486 = !DILocation(line: 83, column: 1, scope: !479)
!487 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !488, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !25}
!490 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !487, file: !3, line: 85, type: !25)
!491 = !DILocation(line: 85, column: 45, scope: !487)
!492 = !DILocation(line: 87, column: 22, scope: !487)
!493 = !DILocation(line: 87, column: 5, scope: !487)
!494 = !DILocation(line: 88, column: 1, scope: !487)
!495 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !496, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !498}
!498 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!499 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !495, file: !3, line: 90, type: !498)
!500 = !DILocation(line: 90, column: 29, scope: !495)
!501 = !DILocation(line: 92, column: 20, scope: !495)
!502 = !DILocation(line: 92, column: 5, scope: !495)
!503 = !DILocation(line: 93, column: 1, scope: !495)
!504 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !505, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!505 = !DISubroutineType(types: !506)
!506 = !{null, !507}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !509, line: 100, baseType: !510)
!509 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_099/source_code")
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !509, line: 96, size: 64, elements: !511)
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !510, file: !509, line: 98, baseType: !23, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !510, file: !509, line: 99, baseType: !23, size: 32, offset: 32)
!514 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !504, file: !3, line: 95, type: !507)
!515 = !DILocation(line: 95, column: 40, scope: !504)
!516 = !DILocation(line: 97, column: 26, scope: !504)
!517 = !DILocation(line: 97, column: 47, scope: !504)
!518 = !DILocation(line: 97, column: 55, scope: !504)
!519 = !DILocation(line: 97, column: 76, scope: !504)
!520 = !DILocation(line: 97, column: 5, scope: !504)
!521 = !DILocation(line: 98, column: 1, scope: !504)
!522 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !523, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !525, !59}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!526 = !DILocalVariable(name: "bytes", arg: 1, scope: !522, file: !3, line: 100, type: !525)
!527 = !DILocation(line: 100, column: 38, scope: !522)
!528 = !DILocalVariable(name: "numBytes", arg: 2, scope: !522, file: !3, line: 100, type: !59)
!529 = !DILocation(line: 100, column: 52, scope: !522)
!530 = !DILocalVariable(name: "i", scope: !522, file: !3, line: 102, type: !59)
!531 = !DILocation(line: 102, column: 12, scope: !522)
!532 = !DILocation(line: 103, column: 12, scope: !533)
!533 = distinct !DILexicalBlock(scope: !522, file: !3, line: 103, column: 5)
!534 = !DILocation(line: 103, column: 10, scope: !533)
!535 = !DILocation(line: 103, column: 17, scope: !536)
!536 = distinct !DILexicalBlock(scope: !533, file: !3, line: 103, column: 5)
!537 = !DILocation(line: 103, column: 21, scope: !536)
!538 = !DILocation(line: 103, column: 19, scope: !536)
!539 = !DILocation(line: 103, column: 5, scope: !533)
!540 = !DILocation(line: 105, column: 24, scope: !541)
!541 = distinct !DILexicalBlock(scope: !536, file: !3, line: 104, column: 5)
!542 = !DILocation(line: 105, column: 30, scope: !541)
!543 = !DILocation(line: 105, column: 9, scope: !541)
!544 = !DILocation(line: 106, column: 5, scope: !541)
!545 = !DILocation(line: 103, column: 31, scope: !536)
!546 = !DILocation(line: 103, column: 5, scope: !536)
!547 = distinct !{!547, !539, !548, !202}
!548 = !DILocation(line: 106, column: 5, scope: !533)
!549 = !DILocation(line: 107, column: 5, scope: !522)
!550 = !DILocation(line: 108, column: 1, scope: !522)
!551 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !552, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!552 = !DISubroutineType(types: !553)
!553 = !{!59, !525, !59, !42}
!554 = !DILocalVariable(name: "bytes", arg: 1, scope: !551, file: !3, line: 113, type: !525)
!555 = !DILocation(line: 113, column: 39, scope: !551)
!556 = !DILocalVariable(name: "numBytes", arg: 2, scope: !551, file: !3, line: 113, type: !59)
!557 = !DILocation(line: 113, column: 53, scope: !551)
!558 = !DILocalVariable(name: "hex", arg: 3, scope: !551, file: !3, line: 113, type: !42)
!559 = !DILocation(line: 113, column: 71, scope: !551)
!560 = !DILocalVariable(name: "numWritten", scope: !551, file: !3, line: 115, type: !59)
!561 = !DILocation(line: 115, column: 12, scope: !551)
!562 = !DILocation(line: 121, column: 5, scope: !551)
!563 = !DILocation(line: 121, column: 12, scope: !551)
!564 = !DILocation(line: 121, column: 25, scope: !551)
!565 = !DILocation(line: 121, column: 23, scope: !551)
!566 = !DILocation(line: 121, column: 34, scope: !551)
!567 = !DILocation(line: 121, column: 37, scope: !551)
!568 = !DILocation(line: 121, column: 67, scope: !551)
!569 = !DILocation(line: 121, column: 70, scope: !551)
!570 = !DILocation(line: 0, scope: !551)
!571 = !DILocalVariable(name: "byte", scope: !572, file: !3, line: 123, type: !23)
!572 = distinct !DILexicalBlock(scope: !551, file: !3, line: 122, column: 5)
!573 = !DILocation(line: 123, column: 13, scope: !572)
!574 = !DILocation(line: 124, column: 17, scope: !572)
!575 = !DILocation(line: 124, column: 25, scope: !572)
!576 = !DILocation(line: 124, column: 23, scope: !572)
!577 = !DILocation(line: 124, column: 9, scope: !572)
!578 = !DILocation(line: 125, column: 45, scope: !572)
!579 = !DILocation(line: 125, column: 29, scope: !572)
!580 = !DILocation(line: 125, column: 9, scope: !572)
!581 = !DILocation(line: 125, column: 15, scope: !572)
!582 = !DILocation(line: 125, column: 27, scope: !572)
!583 = !DILocation(line: 126, column: 9, scope: !572)
!584 = distinct !{!584, !562, !585, !202}
!585 = !DILocation(line: 127, column: 5, scope: !551)
!586 = !DILocation(line: 129, column: 12, scope: !551)
!587 = !DILocation(line: 129, column: 5, scope: !551)
!588 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !589, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!589 = !DISubroutineType(types: !590)
!590 = !{!59, !525, !59, !387}
!591 = !DILocalVariable(name: "bytes", arg: 1, scope: !588, file: !3, line: 135, type: !525)
!592 = !DILocation(line: 135, column: 41, scope: !588)
!593 = !DILocalVariable(name: "numBytes", arg: 2, scope: !588, file: !3, line: 135, type: !59)
!594 = !DILocation(line: 135, column: 55, scope: !588)
!595 = !DILocalVariable(name: "hex", arg: 3, scope: !588, file: !3, line: 135, type: !387)
!596 = !DILocation(line: 135, column: 76, scope: !588)
!597 = !DILocalVariable(name: "numWritten", scope: !588, file: !3, line: 137, type: !59)
!598 = !DILocation(line: 137, column: 12, scope: !588)
!599 = !DILocation(line: 143, column: 5, scope: !588)
!600 = !DILocation(line: 143, column: 12, scope: !588)
!601 = !DILocation(line: 143, column: 25, scope: !588)
!602 = !DILocation(line: 143, column: 23, scope: !588)
!603 = !DILocation(line: 143, column: 34, scope: !588)
!604 = !DILocation(line: 143, column: 47, scope: !588)
!605 = !DILocation(line: 143, column: 55, scope: !588)
!606 = !DILocation(line: 143, column: 53, scope: !588)
!607 = !DILocation(line: 143, column: 37, scope: !588)
!608 = !DILocation(line: 143, column: 68, scope: !588)
!609 = !DILocation(line: 143, column: 81, scope: !588)
!610 = !DILocation(line: 143, column: 89, scope: !588)
!611 = !DILocation(line: 143, column: 87, scope: !588)
!612 = !DILocation(line: 143, column: 100, scope: !588)
!613 = !DILocation(line: 143, column: 71, scope: !588)
!614 = !DILocation(line: 0, scope: !588)
!615 = !DILocalVariable(name: "byte", scope: !616, file: !3, line: 145, type: !23)
!616 = distinct !DILexicalBlock(scope: !588, file: !3, line: 144, column: 5)
!617 = !DILocation(line: 145, column: 13, scope: !616)
!618 = !DILocation(line: 146, column: 18, scope: !616)
!619 = !DILocation(line: 146, column: 26, scope: !616)
!620 = !DILocation(line: 146, column: 24, scope: !616)
!621 = !DILocation(line: 146, column: 9, scope: !616)
!622 = !DILocation(line: 147, column: 45, scope: !616)
!623 = !DILocation(line: 147, column: 29, scope: !616)
!624 = !DILocation(line: 147, column: 9, scope: !616)
!625 = !DILocation(line: 147, column: 15, scope: !616)
!626 = !DILocation(line: 147, column: 27, scope: !616)
!627 = !DILocation(line: 148, column: 9, scope: !616)
!628 = distinct !{!628, !599, !629, !202}
!629 = !DILocation(line: 149, column: 5, scope: !588)
!630 = !DILocation(line: 151, column: 12, scope: !588)
!631 = !DILocation(line: 151, column: 5, scope: !588)
!632 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !633, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!633 = !DISubroutineType(types: !634)
!634 = !{!23}
!635 = !DILocation(line: 158, column: 5, scope: !632)
!636 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !633, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!637 = !DILocation(line: 163, column: 5, scope: !636)
!638 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !633, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!639 = !DILocation(line: 168, column: 13, scope: !638)
!640 = !DILocation(line: 168, column: 20, scope: !638)
!641 = !DILocation(line: 168, column: 5, scope: !638)
!642 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !159, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!643 = !DILocation(line: 187, column: 16, scope: !642)
!644 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !159, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!645 = !DILocation(line: 188, column: 16, scope: !644)
!646 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !159, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!647 = !DILocation(line: 189, column: 16, scope: !646)
!648 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !159, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!649 = !DILocation(line: 190, column: 16, scope: !648)
!650 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !159, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!651 = !DILocation(line: 191, column: 16, scope: !650)
!652 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !159, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!653 = !DILocation(line: 192, column: 16, scope: !652)
!654 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !159, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!655 = !DILocation(line: 193, column: 16, scope: !654)
!656 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !159, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!657 = !DILocation(line: 194, column: 16, scope: !656)
!658 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !159, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!659 = !DILocation(line: 195, column: 16, scope: !658)
!660 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !159, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!661 = !DILocation(line: 198, column: 15, scope: !660)
!662 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !159, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!663 = !DILocation(line: 199, column: 15, scope: !662)
!664 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !159, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!665 = !DILocation(line: 200, column: 15, scope: !664)
!666 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !159, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!667 = !DILocation(line: 201, column: 15, scope: !666)
!668 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !159, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!669 = !DILocation(line: 202, column: 15, scope: !668)
!670 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !159, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!671 = !DILocation(line: 203, column: 15, scope: !670)
!672 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !159, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!673 = !DILocation(line: 204, column: 15, scope: !672)
!674 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !159, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!675 = !DILocation(line: 205, column: 15, scope: !674)
!676 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !159, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!677 = !DILocation(line: 206, column: 15, scope: !676)
