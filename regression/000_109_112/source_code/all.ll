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
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
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
@.str.4.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%hd\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%f\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%zu\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%02x\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%ls\0A\00", align 1
@.str.11.18 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%g\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"%d -- %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i32] [i32 37, i32 48, i32 50, i32 120, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_66_bad() #0 !dbg !54 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !59, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !64, metadata !DIExpression()), !dbg !68
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !68
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !68
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !69
  store i8* %arraydecay, i8** %data, align 8, !dbg !70
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !71, metadata !DIExpression()), !dbg !76
  %1 = load i8*, i8** %data, align 8, !dbg !77
  %call = call i64 @strlen(i8* %1) #7, !dbg !78
  store i64 %call, i64* %dataLen, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !79, metadata !DIExpression()), !dbg !135
  %2 = load i64, i64* %dataLen, align 8, !dbg !136
  %sub = sub i64 100, %2, !dbg !138
  %cmp = icmp ugt i64 %sub, 1, !dbg !139
  br i1 %cmp, label %if.then, label %if.end11, !dbg !140

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !141
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !143
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !144
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !146
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !147

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !148
  %5 = load i64, i64* %dataLen, align 8, !dbg !151
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !152
  %6 = load i64, i64* %dataLen, align 8, !dbg !153
  %sub4 = sub i64 100, %6, !dbg !154
  %conv = trunc i64 %sub4 to i32, !dbg !155
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !156
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !157
  %cmp6 = icmp eq i8* %call5, null, !dbg !158
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !159

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !160
  %8 = load i8*, i8** %data, align 8, !dbg !162
  %9 = load i64, i64* %dataLen, align 8, !dbg !163
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !162
  store i8 0, i8* %arrayidx, align 1, !dbg !164
  br label %if.end, !dbg !165

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !166
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !167
  br label %if.end10, !dbg !168

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !169

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !170
  %arrayidx12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !171
  store i8* %11, i8** %arrayidx12, align 16, !dbg !172
  %arraydecay13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !173
  call void @CWE606_Unchecked_Loop_Condition__char_file_66b_badSink(i8** %arraydecay13), !dbg !174
  ret void, !dbg !175
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !176 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !181, metadata !DIExpression()), !dbg !182
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !182
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !182
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !183
  store i8* %arraydecay, i8** %data, align 8, !dbg !184
  %1 = load i8*, i8** %data, align 8, !dbg !185
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !186
  %2 = load i8*, i8** %data, align 8, !dbg !187
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !188
  store i8* %2, i8** %arrayidx, align 16, !dbg !189
  %arraydecay1 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !190
  call void @CWE606_Unchecked_Loop_Condition__char_file_66b_goodG2BSink(i8** %arraydecay1), !dbg !191
  ret void, !dbg !192
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !193 {
entry:
  %data = alloca i8*, align 8
  %dataArray = alloca [5 x i8*], align 16
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata [5 x i8*]* %dataArray, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !198, metadata !DIExpression()), !dbg !199
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !199
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !199
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !200
  store i8* %arraydecay, i8** %data, align 8, !dbg !201
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !202, metadata !DIExpression()), !dbg !204
  %1 = load i8*, i8** %data, align 8, !dbg !205
  %call = call i64 @strlen(i8* %1) #7, !dbg !206
  store i64 %call, i64* %dataLen, align 8, !dbg !204
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !207, metadata !DIExpression()), !dbg !208
  %2 = load i64, i64* %dataLen, align 8, !dbg !209
  %sub = sub i64 100, %2, !dbg !211
  %cmp = icmp ugt i64 %sub, 1, !dbg !212
  br i1 %cmp, label %if.then, label %if.end11, !dbg !213

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !214
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !216
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !217
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !219
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !220

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !221
  %5 = load i64, i64* %dataLen, align 8, !dbg !224
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !225
  %6 = load i64, i64* %dataLen, align 8, !dbg !226
  %sub4 = sub i64 100, %6, !dbg !227
  %conv = trunc i64 %sub4 to i32, !dbg !228
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !229
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !230
  %cmp6 = icmp eq i8* %call5, null, !dbg !231
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !232

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !233
  %8 = load i8*, i8** %data, align 8, !dbg !235
  %9 = load i64, i64* %dataLen, align 8, !dbg !236
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !235
  store i8 0, i8* %arrayidx, align 1, !dbg !237
  br label %if.end, !dbg !238

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !239
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !240
  br label %if.end10, !dbg !241

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !242

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !243
  %arrayidx12 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 2, !dbg !244
  store i8* %11, i8** %arrayidx12, align 16, !dbg !245
  %arraydecay13 = getelementptr inbounds [5 x i8*], [5 x i8*]* %dataArray, i64 0, i64 0, !dbg !246
  call void @CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink(i8** %arraydecay13), !dbg !247
  ret void, !dbg !248
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_66_good() #0 !dbg !249 {
entry:
  call void @goodG2B(), !dbg !250
  call void @goodB2G(), !dbg !251
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_66b_badSink(i8** %dataArray) #0 !dbg !253 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata i8** %data, metadata !258, metadata !DIExpression()), !dbg !259
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !260
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !260
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !260
  store i8* %1, i8** %data, align 8, !dbg !259
  call void @llvm.dbg.declare(metadata i32* %i, metadata !261, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata i32* %n, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !266, metadata !DIExpression()), !dbg !267
  %2 = load i8*, i8** %data, align 8, !dbg !268
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !270
  %cmp = icmp eq i32 %call, 1, !dbg !271
  br i1 %cmp, label %if.then, label %if.end, !dbg !272

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !273
  store i32 0, i32* %i, align 4, !dbg !275
  br label %for.cond, !dbg !277

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !278
  %4 = load i32, i32* %n, align 4, !dbg !280
  %cmp1 = icmp slt i32 %3, %4, !dbg !281
  br i1 %cmp1, label %for.body, label %for.end, !dbg !282

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !283
  %inc = add nsw i32 %5, 1, !dbg !283
  store i32 %inc, i32* %intVariable, align 4, !dbg !283
  br label %for.inc, !dbg !285

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !286
  %inc2 = add nsw i32 %6, 1, !dbg !286
  store i32 %inc2, i32* %i, align 4, !dbg !286
  br label %for.cond, !dbg !287, !llvm.loop !288

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !291
  call void @printIntLine(i32 %7), !dbg !292
  br label %if.end, !dbg !293

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !294
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_66b_goodG2BSink(i8** %dataArray) #0 !dbg !295 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata i8** %data, metadata !298, metadata !DIExpression()), !dbg !299
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !300
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !300
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !300
  store i8* %1, i8** %data, align 8, !dbg !299
  call void @llvm.dbg.declare(metadata i32* %i, metadata !301, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.declare(metadata i32* %n, metadata !304, metadata !DIExpression()), !dbg !305
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !306, metadata !DIExpression()), !dbg !307
  %2 = load i8*, i8** %data, align 8, !dbg !308
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !310
  %cmp = icmp eq i32 %call, 1, !dbg !311
  br i1 %cmp, label %if.then, label %if.end, !dbg !312

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !313
  store i32 0, i32* %i, align 4, !dbg !315
  br label %for.cond, !dbg !317

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !318
  %4 = load i32, i32* %n, align 4, !dbg !320
  %cmp1 = icmp slt i32 %3, %4, !dbg !321
  br i1 %cmp1, label %for.body, label %for.end, !dbg !322

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !323
  %inc = add nsw i32 %5, 1, !dbg !323
  store i32 %inc, i32* %intVariable, align 4, !dbg !323
  br label %for.inc, !dbg !325

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !326
  %inc2 = add nsw i32 %6, 1, !dbg !326
  store i32 %inc2, i32* %i, align 4, !dbg !326
  br label %for.cond, !dbg !327, !llvm.loop !328

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !330
  call void @printIntLine(i32 %7), !dbg !331
  br label %if.end, !dbg !332

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !333
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink(i8** %dataArray) #0 !dbg !334 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !335, metadata !DIExpression()), !dbg !336
  call void @llvm.dbg.declare(metadata i8** %data, metadata !337, metadata !DIExpression()), !dbg !338
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !339
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !339
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !339
  store i8* %1, i8** %data, align 8, !dbg !338
  call void @llvm.dbg.declare(metadata i32* %i, metadata !340, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata i32* %n, metadata !343, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !345, metadata !DIExpression()), !dbg !346
  %2 = load i8*, i8** %data, align 8, !dbg !347
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #8, !dbg !349
  %cmp = icmp eq i32 %call, 1, !dbg !350
  br i1 %cmp, label %if.then, label %if.end5, !dbg !351

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !352
  %cmp1 = icmp slt i32 %3, 10000, !dbg !355
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !356

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !357
  store i32 0, i32* %i, align 4, !dbg !359
  br label %for.cond, !dbg !361

