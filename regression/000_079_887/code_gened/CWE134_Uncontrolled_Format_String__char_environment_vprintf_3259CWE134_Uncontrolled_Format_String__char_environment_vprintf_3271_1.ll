; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_vprintf_3259CWE134_Uncontrolled_Format_String__char_environment_vprintf_3271_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_vprintf_3259CWE134_Uncontrolled_Format_String__char_environment_vprintf_3271_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_vprintf_3259CWE134_Uncontrolled_Format_String__char_environment_vprintf_3271_1(i8* %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_environment_0, void (i8*)* %opsink) #0 !dbg !7 {
entry:
  %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_0 = alloca i8*, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataPtr1_0 = alloca i8**, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataPtr2_0 = alloca i8**, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_1 = alloca i8*, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataLen_0 = alloca i64, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_2 = alloca i8*, align 8
  store i8* %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_environment_0, i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_environment_0.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_0, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i8*** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataPtr1_0, metadata !21, metadata !DIExpression()), !dbg !23
  store i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_0, i8*** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataPtr1_0, align 8, !dbg !23
  call void @llvm.dbg.declare(metadata i8*** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataPtr2_0, metadata !24, metadata !DIExpression()), !dbg !25
  store i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_0, i8*** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataPtr2_0, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataBuffer_0, metadata !26, metadata !DIExpression()), !dbg !30
  %0 = bitcast [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataBuffer_0 to i8*, !dbg !30
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !30
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataBuffer_0, i64 0, i64 0, !dbg !31
  store i8* %arraydecay, i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_0, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_1, metadata !33, metadata !DIExpression()), !dbg !35
  %1 = load i8**, i8*** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataPtr1_0, align 8, !dbg !36
  %2 = load i8*, i8** %1, align 8, !dbg !37
  store i8* %2, i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_1, align 8, !dbg !35
  call void @llvm.dbg.declare(metadata i64* %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataLen_0, metadata !38, metadata !DIExpression()), !dbg !43
  %3 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_1, align 8, !dbg !44
  %call = call i64 @strlen(i8* %3) #5, !dbg !45
  store i64 %call, i64* %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataLen_0, align 8, !dbg !43
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #6, !dbg !46
  store i8* %call1, i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_environment_0.addr, align 8, !dbg !47
  %4 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_environment_0.addr, align 8, !dbg !48
  %cmp = icmp ne i8* %4, null, !dbg !50
  br i1 %cmp, label %if.then, label %if.end, !dbg !51

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_1, align 8, !dbg !52
  %6 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataLen_0, align 8, !dbg !54
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !55
  %7 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_environment_0.addr, align 8, !dbg !56
  %8 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataLen_0, align 8, !dbg !57
  %sub = sub i64 100, %8, !dbg !58
  %sub2 = sub i64 %sub, 1, !dbg !59
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %7, i64 %sub2) #6, !dbg !60
  br label %if.end, !dbg !61

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_1, align 8, !dbg !62
  %10 = load i8**, i8*** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataPtr1_0, align 8, !dbg !63
  store i8* %9, i8** %10, align 8, !dbg !64
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_2, metadata !65, metadata !DIExpression()), !dbg !67
  %11 = load i8**, i8*** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataPtr2_0, align 8, !dbg !68
  %12 = load i8*, i8** %11, align 8, !dbg !69
  store i8* %12, i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_2, align 8, !dbg !67
  %13 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !70
  %14 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_2, align 8, !dbg !71
  call void %13(i8* %14), !dbg !70
  br label %CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_label_, !dbg !72

CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_label_: ; preds = %if.end
  call void @llvm.dbg.label(metadata !73), !dbg !74
  ret void, !dbg !75
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_3259CWE134_Uncontrolled_Format_String__char_environment_vprintf_3271_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_887/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_3259CWE134_Uncontrolled_Format_String__char_environment_vprintf_3271_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !10}
!15 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!16 = !DILocation(line: 3, column: 143, scope: !7)
!17 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 233, scope: !7)
!19 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_0", scope: !7, file: !1, line: 5, type: !10)
!20 = !DILocation(line: 5, column: 9, scope: !7)
!21 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataPtr1_0", scope: !7, file: !1, line: 6, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!23 = !DILocation(line: 6, column: 10, scope: !7)
!24 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataPtr2_0", scope: !7, file: !1, line: 7, type: !22)
!25 = !DILocation(line: 7, column: 10, scope: !7)
!26 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataBuffer_0", scope: !7, file: !1, line: 8, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 100)
!30 = !DILocation(line: 8, column: 8, scope: !7)
!31 = !DILocation(line: 9, column: 80, scope: !7)
!32 = !DILocation(line: 9, column: 78, scope: !7)
!33 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_1", scope: !34, file: !1, line: 11, type: !10)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 3)
!35 = !DILocation(line: 11, column: 11, scope: !34)
!36 = !DILocation(line: 11, column: 89, scope: !34)
!37 = !DILocation(line: 11, column: 88, scope: !34)
!38 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_dataLen_0", scope: !39, file: !1, line: 13, type: !40)
!39 = distinct !DILexicalBlock(scope: !34, file: !1, line: 12, column: 5)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 46, baseType: !42)
!41 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!42 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!43 = !DILocation(line: 13, column: 14, scope: !39)
!44 = !DILocation(line: 13, column: 101, scope: !39)
!45 = !DILocation(line: 13, column: 94, scope: !39)
!46 = !DILocation(line: 14, column: 91, scope: !39)
!47 = !DILocation(line: 14, column: 89, scope: !39)
!48 = !DILocation(line: 15, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !39, file: !1, line: 15, column: 11)
!50 = !DILocation(line: 15, column: 93, scope: !49)
!51 = !DILocation(line: 15, column: 11, scope: !39)
!52 = !DILocation(line: 17, column: 17, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 16, column: 7)
!54 = !DILocation(line: 17, column: 94, scope: !53)
!55 = !DILocation(line: 17, column: 92, scope: !53)
!56 = !DILocation(line: 17, column: 173, scope: !53)
!57 = !DILocation(line: 17, column: 263, scope: !53)
!58 = !DILocation(line: 17, column: 261, scope: !53)
!59 = !DILocation(line: 17, column: 342, scope: !53)
!60 = !DILocation(line: 17, column: 9, scope: !53)
!61 = !DILocation(line: 18, column: 7, scope: !53)
!62 = !DILocation(line: 21, column: 87, scope: !34)
!63 = !DILocation(line: 21, column: 6, scope: !34)
!64 = !DILocation(line: 21, column: 85, scope: !34)
!65 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_data_2", scope: !66, file: !1, line: 24, type: !10)
!66 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 3)
!67 = !DILocation(line: 24, column: 11, scope: !66)
!68 = !DILocation(line: 24, column: 89, scope: !66)
!69 = !DILocation(line: 24, column: 88, scope: !66)
!70 = !DILocation(line: 25, column: 5, scope: !66)
!71 = !DILocation(line: 25, column: 12, scope: !66)
!72 = !DILocation(line: 26, column: 3, scope: !66)
!73 = !DILabel(scope: !7, name: "CWE134_Uncontrolled_Format_String__char_environment_vprintf_32_bad_label_", file: !1, line: 27)
!74 = !DILocation(line: 27, column: 3, scope: !7)
!75 = !DILocation(line: 32, column: 1, scope: !7)
