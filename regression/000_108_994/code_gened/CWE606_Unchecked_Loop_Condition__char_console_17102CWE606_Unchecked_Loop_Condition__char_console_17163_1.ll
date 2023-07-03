; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_17102CWE606_Unchecked_Loop_Condition__char_console_17163_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_17102CWE606_Unchecked_Loop_Condition__char_console_17163_1.c"
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
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_17102CWE606_Unchecked_Loop_Condition__char_console_17163_1(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_k_0 = alloca i32, align 4
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_i_1 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  %_goodG2B_h_0 = alloca i32, align 4
  %_goodG2B_j_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_n_0 = alloca i32, align 4
  %_goodG2B_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !21, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_k_0, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !26, metadata !DIExpression()), !dbg !30
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !30
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !30
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !31
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !32
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !33
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !36
  %cmp = icmp slt i32 %1, 1, !dbg !38
  br i1 %cmp, label %for.body, label %for.end, !dbg !39

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !40, metadata !DIExpression()), !dbg !46
  %2 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !47
  %call = call i64 @strlen(i8* %2) #6, !dbg !48
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !46
  %3 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !49
  %sub = sub i64 100, %3, !dbg !51
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !52
  br i1 %cmp1, label %if.then, label %if.end19, !dbg !53

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !54
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !57
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !58
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !59
  %sub2 = sub i64 100, %6, !dbg !60
  %conv = trunc i64 %sub2 to i32, !dbg !61
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !62
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !63
  %cmp4 = icmp ne i8* %call3, null, !dbg !64
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !65

if.then6:                                         ; preds = %if.then
  %8 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !66
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !68
  store i64 %call7, i64* %_goodB2G_dataLen_0, align 8, !dbg !69
  %9 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !70
  %cmp8 = icmp ugt i64 %9, 0, !dbg !72
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !73

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !74
  %11 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !75
  %sub10 = sub i64 %11, 1, !dbg !76
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !74
  %12 = load i8, i8* %arrayidx, align 1, !dbg !74
  %conv11 = sext i8 %12 to i32, !dbg !74
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !77
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !78

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !79
  %14 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !81
  %sub15 = sub i64 %14, 1, !dbg !82
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !79
  store i8 0, i8* %arrayidx16, align 1, !dbg !83
  br label %if.end, !dbg !84

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !85

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !86
  %15 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !88
  %16 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !89
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !88
  store i8 0, i8* %arrayidx17, align 1, !dbg !90
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !91

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %if.end19
  %17 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !93
  %inc = add nsw i32 %17, 1, !dbg !93
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !93
  br label %for.cond, !dbg !94, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %_goodB2G_k_0, align 4, !dbg !98
  br label %for.cond20, !dbg !100

for.cond20:                                       ; preds = %for.inc41, %for.end
  %18 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !101
  %cmp21 = icmp slt i32 %18, 1, !dbg !103
  br i1 %cmp21, label %for.body23, label %for.end43, !dbg !104

for.body23:                                       ; preds = %for.cond20
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_1, metadata !105, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !111, metadata !DIExpression()), !dbg !112
  %19 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !113
  %call24 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !115
  %cmp25 = icmp eq i32 %call24, 1, !dbg !116
  br i1 %cmp25, label %if.then27, label %if.end40, !dbg !117

if.then27:                                        ; preds = %for.body23
  %20 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !118
  %cmp28 = icmp slt i32 %20, 10000, !dbg !121
  br i1 %cmp28, label %if.then30, label %if.end39, !dbg !122

if.then30:                                        ; preds = %if.then27
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !123
  store i32 0, i32* %_goodB2G_i_1, align 4, !dbg !125
  br label %for.cond31, !dbg !127

for.cond31:                                       ; preds = %for.inc36, %if.then30
  %21 = load i32, i32* %_goodB2G_i_1, align 4, !dbg !128
  %22 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !130
  %cmp32 = icmp slt i32 %21, %22, !dbg !131
  br i1 %cmp32, label %for.body34, label %for.end38, !dbg !132

for.body34:                                       ; preds = %for.cond31
  %23 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !133
  %inc35 = add nsw i32 %23, 1, !dbg !133
  store i32 %inc35, i32* %_goodB2G_intVariable_0, align 4, !dbg !133
  br label %for.inc36, !dbg !135

