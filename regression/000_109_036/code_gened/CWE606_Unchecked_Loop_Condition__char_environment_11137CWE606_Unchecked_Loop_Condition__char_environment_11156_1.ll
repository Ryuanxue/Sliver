; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_11137CWE606_Unchecked_Loop_Condition__char_environment_11156_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_11137CWE606_Unchecked_Loop_Condition__char_environment_11156_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_11137CWE606_Unchecked_Loop_Condition__char_environment_11156_1(i8* %_goodB2G2_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G2_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_data_0 = alloca i8*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodB2G2_i_0 = alloca i32, align 4
  %_goodB2G2_n_0 = alloca i32, align 4
  %_goodB2G2_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G2_environment_0, i8** %_goodB2G2_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G2_data_0, align 8, !dbg !28
  %call = call i32 (...) @globalReturnsTrue(), !dbg !29
  %tobool = icmp ne i32 %call, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end6, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %_goodB2G2_data_0, align 8, !dbg !39
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call1, i64* %_goodB2G2_dataLen_0, align 8, !dbg !38
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !41
  store i8* %call2, i8** %_goodB2G2_environment_0.addr, align 8, !dbg !42
  %2 = load i8*, i8** %_goodB2G2_environment_0.addr, align 8, !dbg !43
  %cmp = icmp ne i8* %2, null, !dbg !45
  br i1 %cmp, label %if.then3, label %if.end, !dbg !46

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G2_data_0, align 8, !dbg !47
  %4 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !50
  %5 = load i8*, i8** %_goodB2G2_environment_0.addr, align 8, !dbg !51
  %6 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !52
  %sub = sub i64 100, %6, !dbg !53
  %sub4 = sub i64 %sub, 1, !dbg !54
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #7, !dbg !55
  br label %if.end, !dbg !56

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !57

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 (...) @globalReturnsTrue(), !dbg !58
  %tobool8 = icmp ne i32 %call7, 0, !dbg !58
  br i1 %tobool8, label %if.then9, label %if.end17, !dbg !60

if.then9:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !61, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_n_0, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_intVariable_0, metadata !67, metadata !DIExpression()), !dbg !68
  %7 = load i8*, i8** %_goodB2G2_data_0, align 8, !dbg !69
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G2_n_0) #7, !dbg !71
  %cmp11 = icmp eq i32 %call10, 1, !dbg !72
  br i1 %cmp11, label %if.then12, label %if.end16, !dbg !73

if.then12:                                        ; preds = %if.then9
  %8 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !74
  %cmp13 = icmp slt i32 %8, 10000, !dbg !77
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !78

if.then14:                                        ; preds = %if.then12
  store i32 0, i32* %_goodB2G2_intVariable_0, align 4, !dbg !79
  %9 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !81
  %10 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !82
  call void %9(i32 %10), !dbg !81
  %11 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !83
  call void @printIntLine(i32 %11), !dbg !84
  br label %if.end15, !dbg !85

if.end15:                                         ; preds = %if.then14, %if.then12
  br label %if.end16, !dbg !86

if.end16:                                         ; preds = %if.end15, %if.then9
  br label %if.end17, !dbg !87

if.end17:                                         ; preds = %if.end16, %if.end6
  br label %goodB2G2_label_, !dbg !88

