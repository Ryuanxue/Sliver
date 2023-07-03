; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_07.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_07.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@staticFive = dso_local global i32 5, align 4, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_07_bad() #0 !dbg !13 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !16, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !20, metadata !DIExpression()), !dbg !24
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !24
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !24
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !25
  store i8* %arraydecay, i8** %data, align 8, !dbg !26
  %1 = load i32, i32* @staticFive, align 4, !dbg !27
  %cmp = icmp eq i32 %1, 5, !dbg !29
  br i1 %cmp, label %if.then, label %if.end14, !dbg !30

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !31, metadata !DIExpression()), !dbg !37
  %2 = load i8*, i8** %data, align 8, !dbg !38
  %call = call i64 @strlen(i8* %2) #6, !dbg !39
  store i64 %call, i64* %dataLen, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !40, metadata !DIExpression()), !dbg !97
  %3 = load i64, i64* %dataLen, align 8, !dbg !98
  %sub = sub i64 100, %3, !dbg !100
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !101
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !102

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !103
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !105
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !106
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !108
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !109

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !110
  %6 = load i64, i64* %dataLen, align 8, !dbg !113
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !114
  %7 = load i64, i64* %dataLen, align 8, !dbg !115
  %sub6 = sub i64 100, %7, !dbg !116
  %conv = trunc i64 %sub6 to i32, !dbg !117
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !118
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !119
  %cmp8 = icmp eq i8* %call7, null, !dbg !120
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !121

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !122
  %9 = load i8*, i8** %data, align 8, !dbg !124
  %10 = load i64, i64* %dataLen, align 8, !dbg !125
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !124
  store i8 0, i8* %arrayidx, align 1, !dbg !126
  br label %if.end, !dbg !127

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !128
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !129
  br label %if.end12, !dbg !130

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !131

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !132

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @staticFive, align 4, !dbg !133
  %cmp15 = icmp eq i32 %12, 5, !dbg !135
  br i1 %cmp15, label %if.then17, label %if.end26, !dbg !136

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !137, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %n, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !143, metadata !DIExpression()), !dbg !144
  %13 = load i8*, i8** %data, align 8, !dbg !145
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !147
  %cmp19 = icmp eq i32 %call18, 1, !dbg !148
  br i1 %cmp19, label %if.then21, label %if.end25, !dbg !149

if.then21:                                        ; preds = %if.then17
  store i32 0, i32* %intVariable, align 4, !dbg !150
  store i32 0, i32* %i, align 4, !dbg !152
  br label %for.cond, !dbg !154

for.cond:                                         ; preds = %for.inc, %if.then21
  %14 = load i32, i32* %i, align 4, !dbg !155
  %15 = load i32, i32* %n, align 4, !dbg !157
  %cmp22 = icmp slt i32 %14, %15, !dbg !158
  br i1 %cmp22, label %for.body, label %for.end, !dbg !159

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !160
  %inc = add nsw i32 %16, 1, !dbg !160
  store i32 %inc, i32* %intVariable, align 4, !dbg !160
  br label %for.inc, !dbg !162

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !163
  %inc24 = add nsw i32 %17, 1, !dbg !163
  store i32 %inc24, i32* %i, align 4, !dbg !163
  br label %for.cond, !dbg !164, !llvm.loop !165

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %intVariable, align 4, !dbg !168
  call void @printIntLine(i32 %18), !dbg !169
  br label %if.end25, !dbg !170

if.end25:                                         ; preds = %for.end, %if.then17
  br label %if.end26, !dbg !171

if.end26:                                         ; preds = %if.end25, %if.end14
  ret void, !dbg !172
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
define dso_local void @goodB2G1() #0 !dbg !173 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !176, metadata !DIExpression()), !dbg !177
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !177
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !177
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !178
  store i8* %arraydecay, i8** %data, align 8, !dbg !179
  %1 = load i32, i32* @staticFive, align 4, !dbg !180
  %cmp = icmp eq i32 %1, 5, !dbg !182
  br i1 %cmp, label %if.then, label %if.end14, !dbg !183

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !184, metadata !DIExpression()), !dbg !187
  %2 = load i8*, i8** %data, align 8, !dbg !188
  %call = call i64 @strlen(i8* %2) #6, !dbg !189
  store i64 %call, i64* %dataLen, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !190, metadata !DIExpression()), !dbg !191
  %3 = load i64, i64* %dataLen, align 8, !dbg !192
  %sub = sub i64 100, %3, !dbg !194
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !195
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !196

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !197
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !199
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !200
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !202
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !203

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !204
  %6 = load i64, i64* %dataLen, align 8, !dbg !207
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !208
  %7 = load i64, i64* %dataLen, align 8, !dbg !209
  %sub6 = sub i64 100, %7, !dbg !210
  %conv = trunc i64 %sub6 to i32, !dbg !211
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !212
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !213
  %cmp8 = icmp eq i8* %call7, null, !dbg !214
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !215

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !216
  %9 = load i8*, i8** %data, align 8, !dbg !218
  %10 = load i64, i64* %dataLen, align 8, !dbg !219
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !218
  store i8 0, i8* %arrayidx, align 1, !dbg !220
  br label %if.end, !dbg !221

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !222
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !223
  br label %if.end12, !dbg !224

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !225

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !226

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @staticFive, align 4, !dbg !227
  %cmp15 = icmp ne i32 %12, 5, !dbg !229
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !230

if.then17:                                        ; preds = %if.end14
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !231
  br label %if.end30, !dbg !233

if.else:                                          ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !234, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i32* %n, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !240, metadata !DIExpression()), !dbg !241
  %13 = load i8*, i8** %data, align 8, !dbg !242
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !244
  %cmp19 = icmp eq i32 %call18, 1, !dbg !245
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !246

if.then21:                                        ; preds = %if.else
  %14 = load i32, i32* %n, align 4, !dbg !247
  %cmp22 = icmp slt i32 %14, 10000, !dbg !250
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !251

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %intVariable, align 4, !dbg !252
  store i32 0, i32* %i, align 4, !dbg !254
  br label %for.cond, !dbg !256