for.cond:                                         ; preds = %for.inc, %if.then2
  %4 = load i32, i32* %i, align 4, !dbg !362
  %5 = load i32, i32* %n, align 4, !dbg !364
  %cmp3 = icmp slt i32 %4, %5, !dbg !365
  br i1 %cmp3, label %for.body, label %for.end, !dbg !366

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !367
  %inc = add nsw i32 %6, 1, !dbg !367
  store i32 %inc, i32* %intVariable, align 4, !dbg !367
  br label %for.inc, !dbg !369

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !370
  %inc4 = add nsw i32 %7, 1, !dbg !370
  store i32 %inc4, i32* %i, align 4, !dbg !370
  br label %for.cond, !dbg !371, !llvm.loop !372

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !374
  call void @printIntLine(i32 %8), !dbg !375
  br label %if.end, !dbg !376

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !377

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLine(i8* %line) #0 !dbg !379 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !382, metadata !DIExpression()), !dbg !383
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0)), !dbg !384
  %0 = load i8*, i8** %line.addr, align 8, !dbg !385
  %cmp = icmp ne i8* %0, null, !dbg !387
  br i1 %cmp, label %if.then, label %if.end, !dbg !388

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !389
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !391
  br label %if.end, !dbg !392

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2.13, i64 0, i64 0)), !dbg !393
  ret void, !dbg !394
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSinkLine(i8* %line) #0 !dbg !395 {
entry:
  %line.addr = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %line.addr, metadata !396, metadata !DIExpression()), !dbg !397
  %0 = load i8*, i8** %line.addr, align 8, !dbg !398
  %cmp = icmp ne i8* %0, null, !dbg !400
  br i1 %cmp, label %if.then, label %if.end, !dbg !401

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %line.addr, align 8, !dbg !402
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1.12, i64 0, i64 0), i8* %1), !dbg !404
  br label %if.end, !dbg !405

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !406
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWLine(i32* %line) #0 !dbg !407 {
entry:
  %line.addr = alloca i32*, align 8
  store i32* %line, i32** %line.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %line.addr, metadata !412, metadata !DIExpression()), !dbg !413
  %0 = load i32*, i32** %line.addr, align 8, !dbg !414
  %cmp = icmp ne i32* %0, null, !dbg !416
  br i1 %cmp, label %if.then, label %if.end, !dbg !417

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %line.addr, align 8, !dbg !418
  %call = call i32 (i32*, ...) @wprintf(i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.3.14, i64 0, i64 0), i32* %1), !dbg !420
  br label %if.end, !dbg !421

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !422
}

declare dso_local i32 @wprintf(i32*, ...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printIntLine(i32 %intNumber) #0 !dbg !423 {
entry:
  %intNumber.addr = alloca i32, align 4
  store i32 %intNumber, i32* %intNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intNumber.addr, metadata !426, metadata !DIExpression()), !dbg !427
  %0 = load i32, i32* %intNumber.addr, align 4, !dbg !428
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4.17, i64 0, i64 0), i32 %0), !dbg !429
  ret void, !dbg !430
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printShortLine(i16 signext %shortNumber) #0 !dbg !431 {
entry:
  %shortNumber.addr = alloca i16, align 2
  store i16 %shortNumber, i16* %shortNumber.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %shortNumber.addr, metadata !435, metadata !DIExpression()), !dbg !436
  %0 = load i16, i16* %shortNumber.addr, align 2, !dbg !437
  %conv = sext i16 %0 to i32, !dbg !437
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %conv), !dbg !438
  ret void, !dbg !439
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printFloatLine(float %floatNumber) #0 !dbg !440 {
entry:
  %floatNumber.addr = alloca float, align 4
  store float %floatNumber, float* %floatNumber.addr, align 4
  call void @llvm.dbg.declare(metadata float* %floatNumber.addr, metadata !444, metadata !DIExpression()), !dbg !445
  %0 = load float, float* %floatNumber.addr, align 4, !dbg !446
  %conv = fpext float %0 to double, !dbg !446
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), double %conv), !dbg !447
  ret void, !dbg !448
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLine(i64 %longNumber) #0 !dbg !449 {
entry:
  %longNumber.addr = alloca i64, align 8
  store i64 %longNumber, i64* %longNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longNumber.addr, metadata !452, metadata !DIExpression()), !dbg !453
  %0 = load i64, i64* %longNumber.addr, align 8, !dbg !454
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !455
  ret void, !dbg !456
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLongLongLine(i64 %longLongIntNumber) #0 !dbg !457 {
entry:
  %longLongIntNumber.addr = alloca i64, align 8
  store i64 %longLongIntNumber, i64* %longLongIntNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %longLongIntNumber.addr, metadata !463, metadata !DIExpression()), !dbg !464
  %0 = load i64, i64* %longLongIntNumber.addr, align 8, !dbg !465
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 %0), !dbg !466
  ret void, !dbg !467
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSizeTLine(i64 %sizeTNumber) #0 !dbg !468 {
entry:
  %sizeTNumber.addr = alloca i64, align 8
  store i64 %sizeTNumber, i64* %sizeTNumber.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sizeTNumber.addr, metadata !471, metadata !DIExpression()), !dbg !472
  %0 = load i64, i64* %sizeTNumber.addr, align 8, !dbg !473
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %0), !dbg !474
  ret void, !dbg !475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexCharLine(i8 signext %charHex) #0 !dbg !476 {
entry:
  %charHex.addr = alloca i8, align 1
  store i8 %charHex, i8* %charHex.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %charHex.addr, metadata !479, metadata !DIExpression()), !dbg !480
  %0 = load i8, i8* %charHex.addr, align 1, !dbg !481
  %conv = sext i8 %0 to i32, !dbg !481
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !482
  ret void, !dbg !483
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printWcharLine(i32 %wideChar) #0 !dbg !484 {
entry:
  %wideChar.addr = alloca i32, align 4
  %s = alloca [2 x i32], align 4
  store i32 %wideChar, i32* %wideChar.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wideChar.addr, metadata !487, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.declare(metadata [2 x i32]* %s, metadata !489, metadata !DIExpression()), !dbg !493
  %0 = load i32, i32* %wideChar.addr, align 4, !dbg !494
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !495
  store i32 %0, i32* %arrayidx, align 4, !dbg !496
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 1, !dbg !497
  store i32 0, i32* %arrayidx1, align 4, !dbg !498
  %arraydecay = getelementptr inbounds [2 x i32], [2 x i32]* %s, i64 0, i64 0, !dbg !499
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %arraydecay), !dbg !500
  ret void, !dbg !501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printUnsignedLine(i32 %unsignedNumber) #0 !dbg !502 {
entry:
  %unsignedNumber.addr = alloca i32, align 4
  store i32 %unsignedNumber, i32* %unsignedNumber.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %unsignedNumber.addr, metadata !505, metadata !DIExpression()), !dbg !506
  %0 = load i32, i32* %unsignedNumber.addr, align 4, !dbg !507
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11.18, i64 0, i64 0), i32 %0), !dbg !508
  ret void, !dbg !509
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printHexUnsignedCharLine(i8 zeroext %unsignedCharacter) #0 !dbg !510 {
entry:
  %unsignedCharacter.addr = alloca i8, align 1
  store i8 %unsignedCharacter, i8* %unsignedCharacter.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %unsignedCharacter.addr, metadata !513, metadata !DIExpression()), !dbg !514
  %0 = load i8, i8* %unsignedCharacter.addr, align 1, !dbg !515
  %conv = zext i8 %0 to i32, !dbg !515
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %conv), !dbg !516
  ret void, !dbg !517
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDoubleLine(double %doubleNumber) #0 !dbg !518 {
entry:
  %doubleNumber.addr = alloca double, align 8
  store double %doubleNumber, double* %doubleNumber.addr, align 8
  call void @llvm.dbg.declare(metadata double* %doubleNumber.addr, metadata !522, metadata !DIExpression()), !dbg !523
  %0 = load double, double* %doubleNumber.addr, align 8, !dbg !524
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), double %0), !dbg !525
  ret void, !dbg !526
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStructLine(%struct._twoIntsStruct* %structTwoIntsStruct) #0 !dbg !527 {
entry:
  %structTwoIntsStruct.addr = alloca %struct._twoIntsStruct*, align 8
  store %struct._twoIntsStruct* %structTwoIntsStruct, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8
  call void @llvm.dbg.declare(metadata %struct._twoIntsStruct** %structTwoIntsStruct.addr, metadata !537, metadata !DIExpression()), !dbg !538
  %0 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !539
  %intOne = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %0, i32 0, i32 0, !dbg !540
  %1 = load i32, i32* %intOne, align 4, !dbg !540
  %2 = load %struct._twoIntsStruct*, %struct._twoIntsStruct** %structTwoIntsStruct.addr, align 8, !dbg !541
  %intTwo = getelementptr inbounds %struct._twoIntsStruct, %struct._twoIntsStruct* %2, i32 0, i32 1, !dbg !542
  %3 = load i32, i32* %intTwo, align 4, !dbg !542
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 %1, i32 %3), !dbg !543
  ret void, !dbg !544
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printBytesLine(i8* %bytes, i64 %numBytes) #0 !dbg !545 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !549, metadata !DIExpression()), !dbg !550
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !551, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.declare(metadata i64* %i, metadata !553, metadata !DIExpression()), !dbg !554
  store i64 0, i64* %i, align 8, !dbg !555
  br label %for.cond, !dbg !557

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8, !dbg !558
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !560
  %cmp = icmp ult i64 %0, %1, !dbg !561
  br i1 %cmp, label %for.body, label %for.end, !dbg !562

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %bytes.addr, align 8, !dbg !563
  %3 = load i64, i64* %i, align 8, !dbg !565
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !563
  %4 = load i8, i8* %arrayidx, align 1, !dbg !563
  %conv = zext i8 %4 to i32, !dbg !563
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32 %conv), !dbg !566
  br label %for.inc, !dbg !567

