; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_31.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_31.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_31_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %dataCopy = alloca i8*, align 8
  %data12 = alloca i8*, align 8
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
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !124, metadata !DIExpression()), !dbg !126
  %11 = load i8*, i8** %data, align 8, !dbg !127
  store i8* %11, i8** %dataCopy, align 8, !dbg !126
  call void @llvm.dbg.declare(metadata i8** %data12, metadata !128, metadata !DIExpression()), !dbg !129
  %12 = load i8*, i8** %dataCopy, align 8, !dbg !130
  store i8* %12, i8** %data12, align 8, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %i, metadata !131, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %n, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !136, metadata !DIExpression()), !dbg !137
  %13 = load i8*, i8** %data12, align 8, !dbg !138
  %call13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !140
  %cmp14 = icmp eq i32 %call13, 1, !dbg !141
  br i1 %cmp14, label %if.then16, label %if.end20, !dbg !142

if.then16:                                        ; preds = %if.end11
  store i32 0, i32* %intVariable, align 4, !dbg !143
  store i32 0, i32* %i, align 4, !dbg !145
  br label %for.cond, !dbg !147

for.cond:                                         ; preds = %for.inc, %if.then16
  %14 = load i32, i32* %i, align 4, !dbg !148
  %15 = load i32, i32* %n, align 4, !dbg !150
  %cmp17 = icmp slt i32 %14, %15, !dbg !151
  br i1 %cmp17, label %for.body, label %for.end, !dbg !152

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %intVariable, align 4, !dbg !153
  %inc = add nsw i32 %16, 1, !dbg !153
  store i32 %inc, i32* %intVariable, align 4, !dbg !153
  br label %for.inc, !dbg !155

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !156
  %inc19 = add nsw i32 %17, 1, !dbg !156
  store i32 %inc19, i32* %i, align 4, !dbg !156
  br label %for.cond, !dbg !157, !llvm.loop !158

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %intVariable, align 4, !dbg !161
  call void @printIntLine(i32 %18), !dbg !162
  br label %if.end20, !dbg !163

if.end20:                                         ; preds = %for.end, %if.end11
  ret void, !dbg !164
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
define dso_local void @goodG2B() #0 !dbg !165 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataCopy = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !168, metadata !DIExpression()), !dbg !169
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !169
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !169
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !170
  store i8* %arraydecay, i8** %data, align 8, !dbg !171
  %1 = load i8*, i8** %data, align 8, !dbg !172
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !173
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !174, metadata !DIExpression()), !dbg !176
  %2 = load i8*, i8** %data, align 8, !dbg !177
  store i8* %2, i8** %dataCopy, align 8, !dbg !176
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !178, metadata !DIExpression()), !dbg !179
  %3 = load i8*, i8** %dataCopy, align 8, !dbg !180
  store i8* %3, i8** %data1, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata i32* %i, metadata !181, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %n, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !186, metadata !DIExpression()), !dbg !187
  %4 = load i8*, i8** %data1, align 8, !dbg !188
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !190
  %cmp = icmp eq i32 %call2, 1, !dbg !191
  br i1 %cmp, label %if.then, label %if.end, !dbg !192

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !193
  store i32 0, i32* %i, align 4, !dbg !195
  br label %for.cond, !dbg !197

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !198
  %6 = load i32, i32* %n, align 4, !dbg !200
  %cmp3 = icmp slt i32 %5, %6, !dbg !201
  br i1 %cmp3, label %for.body, label %for.end, !dbg !202

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !203
  %inc = add nsw i32 %7, 1, !dbg !203
  store i32 %inc, i32* %intVariable, align 4, !dbg !203
  br label %for.inc, !dbg !205

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !206
  %inc4 = add nsw i32 %8, 1, !dbg !206
  store i32 %inc4, i32* %i, align 4, !dbg !206
  br label %for.cond, !dbg !207, !llvm.loop !208

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !210
  call void @printIntLine(i32 %9), !dbg !211
  br label %if.end, !dbg !212

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !213
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !214 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  %dataCopy = alloca i8*, align 8
  %data12 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !217, metadata !DIExpression()), !dbg !218
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !218
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !218
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !219
  store i8* %arraydecay, i8** %data, align 8, !dbg !220
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !221, metadata !DIExpression()), !dbg !223
  %1 = load i8*, i8** %data, align 8, !dbg !224
  %call = call i64 @strlen(i8* %1) #6, !dbg !225
  store i64 %call, i64* %dataLen, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !226, metadata !DIExpression()), !dbg !227
  %2 = load i64, i64* %dataLen, align 8, !dbg !228
  %sub = sub i64 100, %2, !dbg !230
  %cmp = icmp ugt i64 %sub, 1, !dbg !231
  br i1 %cmp, label %if.then, label %if.end11, !dbg !232

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !233
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !235
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !236
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !238
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !239

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !240
  %5 = load i64, i64* %dataLen, align 8, !dbg !243
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !244
  %6 = load i64, i64* %dataLen, align 8, !dbg !245
  %sub4 = sub i64 100, %6, !dbg !246
  %conv = trunc i64 %sub4 to i32, !dbg !247
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !248
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !249
  %cmp6 = icmp eq i8* %call5, null, !dbg !250
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !251

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !252
  %8 = load i8*, i8** %data, align 8, !dbg !254
  %9 = load i64, i64* %dataLen, align 8, !dbg !255
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !254
  store i8 0, i8* %arrayidx, align 1, !dbg !256
  br label %if.end, !dbg !257

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !258
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !259
  br label %if.end10, !dbg !260

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !261

