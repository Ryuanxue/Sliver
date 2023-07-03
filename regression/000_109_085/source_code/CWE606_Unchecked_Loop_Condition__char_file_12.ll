; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_12.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_12_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i28 = alloca i32, align 4
  %n29 = alloca i32, align 4
  %intVariable30 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !21
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !22
  store i8* %arraydecay, i8** %data, align 8, !dbg !23
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !24
  %tobool = icmp ne i32 %call, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.else, !dbg !26

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !27, metadata !DIExpression()), !dbg !33
  %1 = load i8*, i8** %data, align 8, !dbg !34
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !35
  store i64 %call1, i64* %dataLen, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !36, metadata !DIExpression()), !dbg !93
  %2 = load i64, i64* %dataLen, align 8, !dbg !94
  %sub = sub i64 100, %2, !dbg !96
  %cmp = icmp ugt i64 %sub, 1, !dbg !97
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !98

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !99
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !101
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !102
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !104
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !105

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !106
  %5 = load i64, i64* %dataLen, align 8, !dbg !109
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !110
  %6 = load i64, i64* %dataLen, align 8, !dbg !111
  %sub6 = sub i64 100, %6, !dbg !112
  %conv = trunc i64 %sub6 to i32, !dbg !113
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !114
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !115
  %cmp8 = icmp eq i8* %call7, null, !dbg !116
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !117

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !118
  %8 = load i8*, i8** %data, align 8, !dbg !120
  %9 = load i64, i64* %dataLen, align 8, !dbg !121
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !120
  store i8 0, i8* %arrayidx, align 1, !dbg !122
  br label %if.end, !dbg !123

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !124
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !125
  br label %if.end12, !dbg !126

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !127

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end15, !dbg !128

if.else:                                          ; preds = %entry
  %11 = load i8*, i8** %data, align 8, !dbg !129
  %call14 = call i8* @strcpy(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !131
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end13
  %call16 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !132
  %tobool17 = icmp ne i32 %call16, 0, !dbg !132
  br i1 %tobool17, label %if.then18, label %if.else27, !dbg !134

if.then18:                                        ; preds = %if.end15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !135, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %n, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !141, metadata !DIExpression()), !dbg !142
  %12 = load i8*, i8** %data, align 8, !dbg !143
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #7, !dbg !145
  %cmp20 = icmp eq i32 %call19, 1, !dbg !146
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !147

if.then22:                                        ; preds = %if.then18
  store i32 0, i32* %intVariable, align 4, !dbg !148
  store i32 0, i32* %i, align 4, !dbg !150
  br label %for.cond, !dbg !152

for.cond:                                         ; preds = %for.inc, %if.then22
  %13 = load i32, i32* %i, align 4, !dbg !153
  %14 = load i32, i32* %n, align 4, !dbg !155
  %cmp23 = icmp slt i32 %13, %14, !dbg !156
  br i1 %cmp23, label %for.body, label %for.end, !dbg !157

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !158
  %inc = add nsw i32 %15, 1, !dbg !158
  store i32 %inc, i32* %intVariable, align 4, !dbg !158
  br label %for.inc, !dbg !160

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !161
  %inc25 = add nsw i32 %16, 1, !dbg !161
  store i32 %inc25, i32* %i, align 4, !dbg !161
  br label %for.cond, !dbg !162, !llvm.loop !163

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !166
  call void @printIntLine(i32 %17), !dbg !167
  br label %if.end26, !dbg !168

if.end26:                                         ; preds = %for.end, %if.then18
  br label %if.end48, !dbg !169

if.else27:                                        ; preds = %if.end15
  call void @llvm.dbg.declare(metadata i32* %i28, metadata !170, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %n29, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %intVariable30, metadata !176, metadata !DIExpression()), !dbg !177
  %18 = load i8*, i8** %data, align 8, !dbg !178
  %call31 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n29) #7, !dbg !180
  %cmp32 = icmp eq i32 %call31, 1, !dbg !181
  br i1 %cmp32, label %if.then34, label %if.end47, !dbg !182

if.then34:                                        ; preds = %if.else27
  %19 = load i32, i32* %n29, align 4, !dbg !183
  %cmp35 = icmp slt i32 %19, 10000, !dbg !186
  br i1 %cmp35, label %if.then37, label %if.end46, !dbg !187

if.then37:                                        ; preds = %if.then34
  store i32 0, i32* %intVariable30, align 4, !dbg !188
  store i32 0, i32* %i28, align 4, !dbg !190
  br label %for.cond38, !dbg !192

for.cond38:                                       ; preds = %for.inc43, %if.then37
  %20 = load i32, i32* %i28, align 4, !dbg !193
  %21 = load i32, i32* %n29, align 4, !dbg !195
  %cmp39 = icmp slt i32 %20, %21, !dbg !196
  br i1 %cmp39, label %for.body41, label %for.end45, !dbg !197

for.body41:                                       ; preds = %for.cond38
  %22 = load i32, i32* %intVariable30, align 4, !dbg !198
  %inc42 = add nsw i32 %22, 1, !dbg !198
  store i32 %inc42, i32* %intVariable30, align 4, !dbg !198
  br label %for.inc43, !dbg !200

for.inc43:                                        ; preds = %for.body41
  %23 = load i32, i32* %i28, align 4, !dbg !201
  %inc44 = add nsw i32 %23, 1, !dbg !201
  store i32 %inc44, i32* %i28, align 4, !dbg !201
  br label %for.cond38, !dbg !202, !llvm.loop !203

for.end45:                                        ; preds = %for.cond38
  %24 = load i32, i32* %intVariable30, align 4, !dbg !205
  call void @printIntLine(i32 %24), !dbg !206
  br label %if.end46, !dbg !207

