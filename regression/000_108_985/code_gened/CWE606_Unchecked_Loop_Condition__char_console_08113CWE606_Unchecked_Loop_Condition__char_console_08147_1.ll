; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_08113CWE606_Unchecked_Loop_Condition__char_console_08147_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_08113CWE606_Unchecked_Loop_Condition__char_console_08147_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_08113CWE606_Unchecked_Loop_Condition__char_console_08147_1(i8* %_goodB2G1_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G1_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_n_0 = alloca i32, align 4
  %_goodB2G1_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G1_data_0, i8** %_goodB2G1_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_goodB2G1_data_0.addr, align 8, !dbg !27
  %call = call i32 (...) @staticReturnsTrue(), !dbg !28
  %tobool = icmp ne i32 %call, 0, !dbg !28
  br i1 %tobool, label %if.then, label %if.end21, !dbg !30

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !31, metadata !DIExpression()), !dbg !37
  %1 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !38
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !39
  store i64 %call1, i64* %_goodB2G1_dataLen_0, align 8, !dbg !37
  %2 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !40
  %sub = sub i64 100, %2, !dbg !42
  %cmp = icmp ugt i64 %sub, 1, !dbg !43
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !44

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !45
  %4 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !49
  %5 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !50
  %sub3 = sub i64 100, %5, !dbg !51
  %conv = trunc i64 %sub3 to i32, !dbg !52
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !53
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !54
  %cmp5 = icmp ne i8* %call4, null, !dbg !55
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !56

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !57
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !59
  store i64 %call8, i64* %_goodB2G1_dataLen_0, align 8, !dbg !60
  %8 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !61
  %cmp9 = icmp ugt i64 %8, 0, !dbg !63
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !64

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !65
  %10 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !66
  %sub11 = sub i64 %10, 1, !dbg !67
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !65
  %11 = load i8, i8* %arrayidx, align 1, !dbg !65
  %conv12 = sext i8 %11 to i32, !dbg !65
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !68
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !69

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !70
  %13 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !72
  %sub16 = sub i64 %13, 1, !dbg !73
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !70
  store i8 0, i8* %arrayidx17, align 1, !dbg !74
  br label %if.end, !dbg !75

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !76

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !77
  %14 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !79
  %15 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !80
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !79
  store i8 0, i8* %arrayidx18, align 1, !dbg !81
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !82

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !83

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 (...) @staticReturnsFalse(), !dbg !84
  %tobool23 = icmp ne i32 %call22, 0, !dbg !84
  br i1 %tobool23, label %if.then24, label %if.else25, !dbg !86

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !87
  br label %if.end35, !dbg !89

if.else25:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !90, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !96, metadata !DIExpression()), !dbg !97
  %16 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !98
  %call26 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodB2G1_n_0) #7, !dbg !100
  %cmp27 = icmp eq i32 %call26, 1, !dbg !101
  br i1 %cmp27, label %if.then29, label %if.end34, !dbg !102

if.then29:                                        ; preds = %if.else25
  %17 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !103
  %cmp30 = icmp slt i32 %17, 10000, !dbg !106
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !107

if.then32:                                        ; preds = %if.then29
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !108
  %18 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !110
  %19 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !111
  call void %18(i32 %19), !dbg !110
  %20 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !112
  call void @printIntLine(i32 %20), !dbg !113
  br label %if.end33, !dbg !114

if.end33:                                         ; preds = %if.then32, %if.then29
  br label %if.end34, !dbg !115

if.end34:                                         ; preds = %if.end33, %if.else25
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then24
  br label %goodB2G1_label_, !dbg !116

