; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_67a90CWE606_Unchecked_Loop_Condition__char_environment_67b96_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_67a90CWE606_Unchecked_Loop_Condition__char_environment_67b96_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_67a90CWE606_Unchecked_Loop_Condition__char_environment_67b96_1(i8* %_goodB2G_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i8*, align 8
  %_goodB2G_myStruct_0 = alloca %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_environment_0, i8** %_goodB2G_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %_goodB2G_myStruct_0, metadata !22, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !29, metadata !DIExpression()), !dbg !33
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !33
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !33
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !34
  store i8* %arraydecay, i8** %_goodB2G_data_0, align 8, !dbg !35
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !36, metadata !DIExpression()), !dbg !41
  %1 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !42
  %call = call i64 @strlen(i8* %1) #6, !dbg !43
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !41
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !44
  store i8* %call1, i8** %_goodB2G_environment_0.addr, align 8, !dbg !45
  %2 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !46
  %cmp = icmp ne i8* %2, null, !dbg !48
  br i1 %cmp, label %if.then, label %if.end, !dbg !49

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !50
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !52
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !53
  %5 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !54
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !55
  %sub = sub i64 100, %6, !dbg !56
  %sub2 = sub i64 %sub, 1, !dbg !57
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !58
  br label %if.end, !dbg !59

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !60
  %structFirst = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %_goodB2G_myStruct_0, i32 0, i32 0, !dbg !61
  store i8* %7, i8** %structFirst, align 8, !dbg !62
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_data_0, metadata !63, metadata !DIExpression()), !dbg !65
  %structFirst4 = getelementptr inbounds %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType, %struct._CWE606_Unchecked_Loop_Condition__char_environment_67_structType* %_goodB2G_myStruct_0, i32 0, i32 0, !dbg !66
  %8 = load i8*, i8** %structFirst4, align 8, !dbg !66
  store i8* %8, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_data_0, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_i_0, metadata !67, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_n_0, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_intVariable_0, metadata !72, metadata !DIExpression()), !dbg !73
  %9 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_data_0, align 8, !dbg !74
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_n_0) #7, !dbg !76
  %cmp6 = icmp eq i32 %call5, 1, !dbg !77
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !78

if.then7:                                         ; preds = %if.end
  %10 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_n_0, align 4, !dbg !79
  %cmp8 = icmp slt i32 %10, 10000, !dbg !82
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !83

if.then9:                                         ; preds = %if.then7
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_intVariable_0, align 4, !dbg !84
  %11 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !86
  %12 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_n_0, align 4, !dbg !87
  call void %11(i32 %12), !dbg !86
  %13 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_intVariable_0, align 4, !dbg !88
  call void @printIntLine(i32 %13), !dbg !89
  br label %if.end10, !dbg !90

if.end10:                                         ; preds = %if.then9, %if.then7
  br label %if.end11, !dbg !91

if.end11:                                         ; preds = %if.end10, %if.end
  br label %CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_label_, !dbg !92

CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_label_: ; preds = %if.end11
  call void @llvm.dbg.label(metadata !93), !dbg !94
  br label %goodB2G_label_, !dbg !95