if.end46:                                         ; preds = %for.end45, %if.then34
  br label %if.end47, !dbg !208

if.end47:                                         ; preds = %if.end46, %if.else27
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end26
  ret void, !dbg !209
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @globalReturnsTrueOrFalse(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !210 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %dataLen14 = alloca i64, align 8
  %pFile16 = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i54 = alloca i32, align 4
  %n55 = alloca i32, align 4
  %intVariable56 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !211, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !213, metadata !DIExpression()), !dbg !214
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !214
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !214
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !215
  store i8* %arraydecay, i8** %data, align 8, !dbg !216
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !217
  %tobool = icmp ne i32 %call, 0, !dbg !217
  br i1 %tobool, label %if.then, label %if.else, !dbg !219

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !220, metadata !DIExpression()), !dbg !223
  %1 = load i8*, i8** %data, align 8, !dbg !224
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !225
  store i64 %call1, i64* %dataLen, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !226, metadata !DIExpression()), !dbg !227
  %2 = load i64, i64* %dataLen, align 8, !dbg !228
  %sub = sub i64 100, %2, !dbg !230
  %cmp = icmp ugt i64 %sub, 1, !dbg !231
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !232

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !233
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !235
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !236
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !238
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !239

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !240
  %5 = load i64, i64* %dataLen, align 8, !dbg !243
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !244
  %6 = load i64, i64* %dataLen, align 8, !dbg !245
  %sub6 = sub i64 100, %6, !dbg !246
  %conv = trunc i64 %sub6 to i32, !dbg !247
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !248
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !249
  %cmp8 = icmp eq i8* %call7, null, !dbg !250
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !251

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !252
  %8 = load i8*, i8** %data, align 8, !dbg !254
  %9 = load i64, i64* %dataLen, align 8, !dbg !255
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !254
  store i8 0, i8* %arrayidx, align 1, !dbg !256
  br label %if.end, !dbg !257

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !258
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !259
  br label %if.end12, !dbg !260

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !261

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end37, !dbg !262

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen14, metadata !263, metadata !DIExpression()), !dbg !266
  %11 = load i8*, i8** %data, align 8, !dbg !267
  %call15 = call i64 @strlen(i8* %11) #6, !dbg !268
  store i64 %call15, i64* %dataLen14, align 8, !dbg !266
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile16, metadata !269, metadata !DIExpression()), !dbg !270
  %12 = load i64, i64* %dataLen14, align 8, !dbg !271
  %sub17 = sub i64 100, %12, !dbg !273
  %cmp18 = icmp ugt i64 %sub17, 1, !dbg !274
  br i1 %cmp18, label %if.then20, label %if.end36, !dbg !275

if.then20:                                        ; preds = %if.else
  %call21 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !276
  store %struct._IO_FILE* %call21, %struct._IO_FILE** %pFile16, align 8, !dbg !278
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile16, align 8, !dbg !279
  %cmp22 = icmp ne %struct._IO_FILE* %13, null, !dbg !281
  br i1 %cmp22, label %if.then24, label %if.end35, !dbg !282

if.then24:                                        ; preds = %if.then20
  %14 = load i8*, i8** %data, align 8, !dbg !283
  %15 = load i64, i64* %dataLen14, align 8, !dbg !286
  %add.ptr25 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !287
  %16 = load i64, i64* %dataLen14, align 8, !dbg !288
  %sub26 = sub i64 100, %16, !dbg !289
  %conv27 = trunc i64 %sub26 to i32, !dbg !290
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile16, align 8, !dbg !291
  %call28 = call i8* @fgets(i8* %add.ptr25, i32 %conv27, %struct._IO_FILE* %17), !dbg !292
  %cmp29 = icmp eq i8* %call28, null, !dbg !293
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !294

if.then31:                                        ; preds = %if.then24
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !295
  %18 = load i8*, i8** %data, align 8, !dbg !297
  %19 = load i64, i64* %dataLen14, align 8, !dbg !298
  %arrayidx32 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !297
  store i8 0, i8* %arrayidx32, align 1, !dbg !299
  br label %if.end33, !dbg !300

if.end33:                                         ; preds = %if.then31, %if.then24
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile16, align 8, !dbg !301
  %call34 = call i32 @fclose(%struct._IO_FILE* %20), !dbg !302
  br label %if.end35, !dbg !303

if.end35:                                         ; preds = %if.end33, %if.then20
  br label %if.end36, !dbg !304

if.end36:                                         ; preds = %if.end35, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end13
  %call38 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !305
  %tobool39 = icmp ne i32 %call38, 0, !dbg !305
  br i1 %tobool39, label %if.then40, label %if.else53, !dbg !307

if.then40:                                        ; preds = %if.end37
  call void @llvm.dbg.declare(metadata i32* %i, metadata !308, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.declare(metadata i32* %n, metadata !312, metadata !DIExpression()), !dbg !313
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !314, metadata !DIExpression()), !dbg !315
  %21 = load i8*, i8** %data, align 8, !dbg !316
  %call41 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #7, !dbg !318
  %cmp42 = icmp eq i32 %call41, 1, !dbg !319
  br i1 %cmp42, label %if.then44, label %if.end52, !dbg !320

if.then44:                                        ; preds = %if.then40
  %22 = load i32, i32* %n, align 4, !dbg !321
  %cmp45 = icmp slt i32 %22, 10000, !dbg !324
  br i1 %cmp45, label %if.then47, label %if.end51, !dbg !325

if.then47:                                        ; preds = %if.then44
  store i32 0, i32* %intVariable, align 4, !dbg !326
  store i32 0, i32* %i, align 4, !dbg !328
  br label %for.cond, !dbg !330

