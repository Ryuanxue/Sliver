; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_18.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_18.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_18_bad() #0 !dbg !10 {
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
  br label %source, !dbg !24

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !25), !dbg !26
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !27, metadata !DIExpression()), !dbg !32
  %1 = load i8*, i8** %data, align 8, !dbg !33
  %call = call i64 @strlen(i8* %1) #6, !dbg !34
  store i64 %call, i64* %dataLen, align 8, !dbg !32
  %2 = load i64, i64* %dataLen, align 8, !dbg !35
  %sub = sub i64 100, %2, !dbg !37
  %cmp = icmp ugt i64 %sub, 1, !dbg !38
  br i1 %cmp, label %if.then, label %if.end18, !dbg !39

if.then:                                          ; preds = %source
  %3 = load i8*, i8** %data, align 8, !dbg !40
  %4 = load i64, i64* %dataLen, align 8, !dbg !43
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !44
  %5 = load i64, i64* %dataLen, align 8, !dbg !45
  %sub1 = sub i64 100, %5, !dbg !46
  %conv = trunc i64 %sub1 to i32, !dbg !47
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !48
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !49
  %cmp3 = icmp ne i8* %call2, null, !dbg !50
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !51

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !52
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !54
  store i64 %call6, i64* %dataLen, align 8, !dbg !55
  %8 = load i64, i64* %dataLen, align 8, !dbg !56
  %cmp7 = icmp ugt i64 %8, 0, !dbg !58
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !59

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !60
  %10 = load i64, i64* %dataLen, align 8, !dbg !61
  %sub9 = sub i64 %10, 1, !dbg !62
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !60
  %11 = load i8, i8* %arrayidx, align 1, !dbg !60
  %conv10 = sext i8 %11 to i32, !dbg !60
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !63
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !64

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !65
  %13 = load i64, i64* %dataLen, align 8, !dbg !67
  %sub14 = sub i64 %13, 1, !dbg !68
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !65
  store i8 0, i8* %arrayidx15, align 1, !dbg !69
  br label %if.end, !dbg !70

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !71

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !72
  %14 = load i8*, i8** %data, align 8, !dbg !74
  %15 = load i64, i64* %dataLen, align 8, !dbg !75
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !74
  store i8 0, i8* %arrayidx16, align 1, !dbg !76
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !77

if.end18:                                         ; preds = %if.end17, %source
  br label %sink, !dbg !78

sink:                                             ; preds = %if.end18
  call void @llvm.dbg.label(metadata !79), !dbg !80
  call void @llvm.dbg.declare(metadata i32* %i, metadata !81, metadata !DIExpression()), !dbg !83
  call void @llvm.dbg.declare(metadata i32* %n, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !86, metadata !DIExpression()), !dbg !87
  %16 = load i8*, i8** %data, align 8, !dbg !88
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !90
  %cmp20 = icmp eq i32 %call19, 1, !dbg !91
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !92

if.then22:                                        ; preds = %sink
  store i32 0, i32* %intVariable, align 4, !dbg !93
  store i32 0, i32* %i, align 4, !dbg !95
  br label %for.cond, !dbg !97

for.cond:                                         ; preds = %for.inc, %if.then22
  %17 = load i32, i32* %i, align 4, !dbg !98
  %18 = load i32, i32* %n, align 4, !dbg !100
  %cmp23 = icmp slt i32 %17, %18, !dbg !101
  br i1 %cmp23, label %for.body, label %for.end, !dbg !102

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !103
  %inc = add nsw i32 %19, 1, !dbg !103
  store i32 %inc, i32* %intVariable, align 4, !dbg !103
  br label %for.inc, !dbg !105

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !106
  %inc25 = add nsw i32 %20, 1, !dbg !106
  store i32 %inc25, i32* %i, align 4, !dbg !106
  br label %for.cond, !dbg !107, !llvm.loop !108

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !111
  call void @printIntLine(i32 %21), !dbg !112
  br label %if.end26, !dbg !113

if.end26:                                         ; preds = %for.end, %sink
  ret void, !dbg !114
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
  br label %source, !dbg !122

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !123), !dbg !124
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !125, metadata !DIExpression()), !dbg !127
  %1 = load i8*, i8** %data, align 8, !dbg !128
  %call = call i64 @strlen(i8* %1) #6, !dbg !129
  store i64 %call, i64* %dataLen, align 8, !dbg !127
  %2 = load i64, i64* %dataLen, align 8, !dbg !130
  %sub = sub i64 100, %2, !dbg !132
  %cmp = icmp ugt i64 %sub, 1, !dbg !133
  br i1 %cmp, label %if.then, label %if.end18, !dbg !134

