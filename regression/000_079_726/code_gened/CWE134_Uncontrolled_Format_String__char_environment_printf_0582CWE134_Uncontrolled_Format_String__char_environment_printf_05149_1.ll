; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_0582CWE134_Uncontrolled_Format_String__char_environment_printf_05149_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_0582CWE134_Uncontrolled_Format_String__char_environment_printf_05149_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@staticTrue = external dso_local global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@staticFalse = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_0582CWE134_Uncontrolled_Format_String__char_environment_printf_05149_1(i8* %_goodB2G1_environment_0, void (i8*)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G1_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G1_data_0 = alloca i8*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodG2B1_data_0 = alloca i8*, align 8
  %_goodG2B1_dataBuffer_0 = alloca [100 x i8], align 16
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
  %1 = load i32, i32* @staticTrue, align 4, !dbg !29
  %tobool = icmp ne i32 %1, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end5, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %2 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !39
  %call = call i64 @strlen(i8* %2) #6, !dbg !40
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !38
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !41
  store i8* %call1, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !42
  %3 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !43
  %cmp = icmp ne i8* %3, null, !dbg !45
  br i1 %cmp, label %if.then2, label %if.end, !dbg !46

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !47
  %5 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !50
  %6 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !51
  %7 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !52
  %sub = sub i64 100, %7, !dbg !53
  %sub3 = sub i64 %sub, 1, !dbg !54
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !55
  br label %if.end, !dbg !56

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !57

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @staticFalse, align 4, !dbg !58
  %tobool6 = icmp ne i32 %8, 0, !dbg !58
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !60

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !61
  br label %if.end9, !dbg !63

if.else:                                          ; preds = %if.end5
  %9 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !64
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %9), !dbg !66
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7
  br label %goodB2G1_label_, !dbg !58

goodB2G1_label_:                                  ; preds = %if.end9
  call void @llvm.dbg.label(metadata !67), !dbg !68
  call void (...) @goodB2G2(), !dbg !69
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !70, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !73, metadata !DIExpression()), !dbg !74
  %10 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !74
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 100, i1 false), !dbg !74
  %arraydecay10 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !75
  store i8* %arraydecay10, i8** %_goodG2B1_data_0, align 8, !dbg !76
  %11 = load i32, i32* @staticFalse, align 4, !dbg !77
  %tobool11 = icmp ne i32 %11, 0, !dbg !77
  br i1 %tobool11, label %if.then12, label %if.else13, !dbg !79

if.then12:                                        ; preds = %goodB2G1_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !80
  br label %if.end15, !dbg !82

