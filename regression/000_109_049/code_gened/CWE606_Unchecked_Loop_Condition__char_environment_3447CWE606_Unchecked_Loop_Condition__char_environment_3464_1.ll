; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_3447CWE606_Unchecked_Loop_Condition__char_environment_3464_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_3447CWE606_Unchecked_Loop_Condition__char_environment_3464_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_3447CWE606_Unchecked_Loop_Condition__char_environment_3464_1(i8* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_myUnion_0 = alloca %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_data_1 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_environment_0, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_myUnion_0, metadata !22, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_dataBuffer_0, metadata !30, metadata !DIExpression()), !dbg !34
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_dataBuffer_0 to i8*, !dbg !34
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !34
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_dataBuffer_0, i64 0, i64 0, !dbg !35
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_data_0, align 8, !dbg !36
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_dataLen_0, metadata !37, metadata !DIExpression()), !dbg !42
  %1 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_data_0, align 8, !dbg !43
  %call = call i64 @strlen(i8* %1) #6, !dbg !44
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_dataLen_0, align 8, !dbg !42
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !45
  store i8* %call1, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_environment_0.addr, align 8, !dbg !46
  %2 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_environment_0.addr, align 8, !dbg !47
  %cmp = icmp ne i8* %2, null, !dbg !49
  br i1 %cmp, label %if.then, label %if.end, !dbg !50

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_data_0, align 8, !dbg !51
  %4 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_dataLen_0, align 8, !dbg !53
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !54
  %5 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_environment_0.addr, align 8, !dbg !55
  %6 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_dataLen_0, align 8, !dbg !56
  %sub = sub i64 100, %6, !dbg !57
  %sub2 = sub i64 %sub, 1, !dbg !58
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !59
  br label %if.end, !dbg !60

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_data_0, align 8, !dbg !61
  %unionFirst = bitcast %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_myUnion_0 to i8**, !dbg !62
  store i8* %7, i8** %unionFirst, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_data_1, metadata !64, metadata !DIExpression()), !dbg !66
  %unionSecond = bitcast %union.CWE606_Unchecked_Loop_Condition__char_environment_34_unionType* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_myUnion_0 to i8**, !dbg !67
  %8 = load i8*, i8** %unionSecond, align 8, !dbg !67
  store i8* %8, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_data_1, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_i_0, metadata !68, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_n_0, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_intVariable_0, metadata !73, metadata !DIExpression()), !dbg !74
  %9 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_data_1, align 8, !dbg !75
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_n_0) #7, !dbg !77
  %cmp5 = icmp eq i32 %call4, 1, !dbg !78
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !79

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_intVariable_0, align 4, !dbg !80
  %10 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !82
  %11 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_n_0, align 4, !dbg !83
  call void %10(i32 %11), !dbg !82
  %12 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_intVariable_0, align 4, !dbg !84
  call void @printIntLine(i32 %12), !dbg !85
  br label %if.end7, !dbg !86

if.end7:                                          ; preds = %if.then6, %if.end
  br label %CWE606_Unchecked_Loop_Condition__char_environment_34_bad_label_, !dbg !87

