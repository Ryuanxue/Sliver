; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_16.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_16.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_16_bad() #0 !dbg !10 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !13, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !21
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !22
  store i8* %arraydecay, i8** %data, align 8, !dbg !23
  br label %while.body, !dbg !24

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !25, metadata !DIExpression()), !dbg !31
  %1 = load i8*, i8** %data, align 8, !dbg !32
  %call = call i64 @strlen(i8* %1) #6, !dbg !33
  store i64 %call, i64* %dataLen, align 8, !dbg !31
  %2 = load i64, i64* %dataLen, align 8, !dbg !34
  %sub = sub i64 100, %2, !dbg !36
  %cmp = icmp ugt i64 %sub, 1, !dbg !37
  br i1 %cmp, label %if.then, label %if.end18, !dbg !38

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %data, align 8, !dbg !39
  %4 = load i64, i64* %dataLen, align 8, !dbg !42
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !43
  %5 = load i64, i64* %dataLen, align 8, !dbg !44
  %sub1 = sub i64 100, %5, !dbg !45
  %conv = trunc i64 %sub1 to i32, !dbg !46
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !47
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !48
  %cmp3 = icmp ne i8* %call2, null, !dbg !49
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !50

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !51
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !53
  store i64 %call6, i64* %dataLen, align 8, !dbg !54
  %8 = load i64, i64* %dataLen, align 8, !dbg !55
  %cmp7 = icmp ugt i64 %8, 0, !dbg !57
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !58

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !59
  %10 = load i64, i64* %dataLen, align 8, !dbg !60
  %sub9 = sub i64 %10, 1, !dbg !61
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !59
  %11 = load i8, i8* %arrayidx, align 1, !dbg !59
  %conv10 = sext i8 %11 to i32, !dbg !59
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !62
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !63

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !64
  %13 = load i64, i64* %dataLen, align 8, !dbg !66
  %sub14 = sub i64 %13, 1, !dbg !67
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !64
  store i8 0, i8* %arrayidx15, align 1, !dbg !68
  br label %if.end, !dbg !69

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !70

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !71
  %14 = load i8*, i8** %data, align 8, !dbg !73
  %15 = load i64, i64* %dataLen, align 8, !dbg !74
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !73
  store i8 0, i8* %arrayidx16, align 1, !dbg !75
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !76

if.end18:                                         ; preds = %if.end17, %while.body
  br label %while.end, !dbg !77

while.end:                                        ; preds = %if.end18
  br label %while.body19, !dbg !78

while.body19:                                     ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !79, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata i32* %n, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !85, metadata !DIExpression()), !dbg !86
  %16 = load i8*, i8** %data, align 8, !dbg !87
  %call20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !89
  %cmp21 = icmp eq i32 %call20, 1, !dbg !90
  br i1 %cmp21, label %if.then23, label %if.end27, !dbg !91

if.then23:                                        ; preds = %while.body19
  store i32 0, i32* %intVariable, align 4, !dbg !92
  store i32 0, i32* %i, align 4, !dbg !94
  br label %for.cond, !dbg !96

for.cond:                                         ; preds = %for.inc, %if.then23
  %17 = load i32, i32* %i, align 4, !dbg !97
  %18 = load i32, i32* %n, align 4, !dbg !99
  %cmp24 = icmp slt i32 %17, %18, !dbg !100
  br i1 %cmp24, label %for.body, label %for.end, !dbg !101

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !102
  %inc = add nsw i32 %19, 1, !dbg !102
  store i32 %inc, i32* %intVariable, align 4, !dbg !102
  br label %for.inc, !dbg !104

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !105
  %inc26 = add nsw i32 %20, 1, !dbg !105
  store i32 %inc26, i32* %i, align 4, !dbg !105
  br label %for.cond, !dbg !106, !llvm.loop !107

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !110
  call void @printIntLine(i32 %21), !dbg !111
  br label %if.end27, !dbg !112

