; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_65b.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_65b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_65b_badSink(i8* %data) #0 !dbg !7 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !12, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %n, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !20, metadata !DIExpression()), !dbg !21
  %0 = load i8*, i8** %data.addr, align 8, !dbg !22
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !24
  %cmp = icmp eq i32 %call, 1, !dbg !25
  br i1 %cmp, label %if.then, label %if.end, !dbg !26

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !27
  store i32 0, i32* %i, align 4, !dbg !29
  br label %for.cond, !dbg !31

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !32
  %2 = load i32, i32* %n, align 4, !dbg !34
  %cmp1 = icmp slt i32 %1, %2, !dbg !35
  br i1 %cmp1, label %for.body, label %for.end, !dbg !36

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !37
  %inc = add nsw i32 %3, 1, !dbg !37
  store i32 %inc, i32* %intVariable, align 4, !dbg !37
  br label %for.inc, !dbg !39

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !40
  %inc2 = add nsw i32 %4, 1, !dbg !40
  store i32 %inc2, i32* %i, align 4, !dbg !40
  br label %for.cond, !dbg !41, !llvm.loop !42

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !45
  call void @printIntLine(i32 %5), !dbg !46
  br label %if.end, !dbg !47

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink(i8* %data) #0 !dbg !49 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !50, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata i32* %i, metadata !52, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %n, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !57, metadata !DIExpression()), !dbg !58
  %0 = load i8*, i8** %data.addr, align 8, !dbg !59
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !61
  %cmp = icmp eq i32 %call, 1, !dbg !62
  br i1 %cmp, label %if.then, label %if.end, !dbg !63

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !64
  store i32 0, i32* %i, align 4, !dbg !66
  br label %for.cond, !dbg !68

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4, !dbg !69
  %2 = load i32, i32* %n, align 4, !dbg !71
  %cmp1 = icmp slt i32 %1, %2, !dbg !72
  br i1 %cmp1, label %for.body, label %for.end, !dbg !73

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %intVariable, align 4, !dbg !74
  %inc = add nsw i32 %3, 1, !dbg !74
  store i32 %inc, i32* %intVariable, align 4, !dbg !74
  br label %for.inc, !dbg !76

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !77
  %inc2 = add nsw i32 %4, 1, !dbg !77
  store i32 %inc2, i32* %i, align 4, !dbg !77
  br label %for.cond, !dbg !78, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !81
  call void @printIntLine(i32 %5), !dbg !82
  br label %if.end, !dbg !83

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !84
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_65b_goodB2GSink(i8* %data) #0 !dbg !85 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata i32* %i, metadata !88, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %n, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !93, metadata !DIExpression()), !dbg !94
  %0 = load i8*, i8** %data.addr, align 8, !dbg !95
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !97
  %cmp = icmp eq i32 %call, 1, !dbg !98
  br i1 %cmp, label %if.then, label %if.end5, !dbg !99

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n, align 4, !dbg !100
  %cmp1 = icmp slt i32 %1, 10000, !dbg !103
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !104

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !105
  store i32 0, i32* %i, align 4, !dbg !107
  br label %for.cond, !dbg !109