for.cond:                                         ; preds = %for.inc, %if.then47
  %23 = load i32, i32* %i, align 4, !dbg !331
  %24 = load i32, i32* %n, align 4, !dbg !333
  %cmp48 = icmp slt i32 %23, %24, !dbg !334
  br i1 %cmp48, label %for.body, label %for.end, !dbg !335

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %intVariable, align 4, !dbg !336
  %inc = add nsw i32 %25, 1, !dbg !336
  store i32 %inc, i32* %intVariable, align 4, !dbg !336
  br label %for.inc, !dbg !338

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !dbg !339
  %inc50 = add nsw i32 %26, 1, !dbg !339
  store i32 %inc50, i32* %i, align 4, !dbg !339
  br label %for.cond, !dbg !340, !llvm.loop !341

for.end:                                          ; preds = %for.cond
  %27 = load i32, i32* %intVariable, align 4, !dbg !343
  call void @printIntLine(i32 %27), !dbg !344
  br label %if.end51, !dbg !345

if.end51:                                         ; preds = %for.end, %if.then44
  br label %if.end52, !dbg !346

if.end52:                                         ; preds = %if.end51, %if.then40
  br label %if.end74, !dbg !347

if.else53:                                        ; preds = %if.end37
  call void @llvm.dbg.declare(metadata i32* %i54, metadata !348, metadata !DIExpression()), !dbg !351
  call void @llvm.dbg.declare(metadata i32* %n55, metadata !352, metadata !DIExpression()), !dbg !353
  call void @llvm.dbg.declare(metadata i32* %intVariable56, metadata !354, metadata !DIExpression()), !dbg !355
  %28 = load i8*, i8** %data, align 8, !dbg !356
  %call57 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n55) #7, !dbg !358
  %cmp58 = icmp eq i32 %call57, 1, !dbg !359
  br i1 %cmp58, label %if.then60, label %if.end73, !dbg !360

if.then60:                                        ; preds = %if.else53
  %29 = load i32, i32* %n55, align 4, !dbg !361
  %cmp61 = icmp slt i32 %29, 10000, !dbg !364
  br i1 %cmp61, label %if.then63, label %if.end72, !dbg !365

if.then63:                                        ; preds = %if.then60
  store i32 0, i32* %intVariable56, align 4, !dbg !366
  store i32 0, i32* %i54, align 4, !dbg !368
  br label %for.cond64, !dbg !370

for.cond64:                                       ; preds = %for.inc69, %if.then63
  %30 = load i32, i32* %i54, align 4, !dbg !371
  %31 = load i32, i32* %n55, align 4, !dbg !373
  %cmp65 = icmp slt i32 %30, %31, !dbg !374
  br i1 %cmp65, label %for.body67, label %for.end71, !dbg !375

for.body67:                                       ; preds = %for.cond64
  %32 = load i32, i32* %intVariable56, align 4, !dbg !376
  %inc68 = add nsw i32 %32, 1, !dbg !376
  store i32 %inc68, i32* %intVariable56, align 4, !dbg !376
  br label %for.inc69, !dbg !378

for.inc69:                                        ; preds = %for.body67
  %33 = load i32, i32* %i54, align 4, !dbg !379
  %inc70 = add nsw i32 %33, 1, !dbg !379
  store i32 %inc70, i32* %i54, align 4, !dbg !379
  br label %for.cond64, !dbg !380, !llvm.loop !381

for.end71:                                        ; preds = %for.cond64
  %34 = load i32, i32* %intVariable56, align 4, !dbg !383
  call void @printIntLine(i32 %34), !dbg !384
  br label %if.end72, !dbg !385

if.end72:                                         ; preds = %for.end71, %if.then60
  br label %if.end73, !dbg !386

if.end73:                                         ; preds = %if.end72, %if.else53
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.end52
  ret void, !dbg !387
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !388 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  %i12 = alloca i32, align 4
  %n13 = alloca i32, align 4
  %intVariable14 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !389, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !391, metadata !DIExpression()), !dbg !392
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !392
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !392
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !393
  store i8* %arraydecay, i8** %data, align 8, !dbg !394
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !395
  %tobool = icmp ne i32 %call, 0, !dbg !395
  br i1 %tobool, label %if.then, label %if.else, !dbg !397

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !398
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !400
  br label %if.end, !dbg !401

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !402
  %call2 = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !404
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call3 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !405
  %tobool4 = icmp ne i32 %call3, 0, !dbg !405
  br i1 %tobool4, label %if.then5, label %if.else11, !dbg !407

if.then5:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !408, metadata !DIExpression()), !dbg !411
  call void @llvm.dbg.declare(metadata i32* %n, metadata !412, metadata !DIExpression()), !dbg !413
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !414, metadata !DIExpression()), !dbg !415
  %3 = load i8*, i8** %data, align 8, !dbg !416
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n) #7, !dbg !418
  %cmp = icmp eq i32 %call6, 1, !dbg !419
  br i1 %cmp, label %if.then7, label %if.end10, !dbg !420

if.then7:                                         ; preds = %if.then5
  store i32 0, i32* %intVariable, align 4, !dbg !421
  store i32 0, i32* %i, align 4, !dbg !423
  br label %for.cond, !dbg !425

