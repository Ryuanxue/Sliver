; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_66b.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_66b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_66b_badSink(i8** %dataArray) #0 !dbg !7 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i8** %data, metadata !15, metadata !DIExpression()), !dbg !16
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !17
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !17
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !17
  store i8* %1, i8** %data, align 8, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %n, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !24, metadata !DIExpression()), !dbg !25
  %2 = load i8*, i8** %data, align 8, !dbg !26
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !28
  %cmp = icmp eq i32 %call, 1, !dbg !29
  br i1 %cmp, label %if.then, label %if.end, !dbg !30

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !31
  store i32 0, i32* %i, align 4, !dbg !33
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !36
  %4 = load i32, i32* %n, align 4, !dbg !38
  %cmp1 = icmp slt i32 %3, %4, !dbg !39
  br i1 %cmp1, label %for.body, label %for.end, !dbg !40

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !41
  %inc = add nsw i32 %5, 1, !dbg !41
  store i32 %inc, i32* %intVariable, align 4, !dbg !41
  br label %for.inc, !dbg !43

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !44
  %inc2 = add nsw i32 %6, 1, !dbg !44
  store i32 %inc2, i32* %i, align 4, !dbg !44
  br label %for.cond, !dbg !45, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !49
  call void @printIntLine(i32 %7), !dbg !50
  br label %if.end, !dbg !51

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !52
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_66b_goodG2BSink(i8** %dataArray) #0 !dbg !53 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i8** %data, metadata !56, metadata !DIExpression()), !dbg !57
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !58
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !58
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !58
  store i8* %1, i8** %data, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %i, metadata !59, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %n, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !64, metadata !DIExpression()), !dbg !65
  %2 = load i8*, i8** %data, align 8, !dbg !66
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !68
  %cmp = icmp eq i32 %call, 1, !dbg !69
  br i1 %cmp, label %if.then, label %if.end, !dbg !70

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !71
  store i32 0, i32* %i, align 4, !dbg !73
  br label %for.cond, !dbg !75

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !76
  %4 = load i32, i32* %n, align 4, !dbg !78
  %cmp1 = icmp slt i32 %3, %4, !dbg !79
  br i1 %cmp1, label %for.body, label %for.end, !dbg !80

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !81
  %inc = add nsw i32 %5, 1, !dbg !81
  store i32 %inc, i32* %intVariable, align 4, !dbg !81
  br label %for.inc, !dbg !83

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !84
  %inc2 = add nsw i32 %6, 1, !dbg !84
  store i32 %inc2, i32* %i, align 4, !dbg !84
  br label %for.cond, !dbg !85, !llvm.loop !86

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !88
  call void @printIntLine(i32 %7), !dbg !89
  br label %if.end, !dbg !90

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !91
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink(i8** %dataArray) #0 !dbg !92 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i8** %data, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !97
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !97
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !97
  store i8* %1, i8** %data, align 8, !dbg !96
  call void @llvm.dbg.declare(metadata i32* %i, metadata !98, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %n, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !103, metadata !DIExpression()), !dbg !104
  %2 = load i8*, i8** %data, align 8, !dbg !105
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !107
  %cmp = icmp eq i32 %call, 1, !dbg !108
  br i1 %cmp, label %if.then, label %if.end5, !dbg !109

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !110
  %cmp1 = icmp slt i32 %3, 10000, !dbg !113
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !114

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !115
  store i32 0, i32* %i, align 4, !dbg !117
  br label %for.cond, !dbg !119

