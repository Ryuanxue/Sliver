; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_0695CWE606_Unchecked_Loop_Condition__char_environment_06119_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_0695CWE606_Unchecked_Loop_Condition__char_environment_06119_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATIC_CONST_FIVE = external dso_local global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_0695CWE606_Unchecked_Loop_Condition__char_environment_06119_1(i8* %_goodB2G1_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G1_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_data_0 = alloca i8*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_n_0 = alloca i32, align 4
  %_goodB2G1_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G1_environment_0, i8** %_goodB2G1_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G1_data_0, align 8, !dbg !28
  %1 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !29
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
  %8 = load i32, i32* @STATIC_CONST_FIVE, align 4, !dbg !59
  %cmp7 = icmp ne i32 %8, 5, !dbg !61
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !62

if.then8:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !63
  br label %if.end16, !dbg !65

if.else:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !66, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !72, metadata !DIExpression()), !dbg !73
  %9 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !74
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodB2G1_n_0) #7, !dbg !76
  %cmp10 = icmp eq i32 %call9, 1, !dbg !77
  br i1 %cmp10, label %if.then11, label %if.end15, !dbg !78

if.then11:                                        ; preds = %if.else
  %10 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !79
  %cmp12 = icmp slt i32 %10, 10000, !dbg !82
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !83

if.then13:                                        ; preds = %if.then11
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !84
  %11 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !86
  %12 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !87
  call void %11(i32 %12), !dbg !86
  %13 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !88
  call void @printIntLine(i32 %13), !dbg !89
  br label %if.end14, !dbg !90

if.end14:                                         ; preds = %if.then13, %if.then11
  br label %if.end15, !dbg !91

if.end15:                                         ; preds = %if.end14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then8
  br label %goodB2G1_label_, !dbg !92

goodB2G1_label_:                                  ; preds = %if.end16
  call void @llvm.dbg.label(metadata !93), !dbg !94
  ret void, !dbg !95
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

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_0695CWE606_Unchecked_Loop_Condition__char_environment_06119_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_031/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_0695CWE606_Unchecked_Loop_Condition__char_environment_06119_1", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G1_environment_0", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!17 = !DILocation(line: 4, column: 124, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 4, type: !12)
!19 = !DILocation(line: 4, column: 156, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !7, file: !1, line: 6, type: !10)
!21 = !DILocation(line: 6, column: 9, scope: !7)
!22 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !7, file: !1, line: 7, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 7, column: 8, scope: !7)
!27 = !DILocation(line: 8, column: 22, scope: !7)
!28 = !DILocation(line: 8, column: 20, scope: !7)
!29 = !DILocation(line: 9, column: 7, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 7)
!31 = !DILocation(line: 9, column: 25, scope: !30)
!32 = !DILocation(line: 9, column: 7, scope: !7)
!33 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !34, file: !1, line: 12, type: !36)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 11, column: 5)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 10, column: 3)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 12, column: 14, scope: !34)
!40 = !DILocation(line: 12, column: 43, scope: !34)
!41 = !DILocation(line: 12, column: 36, scope: !34)
!42 = !DILocation(line: 13, column: 33, scope: !34)
!43 = !DILocation(line: 13, column: 31, scope: !34)
!44 = !DILocation(line: 14, column: 11, scope: !45)
!45 = distinct !DILexicalBlock(scope: !34, file: !1, line: 14, column: 11)
!46 = !DILocation(line: 14, column: 35, scope: !45)
!47 = !DILocation(line: 14, column: 11, scope: !34)
!48 = !DILocation(line: 16, column: 17, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 15, column: 7)
!50 = !DILocation(line: 16, column: 36, scope: !49)
!51 = !DILocation(line: 16, column: 34, scope: !49)
!52 = !DILocation(line: 16, column: 57, scope: !49)
!53 = !DILocation(line: 16, column: 89, scope: !49)
!54 = !DILocation(line: 16, column: 87, scope: !49)
!55 = !DILocation(line: 16, column: 110, scope: !49)
!56 = !DILocation(line: 16, column: 9, scope: !49)
!57 = !DILocation(line: 17, column: 7, scope: !49)
!58 = !DILocation(line: 20, column: 3, scope: !35)
!59 = !DILocation(line: 22, column: 7, scope: !60)
!60 = distinct !DILexicalBlock(scope: !7, file: !1, line: 22, column: 7)
!61 = !DILocation(line: 22, column: 25, scope: !60)
!62 = !DILocation(line: 22, column: 7, scope: !7)
!63 = !DILocation(line: 24, column: 5, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 23, column: 3)
!65 = !DILocation(line: 25, column: 3, scope: !64)
!66 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !67, file: !1, line: 29, type: !15)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 28, column: 5)
!68 = distinct !DILexicalBlock(scope: !60, file: !1, line: 27, column: 3)
!69 = !DILocation(line: 29, column: 11, scope: !67)
!70 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !67, file: !1, line: 30, type: !15)
!71 = !DILocation(line: 30, column: 11, scope: !67)
!72 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !67, file: !1, line: 31, type: !15)
!73 = !DILocation(line: 31, column: 11, scope: !67)
!74 = !DILocation(line: 32, column: 18, scope: !75)
!75 = distinct !DILexicalBlock(scope: !67, file: !1, line: 32, column: 11)
!76 = !DILocation(line: 32, column: 11, scope: !75)
!77 = !DILocation(line: 32, column: 58, scope: !75)
!78 = !DILocation(line: 32, column: 11, scope: !67)
!79 = !DILocation(line: 34, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 34, column: 13)
!81 = distinct !DILexicalBlock(scope: !75, file: !1, line: 33, column: 7)
!82 = !DILocation(line: 34, column: 27, scope: !80)
!83 = !DILocation(line: 34, column: 13, scope: !81)
!84 = !DILocation(line: 36, column: 35, scope: !85)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 35, column: 9)
!86 = !DILocation(line: 37, column: 11, scope: !85)
!87 = !DILocation(line: 37, column: 18, scope: !85)
!88 = !DILocation(line: 38, column: 24, scope: !85)
!89 = !DILocation(line: 38, column: 11, scope: !85)
!90 = !DILocation(line: 39, column: 9, scope: !85)
!91 = !DILocation(line: 41, column: 7, scope: !81)
!92 = !DILocation(line: 22, column: 28, scope: !60)
!93 = !DILabel(scope: !7, name: "goodB2G1_label_", file: !1, line: 46)
!94 = !DILocation(line: 46, column: 3, scope: !7)
!95 = !DILocation(line: 51, column: 1, scope: !7)