for.cond:                                         ; preds = %for.inc, %if.then7
  %4 = load i32, i32* %i, align 4, !dbg !426
  %5 = load i32, i32* %n, align 4, !dbg !428
  %cmp8 = icmp slt i32 %4, %5, !dbg !429
  br i1 %cmp8, label %for.body, label %for.end, !dbg !430

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !431
  %inc = add nsw i32 %6, 1, !dbg !431
  store i32 %inc, i32* %intVariable, align 4, !dbg !431
  br label %for.inc, !dbg !433

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !434
  %inc9 = add nsw i32 %7, 1, !dbg !434
  store i32 %inc9, i32* %i, align 4, !dbg !434
  br label %for.cond, !dbg !435, !llvm.loop !436

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !438
  call void @printIntLine(i32 %8), !dbg !439
  br label %if.end10, !dbg !440

if.end10:                                         ; preds = %for.end, %if.then5
  br label %if.end26, !dbg !441

if.else11:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i12, metadata !442, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata i32* %n13, metadata !446, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.declare(metadata i32* %intVariable14, metadata !448, metadata !DIExpression()), !dbg !449
  %9 = load i8*, i8** %data, align 8, !dbg !450
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32* %n13) #7, !dbg !452
  %cmp16 = icmp eq i32 %call15, 1, !dbg !453
  br i1 %cmp16, label %if.then17, label %if.end25, !dbg !454

if.then17:                                        ; preds = %if.else11
  store i32 0, i32* %intVariable14, align 4, !dbg !455
  store i32 0, i32* %i12, align 4, !dbg !457
  br label %for.cond18, !dbg !459

for.cond18:                                       ; preds = %for.inc22, %if.then17
  %10 = load i32, i32* %i12, align 4, !dbg !460
  %11 = load i32, i32* %n13, align 4, !dbg !462
  %cmp19 = icmp slt i32 %10, %11, !dbg !463
  br i1 %cmp19, label %for.body20, label %for.end24, !dbg !464

for.body20:                                       ; preds = %for.cond18
  %12 = load i32, i32* %intVariable14, align 4, !dbg !465
  %inc21 = add nsw i32 %12, 1, !dbg !465
  store i32 %inc21, i32* %intVariable14, align 4, !dbg !465
  br label %for.inc22, !dbg !467

for.inc22:                                        ; preds = %for.body20
  %13 = load i32, i32* %i12, align 4, !dbg !468
  %inc23 = add nsw i32 %13, 1, !dbg !468
  store i32 %inc23, i32* %i12, align 4, !dbg !468
  br label %for.cond18, !dbg !469, !llvm.loop !470

for.end24:                                        ; preds = %for.cond18
  %14 = load i32, i32* %intVariable14, align 4, !dbg !472
  call void @printIntLine(i32 %14), !dbg !473
  br label %if.end25, !dbg !474

if.end25:                                         ; preds = %for.end24, %if.else11
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end10
  ret void, !dbg !475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_12_good() #0 !dbg !476 {
