; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_08.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_08.c"
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
@.str.4 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsTrue() #0 !dbg !10 {
entry:
  ret i32 1, !dbg !13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @staticReturnsFalse() #0 !dbg !14 {
entry:
  ret i32 0, !dbg !15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_08_bad() #0 !dbg !16 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !19, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !23, metadata !DIExpression()), !dbg !27
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !27
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !28
  store i8* %arraydecay, i8** %data, align 8, !dbg !29
  %call = call i32 @staticReturnsTrue(), !dbg !30
  %tobool = icmp ne i32 %call, 0, !dbg !30
  br i1 %tobool, label %if.then, label %if.end14, !dbg !32

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !33, metadata !DIExpression()), !dbg !39
  %1 = load i8*, i8** %data, align 8, !dbg !40
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !41
  store i64 %call1, i64* %dataLen, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !42, metadata !DIExpression()), !dbg !99
  %2 = load i64, i64* %dataLen, align 8, !dbg !100
  %sub = sub i64 100, %2, !dbg !102
  %cmp = icmp ugt i64 %sub, 1, !dbg !103
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !104

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !105
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !107
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !108
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !110
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !111

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !112
  %5 = load i64, i64* %dataLen, align 8, !dbg !115
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !116
  %6 = load i64, i64* %dataLen, align 8, !dbg !117
  %sub6 = sub i64 100, %6, !dbg !118
  %conv = trunc i64 %sub6 to i32, !dbg !119
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !120
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !121
  %cmp8 = icmp eq i8* %call7, null, !dbg !122
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !123

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !124
  %8 = load i8*, i8** %data, align 8, !dbg !126
  %9 = load i64, i64* %dataLen, align 8, !dbg !127
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !126
  store i8 0, i8* %arrayidx, align 1, !dbg !128
  br label %if.end, !dbg !129

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !130
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !131
  br label %if.end12, !dbg !132

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !133

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !134

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 @staticReturnsTrue(), !dbg !135
  %tobool16 = icmp ne i32 %call15, 0, !dbg !135
  br i1 %tobool16, label %if.then17, label %if.end26, !dbg !137

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !138, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %n, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !144, metadata !DIExpression()), !dbg !145
  %11 = load i8*, i8** %data, align 8, !dbg !146
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !148
  %cmp19 = icmp eq i32 %call18, 1, !dbg !149
  br i1 %cmp19, label %if.then21, label %if.end25, !dbg !150

if.then21:                                        ; preds = %if.then17
  store i32 0, i32* %intVariable, align 4, !dbg !151
  store i32 0, i32* %i, align 4, !dbg !153
  br label %for.cond, !dbg !155

for.cond:                                         ; preds = %for.inc, %if.then21
  %12 = load i32, i32* %i, align 4, !dbg !156
  %13 = load i32, i32* %n, align 4, !dbg !158
  %cmp22 = icmp slt i32 %12, %13, !dbg !159
  br i1 %cmp22, label %for.body, label %for.end, !dbg !160

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !161
  %inc = add nsw i32 %14, 1, !dbg !161
  store i32 %inc, i32* %intVariable, align 4, !dbg !161
  br label %for.inc, !dbg !163

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !164
  %inc24 = add nsw i32 %15, 1, !dbg !164
  store i32 %inc24, i32* %i, align 4, !dbg !164
  br label %for.cond, !dbg !165, !llvm.loop !166

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !169
  call void @printIntLine(i32 %16), !dbg !170
  br label %if.end25, !dbg !171

if.end25:                                         ; preds = %for.end, %if.then17
  br label %if.end26, !dbg !172

if.end26:                                         ; preds = %if.end25, %if.end14
  ret void, !dbg !173
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
define dso_local void @goodB2G1() #0 !dbg !174 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !177, metadata !DIExpression()), !dbg !178
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !178
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !178
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !179
  store i8* %arraydecay, i8** %data, align 8, !dbg !180
  %call = call i32 @staticReturnsTrue(), !dbg !181
  %tobool = icmp ne i32 %call, 0, !dbg !181
  br i1 %tobool, label %if.then, label %if.end14, !dbg !183

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !184, metadata !DIExpression()), !dbg !187
  %1 = load i8*, i8** %data, align 8, !dbg !188
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !189
  store i64 %call1, i64* %dataLen, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !190, metadata !DIExpression()), !dbg !191
  %2 = load i64, i64* %dataLen, align 8, !dbg !192
  %sub = sub i64 100, %2, !dbg !194
  %cmp = icmp ugt i64 %sub, 1, !dbg !195
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !196

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !197
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !199
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !200
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !202
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !203

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !204
  %5 = load i64, i64* %dataLen, align 8, !dbg !207
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !208
  %6 = load i64, i64* %dataLen, align 8, !dbg !209
  %sub6 = sub i64 100, %6, !dbg !210
  %conv = trunc i64 %sub6 to i32, !dbg !211
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !212
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !213
  %cmp8 = icmp eq i8* %call7, null, !dbg !214
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !215

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !216
  %8 = load i8*, i8** %data, align 8, !dbg !218
  %9 = load i64, i64* %dataLen, align 8, !dbg !219
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !218
  store i8 0, i8* %arrayidx, align 1, !dbg !220
  br label %if.end, !dbg !221

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !222
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !223
  br label %if.end12, !dbg !224

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !225

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !226

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 @staticReturnsFalse(), !dbg !227
  %tobool16 = icmp ne i32 %call15, 0, !dbg !227
  br i1 %tobool16, label %if.then17, label %if.else, !dbg !229

if.then17:                                        ; preds = %if.end14
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !230
  br label %if.end30, !dbg !232