if.end11:                                         ; preds = %if.end10, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !262, metadata !DIExpression()), !dbg !264
  %11 = load i8*, i8** %data, align 8, !dbg !265
  store i8* %11, i8** %dataCopy, align 8, !dbg !264
  call void @llvm.dbg.declare(metadata i8** %data12, metadata !266, metadata !DIExpression()), !dbg !267
  %12 = load i8*, i8** %dataCopy, align 8, !dbg !268
  store i8* %12, i8** %data12, align 8, !dbg !267
  call void @llvm.dbg.declare(metadata i32* %i, metadata !269, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata i32* %n, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !274, metadata !DIExpression()), !dbg !275
  %13 = load i8*, i8** %data12, align 8, !dbg !276
  %call13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !278
  %cmp14 = icmp eq i32 %call13, 1, !dbg !279
  br i1 %cmp14, label %if.then16, label %if.end24, !dbg !280

if.then16:                                        ; preds = %if.end11
  %14 = load i32, i32* %n, align 4, !dbg !281
  %cmp17 = icmp slt i32 %14, 10000, !dbg !284
  br i1 %cmp17, label %if.then19, label %if.end23, !dbg !285

if.then19:                                        ; preds = %if.then16
  store i32 0, i32* %intVariable, align 4, !dbg !286
  store i32 0, i32* %i, align 4, !dbg !288
  br label %for.cond, !dbg !290

for.cond:                                         ; preds = %for.inc, %if.then19
  %15 = load i32, i32* %i, align 4, !dbg !291
  %16 = load i32, i32* %n, align 4, !dbg !293
  %cmp20 = icmp slt i32 %15, %16, !dbg !294
  br i1 %cmp20, label %for.body, label %for.end, !dbg !295

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %intVariable, align 4, !dbg !296
  %inc = add nsw i32 %17, 1, !dbg !296
  store i32 %inc, i32* %intVariable, align 4, !dbg !296
  br label %for.inc, !dbg !298

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !299
  %inc22 = add nsw i32 %18, 1, !dbg !299
  store i32 %inc22, i32* %i, align 4, !dbg !299
  br label %for.cond, !dbg !300, !llvm.loop !301

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !303
  call void @printIntLine(i32 %19), !dbg !304
  br label %if.end23, !dbg !305

if.end23:                                         ; preds = %for.end, %if.then16
  br label %if.end24, !dbg !306

