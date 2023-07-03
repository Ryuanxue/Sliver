; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_02.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_02.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_02_bad() #0 !dbg !10 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !24, metadata !DIExpression()), !dbg !31
  %1 = load i8*, i8** %data, align 8, !dbg !32
  %call = call i64 @strlen(i8* %1) #6, !dbg !33
  store i64 %call, i64* %dataLen, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !34, metadata !DIExpression()), !dbg !91
  %2 = load i64, i64* %dataLen, align 8, !dbg !92
  %sub = sub i64 100, %2, !dbg !94
  %cmp = icmp ugt i64 %sub, 1, !dbg !95
  br i1 %cmp, label %if.then, label %if.end11, !dbg !96

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !97
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !99
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !100
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !102
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !103

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !104
  %5 = load i64, i64* %dataLen, align 8, !dbg !107
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !108
  %6 = load i64, i64* %dataLen, align 8, !dbg !109
  %sub4 = sub i64 100, %6, !dbg !110
  %conv = trunc i64 %sub4 to i32, !dbg !111
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !112
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !113
  %cmp6 = icmp eq i8* %call5, null, !dbg !114
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !115

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !116
  %8 = load i8*, i8** %data, align 8, !dbg !118
  %9 = load i64, i64* %dataLen, align 8, !dbg !119
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !118
  store i8 0, i8* %arrayidx, align 1, !dbg !120
  br label %if.end, !dbg !121

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !122
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !123
  br label %if.end10, !dbg !124

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !125

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !126, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %n, metadata !131, metadata !DIExpression()), !dbg !132
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !133, metadata !DIExpression()), !dbg !134
  %11 = load i8*, i8** %data, align 8, !dbg !135
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !137
  %cmp13 = icmp eq i32 %call12, 1, !dbg !138
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !139

if.then15:                                        ; preds = %if.end11
  store i32 0, i32* %intVariable, align 4, !dbg !140
  store i32 0, i32* %i, align 4, !dbg !142
  br label %for.cond, !dbg !144

for.cond:                                         ; preds = %for.inc, %if.then15
  %12 = load i32, i32* %i, align 4, !dbg !145
  %13 = load i32, i32* %n, align 4, !dbg !147
  %cmp16 = icmp slt i32 %12, %13, !dbg !148
  br i1 %cmp16, label %for.body, label %for.end, !dbg !149

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !150
  %inc = add nsw i32 %14, 1, !dbg !150
  store i32 %inc, i32* %intVariable, align 4, !dbg !150
  br label %for.inc, !dbg !152

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !153
  %inc18 = add nsw i32 %15, 1, !dbg !153
  store i32 %inc18, i32* %i, align 4, !dbg !153
  br label %for.cond, !dbg !154, !llvm.loop !155

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !158
  call void @printIntLine(i32 %16), !dbg !159
  br label %if.end19, !dbg !160

if.end19:                                         ; preds = %for.end, %if.end11
  ret void, !dbg !161
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
define dso_local void @goodB2G1() #0 !dbg !162 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !165, metadata !DIExpression()), !dbg !166
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !166
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !166
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !167
  store i8* %arraydecay, i8** %data, align 8, !dbg !168
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !169, metadata !DIExpression()), !dbg !173
  %1 = load i8*, i8** %data, align 8, !dbg !174
  %call = call i64 @strlen(i8* %1) #6, !dbg !175
  store i64 %call, i64* %dataLen, align 8, !dbg !173
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !176, metadata !DIExpression()), !dbg !177
  %2 = load i64, i64* %dataLen, align 8, !dbg !178
  %sub = sub i64 100, %2, !dbg !180
  %cmp = icmp ugt i64 %sub, 1, !dbg !181
  br i1 %cmp, label %if.then, label %if.end11, !dbg !182

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !183
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !185
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !186
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !188
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !189

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !190
  %5 = load i64, i64* %dataLen, align 8, !dbg !193
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !194
  %6 = load i64, i64* %dataLen, align 8, !dbg !195
  %sub4 = sub i64 100, %6, !dbg !196
  %conv = trunc i64 %sub4 to i32, !dbg !197
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !198
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !199
  %cmp6 = icmp eq i8* %call5, null, !dbg !200
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !201

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !202
  %8 = load i8*, i8** %data, align 8, !dbg !204
  %9 = load i64, i64* %dataLen, align 8, !dbg !205
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !204
  store i8 0, i8* %arrayidx, align 1, !dbg !206
  br label %if.end, !dbg !207

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !208
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !209
  br label %if.end10, !dbg !210

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !211

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !212, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %n, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !219, metadata !DIExpression()), !dbg !220
  %11 = load i8*, i8** %data, align 8, !dbg !221
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !223
  %cmp13 = icmp eq i32 %call12, 1, !dbg !224
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !225

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %n, align 4, !dbg !226
  %cmp16 = icmp slt i32 %12, 10000, !dbg !229
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !230

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !231
  store i32 0, i32* %i, align 4, !dbg !233
  br label %for.cond, !dbg !235

