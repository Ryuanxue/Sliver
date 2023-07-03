; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_41.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_41.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @badSink(i8* %data) #0 !dbg !10 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %n, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !22, metadata !DIExpression()), !dbg !23
  %0 = load i8*, i8** %data.addr, align 8, !dbg !24
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !26
  %cmp = icmp eq i32 %call, 1, !dbg !27
  br i1 %cmp, label %if.then, label %if.end, !dbg !28

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !29
  store i32 0, i32* %i, align 4, !dbg !31
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !34
  %2 = load i32, i32* %n, align 4, !dbg !36
  %cmp1 = icmp slt i32 %1, %2, !dbg !37
  br i1 %cmp1, label %for.body, label %for.end, !dbg !38

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !39
  %inc = add nsw i32 %3, 1, !dbg !39
  store i32 %inc, i32* %intVariable, align 4, !dbg !39
  br label %for.inc, !dbg !41

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !42
  %inc2 = add nsw i32 %4, 1, !dbg !42
  store i32 %inc2, i32* %i, align 4, !dbg !42
  br label %for.cond, !dbg !43, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !47
  call void @printIntLine(i32 %5), !dbg !48
  br label %if.end, !dbg !49

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !50
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_41_bad() #0 !dbg !51 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !56, metadata !DIExpression()), !dbg !60
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !60
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !60
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !61
  store i8* %arraydecay, i8** %data, align 8, !dbg !62
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !63, metadata !DIExpression()), !dbg !68
  %1 = load i8*, i8** %data, align 8, !dbg !69
  %call = call i64 @strlen(i8* %1) #7, !dbg !70
  store i64 %call, i64* %dataLen, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !71, metadata !DIExpression()), !dbg !128
  %2 = load i64, i64* %dataLen, align 8, !dbg !129
  %sub = sub i64 100, %2, !dbg !131
  %cmp = icmp ugt i64 %sub, 1, !dbg !132
  br i1 %cmp, label %if.then, label %if.end11, !dbg !133

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !134
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !136
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !137
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !139
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !140

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !141
  %5 = load i64, i64* %dataLen, align 8, !dbg !144
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !145
  %6 = load i64, i64* %dataLen, align 8, !dbg !146
  %sub4 = sub i64 100, %6, !dbg !147
  %conv = trunc i64 %sub4 to i32, !dbg !148
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !149
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !150
  %cmp6 = icmp eq i8* %call5, null, !dbg !151
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !152

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !153
  %8 = load i8*, i8** %data, align 8, !dbg !155
  %9 = load i64, i64* %dataLen, align 8, !dbg !156
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !155
  store i8 0, i8* %arrayidx, align 1, !dbg !157
  br label %if.end, !dbg !158

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !159
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !160
  br label %if.end10, !dbg !161

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !162

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !163
  call void @badSink(i8* %11), !dbg !164
  ret void, !dbg !165
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !166 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata i32* %i, metadata !169, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %n, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !174, metadata !DIExpression()), !dbg !175
  %0 = load i8*, i8** %data.addr, align 8, !dbg !176
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !178
  %cmp = icmp eq i32 %call, 1, !dbg !179
  br i1 %cmp, label %if.then, label %if.end, !dbg !180

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !181
  store i32 0, i32* %i, align 4, !dbg !183
  br label %for.cond, !dbg !185

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !186
  %2 = load i32, i32* %n, align 4, !dbg !188
  %cmp1 = icmp slt i32 %1, %2, !dbg !189
  br i1 %cmp1, label %for.body, label %for.end, !dbg !190

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !191
  %inc = add nsw i32 %3, 1, !dbg !191
  store i32 %inc, i32* %intVariable, align 4, !dbg !191
  br label %for.inc, !dbg !193

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !194
  %inc2 = add nsw i32 %4, 1, !dbg !194
  store i32 %inc2, i32* %i, align 4, !dbg !194
  br label %for.cond, !dbg !195, !llvm.loop !196

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !198
  call void @printIntLine(i32 %5), !dbg !199
  br label %if.end, !dbg !200

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !201
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !202 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !205, metadata !DIExpression()), !dbg !206
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !206
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !206
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !207
  store i8* %arraydecay, i8** %data, align 8, !dbg !208
  %1 = load i8*, i8** %data, align 8, !dbg !209
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !210
  %2 = load i8*, i8** %data, align 8, !dbg !211
  call void @goodG2BSink(i8* %2), !dbg !212
  ret void, !dbg !213
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !214 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %i, metadata !217, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i32* %n, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !222, metadata !DIExpression()), !dbg !223
  %0 = load i8*, i8** %data.addr, align 8, !dbg !224
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !226
  %cmp = icmp eq i32 %call, 1, !dbg !227
  br i1 %cmp, label %if.then, label %if.end5, !dbg !228

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !229
  %cmp1 = icmp slt i32 %1, 10000, !dbg !232
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !233

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !234
  store i32 0, i32* %i, align 4, !dbg !236
  br label %for.cond, !dbg !238

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !239
  %3 = load i32, i32* %n, align 4, !dbg !241
  %cmp3 = icmp slt i32 %2, %3, !dbg !242
  br i1 %cmp3, label %for.body, label %for.end, !dbg !243

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !244
  %inc = add nsw i32 %4, 1, !dbg !244
  store i32 %inc, i32* %intVariable, align 4, !dbg !244
  br label %for.inc, !dbg !246

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !247
  %inc4 = add nsw i32 %5, 1, !dbg !247
  store i32 %inc4, i32* %i, align 4, !dbg !247
  br label %for.cond, !dbg !248, !llvm.loop !249

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !251
  call void @printIntLine(i32 %6), !dbg !252
  br label %if.end, !dbg !253

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !254

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !255
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !256 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !260
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !260
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !261
  store i8* %arraydecay, i8** %data, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !263, metadata !DIExpression()), !dbg !265
  %1 = load i8*, i8** %data, align 8, !dbg !266
  %call = call i64 @strlen(i8* %1) #7, !dbg !267
  store i64 %call, i64* %dataLen, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !268, metadata !DIExpression()), !dbg !269
  %2 = load i64, i64* %dataLen, align 8, !dbg !270
  %sub = sub i64 100, %2, !dbg !272
  %cmp = icmp ugt i64 %sub, 1, !dbg !273
  br i1 %cmp, label %if.then, label %if.end11, !dbg !274

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !275
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !277
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !278
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !280
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !281

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !282
  %5 = load i64, i64* %dataLen, align 8, !dbg !285
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !286
  %6 = load i64, i64* %dataLen, align 8, !dbg !287
  %sub4 = sub i64 100, %6, !dbg !288
  %conv = trunc i64 %sub4 to i32, !dbg !289
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !290
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !291
  %cmp6 = icmp eq i8* %call5, null, !dbg !292
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !293

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !294
  %8 = load i8*, i8** %data, align 8, !dbg !296
  %9 = load i64, i64* %dataLen, align 8, !dbg !297
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !296
  store i8 0, i8* %arrayidx, align 1, !dbg !298
  br label %if.end, !dbg !299

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !300
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !301
  br label %if.end10, !dbg !302

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !303

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load i8*, i8** %data, align 8, !dbg !304
  call void @goodB2GSink(i8* %11), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_41_good() #0 !dbg !307 {