for.inc36:                                        ; preds = %for.body34
  %24 = load i32, i32* %_goodB2G_i_1, align 4, !dbg !136
  %inc37 = add nsw i32 %24, 1, !dbg !136
  store i32 %inc37, i32* %_goodB2G_i_1, align 4, !dbg !136
  br label %for.cond31, !dbg !137, !llvm.loop !138

for.end38:                                        ; preds = %for.cond31
  %25 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !140
  call void @printIntLine(i32 %25), !dbg !141
  br label %if.end39, !dbg !142

if.end39:                                         ; preds = %for.end38, %if.then27
  br label %if.end40, !dbg !143

if.end40:                                         ; preds = %if.end39, %for.body23
  br label %for.inc41, !dbg !144

for.inc41:                                        ; preds = %if.end40
  %26 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !145
  %inc42 = add nsw i32 %26, 1, !dbg !145
  store i32 %inc42, i32* %_goodB2G_k_0, align 4, !dbg !145
  br label %for.cond20, !dbg !146, !llvm.loop !147

for.end43:                                        ; preds = %for.cond20
  br label %goodB2G_label_, !dbg !148

goodB2G_label_:                                   ; preds = %for.end43
  call void @llvm.dbg.label(metadata !149), !dbg !150
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_h_0, metadata !151, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_j_0, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !158, metadata !DIExpression()), !dbg !159
  %27 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !159
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 100, i1 false), !dbg !159
  %arraydecay44 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !160
  store i8* %arraydecay44, i8** %_goodG2B_data_0, align 8, !dbg !161
  store i32 0, i32* %_goodG2B_h_0, align 4, !dbg !162
  br label %for.cond45, !dbg !164

for.cond45:                                       ; preds = %for.inc50, %goodB2G_label_
  %28 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !165
  %cmp46 = icmp slt i32 %28, 1, !dbg !167
  br i1 %cmp46, label %for.body48, label %for.end52, !dbg !168

for.body48:                                       ; preds = %for.cond45
  %29 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !169
  %call49 = call i8* @strcpy(i8* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !171
  br label %for.inc50, !dbg !172

for.inc50:                                        ; preds = %for.body48
  %30 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !173
  %inc51 = add nsw i32 %30, 1, !dbg !173
  store i32 %inc51, i32* %_goodG2B_h_0, align 4, !dbg !173
  br label %for.cond45, !dbg !174, !llvm.loop !175

for.end52:                                        ; preds = %for.cond45
  store i32 0, i32* %_goodG2B_j_0, align 4, !dbg !177
  br label %for.cond53, !dbg !179

for.cond53:                                       ; preds = %for.inc62, %for.end52
  %31 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !180
  %cmp54 = icmp slt i32 %31, 1, !dbg !182
  br i1 %cmp54, label %for.body56, label %for.end64, !dbg !183

for.body56:                                       ; preds = %for.cond53
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !184, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !190, metadata !DIExpression()), !dbg !191
  %32 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !192
  %call57 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0) #7, !dbg !194
  %cmp58 = icmp eq i32 %call57, 1, !dbg !195
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !196

if.then60:                                        ; preds = %for.body56
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !197
  %33 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !199
  %34 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !200
  call void %33(i32 %34), !dbg !199
  %35 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !201
  call void @printIntLine(i32 %35), !dbg !202
  br label %if.end61, !dbg !203

if.end61:                                         ; preds = %if.then60, %for.body56
  br label %for.inc62, !dbg !204

for.inc62:                                        ; preds = %if.end61
  %36 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !205
  %inc63 = add nsw i32 %36, 1, !dbg !205
  store i32 %inc63, i32* %_goodG2B_j_0, align 4, !dbg !205
  br label %for.cond53, !dbg !206, !llvm.loop !207

for.end64:                                        ; preds = %for.cond53
  br label %goodG2B_label_, !dbg !208

goodG2B_label_:                                   ; preds = %for.end64
  call void @llvm.dbg.label(metadata !209), !dbg !210
  br label %CWE606_Unchecked_Loop_Condition__char_console_17_good_label_, !dbg !211