if.end27:                                         ; preds = %for.end, %while.body19
  br label %while.end28, !dbg !113

while.end28:                                      ; preds = %if.end27
  ret void, !dbg !114
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
define dso_local void @goodB2G() #0 !dbg !115 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !118, metadata !DIExpression()), !dbg !119
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !119
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !119
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !120
  store i8* %arraydecay, i8** %data, align 8, !dbg !121
  br label %while.body, !dbg !122

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !123, metadata !DIExpression()), !dbg !126
  %1 = load i8*, i8** %data, align 8, !dbg !127
  %call = call i64 @strlen(i8* %1) #6, !dbg !128
  store i64 %call, i64* %dataLen, align 8, !dbg !126
  %2 = load i64, i64* %dataLen, align 8, !dbg !129
  %sub = sub i64 100, %2, !dbg !131
  %cmp = icmp ugt i64 %sub, 1, !dbg !132
  br i1 %cmp, label %if.then, label %if.end18, !dbg !133

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %data, align 8, !dbg !134
  %4 = load i64, i64* %dataLen, align 8, !dbg !137
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !138
  %5 = load i64, i64* %dataLen, align 8, !dbg !139
  %sub1 = sub i64 100, %5, !dbg !140
  %conv = trunc i64 %sub1 to i32, !dbg !141
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !142
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !143
  %cmp3 = icmp ne i8* %call2, null, !dbg !144
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !145

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !146
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !148
  store i64 %call6, i64* %dataLen, align 8, !dbg !149
  %8 = load i64, i64* %dataLen, align 8, !dbg !150
  %cmp7 = icmp ugt i64 %8, 0, !dbg !152
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !153

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !154
  %10 = load i64, i64* %dataLen, align 8, !dbg !155
  %sub9 = sub i64 %10, 1, !dbg !156
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !154
  %11 = load i8, i8* %arrayidx, align 1, !dbg !154
  %conv10 = sext i8 %11 to i32, !dbg !154
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !157
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !158

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !159
  %13 = load i64, i64* %dataLen, align 8, !dbg !161
  %sub14 = sub i64 %13, 1, !dbg !162
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !159
  store i8 0, i8* %arrayidx15, align 1, !dbg !163
  br label %if.end, !dbg !164

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !165

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !166
  %14 = load i8*, i8** %data, align 8, !dbg !168
  %15 = load i64, i64* %dataLen, align 8, !dbg !169
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !168
  store i8 0, i8* %arrayidx16, align 1, !dbg !170
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !171

if.end18:                                         ; preds = %if.end17, %while.body
  br label %while.end, !dbg !172

while.end:                                        ; preds = %if.end18
  br label %while.body19, !dbg !173

while.body19:                                     ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !174, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i32* %n, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !180, metadata !DIExpression()), !dbg !181
  %16 = load i8*, i8** %data, align 8, !dbg !182
  %call20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !184
  %cmp21 = icmp eq i32 %call20, 1, !dbg !185
  br i1 %cmp21, label %if.then23, label %if.end31, !dbg !186

if.then23:                                        ; preds = %while.body19
  %17 = load i32, i32* %n, align 4, !dbg !187
  %cmp24 = icmp slt i32 %17, 10000, !dbg !190
  br i1 %cmp24, label %if.then26, label %if.end30, !dbg !191

if.then26:                                        ; preds = %if.then23
  store i32 0, i32* %intVariable, align 4, !dbg !192
  store i32 0, i32* %i, align 4, !dbg !194
  br label %for.cond, !dbg !196

for.cond:                                         ; preds = %for.inc, %if.then26
  %18 = load i32, i32* %i, align 4, !dbg !197
  %19 = load i32, i32* %n, align 4, !dbg !199
  %cmp27 = icmp slt i32 %18, %19, !dbg !200
  br i1 %cmp27, label %for.body, label %for.end, !dbg !201

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !202
  %inc = add nsw i32 %20, 1, !dbg !202
  store i32 %inc, i32* %intVariable, align 4, !dbg !202
  br label %for.inc, !dbg !204

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !205
  %inc29 = add nsw i32 %21, 1, !dbg !205
  store i32 %inc29, i32* %i, align 4, !dbg !205
  br label %for.cond, !dbg !206, !llvm.loop !207

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !209
  call void @printIntLine(i32 %22), !dbg !210
  br label %if.end30, !dbg !211

