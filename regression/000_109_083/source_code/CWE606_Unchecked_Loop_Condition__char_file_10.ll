; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_10.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@globalTrue = external dso_local global i32, align 4
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@globalFalse = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_10_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !21
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !22
  store i8* %arraydecay, i8** %data, align 8, !dbg !23
  %1 = load i32, i32* @globalTrue, align 4, !dbg !24
  %tobool = icmp ne i32 %1, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.end13, !dbg !26

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !27, metadata !DIExpression()), !dbg !33
  %2 = load i8*, i8** %data, align 8, !dbg !34
  %call = call i64 @strlen(i8* %2) #6, !dbg !35
  store i64 %call, i64* %dataLen, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !36, metadata !DIExpression()), !dbg !93
  %3 = load i64, i64* %dataLen, align 8, !dbg !94
  %sub = sub i64 100, %3, !dbg !96
  %cmp = icmp ugt i64 %sub, 1, !dbg !97
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !98

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !99
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !101
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !102
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !104
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !105

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !106
  %6 = load i64, i64* %dataLen, align 8, !dbg !109
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !110
  %7 = load i64, i64* %dataLen, align 8, !dbg !111
  %sub5 = sub i64 100, %7, !dbg !112
  %conv = trunc i64 %sub5 to i32, !dbg !113
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !114
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !115
  %cmp7 = icmp eq i8* %call6, null, !dbg !116
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !117

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !118
  %9 = load i8*, i8** %data, align 8, !dbg !120
  %10 = load i64, i64* %dataLen, align 8, !dbg !121
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !120
  store i8 0, i8* %arrayidx, align 1, !dbg !122
  br label %if.end, !dbg !123

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !124
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !125
  br label %if.end11, !dbg !126

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !127

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !128

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @globalTrue, align 4, !dbg !129
  %tobool14 = icmp ne i32 %12, 0, !dbg !129
  br i1 %tobool14, label %if.then15, label %if.end24, !dbg !131

if.then15:                                        ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !132, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %n, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !138, metadata !DIExpression()), !dbg !139
  %13 = load i8*, i8** %data, align 8, !dbg !140
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !142
  %cmp17 = icmp eq i32 %call16, 1, !dbg !143
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !144

if.then19:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !145
  store i32 0, i32* %i, align 4, !dbg !147
  br label %for.cond, !dbg !149

for.cond:                                         ; preds = %for.inc, %if.then19
  %14 = load i32, i32* %i, align 4, !dbg !150
  %15 = load i32, i32* %n, align 4, !dbg !152
  %cmp20 = icmp slt i32 %14, %15, !dbg !153
  br i1 %cmp20, label %for.body, label %for.end, !dbg !154

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !155
  %inc = add nsw i32 %16, 1, !dbg !155
  store i32 %inc, i32* %intVariable, align 4, !dbg !155
  br label %for.inc, !dbg !157

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !158
  %inc22 = add nsw i32 %17, 1, !dbg !158
  store i32 %inc22, i32* %i, align 4, !dbg !158
  br label %for.cond, !dbg !159, !llvm.loop !160

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %intVariable, align 4, !dbg !163
  call void @printIntLine(i32 %18), !dbg !164
  br label %if.end23, !dbg !165

if.end23:                                         ; preds = %for.end, %if.then15
  br label %if.end24, !dbg !166

if.end24:                                         ; preds = %if.end23, %if.end13
  ret void, !dbg !167
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
define dso_local void @goodB2G1() #0 !dbg !168 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !169, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !171, metadata !DIExpression()), !dbg !172
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !172
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !172
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !173
  store i8* %arraydecay, i8** %data, align 8, !dbg !174
  %1 = load i32, i32* @globalTrue, align 4, !dbg !175
  %tobool = icmp ne i32 %1, 0, !dbg !175
  br i1 %tobool, label %if.then, label %if.end13, !dbg !177

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !178, metadata !DIExpression()), !dbg !181
  %2 = load i8*, i8** %data, align 8, !dbg !182
  %call = call i64 @strlen(i8* %2) #6, !dbg !183
  store i64 %call, i64* %dataLen, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !184, metadata !DIExpression()), !dbg !185
  %3 = load i64, i64* %dataLen, align 8, !dbg !186
  %sub = sub i64 100, %3, !dbg !188
  %cmp = icmp ugt i64 %sub, 1, !dbg !189
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !190

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !191
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !193
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !194
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !196
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !197

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !198
  %6 = load i64, i64* %dataLen, align 8, !dbg !201
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !202
  %7 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub5 = sub i64 100, %7, !dbg !204
  %conv = trunc i64 %sub5 to i32, !dbg !205
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !206
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !207
  %cmp7 = icmp eq i8* %call6, null, !dbg !208
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !209

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !210
  %9 = load i8*, i8** %data, align 8, !dbg !212
  %10 = load i64, i64* %dataLen, align 8, !dbg !213
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !212
  store i8 0, i8* %arrayidx, align 1, !dbg !214
  br label %if.end, !dbg !215

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !216
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !217
  br label %if.end11, !dbg !218

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !219

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !220

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @globalFalse, align 4, !dbg !221
  %tobool14 = icmp ne i32 %12, 0, !dbg !221
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !223

if.then15:                                        ; preds = %if.end13
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !224
  br label %if.end28, !dbg !226

if.else:                                          ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !227, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata i32* %n, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !233, metadata !DIExpression()), !dbg !234
  %13 = load i8*, i8** %data, align 8, !dbg !235
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !237
  %cmp17 = icmp eq i32 %call16, 1, !dbg !238
  br i1 %cmp17, label %if.then19, label %if.end27, !dbg !239

if.then19:                                        ; preds = %if.else
  %14 = load i32, i32* %n, align 4, !dbg !240
  %cmp20 = icmp slt i32 %14, 10000, !dbg !243
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !244