for.inc:                                          ; preds = %for.body
  %5 = load i64, i64* %i, align 8, !dbg !568
  %inc = add i64 %5, 1, !dbg !568
  store i64 %inc, i64* %i, align 8, !dbg !568
  br label %for.cond, !dbg !569, !llvm.loop !570

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i64 0, i64 0)), !dbg !572
  ret void, !dbg !573
}

declare dso_local i32 @puts(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexChars(i8* %bytes, i64 %numBytes, i8* %hex) #0 !dbg !574 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i8*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !577, metadata !DIExpression()), !dbg !578
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !579, metadata !DIExpression()), !dbg !580
  store i8* %hex, i8** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %hex.addr, metadata !581, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !583, metadata !DIExpression()), !dbg !584
  store i64 0, i64* %numWritten, align 8, !dbg !584
  br label %while.cond, !dbg !585

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !586
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !587
  %cmp = icmp ult i64 %0, %1, !dbg !588
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !589

land.lhs.true:                                    ; preds = %while.cond
  %call = call i16** @__ctype_b_loc() #9, !dbg !590
  %2 = load i16*, i16** %call, align 8, !dbg !590
  %3 = load i8*, i8** %hex.addr, align 8, !dbg !590
  %4 = load i64, i64* %numWritten, align 8, !dbg !590
  %mul = mul i64 2, %4, !dbg !590
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %mul, !dbg !590
  %5 = load i8, i8* %arrayidx, align 1, !dbg !590
  %conv = sext i8 %5 to i32, !dbg !590
  %idxprom = sext i32 %conv to i64, !dbg !590
  %arrayidx1 = getelementptr inbounds i16, i16* %2, i64 %idxprom, !dbg !590
  %6 = load i16, i16* %arrayidx1, align 2, !dbg !590
  %conv2 = zext i16 %6 to i32, !dbg !590
  %and = and i32 %conv2, 4096, !dbg !590
  %tobool = icmp ne i32 %and, 0, !dbg !590
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !591

land.rhs:                                         ; preds = %land.lhs.true
  %call3 = call i16** @__ctype_b_loc() #9, !dbg !592
  %7 = load i16*, i16** %call3, align 8, !dbg !592
  %8 = load i8*, i8** %hex.addr, align 8, !dbg !592
  %9 = load i64, i64* %numWritten, align 8, !dbg !592
  %mul4 = mul i64 2, %9, !dbg !592
  %add = add i64 %mul4, 1, !dbg !592
  %arrayidx5 = getelementptr inbounds i8, i8* %8, i64 %add, !dbg !592
  %10 = load i8, i8* %arrayidx5, align 1, !dbg !592
  %conv6 = sext i8 %10 to i32, !dbg !592
  %idxprom7 = sext i32 %conv6 to i64, !dbg !592
  %arrayidx8 = getelementptr inbounds i16, i16* %7, i64 %idxprom7, !dbg !592
  %11 = load i16, i16* %arrayidx8, align 2, !dbg !592
  %conv9 = zext i16 %11 to i32, !dbg !592
  %and10 = and i32 %conv9, 4096, !dbg !592
  %tobool11 = icmp ne i32 %and10, 0, !dbg !591
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool11, %land.rhs ], !dbg !593
  br i1 %12, label %while.body, label %while.end, !dbg !585

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !594, metadata !DIExpression()), !dbg !596
  %13 = load i8*, i8** %hex.addr, align 8, !dbg !597
  %14 = load i64, i64* %numWritten, align 8, !dbg !598
  %mul12 = mul i64 2, %14, !dbg !599
  %arrayidx13 = getelementptr inbounds i8, i8* %13, i64 %mul12, !dbg !597
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %arrayidx13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i32* %byte) #8, !dbg !600
  %15 = load i32, i32* %byte, align 4, !dbg !601
  %conv15 = trunc i32 %15 to i8, !dbg !602
  %16 = load i8*, i8** %bytes.addr, align 8, !dbg !603
  %17 = load i64, i64* %numWritten, align 8, !dbg !604
  %arrayidx16 = getelementptr inbounds i8, i8* %16, i64 %17, !dbg !603
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !605
  %18 = load i64, i64* %numWritten, align 8, !dbg !606
  %inc = add i64 %18, 1, !dbg !606
  store i64 %inc, i64* %numWritten, align 8, !dbg !606
  br label %while.cond, !dbg !585, !llvm.loop !607

while.end:                                        ; preds = %land.end
  %19 = load i64, i64* %numWritten, align 8, !dbg !609
  ret i64 %19, !dbg !610
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @decodeHexWChars(i8* %bytes, i64 %numBytes, i32* %hex) #0 !dbg !611 {
entry:
  %bytes.addr = alloca i8*, align 8
  %numBytes.addr = alloca i64, align 8
  %hex.addr = alloca i32*, align 8
  %numWritten = alloca i64, align 8
  %byte = alloca i32, align 4
  store i8* %bytes, i8** %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bytes.addr, metadata !614, metadata !DIExpression()), !dbg !615
  store i64 %numBytes, i64* %numBytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %numBytes.addr, metadata !616, metadata !DIExpression()), !dbg !617
  store i32* %hex, i32** %hex.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %hex.addr, metadata !618, metadata !DIExpression()), !dbg !619
  call void @llvm.dbg.declare(metadata i64* %numWritten, metadata !620, metadata !DIExpression()), !dbg !621
  store i64 0, i64* %numWritten, align 8, !dbg !621
  br label %while.cond, !dbg !622

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %numWritten, align 8, !dbg !623
  %1 = load i64, i64* %numBytes.addr, align 8, !dbg !624
  %cmp = icmp ult i64 %0, %1, !dbg !625
  br i1 %cmp, label %land.lhs.true, label %land.end, !dbg !626

land.lhs.true:                                    ; preds = %while.cond
  %2 = load i32*, i32** %hex.addr, align 8, !dbg !627
  %3 = load i64, i64* %numWritten, align 8, !dbg !628
  %mul = mul i64 2, %3, !dbg !629
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %mul, !dbg !627
  %4 = load i32, i32* %arrayidx, align 4, !dbg !627
  %call = call i32 @iswxdigit(i32 %4) #8, !dbg !630
  %tobool = icmp ne i32 %call, 0, !dbg !630
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !631

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load i32*, i32** %hex.addr, align 8, !dbg !632
  %6 = load i64, i64* %numWritten, align 8, !dbg !633
  %mul1 = mul i64 2, %6, !dbg !634
  %add = add i64 %mul1, 1, !dbg !635
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %add, !dbg !632
  %7 = load i32, i32* %arrayidx2, align 4, !dbg !632
  %call3 = call i32 @iswxdigit(i32 %7) #8, !dbg !636
  %tobool4 = icmp ne i32 %call3, 0, !dbg !631
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %tobool4, %land.rhs ], !dbg !637
  br i1 %8, label %while.body, label %while.end, !dbg !622

while.body:                                       ; preds = %land.end
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !638, metadata !DIExpression()), !dbg !640
  %9 = load i32*, i32** %hex.addr, align 8, !dbg !641
  %10 = load i64, i64* %numWritten, align 8, !dbg !642
  %mul5 = mul i64 2, %10, !dbg !643
  %arrayidx6 = getelementptr inbounds i32, i32* %9, i64 %mul5, !dbg !641
  %call7 = call i32 (i32*, i32*, ...) @__isoc99_swscanf(i32* %arrayidx6, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @.str.16, i64 0, i64 0), i32* %byte) #8, !dbg !644
  %11 = load i32, i32* %byte, align 4, !dbg !645
  %conv = trunc i32 %11 to i8, !dbg !646
  %12 = load i8*, i8** %bytes.addr, align 8, !dbg !647
  %13 = load i64, i64* %numWritten, align 8, !dbg !648
  %arrayidx8 = getelementptr inbounds i8, i8* %12, i64 %13, !dbg !647
  store i8 %conv, i8* %arrayidx8, align 1, !dbg !649
  %14 = load i64, i64* %numWritten, align 8, !dbg !650
  %inc = add i64 %14, 1, !dbg !650
  store i64 %inc, i64* %numWritten, align 8, !dbg !650
  br label %while.cond, !dbg !622, !llvm.loop !651

while.end:                                        ; preds = %land.end
  %15 = load i64, i64* %numWritten, align 8, !dbg !653
  ret i64 %15, !dbg !654
}

