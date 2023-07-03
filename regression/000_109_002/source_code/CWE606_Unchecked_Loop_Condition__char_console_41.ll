; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_41.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_41.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_41_bad() #0 !dbg !51 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
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
  %2 = load i64, i64* %dataLen, align 8, !dbg !71
  %sub = sub i64 100, %2, !dbg !73
  %cmp = icmp ugt i64 %sub, 1, !dbg !74
  br i1 %cmp, label %if.then, label %if.end18, !dbg !75

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !76
  %4 = load i64, i64* %dataLen, align 8, !dbg !79
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !80
  %5 = load i64, i64* %dataLen, align 8, !dbg !81
  %sub1 = sub i64 100, %5, !dbg !82
  %conv = trunc i64 %sub1 to i32, !dbg !83
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !84
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !85
  %cmp3 = icmp ne i8* %call2, null, !dbg !86
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !87

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !88
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !90
  store i64 %call6, i64* %dataLen, align 8, !dbg !91
  %8 = load i64, i64* %dataLen, align 8, !dbg !92
  %cmp7 = icmp ugt i64 %8, 0, !dbg !94
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !95

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !96
  %10 = load i64, i64* %dataLen, align 8, !dbg !97
  %sub9 = sub i64 %10, 1, !dbg !98
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !96
  %11 = load i8, i8* %arrayidx, align 1, !dbg !96
  %conv10 = sext i8 %11 to i32, !dbg !96
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !99
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !100

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !101
  %13 = load i64, i64* %dataLen, align 8, !dbg !103
  %sub14 = sub i64 %13, 1, !dbg !104
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !101
  store i8 0, i8* %arrayidx15, align 1, !dbg !105
  br label %if.end, !dbg !106

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !107

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !108
  %14 = load i8*, i8** %data, align 8, !dbg !110
  %15 = load i64, i64* %dataLen, align 8, !dbg !111
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !110
  store i8 0, i8* %arrayidx16, align 1, !dbg !112
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !113

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !114
  call void @badSink(i8* %16), !dbg !115
  ret void, !dbg !116
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2BSink(i8* %data) #0 !dbg !117 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %i, metadata !120, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %n, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !125, metadata !DIExpression()), !dbg !126
  %0 = load i8*, i8** %data.addr, align 8, !dbg !127
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !129
  %cmp = icmp eq i32 %call, 1, !dbg !130
  br i1 %cmp, label %if.then, label %if.end, !dbg !131

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !132
  store i32 0, i32* %i, align 4, !dbg !134
  br label %for.cond, !dbg !136

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !137
  %2 = load i32, i32* %n, align 4, !dbg !139
  %cmp1 = icmp slt i32 %1, %2, !dbg !140
  br i1 %cmp1, label %for.body, label %for.end, !dbg !141

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !142
  %inc = add nsw i32 %3, 1, !dbg !142
  store i32 %inc, i32* %intVariable, align 4, !dbg !142
  br label %for.inc, !dbg !144

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !145
  %inc2 = add nsw i32 %4, 1, !dbg !145
  store i32 %inc2, i32* %i, align 4, !dbg !145
  br label %for.cond, !dbg !146, !llvm.loop !147

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !149
  call void @printIntLine(i32 %5), !dbg !150
  br label %if.end, !dbg !151

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !152
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !153 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !156, metadata !DIExpression()), !dbg !157
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !157
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !157
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !158
  store i8* %arraydecay, i8** %data, align 8, !dbg !159
  %1 = load i8*, i8** %data, align 8, !dbg !160
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !161
  %2 = load i8*, i8** %data, align 8, !dbg !162
  call void @goodG2BSink(i8* %2), !dbg !163
  ret void, !dbg !164
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2GSink(i8* %data) #0 !dbg !165 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata i32* %i, metadata !168, metadata !DIExpression()), !dbg !170
  call void @llvm.dbg.declare(metadata i32* %n, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !173, metadata !DIExpression()), !dbg !174
  %0 = load i8*, i8** %data.addr, align 8, !dbg !175
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #6, !dbg !177
  %cmp = icmp eq i32 %call, 1, !dbg !178
  br i1 %cmp, label %if.then, label %if.end5, !dbg !179

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !180
  %cmp1 = icmp slt i32 %1, 10000, !dbg !183
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !184

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !185
  store i32 0, i32* %i, align 4, !dbg !187
  br label %for.cond, !dbg !189

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !190
  %3 = load i32, i32* %n, align 4, !dbg !192
  %cmp3 = icmp slt i32 %2, %3, !dbg !193
  br i1 %cmp3, label %for.body, label %for.end, !dbg !194

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !195
  %inc = add nsw i32 %4, 1, !dbg !195
  store i32 %inc, i32* %intVariable, align 4, !dbg !195
  br label %for.inc, !dbg !197

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !198
  %inc4 = add nsw i32 %5, 1, !dbg !198
  store i32 %inc4, i32* %i, align 4, !dbg !198
  br label %for.cond, !dbg !199, !llvm.loop !200

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !202
  call void @printIntLine(i32 %6), !dbg !203
  br label %if.end, !dbg !204

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !205

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !206
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !207 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !210, metadata !DIExpression()), !dbg !211
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !211
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !211
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !212
  store i8* %arraydecay, i8** %data, align 8, !dbg !213
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !214, metadata !DIExpression()), !dbg !216
  %1 = load i8*, i8** %data, align 8, !dbg !217
  %call = call i64 @strlen(i8* %1) #7, !dbg !218
  store i64 %call, i64* %dataLen, align 8, !dbg !216
  %2 = load i64, i64* %dataLen, align 8, !dbg !219
  %sub = sub i64 100, %2, !dbg !221
  %cmp = icmp ugt i64 %sub, 1, !dbg !222
  br i1 %cmp, label %if.then, label %if.end18, !dbg !223

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !224
  %4 = load i64, i64* %dataLen, align 8, !dbg !227
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !228
  %5 = load i64, i64* %dataLen, align 8, !dbg !229
  %sub1 = sub i64 100, %5, !dbg !230
  %conv = trunc i64 %sub1 to i32, !dbg !231
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !232
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !233
  %cmp3 = icmp ne i8* %call2, null, !dbg !234
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !235

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !236
  %call6 = call i64 @strlen(i8* %7) #7, !dbg !238
  store i64 %call6, i64* %dataLen, align 8, !dbg !239
  %8 = load i64, i64* %dataLen, align 8, !dbg !240
  %cmp7 = icmp ugt i64 %8, 0, !dbg !242
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !243

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !244
  %10 = load i64, i64* %dataLen, align 8, !dbg !245
  %sub9 = sub i64 %10, 1, !dbg !246
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !244
  %11 = load i8, i8* %arrayidx, align 1, !dbg !244
  %conv10 = sext i8 %11 to i32, !dbg !244
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !247
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !248

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !249
  %13 = load i64, i64* %dataLen, align 8, !dbg !251
  %sub14 = sub i64 %13, 1, !dbg !252
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !249
  store i8 0, i8* %arrayidx15, align 1, !dbg !253
  br label %if.end, !dbg !254

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !255

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0)), !dbg !256
  %14 = load i8*, i8** %data, align 8, !dbg !258
  %15 = load i64, i64* %dataLen, align 8, !dbg !259
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !258
  store i8 0, i8* %arrayidx16, align 1, !dbg !260
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !261

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %data, align 8, !dbg !262
  call void @goodB2GSink(i8* %16), !dbg !263
  ret void, !dbg !264
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_41_good() #0 !dbg !265 {
entry:
  call void @goodB2G(), !dbg !266
  call void @goodG2B(), !dbg !267
  ret void, !dbg !268
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_41.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_002/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "badSink", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 29, type: !13)
!16 = !DILocation(line: 29, column: 21, scope: !10)
!17 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 32, type: !4)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 31, column: 5)
!19 = !DILocation(line: 32, column: 13, scope: !18)
!20 = !DILocalVariable(name: "n", scope: !18, file: !1, line: 32, type: !4)
!21 = !DILocation(line: 32, column: 16, scope: !18)
!22 = !DILocalVariable(name: "intVariable", scope: !18, file: !1, line: 32, type: !4)
!23 = !DILocation(line: 32, column: 19, scope: !18)
!24 = !DILocation(line: 33, column: 20, scope: !25)
!25 = distinct !DILexicalBlock(scope: !18, file: !1, line: 33, column: 13)
!26 = !DILocation(line: 33, column: 13, scope: !25)
!27 = !DILocation(line: 33, column: 36, scope: !25)
!28 = !DILocation(line: 33, column: 13, scope: !18)
!29 = !DILocation(line: 36, column: 25, scope: !30)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 34, column: 9)
!31 = !DILocation(line: 37, column: 20, scope: !32)
!32 = distinct !DILexicalBlock(scope: !30, file: !1, line: 37, column: 13)
!33 = !DILocation(line: 37, column: 18, scope: !32)
!34 = !DILocation(line: 37, column: 25, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !1, line: 37, column: 13)
!36 = !DILocation(line: 37, column: 29, scope: !35)
!37 = !DILocation(line: 37, column: 27, scope: !35)
!38 = !DILocation(line: 37, column: 13, scope: !32)
!39 = !DILocation(line: 40, column: 28, scope: !40)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 38, column: 13)
!41 = !DILocation(line: 41, column: 13, scope: !40)
!42 = !DILocation(line: 37, column: 33, scope: !35)
!43 = !DILocation(line: 37, column: 13, scope: !35)
!44 = distinct !{!44, !38, !45, !46}
!45 = !DILocation(line: 41, column: 13, scope: !32)
!46 = !{!"llvm.loop.mustprogress"}
!47 = !DILocation(line: 42, column: 26, scope: !30)
!48 = !DILocation(line: 42, column: 13, scope: !30)
!49 = !DILocation(line: 43, column: 9, scope: !30)
!50 = !DILocation(line: 45, column: 1, scope: !10)
!51 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_41_bad", scope: !1, file: !1, line: 47, type: !52, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{null}
!54 = !DILocalVariable(name: "data", scope: !51, file: !1, line: 49, type: !13)
!55 = !DILocation(line: 49, column: 12, scope: !51)
!56 = !DILocalVariable(name: "dataBuffer", scope: !51, file: !1, line: 50, type: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 100)
!60 = !DILocation(line: 50, column: 10, scope: !51)
!61 = !DILocation(line: 51, column: 12, scope: !51)
!62 = !DILocation(line: 51, column: 10, scope: !51)
!63 = !DILocalVariable(name: "dataLen", scope: !64, file: !1, line: 54, type: !65)
!64 = distinct !DILexicalBlock(scope: !51, file: !1, line: 52, column: 5)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !66, line: 46, baseType: !67)
!66 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!67 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!68 = !DILocation(line: 54, column: 16, scope: !64)
!69 = !DILocation(line: 54, column: 33, scope: !64)
!70 = !DILocation(line: 54, column: 26, scope: !64)
!71 = !DILocation(line: 56, column: 17, scope: !72)
!72 = distinct !DILexicalBlock(scope: !64, file: !1, line: 56, column: 13)
!73 = !DILocation(line: 56, column: 16, scope: !72)
!74 = !DILocation(line: 56, column: 25, scope: !72)
!75 = !DILocation(line: 56, column: 13, scope: !64)
!76 = !DILocation(line: 59, column: 23, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 59, column: 17)
!78 = distinct !DILexicalBlock(scope: !72, file: !1, line: 57, column: 9)
!79 = !DILocation(line: 59, column: 28, scope: !77)
!80 = !DILocation(line: 59, column: 27, scope: !77)
!81 = !DILocation(line: 59, column: 47, scope: !77)
!82 = !DILocation(line: 59, column: 46, scope: !77)
!83 = !DILocation(line: 59, column: 37, scope: !77)
!84 = !DILocation(line: 59, column: 57, scope: !77)
!85 = !DILocation(line: 59, column: 17, scope: !77)
!86 = !DILocation(line: 59, column: 64, scope: !77)
!87 = !DILocation(line: 59, column: 17, scope: !78)
!88 = !DILocation(line: 63, column: 34, scope: !89)
!89 = distinct !DILexicalBlock(scope: !77, file: !1, line: 60, column: 13)
!90 = !DILocation(line: 63, column: 27, scope: !89)
!91 = !DILocation(line: 63, column: 25, scope: !89)
!92 = !DILocation(line: 64, column: 21, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 64, column: 21)
!94 = !DILocation(line: 64, column: 29, scope: !93)
!95 = !DILocation(line: 64, column: 33, scope: !93)
!96 = !DILocation(line: 64, column: 36, scope: !93)
!97 = !DILocation(line: 64, column: 41, scope: !93)
!98 = !DILocation(line: 64, column: 48, scope: !93)
!99 = !DILocation(line: 64, column: 52, scope: !93)
!100 = !DILocation(line: 64, column: 21, scope: !89)
!101 = !DILocation(line: 66, column: 21, scope: !102)
!102 = distinct !DILexicalBlock(scope: !93, file: !1, line: 65, column: 17)
!103 = !DILocation(line: 66, column: 26, scope: !102)
!104 = !DILocation(line: 66, column: 33, scope: !102)
!105 = !DILocation(line: 66, column: 37, scope: !102)
!106 = !DILocation(line: 67, column: 17, scope: !102)
!107 = !DILocation(line: 68, column: 13, scope: !89)
!108 = !DILocation(line: 71, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !77, file: !1, line: 70, column: 13)
!110 = !DILocation(line: 73, column: 17, scope: !109)
!111 = !DILocation(line: 73, column: 22, scope: !109)
!112 = !DILocation(line: 73, column: 31, scope: !109)
!113 = !DILocation(line: 75, column: 9, scope: !78)
!114 = !DILocation(line: 77, column: 13, scope: !51)
!115 = !DILocation(line: 77, column: 5, scope: !51)
!116 = !DILocation(line: 78, column: 1, scope: !51)
!117 = distinct !DISubprogram(name: "goodG2BSink", scope: !1, file: !1, line: 85, type: !11, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!118 = !DILocalVariable(name: "data", arg: 1, scope: !117, file: !1, line: 85, type: !13)
!119 = !DILocation(line: 85, column: 25, scope: !117)
!120 = !DILocalVariable(name: "i", scope: !121, file: !1, line: 88, type: !4)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 87, column: 5)
!122 = !DILocation(line: 88, column: 13, scope: !121)
!123 = !DILocalVariable(name: "n", scope: !121, file: !1, line: 88, type: !4)
!124 = !DILocation(line: 88, column: 16, scope: !121)
!125 = !DILocalVariable(name: "intVariable", scope: !121, file: !1, line: 88, type: !4)
!126 = !DILocation(line: 88, column: 19, scope: !121)
!127 = !DILocation(line: 89, column: 20, scope: !128)
!128 = distinct !DILexicalBlock(scope: !121, file: !1, line: 89, column: 13)
!129 = !DILocation(line: 89, column: 13, scope: !128)
!130 = !DILocation(line: 89, column: 36, scope: !128)
!131 = !DILocation(line: 89, column: 13, scope: !121)
!132 = !DILocation(line: 92, column: 25, scope: !133)
!133 = distinct !DILexicalBlock(scope: !128, file: !1, line: 90, column: 9)
!134 = !DILocation(line: 93, column: 20, scope: !135)
!135 = distinct !DILexicalBlock(scope: !133, file: !1, line: 93, column: 13)
!136 = !DILocation(line: 93, column: 18, scope: !135)
!137 = !DILocation(line: 93, column: 25, scope: !138)
!138 = distinct !DILexicalBlock(scope: !135, file: !1, line: 93, column: 13)
!139 = !DILocation(line: 93, column: 29, scope: !138)
!140 = !DILocation(line: 93, column: 27, scope: !138)
!141 = !DILocation(line: 93, column: 13, scope: !135)
!142 = !DILocation(line: 96, column: 28, scope: !143)
!143 = distinct !DILexicalBlock(scope: !138, file: !1, line: 94, column: 13)
!144 = !DILocation(line: 97, column: 13, scope: !143)
!145 = !DILocation(line: 93, column: 33, scope: !138)
!146 = !DILocation(line: 93, column: 13, scope: !138)
!147 = distinct !{!147, !141, !148, !46}
!148 = !DILocation(line: 97, column: 13, scope: !135)
!149 = !DILocation(line: 98, column: 26, scope: !133)
!150 = !DILocation(line: 98, column: 13, scope: !133)
!151 = !DILocation(line: 99, column: 9, scope: !133)
!152 = !DILocation(line: 101, column: 1, scope: !117)
!153 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 103, type: !52, scopeLine: 104, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!154 = !DILocalVariable(name: "data", scope: !153, file: !1, line: 105, type: !13)
!155 = !DILocation(line: 105, column: 12, scope: !153)
!156 = !DILocalVariable(name: "dataBuffer", scope: !153, file: !1, line: 106, type: !57)
!157 = !DILocation(line: 106, column: 10, scope: !153)
!158 = !DILocation(line: 107, column: 12, scope: !153)
!159 = !DILocation(line: 107, column: 10, scope: !153)
!160 = !DILocation(line: 109, column: 12, scope: !153)
!161 = !DILocation(line: 109, column: 5, scope: !153)
!162 = !DILocation(line: 110, column: 17, scope: !153)
!163 = !DILocation(line: 110, column: 5, scope: !153)
!164 = !DILocation(line: 111, column: 1, scope: !153)
!165 = distinct !DISubprogram(name: "goodB2GSink", scope: !1, file: !1, line: 114, type: !11, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!166 = !DILocalVariable(name: "data", arg: 1, scope: !165, file: !1, line: 114, type: !13)
!167 = !DILocation(line: 114, column: 25, scope: !165)
!168 = !DILocalVariable(name: "i", scope: !169, file: !1, line: 117, type: !4)
!169 = distinct !DILexicalBlock(scope: !165, file: !1, line: 116, column: 5)
!170 = !DILocation(line: 117, column: 13, scope: !169)
!171 = !DILocalVariable(name: "n", scope: !169, file: !1, line: 117, type: !4)
!172 = !DILocation(line: 117, column: 16, scope: !169)
!173 = !DILocalVariable(name: "intVariable", scope: !169, file: !1, line: 117, type: !4)
!174 = !DILocation(line: 117, column: 19, scope: !169)
!175 = !DILocation(line: 118, column: 20, scope: !176)
!176 = distinct !DILexicalBlock(scope: !169, file: !1, line: 118, column: 13)
!177 = !DILocation(line: 118, column: 13, scope: !176)
!178 = !DILocation(line: 118, column: 36, scope: !176)
!179 = !DILocation(line: 118, column: 13, scope: !169)
!180 = !DILocation(line: 121, column: 17, scope: !181)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 121, column: 17)
!182 = distinct !DILexicalBlock(scope: !176, file: !1, line: 119, column: 9)
!183 = !DILocation(line: 121, column: 19, scope: !181)
!184 = !DILocation(line: 121, column: 17, scope: !182)
!185 = !DILocation(line: 123, column: 29, scope: !186)
!186 = distinct !DILexicalBlock(scope: !181, file: !1, line: 122, column: 13)
!187 = !DILocation(line: 124, column: 24, scope: !188)
!188 = distinct !DILexicalBlock(scope: !186, file: !1, line: 124, column: 17)
!189 = !DILocation(line: 124, column: 22, scope: !188)
!190 = !DILocation(line: 124, column: 29, scope: !191)
!191 = distinct !DILexicalBlock(scope: !188, file: !1, line: 124, column: 17)
!192 = !DILocation(line: 124, column: 33, scope: !191)
!193 = !DILocation(line: 124, column: 31, scope: !191)
!194 = !DILocation(line: 124, column: 17, scope: !188)
!195 = !DILocation(line: 127, column: 32, scope: !196)
!196 = distinct !DILexicalBlock(scope: !191, file: !1, line: 125, column: 17)
!197 = !DILocation(line: 128, column: 17, scope: !196)
!198 = !DILocation(line: 124, column: 37, scope: !191)
!199 = !DILocation(line: 124, column: 17, scope: !191)
!200 = distinct !{!200, !194, !201, !46}
!201 = !DILocation(line: 128, column: 17, scope: !188)
!202 = !DILocation(line: 129, column: 30, scope: !186)
!203 = !DILocation(line: 129, column: 17, scope: !186)
!204 = !DILocation(line: 130, column: 13, scope: !186)
!205 = !DILocation(line: 131, column: 9, scope: !182)
!206 = !DILocation(line: 133, column: 1, scope: !165)
!207 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 135, type: !52, scopeLine: 136, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!208 = !DILocalVariable(name: "data", scope: !207, file: !1, line: 137, type: !13)
!209 = !DILocation(line: 137, column: 12, scope: !207)
!210 = !DILocalVariable(name: "dataBuffer", scope: !207, file: !1, line: 138, type: !57)
!211 = !DILocation(line: 138, column: 10, scope: !207)
!212 = !DILocation(line: 139, column: 12, scope: !207)
!213 = !DILocation(line: 139, column: 10, scope: !207)
!214 = !DILocalVariable(name: "dataLen", scope: !215, file: !1, line: 142, type: !65)
!215 = distinct !DILexicalBlock(scope: !207, file: !1, line: 140, column: 5)
!216 = !DILocation(line: 142, column: 16, scope: !215)
!217 = !DILocation(line: 142, column: 33, scope: !215)
!218 = !DILocation(line: 142, column: 26, scope: !215)
!219 = !DILocation(line: 144, column: 17, scope: !220)
!220 = distinct !DILexicalBlock(scope: !215, file: !1, line: 144, column: 13)
!221 = !DILocation(line: 144, column: 16, scope: !220)
!222 = !DILocation(line: 144, column: 25, scope: !220)
!223 = !DILocation(line: 144, column: 13, scope: !215)
!224 = !DILocation(line: 147, column: 23, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 147, column: 17)
!226 = distinct !DILexicalBlock(scope: !220, file: !1, line: 145, column: 9)
!227 = !DILocation(line: 147, column: 28, scope: !225)
!228 = !DILocation(line: 147, column: 27, scope: !225)
!229 = !DILocation(line: 147, column: 47, scope: !225)
!230 = !DILocation(line: 147, column: 46, scope: !225)
!231 = !DILocation(line: 147, column: 37, scope: !225)
!232 = !DILocation(line: 147, column: 57, scope: !225)
!233 = !DILocation(line: 147, column: 17, scope: !225)
!234 = !DILocation(line: 147, column: 64, scope: !225)
!235 = !DILocation(line: 147, column: 17, scope: !226)
!236 = !DILocation(line: 151, column: 34, scope: !237)
!237 = distinct !DILexicalBlock(scope: !225, file: !1, line: 148, column: 13)
!238 = !DILocation(line: 151, column: 27, scope: !237)
!239 = !DILocation(line: 151, column: 25, scope: !237)
!240 = !DILocation(line: 152, column: 21, scope: !241)
!241 = distinct !DILexicalBlock(scope: !237, file: !1, line: 152, column: 21)
!242 = !DILocation(line: 152, column: 29, scope: !241)
!243 = !DILocation(line: 152, column: 33, scope: !241)
!244 = !DILocation(line: 152, column: 36, scope: !241)
!245 = !DILocation(line: 152, column: 41, scope: !241)
!246 = !DILocation(line: 152, column: 48, scope: !241)
!247 = !DILocation(line: 152, column: 52, scope: !241)
!248 = !DILocation(line: 152, column: 21, scope: !237)
!249 = !DILocation(line: 154, column: 21, scope: !250)
!250 = distinct !DILexicalBlock(scope: !241, file: !1, line: 153, column: 17)
!251 = !DILocation(line: 154, column: 26, scope: !250)
!252 = !DILocation(line: 154, column: 33, scope: !250)
!253 = !DILocation(line: 154, column: 37, scope: !250)
!254 = !DILocation(line: 155, column: 17, scope: !250)
!255 = !DILocation(line: 156, column: 13, scope: !237)
!256 = !DILocation(line: 159, column: 17, scope: !257)
!257 = distinct !DILexicalBlock(scope: !225, file: !1, line: 158, column: 13)
!258 = !DILocation(line: 161, column: 17, scope: !257)
!259 = !DILocation(line: 161, column: 22, scope: !257)
!260 = !DILocation(line: 161, column: 31, scope: !257)
!261 = !DILocation(line: 163, column: 9, scope: !226)
!262 = !DILocation(line: 165, column: 17, scope: !207)
!263 = !DILocation(line: 165, column: 5, scope: !207)
!264 = !DILocation(line: 166, column: 1, scope: !207)
!265 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_41_good", scope: !1, file: !1, line: 168, type: !52, scopeLine: 169, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!266 = !DILocation(line: 170, column: 5, scope: !265)
!267 = !DILocation(line: 171, column: 5, scope: !265)
!268 = !DILocation(line: 172, column: 1, scope: !265)