if.end30:                                         ; preds = %for.end, %if.then23
  br label %if.end31, !dbg !212

if.end31:                                         ; preds = %if.end30, %while.body19
  br label %while.end32, !dbg !213

while.end32:                                      ; preds = %if.end31
  ret void, !dbg !214
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !215 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !218, metadata !DIExpression()), !dbg !219
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !219
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !219
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !220
  store i8* %arraydecay, i8** %data, align 8, !dbg !221
  br label %while.body, !dbg !222

while.body:                                       ; preds = %entry
  %1 = load i8*, i8** %data, align 8, !dbg !223
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !225
  br label %while.end, !dbg !226

while.end:                                        ; preds = %while.body
  br label %while.body1, !dbg !227

while.body1:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %i, metadata !228, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i32* %n, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !234, metadata !DIExpression()), !dbg !235
  %2 = load i8*, i8** %data, align 8, !dbg !236
  %call2 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !238
  %cmp = icmp eq i32 %call2, 1, !dbg !239
  br i1 %cmp, label %if.then, label %if.end, !dbg !240

if.then:                                          ; preds = %while.body1
  store i32 0, i32* %intVariable, align 4, !dbg !241
  store i32 0, i32* %i, align 4, !dbg !243
  br label %for.cond, !dbg !245

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !246
  %4 = load i32, i32* %n, align 4, !dbg !248
  %cmp3 = icmp slt i32 %3, %4, !dbg !249
  br i1 %cmp3, label %for.body, label %for.end, !dbg !250

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !251
  %inc = add nsw i32 %5, 1, !dbg !251
  store i32 %inc, i32* %intVariable, align 4, !dbg !251
  br label %for.inc, !dbg !253

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !254
  %inc4 = add nsw i32 %6, 1, !dbg !254
  store i32 %inc4, i32* %i, align 4, !dbg !254
  br label %for.cond, !dbg !255, !llvm.loop !256

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !258
  call void @printIntLine(i32 %7), !dbg !259
  br label %if.end, !dbg !260

if.end:                                           ; preds = %for.end, %while.body1
  br label %while.end5, !dbg !261

