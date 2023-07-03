; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_1845CWE134_Uncontrolled_Format_String__char_environment_printf_1856_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_1845CWE134_Uncontrolled_Format_String__char_environment_printf_1856_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_1845CWE134_Uncontrolled_Format_String__char_environment_printf_1856_1(i8* %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_environment_0, void (i8*)* %opsink) #0 !dbg !7 {
entry:
  %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_data_0 = alloca i8*, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_dataLen_0 = alloca i64, align 8
  store i8* %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_environment_0, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_environment_0.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_data_0, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_data_0, align 8, !dbg !27
  br label %CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_source, !dbg !28

CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_source: ; preds = %entry
  call void @llvm.dbg.label(metadata !29), !dbg !30
  call void @llvm.dbg.declare(metadata i64* %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_dataLen_0, metadata !31, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_data_0, align 8, !dbg !37
  %call = call i64 @strlen(i8* %1) #5, !dbg !38
  store i64 %call, i64* %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_dataLen_0, align 8, !dbg !36
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #6, !dbg !39
  store i8* %call1, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_environment_0.addr, align 8, !dbg !40
  %2 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_environment_0.addr, align 8, !dbg !41
  %cmp = icmp ne i8* %2, null, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_source
  %3 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_data_0, align 8, !dbg !45
  %4 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_dataLen_0, align 8, !dbg !47
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !48
  %5 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_environment_0.addr, align 8, !dbg !49
  %6 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_dataLen_0, align 8, !dbg !50
  %sub = sub i64 100, %6, !dbg !51
  %sub2 = sub i64 %sub, 1, !dbg !52
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #6, !dbg !53
  br label %if.end, !dbg !54

if.end:                                           ; preds = %if.then, %CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_source
  br label %CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_sink, !dbg !55

CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_sink: ; preds = %if.end
  call void @llvm.dbg.label(metadata !56), !dbg !57
  %7 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !58
  %8 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_data_0, align 8, !dbg !60
  call void %7(i8* %8), !dbg !58
  br label %CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_label_, !dbg !61

CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_label_: ; preds = %CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_sink
  call void @llvm.dbg.label(metadata !62), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_1845CWE134_Uncontrolled_Format_String__char_environment_printf_1856_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_739/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_1845CWE134_Uncontrolled_Format_String__char_environment_printf_1856_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !10}
!15 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!16 = !DILocation(line: 3, column: 141, scope: !7)
!17 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 230, scope: !7)
!19 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_data_0", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 9, scope: !7)
!21 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_dataBuffer_0", scope: !7, file: !1, line: 6, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 6, column: 8, scope: !7)
!26 = !DILocation(line: 7, column: 79, scope: !7)
!27 = !DILocation(line: 7, column: 77, scope: !7)
!28 = !DILocation(line: 7, column: 3, scope: !7)
!29 = !DILabel(scope: !7, name: "CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_source", file: !1, line: 8)
!30 = !DILocation(line: 8, column: 3, scope: !7)
!31 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_dataLen_0", scope: !32, file: !1, line: 10, type: !33)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 3)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 10, column: 12, scope: !32)
!37 = !DILocation(line: 10, column: 98, scope: !32)
!38 = !DILocation(line: 10, column: 91, scope: !32)
!39 = !DILocation(line: 11, column: 88, scope: !32)
!40 = !DILocation(line: 11, column: 86, scope: !32)
!41 = !DILocation(line: 12, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !32, file: !1, line: 12, column: 9)
!43 = !DILocation(line: 12, column: 90, scope: !42)
!44 = !DILocation(line: 12, column: 9, scope: !32)
!45 = !DILocation(line: 14, column: 15, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 5)
!47 = !DILocation(line: 14, column: 91, scope: !46)
!48 = !DILocation(line: 14, column: 89, scope: !46)
!49 = !DILocation(line: 14, column: 169, scope: !46)
!50 = !DILocation(line: 14, column: 258, scope: !46)
!51 = !DILocation(line: 14, column: 256, scope: !46)
!52 = !DILocation(line: 14, column: 336, scope: !46)
!53 = !DILocation(line: 14, column: 7, scope: !46)
!54 = !DILocation(line: 15, column: 5, scope: !46)
!55 = !DILocation(line: 19, column: 3, scope: !7)
!56 = !DILabel(scope: !7, name: "CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_sink", file: !1, line: 20)
!57 = !DILocation(line: 20, column: 3, scope: !7)
!58 = !DILocation(line: 22, column: 5, scope: !59)
!59 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 3)
!60 = !DILocation(line: 22, column: 12, scope: !59)
!61 = !DILocation(line: 23, column: 3, scope: !59)
!62 = !DILabel(scope: !7, name: "CWE134_Uncontrolled_Format_String__char_environment_printf_18_bad_label_", file: !1, line: 25)
!63 = !DILocation(line: 25, column: 3, scope: !7)
!64 = !DILocation(line: 30, column: 1, scope: !7)
