; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_1792CWE606_Unchecked_Loop_Condition__char_environment_17143_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_1792CWE606_Unchecked_Loop_Condition__char_environment_17143_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_1792CWE606_Unchecked_Loop_Condition__char_environment_17143_1(i8* %_goodB2G_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_k_0 = alloca i32, align 4
  %_goodB2G_data_0 = alloca i8*, align 8
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
  store i8* %_goodB2G_environment_0, i8** %_goodB2G_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_k_0, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !27, metadata !DIExpression()), !dbg !31
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !31
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !31
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !32
  store i8* %arraydecay, i8** %_goodB2G_data_0, align 8, !dbg !33
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !34
  br label %for.cond, !dbg !36

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !37
  %cmp = icmp slt i32 %1, 1, !dbg !39
  br i1 %cmp, label %for.body, label %for.end, !dbg !40

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !41, metadata !DIExpression()), !dbg !47
  %2 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !48
  %call = call i64 @strlen(i8* %2) #6, !dbg !49
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !47
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !50
  store i8* %call1, i8** %_goodB2G_environment_0.addr, align 8, !dbg !51
  %3 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !52
  %cmp2 = icmp ne i8* %3, null, !dbg !54
  br i1 %cmp2, label %if.then, label %if.end, !dbg !55

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !56
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !58
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !59
  %6 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !60
  %7 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !61
  %sub = sub i64 100, %7, !dbg !62
  %sub3 = sub i64 %sub, 1, !dbg !63
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !64
  br label %if.end, !dbg !65

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !66

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !67
  %inc = add nsw i32 %8, 1, !dbg !67
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !67
  br label %for.cond, !dbg !68, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %_goodB2G_k_0, align 4, !dbg !72
  br label %for.cond5, !dbg !74

for.cond5:                                        ; preds = %for.inc22, %for.end
  %9 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !75
  %cmp6 = icmp slt i32 %9, 1, !dbg !77
  br i1 %cmp6, label %for.body7, label %for.end24, !dbg !78

for.body7:                                        ; preds = %for.cond5
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_1, metadata !79, metadata !DIExpression()), !dbg !82
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !83, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !85, metadata !DIExpression()), !dbg !86
  %10 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !87
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !89
  %cmp9 = icmp eq i32 %call8, 1, !dbg !90
  br i1 %cmp9, label %if.then10, label %if.end21, !dbg !91

if.then10:                                        ; preds = %for.body7
  %11 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !92
  %cmp11 = icmp slt i32 %11, 10000, !dbg !95
  br i1 %cmp11, label %if.then12, label %if.end20, !dbg !96

if.then12:                                        ; preds = %if.then10
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !97
  store i32 0, i32* %_goodB2G_i_1, align 4, !dbg !99
  br label %for.cond13, !dbg !101

for.cond13:                                       ; preds = %for.inc17, %if.then12
  %12 = load i32, i32* %_goodB2G_i_1, align 4, !dbg !102
  %13 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !104
  %cmp14 = icmp slt i32 %12, %13, !dbg !105
  br i1 %cmp14, label %for.body15, label %for.end19, !dbg !106

for.body15:                                       ; preds = %for.cond13
  %14 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !107
  %inc16 = add nsw i32 %14, 1, !dbg !107
  store i32 %inc16, i32* %_goodB2G_intVariable_0, align 4, !dbg !107
  br label %for.inc17, !dbg !109

for.inc17:                                        ; preds = %for.body15
  %15 = load i32, i32* %_goodB2G_i_1, align 4, !dbg !110
  %inc18 = add nsw i32 %15, 1, !dbg !110
  store i32 %inc18, i32* %_goodB2G_i_1, align 4, !dbg !110
  br label %for.cond13, !dbg !111, !llvm.loop !112

for.end19:                                        ; preds = %for.cond13
  %16 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !114
  call void @printIntLine(i32 %16), !dbg !115
  br label %if.end20, !dbg !116

if.end20:                                         ; preds = %for.end19, %if.then10
  br label %if.end21, !dbg !117

if.end21:                                         ; preds = %if.end20, %for.body7
  br label %for.inc22, !dbg !118

for.inc22:                                        ; preds = %if.end21
  %17 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !119
  %inc23 = add nsw i32 %17, 1, !dbg !119
  store i32 %inc23, i32* %_goodB2G_k_0, align 4, !dbg !119
  br label %for.cond5, !dbg !120, !llvm.loop !121

for.end24:                                        ; preds = %for.cond5
  br label %goodB2G_label_, !dbg !122

goodB2G_label_:                                   ; preds = %for.end24
  call void @llvm.dbg.label(metadata !123), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_h_0, metadata !125, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_j_0, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !132, metadata !DIExpression()), !dbg !133
  %18 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !133
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 100, i1 false), !dbg !133
  %arraydecay25 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !134
  store i8* %arraydecay25, i8** %_goodG2B_data_0, align 8, !dbg !135
  store i32 0, i32* %_goodG2B_h_0, align 4, !dbg !136
  br label %for.cond26, !dbg !138

