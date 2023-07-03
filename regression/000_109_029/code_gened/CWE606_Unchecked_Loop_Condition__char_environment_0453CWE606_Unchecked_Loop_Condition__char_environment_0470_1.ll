; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_0453CWE606_Unchecked_Loop_Condition__char_environment_0470_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_0453CWE606_Unchecked_Loop_Condition__char_environment_0470_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATIC_CONST_TRUE = external dso_local global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_0453CWE606_Unchecked_Loop_Condition__char_environment_0470_1(i8* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_environment_0, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_dataBuffer_0, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_data_0, align 8, !dbg !28
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !29
  %tobool = icmp ne i32 %1, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end5, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %2 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_data_0, align 8, !dbg !39
  %call = call i64 @strlen(i8* %2) #6, !dbg !40
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_dataLen_0, align 8, !dbg !38
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !41
  store i8* %call1, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_environment_0.addr, align 8, !dbg !42
  %3 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_environment_0.addr, align 8, !dbg !43
  %cmp = icmp ne i8* %3, null, !dbg !45
  br i1 %cmp, label %if.then2, label %if.end, !dbg !46

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_data_0, align 8, !dbg !47
  %5 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !50
  %6 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_environment_0.addr, align 8, !dbg !51
  %7 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_dataLen_0, align 8, !dbg !52
  %sub = sub i64 100, %7, !dbg !53
  %sub3 = sub i64 %sub, 1, !dbg !54
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !55
  br label %if.end, !dbg !56

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !57

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !58
  %tobool6 = icmp ne i32 %8, 0, !dbg !58
  br i1 %tobool6, label %if.then7, label %if.end12, !dbg !60

if.then7:                                         ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_i_0, metadata !61, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_n_0, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_intVariable_0, metadata !67, metadata !DIExpression()), !dbg !68
  %9 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_data_0, align 8, !dbg !69
  %call8 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_n_0) #7, !dbg !71
  %cmp9 = icmp eq i32 %call8, 1, !dbg !72
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !73

if.then10:                                        ; preds = %if.then7
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_intVariable_0, align 4, !dbg !74
  %10 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !76
  %11 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_n_0, align 4, !dbg !77
  call void %10(i32 %11), !dbg !76
  %12 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_intVariable_0, align 4, !dbg !78
  call void @printIntLine(i32 %12), !dbg !79
  br label %if.end11, !dbg !80

if.end11:                                         ; preds = %if.then10, %if.then7
  br label %if.end12, !dbg !81

if.end12:                                         ; preds = %if.end11, %if.end5
  br label %CWE606_Unchecked_Loop_Condition__char_environment_04_bad_label_, !dbg !58

CWE606_Unchecked_Loop_Condition__char_environment_04_bad_label_: ; preds = %if.end12
  call void @llvm.dbg.label(metadata !82), !dbg !83
  ret void, !dbg !84
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_0453CWE606_Unchecked_Loop_Condition__char_environment_0470_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_029/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_0453CWE606_Unchecked_Loop_Condition__char_environment_0470_1", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_environment_0", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!17 = !DILocation(line: 4, column: 123, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 4, type: !12)
!19 = !DILocation(line: 4, column: 203, scope: !7)
!20 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_data_0", scope: !7, file: !1, line: 6, type: !10)
!21 = !DILocation(line: 6, column: 9, scope: !7)
!22 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_dataBuffer_0", scope: !7, file: !1, line: 7, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 7, column: 8, scope: !7)
!27 = !DILocation(line: 8, column: 70, scope: !7)
!28 = !DILocation(line: 8, column: 68, scope: !7)
!29 = !DILocation(line: 9, column: 7, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 7)
!31 = !DILocation(line: 9, column: 7, scope: !7)
!32 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_dataLen_0", scope: !33, file: !1, line: 12, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 11, column: 5)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 10, column: 3)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 12, column: 14, scope: !33)
!39 = !DILocation(line: 12, column: 91, scope: !33)
!40 = !DILocation(line: 12, column: 84, scope: !33)
!41 = !DILocation(line: 13, column: 81, scope: !33)
!42 = !DILocation(line: 13, column: 79, scope: !33)
!43 = !DILocation(line: 14, column: 11, scope: !44)
!44 = distinct !DILexicalBlock(scope: !33, file: !1, line: 14, column: 11)
!45 = !DILocation(line: 14, column: 83, scope: !44)
!46 = !DILocation(line: 14, column: 11, scope: !33)
!47 = !DILocation(line: 16, column: 17, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 15, column: 7)
!49 = !DILocation(line: 16, column: 84, scope: !48)
!50 = !DILocation(line: 16, column: 82, scope: !48)
!51 = !DILocation(line: 16, column: 153, scope: !48)
!52 = !DILocation(line: 16, column: 233, scope: !48)
!53 = !DILocation(line: 16, column: 231, scope: !48)
!54 = !DILocation(line: 16, column: 302, scope: !48)
!55 = !DILocation(line: 16, column: 9, scope: !48)
!56 = !DILocation(line: 17, column: 7, scope: !48)
!57 = !DILocation(line: 20, column: 3, scope: !34)
!58 = !DILocation(line: 22, column: 7, scope: !59)
!59 = distinct !DILexicalBlock(scope: !7, file: !1, line: 22, column: 7)
!60 = !DILocation(line: 22, column: 7, scope: !7)
!61 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_i_0", scope: !62, file: !1, line: 25, type: !15)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 24, column: 5)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 23, column: 3)
!64 = !DILocation(line: 25, column: 11, scope: !62)
!65 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_n_0", scope: !62, file: !1, line: 26, type: !15)
!66 = !DILocation(line: 26, column: 11, scope: !62)
!67 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_04_bad_intVariable_0", scope: !62, file: !1, line: 27, type: !15)
!68 = !DILocation(line: 27, column: 11, scope: !62)
!69 = !DILocation(line: 28, column: 18, scope: !70)
!70 = distinct !DILexicalBlock(scope: !62, file: !1, line: 28, column: 11)
!71 = !DILocation(line: 28, column: 11, scope: !70)
!72 = !DILocation(line: 28, column: 154, scope: !70)
!73 = !DILocation(line: 28, column: 11, scope: !62)
!74 = !DILocation(line: 30, column: 81, scope: !75)
!75 = distinct !DILexicalBlock(scope: !70, file: !1, line: 29, column: 7)
!76 = !DILocation(line: 31, column: 9, scope: !75)
!77 = !DILocation(line: 31, column: 16, scope: !75)
!78 = !DILocation(line: 32, column: 22, scope: !75)
!79 = !DILocation(line: 32, column: 9, scope: !75)
!80 = !DILocation(line: 33, column: 7, scope: !75)
!81 = !DILocation(line: 36, column: 3, scope: !63)
!82 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_04_bad_label_", file: !1, line: 38)
!83 = !DILocation(line: 38, column: 3, scope: !7)
!84 = !DILocation(line: 43, column: 1, scope: !7)
