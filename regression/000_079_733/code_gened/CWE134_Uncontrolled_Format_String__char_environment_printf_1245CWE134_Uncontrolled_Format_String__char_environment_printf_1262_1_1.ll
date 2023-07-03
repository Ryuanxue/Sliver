; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_1245CWE134_Uncontrolled_Format_String__char_environment_printf_1262_1_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_1245CWE134_Uncontrolled_Format_String__char_environment_printf_1262_1_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_1245CWE134_Uncontrolled_Format_String__char_environment_printf_1262_1_1(i8* %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0, void (i8*)* %opsink) #0 !dbg !7 {
entry:
  %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0 = alloca i8*, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0, align 8, !dbg !27
  %1 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0, align 8, !dbg !28
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)) #4, !dbg !31
  %2 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !32
  %3 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0, align 8, !dbg !35
  call void %2(i8* %3), !dbg !32
  br label %CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_label_, !dbg !36

CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_label_: ; preds = %entry
  call void @llvm.dbg.label(metadata !37), !dbg !38
  ret void, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_1245CWE134_Uncontrolled_Format_String__char_environment_printf_1262_1_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_733/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_1245CWE134_Uncontrolled_Format_String__char_environment_printf_1262_1_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !10}
!15 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!16 = !DILocation(line: 3, column: 143, scope: !7)
!17 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 232, scope: !7)
!19 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 9, scope: !7)
!21 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataBuffer_0", scope: !7, file: !1, line: 6, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 6, column: 8, scope: !7)
!26 = !DILocation(line: 7, column: 79, scope: !7)
!27 = !DILocation(line: 7, column: 77, scope: !7)
!28 = !DILocation(line: 22, column: 12, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 21, column: 3)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 7)
!31 = !DILocation(line: 22, column: 5, scope: !29)
!32 = !DILocation(line: 27, column: 5, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 26, column: 3)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 7)
!35 = !DILocation(line: 27, column: 12, scope: !33)
!36 = !DILocation(line: 25, column: 7, scope: !34)
!37 = !DILabel(scope: !7, name: "CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_label_", file: !1, line: 34)
!38 = !DILocation(line: 34, column: 3, scope: !7)
!39 = !DILocation(line: 39, column: 1, scope: !7)
