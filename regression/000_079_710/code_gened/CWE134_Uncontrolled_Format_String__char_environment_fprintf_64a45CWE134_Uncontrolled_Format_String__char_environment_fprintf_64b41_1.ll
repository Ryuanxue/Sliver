; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_fprintf_64a45CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b41_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_fprintf_64a45CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b41_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_64a45CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b41_1(i8* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_environment_0, void (i8*)* %opsink) #0 !dbg !11 {
entry:
  %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_data_0 = alloca i8*, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataLen_0 = alloca i64, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_dataPtr_0 = alloca i8**, align 8
  %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_data_0 = alloca i8*, align 8
  store i8* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_environment_0, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_environment_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_data_0, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataBuffer_0, metadata !23, metadata !DIExpression()), !dbg !27
  %0 = bitcast [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataBuffer_0 to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !27
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataBuffer_0, i64 0, i64 0, !dbg !28
  store i8* %arraydecay, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_data_0, align 8, !dbg !29
  call void @llvm.dbg.declare(metadata i64* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataLen_0, metadata !30, metadata !DIExpression()), !dbg !35
  %1 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_data_0, align 8, !dbg !36
  %call = call i64 @strlen(i8* %1) #5, !dbg !37
  store i64 %call, i64* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataLen_0, align 8, !dbg !35
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #6, !dbg !38
  store i8* %call1, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_environment_0.addr, align 8, !dbg !39
  %2 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_environment_0.addr, align 8, !dbg !40
  %cmp = icmp ne i8* %2, null, !dbg !42
  br i1 %cmp, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_data_0, align 8, !dbg !44
  %4 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataLen_0, align 8, !dbg !46
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !47
  %5 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_environment_0.addr, align 8, !dbg !48
  %6 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataLen_0, align 8, !dbg !49
  %sub = sub i64 100, %6, !dbg !50
  %sub2 = sub i64 %sub, 1, !dbg !51
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #6, !dbg !52
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i8*** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_dataPtr_0, metadata !54, metadata !DIExpression()), !dbg !56
  store i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_data_0, i8*** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_dataPtr_0, align 8, !dbg !56
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_data_0, metadata !57, metadata !DIExpression()), !dbg !58
  %7 = load i8**, i8*** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_dataPtr_0, align 8, !dbg !59
  %8 = load i8*, i8** %7, align 8, !dbg !60
  store i8* %8, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_data_0, align 8, !dbg !58
  %9 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !61
  %10 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_data_0, align 8, !dbg !62
  call void %9(i8* %10), !dbg !61
  br label %CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_label_, !dbg !61

CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_label_: ; preds = %if.end
  call void @llvm.dbg.label(metadata !63), !dbg !64
  br label %CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_label_, !dbg !65

CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_label_: ; preds = %CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_label_
  call void @llvm.dbg.label(metadata !66), !dbg !67
  ret void, !dbg !68
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
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_64a45CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b41_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_710/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 12.0.0"}
!11 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_64a45CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b41_1", scope: !1, file: !1, line: 3, type: !12, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !5, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !5}
!17 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_environment_0", arg: 1, scope: !11, file: !1, line: 3, type: !5)
!18 = !DILocation(line: 3, column: 145, scope: !11)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !11, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 235, scope: !11)
!21 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_data_0", scope: !11, file: !1, line: 5, type: !5)
!22 = !DILocation(line: 5, column: 9, scope: !11)
!23 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataBuffer_0", scope: !11, file: !1, line: 6, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 6, column: 8, scope: !11)
!28 = !DILocation(line: 7, column: 80, scope: !11)
!29 = !DILocation(line: 7, column: 78, scope: !11)
!30 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_dataLen_0", scope: !31, file: !1, line: 9, type: !32)
!31 = distinct !DILexicalBlock(scope: !11, file: !1, line: 8, column: 3)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 9, column: 12, scope: !31)
!36 = !DILocation(line: 9, column: 99, scope: !31)
!37 = !DILocation(line: 9, column: 92, scope: !31)
!38 = !DILocation(line: 10, column: 89, scope: !31)
!39 = !DILocation(line: 10, column: 87, scope: !31)
!40 = !DILocation(line: 11, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !31, file: !1, line: 11, column: 9)
!42 = !DILocation(line: 11, column: 91, scope: !41)
!43 = !DILocation(line: 11, column: 9, scope: !31)
!44 = !DILocation(line: 13, column: 15, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 12, column: 5)
!46 = !DILocation(line: 13, column: 92, scope: !45)
!47 = !DILocation(line: 13, column: 90, scope: !45)
!48 = !DILocation(line: 13, column: 171, scope: !45)
!49 = !DILocation(line: 13, column: 261, scope: !45)
!50 = !DILocation(line: 13, column: 259, scope: !45)
!51 = !DILocation(line: 13, column: 340, scope: !45)
!52 = !DILocation(line: 13, column: 7, scope: !45)
!53 = !DILocation(line: 14, column: 5, scope: !45)
!54 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_dataPtr_0", scope: !55, file: !1, line: 18, type: !4)
!55 = distinct !DILexicalBlock(scope: !11, file: !1, line: 17, column: 3)
!56 = !DILocation(line: 18, column: 12, scope: !55)
!57 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_data_0", scope: !55, file: !1, line: 19, type: !5)
!58 = !DILocation(line: 19, column: 11, scope: !55)
!59 = !DILocation(line: 19, column: 94, scope: !55)
!60 = !DILocation(line: 19, column: 93, scope: !55)
!61 = !DILocation(line: 20, column: 5, scope: !55)
!62 = !DILocation(line: 20, column: 12, scope: !55)
!63 = !DILabel(scope: !55, name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_64b_badSink_label_", file: !1, line: 21)
!64 = !DILocation(line: 21, column: 5, scope: !55)
!65 = !DILocation(line: 26, column: 3, scope: !55)
!66 = !DILabel(scope: !11, name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_64_bad_label_", file: !1, line: 27)
!67 = !DILocation(line: 27, column: 3, scope: !11)
!68 = !DILocation(line: 32, column: 1, scope: !11)
