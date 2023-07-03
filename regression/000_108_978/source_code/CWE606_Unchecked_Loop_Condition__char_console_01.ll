; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_01.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_01.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_01_bad() #0 !dbg !10 {
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
  call void @llvm.dbg.declare(metadata i32* %i, metadata !75, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %n, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !80, metadata !DIExpression()), !dbg !81
  %16 = load i8*, i8** %data, align 8, !dbg !82
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !84
  %cmp20 = icmp eq i32 %call19, 1, !dbg !85
  br i1 %cmp20, label %if.then22, label %if.end26, !dbg !86

if.then22:                                        ; preds = %if.end18
  store i32 0, i32* %intVariable, align 4, !dbg !87
  store i32 0, i32* %i, align 4, !dbg !89
  br label %for.cond, !dbg !91

for.cond:                                         ; preds = %for.inc, %if.then22
  %17 = load i32, i32* %i, align 4, !dbg !92
  %18 = load i32, i32* %n, align 4, !dbg !94
  %cmp23 = icmp slt i32 %17, %18, !dbg !95
  br i1 %cmp23, label %for.body, label %for.end, !dbg !96

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %intVariable, align 4, !dbg !97
  %inc = add nsw i32 %19, 1, !dbg !97
  store i32 %inc, i32* %intVariable, align 4, !dbg !97
  br label %for.inc, !dbg !99

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !100
  %inc25 = add nsw i32 %20, 1, !dbg !100
  store i32 %inc25, i32* %i, align 4, !dbg !100
  br label %for.cond, !dbg !101, !llvm.loop !102

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %intVariable, align 4, !dbg !105
  call void @printIntLine(i32 %21), !dbg !106
  br label %if.end26, !dbg !107

if.end26:                                         ; preds = %for.end, %if.end18
  ret void, !dbg !108
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
define dso_local void @goodG2B() #0 !dbg !109 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !112, metadata !DIExpression()), !dbg !113
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !113
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !113
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !114
  store i8* %arraydecay, i8** %data, align 8, !dbg !115
  %1 = load i8*, i8** %data, align 8, !dbg !116
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %i, metadata !118, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %n, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !123, metadata !DIExpression()), !dbg !124
  %2 = load i8*, i8** %data, align 8, !dbg !125
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !127
  %cmp = icmp eq i32 %call1, 1, !dbg !128
  br i1 %cmp, label %if.then, label %if.end, !dbg !129

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !130
  store i32 0, i32* %i, align 4, !dbg !132
  br label %for.cond, !dbg !134

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !135
  %4 = load i32, i32* %n, align 4, !dbg !137
  %cmp2 = icmp slt i32 %3, %4, !dbg !138
  br i1 %cmp2, label %for.body, label %for.end, !dbg !139

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !140
  %inc = add nsw i32 %5, 1, !dbg !140
  store i32 %inc, i32* %intVariable, align 4, !dbg !140
  br label %for.inc, !dbg !142

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !143
  %inc3 = add nsw i32 %6, 1, !dbg !143
  store i32 %inc3, i32* %i, align 4, !dbg !143
  br label %for.cond, !dbg !144, !llvm.loop !145

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !147
  call void @printIntLine(i32 %7), !dbg !148
  br label %if.end, !dbg !149

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !150
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !151 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !154, metadata !DIExpression()), !dbg !155
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !155
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !155
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !156
  store i8* %arraydecay, i8** %data, align 8, !dbg !157
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !158, metadata !DIExpression()), !dbg !160
  %1 = load i8*, i8** %data, align 8, !dbg !161
  %call = call i64 @strlen(i8* %1) #6, !dbg !162
  store i64 %call, i64* %dataLen, align 8, !dbg !160
  %2 = load i64, i64* %dataLen, align 8, !dbg !163
  %sub = sub i64 100, %2, !dbg !165
  %cmp = icmp ugt i64 %sub, 1, !dbg !166
  br i1 %cmp, label %if.then, label %if.end18, !dbg !167

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !168
  %4 = load i64, i64* %dataLen, align 8, !dbg !171
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !172
  %5 = load i64, i64* %dataLen, align 8, !dbg !173
  %sub1 = sub i64 100, %5, !dbg !174
  %conv = trunc i64 %sub1 to i32, !dbg !175
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !176
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !177
  %cmp3 = icmp ne i8* %call2, null, !dbg !178
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !179

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %data, align 8, !dbg !180
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !182
  store i64 %call6, i64* %dataLen, align 8, !dbg !183
  %8 = load i64, i64* %dataLen, align 8, !dbg !184
  %cmp7 = icmp ugt i64 %8, 0, !dbg !186
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !187

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %data, align 8, !dbg !188
  %10 = load i64, i64* %dataLen, align 8, !dbg !189
  %sub9 = sub i64 %10, 1, !dbg !190
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !188
  %11 = load i8, i8* %arrayidx, align 1, !dbg !188
  %conv10 = sext i8 %11 to i32, !dbg !188
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !191
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !192

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %data, align 8, !dbg !193
  %13 = load i64, i64* %dataLen, align 8, !dbg !195
  %sub14 = sub i64 %13, 1, !dbg !196
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !193
  store i8 0, i8* %arrayidx15, align 1, !dbg !197
  br label %if.end, !dbg !198

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !199

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !200
  %14 = load i8*, i8** %data, align 8, !dbg !202
  %15 = load i64, i64* %dataLen, align 8, !dbg !203
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !202
  store i8 0, i8* %arrayidx16, align 1, !dbg !204
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !205

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !206, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %n, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !211, metadata !DIExpression()), !dbg !212
  %16 = load i8*, i8** %data, align 8, !dbg !213
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %n) #7, !dbg !215
  %cmp20 = icmp eq i32 %call19, 1, !dbg !216
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !217

