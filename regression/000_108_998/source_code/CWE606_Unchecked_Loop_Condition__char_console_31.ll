; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_31.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_31_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %dataCopy = alloca i8*, align 8
  %data19 = alloca i8*, align 8
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
  %2 = load i64, i64* %dataLen, align 8, !dbg !32
  %sub = sub i64 100, %2, !dbg !34
  %cmp = icmp ugt i64 %sub, 1, !dbg !35
  br i1 %cmp, label %if.then, label %if.end18, !dbg !36

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !37
  %4 = load i64, i64* %dataLen, align 8, !dbg !40
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !41
  %5 = load i64, i64* %dataLen, align 8, !dbg !42
  %sub1 = sub i64 100, %5, !dbg !43
  %conv = trunc i64 %sub1 to i32, !dbg !44
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !45
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !46
  %cmp3 = icmp ne i8* %call2, null, !dbg !47
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !48

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !49
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !51
  store i64 %call6, i64* %dataLen, align 8, !dbg !52
  %8 = load i64, i64* %dataLen, align 8, !dbg !53
  %cmp7 = icmp ugt i64 %8, 0, !dbg !55
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !56

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !57
  %10 = load i64, i64* %dataLen, align 8, !dbg !58
  %sub9 = sub i64 %10, 1, !dbg !59
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !57
  %11 = load i8, i8* %arrayidx, align 1, !dbg !57
  %conv10 = sext i8 %11 to i32, !dbg !57
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !60
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !61

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !62
  %13 = load i64, i64* %dataLen, align 8, !dbg !64
  %sub14 = sub i64 %13, 1, !dbg !65
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !62
  store i8 0, i8* %arrayidx15, align 1, !dbg !66
  br label %if.end, !dbg !67

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !68

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !69
  %14 = load i8*, i8** %data, align 8, !dbg !71
  %15 = load i64, i64* %dataLen, align 8, !dbg !72
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !71
  store i8 0, i8* %arrayidx16, align 1, !dbg !73
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !74

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !75, metadata !DIExpression()), !dbg !77
  %16 = load i8*, i8** %data, align 8, !dbg !78
  store i8* %16, i8** %dataCopy, align 8, !dbg !77
  call void @llvm.dbg.declare(metadata i8** %data19, metadata !79, metadata !DIExpression()), !dbg !80
  %17 = load i8*, i8** %dataCopy, align 8, !dbg !81
  store i8* %17, i8** %data19, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %i, metadata !82, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %n, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !87, metadata !DIExpression()), !dbg !88
  %18 = load i8*, i8** %data19, align 8, !dbg !89
  %call20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !91
  %cmp21 = icmp eq i32 %call20, 1, !dbg !92
  br i1 %cmp21, label %if.then23, label %if.end27, !dbg !93

if.then23:                                        ; preds = %if.end18
  store i32 0, i32* %intVariable, align 4, !dbg !94
  store i32 0, i32* %i, align 4, !dbg !96
  br label %for.cond, !dbg !98

for.cond:                                         ; preds = %for.inc, %if.then23
  %19 = load i32, i32* %i, align 4, !dbg !99
  %20 = load i32, i32* %n, align 4, !dbg !101
  %cmp24 = icmp slt i32 %19, %20, !dbg !102
  br i1 %cmp24, label %for.body, label %for.end, !dbg !103

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !104
  %inc = add nsw i32 %21, 1, !dbg !104
  store i32 %inc, i32* %intVariable, align 4, !dbg !104
  br label %for.inc, !dbg !106

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4, !dbg !107
  %inc26 = add nsw i32 %22, 1, !dbg !107
  store i32 %inc26, i32* %i, align 4, !dbg !107
  br label %for.cond, !dbg !108, !llvm.loop !109

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %intVariable, align 4, !dbg !112
  call void @printIntLine(i32 %23), !dbg !113
  br label %if.end27, !dbg !114

