; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_42.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_42.c"
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
define dso_local i8* @badSource(i8* %data) #0 !dbg !10 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !17, metadata !DIExpression()), !dbg !22
  %0 = load i8*, i8** %data.addr, align 8, !dbg !23
  %call = call i64 @strlen(i8* %0) #6, !dbg !24
  store i64 %call, i64* %dataLen, align 8, !dbg !22
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !25, metadata !DIExpression()), !dbg !82
  %1 = load i64, i64* %dataLen, align 8, !dbg !83
  %sub = sub i64 100, %1, !dbg !85
  %cmp = icmp ugt i64 %sub, 1, !dbg !86
  br i1 %cmp, label %if.then, label %if.end11, !dbg !87

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !88
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !90
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !91
  %cmp2 = icmp ne %struct._IO_FILE* %2, null, !dbg !93
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !94

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data.addr, align 8, !dbg !95
  %4 = load i64, i64* %dataLen, align 8, !dbg !98
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !99
  %5 = load i64, i64* %dataLen, align 8, !dbg !100
  %sub4 = sub i64 100, %5, !dbg !101
  %conv = trunc i64 %sub4 to i32, !dbg !102
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !103
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !104
  %cmp6 = icmp eq i8* %call5, null, !dbg !105
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !106

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !107
  %7 = load i8*, i8** %data.addr, align 8, !dbg !109
  %8 = load i64, i64* %dataLen, align 8, !dbg !110
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !109
  store i8 0, i8* %arrayidx, align 1, !dbg !111
  br label %if.end, !dbg !112

if.end:                                           ; preds = %if.then8, %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !113
  %call9 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !114
  br label %if.end10, !dbg !115

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !116