if.else:                                          ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !233, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.declare(metadata i32* %n, metadata !237, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !239, metadata !DIExpression()), !dbg !240
  %11 = load i8*, i8** %data, align 8, !dbg !241
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !243
  %cmp19 = icmp eq i32 %call18, 1, !dbg !244
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !245

if.then21:                                        ; preds = %if.else
  %12 = load i32, i32* %n, align 4, !dbg !246
  %cmp22 = icmp slt i32 %12, 10000, !dbg !249
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !250

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %intVariable, align 4, !dbg !251
  store i32 0, i32* %i, align 4, !dbg !253
  br label %for.cond, !dbg !255

for.cond:                                         ; preds = %for.inc, %if.then24
  %13 = load i32, i32* %i, align 4, !dbg !256
  %14 = load i32, i32* %n, align 4, !dbg !258
  %cmp25 = icmp slt i32 %13, %14, !dbg !259
  br i1 %cmp25, label %for.body, label %for.end, !dbg !260

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !261
  %inc = add nsw i32 %15, 1, !dbg !261
  store i32 %inc, i32* %intVariable, align 4, !dbg !261
  br label %for.inc, !dbg !263

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !264
  %inc27 = add nsw i32 %16, 1, !dbg !264
  store i32 %inc27, i32* %i, align 4, !dbg !264
  br label %for.cond, !dbg !265, !llvm.loop !266

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !268
  call void @printIntLine(i32 %17), !dbg !269
  br label %if.end28, !dbg !270

if.end28:                                         ; preds = %for.end, %if.then21
  br label %if.end29, !dbg !271

if.end29:                                         ; preds = %if.end28, %if.else
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then17
  ret void, !dbg !272
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !273 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !276, metadata !DIExpression()), !dbg !277
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !277
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !277
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !278
  store i8* %arraydecay, i8** %data, align 8, !dbg !279
  %call = call i32 @staticReturnsTrue(), !dbg !280
  %tobool = icmp ne i32 %call, 0, !dbg !280
  br i1 %tobool, label %if.then, label %if.end14, !dbg !282

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !283, metadata !DIExpression()), !dbg !286
  %1 = load i8*, i8** %data, align 8, !dbg !287
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !288
  store i64 %call1, i64* %dataLen, align 8, !dbg !286
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !289, metadata !DIExpression()), !dbg !290
  %2 = load i64, i64* %dataLen, align 8, !dbg !291
  %sub = sub i64 100, %2, !dbg !293
  %cmp = icmp ugt i64 %sub, 1, !dbg !294
  br i1 %cmp, label %if.then2, label %if.end13, !dbg !295

if.then2:                                         ; preds = %if.then
  %call3 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !296
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %pFile, align 8, !dbg !298
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !299
  %cmp4 = icmp ne %struct._IO_FILE* %3, null, !dbg !301
  br i1 %cmp4, label %if.then5, label %if.end12, !dbg !302

if.then5:                                         ; preds = %if.then2
  %4 = load i8*, i8** %data, align 8, !dbg !303
  %5 = load i64, i64* %dataLen, align 8, !dbg !306
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !307
  %6 = load i64, i64* %dataLen, align 8, !dbg !308
  %sub6 = sub i64 100, %6, !dbg !309
  %conv = trunc i64 %sub6 to i32, !dbg !310
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !311
  %call7 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !312
  %cmp8 = icmp eq i8* %call7, null, !dbg !313
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !314

if.then10:                                        ; preds = %if.then5
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !315
  %8 = load i8*, i8** %data, align 8, !dbg !317
  %9 = load i64, i64* %dataLen, align 8, !dbg !318
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !317
  store i8 0, i8* %arrayidx, align 1, !dbg !319
  br label %if.end, !dbg !320

if.end:                                           ; preds = %if.then10, %if.then5
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !321
  %call11 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !322
  br label %if.end12, !dbg !323

if.end12:                                         ; preds = %if.end, %if.then2
  br label %if.end13, !dbg !324

if.end13:                                         ; preds = %if.end12, %if.then
  br label %if.end14, !dbg !325

if.end14:                                         ; preds = %if.end13, %entry
  %call15 = call i32 @staticReturnsTrue(), !dbg !326
  %tobool16 = icmp ne i32 %call15, 0, !dbg !326
  br i1 %tobool16, label %if.then17, label %if.end30, !dbg !328

if.then17:                                        ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !329, metadata !DIExpression()), !dbg !332
  call void @llvm.dbg.declare(metadata i32* %n, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !335, metadata !DIExpression()), !dbg !336
  %11 = load i8*, i8** %data, align 8, !dbg !337
  %call18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !339
  %cmp19 = icmp eq i32 %call18, 1, !dbg !340
  br i1 %cmp19, label %if.then21, label %if.end29, !dbg !341

if.then21:                                        ; preds = %if.then17
  %12 = load i32, i32* %n, align 4, !dbg !342
  %cmp22 = icmp slt i32 %12, 10000, !dbg !345
  br i1 %cmp22, label %if.then24, label %if.end28, !dbg !346

if.then24:                                        ; preds = %if.then21
  store i32 0, i32* %intVariable, align 4, !dbg !347
  store i32 0, i32* %i, align 4, !dbg !349
  br label %for.cond, !dbg !351

for.cond:                                         ; preds = %for.inc, %if.then24
  %13 = load i32, i32* %i, align 4, !dbg !352
  %14 = load i32, i32* %n, align 4, !dbg !354
  %cmp25 = icmp slt i32 %13, %14, !dbg !355
  br i1 %cmp25, label %for.body, label %for.end, !dbg !356

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !357
  %inc = add nsw i32 %15, 1, !dbg !357
  store i32 %inc, i32* %intVariable, align 4, !dbg !357
  br label %for.inc, !dbg !359

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !360
  %inc27 = add nsw i32 %16, 1, !dbg !360
  store i32 %inc27, i32* %i, align 4, !dbg !360
  br label %for.cond, !dbg !361, !llvm.loop !362

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !364
  call void @printIntLine(i32 %17), !dbg !365
  br label %if.end28, !dbg !366

