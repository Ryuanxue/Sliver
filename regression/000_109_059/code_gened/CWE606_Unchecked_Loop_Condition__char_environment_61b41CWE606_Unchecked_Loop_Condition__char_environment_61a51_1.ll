; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_61b41CWE606_Unchecked_Loop_Condition__char_environment_61a51_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_61b41CWE606_Unchecked_Loop_Condition__char_environment_61a51_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_61b41CWE606_Unchecked_Loop_Condition__char_environment_61a51_1(i8* %_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_environment_0, i8** %CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_return_, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_environment_0.addr = alloca i8*, align 8
  %CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_return_.addr = alloca i8**, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_environment_0, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_environment_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store i8** %CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_return_, i8*** %CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_return_.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_return_.addr, metadata !19, metadata !DIExpression()), !dbg !20
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_dataBuffer_0, metadata !25, metadata !DIExpression()), !dbg !29
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_dataBuffer_0 to i8*, !dbg !29
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !29
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_dataBuffer_0, i64 0, i64 0, !dbg !30
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0, align 8, !dbg !39
  %call = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_dataLen_0, align 8, !dbg !38
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !41
  store i8* %call1, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_environment_0.addr, align 8, !dbg !42
  %2 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_environment_0.addr, align 8, !dbg !43
  %cmp = icmp ne i8* %2, null, !dbg !45
  br i1 %cmp, label %if.then, label %if.end, !dbg !46

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0, align 8, !dbg !47
  %4 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !50
  %5 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_environment_0.addr, align 8, !dbg !51
  %6 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_dataLen_0, align 8, !dbg !52
  %sub = sub i64 100, %6, !dbg !53
  %sub2 = sub i64 %sub, 1, !dbg !54
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !55
  br label %if.end, !dbg !56

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0, align 8, !dbg !57
  %8 = bitcast i8* %7 to i8**, !dbg !57
  store i8** %8, i8*** %CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_return_.addr, align 8, !dbg !58
  br label %CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_label_, !dbg !59

CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_label_: ; preds = %if.end
  call void @llvm.dbg.label(metadata !60), !dbg !61
  %9 = load i8**, i8*** %CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_return_.addr, align 8, !dbg !62
  %10 = bitcast i8** %9 to i8*, !dbg !62
  store i8* %10, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_i_0, metadata !64, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_n_0, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_intVariable_0, metadata !69, metadata !DIExpression()), !dbg !70
  %11 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0, align 8, !dbg !71
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_n_0) #7, !dbg !73
  %cmp5 = icmp eq i32 %call4, 1, !dbg !74
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !75

if.then6:                                         ; preds = %CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_label_
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_intVariable_0, align 4, !dbg !76
  %12 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !78
  %13 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_n_0, align 4, !dbg !79
  call void %12(i32 %13), !dbg !78
  %14 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_intVariable_0, align 4, !dbg !80
  call void @printIntLine(i32 %14), !dbg !81
  br label %if.end7, !dbg !82

if.end7:                                          ; preds = %if.then6, %CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_label_
  br label %CWE606_Unchecked_Loop_Condition__char_environment_61_bad_label_, !dbg !83

