; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12114CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12236_1_5.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12114CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12236_1_5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12114CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12236_1_5(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_buffer_0 = alloca [10 x i32], align 16
  %_goodB2G_i_024 = alloca i32, align 4
  %_goodB2G_buffer_025 = alloca [10 x i32], align 16
  %_goodG2B_data_0 = alloca i32, align 4
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B_i_066 = alloca i32, align 4
  %_goodG2B_buffer_067 = alloca [10 x i32], align 16
  store i8* %_goodB2G_inputBuffer_0, i8** %_goodB2G_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !23
  %call = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !24
  %tobool = icmp ne i32 %call, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.else4, !dbg !26

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !27
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !31
  %call1 = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !32
  %cmp = icmp ne i8* %call1, null, !dbg !33
  br i1 %cmp, label %if.then2, label %if.else, !dbg !34

if.then2:                                         ; preds = %if.then
  %2 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !35
  %call3 = call i32 @atoi(i8* %2) #5, !dbg !37
  store i32 %call3, i32* %_goodB2G_data_0, align 4, !dbg !38
  br label %if.end, !dbg !39

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !40
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end11, !dbg !42

if.else4:                                         ; preds = %entry
  %3 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !43
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !47
  %call5 = call i8* @fgets(i8* %3, i32 14, %struct._IO_FILE* %4), !dbg !48
  %cmp6 = icmp ne i8* %call5, null, !dbg !49
  br i1 %cmp6, label %if.then7, label %if.else9, !dbg !50

if.then7:                                         ; preds = %if.else4
  %5 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !51
  %call8 = call i32 @atoi(i8* %5) #5, !dbg !53
  store i32 %call8, i32* %_goodB2G_data_0, align 4, !dbg !54
  br label %if.end10, !dbg !55

if.else9:                                         ; preds = %if.else4
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !56
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %if.then7
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %call12 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !58
  %tobool13 = icmp ne i32 %call12, 0, !dbg !58
  br i1 %tobool13, label %if.then14, label %if.else23, !dbg !60

if.then14:                                        ; preds = %if.end11
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !61, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G_buffer_0, metadata !65, metadata !DIExpression()), !dbg !69
  %6 = bitcast [10 x i32]* %_goodB2G_buffer_0 to i8*, !dbg !69
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 40, i1 false), !dbg !69
  %7 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !70
  %cmp15 = icmp sge i32 %7, 0, !dbg !72
  br i1 %cmp15, label %land.lhs.true, label %if.else21, !dbg !73

land.lhs.true:                                    ; preds = %if.then14
  %8 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !74
  %cmp16 = icmp slt i32 %8, 10, !dbg !75
  br i1 %cmp16, label %if.then17, label %if.else21, !dbg !76

if.then17:                                        ; preds = %land.lhs.true
  %9 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !77
  %idxprom = sext i32 %9 to i64, !dbg !79
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom, !dbg !79
  store i32 1, i32* %arrayidx, align 4, !dbg !80
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !81
  br label %for.cond, !dbg !83

for.cond:                                         ; preds = %for.inc, %if.then17
  %10 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !84
  %cmp18 = icmp slt i32 %10, 10, !dbg !86
  br i1 %cmp18, label %for.body, label %for.end, !dbg !87

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !88
  %idxprom19 = sext i32 %11 to i64, !dbg !90
  %arrayidx20 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom19, !dbg !90
  %12 = load i32, i32* %arrayidx20, align 4, !dbg !90
  call void @printIntLine(i32 %12), !dbg !91
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !93
  %inc = add nsw i32 %13, 1, !dbg !93
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !93
  br label %for.cond, !dbg !94, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  br label %if.end22, !dbg !98

if.else21:                                        ; preds = %land.lhs.true, %if.then14
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !99
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %for.end
  br label %if.end42, !dbg !101

if.else23:                                        ; preds = %if.end11
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_024, metadata !102, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G_buffer_025, metadata !106, metadata !DIExpression()), !dbg !107
  %14 = bitcast [10 x i32]* %_goodB2G_buffer_025 to i8*, !dbg !107
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 40, i1 false), !dbg !107
  %15 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !108
  %cmp26 = icmp sge i32 %15, 0, !dbg !110
  br i1 %cmp26, label %land.lhs.true27, label %if.else40, !dbg !111

