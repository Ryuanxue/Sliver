; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_64a84CWE606_Unchecked_Loop_Condition__char_environment_64b100_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_64a84CWE606_Unchecked_Loop_Condition__char_environment_64b100_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_64a84CWE606_Unchecked_Loop_Condition__char_environment_64b100_1(i8* %_goodB2G_environment_0, void (i32)* %opsink) #0 !dbg !11 {
entry:
  %_goodB2G_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i8*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_dataPtr_0 = alloca i8**, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_environment_0, i8** %_goodB2G_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_environment_0.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !24, metadata !DIExpression()), !dbg !28
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !28
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !28
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !29
  store i8* %arraydecay, i8** %_goodB2G_data_0, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !31, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !37
  %call = call i64 @strlen(i8* %1) #6, !dbg !38
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !36
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !39
  store i8* %call1, i8** %_goodB2G_environment_0.addr, align 8, !dbg !40
  %2 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !41
  %cmp = icmp ne i8* %2, null, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !45
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !47
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !48
  %5 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !49
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !50
  %sub = sub i64 100, %6, !dbg !51
  %sub2 = sub i64 %sub, 1, !dbg !52
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !53
  br label %if.end, !dbg !54

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i8*** %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_dataPtr_0, metadata !55, metadata !DIExpression()), !dbg !57
  store i8** %_goodB2G_data_0, i8*** %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_dataPtr_0, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_data_0, metadata !58, metadata !DIExpression()), !dbg !59
  %7 = load i8**, i8*** %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_dataPtr_0, align 8, !dbg !60
  %8 = load i8*, i8** %7, align 8, !dbg !61
  store i8* %8, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_data_0, align 8, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_i_0, metadata !62, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_n_0, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_intVariable_0, metadata !67, metadata !DIExpression()), !dbg !68
  %9 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_data_0, align 8, !dbg !69
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_n_0) #7, !dbg !71
  %cmp5 = icmp eq i32 %call4, 1, !dbg !72
  br i1 %cmp5, label %if.then6, label %if.end10, !dbg !73

if.then6:                                         ; preds = %if.end
  %10 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_n_0, align 4, !dbg !74
  %cmp7 = icmp slt i32 %10, 10000, !dbg !77
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !78

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_intVariable_0, align 4, !dbg !79
  %11 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !81
  %12 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_n_0, align 4, !dbg !82
  call void %11(i32 %12), !dbg !81
  %13 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_intVariable_0, align 4, !dbg !83
  call void @printIntLine(i32 %13), !dbg !84
  br label %if.end9, !dbg !85

if.end9:                                          ; preds = %if.then8, %if.then6
  br label %if.end10, !dbg !86

if.end10:                                         ; preds = %if.end9, %if.end
  br label %CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_label_, !dbg !87

CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_label_: ; preds = %if.end10
  call void @llvm.dbg.label(metadata !88), !dbg !89
  br label %goodB2G_label_, !dbg !90