entry:
  call void @goodB2G(), !dbg !477
  call void @goodG2B(), !dbg !478
  ret void, !dbg !479
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_12.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_085/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_12_bad", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!129 = !DILocation(line: 67, column: 16, scope: !130)
!130 = distinct !DILexicalBlock(scope: !25, file: !1, line: 65, column: 5)
!131 = !DILocation(line: 67, column: 9, scope: !130)
!132 = !DILocation(line: 69, column: 8, scope: !133)
!133 = distinct !DILexicalBlock(scope: !10, file: !1, line: 69, column: 8)
!134 = !DILocation(line: 69, column: 8, scope: !10)
!135 = !DILocalVariable(name: "i", scope: !136, file: !1, line: 72, type: !5)
!136 = distinct !DILexicalBlock(scope: !137, file: !1, line: 71, column: 9)
!137 = distinct !DILexicalBlock(scope: !133, file: !1, line: 70, column: 5)
!138 = !DILocation(line: 72, column: 17, scope: !136)
!139 = !DILocalVariable(name: "n", scope: !136, file: !1, line: 72, type: !5)
!140 = !DILocation(line: 72, column: 20, scope: !136)
!141 = !DILocalVariable(name: "intVariable", scope: !136, file: !1, line: 72, type: !5)
!142 = !DILocation(line: 72, column: 23, scope: !136)
!143 = !DILocation(line: 73, column: 24, scope: !144)
!144 = distinct !DILexicalBlock(scope: !136, file: !1, line: 73, column: 17)
!145 = !DILocation(line: 73, column: 17, scope: !144)
!146 = !DILocation(line: 73, column: 40, scope: !144)
!147 = !DILocation(line: 73, column: 17, scope: !136)
!148 = !DILocation(line: 76, column: 29, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !1, line: 74, column: 13)
!150 = !DILocation(line: 77, column: 24, scope: !151)
!151 = distinct !DILexicalBlock(scope: !149, file: !1, line: 77, column: 17)
!152 = !DILocation(line: 77, column: 22, scope: !151)
!153 = !DILocation(line: 77, column: 29, scope: !154)
!154 = distinct !DILexicalBlock(scope: !151, file: !1, line: 77, column: 17)
!155 = !DILocation(line: 77, column: 33, scope: !154)
!156 = !DILocation(line: 77, column: 31, scope: !154)
!157 = !DILocation(line: 77, column: 17, scope: !151)
!158 = !DILocation(line: 80, column: 32, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !1, line: 78, column: 17)
!160 = !DILocation(line: 81, column: 17, scope: !159)
!161 = !DILocation(line: 77, column: 37, scope: !154)
!162 = !DILocation(line: 77, column: 17, scope: !154)
!163 = distinct !{!163, !157, !164, !165}
!164 = !DILocation(line: 81, column: 17, scope: !151)
!165 = !{!"llvm.loop.mustprogress"}
!166 = !DILocation(line: 82, column: 30, scope: !149)
!167 = !DILocation(line: 82, column: 17, scope: !149)
!168 = !DILocation(line: 83, column: 13, scope: !149)
!169 = !DILocation(line: 85, column: 5, scope: !137)
!170 = !DILocalVariable(name: "i", scope: !171, file: !1, line: 89, type: !5)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 88, column: 9)
!172 = distinct !DILexicalBlock(scope: !133, file: !1, line: 87, column: 5)
!173 = !DILocation(line: 89, column: 17, scope: !171)
!174 = !DILocalVariable(name: "n", scope: !171, file: !1, line: 89, type: !5)
!175 = !DILocation(line: 89, column: 20, scope: !171)
!176 = !DILocalVariable(name: "intVariable", scope: !171, file: !1, line: 89, type: !5)
!177 = !DILocation(line: 89, column: 23, scope: !171)
!178 = !DILocation(line: 90, column: 24, scope: !179)
!179 = distinct !DILexicalBlock(scope: !171, file: !1, line: 90, column: 17)
!180 = !DILocation(line: 90, column: 17, scope: !179)
!181 = !DILocation(line: 90, column: 40, scope: !179)
!182 = !DILocation(line: 90, column: 17, scope: !171)
!183 = !DILocation(line: 93, column: 21, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 93, column: 21)
!185 = distinct !DILexicalBlock(scope: !179, file: !1, line: 91, column: 13)
!186 = !DILocation(line: 93, column: 23, scope: !184)
!187 = !DILocation(line: 93, column: 21, scope: !185)
!188 = !DILocation(line: 95, column: 33, scope: !189)
!189 = distinct !DILexicalBlock(scope: !184, file: !1, line: 94, column: 17)
!190 = !DILocation(line: 96, column: 28, scope: !191)
!191 = distinct !DILexicalBlock(scope: !189, file: !1, line: 96, column: 21)
!192 = !DILocation(line: 96, column: 26, scope: !191)
!193 = !DILocation(line: 96, column: 33, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !1, line: 96, column: 21)
!195 = !DILocation(line: 96, column: 37, scope: !194)
!196 = !DILocation(line: 96, column: 35, scope: !194)
!197 = !DILocation(line: 96, column: 21, scope: !191)
!198 = !DILocation(line: 99, column: 36, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !1, line: 97, column: 21)
!200 = !DILocation(line: 100, column: 21, scope: !199)
!201 = !DILocation(line: 96, column: 41, scope: !194)
!202 = !DILocation(line: 96, column: 21, scope: !194)
!203 = distinct !{!203, !197, !204, !165}
!204 = !DILocation(line: 100, column: 21, scope: !191)
!205 = !DILocation(line: 101, column: 34, scope: !189)
!206 = !DILocation(line: 101, column: 21, scope: !189)
!207 = !DILocation(line: 102, column: 17, scope: !189)
!208 = !DILocation(line: 103, column: 13, scope: !185)
!209 = !DILocation(line: 106, column: 1, scope: !10)
!210 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 115, type: !11, scopeLine: 116, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!211 = !DILocalVariable(name: "data", scope: !210, file: !1, line: 117, type: !14)
!212 = !DILocation(line: 117, column: 12, scope: !210)
!213 = !DILocalVariable(name: "dataBuffer", scope: !210, file: !1, line: 118, type: !18)
!214 = !DILocation(line: 118, column: 10, scope: !210)
!215 = !DILocation(line: 119, column: 12, scope: !210)
!216 = !DILocation(line: 119, column: 10, scope: !210)
!217 = !DILocation(line: 120, column: 8, scope: !218)
!218 = distinct !DILexicalBlock(scope: !210, file: !1, line: 120, column: 8)
!219 = !DILocation(line: 120, column: 8, scope: !210)
!220 = !DILocalVariable(name: "dataLen", scope: !221, file: !1, line: 124, type: !30)
!221 = distinct !DILexicalBlock(scope: !222, file: !1, line: 122, column: 9)
!222 = distinct !DILexicalBlock(scope: !218, file: !1, line: 121, column: 5)
!223 = !DILocation(line: 124, column: 20, scope: !221)
!224 = !DILocation(line: 124, column: 37, scope: !221)
!225 = !DILocation(line: 124, column: 30, scope: !221)
!226 = !DILocalVariable(name: "pFile", scope: !221, file: !1, line: 125, type: !37)
!227 = !DILocation(line: 125, column: 20, scope: !221)
!228 = !DILocation(line: 127, column: 21, scope: !229)
!229 = distinct !DILexicalBlock(scope: !221, file: !1, line: 127, column: 17)
!230 = !DILocation(line: 127, column: 20, scope: !229)
!231 = !DILocation(line: 127, column: 29, scope: !229)
!232 = !DILocation(line: 127, column: 17, scope: !221)
!233 = !DILocation(line: 129, column: 25, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !1, line: 128, column: 13)
!235 = !DILocation(line: 129, column: 23, scope: !234)
!236 = !DILocation(line: 130, column: 21, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !1, line: 130, column: 21)
!238 = !DILocation(line: 130, column: 27, scope: !237)
!239 = !DILocation(line: 130, column: 21, scope: !234)
!240 = !DILocation(line: 133, column: 31, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 133, column: 25)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 131, column: 17)
!243 = !DILocation(line: 133, column: 36, scope: !241)
!244 = !DILocation(line: 133, column: 35, scope: !241)
!245 = !DILocation(line: 133, column: 55, scope: !241)
!246 = !DILocation(line: 133, column: 54, scope: !241)
!247 = !DILocation(line: 133, column: 45, scope: !241)
!248 = !DILocation(line: 133, column: 65, scope: !241)
!249 = !DILocation(line: 133, column: 25, scope: !241)
!250 = !DILocation(line: 133, column: 72, scope: !241)
!251 = !DILocation(line: 133, column: 25, scope: !242)
!252 = !DILocation(line: 135, column: 25, scope: !253)
!253 = distinct !DILexicalBlock(scope: !241, file: !1, line: 134, column: 21)
!254 = !DILocation(line: 137, column: 25, scope: !253)
!255 = !DILocation(line: 137, column: 30, scope: !253)
!256 = !DILocation(line: 137, column: 39, scope: !253)
!257 = !DILocation(line: 138, column: 21, scope: !253)
!258 = !DILocation(line: 139, column: 28, scope: !242)
!259 = !DILocation(line: 139, column: 21, scope: !242)
!260 = !DILocation(line: 140, column: 17, scope: !242)
!261 = !DILocation(line: 141, column: 13, scope: !234)
!262 = !DILocation(line: 143, column: 5, scope: !222)
!263 = !DILocalVariable(name: "dataLen", scope: !264, file: !1, line: 148, type: !30)
!264 = distinct !DILexicalBlock(scope: !265, file: !1, line: 146, column: 9)
!265 = distinct !DILexicalBlock(scope: !218, file: !1, line: 145, column: 5)
!266 = !DILocation(line: 148, column: 20, scope: !264)
!267 = !DILocation(line: 148, column: 37, scope: !264)
!268 = !DILocation(line: 148, column: 30, scope: !264)
!269 = !DILocalVariable(name: "pFile", scope: !264, file: !1, line: 149, type: !37)
!270 = !DILocation(line: 149, column: 20, scope: !264)
!271 = !DILocation(line: 151, column: 21, scope: !272)
!272 = distinct !DILexicalBlock(scope: !264, file: !1, line: 151, column: 17)
!273 = !DILocation(line: 151, column: 20, scope: !272)
!274 = !DILocation(line: 151, column: 29, scope: !272)
!275 = !DILocation(line: 151, column: 17, scope: !264)
!276 = !DILocation(line: 153, column: 25, scope: !277)
!277 = distinct !DILexicalBlock(scope: !272, file: !1, line: 152, column: 13)
!278 = !DILocation(line: 153, column: 23, scope: !277)
!279 = !DILocation(line: 154, column: 21, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !1, line: 154, column: 21)
!281 = !DILocation(line: 154, column: 27, scope: !280)
!282 = !DILocation(line: 154, column: 21, scope: !277)
!283 = !DILocation(line: 157, column: 31, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 157, column: 25)
!285 = distinct !DILexicalBlock(scope: !280, file: !1, line: 155, column: 17)
!286 = !DILocation(line: 157, column: 36, scope: !284)
!287 = !DILocation(line: 157, column: 35, scope: !284)
!288 = !DILocation(line: 157, column: 55, scope: !284)
!289 = !DILocation(line: 157, column: 54, scope: !284)
!290 = !DILocation(line: 157, column: 45, scope: !284)
!291 = !DILocation(line: 157, column: 65, scope: !284)
!292 = !DILocation(line: 157, column: 25, scope: !284)
!293 = !DILocation(line: 157, column: 72, scope: !284)
!294 = !DILocation(line: 157, column: 25, scope: !285)
!295 = !DILocation(line: 159, column: 25, scope: !296)
!296 = distinct !DILexicalBlock(scope: !284, file: !1, line: 158, column: 21)
!297 = !DILocation(line: 161, column: 25, scope: !296)
!298 = !DILocation(line: 161, column: 30, scope: !296)
!299 = !DILocation(line: 161, column: 39, scope: !296)
!300 = !DILocation(line: 162, column: 21, scope: !296)
!301 = !DILocation(line: 163, column: 28, scope: !285)
!302 = !DILocation(line: 163, column: 21, scope: !285)
!303 = !DILocation(line: 164, column: 17, scope: !285)
!304 = !DILocation(line: 165, column: 13, scope: !277)
!305 = !DILocation(line: 168, column: 8, scope: !306)
!306 = distinct !DILexicalBlock(scope: !210, file: !1, line: 168, column: 8)
!307 = !DILocation(line: 168, column: 8, scope: !210)
!308 = !DILocalVariable(name: "i", scope: !309, file: !1, line: 171, type: !5)
!309 = distinct !DILexicalBlock(scope: !310, file: !1, line: 170, column: 9)
!310 = distinct !DILexicalBlock(scope: !306, file: !1, line: 169, column: 5)
!311 = !DILocation(line: 171, column: 17, scope: !309)
!312 = !DILocalVariable(name: "n", scope: !309, file: !1, line: 171, type: !5)
!313 = !DILocation(line: 171, column: 20, scope: !309)
!314 = !DILocalVariable(name: "intVariable", scope: !309, file: !1, line: 171, type: !5)
!315 = !DILocation(line: 171, column: 23, scope: !309)
!316 = !DILocation(line: 172, column: 24, scope: !317)
!317 = distinct !DILexicalBlock(scope: !309, file: !1, line: 172, column: 17)
!318 = !DILocation(line: 172, column: 17, scope: !317)
!319 = !DILocation(line: 172, column: 40, scope: !317)
!320 = !DILocation(line: 172, column: 17, scope: !309)
!321 = !DILocation(line: 175, column: 21, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !1, line: 175, column: 21)
!323 = distinct !DILexicalBlock(scope: !317, file: !1, line: 173, column: 13)
!324 = !DILocation(line: 175, column: 23, scope: !322)
!325 = !DILocation(line: 175, column: 21, scope: !323)
!326 = !DILocation(line: 177, column: 33, scope: !327)
!327 = distinct !DILexicalBlock(scope: !322, file: !1, line: 176, column: 17)
!328 = !DILocation(line: 178, column: 28, scope: !329)
!329 = distinct !DILexicalBlock(scope: !327, file: !1, line: 178, column: 21)
!330 = !DILocation(line: 178, column: 26, scope: !329)
!331 = !DILocation(line: 178, column: 33, scope: !332)
!332 = distinct !DILexicalBlock(scope: !329, file: !1, line: 178, column: 21)
!333 = !DILocation(line: 178, column: 37, scope: !332)
!334 = !DILocation(line: 178, column: 35, scope: !332)
!335 = !DILocation(line: 178, column: 21, scope: !329)
!336 = !DILocation(line: 181, column: 36, scope: !337)
!337 = distinct !DILexicalBlock(scope: !332, file: !1, line: 179, column: 21)
!338 = !DILocation(line: 182, column: 21, scope: !337)
!339 = !DILocation(line: 178, column: 41, scope: !332)
!340 = !DILocation(line: 178, column: 21, scope: !332)
!341 = distinct !{!341, !335, !342, !165}
!342 = !DILocation(line: 182, column: 21, scope: !329)
!343 = !DILocation(line: 183, column: 34, scope: !327)
!344 = !DILocation(line: 183, column: 21, scope: !327)
!345 = !DILocation(line: 184, column: 17, scope: !327)
!346 = !DILocation(line: 185, column: 13, scope: !323)
!347 = !DILocation(line: 187, column: 5, scope: !310)
!348 = !DILocalVariable(name: "i", scope: !349, file: !1, line: 191, type: !5)
!349 = distinct !DILexicalBlock(scope: !350, file: !1, line: 190, column: 9)
!350 = distinct !DILexicalBlock(scope: !306, file: !1, line: 189, column: 5)
!351 = !DILocation(line: 191, column: 17, scope: !349)
!352 = !DILocalVariable(name: "n", scope: !349, file: !1, line: 191, type: !5)
!353 = !DILocation(line: 191, column: 20, scope: !349)
!354 = !DILocalVariable(name: "intVariable", scope: !349, file: !1, line: 191, type: !5)
!355 = !DILocation(line: 191, column: 23, scope: !349)
!356 = !DILocation(line: 192, column: 24, scope: !357)
!357 = distinct !DILexicalBlock(scope: !349, file: !1, line: 192, column: 17)
!358 = !DILocation(line: 192, column: 17, scope: !357)
!359 = !DILocation(line: 192, column: 40, scope: !357)
!360 = !DILocation(line: 192, column: 17, scope: !349)
!361 = !DILocation(line: 195, column: 21, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !1, line: 195, column: 21)
!363 = distinct !DILexicalBlock(scope: !357, file: !1, line: 193, column: 13)
!364 = !DILocation(line: 195, column: 23, scope: !362)
!365 = !DILocation(line: 195, column: 21, scope: !363)
!366 = !DILocation(line: 197, column: 33, scope: !367)
!367 = distinct !DILexicalBlock(scope: !362, file: !1, line: 196, column: 17)
!368 = !DILocation(line: 198, column: 28, scope: !369)
!369 = distinct !DILexicalBlock(scope: !367, file: !1, line: 198, column: 21)
!370 = !DILocation(line: 198, column: 26, scope: !369)
!371 = !DILocation(line: 198, column: 33, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !1, line: 198, column: 21)
!373 = !DILocation(line: 198, column: 37, scope: !372)
!374 = !DILocation(line: 198, column: 35, scope: !372)
!375 = !DILocation(line: 198, column: 21, scope: !369)
!376 = !DILocation(line: 201, column: 36, scope: !377)
!377 = distinct !DILexicalBlock(scope: !372, file: !1, line: 199, column: 21)
!378 = !DILocation(line: 202, column: 21, scope: !377)
!379 = !DILocation(line: 198, column: 41, scope: !372)
!380 = !DILocation(line: 198, column: 21, scope: !372)
!381 = distinct !{!381, !375, !382, !165}
!382 = !DILocation(line: 202, column: 21, scope: !369)
!383 = !DILocation(line: 203, column: 34, scope: !367)
!384 = !DILocation(line: 203, column: 21, scope: !367)
!385 = !DILocation(line: 204, column: 17, scope: !367)
!386 = !DILocation(line: 205, column: 13, scope: !363)
!387 = !DILocation(line: 208, column: 1, scope: !210)
!388 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 213, type: !11, scopeLine: 214, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!389 = !DILocalVariable(name: "data", scope: !388, file: !1, line: 215, type: !14)
!390 = !DILocation(line: 215, column: 12, scope: !388)
!391 = !DILocalVariable(name: "dataBuffer", scope: !388, file: !1, line: 216, type: !18)
!392 = !DILocation(line: 216, column: 10, scope: !388)
!393 = !DILocation(line: 217, column: 12, scope: !388)
!394 = !DILocation(line: 217, column: 10, scope: !388)
!395 = !DILocation(line: 218, column: 8, scope: !396)
!396 = distinct !DILexicalBlock(scope: !388, file: !1, line: 218, column: 8)
!397 = !DILocation(line: 218, column: 8, scope: !388)
!398 = !DILocation(line: 221, column: 16, scope: !399)
!399 = distinct !DILexicalBlock(scope: !396, file: !1, line: 219, column: 5)
!400 = !DILocation(line: 221, column: 9, scope: !399)
!401 = !DILocation(line: 222, column: 5, scope: !399)
!402 = !DILocation(line: 226, column: 16, scope: !403)
!403 = distinct !DILexicalBlock(scope: !396, file: !1, line: 224, column: 5)
!404 = !DILocation(line: 226, column: 9, scope: !403)
!405 = !DILocation(line: 228, column: 8, scope: !406)
!406 = distinct !DILexicalBlock(scope: !388, file: !1, line: 228, column: 8)
!407 = !DILocation(line: 228, column: 8, scope: !388)
!408 = !DILocalVariable(name: "i", scope: !409, file: !1, line: 231, type: !5)
!409 = distinct !DILexicalBlock(scope: !410, file: !1, line: 230, column: 9)
!410 = distinct !DILexicalBlock(scope: !406, file: !1, line: 229, column: 5)
!411 = !DILocation(line: 231, column: 17, scope: !409)
!412 = !DILocalVariable(name: "n", scope: !409, file: !1, line: 231, type: !5)
!413 = !DILocation(line: 231, column: 20, scope: !409)
!414 = !DILocalVariable(name: "intVariable", scope: !409, file: !1, line: 231, type: !5)
!415 = !DILocation(line: 231, column: 23, scope: !409)
!416 = !DILocation(line: 232, column: 24, scope: !417)
!417 = distinct !DILexicalBlock(scope: !409, file: !1, line: 232, column: 17)
!418 = !DILocation(line: 232, column: 17, scope: !417)
!419 = !DILocation(line: 232, column: 40, scope: !417)
!420 = !DILocation(line: 232, column: 17, scope: !409)
!421 = !DILocation(line: 235, column: 29, scope: !422)
!422 = distinct !DILexicalBlock(scope: !417, file: !1, line: 233, column: 13)
!423 = !DILocation(line: 236, column: 24, scope: !424)
!424 = distinct !DILexicalBlock(scope: !422, file: !1, line: 236, column: 17)
!425 = !DILocation(line: 236, column: 22, scope: !424)
!426 = !DILocation(line: 236, column: 29, scope: !427)
!427 = distinct !DILexicalBlock(scope: !424, file: !1, line: 236, column: 17)
!428 = !DILocation(line: 236, column: 33, scope: !427)
!429 = !DILocation(line: 236, column: 31, scope: !427)
!430 = !DILocation(line: 236, column: 17, scope: !424)
!431 = !DILocation(line: 239, column: 32, scope: !432)
!432 = distinct !DILexicalBlock(scope: !427, file: !1, line: 237, column: 17)
!433 = !DILocation(line: 240, column: 17, scope: !432)
!434 = !DILocation(line: 236, column: 37, scope: !427)
!435 = !DILocation(line: 236, column: 17, scope: !427)
!436 = distinct !{!436, !430, !437, !165}
!437 = !DILocation(line: 240, column: 17, scope: !424)
!438 = !DILocation(line: 241, column: 30, scope: !422)
!439 = !DILocation(line: 241, column: 17, scope: !422)
!440 = !DILocation(line: 242, column: 13, scope: !422)
!441 = !DILocation(line: 244, column: 5, scope: !410)
!442 = !DILocalVariable(name: "i", scope: !443, file: !1, line: 248, type: !5)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 247, column: 9)
!444 = distinct !DILexicalBlock(scope: !406, file: !1, line: 246, column: 5)
!445 = !DILocation(line: 248, column: 17, scope: !443)
!446 = !DILocalVariable(name: "n", scope: !443, file: !1, line: 248, type: !5)
!447 = !DILocation(line: 248, column: 20, scope: !443)
!448 = !DILocalVariable(name: "intVariable", scope: !443, file: !1, line: 248, type: !5)
!449 = !DILocation(line: 248, column: 23, scope: !443)
!450 = !DILocation(line: 249, column: 24, scope: !451)
!451 = distinct !DILexicalBlock(scope: !443, file: !1, line: 249, column: 17)
!452 = !DILocation(line: 249, column: 17, scope: !451)
!453 = !DILocation(line: 249, column: 40, scope: !451)
!454 = !DILocation(line: 249, column: 17, scope: !443)
!455 = !DILocation(line: 252, column: 29, scope: !456)
!456 = distinct !DILexicalBlock(scope: !451, file: !1, line: 250, column: 13)
!457 = !DILocation(line: 253, column: 24, scope: !458)
!458 = distinct !DILexicalBlock(scope: !456, file: !1, line: 253, column: 17)
!459 = !DILocation(line: 253, column: 22, scope: !458)
!460 = !DILocation(line: 253, column: 29, scope: !461)
!461 = distinct !DILexicalBlock(scope: !458, file: !1, line: 253, column: 17)
!462 = !DILocation(line: 253, column: 33, scope: !461)
!463 = !DILocation(line: 253, column: 31, scope: !461)
!464 = !DILocation(line: 253, column: 17, scope: !458)
!465 = !DILocation(line: 256, column: 32, scope: !466)
!466 = distinct !DILexicalBlock(scope: !461, file: !1, line: 254, column: 17)
!467 = !DILocation(line: 257, column: 17, scope: !466)
!468 = !DILocation(line: 253, column: 37, scope: !461)
!469 = !DILocation(line: 253, column: 17, scope: !461)
!470 = distinct !{!470, !464, !471, !165}
!471 = !DILocation(line: 257, column: 17, scope: !458)
!472 = !DILocation(line: 258, column: 30, scope: !456)
!473 = !DILocation(line: 258, column: 17, scope: !456)
!474 = !DILocation(line: 259, column: 13, scope: !456)
!475 = !DILocation(line: 262, column: 1, scope: !388)
!476 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_12_good", scope: !1, file: !1, line: 264, type: !11, scopeLine: 265, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!477 = !DILocation(line: 266, column: 5, scope: !476)
!478 = !DILocation(line: 267, column: 5, scope: !476)
!479 = !DILocation(line: 268, column: 1, scope: !476)