if.end24:                                         ; preds = %if.end23, %if.end11
  ret void, !dbg !307
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_31_good() #0 !dbg !308 {
entry:
  call void @goodG2B(), !dbg !309
  call void @goodB2G(), !dbg !310
  ret void, !dbg !311
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_094/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_31_bad", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 42, type: !26)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 40, column: 5)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 42, column: 16, scope: !25)
!30 = !DILocation(line: 42, column: 33, scope: !25)
!31 = !DILocation(line: 42, column: 26, scope: !25)
!32 = !DILocalVariable(name: "pFile", scope: !25, file: !1, line: 43, type: !33)
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
!89 = !DILocation(line: 43, column: 16, scope: !25)
!90 = !DILocation(line: 45, column: 17, scope: !91)
!91 = distinct !DILexicalBlock(scope: !25, file: !1, line: 45, column: 13)
!92 = !DILocation(line: 45, column: 16, scope: !91)
!93 = !DILocation(line: 45, column: 25, scope: !91)
!94 = !DILocation(line: 45, column: 13, scope: !25)
!95 = !DILocation(line: 47, column: 21, scope: !96)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 46, column: 9)
!97 = !DILocation(line: 47, column: 19, scope: !96)
!98 = !DILocation(line: 48, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 48, column: 17)
!100 = !DILocation(line: 48, column: 23, scope: !99)
!101 = !DILocation(line: 48, column: 17, scope: !96)
!102 = !DILocation(line: 51, column: 27, scope: !103)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 51, column: 21)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 49, column: 13)
!105 = !DILocation(line: 51, column: 32, scope: !103)
!106 = !DILocation(line: 51, column: 31, scope: !103)
!107 = !DILocation(line: 51, column: 51, scope: !103)
!108 = !DILocation(line: 51, column: 50, scope: !103)
!109 = !DILocation(line: 51, column: 41, scope: !103)
!110 = !DILocation(line: 51, column: 61, scope: !103)
!111 = !DILocation(line: 51, column: 21, scope: !103)
!112 = !DILocation(line: 51, column: 68, scope: !103)
!113 = !DILocation(line: 51, column: 21, scope: !104)
!114 = !DILocation(line: 53, column: 21, scope: !115)
!115 = distinct !DILexicalBlock(scope: !103, file: !1, line: 52, column: 17)
!116 = !DILocation(line: 55, column: 21, scope: !115)
!117 = !DILocation(line: 55, column: 26, scope: !115)
!118 = !DILocation(line: 55, column: 35, scope: !115)
!119 = !DILocation(line: 56, column: 17, scope: !115)
!120 = !DILocation(line: 57, column: 24, scope: !104)
!121 = !DILocation(line: 57, column: 17, scope: !104)
!122 = !DILocation(line: 58, column: 13, scope: !104)
!123 = !DILocation(line: 59, column: 9, scope: !96)
!124 = !DILocalVariable(name: "dataCopy", scope: !125, file: !1, line: 62, type: !14)
!125 = distinct !DILexicalBlock(scope: !10, file: !1, line: 61, column: 5)
!126 = !DILocation(line: 62, column: 16, scope: !125)
!127 = !DILocation(line: 62, column: 27, scope: !125)
!128 = !DILocalVariable(name: "data", scope: !125, file: !1, line: 63, type: !14)
!129 = !DILocation(line: 63, column: 16, scope: !125)
!130 = !DILocation(line: 63, column: 23, scope: !125)
!131 = !DILocalVariable(name: "i", scope: !132, file: !1, line: 65, type: !5)
!132 = distinct !DILexicalBlock(scope: !125, file: !1, line: 64, column: 9)
!133 = !DILocation(line: 65, column: 17, scope: !132)
!134 = !DILocalVariable(name: "n", scope: !132, file: !1, line: 65, type: !5)
!135 = !DILocation(line: 65, column: 20, scope: !132)
!136 = !DILocalVariable(name: "intVariable", scope: !132, file: !1, line: 65, type: !5)
!137 = !DILocation(line: 65, column: 23, scope: !132)
!138 = !DILocation(line: 66, column: 24, scope: !139)
!139 = distinct !DILexicalBlock(scope: !132, file: !1, line: 66, column: 17)
!140 = !DILocation(line: 66, column: 17, scope: !139)
!141 = !DILocation(line: 66, column: 40, scope: !139)
!142 = !DILocation(line: 66, column: 17, scope: !132)
!143 = !DILocation(line: 69, column: 29, scope: !144)
!144 = distinct !DILexicalBlock(scope: !139, file: !1, line: 67, column: 13)
!145 = !DILocation(line: 70, column: 24, scope: !146)
!146 = distinct !DILexicalBlock(scope: !144, file: !1, line: 70, column: 17)
!147 = !DILocation(line: 70, column: 22, scope: !146)
!148 = !DILocation(line: 70, column: 29, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !1, line: 70, column: 17)
!150 = !DILocation(line: 70, column: 33, scope: !149)
!151 = !DILocation(line: 70, column: 31, scope: !149)
!152 = !DILocation(line: 70, column: 17, scope: !146)
!153 = !DILocation(line: 73, column: 32, scope: !154)
!154 = distinct !DILexicalBlock(scope: !149, file: !1, line: 71, column: 17)
!155 = !DILocation(line: 74, column: 17, scope: !154)
!156 = !DILocation(line: 70, column: 37, scope: !149)
!157 = !DILocation(line: 70, column: 17, scope: !149)
!158 = distinct !{!158, !152, !159, !160}
!159 = !DILocation(line: 74, column: 17, scope: !146)
!160 = !{!"llvm.loop.mustprogress"}
!161 = !DILocation(line: 75, column: 30, scope: !144)
!162 = !DILocation(line: 75, column: 17, scope: !144)
!163 = !DILocation(line: 76, column: 13, scope: !144)
!164 = !DILocation(line: 79, column: 1, scope: !10)
!165 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 86, type: !11, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!166 = !DILocalVariable(name: "data", scope: !165, file: !1, line: 88, type: !14)
!167 = !DILocation(line: 88, column: 12, scope: !165)
!168 = !DILocalVariable(name: "dataBuffer", scope: !165, file: !1, line: 89, type: !18)
!169 = !DILocation(line: 89, column: 10, scope: !165)
!170 = !DILocation(line: 90, column: 12, scope: !165)
!171 = !DILocation(line: 90, column: 10, scope: !165)
!172 = !DILocation(line: 92, column: 12, scope: !165)
!173 = !DILocation(line: 92, column: 5, scope: !165)
!174 = !DILocalVariable(name: "dataCopy", scope: !175, file: !1, line: 94, type: !14)
!175 = distinct !DILexicalBlock(scope: !165, file: !1, line: 93, column: 5)
!176 = !DILocation(line: 94, column: 16, scope: !175)
!177 = !DILocation(line: 94, column: 27, scope: !175)
!178 = !DILocalVariable(name: "data", scope: !175, file: !1, line: 95, type: !14)
!179 = !DILocation(line: 95, column: 16, scope: !175)
!180 = !DILocation(line: 95, column: 23, scope: !175)
!181 = !DILocalVariable(name: "i", scope: !182, file: !1, line: 97, type: !5)
!182 = distinct !DILexicalBlock(scope: !175, file: !1, line: 96, column: 9)
!183 = !DILocation(line: 97, column: 17, scope: !182)
!184 = !DILocalVariable(name: "n", scope: !182, file: !1, line: 97, type: !5)
!185 = !DILocation(line: 97, column: 20, scope: !182)
!186 = !DILocalVariable(name: "intVariable", scope: !182, file: !1, line: 97, type: !5)
!187 = !DILocation(line: 97, column: 23, scope: !182)
!188 = !DILocation(line: 98, column: 24, scope: !189)
!189 = distinct !DILexicalBlock(scope: !182, file: !1, line: 98, column: 17)
!190 = !DILocation(line: 98, column: 17, scope: !189)
!191 = !DILocation(line: 98, column: 40, scope: !189)
!192 = !DILocation(line: 98, column: 17, scope: !182)
!193 = !DILocation(line: 101, column: 29, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !1, line: 99, column: 13)
!195 = !DILocation(line: 102, column: 24, scope: !196)
!196 = distinct !DILexicalBlock(scope: !194, file: !1, line: 102, column: 17)
!197 = !DILocation(line: 102, column: 22, scope: !196)
!198 = !DILocation(line: 102, column: 29, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !1, line: 102, column: 17)
!200 = !DILocation(line: 102, column: 33, scope: !199)
!201 = !DILocation(line: 102, column: 31, scope: !199)
!202 = !DILocation(line: 102, column: 17, scope: !196)
!203 = !DILocation(line: 105, column: 32, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !1, line: 103, column: 17)
!205 = !DILocation(line: 106, column: 17, scope: !204)
!206 = !DILocation(line: 102, column: 37, scope: !199)
!207 = !DILocation(line: 102, column: 17, scope: !199)
!208 = distinct !{!208, !202, !209, !160}
!209 = !DILocation(line: 106, column: 17, scope: !196)
!210 = !DILocation(line: 107, column: 30, scope: !194)
!211 = !DILocation(line: 107, column: 17, scope: !194)
!212 = !DILocation(line: 108, column: 13, scope: !194)
!213 = !DILocation(line: 111, column: 1, scope: !165)
!214 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 114, type: !11, scopeLine: 115, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!215 = !DILocalVariable(name: "data", scope: !214, file: !1, line: 116, type: !14)
!216 = !DILocation(line: 116, column: 12, scope: !214)
!217 = !DILocalVariable(name: "dataBuffer", scope: !214, file: !1, line: 117, type: !18)
!218 = !DILocation(line: 117, column: 10, scope: !214)
!219 = !DILocation(line: 118, column: 12, scope: !214)
!220 = !DILocation(line: 118, column: 10, scope: !214)
!221 = !DILocalVariable(name: "dataLen", scope: !222, file: !1, line: 121, type: !26)
!222 = distinct !DILexicalBlock(scope: !214, file: !1, line: 119, column: 5)
!223 = !DILocation(line: 121, column: 16, scope: !222)
!224 = !DILocation(line: 121, column: 33, scope: !222)
!225 = !DILocation(line: 121, column: 26, scope: !222)
!226 = !DILocalVariable(name: "pFile", scope: !222, file: !1, line: 122, type: !33)
!227 = !DILocation(line: 122, column: 16, scope: !222)
!228 = !DILocation(line: 124, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !222, file: !1, line: 124, column: 13)
!230 = !DILocation(line: 124, column: 16, scope: !229)
!231 = !DILocation(line: 124, column: 25, scope: !229)
!232 = !DILocation(line: 124, column: 13, scope: !222)
!233 = !DILocation(line: 126, column: 21, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !1, line: 125, column: 9)
!235 = !DILocation(line: 126, column: 19, scope: !234)
!236 = !DILocation(line: 127, column: 17, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !1, line: 127, column: 17)
!238 = !DILocation(line: 127, column: 23, scope: !237)
!239 = !DILocation(line: 127, column: 17, scope: !234)
!240 = !DILocation(line: 130, column: 27, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 130, column: 21)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 128, column: 13)
!243 = !DILocation(line: 130, column: 32, scope: !241)
!244 = !DILocation(line: 130, column: 31, scope: !241)
!245 = !DILocation(line: 130, column: 51, scope: !241)
!246 = !DILocation(line: 130, column: 50, scope: !241)
!247 = !DILocation(line: 130, column: 41, scope: !241)
!248 = !DILocation(line: 130, column: 61, scope: !241)
!249 = !DILocation(line: 130, column: 21, scope: !241)
!250 = !DILocation(line: 130, column: 68, scope: !241)
!251 = !DILocation(line: 130, column: 21, scope: !242)
!252 = !DILocation(line: 132, column: 21, scope: !253)
!253 = distinct !DILexicalBlock(scope: !241, file: !1, line: 131, column: 17)
!254 = !DILocation(line: 134, column: 21, scope: !253)
!255 = !DILocation(line: 134, column: 26, scope: !253)
!256 = !DILocation(line: 134, column: 35, scope: !253)
!257 = !DILocation(line: 135, column: 17, scope: !253)
!258 = !DILocation(line: 136, column: 24, scope: !242)
!259 = !DILocation(line: 136, column: 17, scope: !242)
!260 = !DILocation(line: 137, column: 13, scope: !242)
!261 = !DILocation(line: 138, column: 9, scope: !234)
!262 = !DILocalVariable(name: "dataCopy", scope: !263, file: !1, line: 141, type: !14)
!263 = distinct !DILexicalBlock(scope: !214, file: !1, line: 140, column: 5)
!264 = !DILocation(line: 141, column: 16, scope: !263)
!265 = !DILocation(line: 141, column: 27, scope: !263)
!266 = !DILocalVariable(name: "data", scope: !263, file: !1, line: 142, type: !14)
!267 = !DILocation(line: 142, column: 16, scope: !263)
!268 = !DILocation(line: 142, column: 23, scope: !263)
!269 = !DILocalVariable(name: "i", scope: !270, file: !1, line: 144, type: !5)
!270 = distinct !DILexicalBlock(scope: !263, file: !1, line: 143, column: 9)
!271 = !DILocation(line: 144, column: 17, scope: !270)
!272 = !DILocalVariable(name: "n", scope: !270, file: !1, line: 144, type: !5)
!273 = !DILocation(line: 144, column: 20, scope: !270)
!274 = !DILocalVariable(name: "intVariable", scope: !270, file: !1, line: 144, type: !5)
!275 = !DILocation(line: 144, column: 23, scope: !270)
!276 = !DILocation(line: 145, column: 24, scope: !277)
!277 = distinct !DILexicalBlock(scope: !270, file: !1, line: 145, column: 17)
!278 = !DILocation(line: 145, column: 17, scope: !277)
!279 = !DILocation(line: 145, column: 40, scope: !277)
!280 = !DILocation(line: 145, column: 17, scope: !270)
!281 = !DILocation(line: 148, column: 21, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !1, line: 148, column: 21)
!283 = distinct !DILexicalBlock(scope: !277, file: !1, line: 146, column: 13)
!284 = !DILocation(line: 148, column: 23, scope: !282)
!285 = !DILocation(line: 148, column: 21, scope: !283)
!286 = !DILocation(line: 150, column: 33, scope: !287)
!287 = distinct !DILexicalBlock(scope: !282, file: !1, line: 149, column: 17)
!288 = !DILocation(line: 151, column: 28, scope: !289)
!289 = distinct !DILexicalBlock(scope: !287, file: !1, line: 151, column: 21)
!290 = !DILocation(line: 151, column: 26, scope: !289)
!291 = !DILocation(line: 151, column: 33, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !1, line: 151, column: 21)
!293 = !DILocation(line: 151, column: 37, scope: !292)
!294 = !DILocation(line: 151, column: 35, scope: !292)
!295 = !DILocation(line: 151, column: 21, scope: !289)
!296 = !DILocation(line: 154, column: 36, scope: !297)
!297 = distinct !DILexicalBlock(scope: !292, file: !1, line: 152, column: 21)
!298 = !DILocation(line: 155, column: 21, scope: !297)
!299 = !DILocation(line: 151, column: 41, scope: !292)
!300 = !DILocation(line: 151, column: 21, scope: !292)
!301 = distinct !{!301, !295, !302, !160}
!302 = !DILocation(line: 155, column: 21, scope: !289)
!303 = !DILocation(line: 156, column: 34, scope: !287)
!304 = !DILocation(line: 156, column: 21, scope: !287)
!305 = !DILocation(line: 157, column: 17, scope: !287)
!306 = !DILocation(line: 158, column: 13, scope: !283)
!307 = !DILocation(line: 161, column: 1, scope: !214)
!308 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_31_good", scope: !1, file: !1, line: 163, type: !11, scopeLine: 164, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!309 = !DILocation(line: 165, column: 5, scope: !308)
!310 = !DILocation(line: 166, column: 5, scope: !308)
!311 = !DILocation(line: 167, column: 1, scope: !308)
