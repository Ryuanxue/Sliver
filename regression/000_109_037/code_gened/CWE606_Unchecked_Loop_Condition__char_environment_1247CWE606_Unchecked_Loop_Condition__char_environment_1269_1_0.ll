; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_1247CWE606_Unchecked_Loop_Condition__char_environment_1269_1_0.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_1247CWE606_Unchecked_Loop_Condition__char_environment_1269_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_1247CWE606_Unchecked_Loop_Condition__char_environment_1269_1_0(i8* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataBuffer_0, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0, align 8, !dbg !28
  %1 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0, align 8, !dbg !29
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #5, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0, metadata !33, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0, metadata !38, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0, metadata !40, metadata !DIExpression()), !dbg !41
  %2 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0, align 8, !dbg !42
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0) #5, !dbg !44
  %cmp = icmp eq i32 %call1, 1, !dbg !45
  br i1 %cmp, label %if.then, label %if.end6, !dbg !46

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0, align 4, !dbg !47
  %cmp2 = icmp slt i32 %3, 10000, !dbg !50
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !51

if.then3:                                         ; preds = %if.then
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0, align 4, !dbg !52
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0, align 4, !dbg !54
  br label %for.cond, !dbg !56

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0, align 4, !dbg !57
  %5 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0, align 4, !dbg !59
  %cmp4 = icmp slt i32 %4, %5, !dbg !60
  br i1 %cmp4, label %for.body, label %for.end, !dbg !61

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0, align 4, !dbg !62
  %inc = add nsw i32 %6, 1, !dbg !62
  store i32 %inc, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0, align 4, !dbg !62
  br label %for.inc, !dbg !64

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0, align 4, !dbg !65
  %inc5 = add nsw i32 %7, 1, !dbg !65
  store i32 %inc5, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0, align 4, !dbg !65
  br label %for.cond, !dbg !66, !llvm.loop !67

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0, align 4, !dbg !70
  call void @printIntLine(i32 %8), !dbg !71
  br label %if.end, !dbg !72

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end6, !dbg !73

if.end6:                                          ; preds = %if.end, %entry
  br label %CWE606_Unchecked_Loop_Condition__char_environment_12_bad_label_, !dbg !74

CWE606_Unchecked_Loop_Condition__char_environment_12_bad_label_: ; preds = %if.end6
  call void @llvm.dbg.label(metadata !75), !dbg !76
  ret void, !dbg !77
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_1247CWE606_Unchecked_Loop_Condition__char_environment_1269_1_0.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_037/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_1247CWE606_Unchecked_Loop_Condition__char_environment_1269_1_0", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 125, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 205, scope: !7)
!20 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0", scope: !7, file: !1, line: 5, type: !10)
!21 = !DILocation(line: 5, column: 9, scope: !7)
!22 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataBuffer_0", scope: !7, file: !1, line: 6, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 8, scope: !7)
!27 = !DILocation(line: 7, column: 70, scope: !7)
!28 = !DILocation(line: 7, column: 68, scope: !7)
!29 = !DILocation(line: 22, column: 12, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 21, column: 3)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 7)
!32 = !DILocation(line: 22, column: 5, scope: !30)
!33 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0", scope: !34, file: !1, line: 43, type: !15)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 42, column: 5)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 41, column: 3)
!36 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 7)
!37 = !DILocation(line: 43, column: 11, scope: !34)
!38 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0", scope: !34, file: !1, line: 44, type: !15)
!39 = !DILocation(line: 44, column: 11, scope: !34)
!40 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0", scope: !34, file: !1, line: 45, type: !15)
!41 = !DILocation(line: 45, column: 11, scope: !34)
!42 = !DILocation(line: 46, column: 18, scope: !43)
!43 = distinct !DILexicalBlock(scope: !34, file: !1, line: 46, column: 11)
!44 = !DILocation(line: 46, column: 11, scope: !43)
!45 = !DILocation(line: 46, column: 154, scope: !43)
!46 = !DILocation(line: 46, column: 11, scope: !34)
!47 = !DILocation(line: 48, column: 13, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 48, column: 13)
!49 = distinct !DILexicalBlock(scope: !43, file: !1, line: 47, column: 7)
!50 = !DILocation(line: 48, column: 75, scope: !48)
!51 = !DILocation(line: 48, column: 13, scope: !49)
!52 = !DILocation(line: 50, column: 83, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !1, line: 49, column: 9)
!54 = !DILocation(line: 51, column: 78, scope: !55)
!55 = distinct !DILexicalBlock(scope: !53, file: !1, line: 51, column: 11)
!56 = !DILocation(line: 51, column: 16, scope: !55)
!57 = !DILocation(line: 51, column: 83, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 51, column: 11)
!59 = !DILocation(line: 51, column: 147, scope: !58)
!60 = !DILocation(line: 51, column: 145, scope: !58)
!61 = !DILocation(line: 51, column: 11, scope: !55)
!62 = !DILocation(line: 53, column: 84, scope: !63)
!63 = distinct !DILexicalBlock(scope: !58, file: !1, line: 52, column: 11)
!64 = !DILocation(line: 54, column: 11, scope: !63)
!65 = !DILocation(line: 51, column: 271, scope: !58)
!66 = !DILocation(line: 51, column: 11, scope: !58)
!67 = distinct !{!67, !61, !68, !69}
!68 = !DILocation(line: 54, column: 11, scope: !55)
!69 = !{!"llvm.loop.mustprogress"}
!70 = !DILocation(line: 56, column: 24, scope: !53)
!71 = !DILocation(line: 56, column: 11, scope: !53)
!72 = !DILocation(line: 57, column: 9, scope: !53)
!73 = !DILocation(line: 59, column: 7, scope: !49)
!74 = !DILocation(line: 25, column: 7, scope: !36)
!75 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_12_bad_label_", file: !1, line: 64)
!76 = !DILocation(line: 64, column: 3, scope: !7)
!77 = !DILocation(line: 69, column: 1, scope: !7)