for.cond:                                         ; preds = %for.inc, %if.then24
  %15 = load i32, i32* %i, align 4, !dbg !257
  %16 = load i32, i32* %n, align 4, !dbg !259
  %cmp25 = icmp slt i32 %15, %16, !dbg !260
  br i1 %cmp25, label %for.body, label %for.end, !dbg !261

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !262
  %inc = add nsw i32 %17, 1, !dbg !262
  store i32 %inc, i32* %intVariable, align 4, !dbg !262
  br label %for.inc, !dbg !264

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !265
  %inc27 = add nsw i32 %18, 1, !dbg !265
  store i32 %inc27, i32* %i, align 4, !dbg !265
  br label %for.cond, !dbg !266, !llvm.loop !267

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !269
  call void @printIntLine(i32 %19), !dbg !270
  br label %if.end28, !dbg !271

if.end28:                                         ; preds = %for.end, %if.then21
  br label %if.end29, !dbg !272

if.end29:                                         ; preds = %if.end28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then17
  ret void, !dbg !273
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !274 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !277, metadata !DIExpression()), !dbg !278
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !278
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !278
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !279
  store i8* %arraydecay, i8** %data, align 8, !dbg !280
  %1 = load i32, i32* @staticFive, align 4, !dbg !281
  %cmp = icmp eq i32 %1, 5, !dbg !283
  br i1 %cmp, label %if.then, label %if.end14, !dbg !284

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !285, metadata !DIExpression()), !dbg !288
  %2 = load i8*, i8** %data, align 8, !dbg !289
  %call = call i64 @strlen(i8* %2) #6, !dbg !290
  store i64 %call, i64* %dataLen, align 8, !dbg !288
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !291, metadata !DIExpression()), !dbg !292
  %3 = load i64, i64* %dataLen, align 8, !dbg !293
  %sub = sub i64 100, %3, !dbg !295
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !296
  br i1 %cmp1, label %if.then2, label %if.end13, !dbg !297

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !298
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !300
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !301
  %cmp4 = icmp ne %struct._IO_FILE* %4, null, !dbg !303
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !304

if.then5:                                         ; preds = %if.then2
  %5 = load i8*, i8** %data, align 8, !dbg !305
  %6 = load i64, i64* %dataLen, align 8, !dbg !308
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !309
  %7 = load i64, i64* %dataLen, align 8, !dbg !310
  %sub6 = sub i64 100, %7, !dbg !311
  %conv = trunc i64 %sub6 to i32, !dbg !312
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !313
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %8), !dbg !314
  %cmp8 = icmp eq i8* %call7, null, !dbg !315
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !316

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !317
  %9 = load i8*, i8** %data, align 8, !dbg !319
  %10 = load i64, i64* %dataLen, align 8, !dbg !320
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %10, !dbg !319
  store i8 0, i8* %arrayidx, align 1, !dbg !321
  br label %if.end, !dbg !322

if.end:                                           ; preds = %if.then10, %if.then5
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !323
  %call11 = call i32 @fclose(%struct._IO_FILE* %11), !dbg !324
  br label %if.end12, !dbg !325

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !326

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !327

if.end14:                                         ; preds = %if.end13, %entry
  %12 = load i32, i32* @staticFive, align 4, !dbg !328
  %cmp15 = icmp eq i32 %12, 5, !dbg !330
  br i1 %cmp15, label %if.then17, label %if.end30, !dbg !331

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !332, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata i32* %n, metadata !336, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !338, metadata !DIExpression()), !dbg !339
  %13 = load i8*, i8** %data, align 8, !dbg !340
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !342
  %cmp19 = icmp eq i32 %call18, 1, !dbg !343
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !344

if.then21:                                        ; preds = %if.then17
  %14 = load i32, i32* %n, align 4, !dbg !345
  %cmp22 = icmp slt i32 %14, 10000, !dbg !348
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !349

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %intVariable, align 4, !dbg !350
  store i32 0, i32* %i, align 4, !dbg !352
  br label %for.cond, !dbg !354

for.cond:                                         ; preds = %for.inc, %if.then24
  %15 = load i32, i32* %i, align 4, !dbg !355
  %16 = load i32, i32* %n, align 4, !dbg !357
  %cmp25 = icmp slt i32 %15, %16, !dbg !358
  br i1 %cmp25, label %for.body, label %for.end, !dbg !359

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !360
  %inc = add nsw i32 %17, 1, !dbg !360
  store i32 %inc, i32* %intVariable, align 4, !dbg !360
  br label %for.inc, !dbg !362

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !363
  %inc27 = add nsw i32 %18, 1, !dbg !363
  store i32 %inc27, i32* %i, align 4, !dbg !363
  br label %for.cond, !dbg !364, !llvm.loop !365

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !367
  call void @printIntLine(i32 %19), !dbg !368
  br label %if.end28, !dbg !369

if.end28:                                         ; preds = %for.end, %if.then21
  br label %if.end29, !dbg !370

if.end29:                                         ; preds = %if.end28, %if.then17
  br label %if.end30, !dbg !371

