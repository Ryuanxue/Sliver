; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_66a90CWE606_Unchecked_Loop_Condition__char_environment_66b92_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_66a90CWE606_Unchecked_Loop_Condition__char_environment_66b92_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_66a90CWE606_Unchecked_Loop_Condition__char_environment_66b92_1(i8* %_goodB2G_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i8*, align 8
  %_goodB2G_dataArray_0 = alloca [5 x i8*], align 16
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_environment_0, i8** %_goodB2G_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [5 x i8*]* %_goodB2G_dataArray_0, metadata !22, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !27, metadata !DIExpression()), !dbg !31
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !31
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !31
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !32
  store i8* %arraydecay, i8** %_goodB2G_data_0, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !34, metadata !DIExpression()), !dbg !39
  %1 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !40
  %call = call i64 @strlen(i8* %1) #6, !dbg !41
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !39
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !42
  store i8* %call1, i8** %_goodB2G_environment_0.addr, align 8, !dbg !43
  %2 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !44
  %cmp = icmp ne i8* %2, null, !dbg !46
  br i1 %cmp, label %if.then, label %if.end, !dbg !47

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !48
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !51
  %5 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !52
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !53
  %sub = sub i64 100, %6, !dbg !54
  %sub2 = sub i64 %sub, 1, !dbg !55
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !56
  br label %if.end, !dbg !57

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !58
  %arrayidx = getelementptr inbounds [5 x i8*], [5 x i8*]* %_goodB2G_dataArray_0, i64 0, i64 2, !dbg !59
  store i8* %7, i8** %arrayidx, align 16, !dbg !60
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_data_0, metadata !61, metadata !DIExpression()), !dbg !63
  %arrayidx4 = getelementptr inbounds [5 x i8*], [5 x i8*]* %_goodB2G_dataArray_0, i64 0, i64 2, !dbg !64
  %8 = load i8*, i8** %arrayidx4, align 16, !dbg !64
  store i8* %8, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_data_0, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_i_0, metadata !65, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_n_0, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_intVariable_0, metadata !70, metadata !DIExpression()), !dbg !71
  %9 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_data_0, align 8, !dbg !72
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_n_0) #7, !dbg !74
  %cmp6 = icmp eq i32 %call5, 1, !dbg !75
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !76

if.then7:                                         ; preds = %if.end
  %10 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_n_0, align 4, !dbg !77
  %cmp8 = icmp slt i32 %10, 10000, !dbg !80
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !81

if.then9:                                         ; preds = %if.then7
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_intVariable_0, align 4, !dbg !82
  %11 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !84
  %12 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_n_0, align 4, !dbg !85
  call void %11(i32 %12), !dbg !84
  %13 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_intVariable_0, align 4, !dbg !86
  call void @printIntLine(i32 %13), !dbg !87
  br label %if.end10, !dbg !88

if.end10:                                         ; preds = %if.then9, %if.then7
  br label %if.end11, !dbg !89

if.end11:                                         ; preds = %if.end10, %if.end
  br label %CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_label_, !dbg !90

CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_label_: ; preds = %if.end11
  call void @llvm.dbg.label(metadata !91), !dbg !92
  br label %goodB2G_label_, !dbg !93

