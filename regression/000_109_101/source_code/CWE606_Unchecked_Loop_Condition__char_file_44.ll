; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_44.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_44.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_44_bad() #0 !dbg !51 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !56, metadata !DIExpression()), !dbg !58
  store void (i8*)* @badSink, void (i8*)** %funcPtr, align 8, !dbg !58
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !59, metadata !DIExpression()), !dbg !63
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !64
  store i8* %arraydecay, i8** %data, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !66, metadata !DIExpression()), !dbg !71
  %1 = load i8*, i8** %data, align 8, !dbg !72
  %call = call i64 @strlen(i8* %1) #7, !dbg !73
  store i64 %call, i64* %dataLen, align 8, !dbg !71
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !74, metadata !DIExpression()), !dbg !131
  %2 = load i64, i64* %dataLen, align 8, !dbg !132
  %sub = sub i64 100, %2, !dbg !134
  %cmp = icmp ugt i64 %sub, 1, !dbg !135
  br i1 %cmp, label %if.then, label %if.end11, !dbg !136

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !137
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !139
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !140
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !142
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !143

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !144
  %5 = load i64, i64* %dataLen, align 8, !dbg !147
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !148
  %6 = load i64, i64* %dataLen, align 8, !dbg !149
  %sub4 = sub i64 100, %6, !dbg !150
  %conv = trunc i64 %sub4 to i32, !dbg !151
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !152
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !153
  %cmp6 = icmp eq i8* %call5, null, !dbg !154
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !155

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !156
  %8 = load i8*, i8** %data, align 8, !dbg !158
  %9 = load i64, i64* %dataLen, align 8, !dbg !159
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !158
  store i8 0, i8* %arrayidx, align 1, !dbg !160
  br label %if.end, !dbg !161

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !162
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !163
  br label %if.end10, !dbg !164

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !165

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !166
  %12 = load i8*, i8** %data, align 8, !dbg !167
  call void %11(i8* %12), !dbg !166
  ret void, !dbg !168
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
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !169 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata i32* %i, metadata !172, metadata !DIExpression()), !dbg !174
  call void @llvm.dbg.declare(metadata i32* %n, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !177, metadata !DIExpression()), !dbg !178
  %0 = load i8*, i8** %data.addr, align 8, !dbg !179
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !181
  %cmp = icmp eq i32 %call, 1, !dbg !182
  br i1 %cmp, label %if.then, label %if.end, !dbg !183

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !184
  store i32 0, i32* %i, align 4, !dbg !186
  br label %for.cond, !dbg !188

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !189
  %2 = load i32, i32* %n, align 4, !dbg !191
  %cmp1 = icmp slt i32 %1, %2, !dbg !192
  br i1 %cmp1, label %for.body, label %for.end, !dbg !193

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !194
  %inc = add nsw i32 %3, 1, !dbg !194
  store i32 %inc, i32* %intVariable, align 4, !dbg !194
  br label %for.inc, !dbg !196

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !197
  %inc2 = add nsw i32 %4, 1, !dbg !197
  store i32 %inc2, i32* %i, align 4, !dbg !197
  br label %for.cond, !dbg !198, !llvm.loop !199

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !201
  call void @printIntLine(i32 %5), !dbg !202
  br label %if.end, !dbg !203

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !204
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !205 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !208, metadata !DIExpression()), !dbg !209
  store void (i8*)* @goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !209
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !210, metadata !DIExpression()), !dbg !211
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !211
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !211
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !212
  store i8* %arraydecay, i8** %data, align 8, !dbg !213
  %1 = load i8*, i8** %data, align 8, !dbg !214
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !215
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !216
  %3 = load i8*, i8** %data, align 8, !dbg !217
  call void %2(i8* %3), !dbg !216
  ret void, !dbg !218
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !219 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i32* %i, metadata !222, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata i32* %n, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !227, metadata !DIExpression()), !dbg !228
  %0 = load i8*, i8** %data.addr, align 8, !dbg !229
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !231
  %cmp = icmp eq i32 %call, 1, !dbg !232
  br i1 %cmp, label %if.then, label %if.end5, !dbg !233

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !234
  %cmp1 = icmp slt i32 %1, 10000, !dbg !237
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !238

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !239
  store i32 0, i32* %i, align 4, !dbg !241
  br label %for.cond, !dbg !243

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !244
  %3 = load i32, i32* %n, align 4, !dbg !246
  %cmp3 = icmp slt i32 %2, %3, !dbg !247
  br i1 %cmp3, label %for.body, label %for.end, !dbg !248

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !249
  %inc = add nsw i32 %4, 1, !dbg !249
  store i32 %inc, i32* %intVariable, align 4, !dbg !249
  br label %for.inc, !dbg !251

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !252
  %inc4 = add nsw i32 %5, 1, !dbg !252
  store i32 %inc4, i32* %i, align 4, !dbg !252
  br label %for.cond, !dbg !253, !llvm.loop !254

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !256
  call void @printIntLine(i32 %6), !dbg !257
  br label %if.end, !dbg !258

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !259

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !260
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !261 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %pFile = alloca %struct._IO_FILE*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !264, metadata !DIExpression()), !dbg !265
  store void (i8*)* @goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !265
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !266, metadata !DIExpression()), !dbg !267
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !267
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !267
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !268
  store i8* %arraydecay, i8** %data, align 8, !dbg !269
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !270, metadata !DIExpression()), !dbg !272
  %1 = load i8*, i8** %data, align 8, !dbg !273
  %call = call i64 @strlen(i8* %1) #7, !dbg !274
  store i64 %call, i64* %dataLen, align 8, !dbg !272
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %pFile, metadata !275, metadata !DIExpression()), !dbg !276
  %2 = load i64, i64* %dataLen, align 8, !dbg !277
  %sub = sub i64 100, %2, !dbg !279
  %cmp = icmp ugt i64 %sub, 1, !dbg !280
  br i1 %cmp, label %if.then, label %if.end11, !dbg !281