if.then22:                                        ; preds = %if.then19
  store i32 0, i32* %intVariable, align 4, !dbg !245
  store i32 0, i32* %i, align 4, !dbg !247
  br label %for.cond, !dbg !249

for.cond:                                         ; preds = %for.inc, %if.then22
  %15 = load i32, i32* %i, align 4, !dbg !250
  %16 = load i32, i32* %n, align 4, !dbg !252
  %cmp23 = icmp slt i32 %15, %16, !dbg !253
  br i1 %cmp23, label %for.body, label %for.end, !dbg !254

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !255
  %inc = add nsw i32 %17, 1, !dbg !255
  store i32 %inc, i32* %intVariable, align 4, !dbg !255
  br label %for.inc, !dbg !257

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !258
  %inc25 = add nsw i32 %18, 1, !dbg !258
  store i32 %inc25, i32* %i, align 4, !dbg !258
  br label %for.cond, !dbg !259, !llvm.loop !260

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !262
  call void @printIntLine(i32 %19), !dbg !263
  br label %if.end26, !dbg !264

if.end26:                                         ; preds = %for.end, %if.then19
  br label %if.end27, !dbg !265

if.end27:                                         ; preds = %if.end26, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then15
  ret void, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !267 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !270, metadata !DIExpression()), !dbg !271
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !271
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !271
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !272
  store i8* %arraydecay, i8** %data, align 8, !dbg !273
  %1 = load i32, i32* @globalTrue, align 4, !dbg !274
  %tobool = icmp ne i32 %1, 0, !dbg !274
  br i1 %tobool, label %if.then, label %if.end13, !dbg !276

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !277, metadata !DIExpression()), !dbg !280
  %2 = load i8*, i8** %data, align 8, !dbg !281
  %call = call i64 @strlen(i8* %2) #6, !dbg !282
  store i64 %call, i64* %dataLen, align 8, !dbg !280
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !283, metadata !DIExpression()), !dbg !284
  %3 = load i64, i64* %dataLen, align 8, !dbg !285
  %sub = sub i64 100, %3, !dbg !287
  %cmp = icmp ugt i64 %sub, 1, !dbg !288
  br i1 %cmp, label %if.then1, label %if.end12, !dbg !289

if.then1:                                         ; preds = %if.then
  %call2 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !290
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %pFile, align 8, !dbg !292
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !293
  %cmp3 = icmp ne %struct._IO_FILE* %4, null, !dbg !295
  br i1 %cmp3, label %if.then4, label %if.end11, !dbg !296

if.then4:                                         ; preds = %if.then1
  %5 = load i8*, i8** %data, align 8, !dbg !297
  %6 = load i64, i64* %dataLen, align 8, !dbg !300
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !301
  %7 = load i64, i64* %dataLen, align 8, !dbg !302
  %sub5 = sub i64 100, %7, !dbg !303
  %conv = trunc i64 %sub5 to i32, !dbg !304
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !305
  %call6 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !306
  %cmp7 = icmp eq i8* %call6, null, !dbg !307
  br i1 %cmp7, label %if.then9, label %if.end, !dbg !308

if.then9:                                         ; preds = %if.then4
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !309
  %9 = load i8*, i8** %data, align 8, !dbg !311
  %10 = load i64, i64* %dataLen, align 8, !dbg !312
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !311
  store i8 0, i8* %arrayidx, align 1, !dbg !313
  br label %if.end, !dbg !314

if.end:                                           ; preds = %if.then9, %if.then4
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !315
  %call10 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !316
  br label %if.end11, !dbg !317

if.end11:                                         ; preds = %if.end, %if.then1
  br label %if.end12, !dbg !318

if.end12:                                         ; preds = %if.end11, %if.then
  br label %if.end13, !dbg !319

if.end13:                                         ; preds = %if.end12, %entry
  %12 = load i32, i32* @globalTrue, align 4, !dbg !320
  %tobool14 = icmp ne i32 %12, 0, !dbg !320
  br i1 %tobool14, label %if.then15, label %if.end28, !dbg !322

if.then15:                                        ; preds = %if.end13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !323, metadata !DIExpression()), !dbg !326
  call void @llvm.dbg.declare(metadata i32* %n, metadata !327, metadata !DIExpression()), !dbg !328
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !329, metadata !DIExpression()), !dbg !330
  %13 = load i8*, i8** %data, align 8, !dbg !331
  %call16 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !333
  %cmp17 = icmp eq i32 %call16, 1, !dbg !334
  br i1 %cmp17, label %if.then19, label %if.end27, !dbg !335

if.then19:                                        ; preds = %if.then15
  %14 = load i32, i32* %n, align 4, !dbg !336
  %cmp20 = icmp slt i32 %14, 10000, !dbg !339
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !340

if.then22:                                        ; preds = %if.then19
  store i32 0, i32* %intVariable, align 4, !dbg !341
  store i32 0, i32* %i, align 4, !dbg !343
  br label %for.cond, !dbg !345

for.cond:                                         ; preds = %for.inc, %if.then22
  %15 = load i32, i32* %i, align 4, !dbg !346
  %16 = load i32, i32* %n, align 4, !dbg !348
  %cmp23 = icmp slt i32 %15, %16, !dbg !349
  br i1 %cmp23, label %for.body, label %for.end, !dbg !350

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !351
  %inc = add nsw i32 %17, 1, !dbg !351
  store i32 %inc, i32* %intVariable, align 4, !dbg !351
  br label %for.inc, !dbg !353

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !354
  %inc25 = add nsw i32 %18, 1, !dbg !354
  store i32 %inc25, i32* %i, align 4, !dbg !354
  br label %for.cond, !dbg !355, !llvm.loop !356

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !358
  call void @printIntLine(i32 %19), !dbg !359
  br label %if.end26, !dbg !360

if.end26:                                         ; preds = %for.end, %if.then19
  br label %if.end27, !dbg !361