land.lhs.true27:                                  ; preds = %if.else23
  %16 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !112
  %cmp28 = icmp slt i32 %16, 10, !dbg !113
  br i1 %cmp28, label %if.then29, label %if.else40, !dbg !114

if.then29:                                        ; preds = %land.lhs.true27
  %17 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !115
  %idxprom30 = sext i32 %17 to i64, !dbg !117
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_025, i64 0, i64 %idxprom30, !dbg !117
  store i32 1, i32* %arrayidx31, align 4, !dbg !118
  store i32 0, i32* %_goodB2G_i_024, align 4, !dbg !119
  br label %for.cond32, !dbg !121

for.cond32:                                       ; preds = %for.inc37, %if.then29
  %18 = load i32, i32* %_goodB2G_i_024, align 4, !dbg !122
  %cmp33 = icmp slt i32 %18, 10, !dbg !124
  br i1 %cmp33, label %for.body34, label %for.end39, !dbg !125

for.body34:                                       ; preds = %for.cond32
  %19 = load i32, i32* %_goodB2G_i_024, align 4, !dbg !126
  %idxprom35 = sext i32 %19 to i64, !dbg !128
  %arrayidx36 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_025, i64 0, i64 %idxprom35, !dbg !128
  %20 = load i32, i32* %arrayidx36, align 4, !dbg !128
  call void @printIntLine(i32 %20), !dbg !129
  br label %for.inc37, !dbg !130

for.inc37:                                        ; preds = %for.body34
  %21 = load i32, i32* %_goodB2G_i_024, align 4, !dbg !131
  %inc38 = add nsw i32 %21, 1, !dbg !131
  store i32 %inc38, i32* %_goodB2G_i_024, align 4, !dbg !131
  br label %for.cond32, !dbg !132, !llvm.loop !133

for.end39:                                        ; preds = %for.cond32
  br label %if.end41, !dbg !135

if.else40:                                        ; preds = %land.lhs.true27, %if.else23
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !136
  br label %if.end41

if.end41:                                         ; preds = %if.else40, %for.end39
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end22
  br label %goodB2G_label_, !dbg !138

goodB2G_label_:                                   ; preds = %if.end42
  call void @llvm.dbg.label(metadata !139), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_data_0, metadata !141, metadata !DIExpression()), !dbg !143
  store i32 -1, i32* %_goodG2B_data_0, align 4, !dbg !144
  %call43 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !145
  %tobool44 = icmp ne i32 %call43, 0, !dbg !145
  br i1 %tobool44, label %if.then45, label %if.else46, !dbg !147

if.then45:                                        ; preds = %goodB2G_label_
  store i32 7, i32* %_goodG2B_data_0, align 4, !dbg !148
  br label %if.end47, !dbg !150

if.else46:                                        ; preds = %goodB2G_label_
  store i32 7, i32* %_goodG2B_data_0, align 4, !dbg !151
  br label %if.end47

if.end47:                                         ; preds = %if.else46, %if.then45
  %call48 = call i32 (...) @globalReturnsTrueOrFalse(), !dbg !153
  %tobool49 = icmp ne i32 %call48, 0, !dbg !153
  br i1 %tobool49, label %if.then50, label %if.else65, !dbg !155

if.then50:                                        ; preds = %if.end47
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !156, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B_buffer_0, metadata !160, metadata !DIExpression()), !dbg !161
  %22 = bitcast [10 x i32]* %_goodG2B_buffer_0 to i8*, !dbg !161
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 40, i1 false), !dbg !161
  %23 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !162
  %cmp51 = icmp sge i32 %23, 0, !dbg !164
  br i1 %cmp51, label %if.then52, label %if.else63, !dbg !165

if.then52:                                        ; preds = %if.then50
  %24 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !166
  %idxprom53 = sext i32 %24 to i64, !dbg !168
  %arrayidx54 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B_buffer_0, i64 0, i64 %idxprom53, !dbg !168
  store i32 1, i32* %arrayidx54, align 4, !dbg !169
  store i32 0, i32* %_goodG2B_i_0, align 4, !dbg !170
  br label %for.cond55, !dbg !172

for.cond55:                                       ; preds = %for.inc60, %if.then52
  %25 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !173
  %cmp56 = icmp slt i32 %25, 10, !dbg !175
  br i1 %cmp56, label %for.body57, label %for.end62, !dbg !176