for.cond:                                         ; preds = %for.inc, %if.then18
  %13 = load i32, i32* %i, align 4, !dbg !236
  %14 = load i32, i32* %n, align 4, !dbg !238
  %cmp19 = icmp slt i32 %13, %14, !dbg !239
  br i1 %cmp19, label %for.body, label %for.end, !dbg !240

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !241
  %inc = add nsw i32 %15, 1, !dbg !241
  store i32 %inc, i32* %intVariable, align 4, !dbg !241
  br label %for.inc, !dbg !243

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !244
  %inc21 = add nsw i32 %16, 1, !dbg !244
  store i32 %inc21, i32* %i, align 4, !dbg !244
  br label %for.cond, !dbg !245, !llvm.loop !246

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !248
  call void @printIntLine(i32 %17), !dbg !249
  br label %if.end22, !dbg !250

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !251

if.end23:                                         ; preds = %if.end22, %if.end11
  ret void, !dbg !252
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !253 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !254, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !257
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !257
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !258
  store i8* %arraydecay, i8** %data, align 8, !dbg !259
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !260, metadata !DIExpression()), !dbg !264
  %1 = load i8*, i8** %data, align 8, !dbg !265
  %call = call i64 @strlen(i8* %1) #6, !dbg !266
  store i64 %call, i64* %dataLen, align 8, !dbg !264
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !267, metadata !DIExpression()), !dbg !268
  %2 = load i64, i64* %dataLen, align 8, !dbg !269
  %sub = sub i64 100, %2, !dbg !271
  %cmp = icmp ugt i64 %sub, 1, !dbg !272
  br i1 %cmp, label %if.then, label %if.end11, !dbg !273

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !274
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !276
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !277
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !279
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !280

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !281
  %5 = load i64, i64* %dataLen, align 8, !dbg !284
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !285
  %6 = load i64, i64* %dataLen, align 8, !dbg !286
  %sub4 = sub i64 100, %6, !dbg !287
  %conv = trunc i64 %sub4 to i32, !dbg !288
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !289
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !290
  %cmp6 = icmp eq i8* %call5, null, !dbg !291
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !292

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !293
  %8 = load i8*, i8** %data, align 8, !dbg !295
  %9 = load i64, i64* %dataLen, align 8, !dbg !296
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !295
  store i8 0, i8* %arrayidx, align 1, !dbg !297
  br label %if.end, !dbg !298

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !299
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !300
  br label %if.end10, !dbg !301

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !302

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !303, metadata !DIExpression()), !dbg !307
  call void @llvm.dbg.declare(metadata i32* %n, metadata !308, metadata !DIExpression()), !dbg !309
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !310, metadata !DIExpression()), !dbg !311
  %11 = load i8*, i8** %data, align 8, !dbg !312
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !314
  %cmp13 = icmp eq i32 %call12, 1, !dbg !315
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !316

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %n, align 4, !dbg !317
  %cmp16 = icmp slt i32 %12, 10000, !dbg !320
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !321

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !322
  store i32 0, i32* %i, align 4, !dbg !324
  br label %for.cond, !dbg !326

for.cond:                                         ; preds = %for.inc, %if.then18
  %13 = load i32, i32* %i, align 4, !dbg !327
  %14 = load i32, i32* %n, align 4, !dbg !329
  %cmp19 = icmp slt i32 %13, %14, !dbg !330
  br i1 %cmp19, label %for.body, label %for.end, !dbg !331

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !332
  %inc = add nsw i32 %15, 1, !dbg !332
  store i32 %inc, i32* %intVariable, align 4, !dbg !332
  br label %for.inc, !dbg !334

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !335
  %inc21 = add nsw i32 %16, 1, !dbg !335
  store i32 %inc21, i32* %i, align 4, !dbg !335
  br label %for.cond, !dbg !336, !llvm.loop !337

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !339
  call void @printIntLine(i32 %17), !dbg !340
  br label %if.end22, !dbg !341

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !342