for.cond26:                                       ; preds = %for.inc30, %goodB2G_label_
  %19 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !139
  %cmp27 = icmp slt i32 %19, 1, !dbg !141
  br i1 %cmp27, label %for.body28, label %for.end32, !dbg !142

for.body28:                                       ; preds = %for.cond26
  %20 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !143
  %call29 = call i8* @strcpy(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !145
  br label %for.inc30, !dbg !146

for.inc30:                                        ; preds = %for.body28
  %21 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !147
  %inc31 = add nsw i32 %21, 1, !dbg !147
  store i32 %inc31, i32* %_goodG2B_h_0, align 4, !dbg !147
  br label %for.cond26, !dbg !148, !llvm.loop !149

for.end32:                                        ; preds = %for.cond26
  store i32 0, i32* %_goodG2B_j_0, align 4, !dbg !151
  br label %for.cond33, !dbg !153

for.cond33:                                       ; preds = %for.inc40, %for.end32
  %22 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !154
  %cmp34 = icmp slt i32 %22, 1, !dbg !156
  br i1 %cmp34, label %for.body35, label %for.end42, !dbg !157

for.body35:                                       ; preds = %for.cond33
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !158, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !164, metadata !DIExpression()), !dbg !165
  %23 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !166
  %call36 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0) #7, !dbg !168
  %cmp37 = icmp eq i32 %call36, 1, !dbg !169
  br i1 %cmp37, label %if.then38, label %if.end39, !dbg !170

if.then38:                                        ; preds = %for.body35
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !171
  %24 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !173
  %25 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !174
  call void %24(i32 %25), !dbg !173
  %26 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !175
  call void @printIntLine(i32 %26), !dbg !176
  br label %if.end39, !dbg !177

if.end39:                                         ; preds = %if.then38, %for.body35
  br label %for.inc40, !dbg !178

for.inc40:                                        ; preds = %if.end39
  %27 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !179
  %inc41 = add nsw i32 %27, 1, !dbg !179
  store i32 %inc41, i32* %_goodG2B_j_0, align 4, !dbg !179
  br label %for.cond33, !dbg !180, !llvm.loop !181

for.end42:                                        ; preds = %for.cond33
  br label %goodG2B_label_, !dbg !182

goodG2B_label_:                                   ; preds = %for.end42
  call void @llvm.dbg.label(metadata !183), !dbg !184
  br label %CWE606_Unchecked_Loop_Condition__char_environment_17_good_label_, !dbg !185

