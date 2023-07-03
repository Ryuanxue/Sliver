; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_32.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_32.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_32_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %data13 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !17, metadata !DIExpression()), !dbg !19
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !19
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !20, metadata !DIExpression()), !dbg !21
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %data, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !29, metadata !DIExpression()), !dbg !31
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !32
  %2 = load i8*, i8** %1, align 8, !dbg !33
  store i8* %2, i8** %data1, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !34, metadata !DIExpression()), !dbg !39
  %3 = load i8*, i8** %data1, align 8, !dbg !40
  %call = call i64 @strlen(i8* %3) #6, !dbg !41
  store i64 %call, i64* %dataLen, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !42, metadata !DIExpression()), !dbg !99
  %4 = load i64, i64* %dataLen, align 8, !dbg !100
  %sub = sub i64 100, %4, !dbg !102
  %cmp = icmp ugt i64 %sub, 1, !dbg !103
  br i1 %cmp, label %if.then, label %if.end12, !dbg !104

if.then:                                          ; preds = %entry
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !105
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !107
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !108
  %cmp3 = icmp ne %struct._IO_FILE* %5, null, !dbg !110
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !111

if.then4:                                         ; preds = %if.then
  %6 = load i8*, i8** %data1, align 8, !dbg !112
  %7 = load i64, i64* %dataLen, align 8, !dbg !115
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !116
  %8 = load i64, i64* %dataLen, align 8, !dbg !117
  %sub5 = sub i64 100, %8, !dbg !118
  %conv = trunc i64 %sub5 to i32, !dbg !119
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !120
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %9), !dbg !121
  %cmp7 = icmp eq i8* %call6, null, !dbg !122
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !123

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !124
  %10 = load i8*, i8** %data1, align 8, !dbg !126
  %11 = load i64, i64* %dataLen, align 8, !dbg !127
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !126
  store i8 0, i8* %arrayidx, align 1, !dbg !128
  br label %if.end, !dbg !129

if.end:                                           ; preds = %if.then9, %if.then4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !130
  %call10 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !131
  br label %if.end11, !dbg !132

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !133

if.end12:                                         ; preds = %if.end11, %entry
  %13 = load i8*, i8** %data1, align 8, !dbg !134
  %14 = load i8**, i8*** %dataPtr1, align 8, !dbg !135
  store i8* %13, i8** %14, align 8, !dbg !136
  call void @llvm.dbg.declare(metadata i8** %data13, metadata !137, metadata !DIExpression()), !dbg !139
  %15 = load i8**, i8*** %dataPtr2, align 8, !dbg !140
  %16 = load i8*, i8** %15, align 8, !dbg !141
  store i8* %16, i8** %data13, align 8, !dbg !139
  call void @llvm.dbg.declare(metadata i32* %i, metadata !142, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i32* %n, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !147, metadata !DIExpression()), !dbg !148
  %17 = load i8*, i8** %data13, align 8, !dbg !149
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !151
  %cmp15 = icmp eq i32 %call14, 1, !dbg !152
  br i1 %cmp15, label %if.then17, label %if.end21, !dbg !153

if.then17:                                        ; preds = %if.end12
  store i32 0, i32* %intVariable, align 4, !dbg !154
  store i32 0, i32* %i, align 4, !dbg !156
  br label %for.cond, !dbg !158

for.cond:                                         ; preds = %for.inc, %if.then17
  %18 = load i32, i32* %i, align 4, !dbg !159
  %19 = load i32, i32* %n, align 4, !dbg !161
  %cmp18 = icmp slt i32 %18, %19, !dbg !162
  br i1 %cmp18, label %for.body, label %for.end, !dbg !163

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !164
  %inc = add nsw i32 %20, 1, !dbg !164
  store i32 %inc, i32* %intVariable, align 4, !dbg !164
  br label %for.inc, !dbg !166

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !167
  %inc20 = add nsw i32 %21, 1, !dbg !167
  store i32 %inc20, i32* %i, align 4, !dbg !167
  br label %for.cond, !dbg !168, !llvm.loop !169

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !172
  call void @printIntLine(i32 %22), !dbg !173
  br label %if.end21, !dbg !174

if.end21:                                         ; preds = %for.end, %if.end12
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