if.end11:                                         ; preds = %if.end10, %entry
  %10 = load i8*, i8** %data.addr, align 8, !dbg !117
  ret i8* %10, !dbg !118
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_42_bad() #0 !dbg !119 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !124, metadata !DIExpression()), !dbg !128
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !128
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !128
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !129
  store i8* %arraydecay, i8** %data, align 8, !dbg !130
  %1 = load i8*, i8** %data, align 8, !dbg !131
  %call = call i8* @badSource(i8* %1), !dbg !132
  store i8* %call, i8** %data, align 8, !dbg !133
  call void @llvm.dbg.declare(metadata i32* %i, metadata !134, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %n, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !139, metadata !DIExpression()), !dbg !140
  %2 = load i8*, i8** %data, align 8, !dbg !141
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !143
  %cmp = icmp eq i32 %call1, 1, !dbg !144
  br i1 %cmp, label %if.then, label %if.end, !dbg !145

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !146
  store i32 0, i32* %i, align 4, !dbg !148
  br label %for.cond, !dbg !150

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !151
  %4 = load i32, i32* %n, align 4, !dbg !153
  %cmp2 = icmp slt i32 %3, %4, !dbg !154
  br i1 %cmp2, label %for.body, label %for.end, !dbg !155

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !156
  %inc = add nsw i32 %5, 1, !dbg !156
  store i32 %inc, i32* %intVariable, align 4, !dbg !156
  br label %for.inc, !dbg !158

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !159
  %inc3 = add nsw i32 %6, 1, !dbg !159
  store i32 %inc3, i32* %i, align 4, !dbg !159
  br label %for.cond, !dbg !160, !llvm.loop !161

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !164
  call void @printIntLine(i32 %7), !dbg !165
  br label %if.end, !dbg !166

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !167
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodG2BSource(i8* %data) #0 !dbg !168 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = load i8*, i8** %data.addr, align 8, !dbg !171
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !172
  %1 = load i8*, i8** %data.addr, align 8, !dbg !173
  ret i8* %1, !dbg !174
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !175 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !178, metadata !DIExpression()), !dbg !179
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !179
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !179
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !180
  store i8* %arraydecay, i8** %data, align 8, !dbg !181
  %1 = load i8*, i8** %data, align 8, !dbg !182
  %call = call i8* @goodG2BSource(i8* %1), !dbg !183
  store i8* %call, i8** %data, align 8, !dbg !184
  call void @llvm.dbg.declare(metadata i32* %i, metadata !185, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i32* %n, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !190, metadata !DIExpression()), !dbg !191
  %2 = load i8*, i8** %data, align 8, !dbg !192
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !194
  %cmp = icmp eq i32 %call1, 1, !dbg !195
  br i1 %cmp, label %if.then, label %if.end, !dbg !196

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !197
  store i32 0, i32* %i, align 4, !dbg !199
  br label %for.cond, !dbg !201

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !202
  %4 = load i32, i32* %n, align 4, !dbg !204
  %cmp2 = icmp slt i32 %3, %4, !dbg !205
  br i1 %cmp2, label %for.body, label %for.end, !dbg !206

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !207
  %inc = add nsw i32 %5, 1, !dbg !207
  store i32 %inc, i32* %intVariable, align 4, !dbg !207
  br label %for.inc, !dbg !209

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !210
  %inc3 = add nsw i32 %6, 1, !dbg !210
  store i32 %inc3, i32* %i, align 4, !dbg !210
  br label %for.cond, !dbg !211, !llvm.loop !212

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !214
  call void @printIntLine(i32 %7), !dbg !215
  br label %if.end, !dbg !216

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !217
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @goodB2GSource(i8* %data) #0 !dbg !218 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !221, metadata !DIExpression()), !dbg !223
  %0 = load i8*, i8** %data.addr, align 8, !dbg !224
  %call = call i64 @strlen(i8* %0) #6, !dbg !225
  store i64 %call, i64* %dataLen, align 8, !dbg !223
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !226, metadata !DIExpression()), !dbg !227
  %1 = load i64, i64* %dataLen, align 8, !dbg !228
  %sub = sub i64 100, %1, !dbg !230
  %cmp = icmp ugt i64 %sub, 1, !dbg !231
  br i1 %cmp, label %if.then, label %if.end11, !dbg !232

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)), !dbg !233
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !235
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !236
  %cmp2 = icmp ne %struct._IO_FILE* %2, null, !dbg !238
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !239

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %data.addr, align 8, !dbg !240
  %4 = load i64, i64* %dataLen, align 8, !dbg !243
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !244
  %5 = load i64, i64* %dataLen, align 8, !dbg !245
  %sub4 = sub i64 100, %5, !dbg !246
  %conv = trunc i64 %sub4 to i32, !dbg !247
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !248
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !249
  %cmp6 = icmp eq i8* %call5, null, !dbg !250
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !251

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !252
  %7 = load i8*, i8** %data.addr, align 8, !dbg !254
  %8 = load i64, i64* %dataLen, align 8, !dbg !255
  %arrayidx = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !254
  store i8 0, i8* %arrayidx, align 1, !dbg !256
  br label %if.end, !dbg !257

if.end:                                           ; preds = %if.then8, %if.then3
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !258
  %call9 = call i32 @fclose(%struct._IO_FILE* %9), !dbg !259
  br label %if.end10, !dbg !260

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !261