CWE606_Unchecked_Loop_Condition__char_console_17_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !212), !dbg !213
  ret void, !dbg !214
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_17102CWE606_Unchecked_Loop_Condition__char_console_17163_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_994/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_17102CWE606_Unchecked_Loop_Condition__char_console_17163_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 117, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 141, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_i_0", scope: !22, file: !1, line: 6, type: !4)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DILocation(line: 6, column: 9, scope: !22)
!24 = !DILocalVariable(name: "_goodB2G_k_0", scope: !22, file: !1, line: 7, type: !4)
!25 = !DILocation(line: 7, column: 9, scope: !22)
!26 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !22, file: !1, line: 8, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 100)
!30 = !DILocation(line: 8, column: 10, scope: !22)
!31 = !DILocation(line: 9, column: 23, scope: !22)
!32 = !DILocation(line: 9, column: 21, scope: !22)
!33 = !DILocation(line: 10, column: 23, scope: !34)
!34 = distinct !DILexicalBlock(scope: !22, file: !1, line: 10, column: 5)
!35 = !DILocation(line: 10, column: 10, scope: !34)
!36 = !DILocation(line: 10, column: 28, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 5)
!38 = !DILocation(line: 10, column: 41, scope: !37)
!39 = !DILocation(line: 10, column: 5, scope: !34)
!40 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !41, file: !1, line: 13, type: !43)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 12, column: 7)
!42 = distinct !DILexicalBlock(scope: !37, file: !1, line: 11, column: 5)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !44, line: 46, baseType: !45)
!44 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!45 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!46 = !DILocation(line: 13, column: 16, scope: !41)
!47 = !DILocation(line: 13, column: 44, scope: !41)
!48 = !DILocation(line: 13, column: 37, scope: !41)
!49 = !DILocation(line: 14, column: 20, scope: !50)
!50 = distinct !DILexicalBlock(scope: !41, file: !1, line: 14, column: 13)
!51 = !DILocation(line: 14, column: 18, scope: !50)
!52 = !DILocation(line: 14, column: 40, scope: !50)
!53 = !DILocation(line: 14, column: 13, scope: !41)
!54 = !DILocation(line: 16, column: 21, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 16, column: 15)
!56 = distinct !DILexicalBlock(scope: !50, file: !1, line: 15, column: 9)
!57 = !DILocation(line: 16, column: 39, scope: !55)
!58 = !DILocation(line: 16, column: 37, scope: !55)
!59 = !DILocation(line: 16, column: 72, scope: !55)
!60 = !DILocation(line: 16, column: 70, scope: !55)
!61 = !DILocation(line: 16, column: 59, scope: !55)
!62 = !DILocation(line: 16, column: 93, scope: !55)
!63 = !DILocation(line: 16, column: 15, scope: !55)
!64 = !DILocation(line: 16, column: 100, scope: !55)
!65 = !DILocation(line: 16, column: 15, scope: !56)
!66 = !DILocation(line: 18, column: 41, scope: !67)
!67 = distinct !DILexicalBlock(scope: !55, file: !1, line: 17, column: 11)
!68 = !DILocation(line: 18, column: 34, scope: !67)
!69 = !DILocation(line: 18, column: 32, scope: !67)
!70 = !DILocation(line: 19, column: 18, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 19, column: 17)
!72 = !DILocation(line: 19, column: 37, scope: !71)
!73 = !DILocation(line: 19, column: 42, scope: !71)
!74 = !DILocation(line: 19, column: 46, scope: !71)
!75 = !DILocation(line: 19, column: 62, scope: !71)
!76 = !DILocation(line: 19, column: 81, scope: !71)
!77 = !DILocation(line: 19, column: 86, scope: !71)
!78 = !DILocation(line: 19, column: 17, scope: !67)
!79 = !DILocation(line: 21, column: 15, scope: !80)
!80 = distinct !DILexicalBlock(scope: !71, file: !1, line: 20, column: 13)
!81 = !DILocation(line: 21, column: 31, scope: !80)
!82 = !DILocation(line: 21, column: 50, scope: !80)
!83 = !DILocation(line: 21, column: 55, scope: !80)
!84 = !DILocation(line: 22, column: 13, scope: !80)
!85 = !DILocation(line: 24, column: 11, scope: !67)
!86 = !DILocation(line: 27, column: 13, scope: !87)
!87 = distinct !DILexicalBlock(scope: !55, file: !1, line: 26, column: 11)
!88 = !DILocation(line: 28, column: 13, scope: !87)
!89 = !DILocation(line: 28, column: 29, scope: !87)
!90 = !DILocation(line: 28, column: 49, scope: !87)
!91 = !DILocation(line: 31, column: 9, scope: !56)
!92 = !DILocation(line: 34, column: 5, scope: !42)
!93 = !DILocation(line: 10, column: 58, scope: !37)
!94 = !DILocation(line: 10, column: 5, scope: !37)
!95 = distinct !{!95, !39, !96, !97}
!96 = !DILocation(line: 34, column: 5, scope: !34)
!97 = !{!"llvm.loop.mustprogress"}
!98 = !DILocation(line: 36, column: 23, scope: !99)
!99 = distinct !DILexicalBlock(scope: !22, file: !1, line: 36, column: 5)
!100 = !DILocation(line: 36, column: 10, scope: !99)
!101 = !DILocation(line: 36, column: 28, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !1, line: 36, column: 5)
!103 = !DILocation(line: 36, column: 41, scope: !102)
!104 = !DILocation(line: 36, column: 5, scope: !99)
!105 = !DILocalVariable(name: "_goodB2G_i_1", scope: !106, file: !1, line: 39, type: !4)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 38, column: 7)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 37, column: 5)
!108 = !DILocation(line: 39, column: 13, scope: !106)
!109 = !DILocalVariable(name: "_goodB2G_n_0", scope: !106, file: !1, line: 40, type: !4)
!110 = !DILocation(line: 40, column: 13, scope: !106)
!111 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !106, file: !1, line: 41, type: !4)
!112 = !DILocation(line: 41, column: 13, scope: !106)
!113 = !DILocation(line: 42, column: 20, scope: !114)
!114 = distinct !DILexicalBlock(scope: !106, file: !1, line: 42, column: 13)
!115 = !DILocation(line: 42, column: 13, scope: !114)
!116 = !DILocation(line: 42, column: 58, scope: !114)
!117 = !DILocation(line: 42, column: 13, scope: !106)
!118 = !DILocation(line: 44, column: 15, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 44, column: 15)
!120 = distinct !DILexicalBlock(scope: !114, file: !1, line: 43, column: 9)
!121 = !DILocation(line: 44, column: 28, scope: !119)
!122 = !DILocation(line: 44, column: 15, scope: !120)
!123 = !DILocation(line: 46, column: 36, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !1, line: 45, column: 11)
!125 = !DILocation(line: 47, column: 31, scope: !126)
!126 = distinct !DILexicalBlock(scope: !124, file: !1, line: 47, column: 13)
!127 = !DILocation(line: 47, column: 18, scope: !126)
!128 = !DILocation(line: 47, column: 36, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !1, line: 47, column: 13)
!130 = !DILocation(line: 47, column: 51, scope: !129)
!131 = !DILocation(line: 47, column: 49, scope: !129)
!132 = !DILocation(line: 47, column: 13, scope: !126)
!133 = !DILocation(line: 49, column: 37, scope: !134)
!134 = distinct !DILexicalBlock(scope: !129, file: !1, line: 48, column: 13)
!135 = !DILocation(line: 50, column: 13, scope: !134)
!136 = !DILocation(line: 47, column: 77, scope: !129)
!137 = !DILocation(line: 47, column: 13, scope: !129)
!138 = distinct !{!138, !132, !139, !97}
!139 = !DILocation(line: 50, column: 13, scope: !126)
!140 = !DILocation(line: 52, column: 26, scope: !124)
!141 = !DILocation(line: 52, column: 13, scope: !124)
!142 = !DILocation(line: 53, column: 11, scope: !124)
!143 = !DILocation(line: 55, column: 9, scope: !120)
!144 = !DILocation(line: 58, column: 5, scope: !107)
!145 = !DILocation(line: 36, column: 58, scope: !102)
!146 = !DILocation(line: 36, column: 5, scope: !102)
!147 = distinct !{!147, !104, !148, !97}
!148 = !DILocation(line: 58, column: 5, scope: !99)
!149 = !DILabel(scope: !22, name: "goodB2G_label_", file: !1, line: 60)
!150 = !DILocation(line: 60, column: 5, scope: !22)
!151 = !DILocalVariable(name: "_goodG2B_h_0", scope: !152, file: !1, line: 67, type: !4)
!152 = distinct !DILexicalBlock(scope: !9, file: !1, line: 66, column: 3)
!153 = !DILocation(line: 67, column: 9, scope: !152)
!154 = !DILocalVariable(name: "_goodG2B_j_0", scope: !152, file: !1, line: 68, type: !4)
!155 = !DILocation(line: 68, column: 9, scope: !152)
!156 = !DILocalVariable(name: "_goodG2B_data_0", scope: !152, file: !1, line: 69, type: !12)
!157 = !DILocation(line: 69, column: 11, scope: !152)
!158 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !152, file: !1, line: 70, type: !27)
!159 = !DILocation(line: 70, column: 10, scope: !152)
!160 = !DILocation(line: 71, column: 23, scope: !152)
!161 = !DILocation(line: 71, column: 21, scope: !152)
!162 = !DILocation(line: 72, column: 23, scope: !163)
!163 = distinct !DILexicalBlock(scope: !152, file: !1, line: 72, column: 5)
!164 = !DILocation(line: 72, column: 10, scope: !163)
!165 = !DILocation(line: 72, column: 28, scope: !166)
!166 = distinct !DILexicalBlock(scope: !163, file: !1, line: 72, column: 5)
!167 = !DILocation(line: 72, column: 41, scope: !166)
!168 = !DILocation(line: 72, column: 5, scope: !163)
!169 = !DILocation(line: 74, column: 14, scope: !170)
!170 = distinct !DILexicalBlock(scope: !166, file: !1, line: 73, column: 5)
!171 = !DILocation(line: 74, column: 7, scope: !170)
!172 = !DILocation(line: 75, column: 5, scope: !170)
!173 = !DILocation(line: 72, column: 58, scope: !166)
!174 = !DILocation(line: 72, column: 5, scope: !166)
!175 = distinct !{!175, !168, !176, !97}
!176 = !DILocation(line: 75, column: 5, scope: !163)
!177 = !DILocation(line: 77, column: 23, scope: !178)
!178 = distinct !DILexicalBlock(scope: !152, file: !1, line: 77, column: 5)
!179 = !DILocation(line: 77, column: 10, scope: !178)
!180 = !DILocation(line: 77, column: 28, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !1, line: 77, column: 5)
!182 = !DILocation(line: 77, column: 41, scope: !181)
!183 = !DILocation(line: 77, column: 5, scope: !178)
!184 = !DILocalVariable(name: "_goodG2B_i_0", scope: !185, file: !1, line: 80, type: !4)
!185 = distinct !DILexicalBlock(scope: !186, file: !1, line: 79, column: 7)
!186 = distinct !DILexicalBlock(scope: !181, file: !1, line: 78, column: 5)
!187 = !DILocation(line: 80, column: 13, scope: !185)
!188 = !DILocalVariable(name: "_goodG2B_n_0", scope: !185, file: !1, line: 81, type: !4)
!189 = !DILocation(line: 81, column: 13, scope: !185)
!190 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !185, file: !1, line: 82, type: !4)
!191 = !DILocation(line: 82, column: 13, scope: !185)
!192 = !DILocation(line: 83, column: 20, scope: !193)
!193 = distinct !DILexicalBlock(scope: !185, file: !1, line: 83, column: 13)
!194 = !DILocation(line: 83, column: 13, scope: !193)
!195 = !DILocation(line: 83, column: 58, scope: !193)
!196 = !DILocation(line: 83, column: 13, scope: !185)
!197 = !DILocation(line: 85, column: 34, scope: !198)
!198 = distinct !DILexicalBlock(scope: !193, file: !1, line: 84, column: 9)
!199 = !DILocation(line: 86, column: 11, scope: !198)
!200 = !DILocation(line: 86, column: 18, scope: !198)
!201 = !DILocation(line: 87, column: 24, scope: !198)
!202 = !DILocation(line: 87, column: 11, scope: !198)
!203 = !DILocation(line: 88, column: 9, scope: !198)
!204 = !DILocation(line: 91, column: 5, scope: !186)
!205 = !DILocation(line: 77, column: 58, scope: !181)
!206 = !DILocation(line: 77, column: 5, scope: !181)
!207 = distinct !{!207, !183, !208, !97}
!208 = !DILocation(line: 91, column: 5, scope: !178)
!209 = !DILabel(scope: !152, name: "goodG2B_label_", file: !1, line: 93)
!210 = !DILocation(line: 93, column: 5, scope: !152)
!211 = !DILocation(line: 98, column: 3, scope: !152)
!212 = !DILabel(scope: !9, name: "CWE606_Unchecked_Loop_Condition__char_console_17_good_label_", file: !1, line: 99)
!213 = !DILocation(line: 99, column: 3, scope: !9)
!214 = !DILocation(line: 104, column: 1, scope: !9)