if.end27:                                         ; preds = %for.end, %if.end18
  ret void, !dbg !115
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !116 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataCopy = alloca i8*, align 8
  %data1 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !119, metadata !DIExpression()), !dbg !120
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !120
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !120
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !121
  store i8* %arraydecay, i8** %data, align 8, !dbg !122
  %1 = load i8*, i8** %data, align 8, !dbg !123
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !124
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !125, metadata !DIExpression()), !dbg !127
  %2 = load i8*, i8** %data, align 8, !dbg !128
  store i8* %2, i8** %dataCopy, align 8, !dbg !127
  call void @llvm.dbg.declare(metadata i8** %data1, metadata !129, metadata !DIExpression()), !dbg !130
  %3 = load i8*, i8** %dataCopy, align 8, !dbg !131
  store i8* %3, i8** %data1, align 8, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %i, metadata !132, metadata !DIExpression()), !dbg !134
  call void @llvm.dbg.declare(metadata i32* %n, metadata !135, metadata !DIExpression()), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !137, metadata !DIExpression()), !dbg !138
  %4 = load i8*, i8** %data1, align 8, !dbg !139
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !141
  %cmp = icmp eq i32 %call2, 1, !dbg !142
  br i1 %cmp, label %if.then, label %if.end, !dbg !143

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !144
  store i32 0, i32* %i, align 4, !dbg !146
  br label %for.cond, !dbg !148

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !149
  %6 = load i32, i32* %n, align 4, !dbg !151
  %cmp3 = icmp slt i32 %5, %6, !dbg !152
  br i1 %cmp3, label %for.body, label %for.end, !dbg !153

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !154
  %inc = add nsw i32 %7, 1, !dbg !154
  store i32 %inc, i32* %intVariable, align 4, !dbg !154
  br label %for.inc, !dbg !156

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !157
  %inc4 = add nsw i32 %8, 1, !dbg !157
  store i32 %inc4, i32* %i, align 4, !dbg !157
  br label %for.cond, !dbg !158, !llvm.loop !159

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %intVariable, align 4, !dbg !161
  call void @printIntLine(i32 %9), !dbg !162
  br label %if.end, !dbg !163

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !164
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !165 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %dataCopy = alloca i8*, align 8
  %data19 = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !168, metadata !DIExpression()), !dbg !169
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !169
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !169
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !170
  store i8* %arraydecay, i8** %data, align 8, !dbg !171
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !172, metadata !DIExpression()), !dbg !174
  %1 = load i8*, i8** %data, align 8, !dbg !175
  %call = call i64 @strlen(i8* %1) #6, !dbg !176
  store i64 %call, i64* %dataLen, align 8, !dbg !174
  %2 = load i64, i64* %dataLen, align 8, !dbg !177
  %sub = sub i64 100, %2, !dbg !179
  %cmp = icmp ugt i64 %sub, 1, !dbg !180
  br i1 %cmp, label %if.then, label %if.end18, !dbg !181

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !182
  %4 = load i64, i64* %dataLen, align 8, !dbg !185
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !186
  %5 = load i64, i64* %dataLen, align 8, !dbg !187
  %sub1 = sub i64 100, %5, !dbg !188
  %conv = trunc i64 %sub1 to i32, !dbg !189
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !190
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !191
  %cmp3 = icmp ne i8* %call2, null, !dbg !192
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !193

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !194
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !196
  store i64 %call6, i64* %dataLen, align 8, !dbg !197
  %8 = load i64, i64* %dataLen, align 8, !dbg !198
  %cmp7 = icmp ugt i64 %8, 0, !dbg !200
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !201

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !202
  %10 = load i64, i64* %dataLen, align 8, !dbg !203
  %sub9 = sub i64 %10, 1, !dbg !204
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !202
  %11 = load i8, i8* %arrayidx, align 1, !dbg !202
  %conv10 = sext i8 %11 to i32, !dbg !202
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !205
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !206

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !207
  %13 = load i64, i64* %dataLen, align 8, !dbg !209
  %sub14 = sub i64 %13, 1, !dbg !210
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !207
  store i8 0, i8* %arrayidx15, align 1, !dbg !211
  br label %if.end, !dbg !212

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !213

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !214
  %14 = load i8*, i8** %data, align 8, !dbg !216
  %15 = load i64, i64* %dataLen, align 8, !dbg !217
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !216
  store i8 0, i8* %arrayidx16, align 1, !dbg !218
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !219

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i8** %dataCopy, metadata !220, metadata !DIExpression()), !dbg !222
  %16 = load i8*, i8** %data, align 8, !dbg !223
  store i8* %16, i8** %dataCopy, align 8, !dbg !222
  call void @llvm.dbg.declare(metadata i8** %data19, metadata !224, metadata !DIExpression()), !dbg !225
  %17 = load i8*, i8** %dataCopy, align 8, !dbg !226
  store i8* %17, i8** %data19, align 8, !dbg !225
  call void @llvm.dbg.declare(metadata i32* %i, metadata !227, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %n, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !232, metadata !DIExpression()), !dbg !233
  %18 = load i8*, i8** %data19, align 8, !dbg !234
  %call20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !236
  %cmp21 = icmp eq i32 %call20, 1, !dbg !237
  br i1 %cmp21, label %if.then23, label %if.end31, !dbg !238