for.body57:                                       ; preds = %for.cond55
  %26 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !177
  %idxprom58 = sext i32 %26 to i64, !dbg !179
  %arrayidx59 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B_buffer_0, i64 0, i64 %idxprom58, !dbg !179
  %27 = load i32, i32* %arrayidx59, align 4, !dbg !179
  call void @printIntLine(i32 %27), !dbg !180
  br label %for.inc60, !dbg !181

for.inc60:                                        ; preds = %for.body57
  %28 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !182
  %inc61 = add nsw i32 %28, 1, !dbg !182
  store i32 %inc61, i32* %_goodG2B_i_0, align 4, !dbg !182
  br label %for.cond55, !dbg !183, !llvm.loop !184

for.end62:                                        ; preds = %for.cond55
  br label %if.end64, !dbg !186

if.else63:                                        ; preds = %if.then50
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !187
  br label %if.end64

if.end64:                                         ; preds = %if.else63, %for.end62
  br label %if.end80, !dbg !189

if.else65:                                        ; preds = %if.end47
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_066, metadata !190, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B_buffer_067, metadata !194, metadata !DIExpression()), !dbg !195
  %29 = bitcast [10 x i32]* %_goodG2B_buffer_067 to i8*, !dbg !195
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 40, i1 false), !dbg !195
  %30 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !196
  %cmp68 = icmp sge i32 %30, 0, !dbg !198
  br i1 %cmp68, label %if.then69, label %if.else78, !dbg !199

if.then69:                                        ; preds = %if.else65
  %31 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !200
  %32 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !202
  call void %31(i32 %32), !dbg !200
  store i32 0, i32* %_goodG2B_i_066, align 4, !dbg !203
  br label %for.cond70, !dbg !205

for.cond70:                                       ; preds = %for.inc75, %if.then69
  %33 = load i32, i32* %_goodG2B_i_066, align 4, !dbg !206
  %cmp71 = icmp slt i32 %33, 10, !dbg !208
  br i1 %cmp71, label %for.body72, label %for.end77, !dbg !209

for.body72:                                       ; preds = %for.cond70
  %34 = load i32, i32* %_goodG2B_i_066, align 4, !dbg !210
  %idxprom73 = sext i32 %34 to i64, !dbg !212
  %arrayidx74 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B_buffer_067, i64 0, i64 %idxprom73, !dbg !212
  %35 = load i32, i32* %arrayidx74, align 4, !dbg !212
  call void @printIntLine(i32 %35), !dbg !213
  br label %for.inc75, !dbg !214

for.inc75:                                        ; preds = %for.body72
  %36 = load i32, i32* %_goodG2B_i_066, align 4, !dbg !215
  %inc76 = add nsw i32 %36, 1, !dbg !215
  store i32 %inc76, i32* %_goodG2B_i_066, align 4, !dbg !215
  br label %for.cond70, !dbg !216, !llvm.loop !217

for.end77:                                        ; preds = %for.cond70
  br label %if.end79, !dbg !219

if.else78:                                        ; preds = %if.else65
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !220
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %for.end77
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end64
  br label %goodG2B_label_, !dbg !222

goodG2B_label_:                                   ; preds = %if.end80
  call void @llvm.dbg.label(metadata !223), !dbg !224
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_good_label_, !dbg !225

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !226), !dbg !227
  ret void, !dbg !228
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @globalReturnsTrueOrFalse(...) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #3