entry:
  call void @goodB2G(), !dbg !308
  call void @goodG2B(), !dbg !309
  ret void, !dbg !310
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_41.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_098/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "badSink", scope: !1, file: !1, line: 35, type: !11, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 35, type: !13)
!16 = !DILocation(line: 35, column: 21, scope: !10)
!17 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 38, type: !5)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 37, column: 5)
!19 = !DILocation(line: 38, column: 13, scope: !18)
!20 = !DILocalVariable(name: "n", scope: !18, file: !1, line: 38, type: !5)
!21 = !DILocation(line: 38, column: 16, scope: !18)
!22 = !DILocalVariable(name: "intVariable", scope: !18, file: !1, line: 38, type: !5)
!23 = !DILocation(line: 38, column: 19, scope: !18)
!24 = !DILocation(line: 39, column: 20, scope: !25)
!25 = distinct !DILexicalBlock(scope: !18, file: !1, line: 39, column: 13)
!26 = !DILocation(line: 39, column: 13, scope: !25)
!27 = !DILocation(line: 39, column: 36, scope: !25)
!28 = !DILocation(line: 39, column: 13, scope: !18)
!29 = !DILocation(line: 42, column: 25, scope: !30)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 40, column: 9)
!31 = !DILocation(line: 43, column: 20, scope: !32)
!32 = distinct !DILexicalBlock(scope: !30, file: !1, line: 43, column: 13)
!33 = !DILocation(line: 43, column: 18, scope: !32)
!34 = !DILocation(line: 43, column: 25, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !1, line: 43, column: 13)
!36 = !DILocation(line: 43, column: 29, scope: !35)
!37 = !DILocation(line: 43, column: 27, scope: !35)
!38 = !DILocation(line: 43, column: 13, scope: !32)
!39 = !DILocation(line: 46, column: 28, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 44, column: 13)
!41 = !DILocation(line: 47, column: 13, scope: !40)
!42 = !DILocation(line: 43, column: 33, scope: !35)
!43 = !DILocation(line: 43, column: 13, scope: !35)
!44 = distinct !{!44, !38, !45, !46}
!45 = !DILocation(line: 47, column: 13, scope: !32)
!46 = !{!"llvm.loop.mustprogress"}
!47 = !DILocation(line: 48, column: 26, scope: !30)
!48 = !DILocation(line: 48, column: 13, scope: !30)
!49 = !DILocation(line: 49, column: 9, scope: !30)
!50 = !DILocation(line: 51, column: 1, scope: !10)
!51 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_41_bad", scope: !1, file: !1, line: 53, type: !52, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{null}
!54 = !DILocalVariable(name: "data", scope: !51, file: !1, line: 55, type: !13)
!55 = !DILocation(line: 55, column: 12, scope: !51)
!56 = !DILocalVariable(name: "dataBuffer", scope: !51, file: !1, line: 56, type: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 100)
!60 = !DILocation(line: 56, column: 10, scope: !51)
!61 = !DILocation(line: 57, column: 12, scope: !51)
!62 = !DILocation(line: 57, column: 10, scope: !51)
!63 = !DILocalVariable(name: "dataLen", scope: !64, file: !1, line: 60, type: !65)
!64 = distinct !DILexicalBlock(scope: !51, file: !1, line: 58, column: 5)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 46, baseType: !67)
!66 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!67 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!68 = !DILocation(line: 60, column: 16, scope: !64)
!69 = !DILocation(line: 60, column: 33, scope: !64)
!70 = !DILocation(line: 60, column: 26, scope: !64)
!71 = !DILocalVariable(name: "pFile", scope: !64, file: !1, line: 61, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !74, line: 7, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !76, line: 49, size: 1728, elements: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !93, !95, !96, !97, !101, !103, !105, !109, !112, !114, !117, !120, !121, !122, !123, !124}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !75, file: !76, line: 51, baseType: !5, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !75, file: !76, line: 54, baseType: !13, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !75, file: !76, line: 55, baseType: !13, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !75, file: !76, line: 56, baseType: !13, size: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !75, file: !76, line: 57, baseType: !13, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !75, file: !76, line: 58, baseType: !13, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !75, file: !76, line: 59, baseType: !13, size: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !75, file: !76, line: 60, baseType: !13, size: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !75, file: !76, line: 61, baseType: !13, size: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !75, file: !76, line: 64, baseType: !13, size: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !75, file: !76, line: 65, baseType: !13, size: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !75, file: !76, line: 66, baseType: !13, size: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !75, file: !76, line: 68, baseType: !91, size: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !76, line: 36, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !75, file: !76, line: 70, baseType: !94, size: 64, offset: 832)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !75, file: !76, line: 72, baseType: !5, size: 32, offset: 896)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !75, file: !76, line: 73, baseType: !5, size: 32, offset: 928)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !75, file: !76, line: 74, baseType: !98, size: 64, offset: 960)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !99, line: 152, baseType: !100)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!100 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !75, file: !76, line: 77, baseType: !102, size: 16, offset: 1024)
!102 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !75, file: !76, line: 78, baseType: !104, size: 8, offset: 1040)
!104 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !75, file: !76, line: 79, baseType: !106, size: 8, offset: 1048)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 1)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !75, file: !76, line: 81, baseType: !110, size: 64, offset: 1088)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !76, line: 43, baseType: null)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !75, file: !76, line: 89, baseType: !113, size: 64, offset: 1152)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !99, line: 153, baseType: !100)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !75, file: !76, line: 91, baseType: !115, size: 64, offset: 1216)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !76, line: 37, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !75, file: !76, line: 92, baseType: !118, size: 64, offset: 1280)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !76, line: 38, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !75, file: !76, line: 93, baseType: !94, size: 64, offset: 1344)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !75, file: !76, line: 94, baseType: !4, size: 64, offset: 1408)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !75, file: !76, line: 95, baseType: !65, size: 64, offset: 1472)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !75, file: !76, line: 96, baseType: !5, size: 32, offset: 1536)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !75, file: !76, line: 98, baseType: !125, size: 160, offset: 1568)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 20)
!128 = !DILocation(line: 61, column: 16, scope: !64)
!129 = !DILocation(line: 63, column: 17, scope: !130)
!130 = distinct !DILexicalBlock(scope: !64, file: !1, line: 63, column: 13)
!131 = !DILocation(line: 63, column: 16, scope: !130)
!132 = !DILocation(line: 63, column: 25, scope: !130)
!133 = !DILocation(line: 63, column: 13, scope: !64)
!134 = !DILocation(line: 65, column: 21, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !1, line: 64, column: 9)
!136 = !DILocation(line: 65, column: 19, scope: !135)
!137 = !DILocation(line: 66, column: 17, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !1, line: 66, column: 17)
!139 = !DILocation(line: 66, column: 23, scope: !138)
!140 = !DILocation(line: 66, column: 17, scope: !135)
!141 = !DILocation(line: 69, column: 27, scope: !142)
!142 = distinct !DILexicalBlock(scope: !143, file: !1, line: 69, column: 21)
!143 = distinct !DILexicalBlock(scope: !138, file: !1, line: 67, column: 13)
!144 = !DILocation(line: 69, column: 32, scope: !142)
!145 = !DILocation(line: 69, column: 31, scope: !142)
!146 = !DILocation(line: 69, column: 51, scope: !142)
!147 = !DILocation(line: 69, column: 50, scope: !142)
!148 = !DILocation(line: 69, column: 41, scope: !142)
!149 = !DILocation(line: 69, column: 61, scope: !142)
!150 = !DILocation(line: 69, column: 21, scope: !142)
!151 = !DILocation(line: 69, column: 68, scope: !142)
!152 = !DILocation(line: 69, column: 21, scope: !143)
!153 = !DILocation(line: 71, column: 21, scope: !154)
!154 = distinct !DILexicalBlock(scope: !142, file: !1, line: 70, column: 17)
!155 = !DILocation(line: 73, column: 21, scope: !154)
!156 = !DILocation(line: 73, column: 26, scope: !154)
!157 = !DILocation(line: 73, column: 35, scope: !154)
!158 = !DILocation(line: 74, column: 17, scope: !154)
!159 = !DILocation(line: 75, column: 24, scope: !143)
!160 = !DILocation(line: 75, column: 17, scope: !143)
!161 = !DILocation(line: 76, column: 13, scope: !143)
!162 = !DILocation(line: 77, column: 9, scope: !135)
!163 = !DILocation(line: 79, column: 13, scope: !51)
!164 = !DILocation(line: 79, column: 5, scope: !51)
!165 = !DILocation(line: 80, column: 1, scope: !51)
!166 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 87, type: !11, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!167 = !DILocalVariable(name: "data", arg: 1, scope: !166, file: !1, line: 87, type: !13)
!168 = !DILocation(line: 87, column: 25, scope: !166)
!169 = !DILocalVariable(name: "i", scope: !170, file: !1, line: 90, type: !5)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 89, column: 5)
!171 = !DILocation(line: 90, column: 13, scope: !170)
!172 = !DILocalVariable(name: "n", scope: !170, file: !1, line: 90, type: !5)
!173 = !DILocation(line: 90, column: 16, scope: !170)
!174 = !DILocalVariable(name: "intVariable", scope: !170, file: !1, line: 90, type: !5)
!175 = !DILocation(line: 90, column: 19, scope: !170)
!176 = !DILocation(line: 91, column: 20, scope: !177)
!177 = distinct !DILexicalBlock(scope: !170, file: !1, line: 91, column: 13)
!178 = !DILocation(line: 91, column: 13, scope: !177)
!179 = !DILocation(line: 91, column: 36, scope: !177)
!180 = !DILocation(line: 91, column: 13, scope: !170)
!181 = !DILocation(line: 94, column: 25, scope: !182)
!182 = distinct !DILexicalBlock(scope: !177, file: !1, line: 92, column: 9)
!183 = !DILocation(line: 95, column: 20, scope: !184)
!184 = distinct !DILexicalBlock(scope: !182, file: !1, line: 95, column: 13)
!185 = !DILocation(line: 95, column: 18, scope: !184)
!186 = !DILocation(line: 95, column: 25, scope: !187)
!187 = distinct !DILexicalBlock(scope: !184, file: !1, line: 95, column: 13)
!188 = !DILocation(line: 95, column: 29, scope: !187)
!189 = !DILocation(line: 95, column: 27, scope: !187)
!190 = !DILocation(line: 95, column: 13, scope: !184)
!191 = !DILocation(line: 98, column: 28, scope: !192)
!192 = distinct !DILexicalBlock(scope: !187, file: !1, line: 96, column: 13)
!193 = !DILocation(line: 99, column: 13, scope: !192)
!194 = !DILocation(line: 95, column: 33, scope: !187)
!195 = !DILocation(line: 95, column: 13, scope: !187)
!196 = distinct !{!196, !190, !197, !46}
!197 = !DILocation(line: 99, column: 13, scope: !184)
!198 = !DILocation(line: 100, column: 26, scope: !182)
!199 = !DILocation(line: 100, column: 13, scope: !182)
!200 = !DILocation(line: 101, column: 9, scope: !182)
!201 = !DILocation(line: 103, column: 1, scope: !166)
!202 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 105, type: !52, scopeLine: 106, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!203 = !DILocalVariable(name: "data", scope: !202, file: !1, line: 107, type: !13)
!204 = !DILocation(line: 107, column: 12, scope: !202)
!205 = !DILocalVariable(name: "dataBuffer", scope: !202, file: !1, line: 108, type: !57)
!206 = !DILocation(line: 108, column: 10, scope: !202)
!207 = !DILocation(line: 109, column: 12, scope: !202)
!208 = !DILocation(line: 109, column: 10, scope: !202)
!209 = !DILocation(line: 111, column: 12, scope: !202)
!210 = !DILocation(line: 111, column: 5, scope: !202)
!211 = !DILocation(line: 112, column: 17, scope: !202)
!212 = !DILocation(line: 112, column: 5, scope: !202)
!213 = !DILocation(line: 113, column: 1, scope: !202)
!214 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 116, type: !11, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!215 = !DILocalVariable(name: "data", arg: 1, scope: !214, file: !1, line: 116, type: !13)
!216 = !DILocation(line: 116, column: 25, scope: !214)
!217 = !DILocalVariable(name: "i", scope: !218, file: !1, line: 119, type: !5)
!218 = distinct !DILexicalBlock(scope: !214, file: !1, line: 118, column: 5)
!219 = !DILocation(line: 119, column: 13, scope: !218)
!220 = !DILocalVariable(name: "n", scope: !218, file: !1, line: 119, type: !5)
!221 = !DILocation(line: 119, column: 16, scope: !218)
!222 = !DILocalVariable(name: "intVariable", scope: !218, file: !1, line: 119, type: !5)
!223 = !DILocation(line: 119, column: 19, scope: !218)
!224 = !DILocation(line: 120, column: 20, scope: !225)
!225 = distinct !DILexicalBlock(scope: !218, file: !1, line: 120, column: 13)
!226 = !DILocation(line: 120, column: 13, scope: !225)
!227 = !DILocation(line: 120, column: 36, scope: !225)
!228 = !DILocation(line: 120, column: 13, scope: !218)
!229 = !DILocation(line: 123, column: 17, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !1, line: 123, column: 17)
!231 = distinct !DILexicalBlock(scope: !225, file: !1, line: 121, column: 9)
!232 = !DILocation(line: 123, column: 19, scope: !230)
!233 = !DILocation(line: 123, column: 17, scope: !231)
!234 = !DILocation(line: 125, column: 29, scope: !235)
!235 = distinct !DILexicalBlock(scope: !230, file: !1, line: 124, column: 13)
!236 = !DILocation(line: 126, column: 24, scope: !237)
!237 = distinct !DILexicalBlock(scope: !235, file: !1, line: 126, column: 17)
!238 = !DILocation(line: 126, column: 22, scope: !237)
!239 = !DILocation(line: 126, column: 29, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !1, line: 126, column: 17)
!241 = !DILocation(line: 126, column: 33, scope: !240)
!242 = !DILocation(line: 126, column: 31, scope: !240)
!243 = !DILocation(line: 126, column: 17, scope: !237)
!244 = !DILocation(line: 129, column: 32, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !1, line: 127, column: 17)
!246 = !DILocation(line: 130, column: 17, scope: !245)
!247 = !DILocation(line: 126, column: 37, scope: !240)
!248 = !DILocation(line: 126, column: 17, scope: !240)
!249 = distinct !{!249, !243, !250, !46}
!250 = !DILocation(line: 130, column: 17, scope: !237)
!251 = !DILocation(line: 131, column: 30, scope: !235)
!252 = !DILocation(line: 131, column: 17, scope: !235)
!253 = !DILocation(line: 132, column: 13, scope: !235)
!254 = !DILocation(line: 133, column: 9, scope: !231)
!255 = !DILocation(line: 135, column: 1, scope: !214)
!256 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 137, type: !52, scopeLine: 138, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!257 = !DILocalVariable(name: "data", scope: !256, file: !1, line: 139, type: !13)
!258 = !DILocation(line: 139, column: 12, scope: !256)
!259 = !DILocalVariable(name: "dataBuffer", scope: !256, file: !1, line: 140, type: !57)
!260 = !DILocation(line: 140, column: 10, scope: !256)
!261 = !DILocation(line: 141, column: 12, scope: !256)
!262 = !DILocation(line: 141, column: 10, scope: !256)
!263 = !DILocalVariable(name: "dataLen", scope: !264, file: !1, line: 144, type: !65)
!264 = distinct !DILexicalBlock(scope: !256, file: !1, line: 142, column: 5)
!265 = !DILocation(line: 144, column: 16, scope: !264)
!266 = !DILocation(line: 144, column: 33, scope: !264)
!267 = !DILocation(line: 144, column: 26, scope: !264)
!268 = !DILocalVariable(name: "pFile", scope: !264, file: !1, line: 145, type: !72)
!269 = !DILocation(line: 145, column: 16, scope: !264)
!270 = !DILocation(line: 147, column: 17, scope: !271)
!271 = distinct !DILexicalBlock(scope: !264, file: !1, line: 147, column: 13)
!272 = !DILocation(line: 147, column: 16, scope: !271)
!273 = !DILocation(line: 147, column: 25, scope: !271)
!274 = !DILocation(line: 147, column: 13, scope: !264)
!275 = !DILocation(line: 149, column: 21, scope: !276)
!276 = distinct !DILexicalBlock(scope: !271, file: !1, line: 148, column: 9)
!277 = !DILocation(line: 149, column: 19, scope: !276)
!278 = !DILocation(line: 150, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !276, file: !1, line: 150, column: 17)
!280 = !DILocation(line: 150, column: 23, scope: !279)
!281 = !DILocation(line: 150, column: 17, scope: !276)
!282 = !DILocation(line: 153, column: 27, scope: !283)
!283 = distinct !DILexicalBlock(scope: !284, file: !1, line: 153, column: 21)
!284 = distinct !DILexicalBlock(scope: !279, file: !1, line: 151, column: 13)
!285 = !DILocation(line: 153, column: 32, scope: !283)
!286 = !DILocation(line: 153, column: 31, scope: !283)
!287 = !DILocation(line: 153, column: 51, scope: !283)
!288 = !DILocation(line: 153, column: 50, scope: !283)
!289 = !DILocation(line: 153, column: 41, scope: !283)
!290 = !DILocation(line: 153, column: 61, scope: !283)
!291 = !DILocation(line: 153, column: 21, scope: !283)
!292 = !DILocation(line: 153, column: 68, scope: !283)
!293 = !DILocation(line: 153, column: 21, scope: !284)
!294 = !DILocation(line: 155, column: 21, scope: !295)
!295 = distinct !DILexicalBlock(scope: !283, file: !1, line: 154, column: 17)
!296 = !DILocation(line: 157, column: 21, scope: !295)
!297 = !DILocation(line: 157, column: 26, scope: !295)
!298 = !DILocation(line: 157, column: 35, scope: !295)
!299 = !DILocation(line: 158, column: 17, scope: !295)
!300 = !DILocation(line: 159, column: 24, scope: !284)
!301 = !DILocation(line: 159, column: 17, scope: !284)
!302 = !DILocation(line: 160, column: 13, scope: !284)
!303 = !DILocation(line: 161, column: 9, scope: !276)
!304 = !DILocation(line: 163, column: 17, scope: !256)
!305 = !DILocation(line: 163, column: 5, scope: !256)
!306 = !DILocation(line: 164, column: 1, scope: !256)
!307 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_41_good", scope: !1, file: !1, line: 166, type: !52, scopeLine: 167, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!308 = !DILocation(line: 168, column: 5, scope: !307)
!309 = !DILocation(line: 169, column: 5, scope: !307)
!310 = !DILocation(line: 170, column: 1, scope: !307)