if.end27:                                         ; preds = %if.end26, %if.then15
  br label %if.end28, !dbg !362

if.end28:                                         ; preds = %if.end27, %if.end13
  ret void, !dbg !363
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !364 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !365, metadata !DIExpression()), !dbg !366
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !368
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !368
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !369
  store i8* %arraydecay, i8** %data, align 8, !dbg !370
  %1 = load i32, i32* @globalFalse, align 4, !dbg !371
  %tobool = icmp ne i32 %1, 0, !dbg !371
  br i1 %tobool, label %if.then, label %if.else, !dbg !373

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !374
  br label %if.end, !dbg !376

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !377
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !379
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @globalTrue, align 4, !dbg !380
  %tobool1 = icmp ne i32 %3, 0, !dbg !380
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !382

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !383, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.declare(metadata i32* %n, metadata !387, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !389, metadata !DIExpression()), !dbg !390
  %4 = load i8*, i8** %data, align 8, !dbg !391
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !393
  %cmp = icmp eq i32 %call3, 1, !dbg !394
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !395

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !396
  store i32 0, i32* %i, align 4, !dbg !398
  br label %for.cond, !dbg !400

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !401
  %6 = load i32, i32* %n, align 4, !dbg !403
  %cmp5 = icmp slt i32 %5, %6, !dbg !404
  br i1 %cmp5, label %for.body, label %for.end, !dbg !405

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !406
  %inc = add nsw i32 %7, 1, !dbg !406
  store i32 %inc, i32* %intVariable, align 4, !dbg !406
  br label %for.inc, !dbg !408

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !409
  %inc6 = add nsw i32 %8, 1, !dbg !409
  store i32 %inc6, i32* %i, align 4, !dbg !409
  br label %for.cond, !dbg !410, !llvm.loop !411

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !413
  call void @printIntLine(i32 %9), !dbg !414
  br label %if.end7, !dbg !415

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !416

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !417
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !418 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !419, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !421, metadata !DIExpression()), !dbg !422
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !422
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !422
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !423
  store i8* %arraydecay, i8** %data, align 8, !dbg !424
  %1 = load i32, i32* @globalTrue, align 4, !dbg !425
  %tobool = icmp ne i32 %1, 0, !dbg !425
  br i1 %tobool, label %if.then, label %if.end, !dbg !427

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !428
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !430
  br label %if.end, !dbg !431

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @globalTrue, align 4, !dbg !432
  %tobool1 = icmp ne i32 %3, 0, !dbg !432
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !434

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !435, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata i32* %n, metadata !439, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !441, metadata !DIExpression()), !dbg !442
  %4 = load i8*, i8** %data, align 8, !dbg !443
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !445
  %cmp = icmp eq i32 %call3, 1, !dbg !446
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !447

if.then4:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !448
  store i32 0, i32* %i, align 4, !dbg !450
  br label %for.cond, !dbg !452

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !453
  %6 = load i32, i32* %n, align 4, !dbg !455
  %cmp5 = icmp slt i32 %5, %6, !dbg !456
  br i1 %cmp5, label %for.body, label %for.end, !dbg !457

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !458
  %inc = add nsw i32 %7, 1, !dbg !458
  store i32 %inc, i32* %intVariable, align 4, !dbg !458
  br label %for.inc, !dbg !460

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !461
  %inc6 = add nsw i32 %8, 1, !dbg !461
  store i32 %inc6, i32* %i, align 4, !dbg !461
  br label %for.cond, !dbg !462, !llvm.loop !463

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !465
  call void @printIntLine(i32 %9), !dbg !466
  br label %if.end7, !dbg !467

if.end7:                                          ; preds = %for.end, %if.then2
  br label %if.end8, !dbg !468