goodB2G_label_:                                   ; preds = %CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_label_
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_67a90CWE606_Unchecked_Loop_Condition__char_environment_67b96_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_065/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_67a90CWE606_Unchecked_Loop_Condition__char_environment_67b96_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!22 = !DILocalVariable(name: "_goodB2G_myStruct_0", scope: !7, file: !1, line: 6, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_environment_67_structType", file: !24, line: 8, baseType: !25)
!24 = !DIFile(filename: "../source_code/_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_065/code_gened")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE606_Unchecked_Loop_Condition__char_environment_67_structType", file: !24, line: 5, size: 64, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !25, file: !24, line: 7, baseType: !10, size: 64)
!28 = !DILocation(line: 6, column: 67, scope: !7)
!29 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !7, file: !1, line: 7, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 100)
!33 = !DILocation(line: 7, column: 8, scope: !7)
!34 = !DILocation(line: 8, column: 21, scope: !7)
!35 = !DILocation(line: 8, column: 19, scope: !7)
!36 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !37, file: !1, line: 10, type: !38)
!37 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 3)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DILocation(line: 10, column: 12, scope: !37)
!42 = !DILocation(line: 10, column: 40, scope: !37)
!43 = !DILocation(line: 10, column: 33, scope: !37)
!44 = !DILocation(line: 11, column: 30, scope: !37)
!45 = !DILocation(line: 11, column: 28, scope: !37)
!46 = !DILocation(line: 12, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !37, file: !1, line: 12, column: 9)
!48 = !DILocation(line: 12, column: 32, scope: !47)
!49 = !DILocation(line: 12, column: 9, scope: !37)
!50 = !DILocation(line: 14, column: 15, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 13, column: 5)
!52 = !DILocation(line: 14, column: 33, scope: !51)
!53 = !DILocation(line: 14, column: 31, scope: !51)
!54 = !DILocation(line: 14, column: 53, scope: !51)
!55 = !DILocation(line: 14, column: 84, scope: !51)
!56 = !DILocation(line: 14, column: 82, scope: !51)
!57 = !DILocation(line: 14, column: 104, scope: !51)
!58 = !DILocation(line: 14, column: 7, scope: !51)
!59 = !DILocation(line: 15, column: 5, scope: !51)
!60 = !DILocation(line: 18, column: 37, scope: !7)
!61 = !DILocation(line: 18, column: 23, scope: !7)
!62 = !DILocation(line: 18, column: 35, scope: !7)
!63 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_data_0", scope: !64, file: !1, line: 20, type: !10)
!64 = distinct !DILexicalBlock(scope: !7, file: !1, line: 19, column: 3)
!65 = !DILocation(line: 20, column: 11, scope: !64)
!66 = !DILocation(line: 20, column: 107, scope: !64)
!67 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_i_0", scope: !68, file: !1, line: 22, type: !15)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 21, column: 5)
!69 = !DILocation(line: 22, column: 11, scope: !68)
!70 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_n_0", scope: !68, file: !1, line: 23, type: !15)
!71 = !DILocation(line: 23, column: 11, scope: !68)
!72 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_intVariable_0", scope: !68, file: !1, line: 24, type: !15)
!73 = !DILocation(line: 24, column: 11, scope: !68)
!74 = !DILocation(line: 25, column: 18, scope: !75)
!75 = distinct !DILexicalBlock(scope: !68, file: !1, line: 25, column: 11)
!76 = !DILocation(line: 25, column: 11, scope: !75)
!77 = !DILocation(line: 25, column: 172, scope: !75)
!78 = !DILocation(line: 25, column: 11, scope: !68)
!79 = !DILocation(line: 27, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 27, column: 13)
!81 = distinct !DILexicalBlock(scope: !75, file: !1, line: 26, column: 7)
!82 = !DILocation(line: 27, column: 84, scope: !80)
!83 = !DILocation(line: 27, column: 13, scope: !81)
!84 = !DILocation(line: 29, column: 92, scope: !85)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 28, column: 9)
!86 = !DILocation(line: 30, column: 11, scope: !85)
!87 = !DILocation(line: 30, column: 18, scope: !85)
!88 = !DILocation(line: 31, column: 24, scope: !85)
!89 = !DILocation(line: 31, column: 11, scope: !85)
!90 = !DILocation(line: 32, column: 9, scope: !85)
!91 = !DILocation(line: 34, column: 7, scope: !81)
!92 = !DILocation(line: 36, column: 5, scope: !68)
!93 = !DILabel(scope: !64, name: "CWE606_Unchecked_Loop_Condition__char_environment_67b_goodB2GSink_label_", file: !1, line: 37)
!94 = !DILocation(line: 37, column: 5, scope: !64)
!95 = !DILocation(line: 42, column: 3, scope: !64)
!96 = !DILabel(scope: !7, name: "goodB2G_label_", file: !1, line: 43)
!97 = !DILocation(line: 43, column: 3, scope: !7)
!98 = !DILocation(line: 48, column: 1, scope: !7)