if.then:                                          ; preds = %entry
  %call1 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !282
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %pFile, align 8, !dbg !284
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !285
  %cmp2 = icmp ne %struct._IO_FILE* %3, null, !dbg !287
  br i1 %cmp2, label %if.then3, label %if.end10, !dbg !288

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %data, align 8, !dbg !289
  %5 = load i64, i64* %dataLen, align 8, !dbg !292
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !293
  %6 = load i64, i64* %dataLen, align 8, !dbg !294
  %sub4 = sub i64 100, %6, !dbg !295
  %conv = trunc i64 %sub4 to i32, !dbg !296
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !297
  %call5 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !298
  %cmp6 = icmp eq i8* %call5, null, !dbg !299
  br i1 %cmp6, label %if.then8, label %if.end, !dbg !300

if.then8:                                         ; preds = %if.then3
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !301
  %8 = load i8*, i8** %data, align 8, !dbg !303
  %9 = load i64, i64* %dataLen, align 8, !dbg !304
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %9, !dbg !303
  store i8 0, i8* %arrayidx, align 1, !dbg !305
  br label %if.end, !dbg !306

if.end:                                           ; preds = %if.then8, %if.then3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %pFile, align 8, !dbg !307
  %call9 = call i32 @fclose(%struct._IO_FILE* %10), !dbg !308
  br label %if.end10, !dbg !309

if.end10:                                         ; preds = %if.end, %if.then
  br label %if.end11, !dbg !310