if.then:                                          ; preds = %source
  %3 = load i8*, i8** %data, align 8, !dbg !135
  %4 = load i64, i64* %dataLen, align 8, !dbg !138
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !139
  %5 = load i64, i64* %dataLen, align 8, !dbg !140
  %sub1 = sub i64 100, %5, !dbg !141
  %conv = trunc i64 %sub1 to i32, !dbg !142
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !143
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !144
  %cmp3 = icmp ne i8* %call2, null, !dbg !145
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !146

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !147
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !149
  store i64 %call6, i64* %dataLen, align 8, !dbg !150
  %8 = load i64, i64* %dataLen, align 8, !dbg !151
  %cmp7 = icmp ugt i64 %8, 0, !dbg !153
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !154

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !155
  %10 = load i64, i64* %dataLen, align 8, !dbg !156
  %sub9 = sub i64 %10, 1, !dbg !157
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !155
  %11 = load i8, i8* %arrayidx, align 1, !dbg !155
  %conv10 = sext i8 %11 to i32, !dbg !155
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !158
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !159

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !160
  %13 = load i64, i64* %dataLen, align 8, !dbg !162
  %sub14 = sub i64 %13, 1, !dbg !163
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !160
  store i8 0, i8* %arrayidx15, align 1, !dbg !164
  br label %if.end, !dbg !165

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !166

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !167
  %14 = load i8*, i8** %data, align 8, !dbg !169
  %15 = load i64, i64* %dataLen, align 8, !dbg !170
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !169
  store i8 0, i8* %arrayidx16, align 1, !dbg !171
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !172

if.end18:                                         ; preds = %if.end17, %source
  br label %sink, !dbg !173

sink:                                             ; preds = %if.end18
  call void @llvm.dbg.label(metadata !174), !dbg !175
  call void @llvm.dbg.declare(metadata i32* %i, metadata !176, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata i32* %n, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !181, metadata !DIExpression()), !dbg !182
  %16 = load i8*, i8** %data, align 8, !dbg !183
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !185
  %cmp20 = icmp eq i32 %call19, 1, !dbg !186
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !187

if.then22:                                        ; preds = %sink
  %17 = load i32, i32* %n, align 4, !dbg !188
  %cmp23 = icmp slt i32 %17, 10000, !dbg !191
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !192

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !193
  store i32 0, i32* %i, align 4, !dbg !195
  br label %for.cond, !dbg !197

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %i, align 4, !dbg !198
  %19 = load i32, i32* %n, align 4, !dbg !200
  %cmp26 = icmp slt i32 %18, %19, !dbg !201
  br i1 %cmp26, label %for.body, label %for.end, !dbg !202

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !203
  %inc = add nsw i32 %20, 1, !dbg !203
  store i32 %inc, i32* %intVariable, align 4, !dbg !203
  br label %for.inc, !dbg !205

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !206
  %inc28 = add nsw i32 %21, 1, !dbg !206
  store i32 %inc28, i32* %i, align 4, !dbg !206
  br label %for.cond, !dbg !207, !llvm.loop !208

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !210
  call void @printIntLine(i32 %22), !dbg !211
  br label %if.end29, !dbg !212

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !213

if.end30:                                         ; preds = %if.end29, %sink
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
  br label %source, !dbg !222

source:                                           ; preds = %entry
  call void @llvm.dbg.label(metadata !223), !dbg !224
  %1 = load i8*, i8** %data, align 8, !dbg !225
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !226
  br label %sink, !dbg !227

sink:                                             ; preds = %source
  call void @llvm.dbg.label(metadata !228), !dbg !229
  call void @llvm.dbg.declare(metadata i32* %i, metadata !230, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata i32* %n, metadata !233, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !235, metadata !DIExpression()), !dbg !236
  %2 = load i8*, i8** %data, align 8, !dbg !237
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !239
  %cmp = icmp eq i32 %call1, 1, !dbg !240
  br i1 %cmp, label %if.then, label %if.end, !dbg !241