if.end30:                                         ; preds = %if.end29, %if.end14
  ret void, !dbg !372
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !373 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !374, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !376, metadata !DIExpression()), !dbg !377
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !377
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !377
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !378
  store i8* %arraydecay, i8** %data, align 8, !dbg !379
  %1 = load i32, i32* @staticFive, align 4, !dbg !380
  %cmp = icmp ne i32 %1, 5, !dbg !382
  br i1 %cmp, label %if.then, label %if.else, !dbg !383

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !384
  br label %if.end, !dbg !386

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !387
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !389
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* @staticFive, align 4, !dbg !390
  %cmp1 = icmp eq i32 %3, 5, !dbg !392
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !393

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !394, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata i32* %n, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !400, metadata !DIExpression()), !dbg !401
  %4 = load i8*, i8** %data, align 8, !dbg !402
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !404
  %cmp4 = icmp eq i32 %call3, 1, !dbg !405
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !406

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !407
  store i32 0, i32* %i, align 4, !dbg !409
  br label %for.cond, !dbg !411

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !412
  %6 = load i32, i32* %n, align 4, !dbg !414
  %cmp6 = icmp slt i32 %5, %6, !dbg !415
  br i1 %cmp6, label %for.body, label %for.end, !dbg !416

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !417
  %inc = add nsw i32 %7, 1, !dbg !417
  store i32 %inc, i32* %intVariable, align 4, !dbg !417
  br label %for.inc, !dbg !419

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !420
  %inc7 = add nsw i32 %8, 1, !dbg !420
  store i32 %inc7, i32* %i, align 4, !dbg !420
  br label %for.cond, !dbg !421, !llvm.loop !422

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !424
  call void @printIntLine(i32 %9), !dbg !425
  br label %if.end8, !dbg !426

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !427