if.end11:                                         ; preds = %if.end10, %entry
  %11 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !311
  %12 = load i8*, i8** %data, align 8, !dbg !312
  call void %11(i8* %12), !dbg !311
  ret void, !dbg !313
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_44_good() #0 !dbg !314 {
entry:
  call void @goodG2B(), !dbg !315
  call void @goodB2G(), !dbg !316
  ret void, !dbg !317
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_44.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_101/source_code")
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
!51 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_44_bad", scope: !1, file: !1, line: 53, type: !52, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{null}
!54 = !DILocalVariable(name: "data", scope: !51, file: !1, line: 55, type: !13)
!55 = !DILocation(line: 55, column: 12, scope: !51)
!56 = !DILocalVariable(name: "funcPtr", scope: !51, file: !1, line: 57, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!58 = !DILocation(line: 57, column: 12, scope: !51)
!59 = !DILocalVariable(name: "dataBuffer", scope: !51, file: !1, line: 58, type: !60)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 100)
!63 = !DILocation(line: 58, column: 10, scope: !51)
!64 = !DILocation(line: 59, column: 12, scope: !51)
!65 = !DILocation(line: 59, column: 10, scope: !51)
!66 = !DILocalVariable(name: "dataLen", scope: !67, file: !1, line: 62, type: !68)
!67 = distinct !DILexicalBlock(scope: !51, file: !1, line: 60, column: 5)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 46, baseType: !70)
!69 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !DILocation(line: 62, column: 16, scope: !67)
!72 = !DILocation(line: 62, column: 33, scope: !67)
!73 = !DILocation(line: 62, column: 26, scope: !67)
!74 = !DILocalVariable(name: "pFile", scope: !67, file: !1, line: 63, type: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !77, line: 7, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !79, line: 49, size: 1728, elements: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !96, !98, !99, !100, !104, !106, !108, !112, !115, !117, !120, !123, !124, !125, !126, !127}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !78, file: !79, line: 51, baseType: !5, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !78, file: !79, line: 54, baseType: !13, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !78, file: !79, line: 55, baseType: !13, size: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !78, file: !79, line: 56, baseType: !13, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !78, file: !79, line: 57, baseType: !13, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !78, file: !79, line: 58, baseType: !13, size: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !78, file: !79, line: 59, baseType: !13, size: 64, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !78, file: !79, line: 60, baseType: !13, size: 64, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !78, file: !79, line: 61, baseType: !13, size: 64, offset: 512)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !78, file: !79, line: 64, baseType: !13, size: 64, offset: 576)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !78, file: !79, line: 65, baseType: !13, size: 64, offset: 640)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !78, file: !79, line: 66, baseType: !13, size: 64, offset: 704)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !78, file: !79, line: 68, baseType: !94, size: 64, offset: 768)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !79, line: 36, flags: DIFlagFwdDecl)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !78, file: !79, line: 70, baseType: !97, size: 64, offset: 832)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !78, file: !79, line: 72, baseType: !5, size: 32, offset: 896)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !78, file: !79, line: 73, baseType: !5, size: 32, offset: 928)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !78, file: !79, line: 74, baseType: !101, size: 64, offset: 960)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !102, line: 152, baseType: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!103 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !78, file: !79, line: 77, baseType: !105, size: 16, offset: 1024)
!105 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !78, file: !79, line: 78, baseType: !107, size: 8, offset: 1040)
!107 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !78, file: !79, line: 79, baseType: !109, size: 8, offset: 1048)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 8, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 1)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !78, file: !79, line: 81, baseType: !113, size: 64, offset: 1088)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !79, line: 43, baseType: null)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !78, file: !79, line: 89, baseType: !116, size: 64, offset: 1152)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !102, line: 153, baseType: !103)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !78, file: !79, line: 91, baseType: !118, size: 64, offset: 1216)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !79, line: 37, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !78, file: !79, line: 92, baseType: !121, size: 64, offset: 1280)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !79, line: 38, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !78, file: !79, line: 93, baseType: !97, size: 64, offset: 1344)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !78, file: !79, line: 94, baseType: !4, size: 64, offset: 1408)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !78, file: !79, line: 95, baseType: !68, size: 64, offset: 1472)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !78, file: !79, line: 96, baseType: !5, size: 32, offset: 1536)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !78, file: !79, line: 98, baseType: !128, size: 160, offset: 1568)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 160, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 20)
!131 = !DILocation(line: 63, column: 16, scope: !67)
!132 = !DILocation(line: 65, column: 17, scope: !133)
!133 = distinct !DILexicalBlock(scope: !67, file: !1, line: 65, column: 13)
!134 = !DILocation(line: 65, column: 16, scope: !133)
!135 = !DILocation(line: 65, column: 25, scope: !133)
!136 = !DILocation(line: 65, column: 13, scope: !67)
!137 = !DILocation(line: 67, column: 21, scope: !138)
!138 = distinct !DILexicalBlock(scope: !133, file: !1, line: 66, column: 9)
!139 = !DILocation(line: 67, column: 19, scope: !138)
!140 = !DILocation(line: 68, column: 17, scope: !141)
!141 = distinct !DILexicalBlock(scope: !138, file: !1, line: 68, column: 17)
!142 = !DILocation(line: 68, column: 23, scope: !141)
!143 = !DILocation(line: 68, column: 17, scope: !138)
!144 = !DILocation(line: 71, column: 27, scope: !145)
!145 = distinct !DILexicalBlock(scope: !146, file: !1, line: 71, column: 21)
!146 = distinct !DILexicalBlock(scope: !141, file: !1, line: 69, column: 13)
!147 = !DILocation(line: 71, column: 32, scope: !145)
!148 = !DILocation(line: 71, column: 31, scope: !145)
!149 = !DILocation(line: 71, column: 51, scope: !145)
!150 = !DILocation(line: 71, column: 50, scope: !145)
!151 = !DILocation(line: 71, column: 41, scope: !145)
!152 = !DILocation(line: 71, column: 61, scope: !145)
!153 = !DILocation(line: 71, column: 21, scope: !145)
!154 = !DILocation(line: 71, column: 68, scope: !145)
!155 = !DILocation(line: 71, column: 21, scope: !146)
!156 = !DILocation(line: 73, column: 21, scope: !157)
!157 = distinct !DILexicalBlock(scope: !145, file: !1, line: 72, column: 17)
!158 = !DILocation(line: 75, column: 21, scope: !157)
!159 = !DILocation(line: 75, column: 26, scope: !157)
!160 = !DILocation(line: 75, column: 35, scope: !157)
!161 = !DILocation(line: 76, column: 17, scope: !157)
!162 = !DILocation(line: 77, column: 24, scope: !146)
!163 = !DILocation(line: 77, column: 17, scope: !146)
!164 = !DILocation(line: 78, column: 13, scope: !146)
!165 = !DILocation(line: 79, column: 9, scope: !138)
!166 = !DILocation(line: 82, column: 5, scope: !51)
!167 = !DILocation(line: 82, column: 13, scope: !51)
!168 = !DILocation(line: 83, column: 1, scope: !51)
!169 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 90, type: !11, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!170 = !DILocalVariable(name: "data", arg: 1, scope: !169, file: !1, line: 90, type: !13)
!171 = !DILocation(line: 90, column: 25, scope: !169)
!172 = !DILocalVariable(name: "i", scope: !173, file: !1, line: 93, type: !5)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 92, column: 5)
!174 = !DILocation(line: 93, column: 13, scope: !173)
!175 = !DILocalVariable(name: "n", scope: !173, file: !1, line: 93, type: !5)
!176 = !DILocation(line: 93, column: 16, scope: !173)
!177 = !DILocalVariable(name: "intVariable", scope: !173, file: !1, line: 93, type: !5)
!178 = !DILocation(line: 93, column: 19, scope: !173)
!179 = !DILocation(line: 94, column: 20, scope: !180)
!180 = distinct !DILexicalBlock(scope: !173, file: !1, line: 94, column: 13)
!181 = !DILocation(line: 94, column: 13, scope: !180)
!182 = !DILocation(line: 94, column: 36, scope: !180)
!183 = !DILocation(line: 94, column: 13, scope: !173)
!184 = !DILocation(line: 97, column: 25, scope: !185)
!185 = distinct !DILexicalBlock(scope: !180, file: !1, line: 95, column: 9)
!186 = !DILocation(line: 98, column: 20, scope: !187)
!187 = distinct !DILexicalBlock(scope: !185, file: !1, line: 98, column: 13)
!188 = !DILocation(line: 98, column: 18, scope: !187)
!189 = !DILocation(line: 98, column: 25, scope: !190)
!190 = distinct !DILexicalBlock(scope: !187, file: !1, line: 98, column: 13)
!191 = !DILocation(line: 98, column: 29, scope: !190)
!192 = !DILocation(line: 98, column: 27, scope: !190)
!193 = !DILocation(line: 98, column: 13, scope: !187)
!194 = !DILocation(line: 101, column: 28, scope: !195)
!195 = distinct !DILexicalBlock(scope: !190, file: !1, line: 99, column: 13)
!196 = !DILocation(line: 102, column: 13, scope: !195)
!197 = !DILocation(line: 98, column: 33, scope: !190)
!198 = !DILocation(line: 98, column: 13, scope: !190)
!199 = distinct !{!199, !193, !200, !46}
!200 = !DILocation(line: 102, column: 13, scope: !187)
!201 = !DILocation(line: 103, column: 26, scope: !185)
!202 = !DILocation(line: 103, column: 13, scope: !185)
!203 = !DILocation(line: 104, column: 9, scope: !185)
!204 = !DILocation(line: 106, column: 1, scope: !169)
!205 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 108, type: !52, scopeLine: 109, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!206 = !DILocalVariable(name: "data", scope: !205, file: !1, line: 110, type: !13)
!207 = !DILocation(line: 110, column: 12, scope: !205)
!208 = !DILocalVariable(name: "funcPtr", scope: !205, file: !1, line: 111, type: !57)
!209 = !DILocation(line: 111, column: 12, scope: !205)
!210 = !DILocalVariable(name: "dataBuffer", scope: !205, file: !1, line: 112, type: !60)
!211 = !DILocation(line: 112, column: 10, scope: !205)
!212 = !DILocation(line: 113, column: 12, scope: !205)
!213 = !DILocation(line: 113, column: 10, scope: !205)
!214 = !DILocation(line: 115, column: 12, scope: !205)
!215 = !DILocation(line: 115, column: 5, scope: !205)
!216 = !DILocation(line: 116, column: 5, scope: !205)
!217 = !DILocation(line: 116, column: 13, scope: !205)
!218 = !DILocation(line: 117, column: 1, scope: !205)
!219 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 120, type: !11, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!220 = !DILocalVariable(name: "data", arg: 1, scope: !219, file: !1, line: 120, type: !13)
!221 = !DILocation(line: 120, column: 25, scope: !219)
!222 = !DILocalVariable(name: "i", scope: !223, file: !1, line: 123, type: !5)
!223 = distinct !DILexicalBlock(scope: !219, file: !1, line: 122, column: 5)
!224 = !DILocation(line: 123, column: 13, scope: !223)
!225 = !DILocalVariable(name: "n", scope: !223, file: !1, line: 123, type: !5)
!226 = !DILocation(line: 123, column: 16, scope: !223)
!227 = !DILocalVariable(name: "intVariable", scope: !223, file: !1, line: 123, type: !5)
!228 = !DILocation(line: 123, column: 19, scope: !223)
!229 = !DILocation(line: 124, column: 20, scope: !230)
!230 = distinct !DILexicalBlock(scope: !223, file: !1, line: 124, column: 13)
!231 = !DILocation(line: 124, column: 13, scope: !230)
!232 = !DILocation(line: 124, column: 36, scope: !230)
!233 = !DILocation(line: 124, column: 13, scope: !223)
!234 = !DILocation(line: 127, column: 17, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !1, line: 127, column: 17)
!236 = distinct !DILexicalBlock(scope: !230, file: !1, line: 125, column: 9)
!237 = !DILocation(line: 127, column: 19, scope: !235)
!238 = !DILocation(line: 127, column: 17, scope: !236)
!239 = !DILocation(line: 129, column: 29, scope: !240)
!240 = distinct !DILexicalBlock(scope: !235, file: !1, line: 128, column: 13)
!241 = !DILocation(line: 130, column: 24, scope: !242)
!242 = distinct !DILexicalBlock(scope: !240, file: !1, line: 130, column: 17)
!243 = !DILocation(line: 130, column: 22, scope: !242)
!244 = !DILocation(line: 130, column: 29, scope: !245)
!245 = distinct !DILexicalBlock(scope: !242, file: !1, line: 130, column: 17)
!246 = !DILocation(line: 130, column: 33, scope: !245)
!247 = !DILocation(line: 130, column: 31, scope: !245)
!248 = !DILocation(line: 130, column: 17, scope: !242)
!249 = !DILocation(line: 133, column: 32, scope: !250)
!250 = distinct !DILexicalBlock(scope: !245, file: !1, line: 131, column: 17)
!251 = !DILocation(line: 134, column: 17, scope: !250)
!252 = !DILocation(line: 130, column: 37, scope: !245)
!253 = !DILocation(line: 130, column: 17, scope: !245)
!254 = distinct !{!254, !248, !255, !46}
!255 = !DILocation(line: 134, column: 17, scope: !242)
!256 = !DILocation(line: 135, column: 30, scope: !240)
!257 = !DILocation(line: 135, column: 17, scope: !240)
!258 = !DILocation(line: 136, column: 13, scope: !240)
!259 = !DILocation(line: 137, column: 9, scope: !236)
!260 = !DILocation(line: 139, column: 1, scope: !219)
!261 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 141, type: !52, scopeLine: 142, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!262 = !DILocalVariable(name: "data", scope: !261, file: !1, line: 143, type: !13)
!263 = !DILocation(line: 143, column: 12, scope: !261)
!264 = !DILocalVariable(name: "funcPtr", scope: !261, file: !1, line: 144, type: !57)
!265 = !DILocation(line: 144, column: 12, scope: !261)
!266 = !DILocalVariable(name: "dataBuffer", scope: !261, file: !1, line: 145, type: !60)
!267 = !DILocation(line: 145, column: 10, scope: !261)
!268 = !DILocation(line: 146, column: 12, scope: !261)
!269 = !DILocation(line: 146, column: 10, scope: !261)
!270 = !DILocalVariable(name: "dataLen", scope: !271, file: !1, line: 149, type: !68)
!271 = distinct !DILexicalBlock(scope: !261, file: !1, line: 147, column: 5)
!272 = !DILocation(line: 149, column: 16, scope: !271)
!273 = !DILocation(line: 149, column: 33, scope: !271)
!274 = !DILocation(line: 149, column: 26, scope: !271)
!275 = !DILocalVariable(name: "pFile", scope: !271, file: !1, line: 150, type: !75)
!276 = !DILocation(line: 150, column: 16, scope: !271)
!277 = !DILocation(line: 152, column: 17, scope: !278)
!278 = distinct !DILexicalBlock(scope: !271, file: !1, line: 152, column: 13)
!279 = !DILocation(line: 152, column: 16, scope: !278)
!280 = !DILocation(line: 152, column: 25, scope: !278)
!281 = !DILocation(line: 152, column: 13, scope: !271)
!282 = !DILocation(line: 154, column: 21, scope: !283)
!283 = distinct !DILexicalBlock(scope: !278, file: !1, line: 153, column: 9)
!284 = !DILocation(line: 154, column: 19, scope: !283)
!285 = !DILocation(line: 155, column: 17, scope: !286)
!286 = distinct !DILexicalBlock(scope: !283, file: !1, line: 155, column: 17)
!287 = !DILocation(line: 155, column: 23, scope: !286)
!288 = !DILocation(line: 155, column: 17, scope: !283)
!289 = !DILocation(line: 158, column: 27, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !1, line: 158, column: 21)
!291 = distinct !DILexicalBlock(scope: !286, file: !1, line: 156, column: 13)
!292 = !DILocation(line: 158, column: 32, scope: !290)
!293 = !DILocation(line: 158, column: 31, scope: !290)
!294 = !DILocation(line: 158, column: 51, scope: !290)
!295 = !DILocation(line: 158, column: 50, scope: !290)
!296 = !DILocation(line: 158, column: 41, scope: !290)
!297 = !DILocation(line: 158, column: 61, scope: !290)
!298 = !DILocation(line: 158, column: 21, scope: !290)
!299 = !DILocation(line: 158, column: 68, scope: !290)
!300 = !DILocation(line: 158, column: 21, scope: !291)
!301 = !DILocation(line: 160, column: 21, scope: !302)
!302 = distinct !DILexicalBlock(scope: !290, file: !1, line: 159, column: 17)
!303 = !DILocation(line: 162, column: 21, scope: !302)
!304 = !DILocation(line: 162, column: 26, scope: !302)
!305 = !DILocation(line: 162, column: 35, scope: !302)
!306 = !DILocation(line: 163, column: 17, scope: !302)
!307 = !DILocation(line: 164, column: 24, scope: !291)
!308 = !DILocation(line: 164, column: 17, scope: !291)
!309 = !DILocation(line: 165, column: 13, scope: !291)
!310 = !DILocation(line: 166, column: 9, scope: !283)
!311 = !DILocation(line: 168, column: 5, scope: !261)
!312 = !DILocation(line: 168, column: 13, scope: !261)
!313 = !DILocation(line: 169, column: 1, scope: !261)
!314 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_44_good", scope: !1, file: !1, line: 171, type: !52, scopeLine: 172, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!315 = !DILocation(line: 173, column: 5, scope: !314)
!316 = !DILocation(line: 174, column: 5, scope: !314)
!317 = !DILocation(line: 175, column: 1, scope: !314)
