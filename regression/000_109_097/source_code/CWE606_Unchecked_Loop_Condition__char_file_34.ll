; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_34.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_34.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType = type { i8* }
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_34_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %data12 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion, metadata !17, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !25, metadata !DIExpression()), !dbg !29
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !29
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !29
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !30
  store i8* %arraydecay, i8** %data, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !32, metadata !DIExpression()), !dbg !37
  %1 = load i8*, i8** %data, align 8, !dbg !38
  %call = call i64 @strlen(i8* %1) #6, !dbg !39
  store i64 %call, i64* %dataLen, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !40, metadata !DIExpression()), !dbg !97
  %2 = load i64, i64* %dataLen, align 8, !dbg !98
  %sub = sub i64 100, %2, !dbg !100
  %cmp = icmp ugt i64 %sub, 1, !dbg !101
  br i1 %cmp, label %if.then, label %if.end11, !dbg !102

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !103
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !105
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !106
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !108
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !109

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !110
  %5 = load i64, i64* %dataLen, align 8, !dbg !113
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !114
  %6 = load i64, i64* %dataLen, align 8, !dbg !115
  %sub4 = sub i64 100, %6, !dbg !116
  %conv = trunc i64 %sub4 to i32, !dbg !117
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !118
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !119
  %cmp6 = icmp eq i8* %call5, null, !dbg !120
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !121

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !122
  %8 = load i8*, i8** %data, align 8, !dbg !124
  %9 = load i64, i64* %dataLen, align 8, !dbg !125
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !124
  store i8 0, i8* %arrayidx, align 1, !dbg !126
  br label %if.end, !dbg !127

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !128
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !129
  br label %if.end10, !dbg !130

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !131

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !132
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion to i8**, !dbg !133
  store i8* %11, i8** %unionFirst, align 8, !dbg !134
  call void @llvm.dbg.declare(metadata i8** %data12, metadata !135, metadata !DIExpression()), !dbg !137
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion to i8**, !dbg !138
  %12 = load i8*, i8** %unionSecond, align 8, !dbg !138
  store i8* %12, i8** %data12, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata i32* %i, metadata !139, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %n, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !144, metadata !DIExpression()), !dbg !145
  %13 = load i8*, i8** %data12, align 8, !dbg !146
  %call13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !148
  %cmp14 = icmp eq i32 %call13, 1, !dbg !149
  br i1 %cmp14, label %if.then16, label %if.end20, !dbg !150

if.then16:                                        ; preds = %if.end11
  store i32 0, i32* %intVariable, align 4, !dbg !151
  store i32 0, i32* %i, align 4, !dbg !153
  br label %for.cond, !dbg !155

for.cond:                                         ; preds = %for.inc, %if.then16
  %14 = load i32, i32* %i, align 4, !dbg !156
  %15 = load i32, i32* %n, align 4, !dbg !158
  %cmp17 = icmp slt i32 %14, %15, !dbg !159
  br i1 %cmp17, label %for.body, label %for.end, !dbg !160

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !161
  %inc = add nsw i32 %16, 1, !dbg !161
  store i32 %inc, i32* %intVariable, align 4, !dbg !161
  br label %for.inc, !dbg !163

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !164
  %inc19 = add nsw i32 %17, 1, !dbg !164
  store i32 %inc19, i32* %i, align 4, !dbg !164
  br label %for.cond, !dbg !165, !llvm.loop !166

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %intVariable, align 4, !dbg !169
  call void @printIntLine(i32 %18), !dbg !170
  br label %if.end20, !dbg !171

