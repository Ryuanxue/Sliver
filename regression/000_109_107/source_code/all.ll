; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._twoIntsStruct = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3.6 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@GLOBAL_CONST_TRUE = dso_local global i32 1, align 4, !dbg !0
@GLOBAL_CONST_FALSE = dso_local global i32 0, align 4, !dbg !27
@GLOBAL_CONST_FIVE = dso_local global i32 5, align 4, !dbg !29
@globalTrue = dso_local global i32 1, align 4, !dbg !31
@globalFalse = dso_local global i32 0, align 4, !dbg !33
@globalFive = dso_local global i32 5, align 4, !dbg !35
@globalArgc = dso_local global i32 0, align 4, !dbg !37
@globalArgv = dso_local global i8** null, align 8, !dbg !39
@.str.11 = private unnamed_addr constant [9 x i8] c"entry13\0A\00", align 1
@.str.1.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2.13 = private unnamed_addr constant [9 x i8] c"entry14\0A\00", align 1
@.str.3.14 = private unnamed_addr constant [5 x i32] [i32 37, i32 108, i32 115, i32 10, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11.17 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_61_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !59, metadata !DIExpression()), !dbg !63
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !64
  store i8* %arraydecay, i8** %data, align 8, !dbg !65
  %1 = load i8*, i8** %data, align 8, !dbg !66
  %call = call i8* @CWE606_Unchecked_Loop_Condition__char_file_61b_badSource(i8* %1), !dbg !67
  store i8* %call, i8** %data, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %i, metadata !69, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %n, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !74, metadata !DIExpression()), !dbg !75
  %2 = load i8*, i8** %data, align 8, !dbg !76
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !78
  %cmp = icmp eq i32 %call1, 1, !dbg !79
  br i1 %cmp, label %if.then, label %if.end, !dbg !80

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !81
  store i32 0, i32* %i, align 4, !dbg !83
  br label %for.cond, !dbg !85

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !86
  %4 = load i32, i32* %n, align 4, !dbg !88
  %cmp2 = icmp slt i32 %3, %4, !dbg !89
  br i1 %cmp2, label %for.body, label %for.end, !dbg !90

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !91
  %inc = add nsw i32 %5, 1, !dbg !91
  store i32 %inc, i32* %intVariable, align 4, !dbg !91
  br label %for.inc, !dbg !93

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !94
  %inc3 = add nsw i32 %6, 1, !dbg !94
  store i32 %inc3, i32* %i, align 4, !dbg !94
  br label %for.cond, !dbg !95, !llvm.loop !96

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !99
  call void @printIntLine(i32 %7), !dbg !100
  br label %if.end, !dbg !101

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !102
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !103 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !106, metadata !DIExpression()), !dbg !107
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !107
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !107
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !108
  store i8* %arraydecay, i8** %data, align 8, !dbg !109
  %1 = load i8*, i8** %data, align 8, !dbg !110
  %call = call i8* @CWE606_Unchecked_Loop_Condition__char_file_61b_goodG2BSource(i8* %1), !dbg !111
  store i8* %call, i8** %data, align 8, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %i, metadata !113, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %n, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !118, metadata !DIExpression()), !dbg !119
  %2 = load i8*, i8** %data, align 8, !dbg !120
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !122
  %cmp = icmp eq i32 %call1, 1, !dbg !123
  br i1 %cmp, label %if.then, label %if.end, !dbg !124

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !125
  store i32 0, i32* %i, align 4, !dbg !127
  br label %for.cond, !dbg !129

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !130
  %4 = load i32, i32* %n, align 4, !dbg !132
  %cmp2 = icmp slt i32 %3, %4, !dbg !133
  br i1 %cmp2, label %for.body, label %for.end, !dbg !134

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !135
  %inc = add nsw i32 %5, 1, !dbg !135
  store i32 %inc, i32* %intVariable, align 4, !dbg !135
  br label %for.inc, !dbg !137

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !138
  %inc3 = add nsw i32 %6, 1, !dbg !138
  store i32 %inc3, i32* %i, align 4, !dbg !138
  br label %for.cond, !dbg !139, !llvm.loop !140

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !142
  call void @printIntLine(i32 %7), !dbg !143
  br label %if.end, !dbg !144

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !145
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !146 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !147, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !150
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !150
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !151
  store i8* %arraydecay, i8** %data, align 8, !dbg !152
  %1 = load i8*, i8** %data, align 8, !dbg !153
  %call = call i8* @CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource(i8* %1), !dbg !154
  store i8* %call, i8** %data, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata i32* %i, metadata !156, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %n, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !161, metadata !DIExpression()), !dbg !162
  %2 = load i8*, i8** %data, align 8, !dbg !163
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #7, !dbg !165
  %cmp = icmp eq i32 %call1, 1, !dbg !166
  br i1 %cmp, label %if.then, label %if.end6, !dbg !167

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !168
  %cmp2 = icmp slt i32 %3, 10000, !dbg !171
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !172

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !173
  store i32 0, i32* %i, align 4, !dbg !175
  br label %for.cond, !dbg !177

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, i32* %i, align 4, !dbg !178
  %5 = load i32, i32* %n, align 4, !dbg !180
  %cmp4 = icmp slt i32 %4, %5, !dbg !181
  br i1 %cmp4, label %for.body, label %for.end, !dbg !182

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !183
  %inc = add nsw i32 %6, 1, !dbg !183
  store i32 %inc, i32* %intVariable, align 4, !dbg !183
  br label %for.inc, !dbg !185

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !186
  %inc5 = add nsw i32 %7, 1, !dbg !186
  store i32 %inc5, i32* %i, align 4, !dbg !186
  br label %for.cond, !dbg !187, !llvm.loop !188

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !190
  call void @printIntLine(i32 %8), !dbg !191
  br label %if.end, !dbg !192

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end6, !dbg !193

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !194
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_61_good() #0 !dbg !195 {
entry:
  call void @goodG2B(), !dbg !196
  call void @goodB2G(), !dbg !197
  ret void, !dbg !198
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_file_61b_badSource(i8* %data) #0 !dbg !199 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !204, metadata !DIExpression()), !dbg !209
  %0 = load i8*, i8** %data.addr, align 8, !dbg !210
  %call = call i64 @strlen(i8* %0) #8, !dbg !211
  store i64 %call, i64* %dataLen, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !212, metadata !DIExpression()), !dbg !268
  %1 = load i64, i64* %dataLen, align 8, !dbg !269
  %sub = sub i64 100, %1, !dbg !271
  %cmp = icmp ugt i64 %sub, 1, !dbg !272
  br i1 %cmp, label %if.then, label %if.end11, !dbg !273

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !274
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !276
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !277
  %cmp2 = icmp ne %struct._IO_FILE* %2, null, !dbg !279
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !280

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data.addr, align 8, !dbg !281
  %4 = load i64, i64* %dataLen, align 8, !dbg !284
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !285
  %5 = load i64, i64* %dataLen, align 8, !dbg !286
  %sub4 = sub i64 100, %5, !dbg !287
  %conv = trunc i64 %sub4 to i32, !dbg !288
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !289
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !290
  %cmp6 = icmp eq i8* %call5, null, !dbg !291
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !292

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !293
  %7 = load i8*, i8** %data.addr, align 8, !dbg !295
  %8 = load i64, i64* %dataLen, align 8, !dbg !296
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !295
  store i8 0, i8* %arrayidx, align 1, !dbg !297
  br label %if.end, !dbg !298