if.end28:                                         ; preds = %for.end, %if.then21
  br label %if.end29, !dbg !367

if.end29:                                         ; preds = %if.end28, %if.then17
  br label %if.end30, !dbg !368

if.end30:                                         ; preds = %if.end29, %if.end14
  ret void, !dbg !369
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !370 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !371, metadata !DIExpression()), !dbg !372
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !373, metadata !DIExpression()), !dbg !374
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !374
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !374
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !375
  store i8* %arraydecay, i8** %data, align 8, !dbg !376
  %call = call i32 @staticReturnsFalse(), !dbg !377
  %tobool = icmp ne i32 %call, 0, !dbg !377
  br i1 %tobool, label %if.then, label %if.else, !dbg !379

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0)), !dbg !380
  br label %if.end, !dbg !382

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !383
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !385
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call i32 @staticReturnsTrue(), !dbg !386
  %tobool3 = icmp ne i32 %call2, 0, !dbg !386
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !388

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !389, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata i32* %n, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !395, metadata !DIExpression()), !dbg !396
  %2 = load i8*, i8** %data, align 8, !dbg !397
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !399
  %cmp = icmp eq i32 %call5, 1, !dbg !400
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !401

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !402
  store i32 0, i32* %i, align 4, !dbg !404
  br label %for.cond, !dbg !406

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !407
  %4 = load i32, i32* %n, align 4, !dbg !409
  %cmp7 = icmp slt i32 %3, %4, !dbg !410
  br i1 %cmp7, label %for.body, label %for.end, !dbg !411

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !412
  %inc = add nsw i32 %5, 1, !dbg !412
  store i32 %inc, i32* %intVariable, align 4, !dbg !412
  br label %for.inc, !dbg !414

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !415
  %inc8 = add nsw i32 %6, 1, !dbg !415
  store i32 %inc8, i32* %i, align 4, !dbg !415
  br label %for.cond, !dbg !416, !llvm.loop !417

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !419
  call void @printIntLine(i32 %7), !dbg !420
  br label %if.end9, !dbg !421

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !422

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !423
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !424 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !427, metadata !DIExpression()), !dbg !428
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !428
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !428
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !429
  store i8* %arraydecay, i8** %data, align 8, !dbg !430
  %call = call i32 @staticReturnsTrue(), !dbg !431
  %tobool = icmp ne i32 %call, 0, !dbg !431
  br i1 %tobool, label %if.then, label %if.end, !dbg !433

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !434
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !436
  br label %if.end, !dbg !437

if.end:                                           ; preds = %if.then, %entry
  %call2 = call i32 @staticReturnsTrue(), !dbg !438
  %tobool3 = icmp ne i32 %call2, 0, !dbg !438
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !440

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !441, metadata !DIExpression()), !dbg !444
  call void @llvm.dbg.declare(metadata i32* %n, metadata !445, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !447, metadata !DIExpression()), !dbg !448
  %2 = load i8*, i8** %data, align 8, !dbg !449
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !451
  %cmp = icmp eq i32 %call5, 1, !dbg !452
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !453

if.then6:                                         ; preds = %if.then4
  store i32 0, i32* %intVariable, align 4, !dbg !454
  store i32 0, i32* %i, align 4, !dbg !456
  br label %for.cond, !dbg !458

for.cond:                                         ; preds = %for.inc, %if.then6
  %3 = load i32, i32* %i, align 4, !dbg !459
  %4 = load i32, i32* %n, align 4, !dbg !461
  %cmp7 = icmp slt i32 %3, %4, !dbg !462
  br i1 %cmp7, label %for.body, label %for.end, !dbg !463

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !464
  %inc = add nsw i32 %5, 1, !dbg !464
  store i32 %inc, i32* %intVariable, align 4, !dbg !464
  br label %for.inc, !dbg !466

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !467
  %inc8 = add nsw i32 %6, 1, !dbg !467
  store i32 %inc8, i32* %i, align 4, !dbg !467
  br label %for.cond, !dbg !468, !llvm.loop !469

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !471
  call void @printIntLine(i32 %7), !dbg !472
  br label %if.end9, !dbg !473

if.end9:                                          ; preds = %for.end, %if.then4
  br label %if.end10, !dbg !474

