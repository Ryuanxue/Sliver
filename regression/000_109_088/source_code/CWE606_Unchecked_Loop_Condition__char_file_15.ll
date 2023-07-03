; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_15.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_15.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_15_bad() #0 !dbg !10 {
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
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !24, metadata !DIExpression()), !dbg !29
  %1 = load i8*, i8** %data, align 8, !dbg !30
  %call = call i64 @strlen(i8* %1) #6, !dbg !31
  store i64 %call, i64* %dataLen, align 8, !dbg !29
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !32, metadata !DIExpression()), !dbg !89
  %2 = load i64, i64* %dataLen, align 8, !dbg !90
  %sub = sub i64 100, %2, !dbg !92
  %cmp = icmp ugt i64 %sub, 1, !dbg !93
  br i1 %cmp, label %if.then, label %if.end11, !dbg !94

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !95
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !97
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !98
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !100
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !101

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !102
  %5 = load i64, i64* %dataLen, align 8, !dbg !105
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !106
  %6 = load i64, i64* %dataLen, align 8, !dbg !107
  %sub4 = sub i64 100, %6, !dbg !108
  %conv = trunc i64 %sub4 to i32, !dbg !109
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !110
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !111
  %cmp6 = icmp eq i8* %call5, null, !dbg !112
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !113

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !114
  %8 = load i8*, i8** %data, align 8, !dbg !116
  %9 = load i64, i64* %dataLen, align 8, !dbg !117
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !116
  store i8 0, i8* %arrayidx, align 1, !dbg !118
  br label %if.end, !dbg !119

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !120
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !121
  br label %if.end10, !dbg !122

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !123

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !124, metadata !DIExpression()), !dbg !126
  call void @llvm.dbg.declare(metadata i32* %n, metadata !127, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !129, metadata !DIExpression()), !dbg !130
  %11 = load i8*, i8** %data, align 8, !dbg !131
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !133
  %cmp13 = icmp eq i32 %call12, 1, !dbg !134
  br i1 %cmp13, label %if.then15, label %if.end19, !dbg !135

if.then15:                                        ; preds = %if.end11
  store i32 0, i32* %intVariable, align 4, !dbg !136
  store i32 0, i32* %i, align 4, !dbg !138
  br label %for.cond, !dbg !140

for.cond:                                         ; preds = %for.inc, %if.then15
  %12 = load i32, i32* %i, align 4, !dbg !141
  %13 = load i32, i32* %n, align 4, !dbg !143
  %cmp16 = icmp slt i32 %12, %13, !dbg !144
  br i1 %cmp16, label %for.body, label %for.end, !dbg !145

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %intVariable, align 4, !dbg !146
  %inc = add nsw i32 %14, 1, !dbg !146
  store i32 %inc, i32* %intVariable, align 4, !dbg !146
  br label %for.inc, !dbg !148

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !149
  %inc18 = add nsw i32 %15, 1, !dbg !149
  store i32 %inc18, i32* %i, align 4, !dbg !149
  br label %for.cond, !dbg !150, !llvm.loop !151

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !154
  call void @printIntLine(i32 %16), !dbg !155
  br label %if.end19, !dbg !156

if.end19:                                         ; preds = %for.end, %if.end11
  ret void, !dbg !157
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
define dso_local void @goodB2G1() #0 !dbg !158 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !162
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !162
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !163
  store i8* %arraydecay, i8** %data, align 8, !dbg !164
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !165, metadata !DIExpression()), !dbg !167
  %1 = load i8*, i8** %data, align 8, !dbg !168
  %call = call i64 @strlen(i8* %1) #6, !dbg !169
  store i64 %call, i64* %dataLen, align 8, !dbg !167
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !170, metadata !DIExpression()), !dbg !171
  %2 = load i64, i64* %dataLen, align 8, !dbg !172
  %sub = sub i64 100, %2, !dbg !174
  %cmp = icmp ugt i64 %sub, 1, !dbg !175
  br i1 %cmp, label %if.then, label %if.end11, !dbg !176

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !177
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !179
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !180
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !182
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !183

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !184
  %5 = load i64, i64* %dataLen, align 8, !dbg !187
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !188
  %6 = load i64, i64* %dataLen, align 8, !dbg !189
  %sub4 = sub i64 100, %6, !dbg !190
  %conv = trunc i64 %sub4 to i32, !dbg !191
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !192
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !193
  %cmp6 = icmp eq i8* %call5, null, !dbg !194
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !195

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !196
  %8 = load i8*, i8** %data, align 8, !dbg !198
  %9 = load i64, i64* %dataLen, align 8, !dbg !199
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !198
  store i8 0, i8* %arrayidx, align 1, !dbg !200
  br label %if.end, !dbg !201

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !202
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !203
  br label %if.end10, !dbg !204

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !205

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !206, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %n, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !211, metadata !DIExpression()), !dbg !212
  %11 = load i8*, i8** %data, align 8, !dbg !213
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !215
  %cmp13 = icmp eq i32 %call12, 1, !dbg !216
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !217

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %n, align 4, !dbg !218
  %cmp16 = icmp slt i32 %12, 10000, !dbg !221
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !222

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !223
  store i32 0, i32* %i, align 4, !dbg !225
  br label %for.cond, !dbg !227