goodB2G1_label_:                                  ; preds = %if.end35
  call void @llvm.dbg.label(metadata !117), !dbg !118
  ret void, !dbg !119
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @staticReturnsTrue(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @staticReturnsFalse(...) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_08113CWE606_Unchecked_Loop_Condition__char_console_08147_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_985/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_08113CWE606_Unchecked_Loop_Condition__char_console_08147_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G1_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 117, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 142, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !9, file: !1, line: 5, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 5, column: 8, scope: !9)
!26 = !DILocation(line: 6, column: 22, scope: !9)
!27 = !DILocation(line: 6, column: 20, scope: !9)
!28 = !DILocation(line: 7, column: 7, scope: !29)
!29 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 7)
!30 = !DILocation(line: 7, column: 7, scope: !9)
!31 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !32, file: !1, line: 10, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 9, column: 5)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 8, column: 3)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 10, column: 14, scope: !32)
!38 = !DILocation(line: 10, column: 43, scope: !32)
!39 = !DILocation(line: 10, column: 36, scope: !32)
!40 = !DILocation(line: 11, column: 18, scope: !41)
!41 = distinct !DILexicalBlock(scope: !32, file: !1, line: 11, column: 11)
!42 = !DILocation(line: 11, column: 16, scope: !41)
!43 = !DILocation(line: 11, column: 39, scope: !41)
!44 = !DILocation(line: 11, column: 11, scope: !32)
!45 = !DILocation(line: 13, column: 19, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 13, column: 13)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 12, column: 7)
!48 = !DILocation(line: 13, column: 38, scope: !46)
!49 = !DILocation(line: 13, column: 36, scope: !46)
!50 = !DILocation(line: 13, column: 72, scope: !46)
!51 = !DILocation(line: 13, column: 70, scope: !46)
!52 = !DILocation(line: 13, column: 59, scope: !46)
!53 = !DILocation(line: 13, column: 94, scope: !46)
!54 = !DILocation(line: 13, column: 13, scope: !46)
!55 = !DILocation(line: 13, column: 101, scope: !46)
!56 = !DILocation(line: 13, column: 13, scope: !47)
!57 = !DILocation(line: 15, column: 40, scope: !58)
!58 = distinct !DILexicalBlock(scope: !46, file: !1, line: 14, column: 9)
!59 = !DILocation(line: 15, column: 33, scope: !58)
!60 = !DILocation(line: 15, column: 31, scope: !58)
!61 = !DILocation(line: 16, column: 16, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 16, column: 15)
!63 = !DILocation(line: 16, column: 36, scope: !62)
!64 = !DILocation(line: 16, column: 41, scope: !62)
!65 = !DILocation(line: 16, column: 45, scope: !62)
!66 = !DILocation(line: 16, column: 62, scope: !62)
!67 = !DILocation(line: 16, column: 82, scope: !62)
!68 = !DILocation(line: 16, column: 87, scope: !62)
!69 = !DILocation(line: 16, column: 15, scope: !58)
!70 = !DILocation(line: 18, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !62, file: !1, line: 17, column: 11)
!72 = !DILocation(line: 18, column: 30, scope: !71)
!73 = !DILocation(line: 18, column: 50, scope: !71)
!74 = !DILocation(line: 18, column: 55, scope: !71)
!75 = !DILocation(line: 19, column: 11, scope: !71)
!76 = !DILocation(line: 21, column: 9, scope: !58)
!77 = !DILocation(line: 24, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !46, file: !1, line: 23, column: 9)
!79 = !DILocation(line: 25, column: 11, scope: !78)
!80 = !DILocation(line: 25, column: 28, scope: !78)
!81 = !DILocation(line: 25, column: 49, scope: !78)
!82 = !DILocation(line: 28, column: 7, scope: !47)
!83 = !DILocation(line: 31, column: 3, scope: !33)
!84 = !DILocation(line: 33, column: 7, scope: !85)
!85 = distinct !DILexicalBlock(scope: !9, file: !1, line: 33, column: 7)
!86 = !DILocation(line: 33, column: 7, scope: !9)
!87 = !DILocation(line: 35, column: 5, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 34, column: 3)
!89 = !DILocation(line: 36, column: 3, scope: !88)
!90 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !91, file: !1, line: 40, type: !4)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 39, column: 5)
!92 = distinct !DILexicalBlock(scope: !85, file: !1, line: 38, column: 3)
!93 = !DILocation(line: 40, column: 11, scope: !91)
!94 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !91, file: !1, line: 41, type: !4)
!95 = !DILocation(line: 41, column: 11, scope: !91)
!96 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !91, file: !1, line: 42, type: !4)
!97 = !DILocation(line: 42, column: 11, scope: !91)
!98 = !DILocation(line: 43, column: 18, scope: !99)
!99 = distinct !DILexicalBlock(scope: !91, file: !1, line: 43, column: 11)
!100 = !DILocation(line: 43, column: 11, scope: !99)
!101 = !DILocation(line: 43, column: 58, scope: !99)
!102 = !DILocation(line: 43, column: 11, scope: !91)
!103 = !DILocation(line: 45, column: 13, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 45, column: 13)
!105 = distinct !DILexicalBlock(scope: !99, file: !1, line: 44, column: 7)
!106 = !DILocation(line: 45, column: 27, scope: !104)
!107 = !DILocation(line: 45, column: 13, scope: !105)
!108 = !DILocation(line: 47, column: 35, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 46, column: 9)
!110 = !DILocation(line: 48, column: 11, scope: !109)
!111 = !DILocation(line: 48, column: 18, scope: !109)
!112 = !DILocation(line: 49, column: 24, scope: !109)
!113 = !DILocation(line: 49, column: 11, scope: !109)
!114 = !DILocation(line: 50, column: 9, scope: !109)
!115 = !DILocation(line: 52, column: 7, scope: !105)
!116 = !DILocation(line: 33, column: 26, scope: !85)
!117 = !DILabel(scope: !9, name: "goodB2G1_label_", file: !1, line: 57)
!118 = !DILocation(line: 57, column: 3, scope: !9)
!119 = !DILocation(line: 62, column: 1, scope: !9)