for.cond:                                         ; preds = %for.inc, %if.then2
  %4 = load i32, i32* %i, align 4, !dbg !120
  %5 = load i32, i32* %n, align 4, !dbg !122
  %cmp3 = icmp slt i32 %4, %5, !dbg !123
  br i1 %cmp3, label %for.body, label %for.end, !dbg !124

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !125
  %inc = add nsw i32 %6, 1, !dbg !125
  store i32 %inc, i32* %intVariable, align 4, !dbg !125
  br label %for.inc, !dbg !127

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !128
  %inc4 = add nsw i32 %7, 1, !dbg !128
  store i32 %inc4, i32* %i, align 4, !dbg !128
  br label %for.cond, !dbg !129, !llvm.loop !130

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !132
  call void @printIntLine(i32 %8), !dbg !133
  br label %if.end, !dbg !134

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !135

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !136
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_66b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_064/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_66b_badSink", scope: !1, file: !1, line: 36, type: !8, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocalVariable(name: "dataArray", arg: 1, scope: !7, file: !1, line: 36, type: !10)
!14 = !DILocation(line: 36, column: 75, scope: !7)
!15 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 39, type: !11)
!16 = !DILocation(line: 39, column: 12, scope: !7)
!17 = !DILocation(line: 39, column: 19, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 41, type: !20)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 40, column: 5)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DILocation(line: 41, column: 13, scope: !19)
!22 = !DILocalVariable(name: "n", scope: !19, file: !1, line: 41, type: !20)
!23 = !DILocation(line: 41, column: 16, scope: !19)
!24 = !DILocalVariable(name: "intVariable", scope: !19, file: !1, line: 41, type: !20)
!25 = !DILocation(line: 41, column: 19, scope: !19)
!26 = !DILocation(line: 42, column: 20, scope: !27)
!27 = distinct !DILexicalBlock(scope: !19, file: !1, line: 42, column: 13)
!28 = !DILocation(line: 42, column: 13, scope: !27)
!29 = !DILocation(line: 42, column: 36, scope: !27)
!30 = !DILocation(line: 42, column: 13, scope: !19)
!31 = !DILocation(line: 45, column: 25, scope: !32)
!32 = distinct !DILexicalBlock(scope: !27, file: !1, line: 43, column: 9)
!33 = !DILocation(line: 46, column: 20, scope: !34)
!34 = distinct !DILexicalBlock(scope: !32, file: !1, line: 46, column: 13)
!35 = !DILocation(line: 46, column: 18, scope: !34)
!36 = !DILocation(line: 46, column: 25, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 46, column: 13)
!38 = !DILocation(line: 46, column: 29, scope: !37)
!39 = !DILocation(line: 46, column: 27, scope: !37)
!40 = !DILocation(line: 46, column: 13, scope: !34)
!41 = !DILocation(line: 49, column: 28, scope: !42)
!42 = distinct !DILexicalBlock(scope: !37, file: !1, line: 47, column: 13)
!43 = !DILocation(line: 50, column: 13, scope: !42)
!44 = !DILocation(line: 46, column: 33, scope: !37)
!45 = !DILocation(line: 46, column: 13, scope: !37)
!46 = distinct !{!46, !40, !47, !48}
!47 = !DILocation(line: 50, column: 13, scope: !34)
!48 = !{!"llvm.loop.mustprogress"}
!49 = !DILocation(line: 51, column: 26, scope: !32)
!50 = !DILocation(line: 51, column: 13, scope: !32)
!51 = !DILocation(line: 52, column: 9, scope: !32)
!52 = !DILocation(line: 54, column: 1, scope: !7)
!53 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_66b_goodG2BSink", scope: !1, file: !1, line: 61, type: !8, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!54 = !DILocalVariable(name: "dataArray", arg: 1, scope: !53, file: !1, line: 61, type: !10)
!55 = !DILocation(line: 61, column: 79, scope: !53)
!56 = !DILocalVariable(name: "data", scope: !53, file: !1, line: 63, type: !11)
!57 = !DILocation(line: 63, column: 12, scope: !53)
!58 = !DILocation(line: 63, column: 19, scope: !53)
!59 = !DILocalVariable(name: "i", scope: !60, file: !1, line: 65, type: !20)
!60 = distinct !DILexicalBlock(scope: !53, file: !1, line: 64, column: 5)
!61 = !DILocation(line: 65, column: 13, scope: !60)
!62 = !DILocalVariable(name: "n", scope: !60, file: !1, line: 65, type: !20)
!63 = !DILocation(line: 65, column: 16, scope: !60)
!64 = !DILocalVariable(name: "intVariable", scope: !60, file: !1, line: 65, type: !20)
!65 = !DILocation(line: 65, column: 19, scope: !60)
!66 = !DILocation(line: 66, column: 20, scope: !67)
!67 = distinct !DILexicalBlock(scope: !60, file: !1, line: 66, column: 13)
!68 = !DILocation(line: 66, column: 13, scope: !67)
!69 = !DILocation(line: 66, column: 36, scope: !67)
!70 = !DILocation(line: 66, column: 13, scope: !60)
!71 = !DILocation(line: 69, column: 25, scope: !72)
!72 = distinct !DILexicalBlock(scope: !67, file: !1, line: 67, column: 9)
!73 = !DILocation(line: 70, column: 20, scope: !74)
!74 = distinct !DILexicalBlock(scope: !72, file: !1, line: 70, column: 13)
!75 = !DILocation(line: 70, column: 18, scope: !74)
!76 = !DILocation(line: 70, column: 25, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !1, line: 70, column: 13)
!78 = !DILocation(line: 70, column: 29, scope: !77)
!79 = !DILocation(line: 70, column: 27, scope: !77)
!80 = !DILocation(line: 70, column: 13, scope: !74)
!81 = !DILocation(line: 73, column: 28, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 71, column: 13)
!83 = !DILocation(line: 74, column: 13, scope: !82)
!84 = !DILocation(line: 70, column: 33, scope: !77)
!85 = !DILocation(line: 70, column: 13, scope: !77)
!86 = distinct !{!86, !80, !87, !48}
!87 = !DILocation(line: 74, column: 13, scope: !74)
!88 = !DILocation(line: 75, column: 26, scope: !72)
!89 = !DILocation(line: 75, column: 13, scope: !72)
!90 = !DILocation(line: 76, column: 9, scope: !72)
!91 = !DILocation(line: 78, column: 1, scope: !53)
!92 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_66b_goodB2GSink", scope: !1, file: !1, line: 81, type: !8, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!93 = !DILocalVariable(name: "dataArray", arg: 1, scope: !92, file: !1, line: 81, type: !10)
!94 = !DILocation(line: 81, column: 79, scope: !92)
!95 = !DILocalVariable(name: "data", scope: !92, file: !1, line: 83, type: !11)
!96 = !DILocation(line: 83, column: 12, scope: !92)
!97 = !DILocation(line: 83, column: 19, scope: !92)
!98 = !DILocalVariable(name: "i", scope: !99, file: !1, line: 85, type: !20)
!99 = distinct !DILexicalBlock(scope: !92, file: !1, line: 84, column: 5)
!100 = !DILocation(line: 85, column: 13, scope: !99)
!101 = !DILocalVariable(name: "n", scope: !99, file: !1, line: 85, type: !20)
!102 = !DILocation(line: 85, column: 16, scope: !99)
!103 = !DILocalVariable(name: "intVariable", scope: !99, file: !1, line: 85, type: !20)
!104 = !DILocation(line: 85, column: 19, scope: !99)
!105 = !DILocation(line: 86, column: 20, scope: !106)
!106 = distinct !DILexicalBlock(scope: !99, file: !1, line: 86, column: 13)
!107 = !DILocation(line: 86, column: 13, scope: !106)
!108 = !DILocation(line: 86, column: 36, scope: !106)
!109 = !DILocation(line: 86, column: 13, scope: !99)
!110 = !DILocation(line: 89, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 89, column: 17)
!112 = distinct !DILexicalBlock(scope: !106, file: !1, line: 87, column: 9)
!113 = !DILocation(line: 89, column: 19, scope: !111)
!114 = !DILocation(line: 89, column: 17, scope: !112)
!115 = !DILocation(line: 91, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 90, column: 13)
!117 = !DILocation(line: 92, column: 24, scope: !118)
!118 = distinct !DILexicalBlock(scope: !116, file: !1, line: 92, column: 17)
!119 = !DILocation(line: 92, column: 22, scope: !118)
!120 = !DILocation(line: 92, column: 29, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 92, column: 17)
!122 = !DILocation(line: 92, column: 33, scope: !121)
!123 = !DILocation(line: 92, column: 31, scope: !121)
!124 = !DILocation(line: 92, column: 17, scope: !118)
!125 = !DILocation(line: 95, column: 32, scope: !126)
!126 = distinct !DILexicalBlock(scope: !121, file: !1, line: 93, column: 17)
!127 = !DILocation(line: 96, column: 17, scope: !126)
!128 = !DILocation(line: 92, column: 37, scope: !121)
!129 = !DILocation(line: 92, column: 17, scope: !121)
!130 = distinct !{!130, !124, !131, !48}
!131 = !DILocation(line: 96, column: 17, scope: !118)
!132 = !DILocation(line: 97, column: 30, scope: !116)
!133 = !DILocation(line: 97, column: 17, scope: !116)
!134 = !DILocation(line: 98, column: 13, scope: !116)
!135 = !DILocation(line: 99, column: 9, scope: !112)
!136 = !DILocation(line: 101, column: 1, scope: !92)