if.else13:                                        ; preds = %goodB2G1_label_
  %12 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !83
  %call14 = call i8* @strcpy(i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !85
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then12
  %13 = load i32, i32* @staticTrue, align 4, !dbg !86
  %tobool16 = icmp ne i32 %13, 0, !dbg !86
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !88

if.then17:                                        ; preds = %if.end15
  %14 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !89
  %15 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !91
  call void %14(i8* %15), !dbg !89
  br label %if.end18, !dbg !92

if.end18:                                         ; preds = %if.then17, %if.end15
  br label %goodG2B1_label_, !dbg !86

goodG2B1_label_:                                  ; preds = %if.end18
  call void @llvm.dbg.label(metadata !93), !dbg !94
  br label %CWE134_Uncontrolled_Format_String__char_environment_printf_05_good_label_, !dbg !95

CWE134_Uncontrolled_Format_String__char_environment_printf_05_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !96), !dbg !97
  ret void, !dbg !98
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_0582CWE134_Uncontrolled_Format_String__char_environment_printf_05149_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_726/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_0582CWE134_Uncontrolled_Format_String__char_environment_printf_05149_1", scope: !1, file: !1, line: 5, type: !8, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !10}
!15 = !DILocalVariable(name: "_goodB2G1_environment_0", arg: 1, scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 142, scope: !7)
!17 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 5, type: !12)
!18 = !DILocation(line: 5, column: 174, scope: !7)
!19 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !20, file: !1, line: 8, type: !10)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 3)
!21 = !DILocation(line: 8, column: 11, scope: !20)
!22 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !20, file: !1, line: 9, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 9, column: 10, scope: !20)
!27 = !DILocation(line: 10, column: 24, scope: !20)
!28 = !DILocation(line: 10, column: 22, scope: !20)
!29 = !DILocation(line: 11, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !20, file: !1, line: 11, column: 9)
!31 = !DILocation(line: 11, column: 9, scope: !20)
!32 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !33, file: !1, line: 14, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 13, column: 7)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 12, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 14, column: 16, scope: !33)
!39 = !DILocation(line: 14, column: 45, scope: !33)
!40 = !DILocation(line: 14, column: 38, scope: !33)
!41 = !DILocation(line: 15, column: 35, scope: !33)
!42 = !DILocation(line: 15, column: 33, scope: !33)
!43 = !DILocation(line: 16, column: 13, scope: !44)
!44 = distinct !DILexicalBlock(scope: !33, file: !1, line: 16, column: 13)
!45 = !DILocation(line: 16, column: 37, scope: !44)
!46 = !DILocation(line: 16, column: 13, scope: !33)
!47 = !DILocation(line: 18, column: 19, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 17, column: 9)
!49 = !DILocation(line: 18, column: 38, scope: !48)
!50 = !DILocation(line: 18, column: 36, scope: !48)
!51 = !DILocation(line: 18, column: 59, scope: !48)
!52 = !DILocation(line: 18, column: 91, scope: !48)
!53 = !DILocation(line: 18, column: 89, scope: !48)
!54 = !DILocation(line: 18, column: 112, scope: !48)
!55 = !DILocation(line: 18, column: 11, scope: !48)
!56 = !DILocation(line: 19, column: 9, scope: !48)
!57 = !DILocation(line: 22, column: 5, scope: !34)
!58 = !DILocation(line: 24, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !20, file: !1, line: 24, column: 9)
!60 = !DILocation(line: 24, column: 9, scope: !20)
!61 = !DILocation(line: 26, column: 7, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 25, column: 5)
!63 = !DILocation(line: 27, column: 5, scope: !62)
!64 = !DILocation(line: 30, column: 22, scope: !65)
!65 = distinct !DILexicalBlock(scope: !59, file: !1, line: 29, column: 5)
!66 = !DILocation(line: 30, column: 7, scope: !65)
!67 = !DILabel(scope: !20, name: "goodB2G1_label_", file: !1, line: 33)
!68 = !DILocation(line: 33, column: 5, scope: !20)
!69 = !DILocation(line: 39, column: 3, scope: !7)
!70 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !71, file: !1, line: 41, type: !10)
!71 = distinct !DILexicalBlock(scope: !7, file: !1, line: 40, column: 3)
!72 = !DILocation(line: 41, column: 11, scope: !71)
!73 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !71, file: !1, line: 42, type: !23)
!74 = !DILocation(line: 42, column: 10, scope: !71)
!75 = !DILocation(line: 43, column: 24, scope: !71)
!76 = !DILocation(line: 43, column: 22, scope: !71)
!77 = !DILocation(line: 44, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !71, file: !1, line: 44, column: 9)
!79 = !DILocation(line: 44, column: 9, scope: !71)
!80 = !DILocation(line: 46, column: 7, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 45, column: 5)
!82 = !DILocation(line: 47, column: 5, scope: !81)
!83 = !DILocation(line: 50, column: 14, scope: !84)
!84 = distinct !DILexicalBlock(scope: !78, file: !1, line: 49, column: 5)
!85 = !DILocation(line: 50, column: 7, scope: !84)
!86 = !DILocation(line: 53, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !71, file: !1, line: 53, column: 9)
!88 = !DILocation(line: 53, column: 9, scope: !71)
!89 = !DILocation(line: 55, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !87, file: !1, line: 54, column: 5)
!91 = !DILocation(line: 55, column: 14, scope: !90)
!92 = !DILocation(line: 56, column: 5, scope: !90)
!93 = !DILabel(scope: !71, name: "goodG2B1_label_", file: !1, line: 58)
!94 = !DILocation(line: 58, column: 5, scope: !71)
!95 = !DILocation(line: 63, column: 3, scope: !71)
!96 = !DILabel(scope: !7, name: "CWE134_Uncontrolled_Format_String__char_environment_printf_05_good_label_", file: !1, line: 64)
!97 = !DILocation(line: 64, column: 3, scope: !7)
!98 = !DILocation(line: 69, column: 1, scope: !7)