goodB2G2_label_:                                  ; preds = %if.end17
  call void @llvm.dbg.label(metadata !89), !dbg !90
  ret void, !dbg !91
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @globalReturnsTrue(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #5

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
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_11137CWE606_Unchecked_Loop_Condition__char_environment_11156_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_036/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_11137CWE606_Unchecked_Loop_Condition__char_environment_11156_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G2_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 125, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 157, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G2_data_0", scope: !7, file: !1, line: 5, type: !10)
!21 = !DILocation(line: 5, column: 9, scope: !7)
!22 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !7, file: !1, line: 6, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 8, scope: !7)
!27 = !DILocation(line: 7, column: 22, scope: !7)
!28 = !DILocation(line: 7, column: 20, scope: !7)
!29 = !DILocation(line: 8, column: 7, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 7)
!31 = !DILocation(line: 8, column: 7, scope: !7)
!32 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !33, file: !1, line: 11, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 5)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 9, column: 3)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 11, column: 14, scope: !33)
!39 = !DILocation(line: 11, column: 43, scope: !33)
!40 = !DILocation(line: 11, column: 36, scope: !33)
!41 = !DILocation(line: 12, column: 33, scope: !33)
!42 = !DILocation(line: 12, column: 31, scope: !33)
!43 = !DILocation(line: 13, column: 11, scope: !44)
!44 = distinct !DILexicalBlock(scope: !33, file: !1, line: 13, column: 11)
!45 = !DILocation(line: 13, column: 35, scope: !44)
!46 = !DILocation(line: 13, column: 11, scope: !33)
!47 = !DILocation(line: 15, column: 17, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 14, column: 7)
!49 = !DILocation(line: 15, column: 36, scope: !48)
!50 = !DILocation(line: 15, column: 34, scope: !48)
!51 = !DILocation(line: 15, column: 57, scope: !48)
!52 = !DILocation(line: 15, column: 89, scope: !48)
!53 = !DILocation(line: 15, column: 87, scope: !48)
!54 = !DILocation(line: 15, column: 110, scope: !48)
!55 = !DILocation(line: 15, column: 9, scope: !48)
!56 = !DILocation(line: 16, column: 7, scope: !48)
!57 = !DILocation(line: 19, column: 3, scope: !34)
!58 = !DILocation(line: 21, column: 7, scope: !59)
!59 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 7)
!60 = !DILocation(line: 21, column: 7, scope: !7)
!61 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !62, file: !1, line: 24, type: !15)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 23, column: 5)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 22, column: 3)
!64 = !DILocation(line: 24, column: 11, scope: !62)
!65 = !DILocalVariable(name: "_goodB2G2_n_0", scope: !62, file: !1, line: 25, type: !15)
!66 = !DILocation(line: 25, column: 11, scope: !62)
!67 = !DILocalVariable(name: "_goodB2G2_intVariable_0", scope: !62, file: !1, line: 26, type: !15)
!68 = !DILocation(line: 26, column: 11, scope: !62)
!69 = !DILocation(line: 27, column: 18, scope: !70)
!70 = distinct !DILexicalBlock(scope: !62, file: !1, line: 27, column: 11)
!71 = !DILocation(line: 27, column: 11, scope: !70)
!72 = !DILocation(line: 27, column: 58, scope: !70)
!73 = !DILocation(line: 27, column: 11, scope: !62)
!74 = !DILocation(line: 29, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 29, column: 13)
!76 = distinct !DILexicalBlock(scope: !70, file: !1, line: 28, column: 7)
!77 = !DILocation(line: 29, column: 27, scope: !75)
!78 = !DILocation(line: 29, column: 13, scope: !76)
!79 = !DILocation(line: 31, column: 35, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 30, column: 9)
!81 = !DILocation(line: 32, column: 11, scope: !80)
!82 = !DILocation(line: 32, column: 18, scope: !80)
!83 = !DILocation(line: 33, column: 24, scope: !80)
!84 = !DILocation(line: 33, column: 11, scope: !80)
!85 = !DILocation(line: 34, column: 9, scope: !80)
!86 = !DILocation(line: 36, column: 7, scope: !76)
!87 = !DILocation(line: 39, column: 3, scope: !63)
!88 = !DILocation(line: 21, column: 25, scope: !59)
!89 = !DILabel(scope: !7, name: "goodB2G2_label_", file: !1, line: 41)
!90 = !DILocation(line: 41, column: 3, scope: !7)
!91 = !DILocation(line: 46, column: 1, scope: !7)