if.end20:                                         ; preds = %for.end, %if.end11
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
define dso_local void @goodG2B() #0 !dbg !173 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !178, metadata !DIExpression()), !dbg !179
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !179
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !179
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !180
  store i8* %arraydecay, i8** %data, align 8, !dbg !181
  %1 = load i8*, i8** %data, align 8, !dbg !182
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !183
  %2 = load i8*, i8** %data, align 8, !dbg !184
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion to i8**, !dbg !185
  store i8* %2, i8** %unionFirst, align 8, !dbg !186
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !187, metadata !DIExpression()), !dbg !189
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion to i8**, !dbg !190
  %3 = load i8*, i8** %unionSecond, align 8, !dbg !190
  store i8* %3, i8** %data1, align 8, !dbg !189
  call void @llvm.dbg.declare(metadata i32* %i, metadata !191, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata i32* %n, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !196, metadata !DIExpression()), !dbg !197
  %4 = load i8*, i8** %data1, align 8, !dbg !198
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !200
  %cmp = icmp eq i32 %call2, 1, !dbg !201
  br i1 %cmp, label %if.then, label %if.end, !dbg !202

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !203
  store i32 0, i32* %i, align 4, !dbg !205
  br label %for.cond, !dbg !207

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !208
  %6 = load i32, i32* %n, align 4, !dbg !210
  %cmp3 = icmp slt i32 %5, %6, !dbg !211
  br i1 %cmp3, label %for.body, label %for.end, !dbg !212

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !213
  %inc = add nsw i32 %7, 1, !dbg !213
  store i32 %inc, i32* %intVariable, align 4, !dbg !213
  br label %for.inc, !dbg !215

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !216
  %inc4 = add nsw i32 %8, 1, !dbg !216
  store i32 %inc4, i32* %i, align 4, !dbg !216
  br label %for.cond, !dbg !217, !llvm.loop !218

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !220
  call void @printIntLine(i32 %9), !dbg !221
  br label %if.end, !dbg !222

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !223
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !224 {
entry:
  %data = alloca i8*, align 8
  %myUnion = alloca %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %data12 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion, metadata !227, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !229, metadata !DIExpression()), !dbg !230
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !230
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !230
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !231
  store i8* %arraydecay, i8** %data, align 8, !dbg !232
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !233, metadata !DIExpression()), !dbg !235
  %1 = load i8*, i8** %data, align 8, !dbg !236
  %call = call i64 @strlen(i8* %1) #6, !dbg !237
  store i64 %call, i64* %dataLen, align 8, !dbg !235
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !238, metadata !DIExpression()), !dbg !239
  %2 = load i64, i64* %dataLen, align 8, !dbg !240
  %sub = sub i64 100, %2, !dbg !242
  %cmp = icmp ugt i64 %sub, 1, !dbg !243
  br i1 %cmp, label %if.then, label %if.end11, !dbg !244

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !245
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !247
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !248
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !250
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !251

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !252
  %5 = load i64, i64* %dataLen, align 8, !dbg !255
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !256
  %6 = load i64, i64* %dataLen, align 8, !dbg !257
  %sub4 = sub i64 100, %6, !dbg !258
  %conv = trunc i64 %sub4 to i32, !dbg !259
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !260
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !261
  %cmp6 = icmp eq i8* %call5, null, !dbg !262
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !263

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !264
  %8 = load i8*, i8** %data, align 8, !dbg !266
  %9 = load i64, i64* %dataLen, align 8, !dbg !267
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !266
  store i8 0, i8* %arrayidx, align 1, !dbg !268
  br label %if.end, !dbg !269

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !270
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !271
  br label %if.end10, !dbg !272

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !273

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !274
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion to i8**, !dbg !275
  store i8* %11, i8** %unionFirst, align 8, !dbg !276
  call void @llvm.dbg.declare(metadata i8** %data12, metadata !277, metadata !DIExpression()), !dbg !279
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_file_34_unionType* %myUnion to i8**, !dbg !280
  %12 = load i8*, i8** %unionSecond, align 8, !dbg !280
  store i8* %12, i8** %data12, align 8, !dbg !279
  call void @llvm.dbg.declare(metadata i32* %i, metadata !281, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata i32* %n, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !286, metadata !DIExpression()), !dbg !287
  %13 = load i8*, i8** %data12, align 8, !dbg !288
  %call13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !290
  %cmp14 = icmp eq i32 %call13, 1, !dbg !291
  br i1 %cmp14, label %if.then16, label %if.end24, !dbg !292

if.then16:                                        ; preds = %if.end11
  %14 = load i32, i32* %n, align 4, !dbg !293
  %cmp17 = icmp slt i32 %14, 10000, !dbg !296
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !297