if.then22:                                        ; preds = %if.end18
  %17 = load i32, i32* %n, align 4, !dbg !218
  %cmp23 = icmp slt i32 %17, 10000, !dbg !221
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !222

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %intVariable, align 4, !dbg !223
  store i32 0, i32* %i, align 4, !dbg !225
  br label %for.cond, !dbg !227

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %i, align 4, !dbg !228
  %19 = load i32, i32* %n, align 4, !dbg !230
  %cmp26 = icmp slt i32 %18, %19, !dbg !231
  br i1 %cmp26, label %for.body, label %for.end, !dbg !232

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %intVariable, align 4, !dbg !233
  %inc = add nsw i32 %20, 1, !dbg !233
  store i32 %inc, i32* %intVariable, align 4, !dbg !233
  br label %for.inc, !dbg !235

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !236
  %inc28 = add nsw i32 %21, 1, !dbg !236
  store i32 %inc28, i32* %i, align 4, !dbg !236
  br label %for.cond, !dbg !237, !llvm.loop !238

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %intVariable, align 4, !dbg !240
  call void @printIntLine(i32 %22), !dbg !241
  br label %if.end29, !dbg !242

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !243

if.end30:                                         ; preds = %if.end29, %if.end18
  ret void, !dbg !244
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_01_good() #0 !dbg !245 {
entry:
  call void @goodG2B(), !dbg !246
  call void @goodB2G(), !dbg !247
  ret void, !dbg !248
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_01.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_978/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_01_bad", scope: !1, file: !1, line: 29, type: !11, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!75 = !DILocalVariable(name: "i", scope: !76, file: !1, line: 60, type: !4)
!76 = distinct !DILexicalBlock(scope: !10, file: !1, line: 59, column: 5)
!77 = !DILocation(line: 60, column: 13, scope: !76)
!78 = !DILocalVariable(name: "n", scope: !76, file: !1, line: 60, type: !4)
!79 = !DILocation(line: 60, column: 16, scope: !76)
!80 = !DILocalVariable(name: "intVariable", scope: !76, file: !1, line: 60, type: !4)
!81 = !DILocation(line: 60, column: 19, scope: !76)
!82 = !DILocation(line: 61, column: 20, scope: !83)
!83 = distinct !DILexicalBlock(scope: !76, file: !1, line: 61, column: 13)
!84 = !DILocation(line: 61, column: 13, scope: !83)
!85 = !DILocation(line: 61, column: 36, scope: !83)
!86 = !DILocation(line: 61, column: 13, scope: !76)
!87 = !DILocation(line: 64, column: 25, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 62, column: 9)
!89 = !DILocation(line: 65, column: 20, scope: !90)
!90 = distinct !DILexicalBlock(scope: !88, file: !1, line: 65, column: 13)
!91 = !DILocation(line: 65, column: 18, scope: !90)
!92 = !DILocation(line: 65, column: 25, scope: !93)
!93 = distinct !DILexicalBlock(scope: !90, file: !1, line: 65, column: 13)
!94 = !DILocation(line: 65, column: 29, scope: !93)
!95 = !DILocation(line: 65, column: 27, scope: !93)
!96 = !DILocation(line: 65, column: 13, scope: !90)
!97 = !DILocation(line: 68, column: 28, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 66, column: 13)
!99 = !DILocation(line: 69, column: 13, scope: !98)
!100 = !DILocation(line: 65, column: 33, scope: !93)
!101 = !DILocation(line: 65, column: 13, scope: !93)
!102 = distinct !{!102, !96, !103, !104}
!103 = !DILocation(line: 69, column: 13, scope: !90)
!104 = !{!"llvm.loop.mustprogress"}
!105 = !DILocation(line: 70, column: 26, scope: !88)
!106 = !DILocation(line: 70, column: 13, scope: !88)
!107 = !DILocation(line: 71, column: 9, scope: !88)
!108 = !DILocation(line: 73, column: 1, scope: !10)
!109 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 80, type: !11, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!110 = !DILocalVariable(name: "data", scope: !109, file: !1, line: 82, type: !14)
!111 = !DILocation(line: 82, column: 12, scope: !109)
!112 = !DILocalVariable(name: "dataBuffer", scope: !109, file: !1, line: 83, type: !18)
!113 = !DILocation(line: 83, column: 10, scope: !109)
!114 = !DILocation(line: 84, column: 12, scope: !109)
!115 = !DILocation(line: 84, column: 10, scope: !109)
!116 = !DILocation(line: 86, column: 12, scope: !109)
!117 = !DILocation(line: 86, column: 5, scope: !109)
!118 = !DILocalVariable(name: "i", scope: !119, file: !1, line: 88, type: !4)
!119 = distinct !DILexicalBlock(scope: !109, file: !1, line: 87, column: 5)
!120 = !DILocation(line: 88, column: 13, scope: !119)
!121 = !DILocalVariable(name: "n", scope: !119, file: !1, line: 88, type: !4)
!122 = !DILocation(line: 88, column: 16, scope: !119)
!123 = !DILocalVariable(name: "intVariable", scope: !119, file: !1, line: 88, type: !4)
!124 = !DILocation(line: 88, column: 19, scope: !119)
!125 = !DILocation(line: 89, column: 20, scope: !126)
!126 = distinct !DILexicalBlock(scope: !119, file: !1, line: 89, column: 13)
!127 = !DILocation(line: 89, column: 13, scope: !126)
!128 = !DILocation(line: 89, column: 36, scope: !126)
!129 = !DILocation(line: 89, column: 13, scope: !119)
!130 = !DILocation(line: 92, column: 25, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !1, line: 90, column: 9)
!132 = !DILocation(line: 93, column: 20, scope: !133)
!133 = distinct !DILexicalBlock(scope: !131, file: !1, line: 93, column: 13)
!134 = !DILocation(line: 93, column: 18, scope: !133)
!135 = !DILocation(line: 93, column: 25, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 93, column: 13)
!137 = !DILocation(line: 93, column: 29, scope: !136)
!138 = !DILocation(line: 93, column: 27, scope: !136)
!139 = !DILocation(line: 93, column: 13, scope: !133)
!140 = !DILocation(line: 96, column: 28, scope: !141)
!141 = distinct !DILexicalBlock(scope: !136, file: !1, line: 94, column: 13)
!142 = !DILocation(line: 97, column: 13, scope: !141)
!143 = !DILocation(line: 93, column: 33, scope: !136)
!144 = !DILocation(line: 93, column: 13, scope: !136)
!145 = distinct !{!145, !139, !146, !104}
!146 = !DILocation(line: 97, column: 13, scope: !133)
!147 = !DILocation(line: 98, column: 26, scope: !131)
!148 = !DILocation(line: 98, column: 13, scope: !131)
!149 = !DILocation(line: 99, column: 9, scope: !131)
!150 = !DILocation(line: 101, column: 1, scope: !109)
!151 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 104, type: !11, scopeLine: 105, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!152 = !DILocalVariable(name: "data", scope: !151, file: !1, line: 106, type: !14)
!153 = !DILocation(line: 106, column: 12, scope: !151)
!154 = !DILocalVariable(name: "dataBuffer", scope: !151, file: !1, line: 107, type: !18)
!155 = !DILocation(line: 107, column: 10, scope: !151)
!156 = !DILocation(line: 108, column: 12, scope: !151)
!157 = !DILocation(line: 108, column: 10, scope: !151)
!158 = !DILocalVariable(name: "dataLen", scope: !159, file: !1, line: 111, type: !26)
!159 = distinct !DILexicalBlock(scope: !151, file: !1, line: 109, column: 5)
!160 = !DILocation(line: 111, column: 16, scope: !159)
!161 = !DILocation(line: 111, column: 33, scope: !159)
!162 = !DILocation(line: 111, column: 26, scope: !159)
!163 = !DILocation(line: 113, column: 17, scope: !164)
!164 = distinct !DILexicalBlock(scope: !159, file: !1, line: 113, column: 13)
!165 = !DILocation(line: 113, column: 16, scope: !164)
!166 = !DILocation(line: 113, column: 25, scope: !164)
!167 = !DILocation(line: 113, column: 13, scope: !159)
!168 = !DILocation(line: 116, column: 23, scope: !169)
!169 = distinct !DILexicalBlock(scope: !170, file: !1, line: 116, column: 17)
!170 = distinct !DILexicalBlock(scope: !164, file: !1, line: 114, column: 9)
!171 = !DILocation(line: 116, column: 28, scope: !169)
!172 = !DILocation(line: 116, column: 27, scope: !169)
!173 = !DILocation(line: 116, column: 47, scope: !169)
!174 = !DILocation(line: 116, column: 46, scope: !169)
!175 = !DILocation(line: 116, column: 37, scope: !169)
!176 = !DILocation(line: 116, column: 57, scope: !169)
!177 = !DILocation(line: 116, column: 17, scope: !169)
!178 = !DILocation(line: 116, column: 64, scope: !169)
!179 = !DILocation(line: 116, column: 17, scope: !170)
!180 = !DILocation(line: 120, column: 34, scope: !181)
!181 = distinct !DILexicalBlock(scope: !169, file: !1, line: 117, column: 13)
!182 = !DILocation(line: 120, column: 27, scope: !181)
!183 = !DILocation(line: 120, column: 25, scope: !181)
!184 = !DILocation(line: 121, column: 21, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 121, column: 21)
!186 = !DILocation(line: 121, column: 29, scope: !185)
!187 = !DILocation(line: 121, column: 33, scope: !185)
!188 = !DILocation(line: 121, column: 36, scope: !185)
!189 = !DILocation(line: 121, column: 41, scope: !185)
!190 = !DILocation(line: 121, column: 48, scope: !185)
!191 = !DILocation(line: 121, column: 52, scope: !185)
!192 = !DILocation(line: 121, column: 21, scope: !181)
!193 = !DILocation(line: 123, column: 21, scope: !194)
!194 = distinct !DILexicalBlock(scope: !185, file: !1, line: 122, column: 17)
!195 = !DILocation(line: 123, column: 26, scope: !194)
!196 = !DILocation(line: 123, column: 33, scope: !194)
!197 = !DILocation(line: 123, column: 37, scope: !194)
!198 = !DILocation(line: 124, column: 17, scope: !194)
!199 = !DILocation(line: 125, column: 13, scope: !181)
!200 = !DILocation(line: 128, column: 17, scope: !201)
!201 = distinct !DILexicalBlock(scope: !169, file: !1, line: 127, column: 13)
!202 = !DILocation(line: 130, column: 17, scope: !201)
!203 = !DILocation(line: 130, column: 22, scope: !201)
!204 = !DILocation(line: 130, column: 31, scope: !201)
!205 = !DILocation(line: 132, column: 9, scope: !170)
!206 = !DILocalVariable(name: "i", scope: !207, file: !1, line: 135, type: !4)
!207 = distinct !DILexicalBlock(scope: !151, file: !1, line: 134, column: 5)
!208 = !DILocation(line: 135, column: 13, scope: !207)
!209 = !DILocalVariable(name: "n", scope: !207, file: !1, line: 135, type: !4)
!210 = !DILocation(line: 135, column: 16, scope: !207)
!211 = !DILocalVariable(name: "intVariable", scope: !207, file: !1, line: 135, type: !4)
!212 = !DILocation(line: 135, column: 19, scope: !207)
!213 = !DILocation(line: 136, column: 20, scope: !214)
!214 = distinct !DILexicalBlock(scope: !207, file: !1, line: 136, column: 13)
!215 = !DILocation(line: 136, column: 13, scope: !214)
!216 = !DILocation(line: 136, column: 36, scope: !214)
!217 = !DILocation(line: 136, column: 13, scope: !207)
!218 = !DILocation(line: 139, column: 17, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !1, line: 139, column: 17)
!220 = distinct !DILexicalBlock(scope: !214, file: !1, line: 137, column: 9)
!221 = !DILocation(line: 139, column: 19, scope: !219)
!222 = !DILocation(line: 139, column: 17, scope: !220)
!223 = !DILocation(line: 141, column: 29, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 140, column: 13)
!225 = !DILocation(line: 142, column: 24, scope: !226)
!226 = distinct !DILexicalBlock(scope: !224, file: !1, line: 142, column: 17)
!227 = !DILocation(line: 142, column: 22, scope: !226)
!228 = !DILocation(line: 142, column: 29, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !1, line: 142, column: 17)
!230 = !DILocation(line: 142, column: 33, scope: !229)
!231 = !DILocation(line: 142, column: 31, scope: !229)
!232 = !DILocation(line: 142, column: 17, scope: !226)
!233 = !DILocation(line: 145, column: 32, scope: !234)
!234 = distinct !DILexicalBlock(scope: !229, file: !1, line: 143, column: 17)
!235 = !DILocation(line: 146, column: 17, scope: !234)
!236 = !DILocation(line: 142, column: 37, scope: !229)
!237 = !DILocation(line: 142, column: 17, scope: !229)
!238 = distinct !{!238, !232, !239, !104}
!239 = !DILocation(line: 146, column: 17, scope: !226)
!240 = !DILocation(line: 147, column: 30, scope: !224)
!241 = !DILocation(line: 147, column: 17, scope: !224)
!242 = !DILocation(line: 148, column: 13, scope: !224)
!243 = !DILocation(line: 149, column: 9, scope: !220)
!244 = !DILocation(line: 151, column: 1, scope: !151)
!245 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_01_good", scope: !1, file: !1, line: 153, type: !11, scopeLine: 154, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!246 = !DILocation(line: 155, column: 5, scope: !245)
!247 = !DILocation(line: 156, column: 5, scope: !245)
!248 = !DILocation(line: 157, column: 1, scope: !245)