while.end5:                                       ; preds = %if.end
  ret void, !dbg !262
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_16_good() #0 !dbg !263 {
entry:
  call void @goodB2G(), !dbg !264
  call void @goodG2B(), !dbg !265
  ret void, !dbg !266
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_16.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_993/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_16_bad", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILocation(line: 34, column: 5, scope: !10)
!25 = !DILocalVariable(name: "dataLen", scope: !26, file: !1, line: 38, type: !28)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 36, column: 9)
!27 = distinct !DILexicalBlock(scope: !10, file: !1, line: 35, column: 5)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 38, column: 20, scope: !26)
!32 = !DILocation(line: 38, column: 37, scope: !26)
!33 = !DILocation(line: 38, column: 30, scope: !26)
!34 = !DILocation(line: 40, column: 21, scope: !35)
!35 = distinct !DILexicalBlock(scope: !26, file: !1, line: 40, column: 17)
!36 = !DILocation(line: 40, column: 20, scope: !35)
!37 = !DILocation(line: 40, column: 29, scope: !35)
!38 = !DILocation(line: 40, column: 17, scope: !26)
!39 = !DILocation(line: 43, column: 27, scope: !40)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 43, column: 21)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 41, column: 13)
!42 = !DILocation(line: 43, column: 32, scope: !40)
!43 = !DILocation(line: 43, column: 31, scope: !40)
!44 = !DILocation(line: 43, column: 51, scope: !40)
!45 = !DILocation(line: 43, column: 50, scope: !40)
!46 = !DILocation(line: 43, column: 41, scope: !40)
!47 = !DILocation(line: 43, column: 61, scope: !40)
!48 = !DILocation(line: 43, column: 21, scope: !40)
!49 = !DILocation(line: 43, column: 68, scope: !40)
!50 = !DILocation(line: 43, column: 21, scope: !41)
!51 = !DILocation(line: 47, column: 38, scope: !52)
!52 = distinct !DILexicalBlock(scope: !40, file: !1, line: 44, column: 17)
!53 = !DILocation(line: 47, column: 31, scope: !52)
!54 = !DILocation(line: 47, column: 29, scope: !52)
!55 = !DILocation(line: 48, column: 25, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !1, line: 48, column: 25)
!57 = !DILocation(line: 48, column: 33, scope: !56)
!58 = !DILocation(line: 48, column: 37, scope: !56)
!59 = !DILocation(line: 48, column: 40, scope: !56)
!60 = !DILocation(line: 48, column: 45, scope: !56)
!61 = !DILocation(line: 48, column: 52, scope: !56)
!62 = !DILocation(line: 48, column: 56, scope: !56)
!63 = !DILocation(line: 48, column: 25, scope: !52)
!64 = !DILocation(line: 50, column: 25, scope: !65)
!65 = distinct !DILexicalBlock(scope: !56, file: !1, line: 49, column: 21)
!66 = !DILocation(line: 50, column: 30, scope: !65)
!67 = !DILocation(line: 50, column: 37, scope: !65)
!68 = !DILocation(line: 50, column: 41, scope: !65)
!69 = !DILocation(line: 51, column: 21, scope: !65)
!70 = !DILocation(line: 52, column: 17, scope: !52)
!71 = !DILocation(line: 55, column: 21, scope: !72)
!72 = distinct !DILexicalBlock(scope: !40, file: !1, line: 54, column: 17)
!73 = !DILocation(line: 57, column: 21, scope: !72)
!74 = !DILocation(line: 57, column: 26, scope: !72)
!75 = !DILocation(line: 57, column: 35, scope: !72)
!76 = !DILocation(line: 59, column: 13, scope: !41)
!77 = !DILocation(line: 61, column: 9, scope: !27)
!78 = !DILocation(line: 63, column: 5, scope: !10)
!79 = !DILocalVariable(name: "i", scope: !80, file: !1, line: 66, type: !4)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 65, column: 9)
!81 = distinct !DILexicalBlock(scope: !10, file: !1, line: 64, column: 5)
!82 = !DILocation(line: 66, column: 17, scope: !80)
!83 = !DILocalVariable(name: "n", scope: !80, file: !1, line: 66, type: !4)
!84 = !DILocation(line: 66, column: 20, scope: !80)
!85 = !DILocalVariable(name: "intVariable", scope: !80, file: !1, line: 66, type: !4)
!86 = !DILocation(line: 66, column: 23, scope: !80)
!87 = !DILocation(line: 67, column: 24, scope: !88)
!88 = distinct !DILexicalBlock(scope: !80, file: !1, line: 67, column: 17)
!89 = !DILocation(line: 67, column: 17, scope: !88)
!90 = !DILocation(line: 67, column: 40, scope: !88)
!91 = !DILocation(line: 67, column: 17, scope: !80)
!92 = !DILocation(line: 70, column: 29, scope: !93)
!93 = distinct !DILexicalBlock(scope: !88, file: !1, line: 68, column: 13)
!94 = !DILocation(line: 71, column: 24, scope: !95)
!95 = distinct !DILexicalBlock(scope: !93, file: !1, line: 71, column: 17)
!96 = !DILocation(line: 71, column: 22, scope: !95)
!97 = !DILocation(line: 71, column: 29, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 71, column: 17)
!99 = !DILocation(line: 71, column: 33, scope: !98)
!100 = !DILocation(line: 71, column: 31, scope: !98)
!101 = !DILocation(line: 71, column: 17, scope: !95)
!102 = !DILocation(line: 74, column: 32, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 72, column: 17)
!104 = !DILocation(line: 75, column: 17, scope: !103)
!105 = !DILocation(line: 71, column: 37, scope: !98)
!106 = !DILocation(line: 71, column: 17, scope: !98)
!107 = distinct !{!107, !101, !108, !109}
!108 = !DILocation(line: 75, column: 17, scope: !95)
!109 = !{!"llvm.loop.mustprogress"}
!110 = !DILocation(line: 76, column: 30, scope: !93)
!111 = !DILocation(line: 76, column: 17, scope: !93)
!112 = !DILocation(line: 77, column: 13, scope: !93)
!113 = !DILocation(line: 79, column: 9, scope: !81)
!114 = !DILocation(line: 81, column: 1, scope: !10)
!115 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 88, type: !11, scopeLine: 89, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!116 = !DILocalVariable(name: "data", scope: !115, file: !1, line: 90, type: !14)
!117 = !DILocation(line: 90, column: 12, scope: !115)
!118 = !DILocalVariable(name: "dataBuffer", scope: !115, file: !1, line: 91, type: !18)
!119 = !DILocation(line: 91, column: 10, scope: !115)
!120 = !DILocation(line: 92, column: 12, scope: !115)
!121 = !DILocation(line: 92, column: 10, scope: !115)
!122 = !DILocation(line: 93, column: 5, scope: !115)
!123 = !DILocalVariable(name: "dataLen", scope: !124, file: !1, line: 97, type: !28)
!124 = distinct !DILexicalBlock(scope: !125, file: !1, line: 95, column: 9)
!125 = distinct !DILexicalBlock(scope: !115, file: !1, line: 94, column: 5)
!126 = !DILocation(line: 97, column: 20, scope: !124)
!127 = !DILocation(line: 97, column: 37, scope: !124)
!128 = !DILocation(line: 97, column: 30, scope: !124)
!129 = !DILocation(line: 99, column: 21, scope: !130)
!130 = distinct !DILexicalBlock(scope: !124, file: !1, line: 99, column: 17)
!131 = !DILocation(line: 99, column: 20, scope: !130)
!132 = !DILocation(line: 99, column: 29, scope: !130)
!133 = !DILocation(line: 99, column: 17, scope: !124)
!134 = !DILocation(line: 102, column: 27, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !1, line: 102, column: 21)
!136 = distinct !DILexicalBlock(scope: !130, file: !1, line: 100, column: 13)
!137 = !DILocation(line: 102, column: 32, scope: !135)
!138 = !DILocation(line: 102, column: 31, scope: !135)
!139 = !DILocation(line: 102, column: 51, scope: !135)
!140 = !DILocation(line: 102, column: 50, scope: !135)
!141 = !DILocation(line: 102, column: 41, scope: !135)
!142 = !DILocation(line: 102, column: 61, scope: !135)
!143 = !DILocation(line: 102, column: 21, scope: !135)
!144 = !DILocation(line: 102, column: 68, scope: !135)
!145 = !DILocation(line: 102, column: 21, scope: !136)
!146 = !DILocation(line: 106, column: 38, scope: !147)
!147 = distinct !DILexicalBlock(scope: !135, file: !1, line: 103, column: 17)
!148 = !DILocation(line: 106, column: 31, scope: !147)
!149 = !DILocation(line: 106, column: 29, scope: !147)
!150 = !DILocation(line: 107, column: 25, scope: !151)
!151 = distinct !DILexicalBlock(scope: !147, file: !1, line: 107, column: 25)
!152 = !DILocation(line: 107, column: 33, scope: !151)
!153 = !DILocation(line: 107, column: 37, scope: !151)
!154 = !DILocation(line: 107, column: 40, scope: !151)
!155 = !DILocation(line: 107, column: 45, scope: !151)
!156 = !DILocation(line: 107, column: 52, scope: !151)
!157 = !DILocation(line: 107, column: 56, scope: !151)
!158 = !DILocation(line: 107, column: 25, scope: !147)
!159 = !DILocation(line: 109, column: 25, scope: !160)
!160 = distinct !DILexicalBlock(scope: !151, file: !1, line: 108, column: 21)
!161 = !DILocation(line: 109, column: 30, scope: !160)
!162 = !DILocation(line: 109, column: 37, scope: !160)
!163 = !DILocation(line: 109, column: 41, scope: !160)
!164 = !DILocation(line: 110, column: 21, scope: !160)
!165 = !DILocation(line: 111, column: 17, scope: !147)
!166 = !DILocation(line: 114, column: 21, scope: !167)
!167 = distinct !DILexicalBlock(scope: !135, file: !1, line: 113, column: 17)
!168 = !DILocation(line: 116, column: 21, scope: !167)
!169 = !DILocation(line: 116, column: 26, scope: !167)
!170 = !DILocation(line: 116, column: 35, scope: !167)
!171 = !DILocation(line: 118, column: 13, scope: !136)
!172 = !DILocation(line: 120, column: 9, scope: !125)
!173 = !DILocation(line: 122, column: 5, scope: !115)
!174 = !DILocalVariable(name: "i", scope: !175, file: !1, line: 125, type: !4)
!175 = distinct !DILexicalBlock(scope: !176, file: !1, line: 124, column: 9)
!176 = distinct !DILexicalBlock(scope: !115, file: !1, line: 123, column: 5)
!177 = !DILocation(line: 125, column: 17, scope: !175)
!178 = !DILocalVariable(name: "n", scope: !175, file: !1, line: 125, type: !4)
!179 = !DILocation(line: 125, column: 20, scope: !175)
!180 = !DILocalVariable(name: "intVariable", scope: !175, file: !1, line: 125, type: !4)
!181 = !DILocation(line: 125, column: 23, scope: !175)
!182 = !DILocation(line: 126, column: 24, scope: !183)
!183 = distinct !DILexicalBlock(scope: !175, file: !1, line: 126, column: 17)
!184 = !DILocation(line: 126, column: 17, scope: !183)
!185 = !DILocation(line: 126, column: 40, scope: !183)
!186 = !DILocation(line: 126, column: 17, scope: !175)
!187 = !DILocation(line: 129, column: 21, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 129, column: 21)
!189 = distinct !DILexicalBlock(scope: !183, file: !1, line: 127, column: 13)
!190 = !DILocation(line: 129, column: 23, scope: !188)
!191 = !DILocation(line: 129, column: 21, scope: !189)
!192 = !DILocation(line: 131, column: 33, scope: !193)
!193 = distinct !DILexicalBlock(scope: !188, file: !1, line: 130, column: 17)
!194 = !DILocation(line: 132, column: 28, scope: !195)
!195 = distinct !DILexicalBlock(scope: !193, file: !1, line: 132, column: 21)
!196 = !DILocation(line: 132, column: 26, scope: !195)
!197 = !DILocation(line: 132, column: 33, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !1, line: 132, column: 21)
!199 = !DILocation(line: 132, column: 37, scope: !198)
!200 = !DILocation(line: 132, column: 35, scope: !198)
!201 = !DILocation(line: 132, column: 21, scope: !195)
!202 = !DILocation(line: 135, column: 36, scope: !203)
!203 = distinct !DILexicalBlock(scope: !198, file: !1, line: 133, column: 21)
!204 = !DILocation(line: 136, column: 21, scope: !203)
!205 = !DILocation(line: 132, column: 41, scope: !198)
!206 = !DILocation(line: 132, column: 21, scope: !198)
!207 = distinct !{!207, !201, !208, !109}
!208 = !DILocation(line: 136, column: 21, scope: !195)
!209 = !DILocation(line: 137, column: 34, scope: !193)
!210 = !DILocation(line: 137, column: 21, scope: !193)
!211 = !DILocation(line: 138, column: 17, scope: !193)
!212 = !DILocation(line: 139, column: 13, scope: !189)
!213 = !DILocation(line: 141, column: 9, scope: !176)
!214 = !DILocation(line: 143, column: 1, scope: !115)
!215 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 146, type: !11, scopeLine: 147, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!216 = !DILocalVariable(name: "data", scope: !215, file: !1, line: 148, type: !14)
!217 = !DILocation(line: 148, column: 12, scope: !215)
!218 = !DILocalVariable(name: "dataBuffer", scope: !215, file: !1, line: 149, type: !18)
!219 = !DILocation(line: 149, column: 10, scope: !215)
!220 = !DILocation(line: 150, column: 12, scope: !215)
!221 = !DILocation(line: 150, column: 10, scope: !215)
!222 = !DILocation(line: 151, column: 5, scope: !215)
!223 = !DILocation(line: 154, column: 16, scope: !224)
!224 = distinct !DILexicalBlock(scope: !215, file: !1, line: 152, column: 5)
!225 = !DILocation(line: 154, column: 9, scope: !224)
!226 = !DILocation(line: 155, column: 9, scope: !224)
!227 = !DILocation(line: 157, column: 5, scope: !215)
!228 = !DILocalVariable(name: "i", scope: !229, file: !1, line: 160, type: !4)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 159, column: 9)
!230 = distinct !DILexicalBlock(scope: !215, file: !1, line: 158, column: 5)
!231 = !DILocation(line: 160, column: 17, scope: !229)
!232 = !DILocalVariable(name: "n", scope: !229, file: !1, line: 160, type: !4)
!233 = !DILocation(line: 160, column: 20, scope: !229)
!234 = !DILocalVariable(name: "intVariable", scope: !229, file: !1, line: 160, type: !4)
!235 = !DILocation(line: 160, column: 23, scope: !229)
!236 = !DILocation(line: 161, column: 24, scope: !237)
!237 = distinct !DILexicalBlock(scope: !229, file: !1, line: 161, column: 17)
!238 = !DILocation(line: 161, column: 17, scope: !237)
!239 = !DILocation(line: 161, column: 40, scope: !237)
!240 = !DILocation(line: 161, column: 17, scope: !229)
!241 = !DILocation(line: 164, column: 29, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !1, line: 162, column: 13)
!243 = !DILocation(line: 165, column: 24, scope: !244)
!244 = distinct !DILexicalBlock(scope: !242, file: !1, line: 165, column: 17)
!245 = !DILocation(line: 165, column: 22, scope: !244)
!246 = !DILocation(line: 165, column: 29, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !1, line: 165, column: 17)
!248 = !DILocation(line: 165, column: 33, scope: !247)
!249 = !DILocation(line: 165, column: 31, scope: !247)
!250 = !DILocation(line: 165, column: 17, scope: !244)
!251 = !DILocation(line: 168, column: 32, scope: !252)
!252 = distinct !DILexicalBlock(scope: !247, file: !1, line: 166, column: 17)
!253 = !DILocation(line: 169, column: 17, scope: !252)
!254 = !DILocation(line: 165, column: 37, scope: !247)
!255 = !DILocation(line: 165, column: 17, scope: !247)
!256 = distinct !{!256, !250, !257, !109}
!257 = !DILocation(line: 169, column: 17, scope: !244)
!258 = !DILocation(line: 170, column: 30, scope: !242)
!259 = !DILocation(line: 170, column: 17, scope: !242)
!260 = !DILocation(line: 171, column: 13, scope: !242)
!261 = !DILocation(line: 173, column: 9, scope: !230)
!262 = !DILocation(line: 175, column: 1, scope: !215)
!263 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_16_good", scope: !1, file: !1, line: 177, type: !11, scopeLine: 178, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!264 = !DILocation(line: 179, column: 5, scope: !263)
!265 = !DILocation(line: 180, column: 5, scope: !263)
!266 = !DILocation(line: 181, column: 1, scope: !263)