for.cond:                                         ; preds = %for.inc, %if.then18
  %13 = load i32, i32* %i, align 4, !dbg !228
  %14 = load i32, i32* %n, align 4, !dbg !230
  %cmp19 = icmp slt i32 %13, %14, !dbg !231
  br i1 %cmp19, label %for.body, label %for.end, !dbg !232

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !233
  %inc = add nsw i32 %15, 1, !dbg !233
  store i32 %inc, i32* %intVariable, align 4, !dbg !233
  br label %for.inc, !dbg !235

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !236
  %inc21 = add nsw i32 %16, 1, !dbg !236
  store i32 %inc21, i32* %i, align 4, !dbg !236
  br label %for.cond, !dbg !237, !llvm.loop !238

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !240
  call void @printIntLine(i32 %17), !dbg !241
  br label %if.end22, !dbg !242

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !243

if.end23:                                         ; preds = %if.end22, %if.end11
  ret void, !dbg !244
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !245 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !246, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !249
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !249
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !250
  store i8* %arraydecay, i8** %data, align 8, !dbg !251
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !252, metadata !DIExpression()), !dbg !254
  %1 = load i8*, i8** %data, align 8, !dbg !255
  %call = call i64 @strlen(i8* %1) #6, !dbg !256
  store i64 %call, i64* %dataLen, align 8, !dbg !254
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !257, metadata !DIExpression()), !dbg !258
  %2 = load i64, i64* %dataLen, align 8, !dbg !259
  %sub = sub i64 100, %2, !dbg !261
  %cmp = icmp ugt i64 %sub, 1, !dbg !262
  br i1 %cmp, label %if.then, label %if.end11, !dbg !263

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !264
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !266
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !267
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !269
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !270

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !271
  %5 = load i64, i64* %dataLen, align 8, !dbg !274
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !275
  %6 = load i64, i64* %dataLen, align 8, !dbg !276
  %sub4 = sub i64 100, %6, !dbg !277
  %conv = trunc i64 %sub4 to i32, !dbg !278
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !279
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !280
  %cmp6 = icmp eq i8* %call5, null, !dbg !281
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !282

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !283
  %8 = load i8*, i8** %data, align 8, !dbg !285
  %9 = load i64, i64* %dataLen, align 8, !dbg !286
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !285
  store i8 0, i8* %arrayidx, align 1, !dbg !287
  br label %if.end, !dbg !288

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !289
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !290
  br label %if.end10, !dbg !291

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !292

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !293, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata i32* %n, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !298, metadata !DIExpression()), !dbg !299
  %11 = load i8*, i8** %data, align 8, !dbg !300
  %call12 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !302
  %cmp13 = icmp eq i32 %call12, 1, !dbg !303
  br i1 %cmp13, label %if.then15, label %if.end23, !dbg !304

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %n, align 4, !dbg !305
  %cmp16 = icmp slt i32 %12, 10000, !dbg !308
  br i1 %cmp16, label %if.then18, label %if.end22, !dbg !309

if.then18:                                        ; preds = %if.then15
  store i32 0, i32* %intVariable, align 4, !dbg !310
  store i32 0, i32* %i, align 4, !dbg !312
  br label %for.cond, !dbg !314

for.cond:                                         ; preds = %for.inc, %if.then18
  %13 = load i32, i32* %i, align 4, !dbg !315
  %14 = load i32, i32* %n, align 4, !dbg !317
  %cmp19 = icmp slt i32 %13, %14, !dbg !318
  br i1 %cmp19, label %for.body, label %for.end, !dbg !319

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %intVariable, align 4, !dbg !320
  %inc = add nsw i32 %15, 1, !dbg !320
  store i32 %inc, i32* %intVariable, align 4, !dbg !320
  br label %for.inc, !dbg !322

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !323
  %inc21 = add nsw i32 %16, 1, !dbg !323
  store i32 %inc21, i32* %i, align 4, !dbg !323
  br label %for.cond, !dbg !324, !llvm.loop !325

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !327
  call void @printIntLine(i32 %17), !dbg !328
  br label %if.end22, !dbg !329

if.end22:                                         ; preds = %for.end, %if.then15
  br label %if.end23, !dbg !330

