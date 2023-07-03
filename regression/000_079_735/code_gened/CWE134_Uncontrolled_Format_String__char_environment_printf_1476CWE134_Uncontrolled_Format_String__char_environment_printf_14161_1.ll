; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_1476CWE134_Uncontrolled_Format_String__char_environment_printf_14161_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_1476CWE134_Uncontrolled_Format_String__char_environment_printf_14161_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@globalFive = external dso_local global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_1476CWE134_Uncontrolled_Format_String__char_environment_printf_14161_1(i8* %_goodB2G1_environment_0, void (i8*)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G1_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G1_data_0 = alloca i8*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodG2B2_data_0 = alloca i8*, align 8
  %_goodG2B2_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_goodB2G1_environment_0, i8** %_goodB2G1_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_environment_0.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0, metadata !19, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G1_data_0, align 8, !dbg !28
  %1 = load i32, i32* @globalFive, align 4, !dbg !29
  %cmp = icmp eq i32 %1, 5, !dbg !31
  br i1 %cmp, label %if.then, label %if.end6, !dbg !32

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !33, metadata !DIExpression()), !dbg !39
  %2 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !40
  %call = call i64 @strlen(i8* %2) #6, !dbg !41
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !39
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !42
  store i8* %call1, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !43
  %3 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !44
  %cmp2 = icmp ne i8* %3, null, !dbg !46
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !47

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !48
  %5 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !51
  %6 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !52
  %7 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !53
  %sub = sub i64 100, %7, !dbg !54
  %sub4 = sub i64 %sub, 1, !dbg !55
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #7, !dbg !56
  br label %if.end, !dbg !57

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !58

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @globalFive, align 4, !dbg !59
  %cmp7 = icmp ne i32 %8, 5, !dbg !61
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !62

if.then8:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !63
  br label %if.end10, !dbg !65

if.else:                                          ; preds = %if.end6
  %9 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !66
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !68
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  br label %goodB2G1_label_, !dbg !69

goodB2G1_label_:                                  ; preds = %if.end10
  call void @llvm.dbg.label(metadata !70), !dbg !71
  call void (...) @goodB2G2(), !dbg !72
  call void (...) @goodG2B1(), !dbg !73
  call void @llvm.dbg.declare(metadata i8** %_goodG2B2_data_0, metadata !74, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B2_dataBuffer_0, metadata !77, metadata !DIExpression()), !dbg !78
  %10 = bitcast [100 x i8]* %_goodG2B2_dataBuffer_0 to i8*, !dbg !78
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 100, i1 false), !dbg !78
  %arraydecay11 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B2_dataBuffer_0, i64 0, i64 0, !dbg !79
  store i8* %arraydecay11, i8** %_goodG2B2_data_0, align 8, !dbg !80
  %11 = load i32, i32* @globalFive, align 4, !dbg !81
  %cmp12 = icmp eq i32 %11, 5, !dbg !83
  br i1 %cmp12, label %if.then13, label %if.end15, !dbg !84

