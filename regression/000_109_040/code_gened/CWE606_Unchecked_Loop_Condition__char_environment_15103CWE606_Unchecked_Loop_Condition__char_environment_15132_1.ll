; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_15103CWE606_Unchecked_Loop_Condition__char_environment_15132_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_15103CWE606_Unchecked_Loop_Condition__char_environment_15132_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_15103CWE606_Unchecked_Loop_Condition__char_environment_15132_1(i8* %_goodB2G1_environment_0, void (i32)* %opsink) #0 !dbg !7 {
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
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !29, metadata !DIExpression()), !dbg !34
  %1 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !35
  %call = call i64 @strlen(i8* %1) #6, !dbg !36
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !34
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !37
  store i8* %call1, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !38
  %2 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !39
  %cmp = icmp ne i8* %2, null, !dbg !41
  br i1 %cmp, label %if.then, label %if.end, !dbg !42

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !43
  %4 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !45
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !46
  %5 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !47
  %6 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !48
  %sub = sub i64 100, %6, !dbg !49
  %sub2 = sub i64 %sub, 1, !dbg !50
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !51
  br label %if.end, !dbg !52

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !53, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !58, metadata !DIExpression()), !dbg !59
  %7 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !60
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G1_n_0) #7, !dbg !62
  %cmp5 = icmp eq i32 %call4, 1, !dbg !63
  br i1 %cmp5, label %if.then6, label %if.end10, !dbg !64

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !65
  %cmp7 = icmp slt i32 %8, 10000, !dbg !68
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !69

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !70
  %9 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !72
  %10 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !73
  call void %9(i32 %10), !dbg !72
  %11 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !74
  call void @printIntLine(i32 %11), !dbg !75
  br label %if.end9, !dbg !76

if.end9:                                          ; preds = %if.then8, %if.then6
  br label %if.end10, !dbg !77

if.end10:                                         ; preds = %if.end9, %if.end
  br label %goodB2G1_label_, !dbg !78

goodB2G1_label_:                                  ; preds = %if.end10
  call void @llvm.dbg.label(metadata !79), !dbg !80
  ret void, !dbg !81
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_15103CWE606_Unchecked_Loop_Condition__char_environment_15132_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_040/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_15103CWE606_Unchecked_Loop_Condition__char_environment_15132_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G1_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 125, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 157, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !7, file: !1, line: 5, type: !10)
!21 = !DILocation(line: 5, column: 9, scope: !7)
!22 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !7, file: !1, line: 6, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 8, scope: !7)
!27 = !DILocation(line: 7, column: 22, scope: !7)
!28 = !DILocation(line: 7, column: 20, scope: !7)
!29 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !30, file: !1, line: 12, type: !31)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 11, column: 5)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 12, column: 14, scope: !30)
!35 = !DILocation(line: 12, column: 43, scope: !30)
!36 = !DILocation(line: 12, column: 36, scope: !30)
!37 = !DILocation(line: 13, column: 33, scope: !30)
!38 = !DILocation(line: 13, column: 31, scope: !30)
!39 = !DILocation(line: 14, column: 11, scope: !40)
!40 = distinct !DILexicalBlock(scope: !30, file: !1, line: 14, column: 11)
!41 = !DILocation(line: 14, column: 35, scope: !40)
!42 = !DILocation(line: 14, column: 11, scope: !30)
!43 = !DILocation(line: 16, column: 17, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 15, column: 7)
!45 = !DILocation(line: 16, column: 36, scope: !44)
!46 = !DILocation(line: 16, column: 34, scope: !44)
!47 = !DILocation(line: 16, column: 57, scope: !44)
!48 = !DILocation(line: 16, column: 89, scope: !44)
!49 = !DILocation(line: 16, column: 87, scope: !44)
!50 = !DILocation(line: 16, column: 110, scope: !44)
!51 = !DILocation(line: 16, column: 9, scope: !44)
!52 = !DILocation(line: 17, column: 7, scope: !44)
!53 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !54, file: !1, line: 36, type: !15)
!54 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 5)
!55 = !DILocation(line: 36, column: 11, scope: !54)
!56 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !54, file: !1, line: 37, type: !15)
!57 = !DILocation(line: 37, column: 11, scope: !54)
!58 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !54, file: !1, line: 38, type: !15)
!59 = !DILocation(line: 38, column: 11, scope: !54)
!60 = !DILocation(line: 39, column: 18, scope: !61)
!61 = distinct !DILexicalBlock(scope: !54, file: !1, line: 39, column: 11)
!62 = !DILocation(line: 39, column: 11, scope: !61)
!63 = !DILocation(line: 39, column: 58, scope: !61)
!64 = !DILocation(line: 39, column: 11, scope: !54)
!65 = !DILocation(line: 41, column: 13, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 41, column: 13)
!67 = distinct !DILexicalBlock(scope: !61, file: !1, line: 40, column: 7)
!68 = !DILocation(line: 41, column: 27, scope: !66)
!69 = !DILocation(line: 41, column: 13, scope: !67)
!70 = !DILocation(line: 43, column: 35, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 42, column: 9)
!72 = !DILocation(line: 44, column: 11, scope: !71)
!73 = !DILocation(line: 44, column: 18, scope: !71)
!74 = !DILocation(line: 45, column: 24, scope: !71)
!75 = !DILocation(line: 45, column: 11, scope: !71)
!76 = !DILocation(line: 46, column: 9, scope: !71)
!77 = !DILocation(line: 48, column: 7, scope: !67)
!78 = !DILocation(line: 50, column: 5, scope: !54)
!79 = !DILabel(scope: !7, name: "goodB2G1_label_", file: !1, line: 55)
!80 = !DILocation(line: 55, column: 3, scope: !7)
!81 = !DILocation(line: 60, column: 1, scope: !7)
