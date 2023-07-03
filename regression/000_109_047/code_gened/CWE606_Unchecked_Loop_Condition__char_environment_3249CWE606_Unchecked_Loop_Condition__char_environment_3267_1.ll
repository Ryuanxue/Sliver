; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_3249CWE606_Unchecked_Loop_Condition__char_environment_3267_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_3249CWE606_Unchecked_Loop_Condition__char_environment_3267_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_3249CWE606_Unchecked_Loop_Condition__char_environment_3267_1(i8* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataPtr1_0 = alloca i8**, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataPtr2_0 = alloca i8**, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_1 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_2 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_environment_0, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i8*** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataPtr1_0, metadata !22, metadata !DIExpression()), !dbg !24
  store i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_0, i8*** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataPtr1_0, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata i8*** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataPtr2_0, metadata !25, metadata !DIExpression()), !dbg !26
  store i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_0, i8*** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataPtr2_0, align 8, !dbg !26
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataBuffer_0, metadata !27, metadata !DIExpression()), !dbg !31
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataBuffer_0 to i8*, !dbg !31
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !31
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataBuffer_0, i64 0, i64 0, !dbg !32
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_0, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_1, metadata !34, metadata !DIExpression()), !dbg !36
  %1 = load i8**, i8*** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataPtr1_0, align 8, !dbg !37
  %2 = load i8*, i8** %1, align 8, !dbg !38
  store i8* %2, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_1, align 8, !dbg !36
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataLen_0, metadata !39, metadata !DIExpression()), !dbg !44
  %3 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_1, align 8, !dbg !45
  %call = call i64 @strlen(i8* %3) #6, !dbg !46
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataLen_0, align 8, !dbg !44
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !47
  store i8* %call1, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_environment_0.addr, align 8, !dbg !48
  %4 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_environment_0.addr, align 8, !dbg !49
  %cmp = icmp ne i8* %4, null, !dbg !51
  br i1 %cmp, label %if.then, label %if.end, !dbg !52

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_1, align 8, !dbg !53
  %6 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataLen_0, align 8, !dbg !55
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 %6, !dbg !56
  %7 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_environment_0.addr, align 8, !dbg !57
  %8 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataLen_0, align 8, !dbg !58
  %sub = sub i64 100, %8, !dbg !59
  %sub2 = sub i64 %sub, 1, !dbg !60
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %7, i64 %sub2) #7, !dbg !61
  br label %if.end, !dbg !62

if.end:                                           ; preds = %if.then, %entry
  %9 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_1, align 8, !dbg !63
  %10 = load i8**, i8*** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataPtr1_0, align 8, !dbg !64
  store i8* %9, i8** %10, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_2, metadata !66, metadata !DIExpression()), !dbg !68
  %11 = load i8**, i8*** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataPtr2_0, align 8, !dbg !69
  %12 = load i8*, i8** %11, align 8, !dbg !70
  store i8* %12, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_2, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_i_0, metadata !71, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_n_0, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_intVariable_0, metadata !76, metadata !DIExpression()), !dbg !77
  %13 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_2, align 8, !dbg !78
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_n_0) #7, !dbg !80
  %cmp5 = icmp eq i32 %call4, 1, !dbg !81
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !82

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_intVariable_0, align 4, !dbg !83
  %14 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !85
  %15 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_n_0, align 4, !dbg !86
  call void %14(i32 %15), !dbg !85
  %16 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_intVariable_0, align 4, !dbg !87
  call void @printIntLine(i32 %16), !dbg !88
  br label %if.end7, !dbg !89

if.end7:                                          ; preds = %if.then6, %if.end
  br label %CWE606_Unchecked_Loop_Condition__char_environment_32_bad_label_, !dbg !90

