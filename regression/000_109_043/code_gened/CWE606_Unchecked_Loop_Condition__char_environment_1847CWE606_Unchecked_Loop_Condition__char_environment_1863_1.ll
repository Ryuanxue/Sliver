; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_1847CWE606_Unchecked_Loop_Condition__char_environment_1863_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_1847CWE606_Unchecked_Loop_Condition__char_environment_1863_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_1847CWE606_Unchecked_Loop_Condition__char_environment_1863_1(i8* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_environment_0, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_dataBuffer_0, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_data_0, align 8, !dbg !28
  br label %CWE606_Unchecked_Loop_Condition__char_environment_18_bad_source, !dbg !29

CWE606_Unchecked_Loop_Condition__char_environment_18_bad_source: ; preds = %entry
  call void @llvm.dbg.label(metadata !30), !dbg !31
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !37
  %1 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_data_0, align 8, !dbg !38
  %call = call i64 @strlen(i8* %1) #6, !dbg !39
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_dataLen_0, align 8, !dbg !37
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !40
  store i8* %call1, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_environment_0.addr, align 8, !dbg !41
  %2 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_environment_0.addr, align 8, !dbg !42
  %cmp = icmp ne i8* %2, null, !dbg !44
  br i1 %cmp, label %if.then, label %if.end, !dbg !45

if.then:                                          ; preds = %CWE606_Unchecked_Loop_Condition__char_environment_18_bad_source
  %3 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_data_0, align 8, !dbg !46
  %4 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_dataLen_0, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !49
  %5 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_environment_0.addr, align 8, !dbg !50
  %6 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_dataLen_0, align 8, !dbg !51
  %sub = sub i64 100, %6, !dbg !52
  %sub2 = sub i64 %sub, 1, !dbg !53
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !54
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then, %CWE606_Unchecked_Loop_Condition__char_environment_18_bad_source
  br label %CWE606_Unchecked_Loop_Condition__char_environment_18_bad_sink, !dbg !56

CWE606_Unchecked_Loop_Condition__char_environment_18_bad_sink: ; preds = %if.end
  call void @llvm.dbg.label(metadata !57), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_i_0, metadata !59, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_n_0, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_intVariable_0, metadata !64, metadata !DIExpression()), !dbg !65
  %7 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_data_0, align 8, !dbg !66
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_n_0) #7, !dbg !68
  %cmp5 = icmp eq i32 %call4, 1, !dbg !69
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !70

if.then6:                                         ; preds = %CWE606_Unchecked_Loop_Condition__char_environment_18_bad_sink
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_intVariable_0, align 4, !dbg !71
  %8 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !73
  %9 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_n_0, align 4, !dbg !74
  call void %8(i32 %9), !dbg !73
  %10 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_intVariable_0, align 4, !dbg !75
  call void @printIntLine(i32 %10), !dbg !76
  br label %if.end7, !dbg !77

if.end7:                                          ; preds = %if.then6, %CWE606_Unchecked_Loop_Condition__char_environment_18_bad_sink
  br label %CWE606_Unchecked_Loop_Condition__char_environment_18_bad_label_, !dbg !78

CWE606_Unchecked_Loop_Condition__char_environment_18_bad_label_: ; preds = %if.end7
  call void @llvm.dbg.label(metadata !79), !dbg !80
  ret void, !dbg !81
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #5

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_1847CWE606_Unchecked_Loop_Condition__char_environment_1863_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_043/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_1847CWE606_Unchecked_Loop_Condition__char_environment_1863_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 123, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 203, scope: !7)
!20 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_data_0", scope: !7, file: !1, line: 5, type: !10)
!21 = !DILocation(line: 5, column: 9, scope: !7)
!22 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_dataBuffer_0", scope: !7, file: !1, line: 6, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 8, scope: !7)
!27 = !DILocation(line: 7, column: 70, scope: !7)
!28 = !DILocation(line: 7, column: 68, scope: !7)
!29 = !DILocation(line: 7, column: 3, scope: !7)
!30 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_18_bad_source", file: !1, line: 8)
!31 = !DILocation(line: 8, column: 3, scope: !7)
!32 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_dataLen_0", scope: !33, file: !1, line: 10, type: !34)
!33 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 3)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 10, column: 12, scope: !33)
!38 = !DILocation(line: 10, column: 89, scope: !33)
!39 = !DILocation(line: 10, column: 82, scope: !33)
!40 = !DILocation(line: 11, column: 79, scope: !33)
!41 = !DILocation(line: 11, column: 77, scope: !33)
!42 = !DILocation(line: 12, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !33, file: !1, line: 12, column: 9)
!44 = !DILocation(line: 12, column: 81, scope: !43)
!45 = !DILocation(line: 12, column: 9, scope: !33)
!46 = !DILocation(line: 14, column: 15, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 13, column: 5)
!48 = !DILocation(line: 14, column: 82, scope: !47)
!49 = !DILocation(line: 14, column: 80, scope: !47)
!50 = !DILocation(line: 14, column: 151, scope: !47)
!51 = !DILocation(line: 14, column: 231, scope: !47)
!52 = !DILocation(line: 14, column: 229, scope: !47)
!53 = !DILocation(line: 14, column: 300, scope: !47)
!54 = !DILocation(line: 14, column: 7, scope: !47)
!55 = !DILocation(line: 15, column: 5, scope: !47)
!56 = !DILocation(line: 19, column: 3, scope: !7)
!57 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_18_bad_sink", file: !1, line: 20)
!58 = !DILocation(line: 20, column: 3, scope: !7)
!59 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_i_0", scope: !60, file: !1, line: 22, type: !15)
!60 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 3)
!61 = !DILocation(line: 22, column: 9, scope: !60)
!62 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_n_0", scope: !60, file: !1, line: 23, type: !15)
!63 = !DILocation(line: 23, column: 9, scope: !60)
!64 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_18_bad_intVariable_0", scope: !60, file: !1, line: 24, type: !15)
!65 = !DILocation(line: 24, column: 9, scope: !60)
!66 = !DILocation(line: 25, column: 16, scope: !67)
!67 = distinct !DILexicalBlock(scope: !60, file: !1, line: 25, column: 9)
!68 = !DILocation(line: 25, column: 9, scope: !67)
!69 = !DILocation(line: 25, column: 152, scope: !67)
!70 = !DILocation(line: 25, column: 9, scope: !60)
!71 = !DILocation(line: 27, column: 79, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !1, line: 26, column: 5)
!73 = !DILocation(line: 28, column: 7, scope: !72)
!74 = !DILocation(line: 28, column: 14, scope: !72)
!75 = !DILocation(line: 29, column: 20, scope: !72)
!76 = !DILocation(line: 29, column: 7, scope: !72)
!77 = !DILocation(line: 30, column: 5, scope: !72)
!78 = !DILocation(line: 32, column: 3, scope: !60)
!79 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_18_bad_label_", file: !1, line: 34)
!80 = !DILocation(line: 34, column: 3, scope: !7)
!81 = !DILocation(line: 39, column: 1, scope: !7)