CWE606_Unchecked_Loop_Condition__char_environment_61_bad_label_: ; preds = %if.end7
  call void @llvm.dbg.label(metadata !84), !dbg !85
  ret void, !dbg !86
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_61b41CWE606_Unchecked_Loop_Condition__char_environment_61a51_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_059/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_61b41CWE606_Unchecked_Loop_Condition__char_environment_61a51_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !13}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!18 = !DILocation(line: 3, column: 125, scope: !7)
!19 = !DILocalVariable(name: "CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_return_", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!20 = !DILocation(line: 3, column: 213, scope: !7)
!21 = !DILocalVariable(name: "opsink", arg: 3, scope: !7, file: !1, line: 3, type: !13)
!22 = !DILocation(line: 3, column: 293, scope: !7)
!23 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_data_0", scope: !7, file: !1, line: 5, type: !10)
!24 = !DILocation(line: 5, column: 9, scope: !7)
!25 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_dataBuffer_0", scope: !7, file: !1, line: 6, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 100)
!29 = !DILocation(line: 6, column: 8, scope: !7)
!30 = !DILocation(line: 7, column: 70, scope: !7)
!31 = !DILocation(line: 7, column: 68, scope: !7)
!32 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_dataLen_0", scope: !33, file: !1, line: 10, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 9, column: 5)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 3)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 10, column: 14, scope: !33)
!39 = !DILocation(line: 10, column: 98, scope: !33)
!40 = !DILocation(line: 10, column: 91, scope: !33)
!41 = !DILocation(line: 11, column: 88, scope: !33)
!42 = !DILocation(line: 11, column: 86, scope: !33)
!43 = !DILocation(line: 12, column: 11, scope: !44)
!44 = distinct !DILexicalBlock(scope: !33, file: !1, line: 12, column: 11)
!45 = !DILocation(line: 12, column: 90, scope: !44)
!46 = !DILocation(line: 12, column: 11, scope: !33)
!47 = !DILocation(line: 14, column: 17, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 13, column: 7)
!49 = !DILocation(line: 14, column: 84, scope: !48)
!50 = !DILocation(line: 14, column: 82, scope: !48)
!51 = !DILocation(line: 14, column: 160, scope: !48)
!52 = !DILocation(line: 14, column: 247, scope: !48)
!53 = !DILocation(line: 14, column: 245, scope: !48)
!54 = !DILocation(line: 14, column: 323, scope: !48)
!55 = !DILocation(line: 14, column: 9, scope: !48)
!56 = !DILocation(line: 15, column: 7, scope: !48)
!57 = !DILocation(line: 18, column: 79, scope: !34)
!58 = !DILocation(line: 18, column: 77, scope: !34)
!59 = !DILocation(line: 19, column: 5, scope: !34)
!60 = !DILabel(scope: !34, name: "CWE606_Unchecked_Loop_Condition__char_environment_61b_badSource_label_", file: !1, line: 20)
!61 = !DILocation(line: 20, column: 5, scope: !34)
!62 = !DILocation(line: 26, column: 70, scope: !7)
!63 = !DILocation(line: 26, column: 68, scope: !7)
!64 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_i_0", scope: !65, file: !1, line: 28, type: !16)
!65 = distinct !DILexicalBlock(scope: !7, file: !1, line: 27, column: 3)
!66 = !DILocation(line: 28, column: 9, scope: !65)
!67 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_n_0", scope: !65, file: !1, line: 29, type: !16)
!68 = !DILocation(line: 29, column: 9, scope: !65)
!69 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_61_bad_intVariable_0", scope: !65, file: !1, line: 30, type: !16)
!70 = !DILocation(line: 30, column: 9, scope: !65)
!71 = !DILocation(line: 31, column: 16, scope: !72)
!72 = distinct !DILexicalBlock(scope: !65, file: !1, line: 31, column: 9)
!73 = !DILocation(line: 31, column: 9, scope: !72)
!74 = !DILocation(line: 31, column: 152, scope: !72)
!75 = !DILocation(line: 31, column: 9, scope: !65)
!76 = !DILocation(line: 33, column: 79, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 32, column: 5)
!78 = !DILocation(line: 34, column: 7, scope: !77)
!79 = !DILocation(line: 34, column: 14, scope: !77)
!80 = !DILocation(line: 35, column: 20, scope: !77)
!81 = !DILocation(line: 35, column: 7, scope: !77)
!82 = !DILocation(line: 36, column: 5, scope: !77)
!83 = !DILocation(line: 38, column: 3, scope: !65)
!84 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_61_bad_label_", file: !1, line: 39)
!85 = !DILocation(line: 39, column: 3, scope: !7)
!86 = !DILocation(line: 44, column: 1, scope: !7)