declare dso_local void @printLine(i8*) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local void @printIntLine(i32) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12114CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12236_1_5.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_575/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12114CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12236_1_5", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 125, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 156, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G_data_0", scope: !21, file: !1, line: 6, type: !15)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!22 = !DILocation(line: 6, column: 9, scope: !21)
!23 = !DILocation(line: 7, column: 21, scope: !21)
!24 = !DILocation(line: 8, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 8, column: 9)
!26 = !DILocation(line: 8, column: 9, scope: !21)
!27 = !DILocation(line: 11, column: 19, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 11, column: 13)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 10, column: 7)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 5)
!31 = !DILocation(line: 11, column: 80, scope: !28)
!32 = !DILocation(line: 11, column: 13, scope: !28)
!33 = !DILocation(line: 11, column: 87, scope: !28)
!34 = !DILocation(line: 11, column: 13, scope: !29)
!35 = !DILocation(line: 13, column: 34, scope: !36)
!36 = distinct !DILexicalBlock(scope: !28, file: !1, line: 12, column: 9)
!37 = !DILocation(line: 13, column: 29, scope: !36)
!38 = !DILocation(line: 13, column: 27, scope: !36)
!39 = !DILocation(line: 14, column: 9, scope: !36)
!40 = !DILocation(line: 17, column: 11, scope: !41)
!41 = distinct !DILexicalBlock(scope: !28, file: !1, line: 16, column: 9)
!42 = !DILocation(line: 21, column: 5, scope: !30)
!43 = !DILocation(line: 25, column: 19, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 25, column: 13)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 24, column: 7)
!46 = distinct !DILexicalBlock(scope: !25, file: !1, line: 23, column: 5)
!47 = !DILocation(line: 25, column: 80, scope: !44)
!48 = !DILocation(line: 25, column: 13, scope: !44)
!49 = !DILocation(line: 25, column: 87, scope: !44)
!50 = !DILocation(line: 25, column: 13, scope: !45)
!51 = !DILocation(line: 27, column: 34, scope: !52)
!52 = distinct !DILexicalBlock(scope: !44, file: !1, line: 26, column: 9)
!53 = !DILocation(line: 27, column: 29, scope: !52)
!54 = !DILocation(line: 27, column: 27, scope: !52)
!55 = !DILocation(line: 28, column: 9, scope: !52)
!56 = !DILocation(line: 31, column: 11, scope: !57)
!57 = distinct !DILexicalBlock(scope: !44, file: !1, line: 30, column: 9)
!58 = !DILocation(line: 37, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !21, file: !1, line: 37, column: 9)
!60 = !DILocation(line: 37, column: 9, scope: !21)
!61 = !DILocalVariable(name: "_goodB2G_i_0", scope: !62, file: !1, line: 40, type: !15)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 39, column: 7)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 38, column: 5)
!64 = !DILocation(line: 40, column: 13, scope: !62)
!65 = !DILocalVariable(name: "_goodB2G_buffer_0", scope: !62, file: !1, line: 41, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 10)
!69 = !DILocation(line: 41, column: 13, scope: !62)
!70 = !DILocation(line: 42, column: 14, scope: !71)
!71 = distinct !DILexicalBlock(scope: !62, file: !1, line: 42, column: 13)
!72 = !DILocation(line: 42, column: 30, scope: !71)
!73 = !DILocation(line: 42, column: 36, scope: !71)
!74 = !DILocation(line: 42, column: 40, scope: !71)
!75 = !DILocation(line: 42, column: 56, scope: !71)
!76 = !DILocation(line: 42, column: 13, scope: !62)
!77 = !DILocation(line: 44, column: 29, scope: !78)
!78 = distinct !DILexicalBlock(scope: !71, file: !1, line: 43, column: 9)
!79 = !DILocation(line: 44, column: 11, scope: !78)
!80 = !DILocation(line: 44, column: 46, scope: !78)
!81 = !DILocation(line: 45, column: 29, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !1, line: 45, column: 11)
!83 = !DILocation(line: 45, column: 16, scope: !82)
!84 = !DILocation(line: 45, column: 34, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !1, line: 45, column: 11)
!86 = !DILocation(line: 45, column: 47, scope: !85)
!87 = !DILocation(line: 45, column: 11, scope: !82)
!88 = !DILocation(line: 47, column: 44, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 46, column: 11)
!90 = !DILocation(line: 47, column: 26, scope: !89)
!91 = !DILocation(line: 47, column: 13, scope: !89)
!92 = !DILocation(line: 48, column: 11, scope: !89)
!93 = !DILocation(line: 45, column: 65, scope: !85)
!94 = !DILocation(line: 45, column: 11, scope: !85)
!95 = distinct !{!95, !87, !96, !97}
!96 = !DILocation(line: 48, column: 11, scope: !82)
!97 = !{!"llvm.loop.mustprogress"}
!98 = !DILocation(line: 50, column: 9, scope: !78)
!99 = !DILocation(line: 53, column: 11, scope: !100)
!100 = distinct !DILexicalBlock(scope: !71, file: !1, line: 52, column: 9)
!101 = !DILocation(line: 57, column: 5, scope: !63)
!102 = !DILocalVariable(name: "_goodB2G_i_0", scope: !103, file: !1, line: 61, type: !15)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 60, column: 7)
!104 = distinct !DILexicalBlock(scope: !59, file: !1, line: 59, column: 5)
!105 = !DILocation(line: 61, column: 13, scope: !103)
!106 = !DILocalVariable(name: "_goodB2G_buffer_0", scope: !103, file: !1, line: 62, type: !66)
!107 = !DILocation(line: 62, column: 13, scope: !103)
!108 = !DILocation(line: 63, column: 14, scope: !109)
!109 = distinct !DILexicalBlock(scope: !103, file: !1, line: 63, column: 13)
!110 = !DILocation(line: 63, column: 30, scope: !109)
!111 = !DILocation(line: 63, column: 36, scope: !109)
!112 = !DILocation(line: 63, column: 40, scope: !109)
!113 = !DILocation(line: 63, column: 56, scope: !109)
!114 = !DILocation(line: 63, column: 13, scope: !103)
!115 = !DILocation(line: 65, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !109, file: !1, line: 64, column: 9)
!117 = !DILocation(line: 65, column: 11, scope: !116)
!118 = !DILocation(line: 65, column: 46, scope: !116)
!119 = !DILocation(line: 66, column: 29, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 66, column: 11)
!121 = !DILocation(line: 66, column: 16, scope: !120)
!122 = !DILocation(line: 66, column: 34, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !1, line: 66, column: 11)
!124 = !DILocation(line: 66, column: 47, scope: !123)
!125 = !DILocation(line: 66, column: 11, scope: !120)
!126 = !DILocation(line: 68, column: 44, scope: !127)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 67, column: 11)
!128 = !DILocation(line: 68, column: 26, scope: !127)
!129 = !DILocation(line: 68, column: 13, scope: !127)
!130 = !DILocation(line: 69, column: 11, scope: !127)
!131 = !DILocation(line: 66, column: 65, scope: !123)
!132 = !DILocation(line: 66, column: 11, scope: !123)
!133 = distinct !{!133, !125, !134, !97}
!134 = !DILocation(line: 69, column: 11, scope: !120)
!135 = !DILocation(line: 71, column: 9, scope: !116)
!136 = !DILocation(line: 74, column: 11, scope: !137)
!137 = distinct !DILexicalBlock(scope: !109, file: !1, line: 73, column: 9)
!138 = !DILocation(line: 37, column: 34, scope: !59)
!139 = !DILabel(scope: !21, name: "goodB2G_label_", file: !1, line: 80)
!140 = !DILocation(line: 80, column: 5, scope: !21)
!141 = !DILocalVariable(name: "_goodG2B_data_0", scope: !142, file: !1, line: 87, type: !15)
!142 = distinct !DILexicalBlock(scope: !7, file: !1, line: 86, column: 3)
!143 = !DILocation(line: 87, column: 9, scope: !142)
!144 = !DILocation(line: 88, column: 21, scope: !142)
!145 = !DILocation(line: 89, column: 9, scope: !146)
!146 = distinct !DILexicalBlock(scope: !142, file: !1, line: 89, column: 9)
!147 = !DILocation(line: 89, column: 9, scope: !142)
!148 = !DILocation(line: 91, column: 23, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !1, line: 90, column: 5)
!150 = !DILocation(line: 92, column: 5, scope: !149)
!151 = !DILocation(line: 95, column: 23, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !1, line: 94, column: 5)
!153 = !DILocation(line: 98, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !142, file: !1, line: 98, column: 9)
!155 = !DILocation(line: 98, column: 9, scope: !142)
!156 = !DILocalVariable(name: "_goodG2B_i_0", scope: !157, file: !1, line: 101, type: !15)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 100, column: 7)
!158 = distinct !DILexicalBlock(scope: !154, file: !1, line: 99, column: 5)
!159 = !DILocation(line: 101, column: 13, scope: !157)
!160 = !DILocalVariable(name: "_goodG2B_buffer_0", scope: !157, file: !1, line: 102, type: !66)
!161 = !DILocation(line: 102, column: 13, scope: !157)
!162 = !DILocation(line: 103, column: 13, scope: !163)
!163 = distinct !DILexicalBlock(scope: !157, file: !1, line: 103, column: 13)
!164 = !DILocation(line: 103, column: 29, scope: !163)
!165 = !DILocation(line: 103, column: 13, scope: !157)
!166 = !DILocation(line: 105, column: 29, scope: !167)
!167 = distinct !DILexicalBlock(scope: !163, file: !1, line: 104, column: 9)
!168 = !DILocation(line: 105, column: 11, scope: !167)
!169 = !DILocation(line: 105, column: 46, scope: !167)
!170 = !DILocation(line: 106, column: 29, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !1, line: 106, column: 11)
!172 = !DILocation(line: 106, column: 16, scope: !171)
!173 = !DILocation(line: 106, column: 34, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !1, line: 106, column: 11)
!175 = !DILocation(line: 106, column: 47, scope: !174)
!176 = !DILocation(line: 106, column: 11, scope: !171)
!177 = !DILocation(line: 108, column: 44, scope: !178)
!178 = distinct !DILexicalBlock(scope: !174, file: !1, line: 107, column: 11)
!179 = !DILocation(line: 108, column: 26, scope: !178)
!180 = !DILocation(line: 108, column: 13, scope: !178)
!181 = !DILocation(line: 109, column: 11, scope: !178)
!182 = !DILocation(line: 106, column: 65, scope: !174)
!183 = !DILocation(line: 106, column: 11, scope: !174)
!184 = distinct !{!184, !176, !185, !97}
!185 = !DILocation(line: 109, column: 11, scope: !171)
!186 = !DILocation(line: 111, column: 9, scope: !167)
!187 = !DILocation(line: 114, column: 11, scope: !188)
!188 = distinct !DILexicalBlock(scope: !163, file: !1, line: 113, column: 9)
!189 = !DILocation(line: 118, column: 5, scope: !158)
!190 = !DILocalVariable(name: "_goodG2B_i_0", scope: !191, file: !1, line: 122, type: !15)
!191 = distinct !DILexicalBlock(scope: !192, file: !1, line: 121, column: 7)
!192 = distinct !DILexicalBlock(scope: !154, file: !1, line: 120, column: 5)
!193 = !DILocation(line: 122, column: 13, scope: !191)
!194 = !DILocalVariable(name: "_goodG2B_buffer_0", scope: !191, file: !1, line: 123, type: !66)
!195 = !DILocation(line: 123, column: 13, scope: !191)
!196 = !DILocation(line: 124, column: 13, scope: !197)
!197 = distinct !DILexicalBlock(scope: !191, file: !1, line: 124, column: 13)
!198 = !DILocation(line: 124, column: 29, scope: !197)
!199 = !DILocation(line: 124, column: 13, scope: !191)
!200 = !DILocation(line: 126, column: 11, scope: !201)
!201 = distinct !DILexicalBlock(scope: !197, file: !1, line: 125, column: 9)
!202 = !DILocation(line: 126, column: 18, scope: !201)
!203 = !DILocation(line: 127, column: 29, scope: !204)
!204 = distinct !DILexicalBlock(scope: !201, file: !1, line: 127, column: 11)
!205 = !DILocation(line: 127, column: 16, scope: !204)
!206 = !DILocation(line: 127, column: 34, scope: !207)
!207 = distinct !DILexicalBlock(scope: !204, file: !1, line: 127, column: 11)
!208 = !DILocation(line: 127, column: 47, scope: !207)
!209 = !DILocation(line: 127, column: 11, scope: !204)
!210 = !DILocation(line: 129, column: 44, scope: !211)
!211 = distinct !DILexicalBlock(scope: !207, file: !1, line: 128, column: 11)
!212 = !DILocation(line: 129, column: 26, scope: !211)
!213 = !DILocation(line: 129, column: 13, scope: !211)
!214 = !DILocation(line: 130, column: 11, scope: !211)
!215 = !DILocation(line: 127, column: 65, scope: !207)
!216 = !DILocation(line: 127, column: 11, scope: !207)
!217 = distinct !{!217, !209, !218, !97}
!218 = !DILocation(line: 130, column: 11, scope: !204)
!219 = !DILocation(line: 132, column: 9, scope: !201)
!220 = !DILocation(line: 135, column: 11, scope: !221)
!221 = distinct !DILexicalBlock(scope: !197, file: !1, line: 134, column: 9)
!222 = !DILocation(line: 98, column: 34, scope: !154)
!223 = !DILabel(scope: !142, name: "goodG2B_label_", file: !1, line: 141)
!224 = !DILocation(line: 141, column: 5, scope: !142)
!225 = !DILocation(line: 146, column: 3, scope: !142)
!226 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_good_label_", file: !1, line: 147)
!227 = !DILocation(line: 147, column: 3, scope: !7)
!228 = !DILocation(line: 152, column: 1, scope: !7)