if.then13:                                        ; preds = %goodB2G1_label_
  %12 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !85
  %call14 = call i8* @strcpy(i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !87
  br label %if.end15, !dbg !88

if.end15:                                         ; preds = %if.then13, %goodB2G1_label_
  %13 = load i32, i32* @globalFive, align 4, !dbg !89
  %cmp16 = icmp eq i32 %13, 5, !dbg !91
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !92

if.then17:                                        ; preds = %if.end15
  %14 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !93
  %15 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !95
  call void %14(i8* %15), !dbg !93
  br label %if.end18, !dbg !96

if.end18:                                         ; preds = %if.then17, %if.end15
  br label %goodG2B2_label_, !dbg !97

goodG2B2_label_:                                  ; preds = %if.end18
  call void @llvm.dbg.label(metadata !98), !dbg !99
  br label %CWE134_Uncontrolled_Format_String__char_environment_printf_14_good_label_, !dbg !100

CWE134_Uncontrolled_Format_String__char_environment_printf_14_good_label_: ; preds = %goodG2B2_label_
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

declare dso_local void @printLine(i8*) #5

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodB2G2(...) #5

declare dso_local void @goodG2B1(...) #5

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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_1476CWE134_Uncontrolled_Format_String__char_environment_printf_14161_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_735/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_1476CWE134_Uncontrolled_Format_String__char_environment_printf_14161_1", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !10}
!15 = !DILocalVariable(name: "_goodB2G1_environment_0", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!16 = !DILocation(line: 4, column: 142, scope: !7)
!17 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 4, type: !12)
!18 = !DILocation(line: 4, column: 174, scope: !7)
!19 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !20, file: !1, line: 7, type: !10)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 3)
!21 = !DILocation(line: 7, column: 11, scope: !20)
!22 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !20, file: !1, line: 8, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 8, column: 10, scope: !20)
!27 = !DILocation(line: 9, column: 24, scope: !20)
!28 = !DILocation(line: 9, column: 22, scope: !20)
!29 = !DILocation(line: 10, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !20, file: !1, line: 10, column: 9)
!31 = !DILocation(line: 10, column: 20, scope: !30)
!32 = !DILocation(line: 10, column: 9, scope: !20)
!33 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !34, file: !1, line: 13, type: !36)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 12, column: 7)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 11, column: 5)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 13, column: 16, scope: !34)
!40 = !DILocation(line: 13, column: 45, scope: !34)
!41 = !DILocation(line: 13, column: 38, scope: !34)
!42 = !DILocation(line: 14, column: 35, scope: !34)
!43 = !DILocation(line: 14, column: 33, scope: !34)
!44 = !DILocation(line: 15, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !34, file: !1, line: 15, column: 13)
!46 = !DILocation(line: 15, column: 37, scope: !45)
!47 = !DILocation(line: 15, column: 13, scope: !34)
!48 = !DILocation(line: 17, column: 19, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 16, column: 9)
!50 = !DILocation(line: 17, column: 38, scope: !49)
!51 = !DILocation(line: 17, column: 36, scope: !49)
!52 = !DILocation(line: 17, column: 59, scope: !49)
!53 = !DILocation(line: 17, column: 91, scope: !49)
!54 = !DILocation(line: 17, column: 89, scope: !49)
!55 = !DILocation(line: 17, column: 112, scope: !49)
!56 = !DILocation(line: 17, column: 11, scope: !49)
!57 = !DILocation(line: 18, column: 9, scope: !49)
!58 = !DILocation(line: 21, column: 5, scope: !35)
!59 = !DILocation(line: 23, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !20, file: !1, line: 23, column: 9)
!61 = !DILocation(line: 23, column: 20, scope: !60)
!62 = !DILocation(line: 23, column: 9, scope: !20)
!63 = !DILocation(line: 25, column: 7, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 24, column: 5)
!65 = !DILocation(line: 26, column: 5, scope: !64)
!66 = !DILocation(line: 29, column: 22, scope: !67)
!67 = distinct !DILexicalBlock(scope: !60, file: !1, line: 28, column: 5)
!68 = !DILocation(line: 29, column: 7, scope: !67)
!69 = !DILocation(line: 23, column: 23, scope: !60)
!70 = !DILabel(scope: !20, name: "goodB2G1_label_", file: !1, line: 32)
!71 = !DILocation(line: 32, column: 5, scope: !20)
!72 = !DILocation(line: 38, column: 3, scope: !7)
!73 = !DILocation(line: 39, column: 3, scope: !7)
!74 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !75, file: !1, line: 41, type: !10)
!75 = distinct !DILexicalBlock(scope: !7, file: !1, line: 40, column: 3)
!76 = !DILocation(line: 41, column: 11, scope: !75)
!77 = !DILocalVariable(name: "_goodG2B2_dataBuffer_0", scope: !75, file: !1, line: 42, type: !23)
!78 = !DILocation(line: 42, column: 10, scope: !75)
!79 = !DILocation(line: 43, column: 24, scope: !75)
!80 = !DILocation(line: 43, column: 22, scope: !75)
!81 = !DILocation(line: 44, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !75, file: !1, line: 44, column: 9)
!83 = !DILocation(line: 44, column: 20, scope: !82)
!84 = !DILocation(line: 44, column: 9, scope: !75)
!85 = !DILocation(line: 46, column: 14, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 45, column: 5)
!87 = !DILocation(line: 46, column: 7, scope: !86)
!88 = !DILocation(line: 47, column: 5, scope: !86)
!89 = !DILocation(line: 49, column: 9, scope: !90)
!90 = distinct !DILexicalBlock(scope: !75, file: !1, line: 49, column: 9)
!91 = !DILocation(line: 49, column: 20, scope: !90)
!92 = !DILocation(line: 49, column: 9, scope: !75)
!93 = !DILocation(line: 51, column: 7, scope: !94)
!94 = distinct !DILexicalBlock(scope: !90, file: !1, line: 50, column: 5)
!95 = !DILocation(line: 51, column: 14, scope: !94)
!96 = !DILocation(line: 52, column: 5, scope: !94)
!97 = !DILocation(line: 49, column: 23, scope: !90)
!98 = !DILabel(scope: !75, name: "goodG2B2_label_", file: !1, line: 54)
!99 = !DILocation(line: 54, column: 5, scope: !75)
!100 = !DILocation(line: 59, column: 3, scope: !75)
!101 = !DILabel(scope: !7, name: "CWE134_Uncontrolled_Format_String__char_environment_printf_14_good_label_", file: !1, line: 60)
!102 = !DILocation(line: 60, column: 3, scope: !7)
!103 = !DILocation(line: 65, column: 1, scope: !7)