if.end23:                                         ; preds = %if.end22, %if.end11
  ret void, !dbg !343
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !344 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !347, metadata !DIExpression()), !dbg !348
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !348
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !348
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !349
  store i8* %arraydecay, i8** %data, align 8, !dbg !350
  %1 = load i8*, i8** %data, align 8, !dbg !351
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !354
  call void @llvm.dbg.declare(metadata i32* %i, metadata !355, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata i32* %n, metadata !360, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !362, metadata !DIExpression()), !dbg !363
  %2 = load i8*, i8** %data, align 8, !dbg !364
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !366
  %cmp = icmp eq i32 %call1, 1, !dbg !367
  br i1 %cmp, label %if.then, label %if.end, !dbg !368

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !369
  store i32 0, i32* %i, align 4, !dbg !371
  br label %for.cond, !dbg !373

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !374
  %4 = load i32, i32* %n, align 4, !dbg !376
  %cmp2 = icmp slt i32 %3, %4, !dbg !377
  br i1 %cmp2, label %for.body, label %for.end, !dbg !378

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !379
  %inc = add nsw i32 %5, 1, !dbg !379
  store i32 %inc, i32* %intVariable, align 4, !dbg !379
  br label %for.inc, !dbg !381

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !382
  %inc3 = add nsw i32 %6, 1, !dbg !382
  store i32 %inc3, i32* %i, align 4, !dbg !382
  br label %for.cond, !dbg !383, !llvm.loop !384

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !386
  call void @printIntLine(i32 %7), !dbg !387
  br label %if.end, !dbg !388

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !389
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !390 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !393, metadata !DIExpression()), !dbg !394
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !394
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !394
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !395
  store i8* %arraydecay, i8** %data, align 8, !dbg !396
  %1 = load i8*, i8** %data, align 8, !dbg !397
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !400
  call void @llvm.dbg.declare(metadata i32* %i, metadata !401, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.declare(metadata i32* %n, metadata !406, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !408, metadata !DIExpression()), !dbg !409
  %2 = load i8*, i8** %data, align 8, !dbg !410
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !412
  %cmp = icmp eq i32 %call1, 1, !dbg !413
  br i1 %cmp, label %if.then, label %if.end, !dbg !414

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !415
  store i32 0, i32* %i, align 4, !dbg !417
  br label %for.cond, !dbg !419

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !420
  %4 = load i32, i32* %n, align 4, !dbg !422
  %cmp2 = icmp slt i32 %3, %4, !dbg !423
  br i1 %cmp2, label %for.body, label %for.end, !dbg !424

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !425
  %inc = add nsw i32 %5, 1, !dbg !425
  store i32 %inc, i32* %intVariable, align 4, !dbg !425
  br label %for.inc, !dbg !427

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !428
  %inc3 = add nsw i32 %6, 1, !dbg !428
  store i32 %inc3, i32* %i, align 4, !dbg !428
  br label %for.cond, !dbg !429, !llvm.loop !430

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !432
  call void @printIntLine(i32 %7), !dbg !433
  br label %if.end, !dbg !434

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_02_good() #0 !dbg !436 {
entry:
  call void @goodB2G1(), !dbg !437
  call void @goodB2G2(), !dbg !438
  call void @goodG2B1(), !dbg !439
  call void @goodG2B2(), !dbg !440
  ret void, !dbg !441
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_02.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_075/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_02_bad", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 44, type: !28)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 42, column: 9)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 41, column: 5)
!27 = distinct !DILexicalBlock(scope: !10, file: !1, line: 40, column: 8)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 44, column: 20, scope: !25)
!32 = !DILocation(line: 44, column: 37, scope: !25)
!33 = !DILocation(line: 44, column: 30, scope: !25)
!34 = !DILocalVariable(name: "pFile", scope: !25, file: !1, line: 45, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !37, line: 7, baseType: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !39, line: 49, size: 1728, elements: !40)
!39 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !56, !58, !59, !60, !64, !66, !68, !72, !75, !77, !80, !83, !84, !85, !86, !87}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !38, file: !39, line: 51, baseType: !5, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !38, file: !39, line: 54, baseType: !14, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !38, file: !39, line: 55, baseType: !14, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !38, file: !39, line: 56, baseType: !14, size: 64, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !38, file: !39, line: 57, baseType: !14, size: 64, offset: 256)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !38, file: !39, line: 58, baseType: !14, size: 64, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !38, file: !39, line: 59, baseType: !14, size: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !38, file: !39, line: 60, baseType: !14, size: 64, offset: 448)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !38, file: !39, line: 61, baseType: !14, size: 64, offset: 512)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !38, file: !39, line: 64, baseType: !14, size: 64, offset: 576)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !38, file: !39, line: 65, baseType: !14, size: 64, offset: 640)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !38, file: !39, line: 66, baseType: !14, size: 64, offset: 704)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !38, file: !39, line: 68, baseType: !54, size: 64, offset: 768)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !39, line: 36, flags: DIFlagFwdDecl)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !38, file: !39, line: 70, baseType: !57, size: 64, offset: 832)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !38, file: !39, line: 72, baseType: !5, size: 32, offset: 896)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !38, file: !39, line: 73, baseType: !5, size: 32, offset: 928)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !38, file: !39, line: 74, baseType: !61, size: 64, offset: 960)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !62, line: 152, baseType: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!63 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !38, file: !39, line: 77, baseType: !65, size: 16, offset: 1024)
!65 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !38, file: !39, line: 78, baseType: !67, size: 8, offset: 1040)
!67 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !38, file: !39, line: 79, baseType: !69, size: 8, offset: 1048)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 1)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !38, file: !39, line: 81, baseType: !73, size: 64, offset: 1088)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !39, line: 43, baseType: null)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !38, file: !39, line: 89, baseType: !76, size: 64, offset: 1152)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !62, line: 153, baseType: !63)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !38, file: !39, line: 91, baseType: !78, size: 64, offset: 1216)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !39, line: 37, flags: DIFlagFwdDecl)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !38, file: !39, line: 92, baseType: !81, size: 64, offset: 1280)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !39, line: 38, flags: DIFlagFwdDecl)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !38, file: !39, line: 93, baseType: !57, size: 64, offset: 1344)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !38, file: !39, line: 94, baseType: !4, size: 64, offset: 1408)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !38, file: !39, line: 95, baseType: !28, size: 64, offset: 1472)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !38, file: !39, line: 96, baseType: !5, size: 32, offset: 1536)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !38, file: !39, line: 98, baseType: !88, size: 160, offset: 1568)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 20)
!91 = !DILocation(line: 45, column: 20, scope: !25)
!92 = !DILocation(line: 47, column: 21, scope: !93)
!93 = distinct !DILexicalBlock(scope: !25, file: !1, line: 47, column: 17)
!94 = !DILocation(line: 47, column: 20, scope: !93)
!95 = !DILocation(line: 47, column: 29, scope: !93)
!96 = !DILocation(line: 47, column: 17, scope: !25)
!97 = !DILocation(line: 49, column: 25, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 48, column: 13)
!99 = !DILocation(line: 49, column: 23, scope: !98)
!100 = !DILocation(line: 50, column: 21, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 50, column: 21)
!102 = !DILocation(line: 50, column: 27, scope: !101)
!103 = !DILocation(line: 50, column: 21, scope: !98)
!104 = !DILocation(line: 53, column: 31, scope: !105)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 53, column: 25)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 51, column: 17)
!107 = !DILocation(line: 53, column: 36, scope: !105)
!108 = !DILocation(line: 53, column: 35, scope: !105)
!109 = !DILocation(line: 53, column: 55, scope: !105)
!110 = !DILocation(line: 53, column: 54, scope: !105)
!111 = !DILocation(line: 53, column: 45, scope: !105)
!112 = !DILocation(line: 53, column: 65, scope: !105)
!113 = !DILocation(line: 53, column: 25, scope: !105)
!114 = !DILocation(line: 53, column: 72, scope: !105)
!115 = !DILocation(line: 53, column: 25, scope: !106)
!116 = !DILocation(line: 55, column: 25, scope: !117)
!117 = distinct !DILexicalBlock(scope: !105, file: !1, line: 54, column: 21)
!118 = !DILocation(line: 57, column: 25, scope: !117)
!119 = !DILocation(line: 57, column: 30, scope: !117)
!120 = !DILocation(line: 57, column: 39, scope: !117)
!121 = !DILocation(line: 58, column: 21, scope: !117)
!122 = !DILocation(line: 59, column: 28, scope: !106)
!123 = !DILocation(line: 59, column: 21, scope: !106)
!124 = !DILocation(line: 60, column: 17, scope: !106)
!125 = !DILocation(line: 61, column: 13, scope: !98)
!126 = !DILocalVariable(name: "i", scope: !127, file: !1, line: 67, type: !5)
!127 = distinct !DILexicalBlock(scope: !128, file: !1, line: 66, column: 9)
!128 = distinct !DILexicalBlock(scope: !129, file: !1, line: 65, column: 5)
!129 = distinct !DILexicalBlock(scope: !10, file: !1, line: 64, column: 8)
!130 = !DILocation(line: 67, column: 17, scope: !127)
!131 = !DILocalVariable(name: "n", scope: !127, file: !1, line: 67, type: !5)
!132 = !DILocation(line: 67, column: 20, scope: !127)
!133 = !DILocalVariable(name: "intVariable", scope: !127, file: !1, line: 67, type: !5)
!134 = !DILocation(line: 67, column: 23, scope: !127)
!135 = !DILocation(line: 68, column: 24, scope: !136)
!136 = distinct !DILexicalBlock(scope: !127, file: !1, line: 68, column: 17)
!137 = !DILocation(line: 68, column: 17, scope: !136)
!138 = !DILocation(line: 68, column: 40, scope: !136)
!139 = !DILocation(line: 68, column: 17, scope: !127)
!140 = !DILocation(line: 71, column: 29, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !1, line: 69, column: 13)
!142 = !DILocation(line: 72, column: 24, scope: !143)
!143 = distinct !DILexicalBlock(scope: !141, file: !1, line: 72, column: 17)
!144 = !DILocation(line: 72, column: 22, scope: !143)
!145 = !DILocation(line: 72, column: 29, scope: !146)
!146 = distinct !DILexicalBlock(scope: !143, file: !1, line: 72, column: 17)
!147 = !DILocation(line: 72, column: 33, scope: !146)
!148 = !DILocation(line: 72, column: 31, scope: !146)
!149 = !DILocation(line: 72, column: 17, scope: !143)
!150 = !DILocation(line: 75, column: 32, scope: !151)
!151 = distinct !DILexicalBlock(scope: !146, file: !1, line: 73, column: 17)
!152 = !DILocation(line: 76, column: 17, scope: !151)
!153 = !DILocation(line: 72, column: 37, scope: !146)
!154 = !DILocation(line: 72, column: 17, scope: !146)
!155 = distinct !{!155, !149, !156, !157}
!156 = !DILocation(line: 76, column: 17, scope: !143)
!157 = !{!"llvm.loop.mustprogress"}
!158 = !DILocation(line: 77, column: 30, scope: !141)
!159 = !DILocation(line: 77, column: 17, scope: !141)
!160 = !DILocation(line: 78, column: 13, scope: !141)
!161 = !DILocation(line: 81, column: 1, scope: !10)
!162 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 88, type: !11, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!163 = !DILocalVariable(name: "data", scope: !162, file: !1, line: 90, type: !14)
!164 = !DILocation(line: 90, column: 12, scope: !162)
!165 = !DILocalVariable(name: "dataBuffer", scope: !162, file: !1, line: 91, type: !18)
!166 = !DILocation(line: 91, column: 10, scope: !162)
!167 = !DILocation(line: 92, column: 12, scope: !162)
!168 = !DILocation(line: 92, column: 10, scope: !162)
!169 = !DILocalVariable(name: "dataLen", scope: !170, file: !1, line: 97, type: !28)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 95, column: 9)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 94, column: 5)
!172 = distinct !DILexicalBlock(scope: !162, file: !1, line: 93, column: 8)
!173 = !DILocation(line: 97, column: 20, scope: !170)
!174 = !DILocation(line: 97, column: 37, scope: !170)
!175 = !DILocation(line: 97, column: 30, scope: !170)
!176 = !DILocalVariable(name: "pFile", scope: !170, file: !1, line: 98, type: !35)
!177 = !DILocation(line: 98, column: 20, scope: !170)
!178 = !DILocation(line: 100, column: 21, scope: !179)
!179 = distinct !DILexicalBlock(scope: !170, file: !1, line: 100, column: 17)
!180 = !DILocation(line: 100, column: 20, scope: !179)
!181 = !DILocation(line: 100, column: 29, scope: !179)
!182 = !DILocation(line: 100, column: 17, scope: !170)
!183 = !DILocation(line: 102, column: 25, scope: !184)
!184 = distinct !DILexicalBlock(scope: !179, file: !1, line: 101, column: 13)
!185 = !DILocation(line: 102, column: 23, scope: !184)
!186 = !DILocation(line: 103, column: 21, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !1, line: 103, column: 21)
!188 = !DILocation(line: 103, column: 27, scope: !187)
!189 = !DILocation(line: 103, column: 21, scope: !184)
!190 = !DILocation(line: 106, column: 31, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 106, column: 25)
!192 = distinct !DILexicalBlock(scope: !187, file: !1, line: 104, column: 17)
!193 = !DILocation(line: 106, column: 36, scope: !191)
!194 = !DILocation(line: 106, column: 35, scope: !191)
!195 = !DILocation(line: 106, column: 55, scope: !191)
!196 = !DILocation(line: 106, column: 54, scope: !191)
!197 = !DILocation(line: 106, column: 45, scope: !191)
!198 = !DILocation(line: 106, column: 65, scope: !191)
!199 = !DILocation(line: 106, column: 25, scope: !191)
!200 = !DILocation(line: 106, column: 72, scope: !191)
!201 = !DILocation(line: 106, column: 25, scope: !192)
!202 = !DILocation(line: 108, column: 25, scope: !203)
!203 = distinct !DILexicalBlock(scope: !191, file: !1, line: 107, column: 21)
!204 = !DILocation(line: 110, column: 25, scope: !203)
!205 = !DILocation(line: 110, column: 30, scope: !203)
!206 = !DILocation(line: 110, column: 39, scope: !203)
!207 = !DILocation(line: 111, column: 21, scope: !203)
!208 = !DILocation(line: 112, column: 28, scope: !192)
!209 = !DILocation(line: 112, column: 21, scope: !192)
!210 = !DILocation(line: 113, column: 17, scope: !192)
!211 = !DILocation(line: 114, column: 13, scope: !184)
!212 = !DILocalVariable(name: "i", scope: !213, file: !1, line: 125, type: !5)
!213 = distinct !DILexicalBlock(scope: !214, file: !1, line: 124, column: 9)
!214 = distinct !DILexicalBlock(scope: !215, file: !1, line: 123, column: 5)
!215 = distinct !DILexicalBlock(scope: !162, file: !1, line: 117, column: 8)
!216 = !DILocation(line: 125, column: 17, scope: !213)
!217 = !DILocalVariable(name: "n", scope: !213, file: !1, line: 125, type: !5)
!218 = !DILocation(line: 125, column: 20, scope: !213)
!219 = !DILocalVariable(name: "intVariable", scope: !213, file: !1, line: 125, type: !5)
!220 = !DILocation(line: 125, column: 23, scope: !213)
!221 = !DILocation(line: 126, column: 24, scope: !222)
!222 = distinct !DILexicalBlock(scope: !213, file: !1, line: 126, column: 17)
!223 = !DILocation(line: 126, column: 17, scope: !222)
!224 = !DILocation(line: 126, column: 40, scope: !222)
!225 = !DILocation(line: 126, column: 17, scope: !213)
!226 = !DILocation(line: 129, column: 21, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !1, line: 129, column: 21)
!228 = distinct !DILexicalBlock(scope: !222, file: !1, line: 127, column: 13)
!229 = !DILocation(line: 129, column: 23, scope: !227)
!230 = !DILocation(line: 129, column: 21, scope: !228)
!231 = !DILocation(line: 131, column: 33, scope: !232)
!232 = distinct !DILexicalBlock(scope: !227, file: !1, line: 130, column: 17)
!233 = !DILocation(line: 132, column: 28, scope: !234)
!234 = distinct !DILexicalBlock(scope: !232, file: !1, line: 132, column: 21)
!235 = !DILocation(line: 132, column: 26, scope: !234)
!236 = !DILocation(line: 132, column: 33, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !1, line: 132, column: 21)
!238 = !DILocation(line: 132, column: 37, scope: !237)
!239 = !DILocation(line: 132, column: 35, scope: !237)
!240 = !DILocation(line: 132, column: 21, scope: !234)
!241 = !DILocation(line: 135, column: 36, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 133, column: 21)
!243 = !DILocation(line: 136, column: 21, scope: !242)
!244 = !DILocation(line: 132, column: 41, scope: !237)
!245 = !DILocation(line: 132, column: 21, scope: !237)
!246 = distinct !{!246, !240, !247, !157}
!247 = !DILocation(line: 136, column: 21, scope: !234)
!248 = !DILocation(line: 137, column: 34, scope: !232)
!249 = !DILocation(line: 137, column: 21, scope: !232)
!250 = !DILocation(line: 138, column: 17, scope: !232)
!251 = !DILocation(line: 139, column: 13, scope: !228)
!252 = !DILocation(line: 142, column: 1, scope: !162)
!253 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 145, type: !11, scopeLine: 146, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!254 = !DILocalVariable(name: "data", scope: !253, file: !1, line: 147, type: !14)
!255 = !DILocation(line: 147, column: 12, scope: !253)
!256 = !DILocalVariable(name: "dataBuffer", scope: !253, file: !1, line: 148, type: !18)
!257 = !DILocation(line: 148, column: 10, scope: !253)
!258 = !DILocation(line: 149, column: 12, scope: !253)
!259 = !DILocation(line: 149, column: 10, scope: !253)
!260 = !DILocalVariable(name: "dataLen", scope: !261, file: !1, line: 154, type: !28)
!261 = distinct !DILexicalBlock(scope: !262, file: !1, line: 152, column: 9)
!262 = distinct !DILexicalBlock(scope: !263, file: !1, line: 151, column: 5)
!263 = distinct !DILexicalBlock(scope: !253, file: !1, line: 150, column: 8)
!264 = !DILocation(line: 154, column: 20, scope: !261)
!265 = !DILocation(line: 154, column: 37, scope: !261)
!266 = !DILocation(line: 154, column: 30, scope: !261)
!267 = !DILocalVariable(name: "pFile", scope: !261, file: !1, line: 155, type: !35)
!268 = !DILocation(line: 155, column: 20, scope: !261)
!269 = !DILocation(line: 157, column: 21, scope: !270)
!270 = distinct !DILexicalBlock(scope: !261, file: !1, line: 157, column: 17)
!271 = !DILocation(line: 157, column: 20, scope: !270)
!272 = !DILocation(line: 157, column: 29, scope: !270)
!273 = !DILocation(line: 157, column: 17, scope: !261)
!274 = !DILocation(line: 159, column: 25, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !1, line: 158, column: 13)
!276 = !DILocation(line: 159, column: 23, scope: !275)
!277 = !DILocation(line: 160, column: 21, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !1, line: 160, column: 21)
!279 = !DILocation(line: 160, column: 27, scope: !278)
!280 = !DILocation(line: 160, column: 21, scope: !275)
!281 = !DILocation(line: 163, column: 31, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 163, column: 25)
!283 = distinct !DILexicalBlock(scope: !278, file: !1, line: 161, column: 17)
!284 = !DILocation(line: 163, column: 36, scope: !282)
!285 = !DILocation(line: 163, column: 35, scope: !282)
!286 = !DILocation(line: 163, column: 55, scope: !282)
!287 = !DILocation(line: 163, column: 54, scope: !282)
!288 = !DILocation(line: 163, column: 45, scope: !282)
!289 = !DILocation(line: 163, column: 65, scope: !282)
!290 = !DILocation(line: 163, column: 25, scope: !282)
!291 = !DILocation(line: 163, column: 72, scope: !282)
!292 = !DILocation(line: 163, column: 25, scope: !283)
!293 = !DILocation(line: 165, column: 25, scope: !294)
!294 = distinct !DILexicalBlock(scope: !282, file: !1, line: 164, column: 21)
!295 = !DILocation(line: 167, column: 25, scope: !294)
!296 = !DILocation(line: 167, column: 30, scope: !294)
!297 = !DILocation(line: 167, column: 39, scope: !294)
!298 = !DILocation(line: 168, column: 21, scope: !294)
!299 = !DILocation(line: 169, column: 28, scope: !283)
!300 = !DILocation(line: 169, column: 21, scope: !283)
!301 = !DILocation(line: 170, column: 17, scope: !283)
!302 = !DILocation(line: 171, column: 13, scope: !275)
!303 = !DILocalVariable(name: "i", scope: !304, file: !1, line: 177, type: !5)
!304 = distinct !DILexicalBlock(scope: !305, file: !1, line: 176, column: 9)
!305 = distinct !DILexicalBlock(scope: !306, file: !1, line: 175, column: 5)
!306 = distinct !DILexicalBlock(scope: !253, file: !1, line: 174, column: 8)
!307 = !DILocation(line: 177, column: 17, scope: !304)
!308 = !DILocalVariable(name: "n", scope: !304, file: !1, line: 177, type: !5)
!309 = !DILocation(line: 177, column: 20, scope: !304)
!310 = !DILocalVariable(name: "intVariable", scope: !304, file: !1, line: 177, type: !5)
!311 = !DILocation(line: 177, column: 23, scope: !304)
!312 = !DILocation(line: 178, column: 24, scope: !313)
!313 = distinct !DILexicalBlock(scope: !304, file: !1, line: 178, column: 17)
!314 = !DILocation(line: 178, column: 17, scope: !313)
!315 = !DILocation(line: 178, column: 40, scope: !313)
!316 = !DILocation(line: 178, column: 17, scope: !304)
!317 = !DILocation(line: 181, column: 21, scope: !318)
!318 = distinct !DILexicalBlock(scope: !319, file: !1, line: 181, column: 21)
!319 = distinct !DILexicalBlock(scope: !313, file: !1, line: 179, column: 13)
!320 = !DILocation(line: 181, column: 23, scope: !318)
!321 = !DILocation(line: 181, column: 21, scope: !319)
!322 = !DILocation(line: 183, column: 33, scope: !323)
!323 = distinct !DILexicalBlock(scope: !318, file: !1, line: 182, column: 17)
!324 = !DILocation(line: 184, column: 28, scope: !325)
!325 = distinct !DILexicalBlock(scope: !323, file: !1, line: 184, column: 21)
!326 = !DILocation(line: 184, column: 26, scope: !325)
!327 = !DILocation(line: 184, column: 33, scope: !328)
!328 = distinct !DILexicalBlock(scope: !325, file: !1, line: 184, column: 21)
!329 = !DILocation(line: 184, column: 37, scope: !328)
!330 = !DILocation(line: 184, column: 35, scope: !328)
!331 = !DILocation(line: 184, column: 21, scope: !325)
!332 = !DILocation(line: 187, column: 36, scope: !333)
!333 = distinct !DILexicalBlock(scope: !328, file: !1, line: 185, column: 21)
!334 = !DILocation(line: 188, column: 21, scope: !333)
!335 = !DILocation(line: 184, column: 41, scope: !328)
!336 = !DILocation(line: 184, column: 21, scope: !328)
!337 = distinct !{!337, !331, !338, !157}
!338 = !DILocation(line: 188, column: 21, scope: !325)
!339 = !DILocation(line: 189, column: 34, scope: !323)
!340 = !DILocation(line: 189, column: 21, scope: !323)
!341 = !DILocation(line: 190, column: 17, scope: !323)
!342 = !DILocation(line: 191, column: 13, scope: !319)
!343 = !DILocation(line: 194, column: 1, scope: !253)
!344 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 197, type: !11, scopeLine: 198, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!345 = !DILocalVariable(name: "data", scope: !344, file: !1, line: 199, type: !14)
!346 = !DILocation(line: 199, column: 12, scope: !344)
!347 = !DILocalVariable(name: "dataBuffer", scope: !344, file: !1, line: 200, type: !18)
!348 = !DILocation(line: 200, column: 10, scope: !344)
!349 = !DILocation(line: 201, column: 12, scope: !344)
!350 = !DILocation(line: 201, column: 10, scope: !344)
!351 = !DILocation(line: 210, column: 16, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !1, line: 208, column: 5)
!353 = distinct !DILexicalBlock(scope: !344, file: !1, line: 202, column: 8)
!354 = !DILocation(line: 210, column: 9, scope: !352)
!355 = !DILocalVariable(name: "i", scope: !356, file: !1, line: 215, type: !5)
!356 = distinct !DILexicalBlock(scope: !357, file: !1, line: 214, column: 9)
!357 = distinct !DILexicalBlock(scope: !358, file: !1, line: 213, column: 5)
!358 = distinct !DILexicalBlock(scope: !344, file: !1, line: 212, column: 8)
!359 = !DILocation(line: 215, column: 17, scope: !356)
!360 = !DILocalVariable(name: "n", scope: !356, file: !1, line: 215, type: !5)
!361 = !DILocation(line: 215, column: 20, scope: !356)
!362 = !DILocalVariable(name: "intVariable", scope: !356, file: !1, line: 215, type: !5)
!363 = !DILocation(line: 215, column: 23, scope: !356)
!364 = !DILocation(line: 216, column: 24, scope: !365)
!365 = distinct !DILexicalBlock(scope: !356, file: !1, line: 216, column: 17)
!366 = !DILocation(line: 216, column: 17, scope: !365)
!367 = !DILocation(line: 216, column: 40, scope: !365)
!368 = !DILocation(line: 216, column: 17, scope: !356)
!369 = !DILocation(line: 219, column: 29, scope: !370)
!370 = distinct !DILexicalBlock(scope: !365, file: !1, line: 217, column: 13)
!371 = !DILocation(line: 220, column: 24, scope: !372)
!372 = distinct !DILexicalBlock(scope: !370, file: !1, line: 220, column: 17)
!373 = !DILocation(line: 220, column: 22, scope: !372)
!374 = !DILocation(line: 220, column: 29, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !1, line: 220, column: 17)
!376 = !DILocation(line: 220, column: 33, scope: !375)
!377 = !DILocation(line: 220, column: 31, scope: !375)
!378 = !DILocation(line: 220, column: 17, scope: !372)
!379 = !DILocation(line: 223, column: 32, scope: !380)
!380 = distinct !DILexicalBlock(scope: !375, file: !1, line: 221, column: 17)
!381 = !DILocation(line: 224, column: 17, scope: !380)
!382 = !DILocation(line: 220, column: 37, scope: !375)
!383 = !DILocation(line: 220, column: 17, scope: !375)
!384 = distinct !{!384, !378, !385, !157}
!385 = !DILocation(line: 224, column: 17, scope: !372)
!386 = !DILocation(line: 225, column: 30, scope: !370)
!387 = !DILocation(line: 225, column: 17, scope: !370)
!388 = !DILocation(line: 226, column: 13, scope: !370)
!389 = !DILocation(line: 229, column: 1, scope: !344)
!390 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 232, type: !11, scopeLine: 233, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!391 = !DILocalVariable(name: "data", scope: !390, file: !1, line: 234, type: !14)
!392 = !DILocation(line: 234, column: 12, scope: !390)
!393 = !DILocalVariable(name: "dataBuffer", scope: !390, file: !1, line: 235, type: !18)
!394 = !DILocation(line: 235, column: 10, scope: !390)
!395 = !DILocation(line: 236, column: 12, scope: !390)
!396 = !DILocation(line: 236, column: 10, scope: !390)
!397 = !DILocation(line: 240, column: 16, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 238, column: 5)
!399 = distinct !DILexicalBlock(scope: !390, file: !1, line: 237, column: 8)
!400 = !DILocation(line: 240, column: 9, scope: !398)
!401 = !DILocalVariable(name: "i", scope: !402, file: !1, line: 245, type: !5)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 244, column: 9)
!403 = distinct !DILexicalBlock(scope: !404, file: !1, line: 243, column: 5)
!404 = distinct !DILexicalBlock(scope: !390, file: !1, line: 242, column: 8)
!405 = !DILocation(line: 245, column: 17, scope: !402)
!406 = !DILocalVariable(name: "n", scope: !402, file: !1, line: 245, type: !5)
!407 = !DILocation(line: 245, column: 20, scope: !402)
!408 = !DILocalVariable(name: "intVariable", scope: !402, file: !1, line: 245, type: !5)
!409 = !DILocation(line: 245, column: 23, scope: !402)
!410 = !DILocation(line: 246, column: 24, scope: !411)
!411 = distinct !DILexicalBlock(scope: !402, file: !1, line: 246, column: 17)
!412 = !DILocation(line: 246, column: 17, scope: !411)
!413 = !DILocation(line: 246, column: 40, scope: !411)
!414 = !DILocation(line: 246, column: 17, scope: !402)
!415 = !DILocation(line: 249, column: 29, scope: !416)
!416 = distinct !DILexicalBlock(scope: !411, file: !1, line: 247, column: 13)
!417 = !DILocation(line: 250, column: 24, scope: !418)
!418 = distinct !DILexicalBlock(scope: !416, file: !1, line: 250, column: 17)
!419 = !DILocation(line: 250, column: 22, scope: !418)
!420 = !DILocation(line: 250, column: 29, scope: !421)
!421 = distinct !DILexicalBlock(scope: !418, file: !1, line: 250, column: 17)
!422 = !DILocation(line: 250, column: 33, scope: !421)
!423 = !DILocation(line: 250, column: 31, scope: !421)
!424 = !DILocation(line: 250, column: 17, scope: !418)
!425 = !DILocation(line: 253, column: 32, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !1, line: 251, column: 17)
!427 = !DILocation(line: 254, column: 17, scope: !426)
!428 = !DILocation(line: 250, column: 37, scope: !421)
!429 = !DILocation(line: 250, column: 17, scope: !421)
!430 = distinct !{!430, !424, !431, !157}
!431 = !DILocation(line: 254, column: 17, scope: !418)
!432 = !DILocation(line: 255, column: 30, scope: !416)
!433 = !DILocation(line: 255, column: 17, scope: !416)
!434 = !DILocation(line: 256, column: 13, scope: !416)
!435 = !DILocation(line: 259, column: 1, scope: !390)
!436 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_02_good", scope: !1, file: !1, line: 261, type: !11, scopeLine: 262, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!437 = !DILocation(line: 263, column: 5, scope: !436)
!438 = !DILocation(line: 264, column: 5, scope: !436)
!439 = !DILocation(line: 265, column: 5, scope: !436)
!440 = !DILocation(line: 266, column: 5, scope: !436)
!441 = !DILocation(line: 267, column: 1, scope: !436)