if.end:                                           ; preds = %if.then8, %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !299
  %call9 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !300
  br label %if.end10, !dbg !301

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !302

if.end11:                                         ; preds = %if.end10, %entry
  %10 = load i8*, i8** %data.addr, align 8, !dbg !303
  ret i8* %10, !dbg !304
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #5

declare dso_local i32 @fclose(%struct._IO_FILE*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_file_61b_goodG2BSource(i8* %data) #0 !dbg !305 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load i8*, i8** %data.addr, align 8, !dbg !308
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3.6, i64 0, i64 0)) #7, !dbg !309
  %1 = load i8*, i8** %data.addr, align 8, !dbg !310
  ret i8* %1, !dbg !311
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource(i8* %data) #0 !dbg !312 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !313, metadata !DIExpression()), !dbg !314
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !315, metadata !DIExpression()), !dbg !317
  %0 = load i8*, i8** %data.addr, align 8, !dbg !318
  %call = call i64 @strlen(i8* %0) #8, !dbg !319
  store i64 %call, i64* %dataLen, align 8, !dbg !317
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !320, metadata !DIExpression()), !dbg !321
  %1 = load i64, i64* %dataLen, align 8, !dbg !322
  %sub = sub i64 100, %1, !dbg !324
  %cmp = icmp ugt i64 %sub, 1, !dbg !325
  br i1 %cmp, label %if.then, label %if.end11, !dbg !326

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !327
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !329
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !330
  %cmp2 = icmp ne %struct._IO_FILE* %2, null, !dbg !332
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !333

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data.addr, align 8, !dbg !334
  %4 = load i64, i64* %dataLen, align 8, !dbg !337
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !338
  %5 = load i64, i64* %dataLen, align 8, !dbg !339
  %sub4 = sub i64 100, %5, !dbg !340
  %conv = trunc i64 %sub4 to i32, !dbg !341
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !342
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !343
  %cmp6 = icmp eq i8* %call5, null, !dbg !344
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !345

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !346
  %7 = load i8*, i8** %data.addr, align 8, !dbg !348
  %8 = load i64, i64* %dataLen, align 8, !dbg !349
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !348
  store i8 0, i8* %arrayidx, align 1, !dbg !350
  br label %if.end, !dbg !351

if.end:                                           ; preds = %if.then8, %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !352
  %call9 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !353
  br label %if.end10, !dbg !354

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !355

if.end11:                                         ; preds = %if.end10, %entry
  %10 = load i8*, i8** %data.addr, align 8, !dbg !356
  ret i8* %10, !dbg !357
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !358 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !361, metadata !DIExpression()), !dbg !362
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)), !dbg !363
  %0 = load i8*, i8** %line.addr, align 8, !dbg !364
  %cmp = icmp ne i8* %0, null, !dbg !366
  br i1 %cmp, label %if.then, label %if.end, !dbg !367

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !368
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !370
  br label %if.end, !dbg !371

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.13, i64 0, i64 0)), !dbg !372
  ret void, !dbg !373
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !374 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !375, metadata !DIExpression()), !dbg !376
  %0 = load i8*, i8** %line.addr, align 8, !dbg !377
  %cmp = icmp ne i8* %0, null, !dbg !379
  br i1 %cmp, label %if.then, label %if.end, !dbg !380

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !381
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !383
  br label %if.end, !dbg !384

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !385
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !386 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = load i32*, i32** %line.addr, align 8, !dbg !393
  %cmp = icmp ne i32* %0, null, !dbg !395
  br i1 %cmp, label %if.then, label %if.end, !dbg !396

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !397
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.14, i64 0, i64 0), i32* %1), !dbg !399
  br label %if.end, !dbg !400

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !401
}

declare dso_local i32 @wprintf(i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !402 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !405, metadata !DIExpression()), !dbg !406
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !407
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !408
  ret void, !dbg !409
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !410 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !414, metadata !DIExpression()), !dbg !415
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !416
  %conv = sext i16 %0 to i32, !dbg !416
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !417
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !419 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !423, metadata !DIExpression()), !dbg !424
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !425
  %conv = fpext float %0 to double, !dbg !425
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !426
  ret void, !dbg !427
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !428 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !431, metadata !DIExpression()), !dbg !432
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !433
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !434
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !436 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !442, metadata !DIExpression()), !dbg !443
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !444
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !445
  ret void, !dbg !446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !447 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !452
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !453
  ret void, !dbg !454
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !455 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !458, metadata !DIExpression()), !dbg !459
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !460
  %conv = sext i8 %0 to i32, !dbg !460
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !461
  ret void, !dbg !462
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !463 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !468, metadata !DIExpression()), !dbg !472
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !473
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !474
  store i32 %0, i32* %arrayidx, align 4, !dbg !475
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !476
  store i32 0, i32* %arrayidx1, align 4, !dbg !477
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !478
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !479
  ret void, !dbg !480
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !481 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !484, metadata !DIExpression()), !dbg !485
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !486
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11.17, i64 0, i64 0), i32 %0), !dbg !487
  ret void, !dbg !488
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !489 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !492, metadata !DIExpression()), !dbg !493
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !494
  %conv = zext i8 %0 to i32, !dbg !494
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !495
  ret void, !dbg !496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !497 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !501, metadata !DIExpression()), !dbg !502
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !503
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !504
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !506 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !516, metadata !DIExpression()), !dbg !517
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !518
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !519
  %1 = load i32, i32* %intOne, align 4, !dbg !519
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !520
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !521
  %3 = load i32, i32* %intTwo, align 4, !dbg !521
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !522
  ret void, !dbg !523
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !524 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !528, metadata !DIExpression()), !dbg !529
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.declare(metadata i64* %i, metadata !532, metadata !DIExpression()), !dbg !533
  store i64 0, i64* %i, align 8, !dbg !534
  br label %for.cond, !dbg !536

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !537
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !539
  %cmp = icmp ult i64 %0, %1, !dbg !540
  br i1 %cmp, label %for.body, label %for.end, !dbg !541

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !542
  %3 = load i64, i64* %i, align 8, !dbg !544
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !542
  %4 = load i8, i8* %arrayidx, align 1, !dbg !542
  %conv = zext i8 %4 to i32, !dbg !542
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !545
  br label %for.inc, !dbg !546

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !547
  %inc = add i64 %5, 1, !dbg !547
  store i64 %inc, i64* %i, align 8, !dbg !547
  br label %for.cond, !dbg !548, !llvm.loop !549

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !551
  ret void, !dbg !552
}