goodB2G_label_:                                   ; preds = %CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_label_
  call void @llvm.dbg.label(metadata !94), !dbg !95
  ret void, !dbg !96
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_66a90CWE606_Unchecked_Loop_Condition__char_environment_66b92_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_064/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_66a90CWE606_Unchecked_Loop_Condition__char_environment_66b92_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 125, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 156, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G_data_0", scope: !7, file: !1, line: 5, type: !10)
!21 = !DILocation(line: 5, column: 9, scope: !7)
!22 = !DILocalVariable(name: "_goodB2G_dataArray_0", scope: !7, file: !1, line: 6, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 5)
!26 = !DILocation(line: 6, column: 9, scope: !7)
!27 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !7, file: !1, line: 7, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 100)
!31 = !DILocation(line: 7, column: 8, scope: !7)
!32 = !DILocation(line: 8, column: 21, scope: !7)
!33 = !DILocation(line: 8, column: 19, scope: !7)
!34 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !35, file: !1, line: 10, type: !36)
!35 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 3)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 10, column: 12, scope: !35)
!40 = !DILocation(line: 10, column: 40, scope: !35)
!41 = !DILocation(line: 10, column: 33, scope: !35)
!42 = !DILocation(line: 11, column: 30, scope: !35)
!43 = !DILocation(line: 11, column: 28, scope: !35)
!44 = !DILocation(line: 12, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !35, file: !1, line: 12, column: 9)
!46 = !DILocation(line: 12, column: 32, scope: !45)
!47 = !DILocation(line: 12, column: 9, scope: !35)
!48 = !DILocation(line: 14, column: 15, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 13, column: 5)
!50 = !DILocation(line: 14, column: 33, scope: !49)
!51 = !DILocation(line: 14, column: 31, scope: !49)
!52 = !DILocation(line: 14, column: 53, scope: !49)
!53 = !DILocation(line: 14, column: 84, scope: !49)
!54 = !DILocation(line: 14, column: 82, scope: !49)
!55 = !DILocation(line: 14, column: 104, scope: !49)
!56 = !DILocation(line: 14, column: 7, scope: !49)
!57 = !DILocation(line: 15, column: 5, scope: !49)
!58 = !DILocation(line: 18, column: 29, scope: !7)
!59 = !DILocation(line: 18, column: 3, scope: !7)
!60 = !DILocation(line: 18, column: 27, scope: !7)
!61 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_data_0", scope: !62, file: !1, line: 20, type: !10)
!62 = distinct !DILexicalBlock(scope: !7, file: !1, line: 19, column: 3)
!63 = !DILocation(line: 20, column: 11, scope: !62)
!64 = !DILocation(line: 20, column: 87, scope: !62)
!65 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_i_0", scope: !66, file: !1, line: 22, type: !15)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 21, column: 5)
!67 = !DILocation(line: 22, column: 11, scope: !66)
!68 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_n_0", scope: !66, file: !1, line: 23, type: !15)
!69 = !DILocation(line: 23, column: 11, scope: !66)
!70 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_intVariable_0", scope: !66, file: !1, line: 24, type: !15)
!71 = !DILocation(line: 24, column: 11, scope: !66)
!72 = !DILocation(line: 25, column: 18, scope: !73)
!73 = distinct !DILexicalBlock(scope: !66, file: !1, line: 25, column: 11)
!74 = !DILocation(line: 25, column: 11, scope: !73)
!75 = !DILocation(line: 25, column: 172, scope: !73)
!76 = !DILocation(line: 25, column: 11, scope: !66)
!77 = !DILocation(line: 27, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 27, column: 13)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 26, column: 7)
!80 = !DILocation(line: 27, column: 84, scope: !78)
!81 = !DILocation(line: 27, column: 13, scope: !79)
!82 = !DILocation(line: 29, column: 92, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !1, line: 28, column: 9)
!84 = !DILocation(line: 30, column: 11, scope: !83)
!85 = !DILocation(line: 30, column: 18, scope: !83)
!86 = !DILocation(line: 31, column: 24, scope: !83)
!87 = !DILocation(line: 31, column: 11, scope: !83)
!88 = !DILocation(line: 32, column: 9, scope: !83)
!89 = !DILocation(line: 34, column: 7, scope: !79)
!90 = !DILocation(line: 36, column: 5, scope: !66)
!91 = !DILabel(scope: !62, name: "CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink_label_", file: !1, line: 37)
!92 = !DILocation(line: 37, column: 5, scope: !62)
!93 = !DILocation(line: 42, column: 3, scope: !62)
!94 = !DILabel(scope: !7, name: "goodB2G_label_", file: !1, line: 43)
!95 = !DILocation(line: 43, column: 3, scope: !7)
!96 = !DILocation(line: 48, column: 1, scope: !7)
