; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_22a80CWE606_Unchecked_Loop_Condition__char_environment_22b127_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_22a80CWE606_Unchecked_Loop_Condition__char_environment_22b127_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Global = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BGlobal = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22a80CWE606_Unchecked_Loop_Condition__char_environment_22b127_1(i8* %_goodB2G1_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G1_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_data_0 = alloca i8*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_intVariable_0 = alloca i32, align 4
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
  store i32 0, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Global, align 4, !dbg !54
  %7 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !55
  call void @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Sink(i8* %7), !dbg !56
  br label %goodB2G1_label_, !dbg !56

goodB2G1_label_:                                  ; preds = %if.end
  call void @llvm.dbg.label(metadata !57), !dbg !58
  call void (...) @goodB2G2(), !dbg !59
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !60, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !63, metadata !DIExpression()), !dbg !64
  %8 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 100, i1 false), !dbg !64
  %arraydecay4 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !65
  store i8* %arraydecay4, i8** %_goodG2B_data_0, align 8, !dbg !66
  %9 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !67
  %call5 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !68
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BGlobal, align 4, !dbg !69
  %10 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BGlobal, align 4, !dbg !70
  %tobool = icmp ne i32 %10, 0, !dbg !70
  br i1 %tobool, label %if.then6, label %if.end11, !dbg !73

if.then6:                                         ; preds = %goodB2G1_label_
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_i_0, metadata !74, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_n_0, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_intVariable_0, metadata !80, metadata !DIExpression()), !dbg !81
  %11 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !82
  %call7 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_n_0) #7, !dbg !84
  %cmp8 = icmp eq i32 %call7, 1, !dbg !85
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !86

if.then9:                                         ; preds = %if.then6
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_intVariable_0, align 4, !dbg !87
  %12 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !89
  %13 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_n_0, align 4, !dbg !90
  call void %12(i32 %13), !dbg !89
  %14 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_intVariable_0, align 4, !dbg !91
  call void @printIntLine(i32 %14), !dbg !92
  br label %if.end10, !dbg !93

if.end10:                                         ; preds = %if.then9, %if.then6
  br label %if.end11, !dbg !94

if.end11:                                         ; preds = %if.end10, %goodB2G1_label_
  br label %CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_label_, !dbg !70

CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_label_: ; preds = %if.end11
  call void @llvm.dbg.label(metadata !95), !dbg !96
  br label %goodG2B_label_, !dbg !97

goodG2B_label_:                                   ; preds = %CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_label_
  call void @llvm.dbg.label(metadata !98), !dbg !99
  br label %CWE606_Unchecked_Loop_Condition__char_environment_22_good_label_, !dbg !100