if.end11:                                         ; preds = %if.end10, %entry
  %10 = load i8*, i8** %data.addr, align 8, !dbg !262
  ret i8* %10, !dbg !263
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !264 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !265, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !267, metadata !DIExpression()), !dbg !268
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !268
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !268
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !269
  store i8* %arraydecay, i8** %data, align 8, !dbg !270
  %1 = load i8*, i8** %data, align 8, !dbg !271
  %call = call i8* @goodB2GSource(i8* %1), !dbg !272
  store i8* %call, i8** %data, align 8, !dbg !273
  call void @llvm.dbg.declare(metadata i32* %i, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i32* %n, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !279, metadata !DIExpression()), !dbg !280
  %2 = load i8*, i8** %data, align 8, !dbg !281
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32* %n) #7, !dbg !283
  %cmp = icmp eq i32 %call1, 1, !dbg !284
  br i1 %cmp, label %if.then, label %if.end6, !dbg !285

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !286
  %cmp2 = icmp slt i32 %3, 10000, !dbg !289
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !290

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !291
  store i32 0, i32* %i, align 4, !dbg !293
  br label %for.cond, !dbg !295

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, i32* %i, align 4, !dbg !296
  %5 = load i32, i32* %n, align 4, !dbg !298
  %cmp4 = icmp slt i32 %4, %5, !dbg !299
  br i1 %cmp4, label %for.body, label %for.end, !dbg !300

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !301
  %inc = add nsw i32 %6, 1, !dbg !301
  store i32 %inc, i32* %intVariable, align 4, !dbg !301
  br label %for.inc, !dbg !303

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !304
  %inc5 = add nsw i32 %7, 1, !dbg !304
  store i32 %inc5, i32* %i, align 4, !dbg !304
  br label %for.cond, !dbg !305, !llvm.loop !306

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !308
  call void @printIntLine(i32 %8), !dbg !309
  br label %if.end, !dbg !310

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end6, !dbg !311

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !312
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_42_good() #0 !dbg !313 {
entry:
  call void @goodB2G(), !dbg !314
  call void @goodG2B(), !dbg !315
  ret void, !dbg !316
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_42.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_099/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "badSource", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 35, type: !13)
!16 = !DILocation(line: 35, column: 25, scope: !10)
!17 = !DILocalVariable(name: "dataLen", scope: !18, file: !1, line: 39, type: !19)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 37, column: 5)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DILocation(line: 39, column: 16, scope: !18)
!23 = !DILocation(line: 39, column: 33, scope: !18)
!24 = !DILocation(line: 39, column: 26, scope: !18)
!25 = !DILocalVariable(name: "pFile", scope: !18, file: !1, line: 40, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !28, line: 7, baseType: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !30, line: 49, size: 1728, elements: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !47, !49, !50, !51, !55, !57, !59, !63, !66, !68, !71, !74, !75, !76, !77, !78}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !29, file: !30, line: 51, baseType: !5, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !29, file: !30, line: 54, baseType: !13, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !29, file: !30, line: 55, baseType: !13, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !29, file: !30, line: 56, baseType: !13, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !29, file: !30, line: 57, baseType: !13, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !29, file: !30, line: 58, baseType: !13, size: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !29, file: !30, line: 59, baseType: !13, size: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !29, file: !30, line: 60, baseType: !13, size: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !29, file: !30, line: 61, baseType: !13, size: 64, offset: 512)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !29, file: !30, line: 64, baseType: !13, size: 64, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !29, file: !30, line: 65, baseType: !13, size: 64, offset: 640)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !29, file: !30, line: 66, baseType: !13, size: 64, offset: 704)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !29, file: !30, line: 68, baseType: !45, size: 64, offset: 768)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !30, line: 36, flags: DIFlagFwdDecl)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !29, file: !30, line: 70, baseType: !48, size: 64, offset: 832)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !29, file: !30, line: 72, baseType: !5, size: 32, offset: 896)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !29, file: !30, line: 73, baseType: !5, size: 32, offset: 928)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !29, file: !30, line: 74, baseType: !52, size: 64, offset: 960)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !53, line: 152, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!54 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !29, file: !30, line: 77, baseType: !56, size: 16, offset: 1024)
!56 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !29, file: !30, line: 78, baseType: !58, size: 8, offset: 1040)
!58 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !29, file: !30, line: 79, baseType: !60, size: 8, offset: 1048)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 1)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !29, file: !30, line: 81, baseType: !64, size: 64, offset: 1088)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !30, line: 43, baseType: null)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !29, file: !30, line: 89, baseType: !67, size: 64, offset: 1152)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !53, line: 153, baseType: !54)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !29, file: !30, line: 91, baseType: !69, size: 64, offset: 1216)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !30, line: 37, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !29, file: !30, line: 92, baseType: !72, size: 64, offset: 1280)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !30, line: 38, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !29, file: !30, line: 93, baseType: !48, size: 64, offset: 1344)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !29, file: !30, line: 94, baseType: !4, size: 64, offset: 1408)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !29, file: !30, line: 95, baseType: !19, size: 64, offset: 1472)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !29, file: !30, line: 96, baseType: !5, size: 32, offset: 1536)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !29, file: !30, line: 98, baseType: !79, size: 160, offset: 1568)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 20)
!82 = !DILocation(line: 40, column: 16, scope: !18)
!83 = !DILocation(line: 42, column: 17, scope: !84)
!84 = distinct !DILexicalBlock(scope: !18, file: !1, line: 42, column: 13)
!85 = !DILocation(line: 42, column: 16, scope: !84)
!86 = !DILocation(line: 42, column: 25, scope: !84)
!87 = !DILocation(line: 42, column: 13, scope: !18)
!88 = !DILocation(line: 44, column: 21, scope: !89)
!89 = distinct !DILexicalBlock(scope: !84, file: !1, line: 43, column: 9)
!90 = !DILocation(line: 44, column: 19, scope: !89)
!91 = !DILocation(line: 45, column: 17, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 45, column: 17)
!93 = !DILocation(line: 45, column: 23, scope: !92)
!94 = !DILocation(line: 45, column: 17, scope: !89)
!95 = !DILocation(line: 48, column: 27, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 48, column: 21)
!97 = distinct !DILexicalBlock(scope: !92, file: !1, line: 46, column: 13)
!98 = !DILocation(line: 48, column: 32, scope: !96)
!99 = !DILocation(line: 48, column: 31, scope: !96)
!100 = !DILocation(line: 48, column: 51, scope: !96)
!101 = !DILocation(line: 48, column: 50, scope: !96)
!102 = !DILocation(line: 48, column: 41, scope: !96)
!103 = !DILocation(line: 48, column: 61, scope: !96)
!104 = !DILocation(line: 48, column: 21, scope: !96)
!105 = !DILocation(line: 48, column: 68, scope: !96)
!106 = !DILocation(line: 48, column: 21, scope: !97)
!107 = !DILocation(line: 50, column: 21, scope: !108)
!108 = distinct !DILexicalBlock(scope: !96, file: !1, line: 49, column: 17)
!109 = !DILocation(line: 52, column: 21, scope: !108)
!110 = !DILocation(line: 52, column: 26, scope: !108)
!111 = !DILocation(line: 52, column: 35, scope: !108)
!112 = !DILocation(line: 53, column: 17, scope: !108)
!113 = !DILocation(line: 54, column: 24, scope: !97)
!114 = !DILocation(line: 54, column: 17, scope: !97)
!115 = !DILocation(line: 55, column: 13, scope: !97)
!116 = !DILocation(line: 56, column: 9, scope: !89)
!117 = !DILocation(line: 58, column: 12, scope: !10)
!118 = !DILocation(line: 58, column: 5, scope: !10)
!119 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_42_bad", scope: !1, file: !1, line: 61, type: !120, scopeLine: 62, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!120 = !DISubroutineType(types: !121)
!121 = !{null}
!122 = !DILocalVariable(name: "data", scope: !119, file: !1, line: 63, type: !13)
!123 = !DILocation(line: 63, column: 12, scope: !119)
!124 = !DILocalVariable(name: "dataBuffer", scope: !119, file: !1, line: 64, type: !125)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 100)
!128 = !DILocation(line: 64, column: 10, scope: !119)
!129 = !DILocation(line: 65, column: 12, scope: !119)
!130 = !DILocation(line: 65, column: 10, scope: !119)
!131 = !DILocation(line: 66, column: 22, scope: !119)
!132 = !DILocation(line: 66, column: 12, scope: !119)
!133 = !DILocation(line: 66, column: 10, scope: !119)
!134 = !DILocalVariable(name: "i", scope: !135, file: !1, line: 68, type: !5)
!135 = distinct !DILexicalBlock(scope: !119, file: !1, line: 67, column: 5)
!136 = !DILocation(line: 68, column: 13, scope: !135)
!137 = !DILocalVariable(name: "n", scope: !135, file: !1, line: 68, type: !5)
!138 = !DILocation(line: 68, column: 16, scope: !135)
!139 = !DILocalVariable(name: "intVariable", scope: !135, file: !1, line: 68, type: !5)
!140 = !DILocation(line: 68, column: 19, scope: !135)
!141 = !DILocation(line: 69, column: 20, scope: !142)
!142 = distinct !DILexicalBlock(scope: !135, file: !1, line: 69, column: 13)
!143 = !DILocation(line: 69, column: 13, scope: !142)
!144 = !DILocation(line: 69, column: 36, scope: !142)
!145 = !DILocation(line: 69, column: 13, scope: !135)
!146 = !DILocation(line: 72, column: 25, scope: !147)
!147 = distinct !DILexicalBlock(scope: !142, file: !1, line: 70, column: 9)
!148 = !DILocation(line: 73, column: 20, scope: !149)
!149 = distinct !DILexicalBlock(scope: !147, file: !1, line: 73, column: 13)
!150 = !DILocation(line: 73, column: 18, scope: !149)
!151 = !DILocation(line: 73, column: 25, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !1, line: 73, column: 13)
!153 = !DILocation(line: 73, column: 29, scope: !152)
!154 = !DILocation(line: 73, column: 27, scope: !152)
!155 = !DILocation(line: 73, column: 13, scope: !149)
!156 = !DILocation(line: 76, column: 28, scope: !157)
!157 = distinct !DILexicalBlock(scope: !152, file: !1, line: 74, column: 13)
!158 = !DILocation(line: 77, column: 13, scope: !157)
!159 = !DILocation(line: 73, column: 33, scope: !152)
!160 = !DILocation(line: 73, column: 13, scope: !152)
!161 = distinct !{!161, !155, !162, !163}
!162 = !DILocation(line: 77, column: 13, scope: !149)
!163 = !{!"llvm.loop.mustprogress"}
!164 = !DILocation(line: 78, column: 26, scope: !147)
!165 = !DILocation(line: 78, column: 13, scope: !147)
!166 = !DILocation(line: 79, column: 9, scope: !147)
!167 = !DILocation(line: 81, column: 1, scope: !119)
!168 = distinct !DISubprogram(name: "goodG2BSource", scope: !1, file: !1, line: 88, type: !11, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!169 = !DILocalVariable(name: "data", arg: 1, scope: !168, file: !1, line: 88, type: !13)
!170 = !DILocation(line: 88, column: 29, scope: !168)
!171 = !DILocation(line: 91, column: 12, scope: !168)
!172 = !DILocation(line: 91, column: 5, scope: !168)
!173 = !DILocation(line: 92, column: 12, scope: !168)
!174 = !DILocation(line: 92, column: 5, scope: !168)
!175 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 95, type: !120, scopeLine: 96, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!176 = !DILocalVariable(name: "data", scope: !175, file: !1, line: 97, type: !13)
!177 = !DILocation(line: 97, column: 12, scope: !175)
!178 = !DILocalVariable(name: "dataBuffer", scope: !175, file: !1, line: 98, type: !125)
!179 = !DILocation(line: 98, column: 10, scope: !175)
!180 = !DILocation(line: 99, column: 12, scope: !175)
!181 = !DILocation(line: 99, column: 10, scope: !175)
!182 = !DILocation(line: 100, column: 26, scope: !175)
!183 = !DILocation(line: 100, column: 12, scope: !175)
!184 = !DILocation(line: 100, column: 10, scope: !175)
!185 = !DILocalVariable(name: "i", scope: !186, file: !1, line: 102, type: !5)
!186 = distinct !DILexicalBlock(scope: !175, file: !1, line: 101, column: 5)
!187 = !DILocation(line: 102, column: 13, scope: !186)
!188 = !DILocalVariable(name: "n", scope: !186, file: !1, line: 102, type: !5)
!189 = !DILocation(line: 102, column: 16, scope: !186)
!190 = !DILocalVariable(name: "intVariable", scope: !186, file: !1, line: 102, type: !5)
!191 = !DILocation(line: 102, column: 19, scope: !186)
!192 = !DILocation(line: 103, column: 20, scope: !193)
!193 = distinct !DILexicalBlock(scope: !186, file: !1, line: 103, column: 13)
!194 = !DILocation(line: 103, column: 13, scope: !193)
!195 = !DILocation(line: 103, column: 36, scope: !193)
!196 = !DILocation(line: 103, column: 13, scope: !186)
!197 = !DILocation(line: 106, column: 25, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !1, line: 104, column: 9)
!199 = !DILocation(line: 107, column: 20, scope: !200)
!200 = distinct !DILexicalBlock(scope: !198, file: !1, line: 107, column: 13)
!201 = !DILocation(line: 107, column: 18, scope: !200)
!202 = !DILocation(line: 107, column: 25, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !1, line: 107, column: 13)
!204 = !DILocation(line: 107, column: 29, scope: !203)
!205 = !DILocation(line: 107, column: 27, scope: !203)
!206 = !DILocation(line: 107, column: 13, scope: !200)
!207 = !DILocation(line: 110, column: 28, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !1, line: 108, column: 13)
!209 = !DILocation(line: 111, column: 13, scope: !208)
!210 = !DILocation(line: 107, column: 33, scope: !203)
!211 = !DILocation(line: 107, column: 13, scope: !203)
!212 = distinct !{!212, !206, !213, !163}
!213 = !DILocation(line: 111, column: 13, scope: !200)
!214 = !DILocation(line: 112, column: 26, scope: !198)
!215 = !DILocation(line: 112, column: 13, scope: !198)
!216 = !DILocation(line: 113, column: 9, scope: !198)
!217 = !DILocation(line: 115, column: 1, scope: !175)
!218 = distinct !DISubprogram(name: "goodB2GSource", scope: !1, file: !1, line: 118, type: !11, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!219 = !DILocalVariable(name: "data", arg: 1, scope: !218, file: !1, line: 118, type: !13)
!220 = !DILocation(line: 118, column: 29, scope: !218)
!221 = !DILocalVariable(name: "dataLen", scope: !222, file: !1, line: 122, type: !19)
!222 = distinct !DILexicalBlock(scope: !218, file: !1, line: 120, column: 5)
!223 = !DILocation(line: 122, column: 16, scope: !222)
!224 = !DILocation(line: 122, column: 33, scope: !222)
!225 = !DILocation(line: 122, column: 26, scope: !222)
!226 = !DILocalVariable(name: "pFile", scope: !222, file: !1, line: 123, type: !26)
!227 = !DILocation(line: 123, column: 16, scope: !222)
!228 = !DILocation(line: 125, column: 17, scope: !229)
!229 = distinct !DILexicalBlock(scope: !222, file: !1, line: 125, column: 13)
!230 = !DILocation(line: 125, column: 16, scope: !229)
!231 = !DILocation(line: 125, column: 25, scope: !229)
!232 = !DILocation(line: 125, column: 13, scope: !222)
!233 = !DILocation(line: 127, column: 21, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !1, line: 126, column: 9)
!235 = !DILocation(line: 127, column: 19, scope: !234)
!236 = !DILocation(line: 128, column: 17, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !1, line: 128, column: 17)
!238 = !DILocation(line: 128, column: 23, scope: !237)
!239 = !DILocation(line: 128, column: 17, scope: !234)
!240 = !DILocation(line: 131, column: 27, scope: !241)
!241 = distinct !DILexicalBlock(scope: !242, file: !1, line: 131, column: 21)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 129, column: 13)
!243 = !DILocation(line: 131, column: 32, scope: !241)
!244 = !DILocation(line: 131, column: 31, scope: !241)
!245 = !DILocation(line: 131, column: 51, scope: !241)
!246 = !DILocation(line: 131, column: 50, scope: !241)
!247 = !DILocation(line: 131, column: 41, scope: !241)
!248 = !DILocation(line: 131, column: 61, scope: !241)
!249 = !DILocation(line: 131, column: 21, scope: !241)
!250 = !DILocation(line: 131, column: 68, scope: !241)
!251 = !DILocation(line: 131, column: 21, scope: !242)
!252 = !DILocation(line: 133, column: 21, scope: !253)
!253 = distinct !DILexicalBlock(scope: !241, file: !1, line: 132, column: 17)
!254 = !DILocation(line: 135, column: 21, scope: !253)
!255 = !DILocation(line: 135, column: 26, scope: !253)
!256 = !DILocation(line: 135, column: 35, scope: !253)
!257 = !DILocation(line: 136, column: 17, scope: !253)
!258 = !DILocation(line: 137, column: 24, scope: !242)
!259 = !DILocation(line: 137, column: 17, scope: !242)
!260 = !DILocation(line: 138, column: 13, scope: !242)
!261 = !DILocation(line: 139, column: 9, scope: !234)
!262 = !DILocation(line: 141, column: 12, scope: !218)
!263 = !DILocation(line: 141, column: 5, scope: !218)
!264 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 144, type: !120, scopeLine: 145, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!265 = !DILocalVariable(name: "data", scope: !264, file: !1, line: 146, type: !13)
!266 = !DILocation(line: 146, column: 12, scope: !264)
!267 = !DILocalVariable(name: "dataBuffer", scope: !264, file: !1, line: 147, type: !125)
!268 = !DILocation(line: 147, column: 10, scope: !264)
!269 = !DILocation(line: 148, column: 12, scope: !264)
!270 = !DILocation(line: 148, column: 10, scope: !264)
!271 = !DILocation(line: 149, column: 26, scope: !264)
!272 = !DILocation(line: 149, column: 12, scope: !264)
!273 = !DILocation(line: 149, column: 10, scope: !264)
!274 = !DILocalVariable(name: "i", scope: !275, file: !1, line: 151, type: !5)
!275 = distinct !DILexicalBlock(scope: !264, file: !1, line: 150, column: 5)
!276 = !DILocation(line: 151, column: 13, scope: !275)
!277 = !DILocalVariable(name: "n", scope: !275, file: !1, line: 151, type: !5)
!278 = !DILocation(line: 151, column: 16, scope: !275)
!279 = !DILocalVariable(name: "intVariable", scope: !275, file: !1, line: 151, type: !5)
!280 = !DILocation(line: 151, column: 19, scope: !275)
!281 = !DILocation(line: 152, column: 20, scope: !282)
!282 = distinct !DILexicalBlock(scope: !275, file: !1, line: 152, column: 13)
!283 = !DILocation(line: 152, column: 13, scope: !282)
!284 = !DILocation(line: 152, column: 36, scope: !282)
!285 = !DILocation(line: 152, column: 13, scope: !275)
!286 = !DILocation(line: 155, column: 17, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !1, line: 155, column: 17)
!288 = distinct !DILexicalBlock(scope: !282, file: !1, line: 153, column: 9)
!289 = !DILocation(line: 155, column: 19, scope: !287)
!290 = !DILocation(line: 155, column: 17, scope: !288)
!291 = !DILocation(line: 157, column: 29, scope: !292)
!292 = distinct !DILexicalBlock(scope: !287, file: !1, line: 156, column: 13)
!293 = !DILocation(line: 158, column: 24, scope: !294)
!294 = distinct !DILexicalBlock(scope: !292, file: !1, line: 158, column: 17)
!295 = !DILocation(line: 158, column: 22, scope: !294)
!296 = !DILocation(line: 158, column: 29, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !1, line: 158, column: 17)
!298 = !DILocation(line: 158, column: 33, scope: !297)
!299 = !DILocation(line: 158, column: 31, scope: !297)
!300 = !DILocation(line: 158, column: 17, scope: !294)
!301 = !DILocation(line: 161, column: 32, scope: !302)
!302 = distinct !DILexicalBlock(scope: !297, file: !1, line: 159, column: 17)
!303 = !DILocation(line: 162, column: 17, scope: !302)
!304 = !DILocation(line: 158, column: 37, scope: !297)
!305 = !DILocation(line: 158, column: 17, scope: !297)
!306 = distinct !{!306, !300, !307, !163}
!307 = !DILocation(line: 162, column: 17, scope: !294)
!308 = !DILocation(line: 163, column: 30, scope: !292)
!309 = !DILocation(line: 163, column: 17, scope: !292)
!310 = !DILocation(line: 164, column: 13, scope: !292)
!311 = !DILocation(line: 165, column: 9, scope: !288)
!312 = !DILocation(line: 167, column: 1, scope: !264)
!313 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_42_good", scope: !1, file: !1, line: 169, type: !120, scopeLine: 170, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!314 = !DILocation(line: 171, column: 5, scope: !313)
!315 = !DILocation(line: 172, column: 5, scope: !313)
!316 = !DILocation(line: 173, column: 1, scope: !313)