for.cond:                                         ; preds = %for.inc, %if.then2
  %2 = load i32, i32* %i, align 4, !dbg !110
  %3 = load i32, i32* %n, align 4, !dbg !112
  %cmp3 = icmp slt i32 %2, %3, !dbg !113
  br i1 %cmp3, label %for.body, label %for.end, !dbg !114

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !115
  %inc = add nsw i32 %4, 1, !dbg !115
  store i32 %inc, i32* %intVariable, align 4, !dbg !115
  br label %for.inc, !dbg !117

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !118
  %inc4 = add nsw i32 %5, 1, !dbg !118
  store i32 %inc4, i32* %i, align 4, !dbg !118
  br label %for.cond, !dbg !119, !llvm.loop !120

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !122
  call void @printIntLine(i32 %6), !dbg !123
  br label %if.end, !dbg !124

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !125

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !126
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_65b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_063/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_65b_badSink", scope: !1, file: !1, line: 36, type: !8, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DILocalVariable(name: "data", arg: 1, scope: !7, file: !1, line: 36, type: !10)
!13 = !DILocation(line: 36, column: 75, scope: !7)
!14 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 39, type: !16)
!15 = distinct !DILexicalBlock(scope: !7, file: !1, line: 38, column: 5)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DILocation(line: 39, column: 13, scope: !15)
!18 = !DILocalVariable(name: "n", scope: !15, file: !1, line: 39, type: !16)
!19 = !DILocation(line: 39, column: 16, scope: !15)
!20 = !DILocalVariable(name: "intVariable", scope: !15, file: !1, line: 39, type: !16)
!21 = !DILocation(line: 39, column: 19, scope: !15)
!22 = !DILocation(line: 40, column: 20, scope: !23)
!23 = distinct !DILexicalBlock(scope: !15, file: !1, line: 40, column: 13)
!24 = !DILocation(line: 40, column: 13, scope: !23)
!25 = !DILocation(line: 40, column: 36, scope: !23)
!26 = !DILocation(line: 40, column: 13, scope: !15)
!27 = !DILocation(line: 43, column: 25, scope: !28)
!28 = distinct !DILexicalBlock(scope: !23, file: !1, line: 41, column: 9)
!29 = !DILocation(line: 44, column: 20, scope: !30)
!30 = distinct !DILexicalBlock(scope: !28, file: !1, line: 44, column: 13)
!31 = !DILocation(line: 44, column: 18, scope: !30)
!32 = !DILocation(line: 44, column: 25, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 44, column: 13)
!34 = !DILocation(line: 44, column: 29, scope: !33)
!35 = !DILocation(line: 44, column: 27, scope: !33)
!36 = !DILocation(line: 44, column: 13, scope: !30)
!37 = !DILocation(line: 47, column: 28, scope: !38)
!38 = distinct !DILexicalBlock(scope: !33, file: !1, line: 45, column: 13)
!39 = !DILocation(line: 48, column: 13, scope: !38)
!40 = !DILocation(line: 44, column: 33, scope: !33)
!41 = !DILocation(line: 44, column: 13, scope: !33)
!42 = distinct !{!42, !36, !43, !44}
!43 = !DILocation(line: 48, column: 13, scope: !30)
!44 = !{!"llvm.loop.mustprogress"}
!45 = !DILocation(line: 49, column: 26, scope: !28)
!46 = !DILocation(line: 49, column: 13, scope: !28)
!47 = !DILocation(line: 50, column: 9, scope: !28)
!48 = !DILocation(line: 52, column: 1, scope: !7)
!49 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_65b_goodG2BSink", scope: !1, file: !1, line: 59, type: !8, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!50 = !DILocalVariable(name: "data", arg: 1, scope: !49, file: !1, line: 59, type: !10)
!51 = !DILocation(line: 59, column: 79, scope: !49)
!52 = !DILocalVariable(name: "i", scope: !53, file: !1, line: 62, type: !16)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 61, column: 5)
!54 = !DILocation(line: 62, column: 13, scope: !53)
!55 = !DILocalVariable(name: "n", scope: !53, file: !1, line: 62, type: !16)
!56 = !DILocation(line: 62, column: 16, scope: !53)
!57 = !DILocalVariable(name: "intVariable", scope: !53, file: !1, line: 62, type: !16)
!58 = !DILocation(line: 62, column: 19, scope: !53)
!59 = !DILocation(line: 63, column: 20, scope: !60)
!60 = distinct !DILexicalBlock(scope: !53, file: !1, line: 63, column: 13)
!61 = !DILocation(line: 63, column: 13, scope: !60)
!62 = !DILocation(line: 63, column: 36, scope: !60)
!63 = !DILocation(line: 63, column: 13, scope: !53)
!64 = !DILocation(line: 66, column: 25, scope: !65)
!65 = distinct !DILexicalBlock(scope: !60, file: !1, line: 64, column: 9)
!66 = !DILocation(line: 67, column: 20, scope: !67)
!67 = distinct !DILexicalBlock(scope: !65, file: !1, line: 67, column: 13)
!68 = !DILocation(line: 67, column: 18, scope: !67)
!69 = !DILocation(line: 67, column: 25, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 67, column: 13)
!71 = !DILocation(line: 67, column: 29, scope: !70)
!72 = !DILocation(line: 67, column: 27, scope: !70)
!73 = !DILocation(line: 67, column: 13, scope: !67)
!74 = !DILocation(line: 70, column: 28, scope: !75)
!75 = distinct !DILexicalBlock(scope: !70, file: !1, line: 68, column: 13)
!76 = !DILocation(line: 71, column: 13, scope: !75)
!77 = !DILocation(line: 67, column: 33, scope: !70)
!78 = !DILocation(line: 67, column: 13, scope: !70)
!79 = distinct !{!79, !73, !80, !44}
!80 = !DILocation(line: 71, column: 13, scope: !67)
!81 = !DILocation(line: 72, column: 26, scope: !65)
!82 = !DILocation(line: 72, column: 13, scope: !65)
!83 = !DILocation(line: 73, column: 9, scope: !65)
!84 = !DILocation(line: 75, column: 1, scope: !49)
!85 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_65b_goodB2GSink", scope: !1, file: !1, line: 78, type: !8, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!86 = !DILocalVariable(name: "data", arg: 1, scope: !85, file: !1, line: 78, type: !10)
!87 = !DILocation(line: 78, column: 79, scope: !85)
!88 = !DILocalVariable(name: "i", scope: !89, file: !1, line: 81, type: !16)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 80, column: 5)
!90 = !DILocation(line: 81, column: 13, scope: !89)
!91 = !DILocalVariable(name: "n", scope: !89, file: !1, line: 81, type: !16)
!92 = !DILocation(line: 81, column: 16, scope: !89)
!93 = !DILocalVariable(name: "intVariable", scope: !89, file: !1, line: 81, type: !16)
!94 = !DILocation(line: 81, column: 19, scope: !89)
!95 = !DILocation(line: 82, column: 20, scope: !96)
!96 = distinct !DILexicalBlock(scope: !89, file: !1, line: 82, column: 13)
!97 = !DILocation(line: 82, column: 13, scope: !96)
!98 = !DILocation(line: 82, column: 36, scope: !96)
!99 = !DILocation(line: 82, column: 13, scope: !89)
!100 = !DILocation(line: 85, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 85, column: 17)
!102 = distinct !DILexicalBlock(scope: !96, file: !1, line: 83, column: 9)
!103 = !DILocation(line: 85, column: 19, scope: !101)
!104 = !DILocation(line: 85, column: 17, scope: !102)
!105 = !DILocation(line: 87, column: 29, scope: !106)
!106 = distinct !DILexicalBlock(scope: !101, file: !1, line: 86, column: 13)
!107 = !DILocation(line: 88, column: 24, scope: !108)
!108 = distinct !DILexicalBlock(scope: !106, file: !1, line: 88, column: 17)
!109 = !DILocation(line: 88, column: 22, scope: !108)
!110 = !DILocation(line: 88, column: 29, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 88, column: 17)
!112 = !DILocation(line: 88, column: 33, scope: !111)
!113 = !DILocation(line: 88, column: 31, scope: !111)
!114 = !DILocation(line: 88, column: 17, scope: !108)
!115 = !DILocation(line: 91, column: 32, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 89, column: 17)
!117 = !DILocation(line: 92, column: 17, scope: !116)
!118 = !DILocation(line: 88, column: 37, scope: !111)
!119 = !DILocation(line: 88, column: 17, scope: !111)
!120 = distinct !{!120, !114, !121, !44}
!121 = !DILocation(line: 92, column: 17, scope: !108)
!122 = !DILocation(line: 93, column: 30, scope: !106)
!123 = !DILocation(line: 93, column: 17, scope: !106)
!124 = !DILocation(line: 94, column: 13, scope: !106)
!125 = !DILocation(line: 95, column: 9, scope: !102)
!126 = !DILocation(line: 97, column: 1, scope: !85)