declare dso_local void @printLine(i8*) #4

declare dso_local i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !176 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %data2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !179, metadata !DIExpression()), !dbg !180
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !180
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !181, metadata !DIExpression()), !dbg !182
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !182
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !183, metadata !DIExpression()), !dbg !184
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !184
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !184
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !185
  store i8* %arraydecay, i8** %data, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !187, metadata !DIExpression()), !dbg !189
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !190
  %2 = load i8*, i8** %1, align 8, !dbg !191
  store i8* %2, i8** %data1, align 8, !dbg !189
  %3 = load i8*, i8** %data1, align 8, !dbg !192
  %call = call i8* @strcpy(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !193
  %4 = load i8*, i8** %data1, align 8, !dbg !194
  %5 = load i8**, i8*** %dataPtr1, align 8, !dbg !195
  store i8* %4, i8** %5, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata i8** %data2, metadata !197, metadata !DIExpression()), !dbg !199
  %6 = load i8**, i8*** %dataPtr2, align 8, !dbg !200
  %7 = load i8*, i8** %6, align 8, !dbg !201
  store i8* %7, i8** %data2, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata i32* %i, metadata !202, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata i32* %n, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !207, metadata !DIExpression()), !dbg !208
  %8 = load i8*, i8** %data2, align 8, !dbg !209
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !211
  %cmp = icmp eq i32 %call3, 1, !dbg !212
  br i1 %cmp, label %if.then, label %if.end, !dbg !213

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !214
  store i32 0, i32* %i, align 4, !dbg !216
  br label %for.cond, !dbg !218

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i32, i32* %i, align 4, !dbg !219
  %10 = load i32, i32* %n, align 4, !dbg !221
  %cmp4 = icmp slt i32 %9, %10, !dbg !222
  br i1 %cmp4, label %for.body, label %for.end, !dbg !223

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %intVariable, align 4, !dbg !224
  %inc = add nsw i32 %11, 1, !dbg !224
  store i32 %inc, i32* %intVariable, align 4, !dbg !224
  br label %for.inc, !dbg !226

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !227
  %inc5 = add nsw i32 %12, 1, !dbg !227
  store i32 %inc5, i32* %i, align 4, !dbg !227
  br label %for.cond, !dbg !228, !llvm.loop !229

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %intVariable, align 4, !dbg !231
  call void @printIntLine(i32 %13), !dbg !232
  br label %if.end, !dbg !233

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !234
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !235 {
entry:
  %data = alloca i8*, align 8
  %dataPtr1 = alloca i8**, align 8
  %dataPtr2 = alloca i8**, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %data13 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i8*** %dataPtr1, metadata !238, metadata !DIExpression()), !dbg !239
  store i8** %data, i8*** %dataPtr1, align 8, !dbg !239
  call void @llvm.dbg.declare(metadata i8*** %dataPtr2, metadata !240, metadata !DIExpression()), !dbg !241
  store i8** %data, i8*** %dataPtr2, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !242, metadata !DIExpression()), !dbg !243
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !243
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !243
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !244
  store i8* %arraydecay, i8** %data, align 8, !dbg !245
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !246, metadata !DIExpression()), !dbg !248
  %1 = load i8**, i8*** %dataPtr1, align 8, !dbg !249
  %2 = load i8*, i8** %1, align 8, !dbg !250
  store i8* %2, i8** %data1, align 8, !dbg !248
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !251, metadata !DIExpression()), !dbg !253
  %3 = load i8*, i8** %data1, align 8, !dbg !254
  %call = call i64 @strlen(i8* %3) #6, !dbg !255
  store i64 %call, i64* %dataLen, align 8, !dbg !253
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !256, metadata !DIExpression()), !dbg !257
  %4 = load i64, i64* %dataLen, align 8, !dbg !258
  %sub = sub i64 100, %4, !dbg !260
  %cmp = icmp ugt i64 %sub, 1, !dbg !261
  br i1 %cmp, label %if.then, label %if.end12, !dbg !262

if.then:                                          ; preds = %entry
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !263
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !265
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !266
  %cmp3 = icmp ne %struct._IO_FILE* %5, null, !dbg !268
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !269