CWE606_Unchecked_Loop_Condition__char_environment_32_bad_label_: ; preds = %if.end7
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
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_3249CWE606_Unchecked_Loop_Condition__char_environment_3267_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_047/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_3249CWE606_Unchecked_Loop_Condition__char_environment_3267_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 123, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 203, scope: !7)
!20 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_0", scope: !7, file: !1, line: 5, type: !10)
!21 = !DILocation(line: 5, column: 9, scope: !7)
!22 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataPtr1_0", scope: !7, file: !1, line: 6, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!24 = !DILocation(line: 6, column: 10, scope: !7)
!25 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataPtr2_0", scope: !7, file: !1, line: 7, type: !23)
!26 = !DILocation(line: 7, column: 10, scope: !7)
!27 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataBuffer_0", scope: !7, file: !1, line: 8, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 100)
!31 = !DILocation(line: 8, column: 8, scope: !7)
!32 = !DILocation(line: 9, column: 70, scope: !7)
!33 = !DILocation(line: 9, column: 68, scope: !7)
!34 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_1", scope: !35, file: !1, line: 11, type: !10)
!35 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 3)
!36 = !DILocation(line: 11, column: 11, scope: !35)
!37 = !DILocation(line: 11, column: 79, scope: !35)
!38 = !DILocation(line: 11, column: 78, scope: !35)
!39 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_dataLen_0", scope: !40, file: !1, line: 13, type: !41)
!40 = distinct !DILexicalBlock(scope: !35, file: !1, line: 12, column: 5)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 46, baseType: !43)
!42 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!43 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!44 = !DILocation(line: 13, column: 14, scope: !40)
!45 = !DILocation(line: 13, column: 91, scope: !40)
!46 = !DILocation(line: 13, column: 84, scope: !40)
!47 = !DILocation(line: 14, column: 81, scope: !40)
!48 = !DILocation(line: 14, column: 79, scope: !40)
!49 = !DILocation(line: 15, column: 11, scope: !50)
!50 = distinct !DILexicalBlock(scope: !40, file: !1, line: 15, column: 11)
!51 = !DILocation(line: 15, column: 83, scope: !50)
!52 = !DILocation(line: 15, column: 11, scope: !40)
!53 = !DILocation(line: 17, column: 17, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 16, column: 7)
!55 = !DILocation(line: 17, column: 84, scope: !54)
!56 = !DILocation(line: 17, column: 82, scope: !54)
!57 = !DILocation(line: 17, column: 153, scope: !54)
!58 = !DILocation(line: 17, column: 233, scope: !54)
!59 = !DILocation(line: 17, column: 231, scope: !54)
!60 = !DILocation(line: 17, column: 302, scope: !54)
!61 = !DILocation(line: 17, column: 9, scope: !54)
!62 = !DILocation(line: 18, column: 7, scope: !54)
!63 = !DILocation(line: 21, column: 77, scope: !35)
!64 = !DILocation(line: 21, column: 6, scope: !35)
!65 = !DILocation(line: 21, column: 75, scope: !35)
!66 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_data_2", scope: !67, file: !1, line: 24, type: !10)
!67 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 3)
!68 = !DILocation(line: 24, column: 11, scope: !67)
!69 = !DILocation(line: 24, column: 79, scope: !67)
!70 = !DILocation(line: 24, column: 78, scope: !67)
!71 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_i_0", scope: !72, file: !1, line: 26, type: !15)
!72 = distinct !DILexicalBlock(scope: !67, file: !1, line: 25, column: 5)
!73 = !DILocation(line: 26, column: 11, scope: !72)
!74 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_n_0", scope: !72, file: !1, line: 27, type: !15)
!75 = !DILocation(line: 27, column: 11, scope: !72)
!76 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_32_bad_intVariable_0", scope: !72, file: !1, line: 28, type: !15)
!77 = !DILocation(line: 28, column: 11, scope: !72)
!78 = !DILocation(line: 29, column: 18, scope: !79)
!79 = distinct !DILexicalBlock(scope: !72, file: !1, line: 29, column: 11)
!80 = !DILocation(line: 29, column: 11, scope: !79)
!81 = !DILocation(line: 29, column: 154, scope: !79)
!82 = !DILocation(line: 29, column: 11, scope: !72)
!83 = !DILocation(line: 31, column: 81, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 30, column: 7)
!85 = !DILocation(line: 32, column: 9, scope: !84)
!86 = !DILocation(line: 32, column: 16, scope: !84)
!87 = !DILocation(line: 33, column: 22, scope: !84)
!88 = !DILocation(line: 33, column: 9, scope: !84)
!89 = !DILocation(line: 34, column: 7, scope: !84)
!90 = !DILocation(line: 37, column: 3, scope: !67)
!91 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_32_bad_label_", file: !1, line: 38)
!92 = !DILocation(line: 38, column: 3, scope: !7)
!93 = !DILocation(line: 43, column: 1, scope: !7)