if.then23:                                        ; preds = %if.end18
  %19 = load i32, i32* %n, align 4, !dbg !239
  %cmp24 = icmp slt i32 %19, 10000, !dbg !242
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !243

if.then26:                                        ; preds = %if.then23
  store i32 0, i32* %intVariable, align 4, !dbg !244
  store i32 0, i32* %i, align 4, !dbg !246
  br label %for.cond, !dbg !248

for.cond:                                         ; preds = %for.inc, %if.then26
  %20 = load i32, i32* %i, align 4, !dbg !249
  %21 = load i32, i32* %n, align 4, !dbg !251
  %cmp27 = icmp slt i32 %20, %21, !dbg !252
  br i1 %cmp27, label %for.body, label %for.end, !dbg !253

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !254
  %inc = add nsw i32 %22, 1, !dbg !254
  store i32 %inc, i32* %intVariable, align 4, !dbg !254
  br label %for.inc, !dbg !256

for.inc:                                          ; preds = %for.body
  %23 = load i32, i32* %i, align 4, !dbg !257
  %inc29 = add nsw i32 %23, 1, !dbg !257
  store i32 %inc29, i32* %i, align 4, !dbg !257
  br label %for.cond, !dbg !258, !llvm.loop !259

for.end:                                          ; preds = %for.cond
  %24 = load i32, i32* %intVariable, align 4, !dbg !261
  call void @printIntLine(i32 %24), !dbg !262
  br label %if.end30, !dbg !263

if.end30:                                         ; preds = %for.end, %if.then23
  br label %if.end31, !dbg !264