if.then4:                                         ; preds = %if.then
  %6 = load i8*, i8** %data1, align 8, !dbg !270
  %7 = load i64, i64* %dataLen, align 8, !dbg !273
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %7, !dbg !274
  %8 = load i64, i64* %dataLen, align 8, !dbg !275
  %sub5 = sub i64 100, %8, !dbg !276
  %conv = trunc i64 %sub5 to i32, !dbg !277
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !278
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %9), !dbg !279
  %cmp7 = icmp eq i8* %call6, null, !dbg !280
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !281

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !282
  %10 = load i8*, i8** %data1, align 8, !dbg !284
  %11 = load i64, i64* %dataLen, align 8, !dbg !285
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %11, !dbg !284
  store i8 0, i8* %arrayidx, align 1, !dbg !286
  br label %if.end, !dbg !287

if.end:                                           ; preds = %if.then9, %if.then4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !288
  %call10 = call i32 @fclose(%struct._IO_FILE* %12), !dbg !289
  br label %if.end11, !dbg !290

if.end11:                                         ; preds = %if.end, %if.then
  br label %if.end12, !dbg !291

if.end12:                                         ; preds = %if.end11, %entry
  %13 = load i8*, i8** %data1, align 8, !dbg !292
  %14 = load i8**, i8*** %dataPtr1, align 8, !dbg !293
  store i8* %13, i8** %14, align 8, !dbg !294
  call void @llvm.dbg.declare(metadata i8** %data13, metadata !295, metadata !DIExpression()), !dbg !297
  %15 = load i8**, i8*** %dataPtr2, align 8, !dbg !298
  %16 = load i8*, i8** %15, align 8, !dbg !299
  store i8* %16, i8** %data13, align 8, !dbg !297
  call void @llvm.dbg.declare(metadata i32* %i, metadata !300, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata i32* %n, metadata !303, metadata !DIExpression()), !dbg !304
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !305, metadata !DIExpression()), !dbg !306
  %17 = load i8*, i8** %data13, align 8, !dbg !307
  %call14 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !309
  %cmp15 = icmp eq i32 %call14, 1, !dbg !310
  br i1 %cmp15, label %if.then17, label %if.end25, !dbg !311

if.then17:                                        ; preds = %if.end12
  %18 = load i32, i32* %n, align 4, !dbg !312
  %cmp18 = icmp slt i32 %18, 10000, !dbg !315
  br i1 %cmp18, label %if.then20, label %if.end24, !dbg !316

if.then20:                                        ; preds = %if.then17
  store i32 0, i32* %intVariable, align 4, !dbg !317
  store i32 0, i32* %i, align 4, !dbg !319
  br label %for.cond, !dbg !321

for.cond:                                         ; preds = %for.inc, %if.then20
  %19 = load i32, i32* %i, align 4, !dbg !322
  %20 = load i32, i32* %n, align 4, !dbg !324
  %cmp21 = icmp slt i32 %19, %20, !dbg !325
  br i1 %cmp21, label %for.body, label %for.end, !dbg !326

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !327
  %inc = add nsw i32 %21, 1, !dbg !327
  store i32 %inc, i32* %intVariable, align 4, !dbg !327
  br label %for.inc, !dbg !329

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !330
  %inc23 = add nsw i32 %22, 1, !dbg !330
  store i32 %inc23, i32* %i, align 4, !dbg !330
  br label %for.cond, !dbg !331, !llvm.loop !332

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %intVariable, align 4, !dbg !334
  call void @printIntLine(i32 %23), !dbg !335
  br label %if.end24, !dbg !336

if.end24:                                         ; preds = %for.end, %if.then17
  br label %if.end25, !dbg !337