if.then:                                          ; preds = %sink
  store i32 0, i32* %intVariable, align 4, !dbg !242
  store i32 0, i32* %i, align 4, !dbg !244
  br label %for.cond, !dbg !246

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !247
  %4 = load i32, i32* %n, align 4, !dbg !249
  %cmp2 = icmp slt i32 %3, %4, !dbg !250
  br i1 %cmp2, label %for.body, label %for.end, !dbg !251

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !252
  %inc = add nsw i32 %5, 1, !dbg !252
  store i32 %inc, i32* %intVariable, align 4, !dbg !252
  br label %for.inc, !dbg !254

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !255
  %inc3 = add nsw i32 %6, 1, !dbg !255
  store i32 %inc3, i32* %i, align 4, !dbg !255
  br label %for.cond, !dbg !256, !llvm.loop !257

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !259
  call void @printIntLine(i32 %7), !dbg !260
  br label %if.end, !dbg !261

if.end:                                           ; preds = %for.end, %sink
  ret void, !dbg !262
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_18_good() #0 !dbg !263 {
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_18.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_995/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_18_bad", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!25 = !DILabel(scope: !10, name: "source", file: !1, line: 35)
!26 = !DILocation(line: 35, column: 1, scope: !10)
!27 = !DILocalVariable(name: "dataLen", scope: !28, file: !1, line: 38, type: !29)
!28 = distinct !DILexicalBlock(scope: !10, file: !1, line: 36, column: 5)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 46, baseType: !31)
!30 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!31 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!32 = !DILocation(line: 38, column: 16, scope: !28)
!33 = !DILocation(line: 38, column: 33, scope: !28)
!34 = !DILocation(line: 38, column: 26, scope: !28)
!35 = !DILocation(line: 40, column: 17, scope: !36)
!36 = distinct !DILexicalBlock(scope: !28, file: !1, line: 40, column: 13)
!37 = !DILocation(line: 40, column: 16, scope: !36)
!38 = !DILocation(line: 40, column: 25, scope: !36)
!39 = !DILocation(line: 40, column: 13, scope: !28)
!40 = !DILocation(line: 43, column: 23, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 43, column: 17)
!42 = distinct !DILexicalBlock(scope: !36, file: !1, line: 41, column: 9)
!43 = !DILocation(line: 43, column: 28, scope: !41)
!44 = !DILocation(line: 43, column: 27, scope: !41)
!45 = !DILocation(line: 43, column: 47, scope: !41)
!46 = !DILocation(line: 43, column: 46, scope: !41)
!47 = !DILocation(line: 43, column: 37, scope: !41)
!48 = !DILocation(line: 43, column: 57, scope: !41)
!49 = !DILocation(line: 43, column: 17, scope: !41)
!50 = !DILocation(line: 43, column: 64, scope: !41)
!51 = !DILocation(line: 43, column: 17, scope: !42)
!52 = !DILocation(line: 47, column: 34, scope: !53)
!53 = distinct !DILexicalBlock(scope: !41, file: !1, line: 44, column: 13)
!54 = !DILocation(line: 47, column: 27, scope: !53)
!55 = !DILocation(line: 47, column: 25, scope: !53)
!56 = !DILocation(line: 48, column: 21, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 48, column: 21)
!58 = !DILocation(line: 48, column: 29, scope: !57)
!59 = !DILocation(line: 48, column: 33, scope: !57)
!60 = !DILocation(line: 48, column: 36, scope: !57)
!61 = !DILocation(line: 48, column: 41, scope: !57)
!62 = !DILocation(line: 48, column: 48, scope: !57)
!63 = !DILocation(line: 48, column: 52, scope: !57)
!64 = !DILocation(line: 48, column: 21, scope: !53)
!65 = !DILocation(line: 50, column: 21, scope: !66)
!66 = distinct !DILexicalBlock(scope: !57, file: !1, line: 49, column: 17)
!67 = !DILocation(line: 50, column: 26, scope: !66)
!68 = !DILocation(line: 50, column: 33, scope: !66)
!69 = !DILocation(line: 50, column: 37, scope: !66)
!70 = !DILocation(line: 51, column: 17, scope: !66)
!71 = !DILocation(line: 52, column: 13, scope: !53)
!72 = !DILocation(line: 55, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !41, file: !1, line: 54, column: 13)
!74 = !DILocation(line: 57, column: 17, scope: !73)
!75 = !DILocation(line: 57, column: 22, scope: !73)
!76 = !DILocation(line: 57, column: 31, scope: !73)
!77 = !DILocation(line: 59, column: 9, scope: !42)
!78 = !DILocation(line: 61, column: 5, scope: !10)
!79 = !DILabel(scope: !10, name: "sink", file: !1, line: 62)
!80 = !DILocation(line: 62, column: 1, scope: !10)
!81 = !DILocalVariable(name: "i", scope: !82, file: !1, line: 64, type: !4)
!82 = distinct !DILexicalBlock(scope: !10, file: !1, line: 63, column: 5)
!83 = !DILocation(line: 64, column: 13, scope: !82)
!84 = !DILocalVariable(name: "n", scope: !82, file: !1, line: 64, type: !4)
!85 = !DILocation(line: 64, column: 16, scope: !82)
!86 = !DILocalVariable(name: "intVariable", scope: !82, file: !1, line: 64, type: !4)
!87 = !DILocation(line: 64, column: 19, scope: !82)
!88 = !DILocation(line: 65, column: 20, scope: !89)
!89 = distinct !DILexicalBlock(scope: !82, file: !1, line: 65, column: 13)
!90 = !DILocation(line: 65, column: 13, scope: !89)
!91 = !DILocation(line: 65, column: 36, scope: !89)
!92 = !DILocation(line: 65, column: 13, scope: !82)
!93 = !DILocation(line: 68, column: 25, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !1, line: 66, column: 9)
!95 = !DILocation(line: 69, column: 20, scope: !96)
!96 = distinct !DILexicalBlock(scope: !94, file: !1, line: 69, column: 13)
!97 = !DILocation(line: 69, column: 18, scope: !96)
!98 = !DILocation(line: 69, column: 25, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 69, column: 13)
!100 = !DILocation(line: 69, column: 29, scope: !99)
!101 = !DILocation(line: 69, column: 27, scope: !99)
!102 = !DILocation(line: 69, column: 13, scope: !96)
!103 = !DILocation(line: 72, column: 28, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 70, column: 13)
!105 = !DILocation(line: 73, column: 13, scope: !104)
!106 = !DILocation(line: 69, column: 33, scope: !99)
!107 = !DILocation(line: 69, column: 13, scope: !99)
!108 = distinct !{!108, !102, !109, !110}
!109 = !DILocation(line: 73, column: 13, scope: !96)
!110 = !{!"llvm.loop.mustprogress"}
!111 = !DILocation(line: 74, column: 26, scope: !94)
!112 = !DILocation(line: 74, column: 13, scope: !94)
!113 = !DILocation(line: 75, column: 9, scope: !94)
!114 = !DILocation(line: 77, column: 1, scope: !10)
!115 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 84, type: !11, scopeLine: 85, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!116 = !DILocalVariable(name: "data", scope: !115, file: !1, line: 86, type: !14)
!117 = !DILocation(line: 86, column: 12, scope: !115)
!118 = !DILocalVariable(name: "dataBuffer", scope: !115, file: !1, line: 87, type: !18)
!119 = !DILocation(line: 87, column: 10, scope: !115)
!120 = !DILocation(line: 88, column: 12, scope: !115)
!121 = !DILocation(line: 88, column: 10, scope: !115)
!122 = !DILocation(line: 89, column: 5, scope: !115)
!123 = !DILabel(scope: !115, name: "source", file: !1, line: 90)
!124 = !DILocation(line: 90, column: 1, scope: !115)
!125 = !DILocalVariable(name: "dataLen", scope: !126, file: !1, line: 93, type: !29)
!126 = distinct !DILexicalBlock(scope: !115, file: !1, line: 91, column: 5)
!127 = !DILocation(line: 93, column: 16, scope: !126)
!128 = !DILocation(line: 93, column: 33, scope: !126)
!129 = !DILocation(line: 93, column: 26, scope: !126)
!130 = !DILocation(line: 95, column: 17, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !1, line: 95, column: 13)
!132 = !DILocation(line: 95, column: 16, scope: !131)
!133 = !DILocation(line: 95, column: 25, scope: !131)
!134 = !DILocation(line: 95, column: 13, scope: !126)
!135 = !DILocation(line: 98, column: 23, scope: !136)
!136 = distinct !DILexicalBlock(scope: !137, file: !1, line: 98, column: 17)
!137 = distinct !DILexicalBlock(scope: !131, file: !1, line: 96, column: 9)
!138 = !DILocation(line: 98, column: 28, scope: !136)
!139 = !DILocation(line: 98, column: 27, scope: !136)
!140 = !DILocation(line: 98, column: 47, scope: !136)
!141 = !DILocation(line: 98, column: 46, scope: !136)
!142 = !DILocation(line: 98, column: 37, scope: !136)
!143 = !DILocation(line: 98, column: 57, scope: !136)
!144 = !DILocation(line: 98, column: 17, scope: !136)
!145 = !DILocation(line: 98, column: 64, scope: !136)
!146 = !DILocation(line: 98, column: 17, scope: !137)
!147 = !DILocation(line: 102, column: 34, scope: !148)
!148 = distinct !DILexicalBlock(scope: !136, file: !1, line: 99, column: 13)
!149 = !DILocation(line: 102, column: 27, scope: !148)
!150 = !DILocation(line: 102, column: 25, scope: !148)
!151 = !DILocation(line: 103, column: 21, scope: !152)
!152 = distinct !DILexicalBlock(scope: !148, file: !1, line: 103, column: 21)
!153 = !DILocation(line: 103, column: 29, scope: !152)
!154 = !DILocation(line: 103, column: 33, scope: !152)
!155 = !DILocation(line: 103, column: 36, scope: !152)
!156 = !DILocation(line: 103, column: 41, scope: !152)
!157 = !DILocation(line: 103, column: 48, scope: !152)
!158 = !DILocation(line: 103, column: 52, scope: !152)
!159 = !DILocation(line: 103, column: 21, scope: !148)
!160 = !DILocation(line: 105, column: 21, scope: !161)
!161 = distinct !DILexicalBlock(scope: !152, file: !1, line: 104, column: 17)
!162 = !DILocation(line: 105, column: 26, scope: !161)
!163 = !DILocation(line: 105, column: 33, scope: !161)
!164 = !DILocation(line: 105, column: 37, scope: !161)
!165 = !DILocation(line: 106, column: 17, scope: !161)
!166 = !DILocation(line: 107, column: 13, scope: !148)
!167 = !DILocation(line: 110, column: 17, scope: !168)
!168 = distinct !DILexicalBlock(scope: !136, file: !1, line: 109, column: 13)
!169 = !DILocation(line: 112, column: 17, scope: !168)
!170 = !DILocation(line: 112, column: 22, scope: !168)
!171 = !DILocation(line: 112, column: 31, scope: !168)
!172 = !DILocation(line: 114, column: 9, scope: !137)
!173 = !DILocation(line: 116, column: 5, scope: !115)
!174 = !DILabel(scope: !115, name: "sink", file: !1, line: 117)
!175 = !DILocation(line: 117, column: 1, scope: !115)
!176 = !DILocalVariable(name: "i", scope: !177, file: !1, line: 119, type: !4)
!177 = distinct !DILexicalBlock(scope: !115, file: !1, line: 118, column: 5)
!178 = !DILocation(line: 119, column: 13, scope: !177)
!179 = !DILocalVariable(name: "n", scope: !177, file: !1, line: 119, type: !4)
!180 = !DILocation(line: 119, column: 16, scope: !177)
!181 = !DILocalVariable(name: "intVariable", scope: !177, file: !1, line: 119, type: !4)
!182 = !DILocation(line: 119, column: 19, scope: !177)
!183 = !DILocation(line: 120, column: 20, scope: !184)
!184 = distinct !DILexicalBlock(scope: !177, file: !1, line: 120, column: 13)
!185 = !DILocation(line: 120, column: 13, scope: !184)
!186 = !DILocation(line: 120, column: 36, scope: !184)
!187 = !DILocation(line: 120, column: 13, scope: !177)
!188 = !DILocation(line: 123, column: 17, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !1, line: 123, column: 17)
!190 = distinct !DILexicalBlock(scope: !184, file: !1, line: 121, column: 9)
!191 = !DILocation(line: 123, column: 19, scope: !189)
!192 = !DILocation(line: 123, column: 17, scope: !190)
!193 = !DILocation(line: 125, column: 29, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !1, line: 124, column: 13)
!195 = !DILocation(line: 126, column: 24, scope: !196)
!196 = distinct !DILexicalBlock(scope: !194, file: !1, line: 126, column: 17)
!197 = !DILocation(line: 126, column: 22, scope: !196)
!198 = !DILocation(line: 126, column: 29, scope: !199)
!199 = distinct !DILexicalBlock(scope: !196, file: !1, line: 126, column: 17)
!200 = !DILocation(line: 126, column: 33, scope: !199)
!201 = !DILocation(line: 126, column: 31, scope: !199)
!202 = !DILocation(line: 126, column: 17, scope: !196)
!203 = !DILocation(line: 129, column: 32, scope: !204)
!204 = distinct !DILexicalBlock(scope: !199, file: !1, line: 127, column: 17)
!205 = !DILocation(line: 130, column: 17, scope: !204)
!206 = !DILocation(line: 126, column: 37, scope: !199)
!207 = !DILocation(line: 126, column: 17, scope: !199)
!208 = distinct !{!208, !202, !209, !110}
!209 = !DILocation(line: 130, column: 17, scope: !196)
!210 = !DILocation(line: 131, column: 30, scope: !194)
!211 = !DILocation(line: 131, column: 17, scope: !194)
!212 = !DILocation(line: 132, column: 13, scope: !194)
!213 = !DILocation(line: 133, column: 9, scope: !190)
!214 = !DILocation(line: 135, column: 1, scope: !115)
!215 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 138, type: !11, scopeLine: 139, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!216 = !DILocalVariable(name: "data", scope: !215, file: !1, line: 140, type: !14)
!217 = !DILocation(line: 140, column: 12, scope: !215)
!218 = !DILocalVariable(name: "dataBuffer", scope: !215, file: !1, line: 141, type: !18)
!219 = !DILocation(line: 141, column: 10, scope: !215)
!220 = !DILocation(line: 142, column: 12, scope: !215)
!221 = !DILocation(line: 142, column: 10, scope: !215)
!222 = !DILocation(line: 143, column: 5, scope: !215)
!223 = !DILabel(scope: !215, name: "source", file: !1, line: 144)
!224 = !DILocation(line: 144, column: 1, scope: !215)
!225 = !DILocation(line: 146, column: 12, scope: !215)
!226 = !DILocation(line: 146, column: 5, scope: !215)
!227 = !DILocation(line: 147, column: 5, scope: !215)
!228 = !DILabel(scope: !215, name: "sink", file: !1, line: 148)
!229 = !DILocation(line: 148, column: 1, scope: !215)
!230 = !DILocalVariable(name: "i", scope: !231, file: !1, line: 150, type: !4)
!231 = distinct !DILexicalBlock(scope: !215, file: !1, line: 149, column: 5)
!232 = !DILocation(line: 150, column: 13, scope: !231)
!233 = !DILocalVariable(name: "n", scope: !231, file: !1, line: 150, type: !4)
!234 = !DILocation(line: 150, column: 16, scope: !231)
!235 = !DILocalVariable(name: "intVariable", scope: !231, file: !1, line: 150, type: !4)
!236 = !DILocation(line: 150, column: 19, scope: !231)
!237 = !DILocation(line: 151, column: 20, scope: !238)
!238 = distinct !DILexicalBlock(scope: !231, file: !1, line: 151, column: 13)
!239 = !DILocation(line: 151, column: 13, scope: !238)
!240 = !DILocation(line: 151, column: 36, scope: !238)
!241 = !DILocation(line: 151, column: 13, scope: !231)
!242 = !DILocation(line: 154, column: 25, scope: !243)
!243 = distinct !DILexicalBlock(scope: !238, file: !1, line: 152, column: 9)
!244 = !DILocation(line: 155, column: 20, scope: !245)
!245 = distinct !DILexicalBlock(scope: !243, file: !1, line: 155, column: 13)
!246 = !DILocation(line: 155, column: 18, scope: !245)
!247 = !DILocation(line: 155, column: 25, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !1, line: 155, column: 13)
!249 = !DILocation(line: 155, column: 29, scope: !248)
!250 = !DILocation(line: 155, column: 27, scope: !248)
!251 = !DILocation(line: 155, column: 13, scope: !245)
!252 = !DILocation(line: 158, column: 28, scope: !253)
!253 = distinct !DILexicalBlock(scope: !248, file: !1, line: 156, column: 13)
!254 = !DILocation(line: 159, column: 13, scope: !253)
!255 = !DILocation(line: 155, column: 33, scope: !248)
!256 = !DILocation(line: 155, column: 13, scope: !248)
!257 = distinct !{!257, !251, !258, !110}
!258 = !DILocation(line: 159, column: 13, scope: !245)
!259 = !DILocation(line: 160, column: 26, scope: !243)
!260 = !DILocation(line: 160, column: 13, scope: !243)
!261 = !DILocation(line: 161, column: 9, scope: !243)
!262 = !DILocation(line: 163, column: 1, scope: !215)
!263 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_18_good", scope: !1, file: !1, line: 165, type: !11, scopeLine: 166, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!264 = !DILocation(line: 167, column: 5, scope: !263)
!265 = !DILocation(line: 168, column: 5, scope: !263)
!266 = !DILocation(line: 169, column: 1, scope: !263)