if.end10:                                         ; preds = %if.end9, %if.end
  ret void, !dbg !475
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_08_good() #0 !dbg !476 {
entry:
  call void @goodB2G1(), !dbg !477
  call void @goodB2G2(), !dbg !478
  call void @goodG2B1(), !dbg !479
  call void @goodG2B2(), !dbg !480
  ret void, !dbg !481
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_08.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_081/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "staticReturnsTrue", scope: !1, file: !1, line: 36, type: !11, scopeLine: 37, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!5}
!13 = !DILocation(line: 38, column: 5, scope: !10)
!14 = distinct !DISubprogram(name: "staticReturnsFalse", scope: !1, file: !1, line: 41, type: !11, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!15 = !DILocation(line: 43, column: 5, scope: !14)
!16 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_08_bad", scope: !1, file: !1, line: 48, type: !17, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !DILocalVariable(name: "data", scope: !16, file: !1, line: 50, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DILocation(line: 50, column: 12, scope: !16)
!23 = !DILocalVariable(name: "dataBuffer", scope: !16, file: !1, line: 51, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 51, column: 10, scope: !16)
!28 = !DILocation(line: 52, column: 12, scope: !16)
!29 = !DILocation(line: 52, column: 10, scope: !16)
!30 = !DILocation(line: 53, column: 8, scope: !31)
!31 = distinct !DILexicalBlock(scope: !16, file: !1, line: 53, column: 8)
!32 = !DILocation(line: 53, column: 8, scope: !16)
!33 = !DILocalVariable(name: "dataLen", scope: !34, file: !1, line: 57, type: !36)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 55, column: 9)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 54, column: 5)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 57, column: 20, scope: !34)
!40 = !DILocation(line: 57, column: 37, scope: !34)
!41 = !DILocation(line: 57, column: 30, scope: !34)
!42 = !DILocalVariable(name: "pFile", scope: !34, file: !1, line: 58, type: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !45, line: 7, baseType: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !47, line: 49, size: 1728, elements: !48)
!47 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!48 = !{!49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !64, !66, !67, !68, !72, !74, !76, !80, !83, !85, !88, !91, !92, !93, !94, !95}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !46, file: !47, line: 51, baseType: !5, size: 32)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !46, file: !47, line: 54, baseType: !20, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !46, file: !47, line: 55, baseType: !20, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !46, file: !47, line: 56, baseType: !20, size: 64, offset: 192)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !46, file: !47, line: 57, baseType: !20, size: 64, offset: 256)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !46, file: !47, line: 58, baseType: !20, size: 64, offset: 320)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !46, file: !47, line: 59, baseType: !20, size: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !46, file: !47, line: 60, baseType: !20, size: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !46, file: !47, line: 61, baseType: !20, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !46, file: !47, line: 64, baseType: !20, size: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !46, file: !47, line: 65, baseType: !20, size: 64, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !46, file: !47, line: 66, baseType: !20, size: 64, offset: 704)
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
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !78)
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
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 160, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 20)
!99 = !DILocation(line: 58, column: 20, scope: !34)
!100 = !DILocation(line: 60, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !34, file: !1, line: 60, column: 17)
!102 = !DILocation(line: 60, column: 20, scope: !101)
!103 = !DILocation(line: 60, column: 29, scope: !101)
!104 = !DILocation(line: 60, column: 17, scope: !34)
!105 = !DILocation(line: 62, column: 25, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 61, column: 13)
!107 = !DILocation(line: 62, column: 23, scope: !106)
!108 = !DILocation(line: 63, column: 21, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 63, column: 21)
!110 = !DILocation(line: 63, column: 27, scope: !109)
!111 = !DILocation(line: 63, column: 21, scope: !106)
!112 = !DILocation(line: 66, column: 31, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !1, line: 66, column: 25)
!114 = distinct !DILexicalBlock(scope: !109, file: !1, line: 64, column: 17)
!115 = !DILocation(line: 66, column: 36, scope: !113)
!116 = !DILocation(line: 66, column: 35, scope: !113)
!117 = !DILocation(line: 66, column: 55, scope: !113)
!118 = !DILocation(line: 66, column: 54, scope: !113)
!119 = !DILocation(line: 66, column: 45, scope: !113)
!120 = !DILocation(line: 66, column: 65, scope: !113)
!121 = !DILocation(line: 66, column: 25, scope: !113)
!122 = !DILocation(line: 66, column: 72, scope: !113)
!123 = !DILocation(line: 66, column: 25, scope: !114)
!124 = !DILocation(line: 68, column: 25, scope: !125)
!125 = distinct !DILexicalBlock(scope: !113, file: !1, line: 67, column: 21)
!126 = !DILocation(line: 70, column: 25, scope: !125)
!127 = !DILocation(line: 70, column: 30, scope: !125)
!128 = !DILocation(line: 70, column: 39, scope: !125)
!129 = !DILocation(line: 71, column: 21, scope: !125)
!130 = !DILocation(line: 72, column: 28, scope: !114)
!131 = !DILocation(line: 72, column: 21, scope: !114)
!132 = !DILocation(line: 73, column: 17, scope: !114)
!133 = !DILocation(line: 74, column: 13, scope: !106)
!134 = !DILocation(line: 76, column: 5, scope: !35)
!135 = !DILocation(line: 77, column: 8, scope: !136)
!136 = distinct !DILexicalBlock(scope: !16, file: !1, line: 77, column: 8)
!137 = !DILocation(line: 77, column: 8, scope: !16)
!138 = !DILocalVariable(name: "i", scope: !139, file: !1, line: 80, type: !5)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 79, column: 9)
!140 = distinct !DILexicalBlock(scope: !136, file: !1, line: 78, column: 5)
!141 = !DILocation(line: 80, column: 17, scope: !139)
!142 = !DILocalVariable(name: "n", scope: !139, file: !1, line: 80, type: !5)
!143 = !DILocation(line: 80, column: 20, scope: !139)
!144 = !DILocalVariable(name: "intVariable", scope: !139, file: !1, line: 80, type: !5)
!145 = !DILocation(line: 80, column: 23, scope: !139)
!146 = !DILocation(line: 81, column: 24, scope: !147)
!147 = distinct !DILexicalBlock(scope: !139, file: !1, line: 81, column: 17)
!148 = !DILocation(line: 81, column: 17, scope: !147)
!149 = !DILocation(line: 81, column: 40, scope: !147)
!150 = !DILocation(line: 81, column: 17, scope: !139)
!151 = !DILocation(line: 84, column: 29, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !1, line: 82, column: 13)
!153 = !DILocation(line: 85, column: 24, scope: !154)
!154 = distinct !DILexicalBlock(scope: !152, file: !1, line: 85, column: 17)
!155 = !DILocation(line: 85, column: 22, scope: !154)
!156 = !DILocation(line: 85, column: 29, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !1, line: 85, column: 17)
!158 = !DILocation(line: 85, column: 33, scope: !157)
!159 = !DILocation(line: 85, column: 31, scope: !157)
!160 = !DILocation(line: 85, column: 17, scope: !154)
!161 = !DILocation(line: 88, column: 32, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !1, line: 86, column: 17)
!163 = !DILocation(line: 89, column: 17, scope: !162)
!164 = !DILocation(line: 85, column: 37, scope: !157)
!165 = !DILocation(line: 85, column: 17, scope: !157)
!166 = distinct !{!166, !160, !167, !168}
!167 = !DILocation(line: 89, column: 17, scope: !154)
!168 = !{!"llvm.loop.mustprogress"}
!169 = !DILocation(line: 90, column: 30, scope: !152)
!170 = !DILocation(line: 90, column: 17, scope: !152)
!171 = !DILocation(line: 91, column: 13, scope: !152)
!172 = !DILocation(line: 93, column: 5, scope: !140)
!173 = !DILocation(line: 94, column: 1, scope: !16)
!174 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 101, type: !17, scopeLine: 102, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!175 = !DILocalVariable(name: "data", scope: !174, file: !1, line: 103, type: !20)
!176 = !DILocation(line: 103, column: 12, scope: !174)
!177 = !DILocalVariable(name: "dataBuffer", scope: !174, file: !1, line: 104, type: !24)
!178 = !DILocation(line: 104, column: 10, scope: !174)
!179 = !DILocation(line: 105, column: 12, scope: !174)
!180 = !DILocation(line: 105, column: 10, scope: !174)
!181 = !DILocation(line: 106, column: 8, scope: !182)
!182 = distinct !DILexicalBlock(scope: !174, file: !1, line: 106, column: 8)
!183 = !DILocation(line: 106, column: 8, scope: !174)
!184 = !DILocalVariable(name: "dataLen", scope: !185, file: !1, line: 110, type: !36)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 108, column: 9)
!186 = distinct !DILexicalBlock(scope: !182, file: !1, line: 107, column: 5)
!187 = !DILocation(line: 110, column: 20, scope: !185)
!188 = !DILocation(line: 110, column: 37, scope: !185)
!189 = !DILocation(line: 110, column: 30, scope: !185)
!190 = !DILocalVariable(name: "pFile", scope: !185, file: !1, line: 111, type: !43)
!191 = !DILocation(line: 111, column: 20, scope: !185)
!192 = !DILocation(line: 113, column: 21, scope: !193)
!193 = distinct !DILexicalBlock(scope: !185, file: !1, line: 113, column: 17)
!194 = !DILocation(line: 113, column: 20, scope: !193)
!195 = !DILocation(line: 113, column: 29, scope: !193)
!196 = !DILocation(line: 113, column: 17, scope: !185)
!197 = !DILocation(line: 115, column: 25, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !1, line: 114, column: 13)
!199 = !DILocation(line: 115, column: 23, scope: !198)
!200 = !DILocation(line: 116, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !1, line: 116, column: 21)
!202 = !DILocation(line: 116, column: 27, scope: !201)
!203 = !DILocation(line: 116, column: 21, scope: !198)
!204 = !DILocation(line: 119, column: 31, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !1, line: 119, column: 25)
!206 = distinct !DILexicalBlock(scope: !201, file: !1, line: 117, column: 17)
!207 = !DILocation(line: 119, column: 36, scope: !205)
!208 = !DILocation(line: 119, column: 35, scope: !205)
!209 = !DILocation(line: 119, column: 55, scope: !205)
!210 = !DILocation(line: 119, column: 54, scope: !205)
!211 = !DILocation(line: 119, column: 45, scope: !205)
!212 = !DILocation(line: 119, column: 65, scope: !205)
!213 = !DILocation(line: 119, column: 25, scope: !205)
!214 = !DILocation(line: 119, column: 72, scope: !205)
!215 = !DILocation(line: 119, column: 25, scope: !206)
!216 = !DILocation(line: 121, column: 25, scope: !217)
!217 = distinct !DILexicalBlock(scope: !205, file: !1, line: 120, column: 21)
!218 = !DILocation(line: 123, column: 25, scope: !217)
!219 = !DILocation(line: 123, column: 30, scope: !217)
!220 = !DILocation(line: 123, column: 39, scope: !217)
!221 = !DILocation(line: 124, column: 21, scope: !217)
!222 = !DILocation(line: 125, column: 28, scope: !206)
!223 = !DILocation(line: 125, column: 21, scope: !206)
!224 = !DILocation(line: 126, column: 17, scope: !206)
!225 = !DILocation(line: 127, column: 13, scope: !198)
!226 = !DILocation(line: 129, column: 5, scope: !186)
!227 = !DILocation(line: 130, column: 8, scope: !228)
!228 = distinct !DILexicalBlock(scope: !174, file: !1, line: 130, column: 8)
!229 = !DILocation(line: 130, column: 8, scope: !174)
!230 = !DILocation(line: 133, column: 9, scope: !231)
!231 = distinct !DILexicalBlock(scope: !228, file: !1, line: 131, column: 5)
!232 = !DILocation(line: 134, column: 5, scope: !231)
!233 = !DILocalVariable(name: "i", scope: !234, file: !1, line: 138, type: !5)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 137, column: 9)
!235 = distinct !DILexicalBlock(scope: !228, file: !1, line: 136, column: 5)
!236 = !DILocation(line: 138, column: 17, scope: !234)
!237 = !DILocalVariable(name: "n", scope: !234, file: !1, line: 138, type: !5)
!238 = !DILocation(line: 138, column: 20, scope: !234)
!239 = !DILocalVariable(name: "intVariable", scope: !234, file: !1, line: 138, type: !5)
!240 = !DILocation(line: 138, column: 23, scope: !234)
!241 = !DILocation(line: 139, column: 24, scope: !242)
!242 = distinct !DILexicalBlock(scope: !234, file: !1, line: 139, column: 17)
!243 = !DILocation(line: 139, column: 17, scope: !242)
!244 = !DILocation(line: 139, column: 40, scope: !242)
!245 = !DILocation(line: 139, column: 17, scope: !234)
!246 = !DILocation(line: 142, column: 21, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !1, line: 142, column: 21)
!248 = distinct !DILexicalBlock(scope: !242, file: !1, line: 140, column: 13)
!249 = !DILocation(line: 142, column: 23, scope: !247)
!250 = !DILocation(line: 142, column: 21, scope: !248)
!251 = !DILocation(line: 144, column: 33, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !1, line: 143, column: 17)
!253 = !DILocation(line: 145, column: 28, scope: !254)
!254 = distinct !DILexicalBlock(scope: !252, file: !1, line: 145, column: 21)
!255 = !DILocation(line: 145, column: 26, scope: !254)
!256 = !DILocation(line: 145, column: 33, scope: !257)
!257 = distinct !DILexicalBlock(scope: !254, file: !1, line: 145, column: 21)
!258 = !DILocation(line: 145, column: 37, scope: !257)
!259 = !DILocation(line: 145, column: 35, scope: !257)
!260 = !DILocation(line: 145, column: 21, scope: !254)
!261 = !DILocation(line: 148, column: 36, scope: !262)
!262 = distinct !DILexicalBlock(scope: !257, file: !1, line: 146, column: 21)
!263 = !DILocation(line: 149, column: 21, scope: !262)
!264 = !DILocation(line: 145, column: 41, scope: !257)
!265 = !DILocation(line: 145, column: 21, scope: !257)
!266 = distinct !{!266, !260, !267, !168}
!267 = !DILocation(line: 149, column: 21, scope: !254)
!268 = !DILocation(line: 150, column: 34, scope: !252)
!269 = !DILocation(line: 150, column: 21, scope: !252)
!270 = !DILocation(line: 151, column: 17, scope: !252)
!271 = !DILocation(line: 152, column: 13, scope: !248)
!272 = !DILocation(line: 155, column: 1, scope: !174)
!273 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 158, type: !17, scopeLine: 159, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!274 = !DILocalVariable(name: "data", scope: !273, file: !1, line: 160, type: !20)
!275 = !DILocation(line: 160, column: 12, scope: !273)
!276 = !DILocalVariable(name: "dataBuffer", scope: !273, file: !1, line: 161, type: !24)
!277 = !DILocation(line: 161, column: 10, scope: !273)
!278 = !DILocation(line: 162, column: 12, scope: !273)
!279 = !DILocation(line: 162, column: 10, scope: !273)
!280 = !DILocation(line: 163, column: 8, scope: !281)
!281 = distinct !DILexicalBlock(scope: !273, file: !1, line: 163, column: 8)
!282 = !DILocation(line: 163, column: 8, scope: !273)
!283 = !DILocalVariable(name: "dataLen", scope: !284, file: !1, line: 167, type: !36)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 165, column: 9)
!285 = distinct !DILexicalBlock(scope: !281, file: !1, line: 164, column: 5)
!286 = !DILocation(line: 167, column: 20, scope: !284)
!287 = !DILocation(line: 167, column: 37, scope: !284)
!288 = !DILocation(line: 167, column: 30, scope: !284)
!289 = !DILocalVariable(name: "pFile", scope: !284, file: !1, line: 168, type: !43)
!290 = !DILocation(line: 168, column: 20, scope: !284)
!291 = !DILocation(line: 170, column: 21, scope: !292)
!292 = distinct !DILexicalBlock(scope: !284, file: !1, line: 170, column: 17)
!293 = !DILocation(line: 170, column: 20, scope: !292)
!294 = !DILocation(line: 170, column: 29, scope: !292)
!295 = !DILocation(line: 170, column: 17, scope: !284)
!296 = !DILocation(line: 172, column: 25, scope: !297)
!297 = distinct !DILexicalBlock(scope: !292, file: !1, line: 171, column: 13)
!298 = !DILocation(line: 172, column: 23, scope: !297)
!299 = !DILocation(line: 173, column: 21, scope: !300)
!300 = distinct !DILexicalBlock(scope: !297, file: !1, line: 173, column: 21)
!301 = !DILocation(line: 173, column: 27, scope: !300)
!302 = !DILocation(line: 173, column: 21, scope: !297)
!303 = !DILocation(line: 176, column: 31, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !1, line: 176, column: 25)
!305 = distinct !DILexicalBlock(scope: !300, file: !1, line: 174, column: 17)
!306 = !DILocation(line: 176, column: 36, scope: !304)
!307 = !DILocation(line: 176, column: 35, scope: !304)
!308 = !DILocation(line: 176, column: 55, scope: !304)
!309 = !DILocation(line: 176, column: 54, scope: !304)
!310 = !DILocation(line: 176, column: 45, scope: !304)
!311 = !DILocation(line: 176, column: 65, scope: !304)
!312 = !DILocation(line: 176, column: 25, scope: !304)
!313 = !DILocation(line: 176, column: 72, scope: !304)
!314 = !DILocation(line: 176, column: 25, scope: !305)
!315 = !DILocation(line: 178, column: 25, scope: !316)
!316 = distinct !DILexicalBlock(scope: !304, file: !1, line: 177, column: 21)
!317 = !DILocation(line: 180, column: 25, scope: !316)
!318 = !DILocation(line: 180, column: 30, scope: !316)
!319 = !DILocation(line: 180, column: 39, scope: !316)
!320 = !DILocation(line: 181, column: 21, scope: !316)
!321 = !DILocation(line: 182, column: 28, scope: !305)
!322 = !DILocation(line: 182, column: 21, scope: !305)
!323 = !DILocation(line: 183, column: 17, scope: !305)
!324 = !DILocation(line: 184, column: 13, scope: !297)
!325 = !DILocation(line: 186, column: 5, scope: !285)
!326 = !DILocation(line: 187, column: 8, scope: !327)
!327 = distinct !DILexicalBlock(scope: !273, file: !1, line: 187, column: 8)
!328 = !DILocation(line: 187, column: 8, scope: !273)
!329 = !DILocalVariable(name: "i", scope: !330, file: !1, line: 190, type: !5)
!330 = distinct !DILexicalBlock(scope: !331, file: !1, line: 189, column: 9)
!331 = distinct !DILexicalBlock(scope: !327, file: !1, line: 188, column: 5)
!332 = !DILocation(line: 190, column: 17, scope: !330)
!333 = !DILocalVariable(name: "n", scope: !330, file: !1, line: 190, type: !5)
!334 = !DILocation(line: 190, column: 20, scope: !330)
!335 = !DILocalVariable(name: "intVariable", scope: !330, file: !1, line: 190, type: !5)
!336 = !DILocation(line: 190, column: 23, scope: !330)
!337 = !DILocation(line: 191, column: 24, scope: !338)
!338 = distinct !DILexicalBlock(scope: !330, file: !1, line: 191, column: 17)
!339 = !DILocation(line: 191, column: 17, scope: !338)
!340 = !DILocation(line: 191, column: 40, scope: !338)
!341 = !DILocation(line: 191, column: 17, scope: !330)
!342 = !DILocation(line: 194, column: 21, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 194, column: 21)
!344 = distinct !DILexicalBlock(scope: !338, file: !1, line: 192, column: 13)
!345 = !DILocation(line: 194, column: 23, scope: !343)
!346 = !DILocation(line: 194, column: 21, scope: !344)
!347 = !DILocation(line: 196, column: 33, scope: !348)
!348 = distinct !DILexicalBlock(scope: !343, file: !1, line: 195, column: 17)
!349 = !DILocation(line: 197, column: 28, scope: !350)
!350 = distinct !DILexicalBlock(scope: !348, file: !1, line: 197, column: 21)
!351 = !DILocation(line: 197, column: 26, scope: !350)
!352 = !DILocation(line: 197, column: 33, scope: !353)
!353 = distinct !DILexicalBlock(scope: !350, file: !1, line: 197, column: 21)
!354 = !DILocation(line: 197, column: 37, scope: !353)
!355 = !DILocation(line: 197, column: 35, scope: !353)
!356 = !DILocation(line: 197, column: 21, scope: !350)
!357 = !DILocation(line: 200, column: 36, scope: !358)
!358 = distinct !DILexicalBlock(scope: !353, file: !1, line: 198, column: 21)
!359 = !DILocation(line: 201, column: 21, scope: !358)
!360 = !DILocation(line: 197, column: 41, scope: !353)
!361 = !DILocation(line: 197, column: 21, scope: !353)
!362 = distinct !{!362, !356, !363, !168}
!363 = !DILocation(line: 201, column: 21, scope: !350)
!364 = !DILocation(line: 202, column: 34, scope: !348)
!365 = !DILocation(line: 202, column: 21, scope: !348)
!366 = !DILocation(line: 203, column: 17, scope: !348)
!367 = !DILocation(line: 204, column: 13, scope: !344)
!368 = !DILocation(line: 206, column: 5, scope: !331)
!369 = !DILocation(line: 207, column: 1, scope: !273)
!370 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 210, type: !17, scopeLine: 211, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!371 = !DILocalVariable(name: "data", scope: !370, file: !1, line: 212, type: !20)
!372 = !DILocation(line: 212, column: 12, scope: !370)
!373 = !DILocalVariable(name: "dataBuffer", scope: !370, file: !1, line: 213, type: !24)
!374 = !DILocation(line: 213, column: 10, scope: !370)
!375 = !DILocation(line: 214, column: 12, scope: !370)
!376 = !DILocation(line: 214, column: 10, scope: !370)
!377 = !DILocation(line: 215, column: 8, scope: !378)
!378 = distinct !DILexicalBlock(scope: !370, file: !1, line: 215, column: 8)
!379 = !DILocation(line: 215, column: 8, scope: !370)
!380 = !DILocation(line: 218, column: 9, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !1, line: 216, column: 5)
!382 = !DILocation(line: 219, column: 5, scope: !381)
!383 = !DILocation(line: 223, column: 16, scope: !384)
!384 = distinct !DILexicalBlock(scope: !378, file: !1, line: 221, column: 5)
!385 = !DILocation(line: 223, column: 9, scope: !384)
!386 = !DILocation(line: 225, column: 8, scope: !387)
!387 = distinct !DILexicalBlock(scope: !370, file: !1, line: 225, column: 8)
!388 = !DILocation(line: 225, column: 8, scope: !370)
!389 = !DILocalVariable(name: "i", scope: !390, file: !1, line: 228, type: !5)
!390 = distinct !DILexicalBlock(scope: !391, file: !1, line: 227, column: 9)
!391 = distinct !DILexicalBlock(scope: !387, file: !1, line: 226, column: 5)
!392 = !DILocation(line: 228, column: 17, scope: !390)
!393 = !DILocalVariable(name: "n", scope: !390, file: !1, line: 228, type: !5)
!394 = !DILocation(line: 228, column: 20, scope: !390)
!395 = !DILocalVariable(name: "intVariable", scope: !390, file: !1, line: 228, type: !5)
!396 = !DILocation(line: 228, column: 23, scope: !390)
!397 = !DILocation(line: 229, column: 24, scope: !398)
!398 = distinct !DILexicalBlock(scope: !390, file: !1, line: 229, column: 17)
!399 = !DILocation(line: 229, column: 17, scope: !398)
!400 = !DILocation(line: 229, column: 40, scope: !398)
!401 = !DILocation(line: 229, column: 17, scope: !390)
!402 = !DILocation(line: 232, column: 29, scope: !403)
!403 = distinct !DILexicalBlock(scope: !398, file: !1, line: 230, column: 13)
!404 = !DILocation(line: 233, column: 24, scope: !405)
!405 = distinct !DILexicalBlock(scope: !403, file: !1, line: 233, column: 17)
!406 = !DILocation(line: 233, column: 22, scope: !405)
!407 = !DILocation(line: 233, column: 29, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !1, line: 233, column: 17)
!409 = !DILocation(line: 233, column: 33, scope: !408)
!410 = !DILocation(line: 233, column: 31, scope: !408)
!411 = !DILocation(line: 233, column: 17, scope: !405)
!412 = !DILocation(line: 236, column: 32, scope: !413)
!413 = distinct !DILexicalBlock(scope: !408, file: !1, line: 234, column: 17)
!414 = !DILocation(line: 237, column: 17, scope: !413)
!415 = !DILocation(line: 233, column: 37, scope: !408)
!416 = !DILocation(line: 233, column: 17, scope: !408)
!417 = distinct !{!417, !411, !418, !168}
!418 = !DILocation(line: 237, column: 17, scope: !405)
!419 = !DILocation(line: 238, column: 30, scope: !403)
!420 = !DILocation(line: 238, column: 17, scope: !403)
!421 = !DILocation(line: 239, column: 13, scope: !403)
!422 = !DILocation(line: 241, column: 5, scope: !391)
!423 = !DILocation(line: 242, column: 1, scope: !370)
!424 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 245, type: !17, scopeLine: 246, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!425 = !DILocalVariable(name: "data", scope: !424, file: !1, line: 247, type: !20)
!426 = !DILocation(line: 247, column: 12, scope: !424)
!427 = !DILocalVariable(name: "dataBuffer", scope: !424, file: !1, line: 248, type: !24)
!428 = !DILocation(line: 248, column: 10, scope: !424)
!429 = !DILocation(line: 249, column: 12, scope: !424)
!430 = !DILocation(line: 249, column: 10, scope: !424)
!431 = !DILocation(line: 250, column: 8, scope: !432)
!432 = distinct !DILexicalBlock(scope: !424, file: !1, line: 250, column: 8)
!433 = !DILocation(line: 250, column: 8, scope: !424)
!434 = !DILocation(line: 253, column: 16, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !1, line: 251, column: 5)
!436 = !DILocation(line: 253, column: 9, scope: !435)
!437 = !DILocation(line: 254, column: 5, scope: !435)
!438 = !DILocation(line: 255, column: 8, scope: !439)
!439 = distinct !DILexicalBlock(scope: !424, file: !1, line: 255, column: 8)
!440 = !DILocation(line: 255, column: 8, scope: !424)
!441 = !DILocalVariable(name: "i", scope: !442, file: !1, line: 258, type: !5)
!442 = distinct !DILexicalBlock(scope: !443, file: !1, line: 257, column: 9)
!443 = distinct !DILexicalBlock(scope: !439, file: !1, line: 256, column: 5)
!444 = !DILocation(line: 258, column: 17, scope: !442)
!445 = !DILocalVariable(name: "n", scope: !442, file: !1, line: 258, type: !5)
!446 = !DILocation(line: 258, column: 20, scope: !442)
!447 = !DILocalVariable(name: "intVariable", scope: !442, file: !1, line: 258, type: !5)
!448 = !DILocation(line: 258, column: 23, scope: !442)
!449 = !DILocation(line: 259, column: 24, scope: !450)
!450 = distinct !DILexicalBlock(scope: !442, file: !1, line: 259, column: 17)
!451 = !DILocation(line: 259, column: 17, scope: !450)
!452 = !DILocation(line: 259, column: 40, scope: !450)
!453 = !DILocation(line: 259, column: 17, scope: !442)
!454 = !DILocation(line: 262, column: 29, scope: !455)
!455 = distinct !DILexicalBlock(scope: !450, file: !1, line: 260, column: 13)
!456 = !DILocation(line: 263, column: 24, scope: !457)
!457 = distinct !DILexicalBlock(scope: !455, file: !1, line: 263, column: 17)
!458 = !DILocation(line: 263, column: 22, scope: !457)
!459 = !DILocation(line: 263, column: 29, scope: !460)
!460 = distinct !DILexicalBlock(scope: !457, file: !1, line: 263, column: 17)
!461 = !DILocation(line: 263, column: 33, scope: !460)
!462 = !DILocation(line: 263, column: 31, scope: !460)
!463 = !DILocation(line: 263, column: 17, scope: !457)
!464 = !DILocation(line: 266, column: 32, scope: !465)
!465 = distinct !DILexicalBlock(scope: !460, file: !1, line: 264, column: 17)
!466 = !DILocation(line: 267, column: 17, scope: !465)
!467 = !DILocation(line: 263, column: 37, scope: !460)
!468 = !DILocation(line: 263, column: 17, scope: !460)
!469 = distinct !{!469, !463, !470, !168}
!470 = !DILocation(line: 267, column: 17, scope: !457)
!471 = !DILocation(line: 268, column: 30, scope: !455)
!472 = !DILocation(line: 268, column: 17, scope: !455)
!473 = !DILocation(line: 269, column: 13, scope: !455)
!474 = !DILocation(line: 271, column: 5, scope: !443)
!475 = !DILocation(line: 272, column: 1, scope: !424)
!476 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_08_good", scope: !1, file: !1, line: 274, type: !17, scopeLine: 275, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!477 = !DILocation(line: 276, column: 5, scope: !476)
!478 = !DILocation(line: 277, column: 5, scope: !476)
!479 = !DILocation(line: 278, column: 5, scope: !476)
!480 = !DILocation(line: 279, column: 5, scope: !476)
!481 = !DILocation(line: 280, column: 1, scope: !476)