if.end25:                                         ; preds = %if.end24, %if.end12
  ret void, !dbg !338
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_32_good() #0 !dbg !339 {
entry:
  call void @goodG2B(), !dbg !340
  call void @goodB2G(), !dbg !341
  ret void, !dbg !342
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_32.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_095/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_32_bad", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 37, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 37, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataPtr1", scope: !10, file: !1, line: 38, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!19 = !DILocation(line: 38, column: 13, scope: !10)
!20 = !DILocalVariable(name: "dataPtr2", scope: !10, file: !1, line: 39, type: !18)
!21 = !DILocation(line: 39, column: 13, scope: !10)
!22 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 40, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 40, column: 10, scope: !10)
!27 = !DILocation(line: 41, column: 12, scope: !10)
!28 = !DILocation(line: 41, column: 10, scope: !10)
!29 = !DILocalVariable(name: "data", scope: !30, file: !1, line: 43, type: !14)
!30 = distinct !DILexicalBlock(scope: !10, file: !1, line: 42, column: 5)
!31 = !DILocation(line: 43, column: 16, scope: !30)
!32 = !DILocation(line: 43, column: 24, scope: !30)
!33 = !DILocation(line: 43, column: 23, scope: !30)
!34 = !DILocalVariable(name: "dataLen", scope: !35, file: !1, line: 46, type: !36)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 44, column: 9)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 46, column: 20, scope: !35)
!40 = !DILocation(line: 46, column: 37, scope: !35)
!41 = !DILocation(line: 46, column: 30, scope: !35)
!42 = !DILocalVariable(name: "pFile", scope: !35, file: !1, line: 47, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !45, line: 7, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !64, !66, !67, !68, !72, !74, !76, !80, !83, !85, !88, !91, !92, !93, !94, !95}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !46, file: !47, line: 51, baseType: !5, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !46, file: !47, line: 54, baseType: !14, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !46, file: !47, line: 55, baseType: !14, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !46, file: !47, line: 56, baseType: !14, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !46, file: !47, line: 57, baseType: !14, size: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !46, file: !47, line: 58, baseType: !14, size: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !46, file: !47, line: 59, baseType: !14, size: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !46, file: !47, line: 60, baseType: !14, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !46, file: !47, line: 61, baseType: !14, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !46, file: !47, line: 64, baseType: !14, size: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !46, file: !47, line: 65, baseType: !14, size: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !46, file: !47, line: 66, baseType: !14, size: 64, offset: 704)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !46, file: !47, line: 68, baseType: !62, size: 64, offset: 768)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !47, line: 36, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !46, file: !47, line: 70, baseType: !65, size: 64, offset: 832)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !46, file: !47, line: 72, baseType: !5, size: 32, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !46, file: !47, line: 73, baseType: !5, size: 32, offset: 928)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !46, file: !47, line: 74, baseType: !69, size: 64, offset: 960)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !70, line: 152, baseType: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!71 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !46, file: !47, line: 77, baseType: !73, size: 16, offset: 1024)
!73 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !46, file: !47, line: 78, baseType: !75, size: 8, offset: 1040)
!75 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !46, file: !47, line: 79, baseType: !77, size: 8, offset: 1048)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !46, file: !47, line: 81, baseType: !81, size: 64, offset: 1088)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !47, line: 43, baseType: null)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !46, file: !47, line: 89, baseType: !84, size: 64, offset: 1152)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !70, line: 153, baseType: !71)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !46, file: !47, line: 91, baseType: !86, size: 64, offset: 1216)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !47, line: 37, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !46, file: !47, line: 92, baseType: !89, size: 64, offset: 1280)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !47, line: 38, flags: DIFlagFwdDecl)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !46, file: !47, line: 93, baseType: !65, size: 64, offset: 1344)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !46, file: !47, line: 94, baseType: !4, size: 64, offset: 1408)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !46, file: !47, line: 95, baseType: !36, size: 64, offset: 1472)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !46, file: !47, line: 96, baseType: !5, size: 32, offset: 1536)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !46, file: !47, line: 98, baseType: !96, size: 160, offset: 1568)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 20)
!99 = !DILocation(line: 47, column: 20, scope: !35)
!100 = !DILocation(line: 49, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !35, file: !1, line: 49, column: 17)
!102 = !DILocation(line: 49, column: 20, scope: !101)
!103 = !DILocation(line: 49, column: 29, scope: !101)
!104 = !DILocation(line: 49, column: 17, scope: !35)
!105 = !DILocation(line: 51, column: 25, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 50, column: 13)
!107 = !DILocation(line: 51, column: 23, scope: !106)
!108 = !DILocation(line: 52, column: 21, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 52, column: 21)
!110 = !DILocation(line: 52, column: 27, scope: !109)
!111 = !DILocation(line: 52, column: 21, scope: !106)
!112 = !DILocation(line: 55, column: 31, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !1, line: 55, column: 25)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 53, column: 17)
!115 = !DILocation(line: 55, column: 36, scope: !113)
!116 = !DILocation(line: 55, column: 35, scope: !113)
!117 = !DILocation(line: 55, column: 55, scope: !113)
!118 = !DILocation(line: 55, column: 54, scope: !113)
!119 = !DILocation(line: 55, column: 45, scope: !113)
!120 = !DILocation(line: 55, column: 65, scope: !113)
!121 = !DILocation(line: 55, column: 25, scope: !113)
!122 = !DILocation(line: 55, column: 72, scope: !113)
!123 = !DILocation(line: 55, column: 25, scope: !114)
!124 = !DILocation(line: 57, column: 25, scope: !125)
!125 = distinct !DILexicalBlock(scope: !113, file: !1, line: 56, column: 21)
!126 = !DILocation(line: 59, column: 25, scope: !125)
!127 = !DILocation(line: 59, column: 30, scope: !125)
!128 = !DILocation(line: 59, column: 39, scope: !125)
!129 = !DILocation(line: 60, column: 21, scope: !125)
!130 = !DILocation(line: 61, column: 28, scope: !114)
!131 = !DILocation(line: 61, column: 21, scope: !114)
!132 = !DILocation(line: 62, column: 17, scope: !114)
!133 = !DILocation(line: 63, column: 13, scope: !106)
!134 = !DILocation(line: 65, column: 21, scope: !30)
!135 = !DILocation(line: 65, column: 10, scope: !30)
!136 = !DILocation(line: 65, column: 19, scope: !30)
!137 = !DILocalVariable(name: "data", scope: !138, file: !1, line: 68, type: !14)
!138 = distinct !DILexicalBlock(scope: !10, file: !1, line: 67, column: 5)
!139 = !DILocation(line: 68, column: 16, scope: !138)
!140 = !DILocation(line: 68, column: 24, scope: !138)
!141 = !DILocation(line: 68, column: 23, scope: !138)
!142 = !DILocalVariable(name: "i", scope: !143, file: !1, line: 70, type: !5)
!143 = distinct !DILexicalBlock(scope: !138, file: !1, line: 69, column: 9)
!144 = !DILocation(line: 70, column: 17, scope: !143)
!145 = !DILocalVariable(name: "n", scope: !143, file: !1, line: 70, type: !5)
!146 = !DILocation(line: 70, column: 20, scope: !143)
!147 = !DILocalVariable(name: "intVariable", scope: !143, file: !1, line: 70, type: !5)
!148 = !DILocation(line: 70, column: 23, scope: !143)
!149 = !DILocation(line: 71, column: 24, scope: !150)
!150 = distinct !DILexicalBlock(scope: !143, file: !1, line: 71, column: 17)
!151 = !DILocation(line: 71, column: 17, scope: !150)
!152 = !DILocation(line: 71, column: 40, scope: !150)
!153 = !DILocation(line: 71, column: 17, scope: !143)
!154 = !DILocation(line: 74, column: 29, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 72, column: 13)
!156 = !DILocation(line: 75, column: 24, scope: !157)
!157 = distinct !DILexicalBlock(scope: !155, file: !1, line: 75, column: 17)
!158 = !DILocation(line: 75, column: 22, scope: !157)
!159 = !DILocation(line: 75, column: 29, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !1, line: 75, column: 17)
!161 = !DILocation(line: 75, column: 33, scope: !160)
!162 = !DILocation(line: 75, column: 31, scope: !160)
!163 = !DILocation(line: 75, column: 17, scope: !157)
!164 = !DILocation(line: 78, column: 32, scope: !165)
!165 = distinct !DILexicalBlock(scope: !160, file: !1, line: 76, column: 17)
!166 = !DILocation(line: 79, column: 17, scope: !165)
!167 = !DILocation(line: 75, column: 37, scope: !160)
!168 = !DILocation(line: 75, column: 17, scope: !160)
!169 = distinct !{!169, !163, !170, !171}
!170 = !DILocation(line: 79, column: 17, scope: !157)
!171 = !{!"llvm.loop.mustprogress"}
!172 = !DILocation(line: 80, column: 30, scope: !155)
!173 = !DILocation(line: 80, column: 17, scope: !155)
!174 = !DILocation(line: 81, column: 13, scope: !155)
!175 = !DILocation(line: 84, column: 1, scope: !10)
!176 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 91, type: !11, scopeLine: 92, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!177 = !DILocalVariable(name: "data", scope: !176, file: !1, line: 93, type: !14)
!178 = !DILocation(line: 93, column: 12, scope: !176)
!179 = !DILocalVariable(name: "dataPtr1", scope: !176, file: !1, line: 94, type: !18)
!180 = !DILocation(line: 94, column: 13, scope: !176)
!181 = !DILocalVariable(name: "dataPtr2", scope: !176, file: !1, line: 95, type: !18)
!182 = !DILocation(line: 95, column: 13, scope: !176)
!183 = !DILocalVariable(name: "dataBuffer", scope: !176, file: !1, line: 96, type: !23)
!184 = !DILocation(line: 96, column: 10, scope: !176)
!185 = !DILocation(line: 97, column: 12, scope: !176)
!186 = !DILocation(line: 97, column: 10, scope: !176)
!187 = !DILocalVariable(name: "data", scope: !188, file: !1, line: 99, type: !14)
!188 = distinct !DILexicalBlock(scope: !176, file: !1, line: 98, column: 5)
!189 = !DILocation(line: 99, column: 16, scope: !188)
!190 = !DILocation(line: 99, column: 24, scope: !188)
!191 = !DILocation(line: 99, column: 23, scope: !188)
!192 = !DILocation(line: 101, column: 16, scope: !188)
!193 = !DILocation(line: 101, column: 9, scope: !188)
!194 = !DILocation(line: 102, column: 21, scope: !188)
!195 = !DILocation(line: 102, column: 10, scope: !188)
!196 = !DILocation(line: 102, column: 19, scope: !188)
!197 = !DILocalVariable(name: "data", scope: !198, file: !1, line: 105, type: !14)
!198 = distinct !DILexicalBlock(scope: !176, file: !1, line: 104, column: 5)
!199 = !DILocation(line: 105, column: 16, scope: !198)
!200 = !DILocation(line: 105, column: 24, scope: !198)
!201 = !DILocation(line: 105, column: 23, scope: !198)
!202 = !DILocalVariable(name: "i", scope: !203, file: !1, line: 107, type: !5)
!203 = distinct !DILexicalBlock(scope: !198, file: !1, line: 106, column: 9)
!204 = !DILocation(line: 107, column: 17, scope: !203)
!205 = !DILocalVariable(name: "n", scope: !203, file: !1, line: 107, type: !5)
!206 = !DILocation(line: 107, column: 20, scope: !203)
!207 = !DILocalVariable(name: "intVariable", scope: !203, file: !1, line: 107, type: !5)
!208 = !DILocation(line: 107, column: 23, scope: !203)
!209 = !DILocation(line: 108, column: 24, scope: !210)
!210 = distinct !DILexicalBlock(scope: !203, file: !1, line: 108, column: 17)
!211 = !DILocation(line: 108, column: 17, scope: !210)
!212 = !DILocation(line: 108, column: 40, scope: !210)
!213 = !DILocation(line: 108, column: 17, scope: !203)
!214 = !DILocation(line: 111, column: 29, scope: !215)
!215 = distinct !DILexicalBlock(scope: !210, file: !1, line: 109, column: 13)
!216 = !DILocation(line: 112, column: 24, scope: !217)
!217 = distinct !DILexicalBlock(scope: !215, file: !1, line: 112, column: 17)
!218 = !DILocation(line: 112, column: 22, scope: !217)
!219 = !DILocation(line: 112, column: 29, scope: !220)
!220 = distinct !DILexicalBlock(scope: !217, file: !1, line: 112, column: 17)
!221 = !DILocation(line: 112, column: 33, scope: !220)
!222 = !DILocation(line: 112, column: 31, scope: !220)
!223 = !DILocation(line: 112, column: 17, scope: !217)
!224 = !DILocation(line: 115, column: 32, scope: !225)
!225 = distinct !DILexicalBlock(scope: !220, file: !1, line: 113, column: 17)
!226 = !DILocation(line: 116, column: 17, scope: !225)
!227 = !DILocation(line: 112, column: 37, scope: !220)
!228 = !DILocation(line: 112, column: 17, scope: !220)
!229 = distinct !{!229, !223, !230, !171}
!230 = !DILocation(line: 116, column: 17, scope: !217)
!231 = !DILocation(line: 117, column: 30, scope: !215)
!232 = !DILocation(line: 117, column: 17, scope: !215)
!233 = !DILocation(line: 118, column: 13, scope: !215)
!234 = !DILocation(line: 121, column: 1, scope: !176)
!235 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 124, type: !11, scopeLine: 125, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!236 = !DILocalVariable(name: "data", scope: !235, file: !1, line: 126, type: !14)
!237 = !DILocation(line: 126, column: 12, scope: !235)
!238 = !DILocalVariable(name: "dataPtr1", scope: !235, file: !1, line: 127, type: !18)
!239 = !DILocation(line: 127, column: 13, scope: !235)
!240 = !DILocalVariable(name: "dataPtr2", scope: !235, file: !1, line: 128, type: !18)
!241 = !DILocation(line: 128, column: 13, scope: !235)
!242 = !DILocalVariable(name: "dataBuffer", scope: !235, file: !1, line: 129, type: !23)
!243 = !DILocation(line: 129, column: 10, scope: !235)
!244 = !DILocation(line: 130, column: 12, scope: !235)
!245 = !DILocation(line: 130, column: 10, scope: !235)
!246 = !DILocalVariable(name: "data", scope: !247, file: !1, line: 132, type: !14)
!247 = distinct !DILexicalBlock(scope: !235, file: !1, line: 131, column: 5)
!248 = !DILocation(line: 132, column: 16, scope: !247)
!249 = !DILocation(line: 132, column: 24, scope: !247)
!250 = !DILocation(line: 132, column: 23, scope: !247)
!251 = !DILocalVariable(name: "dataLen", scope: !252, file: !1, line: 135, type: !36)
!252 = distinct !DILexicalBlock(scope: !247, file: !1, line: 133, column: 9)
!253 = !DILocation(line: 135, column: 20, scope: !252)
!254 = !DILocation(line: 135, column: 37, scope: !252)
!255 = !DILocation(line: 135, column: 30, scope: !252)
!256 = !DILocalVariable(name: "pFile", scope: !252, file: !1, line: 136, type: !43)
!257 = !DILocation(line: 136, column: 20, scope: !252)
!258 = !DILocation(line: 138, column: 21, scope: !259)
!259 = distinct !DILexicalBlock(scope: !252, file: !1, line: 138, column: 17)
!260 = !DILocation(line: 138, column: 20, scope: !259)
!261 = !DILocation(line: 138, column: 29, scope: !259)
!262 = !DILocation(line: 138, column: 17, scope: !252)
!263 = !DILocation(line: 140, column: 25, scope: !264)
!264 = distinct !DILexicalBlock(scope: !259, file: !1, line: 139, column: 13)
!265 = !DILocation(line: 140, column: 23, scope: !264)
!266 = !DILocation(line: 141, column: 21, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !1, line: 141, column: 21)
!268 = !DILocation(line: 141, column: 27, scope: !267)
!269 = !DILocation(line: 141, column: 21, scope: !264)
!270 = !DILocation(line: 144, column: 31, scope: !271)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 144, column: 25)
!272 = distinct !DILexicalBlock(scope: !267, file: !1, line: 142, column: 17)
!273 = !DILocation(line: 144, column: 36, scope: !271)
!274 = !DILocation(line: 144, column: 35, scope: !271)
!275 = !DILocation(line: 144, column: 55, scope: !271)
!276 = !DILocation(line: 144, column: 54, scope: !271)
!277 = !DILocation(line: 144, column: 45, scope: !271)
!278 = !DILocation(line: 144, column: 65, scope: !271)
!279 = !DILocation(line: 144, column: 25, scope: !271)
!280 = !DILocation(line: 144, column: 72, scope: !271)
!281 = !DILocation(line: 144, column: 25, scope: !272)
!282 = !DILocation(line: 146, column: 25, scope: !283)
!283 = distinct !DILexicalBlock(scope: !271, file: !1, line: 145, column: 21)
!284 = !DILocation(line: 148, column: 25, scope: !283)
!285 = !DILocation(line: 148, column: 30, scope: !283)
!286 = !DILocation(line: 148, column: 39, scope: !283)
!287 = !DILocation(line: 149, column: 21, scope: !283)
!288 = !DILocation(line: 150, column: 28, scope: !272)
!289 = !DILocation(line: 150, column: 21, scope: !272)
!290 = !DILocation(line: 151, column: 17, scope: !272)
!291 = !DILocation(line: 152, column: 13, scope: !264)
!292 = !DILocation(line: 154, column: 21, scope: !247)
!293 = !DILocation(line: 154, column: 10, scope: !247)
!294 = !DILocation(line: 154, column: 19, scope: !247)
!295 = !DILocalVariable(name: "data", scope: !296, file: !1, line: 157, type: !14)
!296 = distinct !DILexicalBlock(scope: !235, file: !1, line: 156, column: 5)
!297 = !DILocation(line: 157, column: 16, scope: !296)
!298 = !DILocation(line: 157, column: 24, scope: !296)
!299 = !DILocation(line: 157, column: 23, scope: !296)
!300 = !DILocalVariable(name: "i", scope: !301, file: !1, line: 159, type: !5)
!301 = distinct !DILexicalBlock(scope: !296, file: !1, line: 158, column: 9)
!302 = !DILocation(line: 159, column: 17, scope: !301)
!303 = !DILocalVariable(name: "n", scope: !301, file: !1, line: 159, type: !5)
!304 = !DILocation(line: 159, column: 20, scope: !301)
!305 = !DILocalVariable(name: "intVariable", scope: !301, file: !1, line: 159, type: !5)
!306 = !DILocation(line: 159, column: 23, scope: !301)
!307 = !DILocation(line: 160, column: 24, scope: !308)
!308 = distinct !DILexicalBlock(scope: !301, file: !1, line: 160, column: 17)
!309 = !DILocation(line: 160, column: 17, scope: !308)
!310 = !DILocation(line: 160, column: 40, scope: !308)
!311 = !DILocation(line: 160, column: 17, scope: !301)
!312 = !DILocation(line: 163, column: 21, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !1, line: 163, column: 21)
!314 = distinct !DILexicalBlock(scope: !308, file: !1, line: 161, column: 13)
!315 = !DILocation(line: 163, column: 23, scope: !313)
!316 = !DILocation(line: 163, column: 21, scope: !314)
!317 = !DILocation(line: 165, column: 33, scope: !318)
!318 = distinct !DILexicalBlock(scope: !313, file: !1, line: 164, column: 17)
!319 = !DILocation(line: 166, column: 28, scope: !320)
!320 = distinct !DILexicalBlock(scope: !318, file: !1, line: 166, column: 21)
!321 = !DILocation(line: 166, column: 26, scope: !320)
!322 = !DILocation(line: 166, column: 33, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !1, line: 166, column: 21)
!324 = !DILocation(line: 166, column: 37, scope: !323)
!325 = !DILocation(line: 166, column: 35, scope: !323)
!326 = !DILocation(line: 166, column: 21, scope: !320)
!327 = !DILocation(line: 169, column: 36, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !1, line: 167, column: 21)
!329 = !DILocation(line: 170, column: 21, scope: !328)
!330 = !DILocation(line: 166, column: 41, scope: !323)
!331 = !DILocation(line: 166, column: 21, scope: !323)
!332 = distinct !{!332, !326, !333, !171}
!333 = !DILocation(line: 170, column: 21, scope: !320)
!334 = !DILocation(line: 171, column: 34, scope: !318)
!335 = !DILocation(line: 171, column: 21, scope: !318)
!336 = !DILocation(line: 172, column: 17, scope: !318)
!337 = !DILocation(line: 173, column: 13, scope: !314)
!338 = !DILocation(line: 176, column: 1, scope: !235)
!339 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_32_good", scope: !1, file: !1, line: 178, type: !11, scopeLine: 179, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!340 = !DILocation(line: 180, column: 5, scope: !339)
!341 = !DILocation(line: 181, column: 5, scope: !339)
!342 = !DILocation(line: 182, column: 1, scope: !339)