CWE606_Unchecked_Loop_Condition__char_environment_17_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !186), !dbg !187
  ret void, !dbg !188
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_1792CWE606_Unchecked_Loop_Condition__char_environment_17143_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_042/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_1792CWE606_Unchecked_Loop_Condition__char_environment_17143_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 124, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 155, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G_i_0", scope: !21, file: !1, line: 6, type: !15)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!22 = !DILocation(line: 6, column: 9, scope: !21)
!23 = !DILocalVariable(name: "_goodB2G_k_0", scope: !21, file: !1, line: 7, type: !15)
!24 = !DILocation(line: 7, column: 9, scope: !21)
!25 = !DILocalVariable(name: "_goodB2G_data_0", scope: !21, file: !1, line: 8, type: !10)
!26 = !DILocation(line: 8, column: 11, scope: !21)
!27 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !21, file: !1, line: 9, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 100)
!31 = !DILocation(line: 9, column: 10, scope: !21)
!32 = !DILocation(line: 10, column: 23, scope: !21)
!33 = !DILocation(line: 10, column: 21, scope: !21)
!34 = !DILocation(line: 11, column: 23, scope: !35)
!35 = distinct !DILexicalBlock(scope: !21, file: !1, line: 11, column: 5)
!36 = !DILocation(line: 11, column: 10, scope: !35)
!37 = !DILocation(line: 11, column: 28, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 11, column: 5)
!39 = !DILocation(line: 11, column: 41, scope: !38)
!40 = !DILocation(line: 11, column: 5, scope: !35)
!41 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !42, file: !1, line: 14, type: !44)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 13, column: 7)
!43 = distinct !DILexicalBlock(scope: !38, file: !1, line: 12, column: 5)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 46, baseType: !46)
!45 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!46 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!47 = !DILocation(line: 14, column: 16, scope: !42)
!48 = !DILocation(line: 14, column: 44, scope: !42)
!49 = !DILocation(line: 14, column: 37, scope: !42)
!50 = !DILocation(line: 15, column: 34, scope: !42)
!51 = !DILocation(line: 15, column: 32, scope: !42)
!52 = !DILocation(line: 16, column: 13, scope: !53)
!53 = distinct !DILexicalBlock(scope: !42, file: !1, line: 16, column: 13)
!54 = !DILocation(line: 16, column: 36, scope: !53)
!55 = !DILocation(line: 16, column: 13, scope: !42)
!56 = !DILocation(line: 18, column: 19, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 17, column: 9)
!58 = !DILocation(line: 18, column: 37, scope: !57)
!59 = !DILocation(line: 18, column: 35, scope: !57)
!60 = !DILocation(line: 18, column: 57, scope: !57)
!61 = !DILocation(line: 18, column: 88, scope: !57)
!62 = !DILocation(line: 18, column: 86, scope: !57)
!63 = !DILocation(line: 18, column: 108, scope: !57)
!64 = !DILocation(line: 18, column: 11, scope: !57)
!65 = !DILocation(line: 19, column: 9, scope: !57)
!66 = !DILocation(line: 22, column: 5, scope: !43)
!67 = !DILocation(line: 11, column: 58, scope: !38)
!68 = !DILocation(line: 11, column: 5, scope: !38)
!69 = distinct !{!69, !40, !70, !71}
!70 = !DILocation(line: 22, column: 5, scope: !35)
!71 = !{!"llvm.loop.mustprogress"}
!72 = !DILocation(line: 24, column: 23, scope: !73)
!73 = distinct !DILexicalBlock(scope: !21, file: !1, line: 24, column: 5)
!74 = !DILocation(line: 24, column: 10, scope: !73)
!75 = !DILocation(line: 24, column: 28, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !1, line: 24, column: 5)
!77 = !DILocation(line: 24, column: 41, scope: !76)
!78 = !DILocation(line: 24, column: 5, scope: !73)
!79 = !DILocalVariable(name: "_goodB2G_i_1", scope: !80, file: !1, line: 27, type: !15)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 26, column: 7)
!81 = distinct !DILexicalBlock(scope: !76, file: !1, line: 25, column: 5)
!82 = !DILocation(line: 27, column: 13, scope: !80)
!83 = !DILocalVariable(name: "_goodB2G_n_0", scope: !80, file: !1, line: 28, type: !15)
!84 = !DILocation(line: 28, column: 13, scope: !80)
!85 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !80, file: !1, line: 29, type: !15)
!86 = !DILocation(line: 29, column: 13, scope: !80)
!87 = !DILocation(line: 30, column: 20, scope: !88)
!88 = distinct !DILexicalBlock(scope: !80, file: !1, line: 30, column: 13)
!89 = !DILocation(line: 30, column: 13, scope: !88)
!90 = !DILocation(line: 30, column: 58, scope: !88)
!91 = !DILocation(line: 30, column: 13, scope: !80)
!92 = !DILocation(line: 32, column: 15, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 32, column: 15)
!94 = distinct !DILexicalBlock(scope: !88, file: !1, line: 31, column: 9)
!95 = !DILocation(line: 32, column: 28, scope: !93)
!96 = !DILocation(line: 32, column: 15, scope: !94)
!97 = !DILocation(line: 34, column: 36, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 33, column: 11)
!99 = !DILocation(line: 35, column: 31, scope: !100)
!100 = distinct !DILexicalBlock(scope: !98, file: !1, line: 35, column: 13)
!101 = !DILocation(line: 35, column: 18, scope: !100)
!102 = !DILocation(line: 35, column: 36, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !1, line: 35, column: 13)
!104 = !DILocation(line: 35, column: 51, scope: !103)
!105 = !DILocation(line: 35, column: 49, scope: !103)
!106 = !DILocation(line: 35, column: 13, scope: !100)
!107 = !DILocation(line: 37, column: 37, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 36, column: 13)
!109 = !DILocation(line: 38, column: 13, scope: !108)
!110 = !DILocation(line: 35, column: 77, scope: !103)
!111 = !DILocation(line: 35, column: 13, scope: !103)
!112 = distinct !{!112, !106, !113, !71}
!113 = !DILocation(line: 38, column: 13, scope: !100)
!114 = !DILocation(line: 40, column: 26, scope: !98)
!115 = !DILocation(line: 40, column: 13, scope: !98)
!116 = !DILocation(line: 41, column: 11, scope: !98)
!117 = !DILocation(line: 43, column: 9, scope: !94)
!118 = !DILocation(line: 46, column: 5, scope: !81)
!119 = !DILocation(line: 24, column: 58, scope: !76)
!120 = !DILocation(line: 24, column: 5, scope: !76)
!121 = distinct !{!121, !78, !122, !71}
!122 = !DILocation(line: 46, column: 5, scope: !73)
!123 = !DILabel(scope: !21, name: "goodB2G_label_", file: !1, line: 48)
!124 = !DILocation(line: 48, column: 5, scope: !21)
!125 = !DILocalVariable(name: "_goodG2B_h_0", scope: !126, file: !1, line: 55, type: !15)
!126 = distinct !DILexicalBlock(scope: !7, file: !1, line: 54, column: 3)
!127 = !DILocation(line: 55, column: 9, scope: !126)
!128 = !DILocalVariable(name: "_goodG2B_j_0", scope: !126, file: !1, line: 56, type: !15)
!129 = !DILocation(line: 56, column: 9, scope: !126)
!130 = !DILocalVariable(name: "_goodG2B_data_0", scope: !126, file: !1, line: 57, type: !10)
!131 = !DILocation(line: 57, column: 11, scope: !126)
!132 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !126, file: !1, line: 58, type: !28)
!133 = !DILocation(line: 58, column: 10, scope: !126)
!134 = !DILocation(line: 59, column: 23, scope: !126)
!135 = !DILocation(line: 59, column: 21, scope: !126)
!136 = !DILocation(line: 60, column: 23, scope: !137)
!137 = distinct !DILexicalBlock(scope: !126, file: !1, line: 60, column: 5)
!138 = !DILocation(line: 60, column: 10, scope: !137)
!139 = !DILocation(line: 60, column: 28, scope: !140)
!140 = distinct !DILexicalBlock(scope: !137, file: !1, line: 60, column: 5)
!141 = !DILocation(line: 60, column: 41, scope: !140)
!142 = !DILocation(line: 60, column: 5, scope: !137)
!143 = !DILocation(line: 62, column: 14, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 61, column: 5)
!145 = !DILocation(line: 62, column: 7, scope: !144)
!146 = !DILocation(line: 63, column: 5, scope: !144)
!147 = !DILocation(line: 60, column: 58, scope: !140)
!148 = !DILocation(line: 60, column: 5, scope: !140)
!149 = distinct !{!149, !142, !150, !71}
!150 = !DILocation(line: 63, column: 5, scope: !137)
!151 = !DILocation(line: 65, column: 23, scope: !152)
!152 = distinct !DILexicalBlock(scope: !126, file: !1, line: 65, column: 5)
!153 = !DILocation(line: 65, column: 10, scope: !152)
!154 = !DILocation(line: 65, column: 28, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !1, line: 65, column: 5)
!156 = !DILocation(line: 65, column: 41, scope: !155)
!157 = !DILocation(line: 65, column: 5, scope: !152)
!158 = !DILocalVariable(name: "_goodG2B_i_0", scope: !159, file: !1, line: 68, type: !15)
!159 = distinct !DILexicalBlock(scope: !160, file: !1, line: 67, column: 7)
!160 = distinct !DILexicalBlock(scope: !155, file: !1, line: 66, column: 5)
!161 = !DILocation(line: 68, column: 13, scope: !159)
!162 = !DILocalVariable(name: "_goodG2B_n_0", scope: !159, file: !1, line: 69, type: !15)
!163 = !DILocation(line: 69, column: 13, scope: !159)
!164 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !159, file: !1, line: 70, type: !15)
!165 = !DILocation(line: 70, column: 13, scope: !159)
!166 = !DILocation(line: 71, column: 20, scope: !167)
!167 = distinct !DILexicalBlock(scope: !159, file: !1, line: 71, column: 13)
!168 = !DILocation(line: 71, column: 13, scope: !167)
!169 = !DILocation(line: 71, column: 58, scope: !167)
!170 = !DILocation(line: 71, column: 13, scope: !159)
!171 = !DILocation(line: 73, column: 34, scope: !172)
!172 = distinct !DILexicalBlock(scope: !167, file: !1, line: 72, column: 9)
!173 = !DILocation(line: 74, column: 11, scope: !172)
!174 = !DILocation(line: 74, column: 18, scope: !172)
!175 = !DILocation(line: 75, column: 24, scope: !172)
!176 = !DILocation(line: 75, column: 11, scope: !172)
!177 = !DILocation(line: 76, column: 9, scope: !172)
!178 = !DILocation(line: 79, column: 5, scope: !160)
!179 = !DILocation(line: 65, column: 58, scope: !155)
!180 = !DILocation(line: 65, column: 5, scope: !155)
!181 = distinct !{!181, !157, !182, !71}
!182 = !DILocation(line: 79, column: 5, scope: !152)
!183 = !DILabel(scope: !126, name: "goodG2B_label_", file: !1, line: 81)
!184 = !DILocation(line: 81, column: 5, scope: !126)
!185 = !DILocation(line: 86, column: 3, scope: !126)
!186 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_17_good_label_", file: !1, line: 87)
!187 = !DILocation(line: 87, column: 3, scope: !7)
!188 = !DILocation(line: 92, column: 1, scope: !7)