CWE606_Unchecked_Loop_Condition__char_environment_34_bad_label_: ; preds = %if.end7
  call void @llvm.dbg.label(metadata !88), !dbg !89
  ret void, !dbg !90
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_3447CWE606_Unchecked_Loop_Condition__char_environment_3464_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_049/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_3447CWE606_Unchecked_Loop_Condition__char_environment_3464_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 123, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 203, scope: !7)
!20 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_data_0", scope: !7, file: !1, line: 5, type: !10)
!21 = !DILocation(line: 5, column: 9, scope: !7)
!22 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_myUnion_0", scope: !7, file: !1, line: 6, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE606_Unchecked_Loop_Condition__char_environment_34_unionType", file: !24, line: 9, baseType: !25)
!24 = !DIFile(filename: "../source_code/_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_049/code_gened")
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !24, line: 5, size: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !25, file: !24, line: 7, baseType: !10, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !25, file: !24, line: 8, baseType: !10, size: 64)
!29 = !DILocation(line: 6, column: 66, scope: !7)
!30 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_dataBuffer_0", scope: !7, file: !1, line: 7, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 100)
!34 = !DILocation(line: 7, column: 8, scope: !7)
!35 = !DILocation(line: 8, column: 70, scope: !7)
!36 = !DILocation(line: 8, column: 68, scope: !7)
!37 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_dataLen_0", scope: !38, file: !1, line: 10, type: !39)
!38 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 3)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !40, line: 46, baseType: !41)
!40 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!41 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !DILocation(line: 10, column: 12, scope: !38)
!43 = !DILocation(line: 10, column: 89, scope: !38)
!44 = !DILocation(line: 10, column: 82, scope: !38)
!45 = !DILocation(line: 11, column: 79, scope: !38)
!46 = !DILocation(line: 11, column: 77, scope: !38)
!47 = !DILocation(line: 12, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !38, file: !1, line: 12, column: 9)
!49 = !DILocation(line: 12, column: 81, scope: !48)
!50 = !DILocation(line: 12, column: 9, scope: !38)
!51 = !DILocation(line: 14, column: 15, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 13, column: 5)
!53 = !DILocation(line: 14, column: 82, scope: !52)
!54 = !DILocation(line: 14, column: 80, scope: !52)
!55 = !DILocation(line: 14, column: 151, scope: !52)
!56 = !DILocation(line: 14, column: 231, scope: !52)
!57 = !DILocation(line: 14, column: 229, scope: !52)
!58 = !DILocation(line: 14, column: 300, scope: !52)
!59 = !DILocation(line: 14, column: 7, scope: !52)
!60 = !DILocation(line: 15, column: 5, scope: !52)
!61 = !DILocation(line: 18, column: 84, scope: !7)
!62 = !DILocation(line: 18, column: 71, scope: !7)
!63 = !DILocation(line: 18, column: 82, scope: !7)
!64 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_data_1", scope: !65, file: !1, line: 20, type: !10)
!65 = distinct !DILexicalBlock(scope: !7, file: !1, line: 19, column: 3)
!66 = !DILocation(line: 20, column: 11, scope: !65)
!67 = !DILocation(line: 20, column: 146, scope: !65)
!68 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_i_0", scope: !69, file: !1, line: 22, type: !15)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 21, column: 5)
!70 = !DILocation(line: 22, column: 11, scope: !69)
!71 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_n_0", scope: !69, file: !1, line: 23, type: !15)
!72 = !DILocation(line: 23, column: 11, scope: !69)
!73 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_34_bad_intVariable_0", scope: !69, file: !1, line: 24, type: !15)
!74 = !DILocation(line: 24, column: 11, scope: !69)
!75 = !DILocation(line: 25, column: 18, scope: !76)
!76 = distinct !DILexicalBlock(scope: !69, file: !1, line: 25, column: 11)
!77 = !DILocation(line: 25, column: 11, scope: !76)
!78 = !DILocation(line: 25, column: 154, scope: !76)
!79 = !DILocation(line: 25, column: 11, scope: !69)
!80 = !DILocation(line: 27, column: 81, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !1, line: 26, column: 7)
!82 = !DILocation(line: 28, column: 9, scope: !81)
!83 = !DILocation(line: 28, column: 16, scope: !81)
!84 = !DILocation(line: 29, column: 22, scope: !81)
!85 = !DILocation(line: 29, column: 9, scope: !81)
!86 = !DILocation(line: 30, column: 7, scope: !81)
!87 = !DILocation(line: 33, column: 3, scope: !65)
!88 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_34_bad_label_", file: !1, line: 34)
!89 = !DILocation(line: 34, column: 3, scope: !7)
!90 = !DILocation(line: 39, column: 1, scope: !7)