CWE606_Unchecked_Loop_Condition__char_environment_22_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !101), !dbg !102
  ret void, !dbg !103
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

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G1Sink(i8*) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodB2G2(...) #5

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #5

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_22a80CWE606_Unchecked_Loop_Condition__char_environment_22b127_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_045/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_22a80CWE606_Unchecked_Loop_Condition__char_environment_22b127_1", scope: !1, file: !1, line: 5, type: !8, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G1_environment_0", arg: 1, scope: !7, file: !1, line: 5, type: !10)
!17 = !DILocation(line: 5, column: 126, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 158, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !21, file: !1, line: 8, type: !10)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 3)
!22 = !DILocation(line: 8, column: 11, scope: !21)
!23 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !21, file: !1, line: 9, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 9, column: 10, scope: !21)
!28 = !DILocation(line: 10, column: 24, scope: !21)
!29 = !DILocation(line: 10, column: 22, scope: !21)
!30 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !31, file: !1, line: 12, type: !32)
!31 = distinct !DILexicalBlock(scope: !21, file: !1, line: 11, column: 5)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 12, column: 14, scope: !31)
!36 = !DILocation(line: 12, column: 43, scope: !31)
!37 = !DILocation(line: 12, column: 36, scope: !31)
!38 = !DILocation(line: 13, column: 33, scope: !31)
!39 = !DILocation(line: 13, column: 31, scope: !31)
!40 = !DILocation(line: 14, column: 11, scope: !41)
!41 = distinct !DILexicalBlock(scope: !31, file: !1, line: 14, column: 11)
!42 = !DILocation(line: 14, column: 35, scope: !41)
!43 = !DILocation(line: 14, column: 11, scope: !31)
!44 = !DILocation(line: 16, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 15, column: 7)
!46 = !DILocation(line: 16, column: 36, scope: !45)
!47 = !DILocation(line: 16, column: 34, scope: !45)
!48 = !DILocation(line: 16, column: 57, scope: !45)
!49 = !DILocation(line: 16, column: 89, scope: !45)
!50 = !DILocation(line: 16, column: 87, scope: !45)
!51 = !DILocation(line: 16, column: 110, scope: !45)
!52 = !DILocation(line: 16, column: 9, scope: !45)
!53 = !DILocation(line: 17, column: 7, scope: !45)
!54 = !DILocation(line: 20, column: 73, scope: !21)
!55 = !DILocation(line: 21, column: 71, scope: !21)
!56 = !DILocation(line: 21, column: 5, scope: !21)
!57 = !DILabel(scope: !21, name: "goodB2G1_label_", file: !1, line: 22)
!58 = !DILocation(line: 22, column: 5, scope: !21)
!59 = !DILocation(line: 28, column: 3, scope: !7)
!60 = !DILocalVariable(name: "_goodG2B_data_0", scope: !61, file: !1, line: 30, type: !10)
!61 = distinct !DILexicalBlock(scope: !7, file: !1, line: 29, column: 3)
!62 = !DILocation(line: 30, column: 11, scope: !61)
!63 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !61, file: !1, line: 31, type: !24)
!64 = !DILocation(line: 31, column: 10, scope: !61)
!65 = !DILocation(line: 32, column: 23, scope: !61)
!66 = !DILocation(line: 32, column: 21, scope: !61)
!67 = !DILocation(line: 33, column: 12, scope: !61)
!68 = !DILocation(line: 33, column: 5, scope: !61)
!69 = !DILocation(line: 34, column: 72, scope: !61)
!70 = !DILocation(line: 36, column: 11, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !1, line: 36, column: 11)
!72 = distinct !DILexicalBlock(scope: !61, file: !1, line: 35, column: 5)
!73 = !DILocation(line: 36, column: 11, scope: !72)
!74 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_i_0", scope: !75, file: !1, line: 39, type: !15)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 38, column: 9)
!76 = distinct !DILexicalBlock(scope: !71, file: !1, line: 37, column: 7)
!77 = !DILocation(line: 39, column: 15, scope: !75)
!78 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_n_0", scope: !75, file: !1, line: 40, type: !15)
!79 = !DILocation(line: 40, column: 15, scope: !75)
!80 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_intVariable_0", scope: !75, file: !1, line: 41, type: !15)
!81 = !DILocation(line: 41, column: 15, scope: !75)
!82 = !DILocation(line: 42, column: 22, scope: !83)
!83 = distinct !DILexicalBlock(scope: !75, file: !1, line: 42, column: 15)
!84 = !DILocation(line: 42, column: 15, scope: !83)
!85 = !DILocation(line: 42, column: 117, scope: !83)
!86 = !DILocation(line: 42, column: 15, scope: !75)
!87 = !DILocation(line: 44, column: 93, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 43, column: 11)
!89 = !DILocation(line: 45, column: 13, scope: !88)
!90 = !DILocation(line: 45, column: 20, scope: !88)
!91 = !DILocation(line: 46, column: 26, scope: !88)
!92 = !DILocation(line: 46, column: 13, scope: !88)
!93 = !DILocation(line: 47, column: 11, scope: !88)
!94 = !DILocation(line: 50, column: 7, scope: !76)
!95 = !DILabel(scope: !72, name: "CWE606_Unchecked_Loop_Condition__char_environment_22_goodG2BSink_label_", file: !1, line: 52)
!96 = !DILocation(line: 52, column: 7, scope: !72)
!97 = !DILocation(line: 57, column: 5, scope: !72)
!98 = !DILabel(scope: !61, name: "goodG2B_label_", file: !1, line: 58)
!99 = !DILocation(line: 58, column: 5, scope: !61)
!100 = !DILocation(line: 63, column: 3, scope: !61)
!101 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_22_good_label_", file: !1, line: 64)
!102 = !DILocation(line: 64, column: 3, scope: !7)
!103 = !DILocation(line: 69, column: 1, scope: !7)