goodB2G_label_:                                   ; preds = %CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_label_
  call void @llvm.dbg.label(metadata !91), !dbg !92
  ret void, !dbg !93
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
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_64a84CWE606_Unchecked_Loop_Condition__char_environment_64b100_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_062/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 12.0.0"}
!11 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_64a84CWE606_Unchecked_Loop_Condition__char_environment_64b100_1", scope: !1, file: !1, line: 3, type: !12, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !5, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "_goodB2G_environment_0", arg: 1, scope: !11, file: !1, line: 3, type: !5)
!19 = !DILocation(line: 3, column: 126, scope: !11)
!20 = !DILocalVariable(name: "opsink", arg: 2, scope: !11, file: !1, line: 3, type: !14)
!21 = !DILocation(line: 3, column: 157, scope: !11)
!22 = !DILocalVariable(name: "_goodB2G_data_0", scope: !11, file: !1, line: 5, type: !5)
!23 = !DILocation(line: 5, column: 9, scope: !11)
!24 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !11, file: !1, line: 6, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 800, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 100)
!28 = !DILocation(line: 6, column: 8, scope: !11)
!29 = !DILocation(line: 7, column: 21, scope: !11)
!30 = !DILocation(line: 7, column: 19, scope: !11)
!31 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !32, file: !1, line: 9, type: !33)
!32 = distinct !DILexicalBlock(scope: !11, file: !1, line: 8, column: 3)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 9, column: 12, scope: !32)
!37 = !DILocation(line: 9, column: 40, scope: !32)
!38 = !DILocation(line: 9, column: 33, scope: !32)
!39 = !DILocation(line: 10, column: 30, scope: !32)
!40 = !DILocation(line: 10, column: 28, scope: !32)
!41 = !DILocation(line: 11, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !32, file: !1, line: 11, column: 9)
!43 = !DILocation(line: 11, column: 32, scope: !42)
!44 = !DILocation(line: 11, column: 9, scope: !32)
!45 = !DILocation(line: 13, column: 15, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 12, column: 5)
!47 = !DILocation(line: 13, column: 33, scope: !46)
!48 = !DILocation(line: 13, column: 31, scope: !46)
!49 = !DILocation(line: 13, column: 53, scope: !46)
!50 = !DILocation(line: 13, column: 84, scope: !46)
!51 = !DILocation(line: 13, column: 82, scope: !46)
!52 = !DILocation(line: 13, column: 104, scope: !46)
!53 = !DILocation(line: 13, column: 7, scope: !46)
!54 = !DILocation(line: 14, column: 5, scope: !46)
!55 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_dataPtr_0", scope: !56, file: !1, line: 18, type: !4)
!56 = distinct !DILexicalBlock(scope: !11, file: !1, line: 17, column: 3)
!57 = !DILocation(line: 18, column: 12, scope: !56)
!58 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_data_0", scope: !56, file: !1, line: 19, type: !5)
!59 = !DILocation(line: 19, column: 11, scope: !56)
!60 = !DILocation(line: 19, column: 88, scope: !56)
!61 = !DILocation(line: 19, column: 87, scope: !56)
!62 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_i_0", scope: !63, file: !1, line: 21, type: !17)
!63 = distinct !DILexicalBlock(scope: !56, file: !1, line: 20, column: 5)
!64 = !DILocation(line: 21, column: 11, scope: !63)
!65 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_n_0", scope: !63, file: !1, line: 22, type: !17)
!66 = !DILocation(line: 22, column: 11, scope: !63)
!67 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_intVariable_0", scope: !63, file: !1, line: 23, type: !17)
!68 = !DILocation(line: 23, column: 11, scope: !63)
!69 = !DILocation(line: 24, column: 18, scope: !70)
!70 = distinct !DILexicalBlock(scope: !63, file: !1, line: 24, column: 11)
!71 = !DILocation(line: 24, column: 11, scope: !70)
!72 = !DILocation(line: 24, column: 172, scope: !70)
!73 = !DILocation(line: 24, column: 11, scope: !63)
!74 = !DILocation(line: 26, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 26, column: 13)
!76 = distinct !DILexicalBlock(scope: !70, file: !1, line: 25, column: 7)
!77 = !DILocation(line: 26, column: 84, scope: !75)
!78 = !DILocation(line: 26, column: 13, scope: !76)
!79 = !DILocation(line: 28, column: 92, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 27, column: 9)
!81 = !DILocation(line: 29, column: 11, scope: !80)
!82 = !DILocation(line: 29, column: 18, scope: !80)
!83 = !DILocation(line: 30, column: 24, scope: !80)
!84 = !DILocation(line: 30, column: 11, scope: !80)
!85 = !DILocation(line: 31, column: 9, scope: !80)
!86 = !DILocation(line: 33, column: 7, scope: !76)
!87 = !DILocation(line: 35, column: 5, scope: !63)
!88 = !DILabel(scope: !56, name: "CWE606_Unchecked_Loop_Condition__char_environment_64b_goodB2GSink_label_", file: !1, line: 36)
!89 = !DILocation(line: 36, column: 5, scope: !56)
!90 = !DILocation(line: 41, column: 3, scope: !56)
!91 = !DILabel(scope: !11, name: "goodB2G_label_", file: !1, line: 42)
!92 = !DILocation(line: 42, column: 3, scope: !11)
!93 = !DILocation(line: 47, column: 1, scope: !11)