if.then19:                                        ; preds = %if.then16
  store i32 0, i32* %intVariable, align 4, !dbg !298
  store i32 0, i32* %i, align 4, !dbg !300
  br label %for.cond, !dbg !302

for.cond:                                         ; preds = %for.inc, %if.then19
  %15 = load i32, i32* %i, align 4, !dbg !303
  %16 = load i32, i32* %n, align 4, !dbg !305
  %cmp20 = icmp slt i32 %15, %16, !dbg !306
  br i1 %cmp20, label %for.body, label %for.end, !dbg !307

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !308
  %inc = add nsw i32 %17, 1, !dbg !308
  store i32 %inc, i32* %intVariable, align 4, !dbg !308
  br label %for.inc, !dbg !310

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !311
  %inc22 = add nsw i32 %18, 1, !dbg !311
  store i32 %inc22, i32* %i, align 4, !dbg !311
  br label %for.cond, !dbg !312, !llvm.loop !313

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !315
  call void @printIntLine(i32 %19), !dbg !316
  br label %if.end23, !dbg !317

if.end23:                                         ; preds = %for.end, %if.then16
  br label %if.end24, !dbg !318

if.end24:                                         ; preds = %if.end23, %if.end11
  ret void, !dbg !319
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_34_good() #0 !dbg !320 {
entry:
  call void @goodG2B(), !dbg !321
  call void @goodB2G(), !dbg !322
  ret void, !dbg !323
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_34.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_097/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_34_bad", scope: !1, file: !1, line: 36, type: !11, scopeLine: 37, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 38, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 38, column: 12, scope: !10)
!17 = !DILocalVariable(name: "myUnion", scope: !10, file: !1, line: 39, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_file_34_unionType", file: !19, line: 9, baseType: !20)
!19 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_097/source_code")
!20 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !19, line: 5, size: 64, elements: !21)
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !20, file: !19, line: 7, baseType: !14, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !20, file: !19, line: 8, baseType: !14, size: 64)
!24 = !DILocation(line: 39, column: 61, scope: !10)
!25 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 40, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 100)
!29 = !DILocation(line: 40, column: 10, scope: !10)
!30 = !DILocation(line: 41, column: 12, scope: !10)
!31 = !DILocation(line: 41, column: 10, scope: !10)
!32 = !DILocalVariable(name: "dataLen", scope: !33, file: !1, line: 44, type: !34)
!33 = distinct !DILexicalBlock(scope: !10, file: !1, line: 42, column: 5)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 44, column: 16, scope: !33)
!38 = !DILocation(line: 44, column: 33, scope: !33)
!39 = !DILocation(line: 44, column: 26, scope: !33)
!40 = !DILocalVariable(name: "pFile", scope: !33, file: !1, line: 45, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !43, line: 7, baseType: !44)
!43 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !45, line: 49, size: 1728, elements: !46)
!45 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !62, !64, !65, !66, !70, !72, !74, !78, !81, !83, !86, !89, !90, !91, !92, !93}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !44, file: !45, line: 51, baseType: !5, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !44, file: !45, line: 54, baseType: !14, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !44, file: !45, line: 55, baseType: !14, size: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !44, file: !45, line: 56, baseType: !14, size: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !44, file: !45, line: 57, baseType: !14, size: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !44, file: !45, line: 58, baseType: !14, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !44, file: !45, line: 59, baseType: !14, size: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !44, file: !45, line: 60, baseType: !14, size: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !44, file: !45, line: 61, baseType: !14, size: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !44, file: !45, line: 64, baseType: !14, size: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !44, file: !45, line: 65, baseType: !14, size: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !44, file: !45, line: 66, baseType: !14, size: 64, offset: 704)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !44, file: !45, line: 68, baseType: !60, size: 64, offset: 768)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !45, line: 36, flags: DIFlagFwdDecl)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !44, file: !45, line: 70, baseType: !63, size: 64, offset: 832)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !44, file: !45, line: 72, baseType: !5, size: 32, offset: 896)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !44, file: !45, line: 73, baseType: !5, size: 32, offset: 928)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !44, file: !45, line: 74, baseType: !67, size: 64, offset: 960)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !68, line: 152, baseType: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!69 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !44, file: !45, line: 77, baseType: !71, size: 16, offset: 1024)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !44, file: !45, line: 78, baseType: !73, size: 8, offset: 1040)
!73 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !44, file: !45, line: 79, baseType: !75, size: 8, offset: 1048)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8, elements: !76)
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
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !44, file: !45, line: 94, baseType: !4, size: 64, offset: 1408)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !44, file: !45, line: 95, baseType: !34, size: 64, offset: 1472)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !44, file: !45, line: 96, baseType: !5, size: 32, offset: 1536)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !44, file: !45, line: 98, baseType: !94, size: 160, offset: 1568)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 20)
!97 = !DILocation(line: 45, column: 16, scope: !33)
!98 = !DILocation(line: 47, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !33, file: !1, line: 47, column: 13)
!100 = !DILocation(line: 47, column: 16, scope: !99)
!101 = !DILocation(line: 47, column: 25, scope: !99)
!102 = !DILocation(line: 47, column: 13, scope: !33)
!103 = !DILocation(line: 49, column: 21, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 48, column: 9)
!105 = !DILocation(line: 49, column: 19, scope: !104)
!106 = !DILocation(line: 50, column: 17, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !1, line: 50, column: 17)
!108 = !DILocation(line: 50, column: 23, scope: !107)
!109 = !DILocation(line: 50, column: 17, scope: !104)
!110 = !DILocation(line: 53, column: 27, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 53, column: 21)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 51, column: 13)
!113 = !DILocation(line: 53, column: 32, scope: !111)
!114 = !DILocation(line: 53, column: 31, scope: !111)
!115 = !DILocation(line: 53, column: 51, scope: !111)
!116 = !DILocation(line: 53, column: 50, scope: !111)
!117 = !DILocation(line: 53, column: 41, scope: !111)
!118 = !DILocation(line: 53, column: 61, scope: !111)
!119 = !DILocation(line: 53, column: 21, scope: !111)
!120 = !DILocation(line: 53, column: 68, scope: !111)
!121 = !DILocation(line: 53, column: 21, scope: !112)
!122 = !DILocation(line: 55, column: 21, scope: !123)
!123 = distinct !DILexicalBlock(scope: !111, file: !1, line: 54, column: 17)
!124 = !DILocation(line: 57, column: 21, scope: !123)
!125 = !DILocation(line: 57, column: 26, scope: !123)
!126 = !DILocation(line: 57, column: 35, scope: !123)
!127 = !DILocation(line: 58, column: 17, scope: !123)
!128 = !DILocation(line: 59, column: 24, scope: !112)
!129 = !DILocation(line: 59, column: 17, scope: !112)
!130 = !DILocation(line: 60, column: 13, scope: !112)
!131 = !DILocation(line: 61, column: 9, scope: !104)
!132 = !DILocation(line: 63, column: 26, scope: !10)
!133 = !DILocation(line: 63, column: 13, scope: !10)
!134 = !DILocation(line: 63, column: 24, scope: !10)
!135 = !DILocalVariable(name: "data", scope: !136, file: !1, line: 65, type: !14)
!136 = distinct !DILexicalBlock(scope: !10, file: !1, line: 64, column: 5)
!137 = !DILocation(line: 65, column: 16, scope: !136)
!138 = !DILocation(line: 65, column: 31, scope: !136)
!139 = !DILocalVariable(name: "i", scope: !140, file: !1, line: 67, type: !5)
!140 = distinct !DILexicalBlock(scope: !136, file: !1, line: 66, column: 9)
!141 = !DILocation(line: 67, column: 17, scope: !140)
!142 = !DILocalVariable(name: "n", scope: !140, file: !1, line: 67, type: !5)
!143 = !DILocation(line: 67, column: 20, scope: !140)
!144 = !DILocalVariable(name: "intVariable", scope: !140, file: !1, line: 67, type: !5)
!145 = !DILocation(line: 67, column: 23, scope: !140)
!146 = !DILocation(line: 68, column: 24, scope: !147)
!147 = distinct !DILexicalBlock(scope: !140, file: !1, line: 68, column: 17)
!148 = !DILocation(line: 68, column: 17, scope: !147)
!149 = !DILocation(line: 68, column: 40, scope: !147)
!150 = !DILocation(line: 68, column: 17, scope: !140)
!151 = !DILocation(line: 71, column: 29, scope: !152)
!152 = distinct !DILexicalBlock(scope: !147, file: !1, line: 69, column: 13)
!153 = !DILocation(line: 72, column: 24, scope: !154)
!154 = distinct !DILexicalBlock(scope: !152, file: !1, line: 72, column: 17)
!155 = !DILocation(line: 72, column: 22, scope: !154)
!156 = !DILocation(line: 72, column: 29, scope: !157)
!157 = distinct !DILexicalBlock(scope: !154, file: !1, line: 72, column: 17)
!158 = !DILocation(line: 72, column: 33, scope: !157)
!159 = !DILocation(line: 72, column: 31, scope: !157)
!160 = !DILocation(line: 72, column: 17, scope: !154)
!161 = !DILocation(line: 75, column: 32, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !1, line: 73, column: 17)
!163 = !DILocation(line: 76, column: 17, scope: !162)
!164 = !DILocation(line: 72, column: 37, scope: !157)
!165 = !DILocation(line: 72, column: 17, scope: !157)
!166 = distinct !{!166, !160, !167, !168}
!167 = !DILocation(line: 76, column: 17, scope: !154)
!168 = !{!"llvm.loop.mustprogress"}
!169 = !DILocation(line: 77, column: 30, scope: !152)
!170 = !DILocation(line: 77, column: 17, scope: !152)
!171 = !DILocation(line: 78, column: 13, scope: !152)
!172 = !DILocation(line: 81, column: 1, scope: !10)
!173 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 88, type: !11, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!174 = !DILocalVariable(name: "data", scope: !173, file: !1, line: 90, type: !14)
!175 = !DILocation(line: 90, column: 12, scope: !173)
!176 = !DILocalVariable(name: "myUnion", scope: !173, file: !1, line: 91, type: !18)
!177 = !DILocation(line: 91, column: 61, scope: !173)
!178 = !DILocalVariable(name: "dataBuffer", scope: !173, file: !1, line: 92, type: !26)
!179 = !DILocation(line: 92, column: 10, scope: !173)
!180 = !DILocation(line: 93, column: 12, scope: !173)
!181 = !DILocation(line: 93, column: 10, scope: !173)
!182 = !DILocation(line: 95, column: 12, scope: !173)
!183 = !DILocation(line: 95, column: 5, scope: !173)
!184 = !DILocation(line: 96, column: 26, scope: !173)
!185 = !DILocation(line: 96, column: 13, scope: !173)
!186 = !DILocation(line: 96, column: 24, scope: !173)
!187 = !DILocalVariable(name: "data", scope: !188, file: !1, line: 98, type: !14)
!188 = distinct !DILexicalBlock(scope: !173, file: !1, line: 97, column: 5)
!189 = !DILocation(line: 98, column: 16, scope: !188)
!190 = !DILocation(line: 98, column: 31, scope: !188)
!191 = !DILocalVariable(name: "i", scope: !192, file: !1, line: 100, type: !5)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 99, column: 9)
!193 = !DILocation(line: 100, column: 17, scope: !192)
!194 = !DILocalVariable(name: "n", scope: !192, file: !1, line: 100, type: !5)
!195 = !DILocation(line: 100, column: 20, scope: !192)
!196 = !DILocalVariable(name: "intVariable", scope: !192, file: !1, line: 100, type: !5)
!197 = !DILocation(line: 100, column: 23, scope: !192)
!198 = !DILocation(line: 101, column: 24, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !1, line: 101, column: 17)
!200 = !DILocation(line: 101, column: 17, scope: !199)
!201 = !DILocation(line: 101, column: 40, scope: !199)
!202 = !DILocation(line: 101, column: 17, scope: !192)
!203 = !DILocation(line: 104, column: 29, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !1, line: 102, column: 13)
!205 = !DILocation(line: 105, column: 24, scope: !206)
!206 = distinct !DILexicalBlock(scope: !204, file: !1, line: 105, column: 17)
!207 = !DILocation(line: 105, column: 22, scope: !206)
!208 = !DILocation(line: 105, column: 29, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !1, line: 105, column: 17)
!210 = !DILocation(line: 105, column: 33, scope: !209)
!211 = !DILocation(line: 105, column: 31, scope: !209)
!212 = !DILocation(line: 105, column: 17, scope: !206)
!213 = !DILocation(line: 108, column: 32, scope: !214)
!214 = distinct !DILexicalBlock(scope: !209, file: !1, line: 106, column: 17)
!215 = !DILocation(line: 109, column: 17, scope: !214)
!216 = !DILocation(line: 105, column: 37, scope: !209)
!217 = !DILocation(line: 105, column: 17, scope: !209)
!218 = distinct !{!218, !212, !219, !168}
!219 = !DILocation(line: 109, column: 17, scope: !206)
!220 = !DILocation(line: 110, column: 30, scope: !204)
!221 = !DILocation(line: 110, column: 17, scope: !204)
!222 = !DILocation(line: 111, column: 13, scope: !204)
!223 = !DILocation(line: 114, column: 1, scope: !173)
!224 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 117, type: !11, scopeLine: 118, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!225 = !DILocalVariable(name: "data", scope: !224, file: !1, line: 119, type: !14)
!226 = !DILocation(line: 119, column: 12, scope: !224)
!227 = !DILocalVariable(name: "myUnion", scope: !224, file: !1, line: 120, type: !18)
!228 = !DILocation(line: 120, column: 61, scope: !224)
!229 = !DILocalVariable(name: "dataBuffer", scope: !224, file: !1, line: 121, type: !26)
!230 = !DILocation(line: 121, column: 10, scope: !224)
!231 = !DILocation(line: 122, column: 12, scope: !224)
!232 = !DILocation(line: 122, column: 10, scope: !224)
!233 = !DILocalVariable(name: "dataLen", scope: !234, file: !1, line: 125, type: !34)
!234 = distinct !DILexicalBlock(scope: !224, file: !1, line: 123, column: 5)
!235 = !DILocation(line: 125, column: 16, scope: !234)
!236 = !DILocation(line: 125, column: 33, scope: !234)
!237 = !DILocation(line: 125, column: 26, scope: !234)
!238 = !DILocalVariable(name: "pFile", scope: !234, file: !1, line: 126, type: !41)
!239 = !DILocation(line: 126, column: 16, scope: !234)
!240 = !DILocation(line: 128, column: 17, scope: !241)
!241 = distinct !DILexicalBlock(scope: !234, file: !1, line: 128, column: 13)
!242 = !DILocation(line: 128, column: 16, scope: !241)
!243 = !DILocation(line: 128, column: 25, scope: !241)
!244 = !DILocation(line: 128, column: 13, scope: !234)
!245 = !DILocation(line: 130, column: 21, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !1, line: 129, column: 9)
!247 = !DILocation(line: 130, column: 19, scope: !246)
!248 = !DILocation(line: 131, column: 17, scope: !249)
!249 = distinct !DILexicalBlock(scope: !246, file: !1, line: 131, column: 17)
!250 = !DILocation(line: 131, column: 23, scope: !249)
!251 = !DILocation(line: 131, column: 17, scope: !246)
!252 = !DILocation(line: 134, column: 27, scope: !253)
!253 = distinct !DILexicalBlock(scope: !254, file: !1, line: 134, column: 21)
!254 = distinct !DILexicalBlock(scope: !249, file: !1, line: 132, column: 13)
!255 = !DILocation(line: 134, column: 32, scope: !253)
!256 = !DILocation(line: 134, column: 31, scope: !253)
!257 = !DILocation(line: 134, column: 51, scope: !253)
!258 = !DILocation(line: 134, column: 50, scope: !253)
!259 = !DILocation(line: 134, column: 41, scope: !253)
!260 = !DILocation(line: 134, column: 61, scope: !253)
!261 = !DILocation(line: 134, column: 21, scope: !253)
!262 = !DILocation(line: 134, column: 68, scope: !253)
!263 = !DILocation(line: 134, column: 21, scope: !254)
!264 = !DILocation(line: 136, column: 21, scope: !265)
!265 = distinct !DILexicalBlock(scope: !253, file: !1, line: 135, column: 17)
!266 = !DILocation(line: 138, column: 21, scope: !265)
!267 = !DILocation(line: 138, column: 26, scope: !265)
!268 = !DILocation(line: 138, column: 35, scope: !265)
!269 = !DILocation(line: 139, column: 17, scope: !265)
!270 = !DILocation(line: 140, column: 24, scope: !254)
!271 = !DILocation(line: 140, column: 17, scope: !254)
!272 = !DILocation(line: 141, column: 13, scope: !254)
!273 = !DILocation(line: 142, column: 9, scope: !246)
!274 = !DILocation(line: 144, column: 26, scope: !224)
!275 = !DILocation(line: 144, column: 13, scope: !224)
!276 = !DILocation(line: 144, column: 24, scope: !224)
!277 = !DILocalVariable(name: "data", scope: !278, file: !1, line: 146, type: !14)
!278 = distinct !DILexicalBlock(scope: !224, file: !1, line: 145, column: 5)
!279 = !DILocation(line: 146, column: 16, scope: !278)
!280 = !DILocation(line: 146, column: 31, scope: !278)
!281 = !DILocalVariable(name: "i", scope: !282, file: !1, line: 148, type: !5)
!282 = distinct !DILexicalBlock(scope: !278, file: !1, line: 147, column: 9)
!283 = !DILocation(line: 148, column: 17, scope: !282)
!284 = !DILocalVariable(name: "n", scope: !282, file: !1, line: 148, type: !5)
!285 = !DILocation(line: 148, column: 20, scope: !282)
!286 = !DILocalVariable(name: "intVariable", scope: !282, file: !1, line: 148, type: !5)
!287 = !DILocation(line: 148, column: 23, scope: !282)
!288 = !DILocation(line: 149, column: 24, scope: !289)
!289 = distinct !DILexicalBlock(scope: !282, file: !1, line: 149, column: 17)
!290 = !DILocation(line: 149, column: 17, scope: !289)
!291 = !DILocation(line: 149, column: 40, scope: !289)
!292 = !DILocation(line: 149, column: 17, scope: !282)
!293 = !DILocation(line: 152, column: 21, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !1, line: 152, column: 21)
!295 = distinct !DILexicalBlock(scope: !289, file: !1, line: 150, column: 13)
!296 = !DILocation(line: 152, column: 23, scope: !294)
!297 = !DILocation(line: 152, column: 21, scope: !295)
!298 = !DILocation(line: 154, column: 33, scope: !299)
!299 = distinct !DILexicalBlock(scope: !294, file: !1, line: 153, column: 17)
!300 = !DILocation(line: 155, column: 28, scope: !301)
!301 = distinct !DILexicalBlock(scope: !299, file: !1, line: 155, column: 21)
!302 = !DILocation(line: 155, column: 26, scope: !301)
!303 = !DILocation(line: 155, column: 33, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !1, line: 155, column: 21)
!305 = !DILocation(line: 155, column: 37, scope: !304)
!306 = !DILocation(line: 155, column: 35, scope: !304)
!307 = !DILocation(line: 155, column: 21, scope: !301)
!308 = !DILocation(line: 158, column: 36, scope: !309)
!309 = distinct !DILexicalBlock(scope: !304, file: !1, line: 156, column: 21)
!310 = !DILocation(line: 159, column: 21, scope: !309)
!311 = !DILocation(line: 155, column: 41, scope: !304)
!312 = !DILocation(line: 155, column: 21, scope: !304)
!313 = distinct !{!313, !307, !314, !168}
!314 = !DILocation(line: 159, column: 21, scope: !301)
!315 = !DILocation(line: 160, column: 34, scope: !299)
!316 = !DILocation(line: 160, column: 21, scope: !299)
!317 = !DILocation(line: 161, column: 17, scope: !299)
!318 = !DILocation(line: 162, column: 13, scope: !295)
!319 = !DILocation(line: 165, column: 1, scope: !224)
!320 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_34_good", scope: !1, file: !1, line: 167, type: !11, scopeLine: 168, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!321 = !DILocation(line: 169, column: 5, scope: !320)
!322 = !DILocation(line: 170, column: 5, scope: !320)
!323 = !DILocation(line: 171, column: 1, scope: !320)