if.end9:                                          ; preds = %if.end8, %if.end
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
  %1 = load i32, i32* @staticFive, align 4, !dbg !436
  %cmp = icmp eq i32 %1, 5, !dbg !438
  br i1 %cmp, label %if.then, label %if.end, !dbg !439

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data, align 8, !dbg !440
  %call = call i8* @strcpy(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !442
  br label %if.end, !dbg !443

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @staticFive, align 4, !dbg !444
  %cmp1 = icmp eq i32 %3, 5, !dbg !446
  br i1 %cmp1, label %if.then2, label %if.end9, !dbg !447

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !448, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.declare(metadata i32* %n, metadata !452, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !454, metadata !DIExpression()), !dbg !455
  %4 = load i8*, i8** %data, align 8, !dbg !456
  %call3 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !458
  %cmp4 = icmp eq i32 %call3, 1, !dbg !459
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !460

if.then5:                                         ; preds = %if.then2
  store i32 0, i32* %intVariable, align 4, !dbg !461
  store i32 0, i32* %i, align 4, !dbg !463
  br label %for.cond, !dbg !465

for.cond:                                         ; preds = %for.inc, %if.then5
  %5 = load i32, i32* %i, align 4, !dbg !466
  %6 = load i32, i32* %n, align 4, !dbg !468
  %cmp6 = icmp slt i32 %5, %6, !dbg !469
  br i1 %cmp6, label %for.body, label %for.end, !dbg !470

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !471
  %inc = add nsw i32 %7, 1, !dbg !471
  store i32 %inc, i32* %intVariable, align 4, !dbg !471
  br label %for.inc, !dbg !473

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !474
  %inc7 = add nsw i32 %8, 1, !dbg !474
  store i32 %inc7, i32* %i, align 4, !dbg !474
  br label %for.cond, !dbg !475, !llvm.loop !476

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !478
  call void @printIntLine(i32 %9), !dbg !479
  br label %if.end8, !dbg !480

if.end8:                                          ; preds = %for.end, %if.then2
  br label %if.end9, !dbg !481

if.end9:                                          ; preds = %if.end8, %if.end
  ret void, !dbg !482
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_07_good() #0 !dbg !483 {
entry:
  call void @goodB2G1(), !dbg !484
  call void @goodB2G2(), !dbg !485
  call void @goodG2B1(), !dbg !486
  call void @goodG2B2(), !dbg !487
  ret void, !dbg !488
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "staticFive", scope: !2, file: !3, line: 36, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !8, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_07.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_080/source_code")
!4 = !{}
!5 = !{!6, !7}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!0}
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 12.0.0"}
!13 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_07_bad", scope: !3, file: !3, line: 40, type: !14, scopeLine: 41, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{null}
!16 = !DILocalVariable(name: "data", scope: !13, file: !3, line: 42, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DILocation(line: 42, column: 12, scope: !13)
!20 = !DILocalVariable(name: "dataBuffer", scope: !13, file: !3, line: 43, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 800, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 100)
!24 = !DILocation(line: 43, column: 10, scope: !13)
!25 = !DILocation(line: 44, column: 12, scope: !13)
!26 = !DILocation(line: 44, column: 10, scope: !13)
!27 = !DILocation(line: 45, column: 8, scope: !28)
!28 = distinct !DILexicalBlock(scope: !13, file: !3, line: 45, column: 8)
!29 = !DILocation(line: 45, column: 18, scope: !28)
!30 = !DILocation(line: 45, column: 8, scope: !13)
!31 = !DILocalVariable(name: "dataLen", scope: !32, file: !3, line: 49, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !3, line: 47, column: 9)
!33 = distinct !DILexicalBlock(scope: !28, file: !3, line: 46, column: 5)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 49, column: 20, scope: !32)
!38 = !DILocation(line: 49, column: 37, scope: !32)
!39 = !DILocation(line: 49, column: 30, scope: !32)
!40 = !DILocalVariable(name: "pFile", scope: !32, file: !3, line: 50, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !43, line: 7, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !45, line: 49, size: 1728, elements: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !62, !64, !65, !66, !70, !72, !74, !78, !81, !83, !86, !89, !90, !91, !92, !93}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !44, file: !45, line: 51, baseType: !7, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !44, file: !45, line: 54, baseType: !17, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !44, file: !45, line: 55, baseType: !17, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !44, file: !45, line: 56, baseType: !17, size: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !44, file: !45, line: 57, baseType: !17, size: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !44, file: !45, line: 58, baseType: !17, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !44, file: !45, line: 59, baseType: !17, size: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !44, file: !45, line: 60, baseType: !17, size: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !44, file: !45, line: 61, baseType: !17, size: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !44, file: !45, line: 64, baseType: !17, size: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !44, file: !45, line: 65, baseType: !17, size: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !44, file: !45, line: 66, baseType: !17, size: 64, offset: 704)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !44, file: !45, line: 68, baseType: !60, size: 64, offset: 768)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !45, line: 36, flags: DIFlagFwdDecl)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !44, file: !45, line: 70, baseType: !63, size: 64, offset: 832)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !44, file: !45, line: 72, baseType: !7, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !44, file: !45, line: 73, baseType: !7, size: 32, offset: 928)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !44, file: !45, line: 74, baseType: !67, size: 64, offset: 960)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !68, line: 152, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!69 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !44, file: !45, line: 77, baseType: !71, size: 16, offset: 1024)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !44, file: !45, line: 78, baseType: !73, size: 8, offset: 1040)
!73 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !44, file: !45, line: 79, baseType: !75, size: 8, offset: 1048)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 1)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !44, file: !45, line: 81, baseType: !79, size: 64, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !45, line: 43, baseType: null)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !44, file: !45, line: 89, baseType: !82, size: 64, offset: 1152)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !68, line: 153, baseType: !69)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !44, file: !45, line: 91, baseType: !84, size: 64, offset: 1216)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !45, line: 37, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !44, file: !45, line: 92, baseType: !87, size: 64, offset: 1280)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !45, line: 38, flags: DIFlagFwdDecl)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !44, file: !45, line: 93, baseType: !63, size: 64, offset: 1344)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !44, file: !45, line: 94, baseType: !6, size: 64, offset: 1408)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !44, file: !45, line: 95, baseType: !34, size: 64, offset: 1472)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !44, file: !45, line: 96, baseType: !7, size: 32, offset: 1536)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !44, file: !45, line: 98, baseType: !94, size: 160, offset: 1568)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 20)
!97 = !DILocation(line: 50, column: 20, scope: !32)
!98 = !DILocation(line: 52, column: 21, scope: !99)
!99 = distinct !DILexicalBlock(scope: !32, file: !3, line: 52, column: 17)
!100 = !DILocation(line: 52, column: 20, scope: !99)
!101 = !DILocation(line: 52, column: 29, scope: !99)
!102 = !DILocation(line: 52, column: 17, scope: !32)
!103 = !DILocation(line: 54, column: 25, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !3, line: 53, column: 13)
!105 = !DILocation(line: 54, column: 23, scope: !104)
!106 = !DILocation(line: 55, column: 21, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !3, line: 55, column: 21)
!108 = !DILocation(line: 55, column: 27, scope: !107)
!109 = !DILocation(line: 55, column: 21, scope: !104)
!110 = !DILocation(line: 58, column: 31, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !3, line: 58, column: 25)
!112 = distinct !DILexicalBlock(scope: !107, file: !3, line: 56, column: 17)
!113 = !DILocation(line: 58, column: 36, scope: !111)
!114 = !DILocation(line: 58, column: 35, scope: !111)
!115 = !DILocation(line: 58, column: 55, scope: !111)
!116 = !DILocation(line: 58, column: 54, scope: !111)
!117 = !DILocation(line: 58, column: 45, scope: !111)
!118 = !DILocation(line: 58, column: 65, scope: !111)
!119 = !DILocation(line: 58, column: 25, scope: !111)
!120 = !DILocation(line: 58, column: 72, scope: !111)
!121 = !DILocation(line: 58, column: 25, scope: !112)
!122 = !DILocation(line: 60, column: 25, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !3, line: 59, column: 21)
!124 = !DILocation(line: 62, column: 25, scope: !123)
!125 = !DILocation(line: 62, column: 30, scope: !123)
!126 = !DILocation(line: 62, column: 39, scope: !123)
!127 = !DILocation(line: 63, column: 21, scope: !123)
!128 = !DILocation(line: 64, column: 28, scope: !112)
!129 = !DILocation(line: 64, column: 21, scope: !112)
!130 = !DILocation(line: 65, column: 17, scope: !112)
!131 = !DILocation(line: 66, column: 13, scope: !104)
!132 = !DILocation(line: 68, column: 5, scope: !33)
!133 = !DILocation(line: 69, column: 8, scope: !134)
!134 = distinct !DILexicalBlock(scope: !13, file: !3, line: 69, column: 8)
!135 = !DILocation(line: 69, column: 18, scope: !134)
!136 = !DILocation(line: 69, column: 8, scope: !13)
!137 = !DILocalVariable(name: "i", scope: !138, file: !3, line: 72, type: !7)
!138 = distinct !DILexicalBlock(scope: !139, file: !3, line: 71, column: 9)
!139 = distinct !DILexicalBlock(scope: !134, file: !3, line: 70, column: 5)
!140 = !DILocation(line: 72, column: 17, scope: !138)
!141 = !DILocalVariable(name: "n", scope: !138, file: !3, line: 72, type: !7)
!142 = !DILocation(line: 72, column: 20, scope: !138)
!143 = !DILocalVariable(name: "intVariable", scope: !138, file: !3, line: 72, type: !7)
!144 = !DILocation(line: 72, column: 23, scope: !138)
!145 = !DILocation(line: 73, column: 24, scope: !146)
!146 = distinct !DILexicalBlock(scope: !138, file: !3, line: 73, column: 17)
!147 = !DILocation(line: 73, column: 17, scope: !146)
!148 = !DILocation(line: 73, column: 40, scope: !146)
!149 = !DILocation(line: 73, column: 17, scope: !138)
!150 = !DILocation(line: 76, column: 29, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !3, line: 74, column: 13)
!152 = !DILocation(line: 77, column: 24, scope: !153)
!153 = distinct !DILexicalBlock(scope: !151, file: !3, line: 77, column: 17)
!154 = !DILocation(line: 77, column: 22, scope: !153)
!155 = !DILocation(line: 77, column: 29, scope: !156)
!156 = distinct !DILexicalBlock(scope: !153, file: !3, line: 77, column: 17)
!157 = !DILocation(line: 77, column: 33, scope: !156)
!158 = !DILocation(line: 77, column: 31, scope: !156)
!159 = !DILocation(line: 77, column: 17, scope: !153)
!160 = !DILocation(line: 80, column: 32, scope: !161)
!161 = distinct !DILexicalBlock(scope: !156, file: !3, line: 78, column: 17)
!162 = !DILocation(line: 81, column: 17, scope: !161)
!163 = !DILocation(line: 77, column: 37, scope: !156)
!164 = !DILocation(line: 77, column: 17, scope: !156)
!165 = distinct !{!165, !159, !166, !167}
!166 = !DILocation(line: 81, column: 17, scope: !153)
!167 = !{!"llvm.loop.mustprogress"}
!168 = !DILocation(line: 82, column: 30, scope: !151)
!169 = !DILocation(line: 82, column: 17, scope: !151)
!170 = !DILocation(line: 83, column: 13, scope: !151)
!171 = !DILocation(line: 85, column: 5, scope: !139)
!172 = !DILocation(line: 86, column: 1, scope: !13)
!173 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 93, type: !14, scopeLine: 94, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!174 = !DILocalVariable(name: "data", scope: !173, file: !3, line: 95, type: !17)
!175 = !DILocation(line: 95, column: 12, scope: !173)
!176 = !DILocalVariable(name: "dataBuffer", scope: !173, file: !3, line: 96, type: !21)
!177 = !DILocation(line: 96, column: 10, scope: !173)
!178 = !DILocation(line: 97, column: 12, scope: !173)
!179 = !DILocation(line: 97, column: 10, scope: !173)
!180 = !DILocation(line: 98, column: 8, scope: !181)
!181 = distinct !DILexicalBlock(scope: !173, file: !3, line: 98, column: 8)
!182 = !DILocation(line: 98, column: 18, scope: !181)
!183 = !DILocation(line: 98, column: 8, scope: !173)
!184 = !DILocalVariable(name: "dataLen", scope: !185, file: !3, line: 102, type: !34)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 100, column: 9)
!186 = distinct !DILexicalBlock(scope: !181, file: !3, line: 99, column: 5)
!187 = !DILocation(line: 102, column: 20, scope: !185)
!188 = !DILocation(line: 102, column: 37, scope: !185)
!189 = !DILocation(line: 102, column: 30, scope: !185)
!190 = !DILocalVariable(name: "pFile", scope: !185, file: !3, line: 103, type: !41)
!191 = !DILocation(line: 103, column: 20, scope: !185)
!192 = !DILocation(line: 105, column: 21, scope: !193)
!193 = distinct !DILexicalBlock(scope: !185, file: !3, line: 105, column: 17)
!194 = !DILocation(line: 105, column: 20, scope: !193)
!195 = !DILocation(line: 105, column: 29, scope: !193)
!196 = !DILocation(line: 105, column: 17, scope: !185)
!197 = !DILocation(line: 107, column: 25, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !3, line: 106, column: 13)
!199 = !DILocation(line: 107, column: 23, scope: !198)
!200 = !DILocation(line: 108, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 108, column: 21)
!202 = !DILocation(line: 108, column: 27, scope: !201)
!203 = !DILocation(line: 108, column: 21, scope: !198)
!204 = !DILocation(line: 111, column: 31, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !3, line: 111, column: 25)
!206 = distinct !DILexicalBlock(scope: !201, file: !3, line: 109, column: 17)
!207 = !DILocation(line: 111, column: 36, scope: !205)
!208 = !DILocation(line: 111, column: 35, scope: !205)
!209 = !DILocation(line: 111, column: 55, scope: !205)
!210 = !DILocation(line: 111, column: 54, scope: !205)
!211 = !DILocation(line: 111, column: 45, scope: !205)
!212 = !DILocation(line: 111, column: 65, scope: !205)
!213 = !DILocation(line: 111, column: 25, scope: !205)
!214 = !DILocation(line: 111, column: 72, scope: !205)
!215 = !DILocation(line: 111, column: 25, scope: !206)
!216 = !DILocation(line: 113, column: 25, scope: !217)
!217 = distinct !DILexicalBlock(scope: !205, file: !3, line: 112, column: 21)
!218 = !DILocation(line: 115, column: 25, scope: !217)
!219 = !DILocation(line: 115, column: 30, scope: !217)
!220 = !DILocation(line: 115, column: 39, scope: !217)
!221 = !DILocation(line: 116, column: 21, scope: !217)
!222 = !DILocation(line: 117, column: 28, scope: !206)
!223 = !DILocation(line: 117, column: 21, scope: !206)
!224 = !DILocation(line: 118, column: 17, scope: !206)
!225 = !DILocation(line: 119, column: 13, scope: !198)
!226 = !DILocation(line: 121, column: 5, scope: !186)
!227 = !DILocation(line: 122, column: 8, scope: !228)
!228 = distinct !DILexicalBlock(scope: !173, file: !3, line: 122, column: 8)
!229 = !DILocation(line: 122, column: 18, scope: !228)
!230 = !DILocation(line: 122, column: 8, scope: !173)
!231 = !DILocation(line: 125, column: 9, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !3, line: 123, column: 5)
!233 = !DILocation(line: 126, column: 5, scope: !232)
!234 = !DILocalVariable(name: "i", scope: !235, file: !3, line: 130, type: !7)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 129, column: 9)
!236 = distinct !DILexicalBlock(scope: !228, file: !3, line: 128, column: 5)
!237 = !DILocation(line: 130, column: 17, scope: !235)
!238 = !DILocalVariable(name: "n", scope: !235, file: !3, line: 130, type: !7)
!239 = !DILocation(line: 130, column: 20, scope: !235)
!240 = !DILocalVariable(name: "intVariable", scope: !235, file: !3, line: 130, type: !7)
!241 = !DILocation(line: 130, column: 23, scope: !235)
!242 = !DILocation(line: 131, column: 24, scope: !243)
!243 = distinct !DILexicalBlock(scope: !235, file: !3, line: 131, column: 17)
!244 = !DILocation(line: 131, column: 17, scope: !243)
!245 = !DILocation(line: 131, column: 40, scope: !243)
!246 = !DILocation(line: 131, column: 17, scope: !235)
!247 = !DILocation(line: 134, column: 21, scope: !248)
!248 = distinct !DILexicalBlock(scope: !249, file: !3, line: 134, column: 21)
!249 = distinct !DILexicalBlock(scope: !243, file: !3, line: 132, column: 13)
!250 = !DILocation(line: 134, column: 23, scope: !248)
!251 = !DILocation(line: 134, column: 21, scope: !249)
!252 = !DILocation(line: 136, column: 33, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !3, line: 135, column: 17)
!254 = !DILocation(line: 137, column: 28, scope: !255)
!255 = distinct !DILexicalBlock(scope: !253, file: !3, line: 137, column: 21)
!256 = !DILocation(line: 137, column: 26, scope: !255)
!257 = !DILocation(line: 137, column: 33, scope: !258)
!258 = distinct !DILexicalBlock(scope: !255, file: !3, line: 137, column: 21)
!259 = !DILocation(line: 137, column: 37, scope: !258)
!260 = !DILocation(line: 137, column: 35, scope: !258)
!261 = !DILocation(line: 137, column: 21, scope: !255)
!262 = !DILocation(line: 140, column: 36, scope: !263)
!263 = distinct !DILexicalBlock(scope: !258, file: !3, line: 138, column: 21)
!264 = !DILocation(line: 141, column: 21, scope: !263)
!265 = !DILocation(line: 137, column: 41, scope: !258)
!266 = !DILocation(line: 137, column: 21, scope: !258)
!267 = distinct !{!267, !261, !268, !167}
!268 = !DILocation(line: 141, column: 21, scope: !255)
!269 = !DILocation(line: 142, column: 34, scope: !253)
!270 = !DILocation(line: 142, column: 21, scope: !253)
!271 = !DILocation(line: 143, column: 17, scope: !253)
!272 = !DILocation(line: 144, column: 13, scope: !249)
!273 = !DILocation(line: 147, column: 1, scope: !173)
!274 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 150, type: !14, scopeLine: 151, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!275 = !DILocalVariable(name: "data", scope: !274, file: !3, line: 152, type: !17)
!276 = !DILocation(line: 152, column: 12, scope: !274)
!277 = !DILocalVariable(name: "dataBuffer", scope: !274, file: !3, line: 153, type: !21)
!278 = !DILocation(line: 153, column: 10, scope: !274)
!279 = !DILocation(line: 154, column: 12, scope: !274)
!280 = !DILocation(line: 154, column: 10, scope: !274)
!281 = !DILocation(line: 155, column: 8, scope: !282)
!282 = distinct !DILexicalBlock(scope: !274, file: !3, line: 155, column: 8)
!283 = !DILocation(line: 155, column: 18, scope: !282)
!284 = !DILocation(line: 155, column: 8, scope: !274)
!285 = !DILocalVariable(name: "dataLen", scope: !286, file: !3, line: 159, type: !34)
!286 = distinct !DILexicalBlock(scope: !287, file: !3, line: 157, column: 9)
!287 = distinct !DILexicalBlock(scope: !282, file: !3, line: 156, column: 5)
!288 = !DILocation(line: 159, column: 20, scope: !286)
!289 = !DILocation(line: 159, column: 37, scope: !286)
!290 = !DILocation(line: 159, column: 30, scope: !286)
!291 = !DILocalVariable(name: "pFile", scope: !286, file: !3, line: 160, type: !41)
!292 = !DILocation(line: 160, column: 20, scope: !286)
!293 = !DILocation(line: 162, column: 21, scope: !294)
!294 = distinct !DILexicalBlock(scope: !286, file: !3, line: 162, column: 17)
!295 = !DILocation(line: 162, column: 20, scope: !294)
!296 = !DILocation(line: 162, column: 29, scope: !294)
!297 = !DILocation(line: 162, column: 17, scope: !286)
!298 = !DILocation(line: 164, column: 25, scope: !299)
!299 = distinct !DILexicalBlock(scope: !294, file: !3, line: 163, column: 13)
!300 = !DILocation(line: 164, column: 23, scope: !299)
!301 = !DILocation(line: 165, column: 21, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !3, line: 165, column: 21)
!303 = !DILocation(line: 165, column: 27, scope: !302)
!304 = !DILocation(line: 165, column: 21, scope: !299)
!305 = !DILocation(line: 168, column: 31, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !3, line: 168, column: 25)
!307 = distinct !DILexicalBlock(scope: !302, file: !3, line: 166, column: 17)
!308 = !DILocation(line: 168, column: 36, scope: !306)
!309 = !DILocation(line: 168, column: 35, scope: !306)
!310 = !DILocation(line: 168, column: 55, scope: !306)
!311 = !DILocation(line: 168, column: 54, scope: !306)
!312 = !DILocation(line: 168, column: 45, scope: !306)
!313 = !DILocation(line: 168, column: 65, scope: !306)
!314 = !DILocation(line: 168, column: 25, scope: !306)
!315 = !DILocation(line: 168, column: 72, scope: !306)
!316 = !DILocation(line: 168, column: 25, scope: !307)
!317 = !DILocation(line: 170, column: 25, scope: !318)
!318 = distinct !DILexicalBlock(scope: !306, file: !3, line: 169, column: 21)
!319 = !DILocation(line: 172, column: 25, scope: !318)
!320 = !DILocation(line: 172, column: 30, scope: !318)
!321 = !DILocation(line: 172, column: 39, scope: !318)
!322 = !DILocation(line: 173, column: 21, scope: !318)
!323 = !DILocation(line: 174, column: 28, scope: !307)
!324 = !DILocation(line: 174, column: 21, scope: !307)
!325 = !DILocation(line: 175, column: 17, scope: !307)
!326 = !DILocation(line: 176, column: 13, scope: !299)
!327 = !DILocation(line: 178, column: 5, scope: !287)
!328 = !DILocation(line: 179, column: 8, scope: !329)
!329 = distinct !DILexicalBlock(scope: !274, file: !3, line: 179, column: 8)
!330 = !DILocation(line: 179, column: 18, scope: !329)
!331 = !DILocation(line: 179, column: 8, scope: !274)
!332 = !DILocalVariable(name: "i", scope: !333, file: !3, line: 182, type: !7)
!333 = distinct !DILexicalBlock(scope: !334, file: !3, line: 181, column: 9)
!334 = distinct !DILexicalBlock(scope: !329, file: !3, line: 180, column: 5)
!335 = !DILocation(line: 182, column: 17, scope: !333)
!336 = !DILocalVariable(name: "n", scope: !333, file: !3, line: 182, type: !7)
!337 = !DILocation(line: 182, column: 20, scope: !333)
!338 = !DILocalVariable(name: "intVariable", scope: !333, file: !3, line: 182, type: !7)
!339 = !DILocation(line: 182, column: 23, scope: !333)
!340 = !DILocation(line: 183, column: 24, scope: !341)
!341 = distinct !DILexicalBlock(scope: !333, file: !3, line: 183, column: 17)
!342 = !DILocation(line: 183, column: 17, scope: !341)
!343 = !DILocation(line: 183, column: 40, scope: !341)
!344 = !DILocation(line: 183, column: 17, scope: !333)
!345 = !DILocation(line: 186, column: 21, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !3, line: 186, column: 21)
!347 = distinct !DILexicalBlock(scope: !341, file: !3, line: 184, column: 13)
!348 = !DILocation(line: 186, column: 23, scope: !346)
!349 = !DILocation(line: 186, column: 21, scope: !347)
!350 = !DILocation(line: 188, column: 33, scope: !351)
!351 = distinct !DILexicalBlock(scope: !346, file: !3, line: 187, column: 17)
!352 = !DILocation(line: 189, column: 28, scope: !353)
!353 = distinct !DILexicalBlock(scope: !351, file: !3, line: 189, column: 21)
!354 = !DILocation(line: 189, column: 26, scope: !353)
!355 = !DILocation(line: 189, column: 33, scope: !356)
!356 = distinct !DILexicalBlock(scope: !353, file: !3, line: 189, column: 21)
!357 = !DILocation(line: 189, column: 37, scope: !356)
!358 = !DILocation(line: 189, column: 35, scope: !356)
!359 = !DILocation(line: 189, column: 21, scope: !353)
!360 = !DILocation(line: 192, column: 36, scope: !361)
!361 = distinct !DILexicalBlock(scope: !356, file: !3, line: 190, column: 21)
!362 = !DILocation(line: 193, column: 21, scope: !361)
!363 = !DILocation(line: 189, column: 41, scope: !356)
!364 = !DILocation(line: 189, column: 21, scope: !356)
!365 = distinct !{!365, !359, !366, !167}
!366 = !DILocation(line: 193, column: 21, scope: !353)
!367 = !DILocation(line: 194, column: 34, scope: !351)
!368 = !DILocation(line: 194, column: 21, scope: !351)
!369 = !DILocation(line: 195, column: 17, scope: !351)
!370 = !DILocation(line: 196, column: 13, scope: !347)
!371 = !DILocation(line: 198, column: 5, scope: !334)
!372 = !DILocation(line: 199, column: 1, scope: !274)
!373 = distinct !DISubprogram(name: "goodG2B1", scope: !3, file: !3, line: 202, type: !14, scopeLine: 203, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!374 = !DILocalVariable(name: "data", scope: !373, file: !3, line: 204, type: !17)
!375 = !DILocation(line: 204, column: 12, scope: !373)
!376 = !DILocalVariable(name: "dataBuffer", scope: !373, file: !3, line: 205, type: !21)
!377 = !DILocation(line: 205, column: 10, scope: !373)
!378 = !DILocation(line: 206, column: 12, scope: !373)
!379 = !DILocation(line: 206, column: 10, scope: !373)
!380 = !DILocation(line: 207, column: 8, scope: !381)
!381 = distinct !DILexicalBlock(scope: !373, file: !3, line: 207, column: 8)
!382 = !DILocation(line: 207, column: 18, scope: !381)
!383 = !DILocation(line: 207, column: 8, scope: !373)
!384 = !DILocation(line: 210, column: 9, scope: !385)
!385 = distinct !DILexicalBlock(scope: !381, file: !3, line: 208, column: 5)
!386 = !DILocation(line: 211, column: 5, scope: !385)
!387 = !DILocation(line: 215, column: 16, scope: !388)
!388 = distinct !DILexicalBlock(scope: !381, file: !3, line: 213, column: 5)
!389 = !DILocation(line: 215, column: 9, scope: !388)
!390 = !DILocation(line: 217, column: 8, scope: !391)
!391 = distinct !DILexicalBlock(scope: !373, file: !3, line: 217, column: 8)
!392 = !DILocation(line: 217, column: 18, scope: !391)
!393 = !DILocation(line: 217, column: 8, scope: !373)
!394 = !DILocalVariable(name: "i", scope: !395, file: !3, line: 220, type: !7)
!395 = distinct !DILexicalBlock(scope: !396, file: !3, line: 219, column: 9)
!396 = distinct !DILexicalBlock(scope: !391, file: !3, line: 218, column: 5)
!397 = !DILocation(line: 220, column: 17, scope: !395)
!398 = !DILocalVariable(name: "n", scope: !395, file: !3, line: 220, type: !7)
!399 = !DILocation(line: 220, column: 20, scope: !395)
!400 = !DILocalVariable(name: "intVariable", scope: !395, file: !3, line: 220, type: !7)
!401 = !DILocation(line: 220, column: 23, scope: !395)
!402 = !DILocation(line: 221, column: 24, scope: !403)
!403 = distinct !DILexicalBlock(scope: !395, file: !3, line: 221, column: 17)
!404 = !DILocation(line: 221, column: 17, scope: !403)
!405 = !DILocation(line: 221, column: 40, scope: !403)
!406 = !DILocation(line: 221, column: 17, scope: !395)
!407 = !DILocation(line: 224, column: 29, scope: !408)
!408 = distinct !DILexicalBlock(scope: !403, file: !3, line: 222, column: 13)
!409 = !DILocation(line: 225, column: 24, scope: !410)
!410 = distinct !DILexicalBlock(scope: !408, file: !3, line: 225, column: 17)
!411 = !DILocation(line: 225, column: 22, scope: !410)
!412 = !DILocation(line: 225, column: 29, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !3, line: 225, column: 17)
!414 = !DILocation(line: 225, column: 33, scope: !413)
!415 = !DILocation(line: 225, column: 31, scope: !413)
!416 = !DILocation(line: 225, column: 17, scope: !410)
!417 = !DILocation(line: 228, column: 32, scope: !418)
!418 = distinct !DILexicalBlock(scope: !413, file: !3, line: 226, column: 17)
!419 = !DILocation(line: 229, column: 17, scope: !418)
!420 = !DILocation(line: 225, column: 37, scope: !413)
!421 = !DILocation(line: 225, column: 17, scope: !413)
!422 = distinct !{!422, !416, !423, !167}
!423 = !DILocation(line: 229, column: 17, scope: !410)
!424 = !DILocation(line: 230, column: 30, scope: !408)
!425 = !DILocation(line: 230, column: 17, scope: !408)
!426 = !DILocation(line: 231, column: 13, scope: !408)
!427 = !DILocation(line: 233, column: 5, scope: !396)
!428 = !DILocation(line: 234, column: 1, scope: !373)
!429 = distinct !DISubprogram(name: "goodG2B2", scope: !3, file: !3, line: 237, type: !14, scopeLine: 238, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!430 = !DILocalVariable(name: "data", scope: !429, file: !3, line: 239, type: !17)
!431 = !DILocation(line: 239, column: 12, scope: !429)
!432 = !DILocalVariable(name: "dataBuffer", scope: !429, file: !3, line: 240, type: !21)
!433 = !DILocation(line: 240, column: 10, scope: !429)
!434 = !DILocation(line: 241, column: 12, scope: !429)
!435 = !DILocation(line: 241, column: 10, scope: !429)
!436 = !DILocation(line: 242, column: 8, scope: !437)
!437 = distinct !DILexicalBlock(scope: !429, file: !3, line: 242, column: 8)
!438 = !DILocation(line: 242, column: 18, scope: !437)
!439 = !DILocation(line: 242, column: 8, scope: !429)
!440 = !DILocation(line: 245, column: 16, scope: !441)
!441 = distinct !DILexicalBlock(scope: !437, file: !3, line: 243, column: 5)
!442 = !DILocation(line: 245, column: 9, scope: !441)
!443 = !DILocation(line: 246, column: 5, scope: !441)
!444 = !DILocation(line: 247, column: 8, scope: !445)
!445 = distinct !DILexicalBlock(scope: !429, file: !3, line: 247, column: 8)
!446 = !DILocation(line: 247, column: 18, scope: !445)
!447 = !DILocation(line: 247, column: 8, scope: !429)
!448 = !DILocalVariable(name: "i", scope: !449, file: !3, line: 250, type: !7)
!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 249, column: 9)
!450 = distinct !DILexicalBlock(scope: !445, file: !3, line: 248, column: 5)
!451 = !DILocation(line: 250, column: 17, scope: !449)
!452 = !DILocalVariable(name: "n", scope: !449, file: !3, line: 250, type: !7)
!453 = !DILocation(line: 250, column: 20, scope: !449)
!454 = !DILocalVariable(name: "intVariable", scope: !449, file: !3, line: 250, type: !7)
!455 = !DILocation(line: 250, column: 23, scope: !449)
!456 = !DILocation(line: 251, column: 24, scope: !457)
!457 = distinct !DILexicalBlock(scope: !449, file: !3, line: 251, column: 17)
!458 = !DILocation(line: 251, column: 17, scope: !457)
!459 = !DILocation(line: 251, column: 40, scope: !457)
!460 = !DILocation(line: 251, column: 17, scope: !449)
!461 = !DILocation(line: 254, column: 29, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !3, line: 252, column: 13)
!463 = !DILocation(line: 255, column: 24, scope: !464)
!464 = distinct !DILexicalBlock(scope: !462, file: !3, line: 255, column: 17)
!465 = !DILocation(line: 255, column: 22, scope: !464)
!466 = !DILocation(line: 255, column: 29, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !3, line: 255, column: 17)
!468 = !DILocation(line: 255, column: 33, scope: !467)
!469 = !DILocation(line: 255, column: 31, scope: !467)
!470 = !DILocation(line: 255, column: 17, scope: !464)
!471 = !DILocation(line: 258, column: 32, scope: !472)
!472 = distinct !DILexicalBlock(scope: !467, file: !3, line: 256, column: 17)
!473 = !DILocation(line: 259, column: 17, scope: !472)
!474 = !DILocation(line: 255, column: 37, scope: !467)
!475 = !DILocation(line: 255, column: 17, scope: !467)
!476 = distinct !{!476, !470, !477, !167}
!477 = !DILocation(line: 259, column: 17, scope: !464)
!478 = !DILocation(line: 260, column: 30, scope: !462)
!479 = !DILocation(line: 260, column: 17, scope: !462)
!480 = !DILocation(line: 261, column: 13, scope: !462)
!481 = !DILocation(line: 263, column: 5, scope: !450)
!482 = !DILocation(line: 264, column: 1, scope: !429)
!483 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_07_good", scope: !3, file: !3, line: 266, type: !14, scopeLine: 267, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!484 = !DILocation(line: 268, column: 5, scope: !483)
!485 = !DILocation(line: 269, column: 5, scope: !483)
!486 = !DILocation(line: 270, column: 5, scope: !483)
!487 = !DILocation(line: 271, column: 5, scope: !483)
!488 = !DILocation(line: 272, column: 1, scope: !483)