if.end8:                                          ; preds = %if.end7, %if.end
  ret void, !dbg !469
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_10_good() #0 !dbg !470 {
entry:
  call void @goodB2G1(), !dbg !471
  call void @goodB2G2(), !dbg !472
  call void @goodG2B1(), !dbg !473
  call void @goodG2B2(), !dbg !474
  ret void, !dbg !475
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_10.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_083/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_10_bad", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 37, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 37, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 38, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 38, column: 10, scope: !10)
!22 = !DILocation(line: 39, column: 12, scope: !10)
!23 = !DILocation(line: 39, column: 10, scope: !10)
!24 = !DILocation(line: 40, column: 8, scope: !25)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 40, column: 8)
!26 = !DILocation(line: 40, column: 8, scope: !10)
!27 = !DILocalVariable(name: "dataLen", scope: !28, file: !1, line: 44, type: !30)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 42, column: 9)
!29 = distinct !DILexicalBlock(scope: !25, file: !1, line: 41, column: 5)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 44, column: 20, scope: !28)
!34 = !DILocation(line: 44, column: 37, scope: !28)
!35 = !DILocation(line: 44, column: 30, scope: !28)
!36 = !DILocalVariable(name: "pFile", scope: !28, file: !1, line: 45, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !39, line: 7, baseType: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !41, line: 49, size: 1728, elements: !42)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !58, !60, !61, !62, !66, !68, !70, !74, !77, !79, !82, !85, !86, !87, !88, !89}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !40, file: !41, line: 51, baseType: !5, size: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !40, file: !41, line: 54, baseType: !14, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !40, file: !41, line: 55, baseType: !14, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !40, file: !41, line: 56, baseType: !14, size: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !40, file: !41, line: 57, baseType: !14, size: 64, offset: 256)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !40, file: !41, line: 58, baseType: !14, size: 64, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !40, file: !41, line: 59, baseType: !14, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !40, file: !41, line: 60, baseType: !14, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !40, file: !41, line: 61, baseType: !14, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !40, file: !41, line: 64, baseType: !14, size: 64, offset: 576)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !40, file: !41, line: 65, baseType: !14, size: 64, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !40, file: !41, line: 66, baseType: !14, size: 64, offset: 704)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !40, file: !41, line: 68, baseType: !56, size: 64, offset: 768)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !41, line: 36, flags: DIFlagFwdDecl)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !40, file: !41, line: 70, baseType: !59, size: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !40, file: !41, line: 72, baseType: !5, size: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !40, file: !41, line: 73, baseType: !5, size: 32, offset: 928)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !40, file: !41, line: 74, baseType: !63, size: 64, offset: 960)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !64, line: 152, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!65 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !40, file: !41, line: 77, baseType: !67, size: 16, offset: 1024)
!67 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !40, file: !41, line: 78, baseType: !69, size: 8, offset: 1040)
!69 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !40, file: !41, line: 79, baseType: !71, size: 8, offset: 1048)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: 1)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !40, file: !41, line: 81, baseType: !75, size: 64, offset: 1088)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !41, line: 43, baseType: null)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !40, file: !41, line: 89, baseType: !78, size: 64, offset: 1152)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !64, line: 153, baseType: !65)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !40, file: !41, line: 91, baseType: !80, size: 64, offset: 1216)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !41, line: 37, flags: DIFlagFwdDecl)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !40, file: !41, line: 92, baseType: !83, size: 64, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !41, line: 38, flags: DIFlagFwdDecl)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !40, file: !41, line: 93, baseType: !59, size: 64, offset: 1344)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !40, file: !41, line: 94, baseType: !4, size: 64, offset: 1408)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !40, file: !41, line: 95, baseType: !30, size: 64, offset: 1472)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !40, file: !41, line: 96, baseType: !5, size: 32, offset: 1536)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !40, file: !41, line: 98, baseType: !90, size: 160, offset: 1568)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 20)
!93 = !DILocation(line: 45, column: 20, scope: !28)
!94 = !DILocation(line: 47, column: 21, scope: !95)
!95 = distinct !DILexicalBlock(scope: !28, file: !1, line: 47, column: 17)
!96 = !DILocation(line: 47, column: 20, scope: !95)
!97 = !DILocation(line: 47, column: 29, scope: !95)
!98 = !DILocation(line: 47, column: 17, scope: !28)
!99 = !DILocation(line: 49, column: 25, scope: !100)
!100 = distinct !DILexicalBlock(scope: !95, file: !1, line: 48, column: 13)
!101 = !DILocation(line: 49, column: 23, scope: !100)
!102 = !DILocation(line: 50, column: 21, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !1, line: 50, column: 21)
!104 = !DILocation(line: 50, column: 27, scope: !103)
!105 = !DILocation(line: 50, column: 21, scope: !100)
!106 = !DILocation(line: 53, column: 31, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !1, line: 53, column: 25)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 51, column: 17)
!109 = !DILocation(line: 53, column: 36, scope: !107)
!110 = !DILocation(line: 53, column: 35, scope: !107)
!111 = !DILocation(line: 53, column: 55, scope: !107)
!112 = !DILocation(line: 53, column: 54, scope: !107)
!113 = !DILocation(line: 53, column: 45, scope: !107)
!114 = !DILocation(line: 53, column: 65, scope: !107)
!115 = !DILocation(line: 53, column: 25, scope: !107)
!116 = !DILocation(line: 53, column: 72, scope: !107)
!117 = !DILocation(line: 53, column: 25, scope: !108)
!118 = !DILocation(line: 55, column: 25, scope: !119)
!119 = distinct !DILexicalBlock(scope: !107, file: !1, line: 54, column: 21)
!120 = !DILocation(line: 57, column: 25, scope: !119)
!121 = !DILocation(line: 57, column: 30, scope: !119)
!122 = !DILocation(line: 57, column: 39, scope: !119)
!123 = !DILocation(line: 58, column: 21, scope: !119)
!124 = !DILocation(line: 59, column: 28, scope: !108)
!125 = !DILocation(line: 59, column: 21, scope: !108)
!126 = !DILocation(line: 60, column: 17, scope: !108)
!127 = !DILocation(line: 61, column: 13, scope: !100)
!128 = !DILocation(line: 63, column: 5, scope: !29)
!129 = !DILocation(line: 64, column: 8, scope: !130)
!130 = distinct !DILexicalBlock(scope: !10, file: !1, line: 64, column: 8)
!131 = !DILocation(line: 64, column: 8, scope: !10)
!132 = !DILocalVariable(name: "i", scope: !133, file: !1, line: 67, type: !5)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 66, column: 9)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 65, column: 5)
!135 = !DILocation(line: 67, column: 17, scope: !133)
!136 = !DILocalVariable(name: "n", scope: !133, file: !1, line: 67, type: !5)
!137 = !DILocation(line: 67, column: 20, scope: !133)
!138 = !DILocalVariable(name: "intVariable", scope: !133, file: !1, line: 67, type: !5)
!139 = !DILocation(line: 67, column: 23, scope: !133)
!140 = !DILocation(line: 68, column: 24, scope: !141)
!141 = distinct !DILexicalBlock(scope: !133, file: !1, line: 68, column: 17)
!142 = !DILocation(line: 68, column: 17, scope: !141)
!143 = !DILocation(line: 68, column: 40, scope: !141)
!144 = !DILocation(line: 68, column: 17, scope: !133)
!145 = !DILocation(line: 71, column: 29, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !1, line: 69, column: 13)
!147 = !DILocation(line: 72, column: 24, scope: !148)
!148 = distinct !DILexicalBlock(scope: !146, file: !1, line: 72, column: 17)
!149 = !DILocation(line: 72, column: 22, scope: !148)
!150 = !DILocation(line: 72, column: 29, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !1, line: 72, column: 17)
!152 = !DILocation(line: 72, column: 33, scope: !151)
!153 = !DILocation(line: 72, column: 31, scope: !151)
!154 = !DILocation(line: 72, column: 17, scope: !148)
!155 = !DILocation(line: 75, column: 32, scope: !156)
!156 = distinct !DILexicalBlock(scope: !151, file: !1, line: 73, column: 17)
!157 = !DILocation(line: 76, column: 17, scope: !156)
!158 = !DILocation(line: 72, column: 37, scope: !151)
!159 = !DILocation(line: 72, column: 17, scope: !151)
!160 = distinct !{!160, !154, !161, !162}
!161 = !DILocation(line: 76, column: 17, scope: !148)
!162 = !{!"llvm.loop.mustprogress"}
!163 = !DILocation(line: 77, column: 30, scope: !146)
!164 = !DILocation(line: 77, column: 17, scope: !146)
!165 = !DILocation(line: 78, column: 13, scope: !146)
!166 = !DILocation(line: 80, column: 5, scope: !134)
!167 = !DILocation(line: 81, column: 1, scope: !10)
!168 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 88, type: !11, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!169 = !DILocalVariable(name: "data", scope: !168, file: !1, line: 90, type: !14)
!170 = !DILocation(line: 90, column: 12, scope: !168)
!171 = !DILocalVariable(name: "dataBuffer", scope: !168, file: !1, line: 91, type: !18)
!172 = !DILocation(line: 91, column: 10, scope: !168)
!173 = !DILocation(line: 92, column: 12, scope: !168)
!174 = !DILocation(line: 92, column: 10, scope: !168)
!175 = !DILocation(line: 93, column: 8, scope: !176)
!176 = distinct !DILexicalBlock(scope: !168, file: !1, line: 93, column: 8)
!177 = !DILocation(line: 93, column: 8, scope: !168)
!178 = !DILocalVariable(name: "dataLen", scope: !179, file: !1, line: 97, type: !30)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 95, column: 9)
!180 = distinct !DILexicalBlock(scope: !176, file: !1, line: 94, column: 5)
!181 = !DILocation(line: 97, column: 20, scope: !179)
!182 = !DILocation(line: 97, column: 37, scope: !179)
!183 = !DILocation(line: 97, column: 30, scope: !179)
!184 = !DILocalVariable(name: "pFile", scope: !179, file: !1, line: 98, type: !37)
!185 = !DILocation(line: 98, column: 20, scope: !179)
!186 = !DILocation(line: 100, column: 21, scope: !187)
!187 = distinct !DILexicalBlock(scope: !179, file: !1, line: 100, column: 17)
!188 = !DILocation(line: 100, column: 20, scope: !187)
!189 = !DILocation(line: 100, column: 29, scope: !187)
!190 = !DILocation(line: 100, column: 17, scope: !179)
!191 = !DILocation(line: 102, column: 25, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !1, line: 101, column: 13)
!193 = !DILocation(line: 102, column: 23, scope: !192)
!194 = !DILocation(line: 103, column: 21, scope: !195)
!195 = distinct !DILexicalBlock(scope: !192, file: !1, line: 103, column: 21)
!196 = !DILocation(line: 103, column: 27, scope: !195)
!197 = !DILocation(line: 103, column: 21, scope: !192)
!198 = !DILocation(line: 106, column: 31, scope: !199)
!199 = distinct !DILexicalBlock(scope: !200, file: !1, line: 106, column: 25)
!200 = distinct !DILexicalBlock(scope: !195, file: !1, line: 104, column: 17)
!201 = !DILocation(line: 106, column: 36, scope: !199)
!202 = !DILocation(line: 106, column: 35, scope: !199)
!203 = !DILocation(line: 106, column: 55, scope: !199)
!204 = !DILocation(line: 106, column: 54, scope: !199)
!205 = !DILocation(line: 106, column: 45, scope: !199)
!206 = !DILocation(line: 106, column: 65, scope: !199)
!207 = !DILocation(line: 106, column: 25, scope: !199)
!208 = !DILocation(line: 106, column: 72, scope: !199)
!209 = !DILocation(line: 106, column: 25, scope: !200)
!210 = !DILocation(line: 108, column: 25, scope: !211)
!211 = distinct !DILexicalBlock(scope: !199, file: !1, line: 107, column: 21)
!212 = !DILocation(line: 110, column: 25, scope: !211)
!213 = !DILocation(line: 110, column: 30, scope: !211)
!214 = !DILocation(line: 110, column: 39, scope: !211)
!215 = !DILocation(line: 111, column: 21, scope: !211)
!216 = !DILocation(line: 112, column: 28, scope: !200)
!217 = !DILocation(line: 112, column: 21, scope: !200)
!218 = !DILocation(line: 113, column: 17, scope: !200)
!219 = !DILocation(line: 114, column: 13, scope: !192)
!220 = !DILocation(line: 116, column: 5, scope: !180)
!221 = !DILocation(line: 117, column: 8, scope: !222)
!222 = distinct !DILexicalBlock(scope: !168, file: !1, line: 117, column: 8)
!223 = !DILocation(line: 117, column: 8, scope: !168)
!224 = !DILocation(line: 120, column: 9, scope: !225)
!225 = distinct !DILexicalBlock(scope: !222, file: !1, line: 118, column: 5)
!226 = !DILocation(line: 121, column: 5, scope: !225)
!227 = !DILocalVariable(name: "i", scope: !228, file: !1, line: 125, type: !5)
!228 = distinct !DILexicalBlock(scope: !229, file: !1, line: 124, column: 9)
!229 = distinct !DILexicalBlock(scope: !222, file: !1, line: 123, column: 5)
!230 = !DILocation(line: 125, column: 17, scope: !228)
!231 = !DILocalVariable(name: "n", scope: !228, file: !1, line: 125, type: !5)
!232 = !DILocation(line: 125, column: 20, scope: !228)
!233 = !DILocalVariable(name: "intVariable", scope: !228, file: !1, line: 125, type: !5)
!234 = !DILocation(line: 125, column: 23, scope: !228)
!235 = !DILocation(line: 126, column: 24, scope: !236)
!236 = distinct !DILexicalBlock(scope: !228, file: !1, line: 126, column: 17)
!237 = !DILocation(line: 126, column: 17, scope: !236)
!238 = !DILocation(line: 126, column: 40, scope: !236)
!239 = !DILocation(line: 126, column: 17, scope: !228)
!240 = !DILocation(line: 129, column: 21, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 129, column: 21)
!242 = distinct !DILexicalBlock(scope: !236, file: !1, line: 127, column: 13)
!243 = !DILocation(line: 129, column: 23, scope: !241)
!244 = !DILocation(line: 129, column: 21, scope: !242)
!245 = !DILocation(line: 131, column: 33, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !1, line: 130, column: 17)
!247 = !DILocation(line: 132, column: 28, scope: !248)
!248 = distinct !DILexicalBlock(scope: !246, file: !1, line: 132, column: 21)
!249 = !DILocation(line: 132, column: 26, scope: !248)
!250 = !DILocation(line: 132, column: 33, scope: !251)
!251 = distinct !DILexicalBlock(scope: !248, file: !1, line: 132, column: 21)
!252 = !DILocation(line: 132, column: 37, scope: !251)
!253 = !DILocation(line: 132, column: 35, scope: !251)
!254 = !DILocation(line: 132, column: 21, scope: !248)
!255 = !DILocation(line: 135, column: 36, scope: !256)
!256 = distinct !DILexicalBlock(scope: !251, file: !1, line: 133, column: 21)
!257 = !DILocation(line: 136, column: 21, scope: !256)
!258 = !DILocation(line: 132, column: 41, scope: !251)
!259 = !DILocation(line: 132, column: 21, scope: !251)
!260 = distinct !{!260, !254, !261, !162}
!261 = !DILocation(line: 136, column: 21, scope: !248)
!262 = !DILocation(line: 137, column: 34, scope: !246)
!263 = !DILocation(line: 137, column: 21, scope: !246)
!264 = !DILocation(line: 138, column: 17, scope: !246)
!265 = !DILocation(line: 139, column: 13, scope: !242)
!266 = !DILocation(line: 142, column: 1, scope: !168)
!267 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 145, type: !11, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!268 = !DILocalVariable(name: "data", scope: !267, file: !1, line: 147, type: !14)
!269 = !DILocation(line: 147, column: 12, scope: !267)
!270 = !DILocalVariable(name: "dataBuffer", scope: !267, file: !1, line: 148, type: !18)
!271 = !DILocation(line: 148, column: 10, scope: !267)
!272 = !DILocation(line: 149, column: 12, scope: !267)
!273 = !DILocation(line: 149, column: 10, scope: !267)
!274 = !DILocation(line: 150, column: 8, scope: !275)
!275 = distinct !DILexicalBlock(scope: !267, file: !1, line: 150, column: 8)
!276 = !DILocation(line: 150, column: 8, scope: !267)
!277 = !DILocalVariable(name: "dataLen", scope: !278, file: !1, line: 154, type: !30)
!278 = distinct !DILexicalBlock(scope: !279, file: !1, line: 152, column: 9)
!279 = distinct !DILexicalBlock(scope: !275, file: !1, line: 151, column: 5)
!280 = !DILocation(line: 154, column: 20, scope: !278)
!281 = !DILocation(line: 154, column: 37, scope: !278)
!282 = !DILocation(line: 154, column: 30, scope: !278)
!283 = !DILocalVariable(name: "pFile", scope: !278, file: !1, line: 155, type: !37)
!284 = !DILocation(line: 155, column: 20, scope: !278)
!285 = !DILocation(line: 157, column: 21, scope: !286)
!286 = distinct !DILexicalBlock(scope: !278, file: !1, line: 157, column: 17)
!287 = !DILocation(line: 157, column: 20, scope: !286)
!288 = !DILocation(line: 157, column: 29, scope: !286)
!289 = !DILocation(line: 157, column: 17, scope: !278)
!290 = !DILocation(line: 159, column: 25, scope: !291)
!291 = distinct !DILexicalBlock(scope: !286, file: !1, line: 158, column: 13)
!292 = !DILocation(line: 159, column: 23, scope: !291)
!293 = !DILocation(line: 160, column: 21, scope: !294)
!294 = distinct !DILexicalBlock(scope: !291, file: !1, line: 160, column: 21)
!295 = !DILocation(line: 160, column: 27, scope: !294)
!296 = !DILocation(line: 160, column: 21, scope: !291)
!297 = !DILocation(line: 163, column: 31, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !1, line: 163, column: 25)
!299 = distinct !DILexicalBlock(scope: !294, file: !1, line: 161, column: 17)
!300 = !DILocation(line: 163, column: 36, scope: !298)
!301 = !DILocation(line: 163, column: 35, scope: !298)
!302 = !DILocation(line: 163, column: 55, scope: !298)
!303 = !DILocation(line: 163, column: 54, scope: !298)
!304 = !DILocation(line: 163, column: 45, scope: !298)
!305 = !DILocation(line: 163, column: 65, scope: !298)
!306 = !DILocation(line: 163, column: 25, scope: !298)
!307 = !DILocation(line: 163, column: 72, scope: !298)
!308 = !DILocation(line: 163, column: 25, scope: !299)
!309 = !DILocation(line: 165, column: 25, scope: !310)
!310 = distinct !DILexicalBlock(scope: !298, file: !1, line: 164, column: 21)
!311 = !DILocation(line: 167, column: 25, scope: !310)
!312 = !DILocation(line: 167, column: 30, scope: !310)
!313 = !DILocation(line: 167, column: 39, scope: !310)
!314 = !DILocation(line: 168, column: 21, scope: !310)
!315 = !DILocation(line: 169, column: 28, scope: !299)
!316 = !DILocation(line: 169, column: 21, scope: !299)
!317 = !DILocation(line: 170, column: 17, scope: !299)
!318 = !DILocation(line: 171, column: 13, scope: !291)
!319 = !DILocation(line: 173, column: 5, scope: !279)
!320 = !DILocation(line: 174, column: 8, scope: !321)
!321 = distinct !DILexicalBlock(scope: !267, file: !1, line: 174, column: 8)
!322 = !DILocation(line: 174, column: 8, scope: !267)
!323 = !DILocalVariable(name: "i", scope: !324, file: !1, line: 177, type: !5)
!324 = distinct !DILexicalBlock(scope: !325, file: !1, line: 176, column: 9)
!325 = distinct !DILexicalBlock(scope: !321, file: !1, line: 175, column: 5)
!326 = !DILocation(line: 177, column: 17, scope: !324)
!327 = !DILocalVariable(name: "n", scope: !324, file: !1, line: 177, type: !5)
!328 = !DILocation(line: 177, column: 20, scope: !324)
!329 = !DILocalVariable(name: "intVariable", scope: !324, file: !1, line: 177, type: !5)
!330 = !DILocation(line: 177, column: 23, scope: !324)
!331 = !DILocation(line: 178, column: 24, scope: !332)
!332 = distinct !DILexicalBlock(scope: !324, file: !1, line: 178, column: 17)
!333 = !DILocation(line: 178, column: 17, scope: !332)
!334 = !DILocation(line: 178, column: 40, scope: !332)
!335 = !DILocation(line: 178, column: 17, scope: !324)
!336 = !DILocation(line: 181, column: 21, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !1, line: 181, column: 21)
!338 = distinct !DILexicalBlock(scope: !332, file: !1, line: 179, column: 13)
!339 = !DILocation(line: 181, column: 23, scope: !337)
!340 = !DILocation(line: 181, column: 21, scope: !338)
!341 = !DILocation(line: 183, column: 33, scope: !342)
!342 = distinct !DILexicalBlock(scope: !337, file: !1, line: 182, column: 17)
!343 = !DILocation(line: 184, column: 28, scope: !344)
!344 = distinct !DILexicalBlock(scope: !342, file: !1, line: 184, column: 21)
!345 = !DILocation(line: 184, column: 26, scope: !344)
!346 = !DILocation(line: 184, column: 33, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !1, line: 184, column: 21)
!348 = !DILocation(line: 184, column: 37, scope: !347)
!349 = !DILocation(line: 184, column: 35, scope: !347)
!350 = !DILocation(line: 184, column: 21, scope: !344)
!351 = !DILocation(line: 187, column: 36, scope: !352)
!352 = distinct !DILexicalBlock(scope: !347, file: !1, line: 185, column: 21)
!353 = !DILocation(line: 188, column: 21, scope: !352)
!354 = !DILocation(line: 184, column: 41, scope: !347)
!355 = !DILocation(line: 184, column: 21, scope: !347)
!356 = distinct !{!356, !350, !357, !162}
!357 = !DILocation(line: 188, column: 21, scope: !344)
!358 = !DILocation(line: 189, column: 34, scope: !342)
!359 = !DILocation(line: 189, column: 21, scope: !342)
!360 = !DILocation(line: 190, column: 17, scope: !342)
!361 = !DILocation(line: 191, column: 13, scope: !338)
!362 = !DILocation(line: 193, column: 5, scope: !325)
!363 = !DILocation(line: 194, column: 1, scope: !267)
!364 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 197, type: !11, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!365 = !DILocalVariable(name: "data", scope: !364, file: !1, line: 199, type: !14)
!366 = !DILocation(line: 199, column: 12, scope: !364)
!367 = !DILocalVariable(name: "dataBuffer", scope: !364, file: !1, line: 200, type: !18)
!368 = !DILocation(line: 200, column: 10, scope: !364)
!369 = !DILocation(line: 201, column: 12, scope: !364)
!370 = !DILocation(line: 201, column: 10, scope: !364)
!371 = !DILocation(line: 202, column: 8, scope: !372)
!372 = distinct !DILexicalBlock(scope: !364, file: !1, line: 202, column: 8)
!373 = !DILocation(line: 202, column: 8, scope: !364)
!374 = !DILocation(line: 205, column: 9, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !1, line: 203, column: 5)
!376 = !DILocation(line: 206, column: 5, scope: !375)
!377 = !DILocation(line: 210, column: 16, scope: !378)
!378 = distinct !DILexicalBlock(scope: !372, file: !1, line: 208, column: 5)
!379 = !DILocation(line: 210, column: 9, scope: !378)
!380 = !DILocation(line: 212, column: 8, scope: !381)
!381 = distinct !DILexicalBlock(scope: !364, file: !1, line: 212, column: 8)
!382 = !DILocation(line: 212, column: 8, scope: !364)
!383 = !DILocalVariable(name: "i", scope: !384, file: !1, line: 215, type: !5)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 214, column: 9)
!385 = distinct !DILexicalBlock(scope: !381, file: !1, line: 213, column: 5)
!386 = !DILocation(line: 215, column: 17, scope: !384)
!387 = !DILocalVariable(name: "n", scope: !384, file: !1, line: 215, type: !5)
!388 = !DILocation(line: 215, column: 20, scope: !384)
!389 = !DILocalVariable(name: "intVariable", scope: !384, file: !1, line: 215, type: !5)
!390 = !DILocation(line: 215, column: 23, scope: !384)
!391 = !DILocation(line: 216, column: 24, scope: !392)
!392 = distinct !DILexicalBlock(scope: !384, file: !1, line: 216, column: 17)
!393 = !DILocation(line: 216, column: 17, scope: !392)
!394 = !DILocation(line: 216, column: 40, scope: !392)
!395 = !DILocation(line: 216, column: 17, scope: !384)
!396 = !DILocation(line: 219, column: 29, scope: !397)
!397 = distinct !DILexicalBlock(scope: !392, file: !1, line: 217, column: 13)
!398 = !DILocation(line: 220, column: 24, scope: !399)
!399 = distinct !DILexicalBlock(scope: !397, file: !1, line: 220, column: 17)
!400 = !DILocation(line: 220, column: 22, scope: !399)
!401 = !DILocation(line: 220, column: 29, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !1, line: 220, column: 17)
!403 = !DILocation(line: 220, column: 33, scope: !402)
!404 = !DILocation(line: 220, column: 31, scope: !402)
!405 = !DILocation(line: 220, column: 17, scope: !399)
!406 = !DILocation(line: 223, column: 32, scope: !407)
!407 = distinct !DILexicalBlock(scope: !402, file: !1, line: 221, column: 17)
!408 = !DILocation(line: 224, column: 17, scope: !407)
!409 = !DILocation(line: 220, column: 37, scope: !402)
!410 = !DILocation(line: 220, column: 17, scope: !402)
!411 = distinct !{!411, !405, !412, !162}
!412 = !DILocation(line: 224, column: 17, scope: !399)
!413 = !DILocation(line: 225, column: 30, scope: !397)
!414 = !DILocation(line: 225, column: 17, scope: !397)
!415 = !DILocation(line: 226, column: 13, scope: !397)
!416 = !DILocation(line: 228, column: 5, scope: !385)
!417 = !DILocation(line: 229, column: 1, scope: !364)
!418 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 232, type: !11, scopeLine: 233, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!419 = !DILocalVariable(name: "data", scope: !418, file: !1, line: 234, type: !14)
!420 = !DILocation(line: 234, column: 12, scope: !418)
!421 = !DILocalVariable(name: "dataBuffer", scope: !418, file: !1, line: 235, type: !18)
!422 = !DILocation(line: 235, column: 10, scope: !418)
!423 = !DILocation(line: 236, column: 12, scope: !418)
!424 = !DILocation(line: 236, column: 10, scope: !418)
!425 = !DILocation(line: 237, column: 8, scope: !426)
!426 = distinct !DILexicalBlock(scope: !418, file: !1, line: 237, column: 8)
!427 = !DILocation(line: 237, column: 8, scope: !418)
!428 = !DILocation(line: 240, column: 16, scope: !429)
!429 = distinct !DILexicalBlock(scope: !426, file: !1, line: 238, column: 5)
!430 = !DILocation(line: 240, column: 9, scope: !429)
!431 = !DILocation(line: 241, column: 5, scope: !429)
!432 = !DILocation(line: 242, column: 8, scope: !433)
!433 = distinct !DILexicalBlock(scope: !418, file: !1, line: 242, column: 8)
!434 = !DILocation(line: 242, column: 8, scope: !418)
!435 = !DILocalVariable(name: "i", scope: !436, file: !1, line: 245, type: !5)
!436 = distinct !DILexicalBlock(scope: !437, file: !1, line: 244, column: 9)
!437 = distinct !DILexicalBlock(scope: !433, file: !1, line: 243, column: 5)
!438 = !DILocation(line: 245, column: 17, scope: !436)
!439 = !DILocalVariable(name: "n", scope: !436, file: !1, line: 245, type: !5)
!440 = !DILocation(line: 245, column: 20, scope: !436)
!441 = !DILocalVariable(name: "intVariable", scope: !436, file: !1, line: 245, type: !5)
!442 = !DILocation(line: 245, column: 23, scope: !436)
!443 = !DILocation(line: 246, column: 24, scope: !444)
!444 = distinct !DILexicalBlock(scope: !436, file: !1, line: 246, column: 17)
!445 = !DILocation(line: 246, column: 17, scope: !444)
!446 = !DILocation(line: 246, column: 40, scope: !444)
!447 = !DILocation(line: 246, column: 17, scope: !436)
!448 = !DILocation(line: 249, column: 29, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !1, line: 247, column: 13)
!450 = !DILocation(line: 250, column: 24, scope: !451)
!451 = distinct !DILexicalBlock(scope: !449, file: !1, line: 250, column: 17)
!452 = !DILocation(line: 250, column: 22, scope: !451)
!453 = !DILocation(line: 250, column: 29, scope: !454)
!454 = distinct !DILexicalBlock(scope: !451, file: !1, line: 250, column: 17)
!455 = !DILocation(line: 250, column: 33, scope: !454)
!456 = !DILocation(line: 250, column: 31, scope: !454)
!457 = !DILocation(line: 250, column: 17, scope: !451)
!458 = !DILocation(line: 253, column: 32, scope: !459)
!459 = distinct !DILexicalBlock(scope: !454, file: !1, line: 251, column: 17)
!460 = !DILocation(line: 254, column: 17, scope: !459)
!461 = !DILocation(line: 250, column: 37, scope: !454)
!462 = !DILocation(line: 250, column: 17, scope: !454)
!463 = distinct !{!463, !457, !464, !162}
!464 = !DILocation(line: 254, column: 17, scope: !451)
!465 = !DILocation(line: 255, column: 30, scope: !449)
!466 = !DILocation(line: 255, column: 17, scope: !449)
!467 = !DILocation(line: 256, column: 13, scope: !449)
!468 = !DILocation(line: 258, column: 5, scope: !437)
!469 = !DILocation(line: 259, column: 1, scope: !418)
!470 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_10_good", scope: !1, file: !1, line: 261, type: !11, scopeLine: 262, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!471 = !DILocation(line: 263, column: 5, scope: !470)
!472 = !DILocation(line: 264, column: 5, scope: !470)
!473 = !DILocation(line: 265, column: 5, scope: !470)
!474 = !DILocation(line: 266, column: 5, scope: !470)
!475 = !DILocation(line: 267, column: 1, scope: !470)