if.end31:                                         ; preds = %if.end30, %if.end18
  ret void, !dbg !265
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_31_good() #0 !dbg !266 {
entry:
  call void @goodG2B(), !dbg !267
  call void @goodB2G(), !dbg !268
  ret void, !dbg !269
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_31.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_998/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_31_bad", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null}
!13 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 31, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocation(line: 31, column: 12, scope: !10)
!17 = !DILocalVariable(name: "dataBuffer", scope: !10, file: !1, line: 32, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 800, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 100)
!21 = !DILocation(line: 32, column: 10, scope: !10)
!22 = !DILocation(line: 33, column: 12, scope: !10)
!23 = !DILocation(line: 33, column: 10, scope: !10)
!24 = !DILocalVariable(name: "dataLen", scope: !25, file: !1, line: 36, type: !26)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 34, column: 5)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!28 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!29 = !DILocation(line: 36, column: 16, scope: !25)
!30 = !DILocation(line: 36, column: 33, scope: !25)
!31 = !DILocation(line: 36, column: 26, scope: !25)
!32 = !DILocation(line: 38, column: 17, scope: !33)
!33 = distinct !DILexicalBlock(scope: !25, file: !1, line: 38, column: 13)
!34 = !DILocation(line: 38, column: 16, scope: !33)
!35 = !DILocation(line: 38, column: 25, scope: !33)
!36 = !DILocation(line: 38, column: 13, scope: !25)
!37 = !DILocation(line: 41, column: 23, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 41, column: 17)
!39 = distinct !DILexicalBlock(scope: !33, file: !1, line: 39, column: 9)
!40 = !DILocation(line: 41, column: 28, scope: !38)
!41 = !DILocation(line: 41, column: 27, scope: !38)
!42 = !DILocation(line: 41, column: 47, scope: !38)
!43 = !DILocation(line: 41, column: 46, scope: !38)
!44 = !DILocation(line: 41, column: 37, scope: !38)
!45 = !DILocation(line: 41, column: 57, scope: !38)
!46 = !DILocation(line: 41, column: 17, scope: !38)
!47 = !DILocation(line: 41, column: 64, scope: !38)
!48 = !DILocation(line: 41, column: 17, scope: !39)
!49 = !DILocation(line: 45, column: 34, scope: !50)
!50 = distinct !DILexicalBlock(scope: !38, file: !1, line: 42, column: 13)
!51 = !DILocation(line: 45, column: 27, scope: !50)
!52 = !DILocation(line: 45, column: 25, scope: !50)
!53 = !DILocation(line: 46, column: 21, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 46, column: 21)
!55 = !DILocation(line: 46, column: 29, scope: !54)
!56 = !DILocation(line: 46, column: 33, scope: !54)
!57 = !DILocation(line: 46, column: 36, scope: !54)
!58 = !DILocation(line: 46, column: 41, scope: !54)
!59 = !DILocation(line: 46, column: 48, scope: !54)
!60 = !DILocation(line: 46, column: 52, scope: !54)
!61 = !DILocation(line: 46, column: 21, scope: !50)
!62 = !DILocation(line: 48, column: 21, scope: !63)
!63 = distinct !DILexicalBlock(scope: !54, file: !1, line: 47, column: 17)
!64 = !DILocation(line: 48, column: 26, scope: !63)
!65 = !DILocation(line: 48, column: 33, scope: !63)
!66 = !DILocation(line: 48, column: 37, scope: !63)
!67 = !DILocation(line: 49, column: 17, scope: !63)
!68 = !DILocation(line: 50, column: 13, scope: !50)
!69 = !DILocation(line: 53, column: 17, scope: !70)
!70 = distinct !DILexicalBlock(scope: !38, file: !1, line: 52, column: 13)
!71 = !DILocation(line: 55, column: 17, scope: !70)
!72 = !DILocation(line: 55, column: 22, scope: !70)
!73 = !DILocation(line: 55, column: 31, scope: !70)
!74 = !DILocation(line: 57, column: 9, scope: !39)
!75 = !DILocalVariable(name: "dataCopy", scope: !76, file: !1, line: 60, type: !14)
!76 = distinct !DILexicalBlock(scope: !10, file: !1, line: 59, column: 5)
!77 = !DILocation(line: 60, column: 16, scope: !76)
!78 = !DILocation(line: 60, column: 27, scope: !76)
!79 = !DILocalVariable(name: "data", scope: !76, file: !1, line: 61, type: !14)
!80 = !DILocation(line: 61, column: 16, scope: !76)
!81 = !DILocation(line: 61, column: 23, scope: !76)
!82 = !DILocalVariable(name: "i", scope: !83, file: !1, line: 63, type: !4)
!83 = distinct !DILexicalBlock(scope: !76, file: !1, line: 62, column: 9)
!84 = !DILocation(line: 63, column: 17, scope: !83)
!85 = !DILocalVariable(name: "n", scope: !83, file: !1, line: 63, type: !4)
!86 = !DILocation(line: 63, column: 20, scope: !83)
!87 = !DILocalVariable(name: "intVariable", scope: !83, file: !1, line: 63, type: !4)
!88 = !DILocation(line: 63, column: 23, scope: !83)
!89 = !DILocation(line: 64, column: 24, scope: !90)
!90 = distinct !DILexicalBlock(scope: !83, file: !1, line: 64, column: 17)
!91 = !DILocation(line: 64, column: 17, scope: !90)
!92 = !DILocation(line: 64, column: 40, scope: !90)
!93 = !DILocation(line: 64, column: 17, scope: !83)
!94 = !DILocation(line: 67, column: 29, scope: !95)
!95 = distinct !DILexicalBlock(scope: !90, file: !1, line: 65, column: 13)
!96 = !DILocation(line: 68, column: 24, scope: !97)
!97 = distinct !DILexicalBlock(scope: !95, file: !1, line: 68, column: 17)
!98 = !DILocation(line: 68, column: 22, scope: !97)
!99 = !DILocation(line: 68, column: 29, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 68, column: 17)
!101 = !DILocation(line: 68, column: 33, scope: !100)
!102 = !DILocation(line: 68, column: 31, scope: !100)
!103 = !DILocation(line: 68, column: 17, scope: !97)
!104 = !DILocation(line: 71, column: 32, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !1, line: 69, column: 17)
!106 = !DILocation(line: 72, column: 17, scope: !105)
!107 = !DILocation(line: 68, column: 37, scope: !100)
!108 = !DILocation(line: 68, column: 17, scope: !100)
!109 = distinct !{!109, !103, !110, !111}
!110 = !DILocation(line: 72, column: 17, scope: !97)
!111 = !{!"llvm.loop.mustprogress"}
!112 = !DILocation(line: 73, column: 30, scope: !95)
!113 = !DILocation(line: 73, column: 17, scope: !95)
!114 = !DILocation(line: 74, column: 13, scope: !95)
!115 = !DILocation(line: 77, column: 1, scope: !10)
!116 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 84, type: !11, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!117 = !DILocalVariable(name: "data", scope: !116, file: !1, line: 86, type: !14)
!118 = !DILocation(line: 86, column: 12, scope: !116)
!119 = !DILocalVariable(name: "dataBuffer", scope: !116, file: !1, line: 87, type: !18)
!120 = !DILocation(line: 87, column: 10, scope: !116)
!121 = !DILocation(line: 88, column: 12, scope: !116)
!122 = !DILocation(line: 88, column: 10, scope: !116)
!123 = !DILocation(line: 90, column: 12, scope: !116)
!124 = !DILocation(line: 90, column: 5, scope: !116)
!125 = !DILocalVariable(name: "dataCopy", scope: !126, file: !1, line: 92, type: !14)
!126 = distinct !DILexicalBlock(scope: !116, file: !1, line: 91, column: 5)
!127 = !DILocation(line: 92, column: 16, scope: !126)
!128 = !DILocation(line: 92, column: 27, scope: !126)
!129 = !DILocalVariable(name: "data", scope: !126, file: !1, line: 93, type: !14)
!130 = !DILocation(line: 93, column: 16, scope: !126)
!131 = !DILocation(line: 93, column: 23, scope: !126)
!132 = !DILocalVariable(name: "i", scope: !133, file: !1, line: 95, type: !4)
!133 = distinct !DILexicalBlock(scope: !126, file: !1, line: 94, column: 9)
!134 = !DILocation(line: 95, column: 17, scope: !133)
!135 = !DILocalVariable(name: "n", scope: !133, file: !1, line: 95, type: !4)
!136 = !DILocation(line: 95, column: 20, scope: !133)
!137 = !DILocalVariable(name: "intVariable", scope: !133, file: !1, line: 95, type: !4)
!138 = !DILocation(line: 95, column: 23, scope: !133)
!139 = !DILocation(line: 96, column: 24, scope: !140)
!140 = distinct !DILexicalBlock(scope: !133, file: !1, line: 96, column: 17)
!141 = !DILocation(line: 96, column: 17, scope: !140)
!142 = !DILocation(line: 96, column: 40, scope: !140)
!143 = !DILocation(line: 96, column: 17, scope: !133)
!144 = !DILocation(line: 99, column: 29, scope: !145)
!145 = distinct !DILexicalBlock(scope: !140, file: !1, line: 97, column: 13)
!146 = !DILocation(line: 100, column: 24, scope: !147)
!147 = distinct !DILexicalBlock(scope: !145, file: !1, line: 100, column: 17)
!148 = !DILocation(line: 100, column: 22, scope: !147)
!149 = !DILocation(line: 100, column: 29, scope: !150)
!150 = distinct !DILexicalBlock(scope: !147, file: !1, line: 100, column: 17)
!151 = !DILocation(line: 100, column: 33, scope: !150)
!152 = !DILocation(line: 100, column: 31, scope: !150)
!153 = !DILocation(line: 100, column: 17, scope: !147)
!154 = !DILocation(line: 103, column: 32, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 101, column: 17)
!156 = !DILocation(line: 104, column: 17, scope: !155)
!157 = !DILocation(line: 100, column: 37, scope: !150)
!158 = !DILocation(line: 100, column: 17, scope: !150)
!159 = distinct !{!159, !153, !160, !111}
!160 = !DILocation(line: 104, column: 17, scope: !147)
!161 = !DILocation(line: 105, column: 30, scope: !145)
!162 = !DILocation(line: 105, column: 17, scope: !145)
!163 = !DILocation(line: 106, column: 13, scope: !145)
!164 = !DILocation(line: 109, column: 1, scope: !116)
!165 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 112, type: !11, scopeLine: 113, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!166 = !DILocalVariable(name: "data", scope: !165, file: !1, line: 114, type: !14)
!167 = !DILocation(line: 114, column: 12, scope: !165)
!168 = !DILocalVariable(name: "dataBuffer", scope: !165, file: !1, line: 115, type: !18)
!169 = !DILocation(line: 115, column: 10, scope: !165)
!170 = !DILocation(line: 116, column: 12, scope: !165)
!171 = !DILocation(line: 116, column: 10, scope: !165)
!172 = !DILocalVariable(name: "dataLen", scope: !173, file: !1, line: 119, type: !26)
!173 = distinct !DILexicalBlock(scope: !165, file: !1, line: 117, column: 5)
!174 = !DILocation(line: 119, column: 16, scope: !173)
!175 = !DILocation(line: 119, column: 33, scope: !173)
!176 = !DILocation(line: 119, column: 26, scope: !173)
!177 = !DILocation(line: 121, column: 17, scope: !178)
!178 = distinct !DILexicalBlock(scope: !173, file: !1, line: 121, column: 13)
!179 = !DILocation(line: 121, column: 16, scope: !178)
!180 = !DILocation(line: 121, column: 25, scope: !178)
!181 = !DILocation(line: 121, column: 13, scope: !173)
!182 = !DILocation(line: 124, column: 23, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 124, column: 17)
!184 = distinct !DILexicalBlock(scope: !178, file: !1, line: 122, column: 9)
!185 = !DILocation(line: 124, column: 28, scope: !183)
!186 = !DILocation(line: 124, column: 27, scope: !183)
!187 = !DILocation(line: 124, column: 47, scope: !183)
!188 = !DILocation(line: 124, column: 46, scope: !183)
!189 = !DILocation(line: 124, column: 37, scope: !183)
!190 = !DILocation(line: 124, column: 57, scope: !183)
!191 = !DILocation(line: 124, column: 17, scope: !183)
!192 = !DILocation(line: 124, column: 64, scope: !183)
!193 = !DILocation(line: 124, column: 17, scope: !184)
!194 = !DILocation(line: 128, column: 34, scope: !195)
!195 = distinct !DILexicalBlock(scope: !183, file: !1, line: 125, column: 13)
!196 = !DILocation(line: 128, column: 27, scope: !195)
!197 = !DILocation(line: 128, column: 25, scope: !195)
!198 = !DILocation(line: 129, column: 21, scope: !199)
!199 = distinct !DILexicalBlock(scope: !195, file: !1, line: 129, column: 21)
!200 = !DILocation(line: 129, column: 29, scope: !199)
!201 = !DILocation(line: 129, column: 33, scope: !199)
!202 = !DILocation(line: 129, column: 36, scope: !199)
!203 = !DILocation(line: 129, column: 41, scope: !199)
!204 = !DILocation(line: 129, column: 48, scope: !199)
!205 = !DILocation(line: 129, column: 52, scope: !199)
!206 = !DILocation(line: 129, column: 21, scope: !195)
!207 = !DILocation(line: 131, column: 21, scope: !208)
!208 = distinct !DILexicalBlock(scope: !199, file: !1, line: 130, column: 17)
!209 = !DILocation(line: 131, column: 26, scope: !208)
!210 = !DILocation(line: 131, column: 33, scope: !208)
!211 = !DILocation(line: 131, column: 37, scope: !208)
!212 = !DILocation(line: 132, column: 17, scope: !208)
!213 = !DILocation(line: 133, column: 13, scope: !195)
!214 = !DILocation(line: 136, column: 17, scope: !215)
!215 = distinct !DILexicalBlock(scope: !183, file: !1, line: 135, column: 13)
!216 = !DILocation(line: 138, column: 17, scope: !215)
!217 = !DILocation(line: 138, column: 22, scope: !215)
!218 = !DILocation(line: 138, column: 31, scope: !215)
!219 = !DILocation(line: 140, column: 9, scope: !184)
!220 = !DILocalVariable(name: "dataCopy", scope: !221, file: !1, line: 143, type: !14)
!221 = distinct !DILexicalBlock(scope: !165, file: !1, line: 142, column: 5)
!222 = !DILocation(line: 143, column: 16, scope: !221)
!223 = !DILocation(line: 143, column: 27, scope: !221)
!224 = !DILocalVariable(name: "data", scope: !221, file: !1, line: 144, type: !14)
!225 = !DILocation(line: 144, column: 16, scope: !221)
!226 = !DILocation(line: 144, column: 23, scope: !221)
!227 = !DILocalVariable(name: "i", scope: !228, file: !1, line: 146, type: !4)
!228 = distinct !DILexicalBlock(scope: !221, file: !1, line: 145, column: 9)
!229 = !DILocation(line: 146, column: 17, scope: !228)
!230 = !DILocalVariable(name: "n", scope: !228, file: !1, line: 146, type: !4)
!231 = !DILocation(line: 146, column: 20, scope: !228)
!232 = !DILocalVariable(name: "intVariable", scope: !228, file: !1, line: 146, type: !4)
!233 = !DILocation(line: 146, column: 23, scope: !228)
!234 = !DILocation(line: 147, column: 24, scope: !235)
!235 = distinct !DILexicalBlock(scope: !228, file: !1, line: 147, column: 17)
!236 = !DILocation(line: 147, column: 17, scope: !235)
!237 = !DILocation(line: 147, column: 40, scope: !235)
!238 = !DILocation(line: 147, column: 17, scope: !228)
!239 = !DILocation(line: 150, column: 21, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !1, line: 150, column: 21)
!241 = distinct !DILexicalBlock(scope: !235, file: !1, line: 148, column: 13)
!242 = !DILocation(line: 150, column: 23, scope: !240)
!243 = !DILocation(line: 150, column: 21, scope: !241)
!244 = !DILocation(line: 152, column: 33, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !1, line: 151, column: 17)
!246 = !DILocation(line: 153, column: 28, scope: !247)
!247 = distinct !DILexicalBlock(scope: !245, file: !1, line: 153, column: 21)
!248 = !DILocation(line: 153, column: 26, scope: !247)
!249 = !DILocation(line: 153, column: 33, scope: !250)
!250 = distinct !DILexicalBlock(scope: !247, file: !1, line: 153, column: 21)
!251 = !DILocation(line: 153, column: 37, scope: !250)
!252 = !DILocation(line: 153, column: 35, scope: !250)
!253 = !DILocation(line: 153, column: 21, scope: !247)
!254 = !DILocation(line: 156, column: 36, scope: !255)
!255 = distinct !DILexicalBlock(scope: !250, file: !1, line: 154, column: 21)
!256 = !DILocation(line: 157, column: 21, scope: !255)
!257 = !DILocation(line: 153, column: 41, scope: !250)
!258 = !DILocation(line: 153, column: 21, scope: !250)
!259 = distinct !{!259, !253, !260, !111}
!260 = !DILocation(line: 157, column: 21, scope: !247)
!261 = !DILocation(line: 158, column: 34, scope: !245)
!262 = !DILocation(line: 158, column: 21, scope: !245)
!263 = !DILocation(line: 159, column: 17, scope: !245)
!264 = !DILocation(line: 160, column: 13, scope: !241)
!265 = !DILocation(line: 163, column: 1, scope: !165)
!266 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_31_good", scope: !1, file: !1, line: 165, type: !11, scopeLine: 166, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!267 = !DILocation(line: 167, column: 5, scope: !266)
!268 = !DILocation(line: 168, column: 5, scope: !266)
!269 = !DILocation(line: 169, column: 1, scope: !266)