; Function Attrs: nounwind
declare dso_local i32 @iswxdigit(i32) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_swscanf(i32*, i32*, ...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrue() #0 !dbg !655 {
entry:
  ret i32 1, !dbg !658
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsFalse() #0 !dbg !659 {
entry:
  ret i32 0, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @globalReturnsTrueOrFalse() #0 !dbg !661 {
entry:
  %call = call i32 @rand() #8, !dbg !662
  %rem = srem i32 %call, 2, !dbg !663
  ret i32 %rem, !dbg !664
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good1() #0 !dbg !665 {
entry:
  ret void, !dbg !666
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good2() #0 !dbg !667 {
entry:
  ret void, !dbg !668
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good3() #0 !dbg !669 {
entry:
  ret void, !dbg !670
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good4() #0 !dbg !671 {
entry:
  ret void, !dbg !672
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good5() #0 !dbg !673 {
entry:
  ret void, !dbg !674
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good6() #0 !dbg !675 {
entry:
  ret void, !dbg !676
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good7() #0 !dbg !677 {
entry:
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good8() #0 !dbg !679 {
entry:
  ret void, !dbg !680
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @good9() #0 !dbg !681 {
entry:
  ret void, !dbg !682
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad1() #0 !dbg !683 {
entry:
  ret void, !dbg !684
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad2() #0 !dbg !685 {
entry:
  ret void, !dbg !686
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad3() #0 !dbg !687 {
entry:
  ret void, !dbg !688
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad4() #0 !dbg !689 {
entry:
  ret void, !dbg !690
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad5() #0 !dbg !691 {
entry:
  ret void, !dbg !692
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad6() #0 !dbg !693 {
entry:
  ret void, !dbg !694
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad7() #0 !dbg !695 {
entry:
  ret void, !dbg !696
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad8() #0 !dbg !697 {
entry:
  ret void, !dbg !698
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bad9() #0 !dbg !699 {
entry:
  ret void, !dbg !700
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

!llvm.dbg.cu = !{!44, !48, !2}
!llvm.ident = !{!50, !50, !50}
!llvm.module.flags = !{!51, !52, !53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "GLOBAL_CONST_TRUE", scope: !2, file: !3, line: 174, type: !23, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !26, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "io.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_112/source_code")
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
!45 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_66a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_112/source_code")
!46 = !{}
!47 = !{!22, !23}
!48 = distinct !DICompileUnit(language: DW_LANG_C99, file: !49, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !46, splitDebugInlining: false, nameTableKind: None)
!49 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_66b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_112/source_code")
!50 = !{!"clang version 12.0.0"}
!51 = !{i32 7, !"Dwarf Version", i32 4}
!52 = !{i32 2, !"Debug Info Version", i32 3}
!53 = !{i32 1, !"wchar_size", i32 4}
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_66_bad", scope: !45, file: !45, line: 37, type: !55, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !DILocalVariable(name: "data", scope: !54, file: !45, line: 39, type: !42)
!58 = !DILocation(line: 39, column: 12, scope: !54)
!59 = !DILocalVariable(name: "dataArray", scope: !54, file: !45, line: 40, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 320, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 5)
!63 = !DILocation(line: 40, column: 12, scope: !54)
!64 = !DILocalVariable(name: "dataBuffer", scope: !54, file: !45, line: 41, type: !65)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 800, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 100)
!68 = !DILocation(line: 41, column: 10, scope: !54)
!69 = !DILocation(line: 42, column: 12, scope: !54)
!70 = !DILocation(line: 42, column: 10, scope: !54)
!71 = !DILocalVariable(name: "dataLen", scope: !72, file: !45, line: 45, type: !73)
!72 = distinct !DILexicalBlock(scope: !54, file: !45, line: 43, column: 5)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DILocation(line: 45, column: 16, scope: !72)
!77 = !DILocation(line: 45, column: 33, scope: !72)
!78 = !DILocation(line: 45, column: 26, scope: !72)
!79 = !DILocalVariable(name: "pFile", scope: !72, file: !45, line: 46, type: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !82, line: 7, baseType: !83)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !84, line: 49, size: 1728, elements: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !101, !103, !104, !105, !109, !110, !112, !116, !119, !121, !124, !127, !128, !129, !130, !131}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !83, file: !84, line: 51, baseType: !23, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !83, file: !84, line: 54, baseType: !42, size: 64, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !83, file: !84, line: 55, baseType: !42, size: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !83, file: !84, line: 56, baseType: !42, size: 64, offset: 192)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !83, file: !84, line: 57, baseType: !42, size: 64, offset: 256)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !83, file: !84, line: 58, baseType: !42, size: 64, offset: 320)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !83, file: !84, line: 59, baseType: !42, size: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !83, file: !84, line: 60, baseType: !42, size: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !83, file: !84, line: 61, baseType: !42, size: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !83, file: !84, line: 64, baseType: !42, size: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !83, file: !84, line: 65, baseType: !42, size: 64, offset: 640)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !83, file: !84, line: 66, baseType: !42, size: 64, offset: 704)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !83, file: !84, line: 68, baseType: !99, size: 64, offset: 768)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !84, line: 36, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !83, file: !84, line: 70, baseType: !102, size: 64, offset: 832)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !83, file: !84, line: 72, baseType: !23, size: 32, offset: 896)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !83, file: !84, line: 73, baseType: !23, size: 32, offset: 928)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !83, file: !84, line: 74, baseType: !106, size: 64, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !107, line: 152, baseType: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!108 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !83, file: !84, line: 77, baseType: !24, size: 16, offset: 1024)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !83, file: !84, line: 78, baseType: !111, size: 8, offset: 1040)
!111 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !83, file: !84, line: 79, baseType: !113, size: 8, offset: 1048)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 1)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !83, file: !84, line: 81, baseType: !117, size: 64, offset: 1088)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !84, line: 43, baseType: null)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !83, file: !84, line: 89, baseType: !120, size: 64, offset: 1152)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !107, line: 153, baseType: !108)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !83, file: !84, line: 91, baseType: !122, size: 64, offset: 1216)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !84, line: 37, flags: DIFlagFwdDecl)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !83, file: !84, line: 92, baseType: !125, size: 64, offset: 1280)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !84, line: 38, flags: DIFlagFwdDecl)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !83, file: !84, line: 93, baseType: !102, size: 64, offset: 1344)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !83, file: !84, line: 94, baseType: !22, size: 64, offset: 1408)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !83, file: !84, line: 95, baseType: !73, size: 64, offset: 1472)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !83, file: !84, line: 96, baseType: !23, size: 32, offset: 1536)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !83, file: !84, line: 98, baseType: !132, size: 160, offset: 1568)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !43, size: 160, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 20)
!135 = !DILocation(line: 46, column: 16, scope: !72)
!136 = !DILocation(line: 48, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !72, file: !45, line: 48, column: 13)
!138 = !DILocation(line: 48, column: 16, scope: !137)
!139 = !DILocation(line: 48, column: 25, scope: !137)
!140 = !DILocation(line: 48, column: 13, scope: !72)
!141 = !DILocation(line: 50, column: 21, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !45, line: 49, column: 9)
!143 = !DILocation(line: 50, column: 19, scope: !142)
!144 = !DILocation(line: 51, column: 17, scope: !145)
!145 = distinct !DILexicalBlock(scope: !142, file: !45, line: 51, column: 17)
!146 = !DILocation(line: 51, column: 23, scope: !145)
!147 = !DILocation(line: 51, column: 17, scope: !142)
!148 = !DILocation(line: 54, column: 27, scope: !149)
!149 = distinct !DILexicalBlock(scope: !150, file: !45, line: 54, column: 21)
!150 = distinct !DILexicalBlock(scope: !145, file: !45, line: 52, column: 13)
!151 = !DILocation(line: 54, column: 32, scope: !149)
!152 = !DILocation(line: 54, column: 31, scope: !149)
!153 = !DILocation(line: 54, column: 51, scope: !149)
!154 = !DILocation(line: 54, column: 50, scope: !149)
!155 = !DILocation(line: 54, column: 41, scope: !149)
!156 = !DILocation(line: 54, column: 61, scope: !149)
!157 = !DILocation(line: 54, column: 21, scope: !149)
!158 = !DILocation(line: 54, column: 68, scope: !149)
!159 = !DILocation(line: 54, column: 21, scope: !150)
!160 = !DILocation(line: 56, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !149, file: !45, line: 55, column: 17)
!162 = !DILocation(line: 58, column: 21, scope: !161)
!163 = !DILocation(line: 58, column: 26, scope: !161)
!164 = !DILocation(line: 58, column: 35, scope: !161)
!165 = !DILocation(line: 59, column: 17, scope: !161)
!166 = !DILocation(line: 60, column: 24, scope: !150)
!167 = !DILocation(line: 60, column: 17, scope: !150)
!168 = !DILocation(line: 61, column: 13, scope: !150)
!169 = !DILocation(line: 62, column: 9, scope: !142)
!170 = !DILocation(line: 65, column: 20, scope: !54)
!171 = !DILocation(line: 65, column: 5, scope: !54)
!172 = !DILocation(line: 65, column: 18, scope: !54)
!173 = !DILocation(line: 66, column: 60, scope: !54)
!174 = !DILocation(line: 66, column: 5, scope: !54)
!175 = !DILocation(line: 67, column: 1, scope: !54)
!176 = distinct !DISubprogram(name: "goodG2B", scope: !45, file: !45, line: 75, type: !55, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!177 = !DILocalVariable(name: "data", scope: !176, file: !45, line: 77, type: !42)
!178 = !DILocation(line: 77, column: 12, scope: !176)
!179 = !DILocalVariable(name: "dataArray", scope: !176, file: !45, line: 78, type: !60)
!180 = !DILocation(line: 78, column: 12, scope: !176)
!181 = !DILocalVariable(name: "dataBuffer", scope: !176, file: !45, line: 79, type: !65)
!182 = !DILocation(line: 79, column: 10, scope: !176)
!183 = !DILocation(line: 80, column: 12, scope: !176)
!184 = !DILocation(line: 80, column: 10, scope: !176)
!185 = !DILocation(line: 82, column: 12, scope: !176)
!186 = !DILocation(line: 82, column: 5, scope: !176)
!187 = !DILocation(line: 83, column: 20, scope: !176)
!188 = !DILocation(line: 83, column: 5, scope: !176)
!189 = !DILocation(line: 83, column: 18, scope: !176)
!190 = !DILocation(line: 84, column: 64, scope: !176)
!191 = !DILocation(line: 84, column: 5, scope: !176)
!192 = !DILocation(line: 85, column: 1, scope: !176)
!193 = distinct !DISubprogram(name: "goodB2G", scope: !45, file: !45, line: 89, type: !55, scopeLine: 90, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!194 = !DILocalVariable(name: "data", scope: !193, file: !45, line: 91, type: !42)
!195 = !DILocation(line: 91, column: 12, scope: !193)
!196 = !DILocalVariable(name: "dataArray", scope: !193, file: !45, line: 92, type: !60)
!197 = !DILocation(line: 92, column: 12, scope: !193)
!198 = !DILocalVariable(name: "dataBuffer", scope: !193, file: !45, line: 93, type: !65)
!199 = !DILocation(line: 93, column: 10, scope: !193)
!200 = !DILocation(line: 94, column: 12, scope: !193)
!201 = !DILocation(line: 94, column: 10, scope: !193)
!202 = !DILocalVariable(name: "dataLen", scope: !203, file: !45, line: 97, type: !73)
!203 = distinct !DILexicalBlock(scope: !193, file: !45, line: 95, column: 5)
!204 = !DILocation(line: 97, column: 16, scope: !203)
!205 = !DILocation(line: 97, column: 33, scope: !203)
!206 = !DILocation(line: 97, column: 26, scope: !203)
!207 = !DILocalVariable(name: "pFile", scope: !203, file: !45, line: 98, type: !80)
!208 = !DILocation(line: 98, column: 16, scope: !203)
!209 = !DILocation(line: 100, column: 17, scope: !210)
!210 = distinct !DILexicalBlock(scope: !203, file: !45, line: 100, column: 13)
!211 = !DILocation(line: 100, column: 16, scope: !210)
!212 = !DILocation(line: 100, column: 25, scope: !210)
!213 = !DILocation(line: 100, column: 13, scope: !203)
!214 = !DILocation(line: 102, column: 21, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !45, line: 101, column: 9)
!216 = !DILocation(line: 102, column: 19, scope: !215)
!217 = !DILocation(line: 103, column: 17, scope: !218)
!218 = distinct !DILexicalBlock(scope: !215, file: !45, line: 103, column: 17)
!219 = !DILocation(line: 103, column: 23, scope: !218)
!220 = !DILocation(line: 103, column: 17, scope: !215)
!221 = !DILocation(line: 106, column: 27, scope: !222)
!222 = distinct !DILexicalBlock(scope: !223, file: !45, line: 106, column: 21)
!223 = distinct !DILexicalBlock(scope: !218, file: !45, line: 104, column: 13)
!224 = !DILocation(line: 106, column: 32, scope: !222)
!225 = !DILocation(line: 106, column: 31, scope: !222)
!226 = !DILocation(line: 106, column: 51, scope: !222)
!227 = !DILocation(line: 106, column: 50, scope: !222)
!228 = !DILocation(line: 106, column: 41, scope: !222)
!229 = !DILocation(line: 106, column: 61, scope: !222)
!230 = !DILocation(line: 106, column: 21, scope: !222)
!231 = !DILocation(line: 106, column: 68, scope: !222)
!232 = !DILocation(line: 106, column: 21, scope: !223)
!233 = !DILocation(line: 108, column: 21, scope: !234)
!234 = distinct !DILexicalBlock(scope: !222, file: !45, line: 107, column: 17)
!235 = !DILocation(line: 110, column: 21, scope: !234)
!236 = !DILocation(line: 110, column: 26, scope: !234)
!237 = !DILocation(line: 110, column: 35, scope: !234)
!238 = !DILocation(line: 111, column: 17, scope: !234)
!239 = !DILocation(line: 112, column: 24, scope: !223)
!240 = !DILocation(line: 112, column: 17, scope: !223)
!241 = !DILocation(line: 113, column: 13, scope: !223)
!242 = !DILocation(line: 114, column: 9, scope: !215)
!243 = !DILocation(line: 116, column: 20, scope: !193)
!244 = !DILocation(line: 116, column: 5, scope: !193)
!245 = !DILocation(line: 116, column: 18, scope: !193)
!246 = !DILocation(line: 117, column: 64, scope: !193)
!247 = !DILocation(line: 117, column: 5, scope: !193)
!248 = !DILocation(line: 118, column: 1, scope: !193)
!249 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_66_good", scope: !45, file: !45, line: 120, type: !55, scopeLine: 121, spFlags: DISPFlagDefinition, unit: !44, retainedNodes: !46)
!250 = !DILocation(line: 122, column: 5, scope: !249)
!251 = !DILocation(line: 123, column: 5, scope: !249)
!252 = !DILocation(line: 124, column: 1, scope: !249)
!253 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_66b_badSink", scope: !49, file: !49, line: 34, type: !254, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!254 = !DISubroutineType(types: !255)
!255 = !{null, !41}
!256 = !DILocalVariable(name: "dataArray", arg: 1, scope: !253, file: !49, line: 34, type: !41)
!257 = !DILocation(line: 34, column: 68, scope: !253)
!258 = !DILocalVariable(name: "data", scope: !253, file: !49, line: 37, type: !42)
!259 = !DILocation(line: 37, column: 12, scope: !253)
!260 = !DILocation(line: 37, column: 19, scope: !253)
!261 = !DILocalVariable(name: "i", scope: !262, file: !49, line: 39, type: !23)
!262 = distinct !DILexicalBlock(scope: !253, file: !49, line: 38, column: 5)
!263 = !DILocation(line: 39, column: 13, scope: !262)
!264 = !DILocalVariable(name: "n", scope: !262, file: !49, line: 39, type: !23)
!265 = !DILocation(line: 39, column: 16, scope: !262)
!266 = !DILocalVariable(name: "intVariable", scope: !262, file: !49, line: 39, type: !23)
!267 = !DILocation(line: 39, column: 19, scope: !262)
!268 = !DILocation(line: 40, column: 20, scope: !269)
!269 = distinct !DILexicalBlock(scope: !262, file: !49, line: 40, column: 13)
!270 = !DILocation(line: 40, column: 13, scope: !269)
!271 = !DILocation(line: 40, column: 36, scope: !269)
!272 = !DILocation(line: 40, column: 13, scope: !262)
!273 = !DILocation(line: 43, column: 25, scope: !274)
!274 = distinct !DILexicalBlock(scope: !269, file: !49, line: 41, column: 9)
!275 = !DILocation(line: 44, column: 20, scope: !276)
!276 = distinct !DILexicalBlock(scope: !274, file: !49, line: 44, column: 13)
!277 = !DILocation(line: 44, column: 18, scope: !276)
!278 = !DILocation(line: 44, column: 25, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !49, line: 44, column: 13)
!280 = !DILocation(line: 44, column: 29, scope: !279)
!281 = !DILocation(line: 44, column: 27, scope: !279)
!282 = !DILocation(line: 44, column: 13, scope: !276)
!283 = !DILocation(line: 47, column: 28, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !49, line: 45, column: 13)
!285 = !DILocation(line: 48, column: 13, scope: !284)
!286 = !DILocation(line: 44, column: 33, scope: !279)
!287 = !DILocation(line: 44, column: 13, scope: !279)
!288 = distinct !{!288, !282, !289, !290}
!289 = !DILocation(line: 48, column: 13, scope: !276)
!290 = !{!"llvm.loop.mustprogress"}
!291 = !DILocation(line: 49, column: 26, scope: !274)
!292 = !DILocation(line: 49, column: 13, scope: !274)
!293 = !DILocation(line: 50, column: 9, scope: !274)
!294 = !DILocation(line: 52, column: 1, scope: !253)
!295 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_66b_goodG2BSink", scope: !49, file: !49, line: 59, type: !254, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!296 = !DILocalVariable(name: "dataArray", arg: 1, scope: !295, file: !49, line: 59, type: !41)
!297 = !DILocation(line: 59, column: 72, scope: !295)
!298 = !DILocalVariable(name: "data", scope: !295, file: !49, line: 61, type: !42)
!299 = !DILocation(line: 61, column: 12, scope: !295)
!300 = !DILocation(line: 61, column: 19, scope: !295)
!301 = !DILocalVariable(name: "i", scope: !302, file: !49, line: 63, type: !23)
!302 = distinct !DILexicalBlock(scope: !295, file: !49, line: 62, column: 5)
!303 = !DILocation(line: 63, column: 13, scope: !302)
!304 = !DILocalVariable(name: "n", scope: !302, file: !49, line: 63, type: !23)
!305 = !DILocation(line: 63, column: 16, scope: !302)
!306 = !DILocalVariable(name: "intVariable", scope: !302, file: !49, line: 63, type: !23)
!307 = !DILocation(line: 63, column: 19, scope: !302)
!308 = !DILocation(line: 64, column: 20, scope: !309)
!309 = distinct !DILexicalBlock(scope: !302, file: !49, line: 64, column: 13)
!310 = !DILocation(line: 64, column: 13, scope: !309)
!311 = !DILocation(line: 64, column: 36, scope: !309)
!312 = !DILocation(line: 64, column: 13, scope: !302)
!313 = !DILocation(line: 67, column: 25, scope: !314)
!314 = distinct !DILexicalBlock(scope: !309, file: !49, line: 65, column: 9)
!315 = !DILocation(line: 68, column: 20, scope: !316)
!316 = distinct !DILexicalBlock(scope: !314, file: !49, line: 68, column: 13)
!317 = !DILocation(line: 68, column: 18, scope: !316)
!318 = !DILocation(line: 68, column: 25, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !49, line: 68, column: 13)
!320 = !DILocation(line: 68, column: 29, scope: !319)
!321 = !DILocation(line: 68, column: 27, scope: !319)
!322 = !DILocation(line: 68, column: 13, scope: !316)
!323 = !DILocation(line: 71, column: 28, scope: !324)
!324 = distinct !DILexicalBlock(scope: !319, file: !49, line: 69, column: 13)
!325 = !DILocation(line: 72, column: 13, scope: !324)
!326 = !DILocation(line: 68, column: 33, scope: !319)
!327 = !DILocation(line: 68, column: 13, scope: !319)
!328 = distinct !{!328, !322, !329, !290}
!329 = !DILocation(line: 72, column: 13, scope: !316)
!330 = !DILocation(line: 73, column: 26, scope: !314)
!331 = !DILocation(line: 73, column: 13, scope: !314)
!332 = !DILocation(line: 74, column: 9, scope: !314)
!333 = !DILocation(line: 76, column: 1, scope: !295)
!334 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_66b_goodB2GSink", scope: !49, file: !49, line: 79, type: !254, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !48, retainedNodes: !46)
!335 = !DILocalVariable(name: "dataArray", arg: 1, scope: !334, file: !49, line: 79, type: !41)
!336 = !DILocation(line: 79, column: 72, scope: !334)
!337 = !DILocalVariable(name: "data", scope: !334, file: !49, line: 81, type: !42)
!338 = !DILocation(line: 81, column: 12, scope: !334)
!339 = !DILocation(line: 81, column: 19, scope: !334)
!340 = !DILocalVariable(name: "i", scope: !341, file: !49, line: 83, type: !23)
!341 = distinct !DILexicalBlock(scope: !334, file: !49, line: 82, column: 5)
!342 = !DILocation(line: 83, column: 13, scope: !341)
!343 = !DILocalVariable(name: "n", scope: !341, file: !49, line: 83, type: !23)
!344 = !DILocation(line: 83, column: 16, scope: !341)
!345 = !DILocalVariable(name: "intVariable", scope: !341, file: !49, line: 83, type: !23)
!346 = !DILocation(line: 83, column: 19, scope: !341)
!347 = !DILocation(line: 84, column: 20, scope: !348)
!348 = distinct !DILexicalBlock(scope: !341, file: !49, line: 84, column: 13)
!349 = !DILocation(line: 84, column: 13, scope: !348)
!350 = !DILocation(line: 84, column: 36, scope: !348)
!351 = !DILocation(line: 84, column: 13, scope: !341)
!352 = !DILocation(line: 87, column: 17, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !49, line: 87, column: 17)
!354 = distinct !DILexicalBlock(scope: !348, file: !49, line: 85, column: 9)
!355 = !DILocation(line: 87, column: 19, scope: !353)
!356 = !DILocation(line: 87, column: 17, scope: !354)
!357 = !DILocation(line: 89, column: 29, scope: !358)
!358 = distinct !DILexicalBlock(scope: !353, file: !49, line: 88, column: 13)
!359 = !DILocation(line: 90, column: 24, scope: !360)
!360 = distinct !DILexicalBlock(scope: !358, file: !49, line: 90, column: 17)
!361 = !DILocation(line: 90, column: 22, scope: !360)
!362 = !DILocation(line: 90, column: 29, scope: !363)
!363 = distinct !DILexicalBlock(scope: !360, file: !49, line: 90, column: 17)
!364 = !DILocation(line: 90, column: 33, scope: !363)
!365 = !DILocation(line: 90, column: 31, scope: !363)
!366 = !DILocation(line: 90, column: 17, scope: !360)
!367 = !DILocation(line: 93, column: 32, scope: !368)
!368 = distinct !DILexicalBlock(scope: !363, file: !49, line: 91, column: 17)
!369 = !DILocation(line: 94, column: 17, scope: !368)
!370 = !DILocation(line: 90, column: 37, scope: !363)
!371 = !DILocation(line: 90, column: 17, scope: !363)
!372 = distinct !{!372, !366, !373, !290}
!373 = !DILocation(line: 94, column: 17, scope: !360)
!374 = !DILocation(line: 95, column: 30, scope: !358)
!375 = !DILocation(line: 95, column: 17, scope: !358)
!376 = !DILocation(line: 96, column: 13, scope: !358)
!377 = !DILocation(line: 97, column: 9, scope: !354)
!378 = !DILocation(line: 99, column: 1, scope: !334)
!379 = distinct !DISubprogram(name: "printLine", scope: !3, file: !3, line: 11, type: !380, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!380 = !DISubroutineType(types: !381)
!381 = !{null, !42}
!382 = !DILocalVariable(name: "line", arg: 1, scope: !379, file: !3, line: 11, type: !42)
!383 = !DILocation(line: 11, column: 25, scope: !379)
!384 = !DILocation(line: 13, column: 1, scope: !379)
!385 = !DILocation(line: 14, column: 8, scope: !386)
!386 = distinct !DILexicalBlock(scope: !379, file: !3, line: 14, column: 8)
!387 = !DILocation(line: 14, column: 13, scope: !386)
!388 = !DILocation(line: 14, column: 8, scope: !379)
!389 = !DILocation(line: 16, column: 24, scope: !390)
!390 = distinct !DILexicalBlock(scope: !386, file: !3, line: 15, column: 5)
!391 = !DILocation(line: 16, column: 9, scope: !390)
!392 = !DILocation(line: 17, column: 5, scope: !390)
!393 = !DILocation(line: 18, column: 5, scope: !379)
!394 = !DILocation(line: 19, column: 1, scope: !379)
!395 = distinct !DISubprogram(name: "printSinkLine", scope: !3, file: !3, line: 20, type: !380, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!396 = !DILocalVariable(name: "line", arg: 1, scope: !395, file: !3, line: 20, type: !42)
!397 = !DILocation(line: 20, column: 29, scope: !395)
!398 = !DILocation(line: 22, column: 8, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !3, line: 22, column: 8)
!400 = !DILocation(line: 22, column: 13, scope: !399)
!401 = !DILocation(line: 22, column: 8, scope: !395)
!402 = !DILocation(line: 24, column: 24, scope: !403)
!403 = distinct !DILexicalBlock(scope: !399, file: !3, line: 23, column: 5)
!404 = !DILocation(line: 24, column: 9, scope: !403)
!405 = !DILocation(line: 25, column: 5, scope: !403)
!406 = !DILocation(line: 26, column: 1, scope: !395)
!407 = distinct !DISubprogram(name: "printWLine", scope: !3, file: !3, line: 27, type: !408, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!408 = !DISubroutineType(types: !409)
!409 = !{null, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !74, line: 74, baseType: !23)
!412 = !DILocalVariable(name: "line", arg: 1, scope: !407, file: !3, line: 27, type: !410)
!413 = !DILocation(line: 27, column: 29, scope: !407)
!414 = !DILocation(line: 29, column: 8, scope: !415)
!415 = distinct !DILexicalBlock(scope: !407, file: !3, line: 29, column: 8)
!416 = !DILocation(line: 29, column: 13, scope: !415)
!417 = !DILocation(line: 29, column: 8, scope: !407)
!418 = !DILocation(line: 31, column: 27, scope: !419)
!419 = distinct !DILexicalBlock(scope: !415, file: !3, line: 30, column: 5)
!420 = !DILocation(line: 31, column: 9, scope: !419)
!421 = !DILocation(line: 32, column: 5, scope: !419)
!422 = !DILocation(line: 33, column: 1, scope: !407)
!423 = distinct !DISubprogram(name: "printIntLine", scope: !3, file: !3, line: 35, type: !424, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !23}
!426 = !DILocalVariable(name: "intNumber", arg: 1, scope: !423, file: !3, line: 35, type: !23)
!427 = !DILocation(line: 35, column: 24, scope: !423)
!428 = !DILocation(line: 37, column: 20, scope: !423)
!429 = !DILocation(line: 37, column: 5, scope: !423)
!430 = !DILocation(line: 38, column: 1, scope: !423)
!431 = distinct !DISubprogram(name: "printShortLine", scope: !3, file: !3, line: 40, type: !432, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!432 = !DISubroutineType(types: !433)
!433 = !{null, !434}
!434 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!435 = !DILocalVariable(name: "shortNumber", arg: 1, scope: !431, file: !3, line: 40, type: !434)
!436 = !DILocation(line: 40, column: 28, scope: !431)
!437 = !DILocation(line: 42, column: 21, scope: !431)
!438 = !DILocation(line: 42, column: 5, scope: !431)
!439 = !DILocation(line: 43, column: 1, scope: !431)
!440 = distinct !DISubprogram(name: "printFloatLine", scope: !3, file: !3, line: 45, type: !441, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !443}
!443 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!444 = !DILocalVariable(name: "floatNumber", arg: 1, scope: !440, file: !3, line: 45, type: !443)
!445 = !DILocation(line: 45, column: 28, scope: !440)
!446 = !DILocation(line: 47, column: 20, scope: !440)
!447 = !DILocation(line: 47, column: 5, scope: !440)
!448 = !DILocation(line: 48, column: 1, scope: !440)
!449 = distinct !DISubprogram(name: "printLongLine", scope: !3, file: !3, line: 50, type: !450, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !108}
!452 = !DILocalVariable(name: "longNumber", arg: 1, scope: !449, file: !3, line: 50, type: !108)
!453 = !DILocation(line: 50, column: 26, scope: !449)
!454 = !DILocation(line: 52, column: 21, scope: !449)
!455 = !DILocation(line: 52, column: 5, scope: !449)
!456 = !DILocation(line: 53, column: 1, scope: !449)
!457 = distinct !DISubprogram(name: "printLongLongLine", scope: !3, file: !3, line: 55, type: !458, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!458 = !DISubroutineType(types: !459)
!459 = !{null, !460}
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !461, line: 27, baseType: !462)
!461 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !107, line: 44, baseType: !108)
!463 = !DILocalVariable(name: "longLongIntNumber", arg: 1, scope: !457, file: !3, line: 55, type: !460)
!464 = !DILocation(line: 55, column: 33, scope: !457)
!465 = !DILocation(line: 57, column: 29, scope: !457)
!466 = !DILocation(line: 57, column: 5, scope: !457)
!467 = !DILocation(line: 58, column: 1, scope: !457)
!468 = distinct !DISubprogram(name: "printSizeTLine", scope: !3, file: !3, line: 60, type: !469, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !73}
!471 = !DILocalVariable(name: "sizeTNumber", arg: 1, scope: !468, file: !3, line: 60, type: !73)
!472 = !DILocation(line: 60, column: 29, scope: !468)
!473 = !DILocation(line: 62, column: 21, scope: !468)
!474 = !DILocation(line: 62, column: 5, scope: !468)
!475 = !DILocation(line: 63, column: 1, scope: !468)
!476 = distinct !DISubprogram(name: "printHexCharLine", scope: !3, file: !3, line: 65, type: !477, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!477 = !DISubroutineType(types: !478)
!478 = !{null, !43}
!479 = !DILocalVariable(name: "charHex", arg: 1, scope: !476, file: !3, line: 65, type: !43)
!480 = !DILocation(line: 65, column: 29, scope: !476)
!481 = !DILocation(line: 67, column: 22, scope: !476)
!482 = !DILocation(line: 67, column: 5, scope: !476)
!483 = !DILocation(line: 68, column: 1, scope: !476)
!484 = distinct !DISubprogram(name: "printWcharLine", scope: !3, file: !3, line: 70, type: !485, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !411}
!487 = !DILocalVariable(name: "wideChar", arg: 1, scope: !484, file: !3, line: 70, type: !411)
!488 = !DILocation(line: 70, column: 29, scope: !484)
!489 = !DILocalVariable(name: "s", scope: !484, file: !3, line: 74, type: !490)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 64, elements: !491)
!491 = !{!492}
!492 = !DISubrange(count: 2)
!493 = !DILocation(line: 74, column: 13, scope: !484)
!494 = !DILocation(line: 75, column: 16, scope: !484)
!495 = !DILocation(line: 75, column: 9, scope: !484)
!496 = !DILocation(line: 75, column: 14, scope: !484)
!497 = !DILocation(line: 76, column: 9, scope: !484)
!498 = !DILocation(line: 76, column: 14, scope: !484)
!499 = !DILocation(line: 77, column: 21, scope: !484)
!500 = !DILocation(line: 77, column: 5, scope: !484)
!501 = !DILocation(line: 78, column: 1, scope: !484)
!502 = distinct !DISubprogram(name: "printUnsignedLine", scope: !3, file: !3, line: 80, type: !503, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !7}
!505 = !DILocalVariable(name: "unsignedNumber", arg: 1, scope: !502, file: !3, line: 80, type: !7)
!506 = !DILocation(line: 80, column: 33, scope: !502)
!507 = !DILocation(line: 82, column: 20, scope: !502)
!508 = !DILocation(line: 82, column: 5, scope: !502)
!509 = !DILocation(line: 83, column: 1, scope: !502)
!510 = distinct !DISubprogram(name: "printHexUnsignedCharLine", scope: !3, file: !3, line: 85, type: !511, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !25}
!513 = !DILocalVariable(name: "unsignedCharacter", arg: 1, scope: !510, file: !3, line: 85, type: !25)
!514 = !DILocation(line: 85, column: 45, scope: !510)
!515 = !DILocation(line: 87, column: 22, scope: !510)
!516 = !DILocation(line: 87, column: 5, scope: !510)
!517 = !DILocation(line: 88, column: 1, scope: !510)
!518 = distinct !DISubprogram(name: "printDoubleLine", scope: !3, file: !3, line: 90, type: !519, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!519 = !DISubroutineType(types: !520)
!520 = !{null, !521}
!521 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!522 = !DILocalVariable(name: "doubleNumber", arg: 1, scope: !518, file: !3, line: 90, type: !521)
!523 = !DILocation(line: 90, column: 29, scope: !518)
!524 = !DILocation(line: 92, column: 20, scope: !518)
!525 = !DILocation(line: 92, column: 5, scope: !518)
!526 = !DILocation(line: 93, column: 1, scope: !518)
!527 = distinct !DISubprogram(name: "printStructLine", scope: !3, file: !3, line: 95, type: !528, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "twoIntsStruct", file: !532, line: 100, baseType: !533)
!532 = !DIFile(filename: "./std_testcase.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_112/source_code")
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_twoIntsStruct", file: !532, line: 96, size: 64, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "intOne", scope: !533, file: !532, line: 98, baseType: !23, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "intTwo", scope: !533, file: !532, line: 99, baseType: !23, size: 32, offset: 32)
!537 = !DILocalVariable(name: "structTwoIntsStruct", arg: 1, scope: !527, file: !3, line: 95, type: !530)
!538 = !DILocation(line: 95, column: 40, scope: !527)
!539 = !DILocation(line: 97, column: 26, scope: !527)
!540 = !DILocation(line: 97, column: 47, scope: !527)
!541 = !DILocation(line: 97, column: 55, scope: !527)
!542 = !DILocation(line: 97, column: 76, scope: !527)
!543 = !DILocation(line: 97, column: 5, scope: !527)
!544 = !DILocation(line: 98, column: 1, scope: !527)
!545 = distinct !DISubprogram(name: "printBytesLine", scope: !3, file: !3, line: 100, type: !546, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !548, !73}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!549 = !DILocalVariable(name: "bytes", arg: 1, scope: !545, file: !3, line: 100, type: !548)
!550 = !DILocation(line: 100, column: 38, scope: !545)
!551 = !DILocalVariable(name: "numBytes", arg: 2, scope: !545, file: !3, line: 100, type: !73)
!552 = !DILocation(line: 100, column: 52, scope: !545)
!553 = !DILocalVariable(name: "i", scope: !545, file: !3, line: 102, type: !73)
!554 = !DILocation(line: 102, column: 12, scope: !545)
!555 = !DILocation(line: 103, column: 12, scope: !556)
!556 = distinct !DILexicalBlock(scope: !545, file: !3, line: 103, column: 5)
!557 = !DILocation(line: 103, column: 10, scope: !556)
!558 = !DILocation(line: 103, column: 17, scope: !559)
!559 = distinct !DILexicalBlock(scope: !556, file: !3, line: 103, column: 5)
!560 = !DILocation(line: 103, column: 21, scope: !559)
!561 = !DILocation(line: 103, column: 19, scope: !559)
!562 = !DILocation(line: 103, column: 5, scope: !556)
!563 = !DILocation(line: 105, column: 24, scope: !564)
!564 = distinct !DILexicalBlock(scope: !559, file: !3, line: 104, column: 5)
!565 = !DILocation(line: 105, column: 30, scope: !564)
!566 = !DILocation(line: 105, column: 9, scope: !564)
!567 = !DILocation(line: 106, column: 5, scope: !564)
!568 = !DILocation(line: 103, column: 31, scope: !559)
!569 = !DILocation(line: 103, column: 5, scope: !559)
!570 = distinct !{!570, !562, !571, !290}
!571 = !DILocation(line: 106, column: 5, scope: !556)
!572 = !DILocation(line: 107, column: 5, scope: !545)
!573 = !DILocation(line: 108, column: 1, scope: !545)
!574 = distinct !DISubprogram(name: "decodeHexChars", scope: !3, file: !3, line: 113, type: !575, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!575 = !DISubroutineType(types: !576)
!576 = !{!73, !548, !73, !42}
!577 = !DILocalVariable(name: "bytes", arg: 1, scope: !574, file: !3, line: 113, type: !548)
!578 = !DILocation(line: 113, column: 39, scope: !574)
!579 = !DILocalVariable(name: "numBytes", arg: 2, scope: !574, file: !3, line: 113, type: !73)
!580 = !DILocation(line: 113, column: 53, scope: !574)
!581 = !DILocalVariable(name: "hex", arg: 3, scope: !574, file: !3, line: 113, type: !42)
!582 = !DILocation(line: 113, column: 71, scope: !574)
!583 = !DILocalVariable(name: "numWritten", scope: !574, file: !3, line: 115, type: !73)
!584 = !DILocation(line: 115, column: 12, scope: !574)
!585 = !DILocation(line: 121, column: 5, scope: !574)
!586 = !DILocation(line: 121, column: 12, scope: !574)
!587 = !DILocation(line: 121, column: 25, scope: !574)
!588 = !DILocation(line: 121, column: 23, scope: !574)
!589 = !DILocation(line: 121, column: 34, scope: !574)
!590 = !DILocation(line: 121, column: 37, scope: !574)
!591 = !DILocation(line: 121, column: 67, scope: !574)
!592 = !DILocation(line: 121, column: 70, scope: !574)
!593 = !DILocation(line: 0, scope: !574)
!594 = !DILocalVariable(name: "byte", scope: !595, file: !3, line: 123, type: !23)
!595 = distinct !DILexicalBlock(scope: !574, file: !3, line: 122, column: 5)
!596 = !DILocation(line: 123, column: 13, scope: !595)
!597 = !DILocation(line: 124, column: 17, scope: !595)
!598 = !DILocation(line: 124, column: 25, scope: !595)
!599 = !DILocation(line: 124, column: 23, scope: !595)
!600 = !DILocation(line: 124, column: 9, scope: !595)
!601 = !DILocation(line: 125, column: 45, scope: !595)
!602 = !DILocation(line: 125, column: 29, scope: !595)
!603 = !DILocation(line: 125, column: 9, scope: !595)
!604 = !DILocation(line: 125, column: 15, scope: !595)
!605 = !DILocation(line: 125, column: 27, scope: !595)
!606 = !DILocation(line: 126, column: 9, scope: !595)
!607 = distinct !{!607, !585, !608, !290}
!608 = !DILocation(line: 127, column: 5, scope: !574)
!609 = !DILocation(line: 129, column: 12, scope: !574)
!610 = !DILocation(line: 129, column: 5, scope: !574)
!611 = distinct !DISubprogram(name: "decodeHexWChars", scope: !3, file: !3, line: 135, type: !612, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!612 = !DISubroutineType(types: !613)
!613 = !{!73, !548, !73, !410}
!614 = !DILocalVariable(name: "bytes", arg: 1, scope: !611, file: !3, line: 135, type: !548)
!615 = !DILocation(line: 135, column: 41, scope: !611)
!616 = !DILocalVariable(name: "numBytes", arg: 2, scope: !611, file: !3, line: 135, type: !73)
!617 = !DILocation(line: 135, column: 55, scope: !611)
!618 = !DILocalVariable(name: "hex", arg: 3, scope: !611, file: !3, line: 135, type: !410)
!619 = !DILocation(line: 135, column: 76, scope: !611)
!620 = !DILocalVariable(name: "numWritten", scope: !611, file: !3, line: 137, type: !73)
!621 = !DILocation(line: 137, column: 12, scope: !611)
!622 = !DILocation(line: 143, column: 5, scope: !611)
!623 = !DILocation(line: 143, column: 12, scope: !611)
!624 = !DILocation(line: 143, column: 25, scope: !611)
!625 = !DILocation(line: 143, column: 23, scope: !611)
!626 = !DILocation(line: 143, column: 34, scope: !611)
!627 = !DILocation(line: 143, column: 47, scope: !611)
!628 = !DILocation(line: 143, column: 55, scope: !611)
!629 = !DILocation(line: 143, column: 53, scope: !611)
!630 = !DILocation(line: 143, column: 37, scope: !611)
!631 = !DILocation(line: 143, column: 68, scope: !611)
!632 = !DILocation(line: 143, column: 81, scope: !611)
!633 = !DILocation(line: 143, column: 89, scope: !611)
!634 = !DILocation(line: 143, column: 87, scope: !611)
!635 = !DILocation(line: 143, column: 100, scope: !611)
!636 = !DILocation(line: 143, column: 71, scope: !611)
!637 = !DILocation(line: 0, scope: !611)
!638 = !DILocalVariable(name: "byte", scope: !639, file: !3, line: 145, type: !23)
!639 = distinct !DILexicalBlock(scope: !611, file: !3, line: 144, column: 5)
!640 = !DILocation(line: 145, column: 13, scope: !639)
!641 = !DILocation(line: 146, column: 18, scope: !639)
!642 = !DILocation(line: 146, column: 26, scope: !639)
!643 = !DILocation(line: 146, column: 24, scope: !639)
!644 = !DILocation(line: 146, column: 9, scope: !639)
!645 = !DILocation(line: 147, column: 45, scope: !639)
!646 = !DILocation(line: 147, column: 29, scope: !639)
!647 = !DILocation(line: 147, column: 9, scope: !639)
!648 = !DILocation(line: 147, column: 15, scope: !639)
!649 = !DILocation(line: 147, column: 27, scope: !639)
!650 = !DILocation(line: 148, column: 9, scope: !639)
!651 = distinct !{!651, !622, !652, !290}
!652 = !DILocation(line: 149, column: 5, scope: !611)
!653 = !DILocation(line: 151, column: 12, scope: !611)
!654 = !DILocation(line: 151, column: 5, scope: !611)
!655 = distinct !DISubprogram(name: "globalReturnsTrue", scope: !3, file: !3, line: 156, type: !656, scopeLine: 157, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!656 = !DISubroutineType(types: !657)
!657 = !{!23}
!658 = !DILocation(line: 158, column: 5, scope: !655)
!659 = distinct !DISubprogram(name: "globalReturnsFalse", scope: !3, file: !3, line: 161, type: !656, scopeLine: 162, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!660 = !DILocation(line: 163, column: 5, scope: !659)
!661 = distinct !DISubprogram(name: "globalReturnsTrueOrFalse", scope: !3, file: !3, line: 166, type: !656, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!662 = !DILocation(line: 168, column: 13, scope: !661)
!663 = !DILocation(line: 168, column: 20, scope: !661)
!664 = !DILocation(line: 168, column: 5, scope: !661)
!665 = distinct !DISubprogram(name: "good1", scope: !3, file: !3, line: 187, type: !55, scopeLine: 187, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!666 = !DILocation(line: 187, column: 16, scope: !665)
!667 = distinct !DISubprogram(name: "good2", scope: !3, file: !3, line: 188, type: !55, scopeLine: 188, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!668 = !DILocation(line: 188, column: 16, scope: !667)
!669 = distinct !DISubprogram(name: "good3", scope: !3, file: !3, line: 189, type: !55, scopeLine: 189, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!670 = !DILocation(line: 189, column: 16, scope: !669)
!671 = distinct !DISubprogram(name: "good4", scope: !3, file: !3, line: 190, type: !55, scopeLine: 190, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!672 = !DILocation(line: 190, column: 16, scope: !671)
!673 = distinct !DISubprogram(name: "good5", scope: !3, file: !3, line: 191, type: !55, scopeLine: 191, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!674 = !DILocation(line: 191, column: 16, scope: !673)
!675 = distinct !DISubprogram(name: "good6", scope: !3, file: !3, line: 192, type: !55, scopeLine: 192, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!676 = !DILocation(line: 192, column: 16, scope: !675)
!677 = distinct !DISubprogram(name: "good7", scope: !3, file: !3, line: 193, type: !55, scopeLine: 193, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!678 = !DILocation(line: 193, column: 16, scope: !677)
!679 = distinct !DISubprogram(name: "good8", scope: !3, file: !3, line: 194, type: !55, scopeLine: 194, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!680 = !DILocation(line: 194, column: 16, scope: !679)
!681 = distinct !DISubprogram(name: "good9", scope: !3, file: !3, line: 195, type: !55, scopeLine: 195, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!682 = !DILocation(line: 195, column: 16, scope: !681)
!683 = distinct !DISubprogram(name: "bad1", scope: !3, file: !3, line: 198, type: !55, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!684 = !DILocation(line: 198, column: 15, scope: !683)
!685 = distinct !DISubprogram(name: "bad2", scope: !3, file: !3, line: 199, type: !55, scopeLine: 199, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!686 = !DILocation(line: 199, column: 15, scope: !685)
!687 = distinct !DISubprogram(name: "bad3", scope: !3, file: !3, line: 200, type: !55, scopeLine: 200, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!688 = !DILocation(line: 200, column: 15, scope: !687)
!689 = distinct !DISubprogram(name: "bad4", scope: !3, file: !3, line: 201, type: !55, scopeLine: 201, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!690 = !DILocation(line: 201, column: 15, scope: !689)
!691 = distinct !DISubprogram(name: "bad5", scope: !3, file: !3, line: 202, type: !55, scopeLine: 202, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!692 = !DILocation(line: 202, column: 15, scope: !691)
!693 = distinct !DISubprogram(name: "bad6", scope: !3, file: !3, line: 203, type: !55, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!694 = !DILocation(line: 203, column: 15, scope: !693)
!695 = distinct !DISubprogram(name: "bad7", scope: !3, file: !3, line: 204, type: !55, scopeLine: 204, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!696 = !DILocation(line: 204, column: 15, scope: !695)
!697 = distinct !DISubprogram(name: "bad8", scope: !3, file: !3, line: 205, type: !55, scopeLine: 205, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!698 = !DILocation(line: 205, column: 15, scope: !697)
!699 = distinct !DISubprogram(name: "bad9", scope: !3, file: !3, line: 206, type: !55, scopeLine: 206, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !46)
!700 = !DILocation(line: 206, column: 15, scope: !699)
