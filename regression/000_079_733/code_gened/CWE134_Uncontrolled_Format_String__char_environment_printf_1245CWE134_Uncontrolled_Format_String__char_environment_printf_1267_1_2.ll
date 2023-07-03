; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_1245CWE134_Uncontrolled_Format_String__char_environment_printf_1267_1_2.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_1245CWE134_Uncontrolled_Format_String__char_environment_printf_1267_1_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_1245CWE134_Uncontrolled_Format_String__char_environment_printf_1267_1_2(i8* %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0, void (i8*)* %opsink) #0 !dbg !7 {
entry:
  %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0 = alloca i8*, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataLen_0 = alloca i64, align 8
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
  call void @llvm.dbg.declare(metadata i64* %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataLen_0, metadata !28, metadata !DIExpression()), !dbg !35
  %1 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0, align 8, !dbg !36
  %call = call i64 @strlen(i8* %1) #5, !dbg !37
  store i64 %call, i64* %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataLen_0, align 8, !dbg !35
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #6, !dbg !38
  store i8* %call1, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0.addr, align 8, !dbg !39
  %2 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0.addr, align 8, !dbg !40
  %cmp = icmp ne i8* %2, null, !dbg !42
  br i1 %cmp, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0, align 8, !dbg !44
  %4 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataLen_0, align 8, !dbg !46
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !47
  %5 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_environment_0.addr, align 8, !dbg !48
  %6 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataLen_0, align 8, !dbg !49
  %sub = sub i64 100, %6, !dbg !50
  %sub2 = sub i64 %sub, 1, !dbg !51
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #6, !dbg !52
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %entry
  %7 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !54
  %8 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_data_0, align 8, !dbg !57
  call void %7(i8* %8), !dbg !54
  br label %CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_label_, !dbg !58

CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_label_: ; preds = %if.end
  call void @llvm.dbg.label(metadata !59), !dbg !60
  ret void, !dbg !61
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_1245CWE134_Uncontrolled_Format_String__char_environment_printf_1267_1_2.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_733/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_1245CWE134_Uncontrolled_Format_String__char_environment_printf_1267_1_2", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!28 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_dataLen_0", scope: !29, file: !1, line: 11, type: !32)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 10, column: 5)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 9, column: 3)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 7)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 11, column: 14, scope: !29)
!36 = !DILocation(line: 11, column: 100, scope: !29)
!37 = !DILocation(line: 11, column: 93, scope: !29)
!38 = !DILocation(line: 12, column: 90, scope: !29)
!39 = !DILocation(line: 12, column: 88, scope: !29)
!40 = !DILocation(line: 13, column: 11, scope: !41)
!41 = distinct !DILexicalBlock(scope: !29, file: !1, line: 13, column: 11)
!42 = !DILocation(line: 13, column: 92, scope: !41)
!43 = !DILocation(line: 13, column: 11, scope: !29)
!44 = !DILocation(line: 15, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 14, column: 7)
!46 = !DILocation(line: 15, column: 93, scope: !45)
!47 = !DILocation(line: 15, column: 91, scope: !45)
!48 = !DILocation(line: 15, column: 171, scope: !45)
!49 = !DILocation(line: 15, column: 260, scope: !45)
!50 = !DILocation(line: 15, column: 258, scope: !45)
!51 = !DILocation(line: 15, column: 338, scope: !45)
!52 = !DILocation(line: 15, column: 9, scope: !45)
!53 = !DILocation(line: 16, column: 7, scope: !45)
!54 = !DILocation(line: 31, column: 5, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 30, column: 3)
!56 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 7)
!57 = !DILocation(line: 31, column: 12, scope: !55)
!58 = !DILocation(line: 25, column: 7, scope: !56)
!59 = !DILabel(scope: !7, name: "CWE134_Uncontrolled_Format_String__char_environment_printf_12_bad_label_", file: !1, line: 34)
!60 = !DILocation(line: 34, column: 3, scope: !7)
!61 = !DILocation(line: 39, column: 1, scope: !7)