if.end23:                                         ; preds = %if.end22, %if.end11
  ret void, !dbg !331
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B1() #0 !dbg !332 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !333, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !335, metadata !DIExpression()), !dbg !336
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !336
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !336
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !337
  store i8* %arraydecay, i8** %data, align 8, !dbg !338
  %1 = load i8*, i8** %data, align 8, !dbg !339
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !340
  call void @llvm.dbg.declare(metadata i32* %i, metadata !341, metadata !DIExpression()), !dbg !343
  call void @llvm.dbg.declare(metadata i32* %n, metadata !344, metadata !DIExpression()), !dbg !345
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !346, metadata !DIExpression()), !dbg !347
  %2 = load i8*, i8** %data, align 8, !dbg !348
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !350
  %cmp = icmp eq i32 %call1, 1, !dbg !351
  br i1 %cmp, label %if.then, label %if.end, !dbg !352

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !353
  store i32 0, i32* %i, align 4, !dbg !355
  br label %for.cond, !dbg !357

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !358
  %4 = load i32, i32* %n, align 4, !dbg !360
  %cmp2 = icmp slt i32 %3, %4, !dbg !361
  br i1 %cmp2, label %for.body, label %for.end, !dbg !362

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !363
  %inc = add nsw i32 %5, 1, !dbg !363
  store i32 %inc, i32* %intVariable, align 4, !dbg !363
  br label %for.inc, !dbg !365

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !366
  %inc3 = add nsw i32 %6, 1, !dbg !366
  store i32 %inc3, i32* %i, align 4, !dbg !366
  br label %for.cond, !dbg !367, !llvm.loop !368

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !370
  call void @printIntLine(i32 %7), !dbg !371
  br label %if.end, !dbg !372

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !373
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B2() #0 !dbg !374 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !375, metadata !DIExpression()), !dbg !376
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !377, metadata !DIExpression()), !dbg !378
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !378
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !378
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !379
  store i8* %arraydecay, i8** %data, align 8, !dbg !380
  %1 = load i8*, i8** %data, align 8, !dbg !381
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !382
  call void @llvm.dbg.declare(metadata i32* %i, metadata !383, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.declare(metadata i32* %n, metadata !386, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !388, metadata !DIExpression()), !dbg !389
  %2 = load i8*, i8** %data, align 8, !dbg !390
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !392
  %cmp = icmp eq i32 %call1, 1, !dbg !393
  br i1 %cmp, label %if.then, label %if.end, !dbg !394

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !395
  store i32 0, i32* %i, align 4, !dbg !397
  br label %for.cond, !dbg !399

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !400
  %4 = load i32, i32* %n, align 4, !dbg !402
  %cmp2 = icmp slt i32 %3, %4, !dbg !403
  br i1 %cmp2, label %for.body, label %for.end, !dbg !404

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !405
  %inc = add nsw i32 %5, 1, !dbg !405
  store i32 %inc, i32* %intVariable, align 4, !dbg !405
  br label %for.inc, !dbg !407

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !408
  %inc3 = add nsw i32 %6, 1, !dbg !408
  store i32 %inc3, i32* %i, align 4, !dbg !408
  br label %for.cond, !dbg !409, !llvm.loop !410

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !412
  call void @printIntLine(i32 %7), !dbg !413
  br label %if.end, !dbg !414

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !415
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_15_good() #0 !dbg !416 {
entry:
  call void @goodB2G1(), !dbg !417
  call void @goodB2G2(), !dbg !418
  call void @goodG2B1(), !dbg !419
  call void @goodG2B2(), !dbg !420
  ret void, !dbg !421
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_15.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_088/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_15_bad", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 45, type: !26)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 43, column: 5)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 45, column: 16, scope: !25)
!30 = !DILocation(line: 45, column: 33, scope: !25)
!31 = !DILocation(line: 45, column: 26, scope: !25)
!32 = !DILocalVariable(name: "pFile", scope: !25, file: !1, line: 46, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !35, line: 7, baseType: !36)
!35 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !37, line: 49, size: 1728, elements: !38)
!37 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !54, !56, !57, !58, !62, !64, !66, !70, !73, !75, !78, !81, !82, !83, !84, !85}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !36, file: !37, line: 51, baseType: !5, size: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !36, file: !37, line: 54, baseType: !14, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !36, file: !37, line: 55, baseType: !14, size: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !36, file: !37, line: 56, baseType: !14, size: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !36, file: !37, line: 57, baseType: !14, size: 64, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !36, file: !37, line: 58, baseType: !14, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !36, file: !37, line: 59, baseType: !14, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !36, file: !37, line: 60, baseType: !14, size: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !36, file: !37, line: 61, baseType: !14, size: 64, offset: 512)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !36, file: !37, line: 64, baseType: !14, size: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !36, file: !37, line: 65, baseType: !14, size: 64, offset: 640)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !36, file: !37, line: 66, baseType: !14, size: 64, offset: 704)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !36, file: !37, line: 68, baseType: !52, size: 64, offset: 768)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !37, line: 36, flags: DIFlagFwdDecl)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !36, file: !37, line: 70, baseType: !55, size: 64, offset: 832)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !36, file: !37, line: 72, baseType: !5, size: 32, offset: 896)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !36, file: !37, line: 73, baseType: !5, size: 32, offset: 928)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !36, file: !37, line: 74, baseType: !59, size: 64, offset: 960)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !60, line: 152, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!61 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !36, file: !37, line: 77, baseType: !63, size: 16, offset: 1024)
!63 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !36, file: !37, line: 78, baseType: !65, size: 8, offset: 1040)
!65 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !36, file: !37, line: 79, baseType: !67, size: 8, offset: 1048)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 1)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !36, file: !37, line: 81, baseType: !71, size: 64, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !37, line: 43, baseType: null)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !36, file: !37, line: 89, baseType: !74, size: 64, offset: 1152)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !60, line: 153, baseType: !61)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !36, file: !37, line: 91, baseType: !76, size: 64, offset: 1216)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !37, line: 37, flags: DIFlagFwdDecl)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !36, file: !37, line: 92, baseType: !79, size: 64, offset: 1280)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !37, line: 38, flags: DIFlagFwdDecl)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !36, file: !37, line: 93, baseType: !55, size: 64, offset: 1344)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !36, file: !37, line: 94, baseType: !4, size: 64, offset: 1408)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !36, file: !37, line: 95, baseType: !26, size: 64, offset: 1472)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !36, file: !37, line: 96, baseType: !5, size: 32, offset: 1536)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !36, file: !37, line: 98, baseType: !86, size: 160, offset: 1568)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 20)
!89 = !DILocation(line: 46, column: 16, scope: !25)
!90 = !DILocation(line: 48, column: 17, scope: !91)
!91 = distinct !DILexicalBlock(scope: !25, file: !1, line: 48, column: 13)
!92 = !DILocation(line: 48, column: 16, scope: !91)
!93 = !DILocation(line: 48, column: 25, scope: !91)
!94 = !DILocation(line: 48, column: 13, scope: !25)
!95 = !DILocation(line: 50, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 49, column: 9)
!97 = !DILocation(line: 50, column: 19, scope: !96)
!98 = !DILocation(line: 51, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 51, column: 17)
!100 = !DILocation(line: 51, column: 23, scope: !99)
!101 = !DILocation(line: 51, column: 17, scope: !96)
!102 = !DILocation(line: 54, column: 27, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 54, column: 21)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 52, column: 13)
!105 = !DILocation(line: 54, column: 32, scope: !103)
!106 = !DILocation(line: 54, column: 31, scope: !103)
!107 = !DILocation(line: 54, column: 51, scope: !103)
!108 = !DILocation(line: 54, column: 50, scope: !103)
!109 = !DILocation(line: 54, column: 41, scope: !103)
!110 = !DILocation(line: 54, column: 61, scope: !103)
!111 = !DILocation(line: 54, column: 21, scope: !103)
!112 = !DILocation(line: 54, column: 68, scope: !103)
!113 = !DILocation(line: 54, column: 21, scope: !104)
!114 = !DILocation(line: 56, column: 21, scope: !115)
!115 = distinct !DILexicalBlock(scope: !103, file: !1, line: 55, column: 17)
!116 = !DILocation(line: 58, column: 21, scope: !115)
!117 = !DILocation(line: 58, column: 26, scope: !115)
!118 = !DILocation(line: 58, column: 35, scope: !115)
!119 = !DILocation(line: 59, column: 17, scope: !115)
!120 = !DILocation(line: 60, column: 24, scope: !104)
!121 = !DILocation(line: 60, column: 17, scope: !104)
!122 = !DILocation(line: 61, column: 13, scope: !104)
!123 = !DILocation(line: 62, column: 9, scope: !96)
!124 = !DILocalVariable(name: "i", scope: !125, file: !1, line: 74, type: !5)
!125 = distinct !DILexicalBlock(scope: !10, file: !1, line: 73, column: 5)
!126 = !DILocation(line: 74, column: 13, scope: !125)
!127 = !DILocalVariable(name: "n", scope: !125, file: !1, line: 74, type: !5)
!128 = !DILocation(line: 74, column: 16, scope: !125)
!129 = !DILocalVariable(name: "intVariable", scope: !125, file: !1, line: 74, type: !5)
!130 = !DILocation(line: 74, column: 19, scope: !125)
!131 = !DILocation(line: 75, column: 20, scope: !132)
!132 = distinct !DILexicalBlock(scope: !125, file: !1, line: 75, column: 13)
!133 = !DILocation(line: 75, column: 13, scope: !132)
!134 = !DILocation(line: 75, column: 36, scope: !132)
!135 = !DILocation(line: 75, column: 13, scope: !125)
!136 = !DILocation(line: 78, column: 25, scope: !137)
!137 = distinct !DILexicalBlock(scope: !132, file: !1, line: 76, column: 9)
!138 = !DILocation(line: 79, column: 20, scope: !139)
!139 = distinct !DILexicalBlock(scope: !137, file: !1, line: 79, column: 13)
!140 = !DILocation(line: 79, column: 18, scope: !139)
!141 = !DILocation(line: 79, column: 25, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !1, line: 79, column: 13)
!143 = !DILocation(line: 79, column: 29, scope: !142)
!144 = !DILocation(line: 79, column: 27, scope: !142)
!145 = !DILocation(line: 79, column: 13, scope: !139)
!146 = !DILocation(line: 82, column: 28, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !1, line: 80, column: 13)
!148 = !DILocation(line: 83, column: 13, scope: !147)
!149 = !DILocation(line: 79, column: 33, scope: !142)
!150 = !DILocation(line: 79, column: 13, scope: !142)
!151 = distinct !{!151, !145, !152, !153}
!152 = !DILocation(line: 83, column: 13, scope: !139)
!153 = !{!"llvm.loop.mustprogress"}
!154 = !DILocation(line: 84, column: 26, scope: !137)
!155 = !DILocation(line: 84, column: 13, scope: !137)
!156 = !DILocation(line: 85, column: 9, scope: !137)
!157 = !DILocation(line: 93, column: 1, scope: !10)
!158 = distinct !DISubprogram(name: "goodB2G1", scope: !1, file: !1, line: 100, type: !11, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!159 = !DILocalVariable(name: "data", scope: !158, file: !1, line: 102, type: !14)
!160 = !DILocation(line: 102, column: 12, scope: !158)
!161 = !DILocalVariable(name: "dataBuffer", scope: !158, file: !1, line: 103, type: !18)
!162 = !DILocation(line: 103, column: 10, scope: !158)
!163 = !DILocation(line: 104, column: 12, scope: !158)
!164 = !DILocation(line: 104, column: 10, scope: !158)
!165 = !DILocalVariable(name: "dataLen", scope: !166, file: !1, line: 110, type: !26)
!166 = distinct !DILexicalBlock(scope: !158, file: !1, line: 108, column: 5)
!167 = !DILocation(line: 110, column: 16, scope: !166)
!168 = !DILocation(line: 110, column: 33, scope: !166)
!169 = !DILocation(line: 110, column: 26, scope: !166)
!170 = !DILocalVariable(name: "pFile", scope: !166, file: !1, line: 111, type: !33)
!171 = !DILocation(line: 111, column: 16, scope: !166)
!172 = !DILocation(line: 113, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !166, file: !1, line: 113, column: 13)
!174 = !DILocation(line: 113, column: 16, scope: !173)
!175 = !DILocation(line: 113, column: 25, scope: !173)
!176 = !DILocation(line: 113, column: 13, scope: !166)
!177 = !DILocation(line: 115, column: 21, scope: !178)
!178 = distinct !DILexicalBlock(scope: !173, file: !1, line: 114, column: 9)
!179 = !DILocation(line: 115, column: 19, scope: !178)
!180 = !DILocation(line: 116, column: 17, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !1, line: 116, column: 17)
!182 = !DILocation(line: 116, column: 23, scope: !181)
!183 = !DILocation(line: 116, column: 17, scope: !178)
!184 = !DILocation(line: 119, column: 27, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 119, column: 21)
!186 = distinct !DILexicalBlock(scope: !181, file: !1, line: 117, column: 13)
!187 = !DILocation(line: 119, column: 32, scope: !185)
!188 = !DILocation(line: 119, column: 31, scope: !185)
!189 = !DILocation(line: 119, column: 51, scope: !185)
!190 = !DILocation(line: 119, column: 50, scope: !185)
!191 = !DILocation(line: 119, column: 41, scope: !185)
!192 = !DILocation(line: 119, column: 61, scope: !185)
!193 = !DILocation(line: 119, column: 21, scope: !185)
!194 = !DILocation(line: 119, column: 68, scope: !185)
!195 = !DILocation(line: 119, column: 21, scope: !186)
!196 = !DILocation(line: 121, column: 21, scope: !197)
!197 = distinct !DILexicalBlock(scope: !185, file: !1, line: 120, column: 17)
!198 = !DILocation(line: 123, column: 21, scope: !197)
!199 = !DILocation(line: 123, column: 26, scope: !197)
!200 = !DILocation(line: 123, column: 35, scope: !197)
!201 = !DILocation(line: 124, column: 17, scope: !197)
!202 = !DILocation(line: 125, column: 24, scope: !186)
!203 = !DILocation(line: 125, column: 17, scope: !186)
!204 = !DILocation(line: 126, column: 13, scope: !186)
!205 = !DILocation(line: 127, column: 9, scope: !178)
!206 = !DILocalVariable(name: "i", scope: !207, file: !1, line: 143, type: !5)
!207 = distinct !DILexicalBlock(scope: !158, file: !1, line: 142, column: 5)
!208 = !DILocation(line: 143, column: 13, scope: !207)
!209 = !DILocalVariable(name: "n", scope: !207, file: !1, line: 143, type: !5)
!210 = !DILocation(line: 143, column: 16, scope: !207)
!211 = !DILocalVariable(name: "intVariable", scope: !207, file: !1, line: 143, type: !5)
!212 = !DILocation(line: 143, column: 19, scope: !207)
!213 = !DILocation(line: 144, column: 20, scope: !214)
!214 = distinct !DILexicalBlock(scope: !207, file: !1, line: 144, column: 13)
!215 = !DILocation(line: 144, column: 13, scope: !214)
!216 = !DILocation(line: 144, column: 36, scope: !214)
!217 = !DILocation(line: 144, column: 13, scope: !207)
!218 = !DILocation(line: 147, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 147, column: 17)
!220 = distinct !DILexicalBlock(scope: !214, file: !1, line: 145, column: 9)
!221 = !DILocation(line: 147, column: 19, scope: !219)
!222 = !DILocation(line: 147, column: 17, scope: !220)
!223 = !DILocation(line: 149, column: 29, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 148, column: 13)
!225 = !DILocation(line: 150, column: 24, scope: !226)
!226 = distinct !DILexicalBlock(scope: !224, file: !1, line: 150, column: 17)
!227 = !DILocation(line: 150, column: 22, scope: !226)
!228 = !DILocation(line: 150, column: 29, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !1, line: 150, column: 17)
!230 = !DILocation(line: 150, column: 33, scope: !229)
!231 = !DILocation(line: 150, column: 31, scope: !229)
!232 = !DILocation(line: 150, column: 17, scope: !226)
!233 = !DILocation(line: 153, column: 32, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !1, line: 151, column: 17)
!235 = !DILocation(line: 154, column: 17, scope: !234)
!236 = !DILocation(line: 150, column: 37, scope: !229)
!237 = !DILocation(line: 150, column: 17, scope: !229)
!238 = distinct !{!238, !232, !239, !153}
!239 = !DILocation(line: 154, column: 17, scope: !226)
!240 = !DILocation(line: 155, column: 30, scope: !224)
!241 = !DILocation(line: 155, column: 17, scope: !224)
!242 = !DILocation(line: 156, column: 13, scope: !224)
!243 = !DILocation(line: 157, column: 9, scope: !220)
!244 = !DILocation(line: 161, column: 1, scope: !158)
!245 = distinct !DISubprogram(name: "goodB2G2", scope: !1, file: !1, line: 164, type: !11, scopeLine: 165, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!246 = !DILocalVariable(name: "data", scope: !245, file: !1, line: 166, type: !14)
!247 = !DILocation(line: 166, column: 12, scope: !245)
!248 = !DILocalVariable(name: "dataBuffer", scope: !245, file: !1, line: 167, type: !18)
!249 = !DILocation(line: 167, column: 10, scope: !245)
!250 = !DILocation(line: 168, column: 12, scope: !245)
!251 = !DILocation(line: 168, column: 10, scope: !245)
!252 = !DILocalVariable(name: "dataLen", scope: !253, file: !1, line: 174, type: !26)
!253 = distinct !DILexicalBlock(scope: !245, file: !1, line: 172, column: 5)
!254 = !DILocation(line: 174, column: 16, scope: !253)
!255 = !DILocation(line: 174, column: 33, scope: !253)
!256 = !DILocation(line: 174, column: 26, scope: !253)
!257 = !DILocalVariable(name: "pFile", scope: !253, file: !1, line: 175, type: !33)
!258 = !DILocation(line: 175, column: 16, scope: !253)
!259 = !DILocation(line: 177, column: 17, scope: !260)
!260 = distinct !DILexicalBlock(scope: !253, file: !1, line: 177, column: 13)
!261 = !DILocation(line: 177, column: 16, scope: !260)
!262 = !DILocation(line: 177, column: 25, scope: !260)
!263 = !DILocation(line: 177, column: 13, scope: !253)
!264 = !DILocation(line: 179, column: 21, scope: !265)
!265 = distinct !DILexicalBlock(scope: !260, file: !1, line: 178, column: 9)
!266 = !DILocation(line: 179, column: 19, scope: !265)
!267 = !DILocation(line: 180, column: 17, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !1, line: 180, column: 17)
!269 = !DILocation(line: 180, column: 23, scope: !268)
!270 = !DILocation(line: 180, column: 17, scope: !265)
!271 = !DILocation(line: 183, column: 27, scope: !272)
!272 = distinct !DILexicalBlock(scope: !273, file: !1, line: 183, column: 21)
!273 = distinct !DILexicalBlock(scope: !268, file: !1, line: 181, column: 13)
!274 = !DILocation(line: 183, column: 32, scope: !272)
!275 = !DILocation(line: 183, column: 31, scope: !272)
!276 = !DILocation(line: 183, column: 51, scope: !272)
!277 = !DILocation(line: 183, column: 50, scope: !272)
!278 = !DILocation(line: 183, column: 41, scope: !272)
!279 = !DILocation(line: 183, column: 61, scope: !272)
!280 = !DILocation(line: 183, column: 21, scope: !272)
!281 = !DILocation(line: 183, column: 68, scope: !272)
!282 = !DILocation(line: 183, column: 21, scope: !273)
!283 = !DILocation(line: 185, column: 21, scope: !284)
!284 = distinct !DILexicalBlock(scope: !272, file: !1, line: 184, column: 17)
!285 = !DILocation(line: 187, column: 21, scope: !284)
!286 = !DILocation(line: 187, column: 26, scope: !284)
!287 = !DILocation(line: 187, column: 35, scope: !284)
!288 = !DILocation(line: 188, column: 17, scope: !284)
!289 = !DILocation(line: 189, column: 24, scope: !273)
!290 = !DILocation(line: 189, column: 17, scope: !273)
!291 = !DILocation(line: 190, column: 13, scope: !273)
!292 = !DILocation(line: 191, column: 9, scope: !265)
!293 = !DILocalVariable(name: "i", scope: !294, file: !1, line: 203, type: !5)
!294 = distinct !DILexicalBlock(scope: !245, file: !1, line: 202, column: 5)
!295 = !DILocation(line: 203, column: 13, scope: !294)
!296 = !DILocalVariable(name: "n", scope: !294, file: !1, line: 203, type: !5)
!297 = !DILocation(line: 203, column: 16, scope: !294)
!298 = !DILocalVariable(name: "intVariable", scope: !294, file: !1, line: 203, type: !5)
!299 = !DILocation(line: 203, column: 19, scope: !294)
!300 = !DILocation(line: 204, column: 20, scope: !301)
!301 = distinct !DILexicalBlock(scope: !294, file: !1, line: 204, column: 13)
!302 = !DILocation(line: 204, column: 13, scope: !301)
!303 = !DILocation(line: 204, column: 36, scope: !301)
!304 = !DILocation(line: 204, column: 13, scope: !294)
!305 = !DILocation(line: 207, column: 17, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 207, column: 17)
!307 = distinct !DILexicalBlock(scope: !301, file: !1, line: 205, column: 9)
!308 = !DILocation(line: 207, column: 19, scope: !306)
!309 = !DILocation(line: 207, column: 17, scope: !307)
!310 = !DILocation(line: 209, column: 29, scope: !311)
!311 = distinct !DILexicalBlock(scope: !306, file: !1, line: 208, column: 13)
!312 = !DILocation(line: 210, column: 24, scope: !313)
!313 = distinct !DILexicalBlock(scope: !311, file: !1, line: 210, column: 17)
!314 = !DILocation(line: 210, column: 22, scope: !313)
!315 = !DILocation(line: 210, column: 29, scope: !316)
!316 = distinct !DILexicalBlock(scope: !313, file: !1, line: 210, column: 17)
!317 = !DILocation(line: 210, column: 33, scope: !316)
!318 = !DILocation(line: 210, column: 31, scope: !316)
!319 = !DILocation(line: 210, column: 17, scope: !313)
!320 = !DILocation(line: 213, column: 32, scope: !321)
!321 = distinct !DILexicalBlock(scope: !316, file: !1, line: 211, column: 17)
!322 = !DILocation(line: 214, column: 17, scope: !321)
!323 = !DILocation(line: 210, column: 37, scope: !316)
!324 = !DILocation(line: 210, column: 17, scope: !316)
!325 = distinct !{!325, !319, !326, !153}
!326 = !DILocation(line: 214, column: 17, scope: !313)
!327 = !DILocation(line: 215, column: 30, scope: !311)
!328 = !DILocation(line: 215, column: 17, scope: !311)
!329 = !DILocation(line: 216, column: 13, scope: !311)
!330 = !DILocation(line: 217, column: 9, scope: !307)
!331 = !DILocation(line: 225, column: 1, scope: !245)
!332 = distinct !DISubprogram(name: "goodG2B1", scope: !1, file: !1, line: 228, type: !11, scopeLine: 229, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!333 = !DILocalVariable(name: "data", scope: !332, file: !1, line: 230, type: !14)
!334 = !DILocation(line: 230, column: 12, scope: !332)
!335 = !DILocalVariable(name: "dataBuffer", scope: !332, file: !1, line: 231, type: !18)
!336 = !DILocation(line: 231, column: 10, scope: !332)
!337 = !DILocation(line: 232, column: 12, scope: !332)
!338 = !DILocation(line: 232, column: 10, scope: !332)
!339 = !DILocation(line: 241, column: 16, scope: !332)
!340 = !DILocation(line: 241, column: 9, scope: !332)
!341 = !DILocalVariable(name: "i", scope: !342, file: !1, line: 248, type: !5)
!342 = distinct !DILexicalBlock(scope: !332, file: !1, line: 247, column: 5)
!343 = !DILocation(line: 248, column: 13, scope: !342)
!344 = !DILocalVariable(name: "n", scope: !342, file: !1, line: 248, type: !5)
!345 = !DILocation(line: 248, column: 16, scope: !342)
!346 = !DILocalVariable(name: "intVariable", scope: !342, file: !1, line: 248, type: !5)
!347 = !DILocation(line: 248, column: 19, scope: !342)
!348 = !DILocation(line: 249, column: 20, scope: !349)
!349 = distinct !DILexicalBlock(scope: !342, file: !1, line: 249, column: 13)
!350 = !DILocation(line: 249, column: 13, scope: !349)
!351 = !DILocation(line: 249, column: 36, scope: !349)
!352 = !DILocation(line: 249, column: 13, scope: !342)
!353 = !DILocation(line: 252, column: 25, scope: !354)
!354 = distinct !DILexicalBlock(scope: !349, file: !1, line: 250, column: 9)
!355 = !DILocation(line: 253, column: 20, scope: !356)
!356 = distinct !DILexicalBlock(scope: !354, file: !1, line: 253, column: 13)
!357 = !DILocation(line: 253, column: 18, scope: !356)
!358 = !DILocation(line: 253, column: 25, scope: !359)
!359 = distinct !DILexicalBlock(scope: !356, file: !1, line: 253, column: 13)
!360 = !DILocation(line: 253, column: 29, scope: !359)
!361 = !DILocation(line: 253, column: 27, scope: !359)
!362 = !DILocation(line: 253, column: 13, scope: !356)
!363 = !DILocation(line: 256, column: 28, scope: !364)
!364 = distinct !DILexicalBlock(scope: !359, file: !1, line: 254, column: 13)
!365 = !DILocation(line: 257, column: 13, scope: !364)
!366 = !DILocation(line: 253, column: 33, scope: !359)
!367 = !DILocation(line: 253, column: 13, scope: !359)
!368 = distinct !{!368, !362, !369, !153}
!369 = !DILocation(line: 257, column: 13, scope: !356)
!370 = !DILocation(line: 258, column: 26, scope: !354)
!371 = !DILocation(line: 258, column: 13, scope: !354)
!372 = !DILocation(line: 259, column: 9, scope: !354)
!373 = !DILocation(line: 267, column: 1, scope: !332)
!374 = distinct !DISubprogram(name: "goodG2B2", scope: !1, file: !1, line: 270, type: !11, scopeLine: 271, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!375 = !DILocalVariable(name: "data", scope: !374, file: !1, line: 272, type: !14)
!376 = !DILocation(line: 272, column: 12, scope: !374)
!377 = !DILocalVariable(name: "dataBuffer", scope: !374, file: !1, line: 273, type: !18)
!378 = !DILocation(line: 273, column: 10, scope: !374)
!379 = !DILocation(line: 274, column: 12, scope: !374)
!380 = !DILocation(line: 274, column: 10, scope: !374)
!381 = !DILocation(line: 279, column: 16, scope: !374)
!382 = !DILocation(line: 279, column: 9, scope: !374)
!383 = !DILocalVariable(name: "i", scope: !384, file: !1, line: 290, type: !5)
!384 = distinct !DILexicalBlock(scope: !374, file: !1, line: 289, column: 5)
!385 = !DILocation(line: 290, column: 13, scope: !384)
!386 = !DILocalVariable(name: "n", scope: !384, file: !1, line: 290, type: !5)
!387 = !DILocation(line: 290, column: 16, scope: !384)
!388 = !DILocalVariable(name: "intVariable", scope: !384, file: !1, line: 290, type: !5)
!389 = !DILocation(line: 290, column: 19, scope: !384)
!390 = !DILocation(line: 291, column: 20, scope: !391)
!391 = distinct !DILexicalBlock(scope: !384, file: !1, line: 291, column: 13)
!392 = !DILocation(line: 291, column: 13, scope: !391)
!393 = !DILocation(line: 291, column: 36, scope: !391)
!394 = !DILocation(line: 291, column: 13, scope: !384)
!395 = !DILocation(line: 294, column: 25, scope: !396)
!396 = distinct !DILexicalBlock(scope: !391, file: !1, line: 292, column: 9)
!397 = !DILocation(line: 295, column: 20, scope: !398)
!398 = distinct !DILexicalBlock(scope: !396, file: !1, line: 295, column: 13)
!399 = !DILocation(line: 295, column: 18, scope: !398)
!400 = !DILocation(line: 295, column: 25, scope: !401)
!401 = distinct !DILexicalBlock(scope: !398, file: !1, line: 295, column: 13)
!402 = !DILocation(line: 295, column: 29, scope: !401)
!403 = !DILocation(line: 295, column: 27, scope: !401)
!404 = !DILocation(line: 295, column: 13, scope: !398)
!405 = !DILocation(line: 298, column: 28, scope: !406)
!406 = distinct !DILexicalBlock(scope: !401, file: !1, line: 296, column: 13)
!407 = !DILocation(line: 299, column: 13, scope: !406)
!408 = !DILocation(line: 295, column: 33, scope: !401)
!409 = !DILocation(line: 295, column: 13, scope: !401)
!410 = distinct !{!410, !404, !411, !153}
!411 = !DILocation(line: 299, column: 13, scope: !398)
!412 = !DILocation(line: 300, column: 26, scope: !396)
!413 = !DILocation(line: 300, column: 13, scope: !396)
!414 = !DILocation(line: 301, column: 9, scope: !396)
!415 = !DILocation(line: 309, column: 1, scope: !374)
!416 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_15_good", scope: !1, file: !1, line: 311, type: !11, scopeLine: 312, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!417 = !DILocation(line: 313, column: 5, scope: !416)
!418 = !DILocation(line: 314, column: 5, scope: !416)
!419 = !DILocation(line: 315, column: 5, scope: !416)
!420 = !DILocation(line: 316, column: 5, scope: !416)
!421 = !DILocation(line: 317, column: 1, scope: !416)
