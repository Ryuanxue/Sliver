; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_15103CWE606_Unchecked_Loop_Condition__char_environment_15225_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_15103CWE606_Unchecked_Loop_Condition__char_environment_15225_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_15103CWE606_Unchecked_Loop_Condition__char_environment_15225_1(i8* %_goodB2G1_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G1_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_data_0 = alloca i8*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_n_0 = alloca i32, align 4
  %_goodB2G1_intVariable_0 = alloca i32, align 4
  %_goodG2B1_data_0 = alloca i8*, align 8
  %_goodG2B1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B1_i_0 = alloca i32, align 4
  %_goodG2B1_n_0 = alloca i32, align 4
  %_goodG2B1_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G1_environment_0, i8** %_goodB2G1_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !23, metadata !DIExpression()), !dbg !27
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !27
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !28
  store i8* %arraydecay, i8** %_goodB2G1_data_0, align 8, !dbg !29
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !30, metadata !DIExpression()), !dbg !35
  %1 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !36
  %call = call i64 @strlen(i8* %1) #6, !dbg !37
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !35
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !38
  store i8* %call1, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !39
  %2 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !40
  %cmp = icmp ne i8* %2, null, !dbg !42
  br i1 %cmp, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !44
  %4 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !46
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !47
  %5 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !48
  %6 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !49
  %sub = sub i64 100, %6, !dbg !50
  %sub2 = sub i64 %sub, 1, !dbg !51
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !52
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !54, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !59, metadata !DIExpression()), !dbg !60
  %7 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !61
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G1_n_0) #7, !dbg !63
  %cmp5 = icmp eq i32 %call4, 1, !dbg !64
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !65

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !66
  %cmp7 = icmp slt i32 %8, 10000, !dbg !69
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !70

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !71
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !73
  br label %for.cond, !dbg !75

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !76
  %10 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !78
  %cmp9 = icmp slt i32 %9, %10, !dbg !79
  br i1 %cmp9, label %for.body, label %for.end, !dbg !80

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !81
  %inc = add nsw i32 %11, 1, !dbg !81
  store i32 %inc, i32* %_goodB2G1_intVariable_0, align 4, !dbg !81
  br label %for.inc, !dbg !83

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !84
  %inc10 = add nsw i32 %12, 1, !dbg !84
  store i32 %inc10, i32* %_goodB2G1_i_0, align 4, !dbg !84
  br label %for.cond, !dbg !85, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !89
  call void @printIntLine(i32 %13), !dbg !90
  br label %if.end11, !dbg !91

if.end11:                                         ; preds = %for.end, %if.then6
  br label %if.end12, !dbg !92

if.end12:                                         ; preds = %if.end11, %if.end
  br label %goodB2G1_label_, !dbg !93

goodB2G1_label_:                                  ; preds = %if.end12
  call void @llvm.dbg.label(metadata !94), !dbg !95
  call void (...) @goodB2G2(), !dbg !96
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !97, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !100, metadata !DIExpression()), !dbg !101
  %14 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !101
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 100, i1 false), !dbg !101
  %arraydecay13 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !102
  store i8* %arraydecay13, i8** %_goodG2B1_data_0, align 8, !dbg !103
  %15 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !104
  %call14 = call i8* @strcpy(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !105
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !106, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_n_0, metadata !109, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_intVariable_0, metadata !111, metadata !DIExpression()), !dbg !112
  %16 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !113
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B1_n_0) #7, !dbg !115
  %cmp16 = icmp eq i32 %call15, 1, !dbg !116
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !117

if.then17:                                        ; preds = %goodB2G1_label_
  store i32 0, i32* %_goodG2B1_intVariable_0, align 4, !dbg !118
  %17 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !120
  %18 = load i32, i32* %_goodG2B1_n_0, align 4, !dbg !121
  call void %17(i32 %18), !dbg !120
  %19 = load i32, i32* %_goodG2B1_intVariable_0, align 4, !dbg !122
  call void @printIntLine(i32 %19), !dbg !123
  br label %if.end18, !dbg !124