declare dso_local i32 @puts(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !553 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !556, metadata !DIExpression()), !dbg !557
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !558, metadata !DIExpression()), !dbg !559
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !562, metadata !DIExpression()), !dbg !563
  store i64 0, i64* %numWritten, align 8, !dbg !563
  br label %while.cond, !dbg !564

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !565
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !566
  %cmp = icmp ult i64 %0, %1, !dbg !567
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !568

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !569
  %2 = load i16*, i16** %call, align 8, !dbg !569
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !569
  %4 = load i64, i64* %numWritten, align 8, !dbg !569
  %mul = mul i64 2, %4, !dbg !569
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !569
  %5 = load i8, i8* %arrayidx, align 1, !dbg !569
  %conv = sext i8 %5 to i32, !dbg !569
  %idxprom = sext i32 %conv to i64, !dbg !569
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !569
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !569
  %conv2 = zext i16 %6 to i32, !dbg !569
  %and = and i32 %conv2, 4096, !dbg !569
  %tobool = icmp ne i32 %and, 0, !dbg !569
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !570

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !571
  %7 = load i16*, i16** %call3, align 8, !dbg !571
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !571
  %9 = load i64, i64* %numWritten, align 8, !dbg !571
  %mul4 = mul i64 2, %9, !dbg !571
  %add = add i64 %mul4, 1, !dbg !571
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !571
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !571
  %conv6 = sext i8 %10 to i32, !dbg !571
  %idxprom7 = sext i32 %conv6 to i64, !dbg !571
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !571
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !571
  %conv9 = zext i16 %11 to i32, !dbg !571
  %and10 = and i32 %conv9, 4096, !dbg !571
  %tobool11 = icmp ne i32 %and10, 0, !dbg !570
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !572
  br i1 %12, label %while.body, label %while.end, !dbg !564

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !573, metadata !DIExpression()), !dbg !575
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !576
  %14 = load i64, i64* %numWritten, align 8, !dbg !577
  %mul12 = mul i64 2, %14, !dbg !578
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !576
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #7, !dbg !579
  %15 = load i32, i32* %byte, align 4, !dbg !580
  %conv15 = trunc i32 %15 to i8, !dbg !581
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !582
  %17 = load i64, i64* %numWritten, align 8, !dbg !583
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !582
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !584
  %18 = load i64, i64* %numWritten, align 8, !dbg !585
  %inc = add i64 %18, 1, !dbg !585
  store i64 %inc, i64* %numWritten, align 8, !dbg !585
  br label %while.cond, !dbg !564, !llvm.loop !586

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !588
  ret i64 %19, !dbg !589
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !590 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !593, metadata !DIExpression()), !dbg !594
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !595, metadata !DIExpression()), !dbg !596
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !597, metadata !DIExpression()), !dbg !598
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !599, metadata !DIExpression()), !dbg !600
  store i64 0, i64* %numWritten, align 8, !dbg !600
  br label %while.cond, !dbg !601

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !602
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !603
  %cmp = icmp ult i64 %0, %1, !dbg !604
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !605

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !606
  %3 = load i64, i64* %numWritten, align 8, !dbg !607
  %mul = mul i64 2, %3, !dbg !608
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !606
  %4 = load i32, i32* %arrayidx, align 4, !dbg !606
  %call = call i32 @iswxdigit(i32 %4) #7, !dbg !609
  %tobool = icmp ne i32 %call, 0, !dbg !609
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !610

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !611
  %6 = load i64, i64* %numWritten, align 8, !dbg !612
  %mul1 = mul i64 2, %6, !dbg !613
  %add = add i64 %mul1, 1, !dbg !614
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !611
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !611
  %call3 = call i32 @iswxdigit(i32 %7) #7, !dbg !615
  %tobool4 = icmp ne i32 %call3, 0, !dbg !610
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !616
  br i1 %8, label %while.body, label %while.end, !dbg !601

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !617, metadata !DIExpression()), !dbg !619
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !620
  %10 = load i64, i64* %numWritten, align 8, !dbg !621
  %mul5 = mul i64 2, %10, !dbg !622
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !620
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #7, !dbg !623
  %11 = load i32, i32* %byte, align 4, !dbg !624
  %conv = trunc i32 %11 to i8, !dbg !625
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !626
  %13 = load i64, i64* %numWritten, align 8, !dbg !627
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !626
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !628
  %14 = load i64, i64* %numWritten, align 8, !dbg !629
  %inc = add i64 %14, 1, !dbg !629
  store i64 %inc, i64* %numWritten, align 8, !dbg !629
  br label %while.cond, !dbg !601, !llvm.loop !630

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !632
  ret i64 %15, !dbg !633
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !634 {
entry:
  ret i32 1, !dbg !637
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !638 {
entry:
  ret i32 0, !dbg !639
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !640 {
entry:
  %call = call i32 @rand() #7, !dbg !641
  %rem = srem i32 %call, 2, !dbg !642
  ret i32 %rem, !dbg !643
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !644 {
entry:
  ret void, !dbg !645
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !646 {
entry:
  ret void, !dbg !647
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !648 {
entry:
  ret void, !dbg !649
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !650 {
entry:
  ret void, !dbg !651
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !652 {
entry:
  ret void, !dbg !653
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !654 {
entry:
  ret void, !dbg !655
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !656 {
entry:
  ret void, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !658 {
entry:
  ret void, !dbg !659
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !660 {
entry:
  ret void, !dbg !661
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !662 {
entry:
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !664 {
entry:
  ret void, !dbg !665
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !666 {
entry:
  ret void, !dbg !667
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !668 {
entry:
  ret void, !dbg !669
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !670 {
entry:
  ret void, !dbg !671
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !672 {
entry:
  ret void, !dbg !673
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !674 {
entry:
  ret void, !dbg !675
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !676 {
entry:
  ret void, !dbg !677
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !678 {
entry:
  ret void, !dbg !679
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone willreturn }

!llvm.dbg.cu = !{!44, !47, !2}
!llvm.ident = !{!50, !50, !50}
!llvm.module.flags = !{!51, !52, !53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_107/source_code")
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
!44 = distinct !DICompileUnit(language: DW_LANG_C99, file: !45, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_61a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_107/source_code")
!46 = !{}
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, retainedTypes: !49, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_61b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_107/source_code")
!49 = !{!22, !23}
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_61_bad", scope: !45, file: !45, line: 37, type: !55, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 39, type: !42)
!58 = !DILocation(line: 39, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 40, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 100)
!63 = !DILocation(line: 40, column: 10, scope: !54)
!64 = !DILocation(line: 41, column: 12, scope: !54)
!65 = !DILocation(line: 41, column: 10, scope: !54)
!66 = !DILocation(line: 42, column: 69, scope: !54)
!67 = !DILocation(line: 42, column: 12, scope: !54)
!68 = !DILocation(line: 42, column: 10, scope: !54)
!69 = !DILocalVariable(name: "i", scope: !70, file: !45, line: 44, type: !23)
!70 = distinct !DILexicalBlock(scope: !54, file: !45, line: 43, column: 5)
!71 = !DILocation(line: 44, column: 13, scope: !70)
!72 = !DILocalVariable(name: "n", scope: !70, file: !45, line: 44, type: !23)
!73 = !DILocation(line: 44, column: 16, scope: !70)
!74 = !DILocalVariable(name: "intVariable", scope: !70, file: !45, line: 44, type: !23)
!75 = !DILocation(line: 44, column: 19, scope: !70)
!76 = !DILocation(line: 45, column: 20, scope: !77)
!77 = distinct !DILexicalBlock(scope: !70, file: !45, line: 45, column: 13)
!78 = !DILocation(line: 45, column: 13, scope: !77)
!79 = !DILocation(line: 45, column: 36, scope: !77)
!80 = !DILocation(line: 45, column: 13, scope: !70)
!81 = !DILocation(line: 48, column: 25, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !45, line: 46, column: 9)
!83 = !DILocation(line: 49, column: 20, scope: !84)
!84 = distinct !DILexicalBlock(scope: !82, file: !45, line: 49, column: 13)
!85 = !DILocation(line: 49, column: 18, scope: !84)
!86 = !DILocation(line: 49, column: 25, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !45, line: 49, column: 13)
!88 = !DILocation(line: 49, column: 29, scope: !87)
!89 = !DILocation(line: 49, column: 27, scope: !87)
!90 = !DILocation(line: 49, column: 13, scope: !84)
!91 = !DILocation(line: 52, column: 28, scope: !92)
!92 = distinct !DILexicalBlock(scope: !87, file: !45, line: 50, column: 13)
!93 = !DILocation(line: 53, column: 13, scope: !92)
!94 = !DILocation(line: 49, column: 33, scope: !87)
!95 = !DILocation(line: 49, column: 13, scope: !87)
!96 = distinct !{!96, !90, !97, !98}
!97 = !DILocation(line: 53, column: 13, scope: !84)
!98 = !{!"llvm.loop.mustprogress"}
!99 = !DILocation(line: 54, column: 26, scope: !82)
!100 = !DILocation(line: 54, column: 13, scope: !82)
!101 = !DILocation(line: 55, column: 9, scope: !82)
!102 = !DILocation(line: 57, column: 1, scope: !54)
!103 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 65, type: !55, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!104 = !DILocalVariable(name: "data", scope: !103, file: !45, line: 67, type: !42)
!105 = !DILocation(line: 67, column: 12, scope: !103)
!106 = !DILocalVariable(name: "dataBuffer", scope: !103, file: !45, line: 68, type: !60)
!107 = !DILocation(line: 68, column: 10, scope: !103)
!108 = !DILocation(line: 69, column: 12, scope: !103)
!109 = !DILocation(line: 69, column: 10, scope: !103)
!110 = !DILocation(line: 70, column: 73, scope: !103)
!111 = !DILocation(line: 70, column: 12, scope: !103)
!112 = !DILocation(line: 70, column: 10, scope: !103)
!113 = !DILocalVariable(name: "i", scope: !114, file: !45, line: 72, type: !23)
!114 = distinct !DILexicalBlock(scope: !103, file: !45, line: 71, column: 5)
!115 = !DILocation(line: 72, column: 13, scope: !114)
!116 = !DILocalVariable(name: "n", scope: !114, file: !45, line: 72, type: !23)
!117 = !DILocation(line: 72, column: 16, scope: !114)
!118 = !DILocalVariable(name: "intVariable", scope: !114, file: !45, line: 72, type: !23)
!119 = !DILocation(line: 72, column: 19, scope: !114)
!120 = !DILocation(line: 73, column: 20, scope: !121)
!121 = distinct !DILexicalBlock(scope: !114, file: !45, line: 73, column: 13)
!122 = !DILocation(line: 73, column: 13, scope: !121)
!123 = !DILocation(line: 73, column: 36, scope: !121)
!124 = !DILocation(line: 73, column: 13, scope: !114)
!125 = !DILocation(line: 76, column: 25, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !45, line: 74, column: 9)
!127 = !DILocation(line: 77, column: 20, scope: !128)
!128 = distinct !DILexicalBlock(scope: !126, file: !45, line: 77, column: 13)
!129 = !DILocation(line: 77, column: 18, scope: !128)
!130 = !DILocation(line: 77, column: 25, scope: !131)
!131 = distinct !DILexicalBlock(scope: !128, file: !45, line: 77, column: 13)
!132 = !DILocation(line: 77, column: 29, scope: !131)
!133 = !DILocation(line: 77, column: 27, scope: !131)
!134 = !DILocation(line: 77, column: 13, scope: !128)
!135 = !DILocation(line: 80, column: 28, scope: !136)
!136 = distinct !DILexicalBlock(scope: !131, file: !45, line: 78, column: 13)
!137 = !DILocation(line: 81, column: 13, scope: !136)
!138 = !DILocation(line: 77, column: 33, scope: !131)
!139 = !DILocation(line: 77, column: 13, scope: !131)
!140 = distinct !{!140, !134, !141, !98}
!141 = !DILocation(line: 81, column: 13, scope: !128)
!142 = !DILocation(line: 82, column: 26, scope: !126)
!143 = !DILocation(line: 82, column: 13, scope: !126)
!144 = !DILocation(line: 83, column: 9, scope: !126)
!145 = !DILocation(line: 85, column: 1, scope: !103)
!146 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 89, type: !55, scopeLine: 90, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!147 = !DILocalVariable(name: "data", scope: !146, file: !45, line: 91, type: !42)
!148 = !DILocation(line: 91, column: 12, scope: !146)
!149 = !DILocalVariable(name: "dataBuffer", scope: !146, file: !45, line: 92, type: !60)
!150 = !DILocation(line: 92, column: 10, scope: !146)
!151 = !DILocation(line: 93, column: 12, scope: !146)
!152 = !DILocation(line: 93, column: 10, scope: !146)
!153 = !DILocation(line: 94, column: 73, scope: !146)
!154 = !DILocation(line: 94, column: 12, scope: !146)
!155 = !DILocation(line: 94, column: 10, scope: !146)
!156 = !DILocalVariable(name: "i", scope: !157, file: !45, line: 96, type: !23)
!157 = distinct !DILexicalBlock(scope: !146, file: !45, line: 95, column: 5)
!158 = !DILocation(line: 96, column: 13, scope: !157)
!159 = !DILocalVariable(name: "n", scope: !157, file: !45, line: 96, type: !23)
!160 = !DILocation(line: 96, column: 16, scope: !157)
!161 = !DILocalVariable(name: "intVariable", scope: !157, file: !45, line: 96, type: !23)
!162 = !DILocation(line: 96, column: 19, scope: !157)
!163 = !DILocation(line: 97, column: 20, scope: !164)
!164 = distinct !DILexicalBlock(scope: !157, file: !45, line: 97, column: 13)
!165 = !DILocation(line: 97, column: 13, scope: !164)
!166 = !DILocation(line: 97, column: 36, scope: !164)
!167 = !DILocation(line: 97, column: 13, scope: !157)
!168 = !DILocation(line: 100, column: 17, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !45, line: 100, column: 17)
!170 = distinct !DILexicalBlock(scope: !164, file: !45, line: 98, column: 9)
!171 = !DILocation(line: 100, column: 19, scope: !169)
!172 = !DILocation(line: 100, column: 17, scope: !170)
!173 = !DILocation(line: 102, column: 29, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !45, line: 101, column: 13)
!175 = !DILocation(line: 103, column: 24, scope: !176)
!176 = distinct !DILexicalBlock(scope: !174, file: !45, line: 103, column: 17)
!177 = !DILocation(line: 103, column: 22, scope: !176)
!178 = !DILocation(line: 103, column: 29, scope: !179)
!179 = distinct !DILexicalBlock(scope: !176, file: !45, line: 103, column: 17)
!180 = !DILocation(line: 103, column: 33, scope: !179)
!181 = !DILocation(line: 103, column: 31, scope: !179)
!182 = !DILocation(line: 103, column: 17, scope: !176)
!183 = !DILocation(line: 106, column: 32, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !45, line: 104, column: 17)
!185 = !DILocation(line: 107, column: 17, scope: !184)
!186 = !DILocation(line: 103, column: 37, scope: !179)
!187 = !DILocation(line: 103, column: 17, scope: !179)
!188 = distinct !{!188, !182, !189, !98}
!189 = !DILocation(line: 107, column: 17, scope: !176)
!190 = !DILocation(line: 108, column: 30, scope: !174)
!191 = !DILocation(line: 108, column: 17, scope: !174)
!192 = !DILocation(line: 109, column: 13, scope: !174)
!193 = !DILocation(line: 110, column: 9, scope: !170)
!194 = !DILocation(line: 112, column: 1, scope: !146)
!195 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_61_good", scope: !45, file: !45, line: 114, type: !55, scopeLine: 115, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!196 = !DILocation(line: 116, column: 5, scope: !195)
!197 = !DILocation(line: 117, column: 5, scope: !195)
!198 = !DILocation(line: 118, column: 1, scope: !195)
!199 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_61b_badSource", scope: !48, file: !48, line: 34, type: !200, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!200 = !DISubroutineType(types: !201)
!201 = !{!42, !42}
!202 = !DILocalVariable(name: "data", arg: 1, scope: !199, file: !48, line: 34, type: !42)
!203 = !DILocation(line: 34, column: 72, scope: !199)
!204 = !DILocalVariable(name: "dataLen", scope: !205, file: !48, line: 38, type: !206)
!205 = distinct !DILexicalBlock(scope: !199, file: !48, line: 36, column: 5)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !207, line: 46, baseType: !208)
!207 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!208 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!209 = !DILocation(line: 38, column: 16, scope: !205)
!210 = !DILocation(line: 38, column: 33, scope: !205)
!211 = !DILocation(line: 38, column: 26, scope: !205)
!212 = !DILocalVariable(name: "pFile", scope: !205, file: !48, line: 39, type: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !215, line: 7, baseType: !216)
!215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !217, line: 49, size: 1728, elements: !218)
!217 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!218 = !{!219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !234, !236, !237, !238, !242, !243, !245, !249, !252, !254, !257, !260, !261, !262, !263, !264}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !216, file: !217, line: 51, baseType: !23, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !216, file: !217, line: 54, baseType: !42, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !216, file: !217, line: 55, baseType: !42, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !216, file: !217, line: 56, baseType: !42, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !216, file: !217, line: 57, baseType: !42, size: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !216, file: !217, line: 58, baseType: !42, size: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !216, file: !217, line: 59, baseType: !42, size: 64, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !216, file: !217, line: 60, baseType: !42, size: 64, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !216, file: !217, line: 61, baseType: !42, size: 64, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !216, file: !217, line: 64, baseType: !42, size: 64, offset: 576)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !216, file: !217, line: 65, baseType: !42, size: 64, offset: 640)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !216, file: !217, line: 66, baseType: !42, size: 64, offset: 704)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !216, file: !217, line: 68, baseType: !232, size: 64, offset: 768)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !217, line: 36, flags: DIFlagFwdDecl)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !216, file: !217, line: 70, baseType: !235, size: 64, offset: 832)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !216, file: !217, line: 72, baseType: !23, size: 32, offset: 896)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !216, file: !217, line: 73, baseType: !23, size: 32, offset: 928)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !216, file: !217, line: 74, baseType: !239, size: 64, offset: 960)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !240, line: 152, baseType: !241)
!240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!241 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !216, file: !217, line: 77, baseType: !24, size: 16, offset: 1024)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !216, file: !217, line: 78, baseType: !244, size: 8, offset: 1040)
!244 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !216, file: !217, line: 79, baseType: !246, size: 8, offset: 1048)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 1)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !216, file: !217, line: 81, baseType: !250, size: 64, offset: 1088)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !217, line: 43, baseType: null)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !216, file: !217, line: 89, baseType: !253, size: 64, offset: 1152)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !240, line: 153, baseType: !241)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !216, file: !217, line: 91, baseType: !255, size: 64, offset: 1216)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !217, line: 37, flags: DIFlagFwdDecl)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !216, file: !217, line: 92, baseType: !258, size: 64, offset: 1280)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !217, line: 38, flags: DIFlagFwdDecl)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !216, file: !217, line: 93, baseType: !235, size: 64, offset: 1344)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !216, file: !217, line: 94, baseType: !22, size: 64, offset: 1408)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !216, file: !217, line: 95, baseType: !206, size: 64, offset: 1472)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !216, file: !217, line: 96, baseType: !23, size: 32, offset: 1536)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !216, file: !217, line: 98, baseType: !265, size: 160, offset: 1568)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 20)
!268 = !DILocation(line: 39, column: 16, scope: !205)
!269 = !DILocation(line: 41, column: 17, scope: !270)
!270 = distinct !DILexicalBlock(scope: !205, file: !48, line: 41, column: 13)
!271 = !DILocation(line: 41, column: 16, scope: !270)
!272 = !DILocation(line: 41, column: 25, scope: !270)
!273 = !DILocation(line: 41, column: 13, scope: !205)
!274 = !DILocation(line: 43, column: 21, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !48, line: 42, column: 9)
!276 = !DILocation(line: 43, column: 19, scope: !275)
!277 = !DILocation(line: 44, column: 17, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !48, line: 44, column: 17)
!279 = !DILocation(line: 44, column: 23, scope: !278)
!280 = !DILocation(line: 44, column: 17, scope: !275)
!281 = !DILocation(line: 47, column: 27, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !48, line: 47, column: 21)
!283 = distinct !DILexicalBlock(scope: !278, file: !48, line: 45, column: 13)
!284 = !DILocation(line: 47, column: 32, scope: !282)
!285 = !DILocation(line: 47, column: 31, scope: !282)
!286 = !DILocation(line: 47, column: 51, scope: !282)
!287 = !DILocation(line: 47, column: 50, scope: !282)
!288 = !DILocation(line: 47, column: 41, scope: !282)
!289 = !DILocation(line: 47, column: 61, scope: !282)
!290 = !DILocation(line: 47, column: 21, scope: !282)
!291 = !DILocation(line: 47, column: 68, scope: !282)
!292 = !DILocation(line: 47, column: 21, scope: !283)
!293 = !DILocation(line: 49, column: 21, scope: !294)
!294 = distinct !DILexicalBlock(scope: !282, file: !48, line: 48, column: 17)
!295 = !DILocation(line: 51, column: 21, scope: !294)
!296 = !DILocation(line: 51, column: 26, scope: !294)
!297 = !DILocation(line: 51, column: 35, scope: !294)
!298 = !DILocation(line: 52, column: 17, scope: !294)
!299 = !DILocation(line: 53, column: 24, scope: !283)
!300 = !DILocation(line: 53, column: 17, scope: !283)
!301 = !DILocation(line: 54, column: 13, scope: !283)
!302 = !DILocation(line: 55, column: 9, scope: !275)
!303 = !DILocation(line: 57, column: 12, scope: !199)
!304 = !DILocation(line: 57, column: 5, scope: !199)
!305 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_61b_goodG2BSource", scope: !48, file: !48, line: 65, type: !200, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!306 = !DILocalVariable(name: "data", arg: 1, scope: !305, file: !48, line: 65, type: !42)
!307 = !DILocation(line: 65, column: 76, scope: !305)
!308 = !DILocation(line: 68, column: 12, scope: !305)
!309 = !DILocation(line: 68, column: 5, scope: !305)
!310 = !DILocation(line: 69, column: 12, scope: !305)
!311 = !DILocation(line: 69, column: 5, scope: !305)
!312 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_61b_goodB2GSource", scope: !48, file: !48, line: 73, type: !200, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !46)
!313 = !DILocalVariable(name: "data", arg: 1, scope: !312, file: !48, line: 73, type: !42)
!314 = !DILocation(line: 73, column: 76, scope: !312)
!315 = !DILocalVariable(name: "dataLen", scope: !316, file: !48, line: 77, type: !206)
!316 = distinct !DILexicalBlock(scope: !312, file: !48, line: 75, column: 5)
!317 = !DILocation(line: 77, column: 16, scope: !316)
!318 = !DILocation(line: 77, column: 33, scope: !316)
!319 = !DILocation(line: 77, column: 26, scope: !316)
!320 = !DILocalVariable(name: "pFile", scope: !316, file: !48, line: 78, type: !213)
!321 = !DILocation(line: 78, column: 16, scope: !316)
!322 = !DILocation(line: 80, column: 17, scope: !323)
!323 = distinct !DILexicalBlock(scope: !316, file: !48, line: 80, column: 13)
!324 = !DILocation(line: 80, column: 16, scope: !323)
!325 = !DILocation(line: 80, column: 25, scope: !323)
!326 = !DILocation(line: 80, column: 13, scope: !316)
!327 = !DILocation(line: 82, column: 21, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !48, line: 81, column: 9)
!329 = !DILocation(line: 82, column: 19, scope: !328)
!330 = !DILocation(line: 83, column: 17, scope: !331)
!331 = distinct !DILexicalBlock(scope: !328, file: !48, line: 83, column: 17)
!332 = !DILocation(line: 83, column: 23, scope: !331)
!333 = !DILocation(line: 83, column: 17, scope: !328)
!334 = !DILocation(line: 86, column: 27, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !48, line: 86, column: 21)
!336 = distinct !DILexicalBlock(scope: !331, file: !48, line: 84, column: 13)
!337 = !DILocation(line: 86, column: 32, scope: !335)
!338 = !DILocation(line: 86, column: 31, scope: !335)
!339 = !DILocation(line: 86, column: 51, scope: !335)
!340 = !DILocation(line: 86, column: 50, scope: !335)
!341 = !DILocation(line: 86, column: 41, scope: !335)
!342 = !DILocation(line: 86, column: 61, scope: !335)
!343 = !DILocation(line: 86, column: 21, scope: !335)
!344 = !DILocation(line: 86, column: 68, scope: !335)
!345 = !DILocation(line: 86, column: 21, scope: !336)
!346 = !DILocation(line: 88, column: 21, scope: !347)
!347 = distinct !DILexicalBlock(scope: !335, file: !48, line: 87, column: 17)
!348 = !DILocation(line: 90, column: 21, scope: !347)
!349 = !DILocation(line: 90, column: 26, scope: !347)
!350 = !DILocation(line: 90, column: 35, scope: !347)
!351 = !DILocation(line: 91, column: 17, scope: !347)
!352 = !DILocation(line: 92, column: 24, scope: !336)
!353 = !DILocation(line: 92, column: 17, scope: !336)
!354 = !DILocation(line: 93, column: 13, scope: !336)
!355 = !DILocation(line: 94, column: 9, scope: !328)
!356 = !DILocation(line: 96, column: 12, scope: !312)
!357 = !DILocation(line: 96, column: 5, scope: !312)
!358 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !359, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !42}
!361 = !DILocalVariable(name: "line", arg: 1, scope: !358, file: !3, line: 11, type: !42)
!362 = !DILocation(line: 11, column: 25, scope: !358)
!363 = !DILocation(line: 13, column: 1, scope: !358)
!364 = !DILocation(line: 14, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !358, file: !3, line: 14, column: 8)
!366 = !DILocation(line: 14, column: 13, scope: !365)
!367 = !DILocation(line: 14, column: 8, scope: !358)
!368 = !DILocation(line: 16, column: 24, scope: !369)
!369 = distinct !DILexicalBlock(scope: !365, file: !3, line: 15, column: 5)
!370 = !DILocation(line: 16, column: 9, scope: !369)
!371 = !DILocation(line: 17, column: 5, scope: !369)
!372 = !DILocation(line: 18, column: 5, scope: !358)
!373 = !DILocation(line: 19, column: 1, scope: !358)
!374 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !359, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!375 = !DILocalVariable(name: "line", arg: 1, scope: !374, file: !3, line: 20, type: !42)
!376 = !DILocation(line: 20, column: 29, scope: !374)
!377 = !DILocation(line: 22, column: 8, scope: !378)
!378 = distinct !DILexicalBlock(scope: !374, file: !3, line: 22, column: 8)
!379 = !DILocation(line: 22, column: 13, scope: !378)
!380 = !DILocation(line: 22, column: 8, scope: !374)
!381 = !DILocation(line: 24, column: 24, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !3, line: 23, column: 5)
!383 = !DILocation(line: 24, column: 9, scope: !382)
!384 = !DILocation(line: 25, column: 5, scope: !382)
!385 = !DILocation(line: 26, column: 1, scope: !374)
!386 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !387, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!387 = !DISubroutineType(types: !388)
!388 = !{null, !389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !207, line: 74, baseType: !23)
!391 = !DILocalVariable(name: "line", arg: 1, scope: !386, file: !3, line: 27, type: !389)
!392 = !DILocation(line: 27, column: 29, scope: !386)
!393 = !DILocation(line: 29, column: 8, scope: !394)
!394 = distinct !DILexicalBlock(scope: !386, file: !3, line: 29, column: 8)
!395 = !DILocation(line: 29, column: 13, scope: !394)
!396 = !DILocation(line: 29, column: 8, scope: !386)
!397 = !DILocation(line: 31, column: 27, scope: !398)
!398 = distinct !DILexicalBlock(scope: !394, file: !3, line: 30, column: 5)
!399 = !DILocation(line: 31, column: 9, scope: !398)
!400 = !DILocation(line: 32, column: 5, scope: !398)
!401 = !DILocation(line: 33, column: 1, scope: !386)
!402 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !403, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !23}
!405 = !DILocalVariable(name: "intNumber", arg: 1, scope: !402, file: !3, line: 35, type: !23)
!406 = !DILocation(line: 35, column: 24, scope: !402)
!407 = !DILocation(line: 37, column: 20, scope: !402)
!408 = !DILocation(line: 37, column: 5, scope: !402)
!409 = !DILocation(line: 38, column: 1, scope: !402)
!410 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !411, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !413}
!413 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!414 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !410, file: !3, line: 40, type: !413)
!415 = !DILocation(line: 40, column: 28, scope: !410)
!416 = !DILocation(line: 42, column: 21, scope: !410)
!417 = !DILocation(line: 42, column: 5, scope: !410)
!418 = !DILocation(line: 43, column: 1, scope: !410)
!419 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !420, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !422}
!422 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!423 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !419, file: !3, line: 45, type: !422)
!424 = !DILocation(line: 45, column: 28, scope: !419)
!425 = !DILocation(line: 47, column: 20, scope: !419)
!426 = !DILocation(line: 47, column: 5, scope: !419)
!427 = !DILocation(line: 48, column: 1, scope: !419)
!428 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !429, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !241}
!431 = !DILocalVariable(name: "longNumber", arg: 1, scope: !428, file: !3, line: 50, type: !241)
!432 = !DILocation(line: 50, column: 26, scope: !428)
!433 = !DILocation(line: 52, column: 21, scope: !428)
!434 = !DILocation(line: 52, column: 5, scope: !428)
!435 = !DILocation(line: 53, column: 1, scope: !428)
!436 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !437, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !439}
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !440, line: 27, baseType: !441)
!440 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !240, line: 44, baseType: !241)
!442 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !436, file: !3, line: 55, type: !439)
!443 = !DILocation(line: 55, column: 33, scope: !436)
!444 = !DILocation(line: 57, column: 29, scope: !436)
!445 = !DILocation(line: 57, column: 5, scope: !436)
!446 = !DILocation(line: 58, column: 1, scope: !436)
!447 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !448, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !206}
!450 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !447, file: !3, line: 60, type: !206)
!451 = !DILocation(line: 60, column: 29, scope: !447)
!452 = !DILocation(line: 62, column: 21, scope: !447)
!453 = !DILocation(line: 62, column: 5, scope: !447)
!454 = !DILocation(line: 63, column: 1, scope: !447)
!455 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !456, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !43}
!458 = !DILocalVariable(name: "charHex", arg: 1, scope: !455, file: !3, line: 65, type: !43)
!459 = !DILocation(line: 65, column: 29, scope: !455)
!460 = !DILocation(line: 67, column: 22, scope: !455)
!461 = !DILocation(line: 67, column: 5, scope: !455)
!462 = !DILocation(line: 68, column: 1, scope: !455)
!463 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !464, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !390}
!466 = !DILocalVariable(name: "wideChar", arg: 1, scope: !463, file: !3, line: 70, type: !390)
!467 = !DILocation(line: 70, column: 29, scope: !463)
!468 = !DILocalVariable(name: "s", scope: !463, file: !3, line: 74, type: !469)
!469 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 64, elements: !470)
!470 = !{!471}
!471 = !DISubrange(count: 2)
!472 = !DILocation(line: 74, column: 13, scope: !463)
!473 = !DILocation(line: 75, column: 16, scope: !463)
!474 = !DILocation(line: 75, column: 9, scope: !463)
!475 = !DILocation(line: 75, column: 14, scope: !463)
!476 = !DILocation(line: 76, column: 9, scope: !463)
!477 = !DILocation(line: 76, column: 14, scope: !463)
!478 = !DILocation(line: 77, column: 21, scope: !463)
!479 = !DILocation(line: 77, column: 5, scope: !463)
!480 = !DILocation(line: 78, column: 1, scope: !463)
!481 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !482, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !7}
!484 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !481, file: !3, line: 80, type: !7)
!485 = !DILocation(line: 80, column: 33, scope: !481)
!486 = !DILocation(line: 82, column: 20, scope: !481)
!487 = !DILocation(line: 82, column: 5, scope: !481)
!488 = !DILocation(line: 83, column: 1, scope: !481)
!489 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !490, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !25}
!492 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !489, file: !3, line: 85, type: !25)
!493 = !DILocation(line: 85, column: 45, scope: !489)
!494 = !DILocation(line: 87, column: 22, scope: !489)
!495 = !DILocation(line: 87, column: 5, scope: !489)
!496 = !DILocation(line: 88, column: 1, scope: !489)
!497 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !498, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !500}
!500 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!501 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !497, file: !3, line: 90, type: !500)
!502 = !DILocation(line: 90, column: 29, scope: !497)
!503 = !DILocation(line: 92, column: 20, scope: !497)
!504 = !DILocation(line: 92, column: 5, scope: !497)
!505 = !DILocation(line: 93, column: 1, scope: !497)
!506 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !507, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !511, line: 100, baseType: !512)
!511 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_107/source_code")
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !511, line: 96, size: 64, elements: !513)
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !512, file: !511, line: 98, baseType: !23, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !512, file: !511, line: 99, baseType: !23, size: 32, offset: 32)
!516 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !506, file: !3, line: 95, type: !509)
!517 = !DILocation(line: 95, column: 40, scope: !506)
!518 = !DILocation(line: 97, column: 26, scope: !506)
!519 = !DILocation(line: 97, column: 47, scope: !506)
!520 = !DILocation(line: 97, column: 55, scope: !506)
!521 = !DILocation(line: 97, column: 76, scope: !506)
!522 = !DILocation(line: 97, column: 5, scope: !506)
!523 = !DILocation(line: 98, column: 1, scope: !506)
!524 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !525, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !527, !206}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!528 = !DILocalVariable(name: "bytes", arg: 1, scope: !524, file: !3, line: 100, type: !527)
!529 = !DILocation(line: 100, column: 38, scope: !524)
!530 = !DILocalVariable(name: "numBytes", arg: 2, scope: !524, file: !3, line: 100, type: !206)
!531 = !DILocation(line: 100, column: 52, scope: !524)
!532 = !DILocalVariable(name: "i", scope: !524, file: !3, line: 102, type: !206)
!533 = !DILocation(line: 102, column: 12, scope: !524)
!534 = !DILocation(line: 103, column: 12, scope: !535)
!535 = distinct !DILexicalBlock(scope: !524, file: !3, line: 103, column: 5)
!536 = !DILocation(line: 103, column: 10, scope: !535)
!537 = !DILocation(line: 103, column: 17, scope: !538)
!538 = distinct !DILexicalBlock(scope: !535, file: !3, line: 103, column: 5)
!539 = !DILocation(line: 103, column: 21, scope: !538)
!540 = !DILocation(line: 103, column: 19, scope: !538)
!541 = !DILocation(line: 103, column: 5, scope: !535)
!542 = !DILocation(line: 105, column: 24, scope: !543)
!543 = distinct !DILexicalBlock(scope: !538, file: !3, line: 104, column: 5)
!544 = !DILocation(line: 105, column: 30, scope: !543)
!545 = !DILocation(line: 105, column: 9, scope: !543)
!546 = !DILocation(line: 106, column: 5, scope: !543)
!547 = !DILocation(line: 103, column: 31, scope: !538)
!548 = !DILocation(line: 103, column: 5, scope: !538)
!549 = distinct !{!549, !541, !550, !98}
!550 = !DILocation(line: 106, column: 5, scope: !535)
!551 = !DILocation(line: 107, column: 5, scope: !524)
!552 = !DILocation(line: 108, column: 1, scope: !524)
!553 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !554, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!554 = !DISubroutineType(types: !555)
!555 = !{!206, !527, !206, !42}
!556 = !DILocalVariable(name: "bytes", arg: 1, scope: !553, file: !3, line: 113, type: !527)
!557 = !DILocation(line: 113, column: 39, scope: !553)
!558 = !DILocalVariable(name: "numBytes", arg: 2, scope: !553, file: !3, line: 113, type: !206)
!559 = !DILocation(line: 113, column: 53, scope: !553)
!560 = !DILocalVariable(name: "hex", arg: 3, scope: !553, file: !3, line: 113, type: !42)
!561 = !DILocation(line: 113, column: 71, scope: !553)
!562 = !DILocalVariable(name: "numWritten", scope: !553, file: !3, line: 115, type: !206)
!563 = !DILocation(line: 115, column: 12, scope: !553)
!564 = !DILocation(line: 121, column: 5, scope: !553)
!565 = !DILocation(line: 121, column: 12, scope: !553)
!566 = !DILocation(line: 121, column: 25, scope: !553)
!567 = !DILocation(line: 121, column: 23, scope: !553)
!568 = !DILocation(line: 121, column: 34, scope: !553)
!569 = !DILocation(line: 121, column: 37, scope: !553)
!570 = !DILocation(line: 121, column: 67, scope: !553)
!571 = !DILocation(line: 121, column: 70, scope: !553)
!572 = !DILocation(line: 0, scope: !553)
!573 = !DILocalVariable(name: "byte", scope: !574, file: !3, line: 123, type: !23)
!574 = distinct !DILexicalBlock(scope: !553, file: !3, line: 122, column: 5)
!575 = !DILocation(line: 123, column: 13, scope: !574)
!576 = !DILocation(line: 124, column: 17, scope: !574)
!577 = !DILocation(line: 124, column: 25, scope: !574)
!578 = !DILocation(line: 124, column: 23, scope: !574)
!579 = !DILocation(line: 124, column: 9, scope: !574)
!580 = !DILocation(line: 125, column: 45, scope: !574)
!581 = !DILocation(line: 125, column: 29, scope: !574)
!582 = !DILocation(line: 125, column: 9, scope: !574)
!583 = !DILocation(line: 125, column: 15, scope: !574)
!584 = !DILocation(line: 125, column: 27, scope: !574)
!585 = !DILocation(line: 126, column: 9, scope: !574)
!586 = distinct !{!586, !564, !587, !98}
!587 = !DILocation(line: 127, column: 5, scope: !553)
!588 = !DILocation(line: 129, column: 12, scope: !553)
!589 = !DILocation(line: 129, column: 5, scope: !553)
!590 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !591, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!591 = !DISubroutineType(types: !592)
!592 = !{!206, !527, !206, !389}
!593 = !DILocalVariable(name: "bytes", arg: 1, scope: !590, file: !3, line: 135, type: !527)
!594 = !DILocation(line: 135, column: 41, scope: !590)
!595 = !DILocalVariable(name: "numBytes", arg: 2, scope: !590, file: !3, line: 135, type: !206)
!596 = !DILocation(line: 135, column: 55, scope: !590)
!597 = !DILocalVariable(name: "hex", arg: 3, scope: !590, file: !3, line: 135, type: !389)
!598 = !DILocation(line: 135, column: 76, scope: !590)
!599 = !DILocalVariable(name: "numWritten", scope: !590, file: !3, line: 137, type: !206)
!600 = !DILocation(line: 137, column: 12, scope: !590)
!601 = !DILocation(line: 143, column: 5, scope: !590)
!602 = !DILocation(line: 143, column: 12, scope: !590)
!603 = !DILocation(line: 143, column: 25, scope: !590)
!604 = !DILocation(line: 143, column: 23, scope: !590)
!605 = !DILocation(line: 143, column: 34, scope: !590)
!606 = !DILocation(line: 143, column: 47, scope: !590)
!607 = !DILocation(line: 143, column: 55, scope: !590)
!608 = !DILocation(line: 143, column: 53, scope: !590)
!609 = !DILocation(line: 143, column: 37, scope: !590)
!610 = !DILocation(line: 143, column: 68, scope: !590)
!611 = !DILocation(line: 143, column: 81, scope: !590)
!612 = !DILocation(line: 143, column: 89, scope: !590)
!613 = !DILocation(line: 143, column: 87, scope: !590)
!614 = !DILocation(line: 143, column: 100, scope: !590)
!615 = !DILocation(line: 143, column: 71, scope: !590)
!616 = !DILocation(line: 0, scope: !590)
!617 = !DILocalVariable(name: "byte", scope: !618, file: !3, line: 145, type: !23)
!618 = distinct !DILexicalBlock(scope: !590, file: !3, line: 144, column: 5)
!619 = !DILocation(line: 145, column: 13, scope: !618)
!620 = !DILocation(line: 146, column: 18, scope: !618)
!621 = !DILocation(line: 146, column: 26, scope: !618)
!622 = !DILocation(line: 146, column: 24, scope: !618)
!623 = !DILocation(line: 146, column: 9, scope: !618)
!624 = !DILocation(line: 147, column: 45, scope: !618)
!625 = !DILocation(line: 147, column: 29, scope: !618)
!626 = !DILocation(line: 147, column: 9, scope: !618)
!627 = !DILocation(line: 147, column: 15, scope: !618)
!628 = !DILocation(line: 147, column: 27, scope: !618)
!629 = !DILocation(line: 148, column: 9, scope: !618)
!630 = distinct !{!630, !601, !631, !98}
!631 = !DILocation(line: 149, column: 5, scope: !590)
!632 = !DILocation(line: 151, column: 12, scope: !590)
!633 = !DILocation(line: 151, column: 5, scope: !590)
!634 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !635, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!635 = !DISubroutineType(types: !636)
!636 = !{!23}
!637 = !DILocation(line: 158, column: 5, scope: !634)
!638 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !635, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!639 = !DILocation(line: 163, column: 5, scope: !638)
!640 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !635, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!641 = !DILocation(line: 168, column: 13, scope: !640)
!642 = !DILocation(line: 168, column: 20, scope: !640)
!643 = !DILocation(line: 168, column: 5, scope: !640)
!644 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!645 = !DILocation(line: 187, column: 16, scope: !644)
!646 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!647 = !DILocation(line: 188, column: 16, scope: !646)
!648 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!649 = !DILocation(line: 189, column: 16, scope: !648)
!650 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!651 = !DILocation(line: 190, column: 16, scope: !650)
!652 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!653 = !DILocation(line: 191, column: 16, scope: !652)
!654 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!655 = !DILocation(line: 192, column: 16, scope: !654)
!656 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!657 = !DILocation(line: 193, column: 16, scope: !656)
!658 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!659 = !DILocation(line: 194, column: 16, scope: !658)
!660 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!661 = !DILocation(line: 195, column: 16, scope: !660)
!662 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!663 = !DILocation(line: 198, column: 15, scope: !662)
!664 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!665 = !DILocation(line: 199, column: 15, scope: !664)
!666 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!667 = !DILocation(line: 200, column: 15, scope: !666)
!668 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!669 = !DILocation(line: 201, column: 15, scope: !668)
!670 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!671 = !DILocation(line: 202, column: 15, scope: !670)
!672 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!673 = !DILocation(line: 203, column: 15, scope: !672)
!674 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!675 = !DILocation(line: 204, column: 15, scope: !674)
!676 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!677 = !DILocation(line: 205, column: 15, scope: !676)
!678 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!679 = !DILocation(line: 206, column: 15, scope: !678)