if.end18:                                         ; preds = %if.then17, %goodB2G1_label_
  br label %goodG2B1_label_, !dbg !125

goodG2B1_label_:                                  ; preds = %if.end18
  call void @llvm.dbg.label(metadata !126), !dbg !127
  br label %CWE606_Unchecked_Loop_Condition__char_environment_15_good_label_, !dbg !128

CWE606_Unchecked_Loop_Condition__char_environment_15_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !129), !dbg !130
  ret void, !dbg !131
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

declare dso_local void @goodB2G2(...) #5

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_15103CWE606_Unchecked_Loop_Condition__char_environment_15225_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_040/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_15103CWE606_Unchecked_Loop_Condition__char_environment_15225_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G1_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 125, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 157, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !21, file: !1, line: 6, type: !10)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!22 = !DILocation(line: 6, column: 11, scope: !21)
!23 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !21, file: !1, line: 7, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 7, column: 10, scope: !21)
!28 = !DILocation(line: 8, column: 24, scope: !21)
!29 = !DILocation(line: 8, column: 22, scope: !21)
!30 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !31, file: !1, line: 13, type: !32)
!31 = distinct !DILexicalBlock(scope: !21, file: !1, line: 12, column: 7)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 13, column: 16, scope: !31)
!36 = !DILocation(line: 13, column: 45, scope: !31)
!37 = !DILocation(line: 13, column: 38, scope: !31)
!38 = !DILocation(line: 14, column: 35, scope: !31)
!39 = !DILocation(line: 14, column: 33, scope: !31)
!40 = !DILocation(line: 15, column: 13, scope: !41)
!41 = distinct !DILexicalBlock(scope: !31, file: !1, line: 15, column: 13)
!42 = !DILocation(line: 15, column: 37, scope: !41)
!43 = !DILocation(line: 15, column: 13, scope: !31)
!44 = !DILocation(line: 17, column: 19, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 16, column: 9)
!46 = !DILocation(line: 17, column: 38, scope: !45)
!47 = !DILocation(line: 17, column: 36, scope: !45)
!48 = !DILocation(line: 17, column: 59, scope: !45)
!49 = !DILocation(line: 17, column: 91, scope: !45)
!50 = !DILocation(line: 17, column: 89, scope: !45)
!51 = !DILocation(line: 17, column: 112, scope: !45)
!52 = !DILocation(line: 17, column: 11, scope: !45)
!53 = !DILocation(line: 18, column: 9, scope: !45)
!54 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !55, file: !1, line: 37, type: !15)
!55 = distinct !DILexicalBlock(scope: !21, file: !1, line: 36, column: 7)
!56 = !DILocation(line: 37, column: 13, scope: !55)
!57 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !55, file: !1, line: 38, type: !15)
!58 = !DILocation(line: 38, column: 13, scope: !55)
!59 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !55, file: !1, line: 39, type: !15)
!60 = !DILocation(line: 39, column: 13, scope: !55)
!61 = !DILocation(line: 40, column: 20, scope: !62)
!62 = distinct !DILexicalBlock(scope: !55, file: !1, line: 40, column: 13)
!63 = !DILocation(line: 40, column: 13, scope: !62)
!64 = !DILocation(line: 40, column: 60, scope: !62)
!65 = !DILocation(line: 40, column: 13, scope: !55)
!66 = !DILocation(line: 42, column: 15, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 42, column: 15)
!68 = distinct !DILexicalBlock(scope: !62, file: !1, line: 41, column: 9)
!69 = !DILocation(line: 42, column: 29, scope: !67)
!70 = !DILocation(line: 42, column: 15, scope: !68)
!71 = !DILocation(line: 44, column: 37, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !1, line: 43, column: 11)
!73 = !DILocation(line: 45, column: 32, scope: !74)
!74 = distinct !DILexicalBlock(scope: !72, file: !1, line: 45, column: 13)
!75 = !DILocation(line: 45, column: 18, scope: !74)
!76 = !DILocation(line: 45, column: 37, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !1, line: 45, column: 13)
!78 = !DILocation(line: 45, column: 53, scope: !77)
!79 = !DILocation(line: 45, column: 51, scope: !77)
!80 = !DILocation(line: 45, column: 13, scope: !74)
!81 = !DILocation(line: 47, column: 38, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 46, column: 13)
!83 = !DILocation(line: 48, column: 13, scope: !82)
!84 = !DILocation(line: 45, column: 81, scope: !77)
!85 = !DILocation(line: 45, column: 13, scope: !77)
!86 = distinct !{!86, !80, !87, !88}
!87 = !DILocation(line: 48, column: 13, scope: !74)
!88 = !{!"llvm.loop.mustprogress"}
!89 = !DILocation(line: 50, column: 26, scope: !72)
!90 = !DILocation(line: 50, column: 13, scope: !72)
!91 = !DILocation(line: 51, column: 11, scope: !72)
!92 = !DILocation(line: 53, column: 9, scope: !68)
!93 = !DILocation(line: 55, column: 7, scope: !55)
!94 = !DILabel(scope: !21, name: "goodB2G1_label_", file: !1, line: 60)
!95 = !DILocation(line: 60, column: 5, scope: !21)
!96 = !DILocation(line: 66, column: 3, scope: !7)
!97 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !98, file: !1, line: 68, type: !10)
!98 = distinct !DILexicalBlock(scope: !7, file: !1, line: 67, column: 3)
!99 = !DILocation(line: 68, column: 11, scope: !98)
!100 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !98, file: !1, line: 69, type: !24)
!101 = !DILocation(line: 69, column: 10, scope: !98)
!102 = !DILocation(line: 70, column: 24, scope: !98)
!103 = !DILocation(line: 70, column: 22, scope: !98)
!104 = !DILocation(line: 78, column: 16, scope: !98)
!105 = !DILocation(line: 78, column: 9, scope: !98)
!106 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !107, file: !1, line: 87, type: !15)
!107 = distinct !DILexicalBlock(scope: !98, file: !1, line: 86, column: 7)
!108 = !DILocation(line: 87, column: 13, scope: !107)
!109 = !DILocalVariable(name: "_goodG2B1_n_0", scope: !107, file: !1, line: 88, type: !15)
!110 = !DILocation(line: 88, column: 13, scope: !107)
!111 = !DILocalVariable(name: "_goodG2B1_intVariable_0", scope: !107, file: !1, line: 89, type: !15)
!112 = !DILocation(line: 89, column: 13, scope: !107)
!113 = !DILocation(line: 90, column: 20, scope: !114)
!114 = distinct !DILexicalBlock(scope: !107, file: !1, line: 90, column: 13)
!115 = !DILocation(line: 90, column: 13, scope: !114)
!116 = !DILocation(line: 90, column: 60, scope: !114)
!117 = !DILocation(line: 90, column: 13, scope: !107)
!118 = !DILocation(line: 92, column: 35, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !1, line: 91, column: 9)
!120 = !DILocation(line: 93, column: 11, scope: !119)
!121 = !DILocation(line: 93, column: 18, scope: !119)
!122 = !DILocation(line: 94, column: 24, scope: !119)
!123 = !DILocation(line: 94, column: 11, scope: !119)
!124 = !DILocation(line: 95, column: 9, scope: !119)
!125 = !DILocation(line: 97, column: 7, scope: !107)
!126 = !DILabel(scope: !98, name: "goodG2B1_label_", file: !1, line: 106)
!127 = !DILocation(line: 106, column: 5, scope: !98)
!128 = !DILocation(line: 111, column: 3, scope: !98)
!129 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_15_good_label_", file: !1, line: 112)
!130 = !DILocation(line: 112, column: 3, scope: !7)
!131 = !DILocation(line: 117, column: 1, scope: !7)
