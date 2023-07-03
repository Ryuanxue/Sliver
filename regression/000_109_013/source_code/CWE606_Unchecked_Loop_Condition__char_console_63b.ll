; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_63b.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_63b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_63b_badSink(i8** %dataPtr) #0 !dbg !7 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i8** %data, metadata !15, metadata !DIExpression()), !dbg !16
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !17
  %1 = load i8*, i8** %0, align 8, !dbg !18
  store i8* %1, i8** %data, align 8, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %n, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !25, metadata !DIExpression()), !dbg !26
  %2 = load i8*, i8** %data, align 8, !dbg !27
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !29
  %cmp = icmp eq i32 %call, 1, !dbg !30
  br i1 %cmp, label %if.then, label %if.end, !dbg !31

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !32
  store i32 0, i32* %i, align 4, !dbg !34
  br label %for.cond, !dbg !36

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !37
  %4 = load i32, i32* %n, align 4, !dbg !39
  %cmp1 = icmp slt i32 %3, %4, !dbg !40
  br i1 %cmp1, label %for.body, label %for.end, !dbg !41

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !42
  %inc = add nsw i32 %5, 1, !dbg !42
  store i32 %inc, i32* %intVariable, align 4, !dbg !42
  br label %for.inc, !dbg !44

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !45
  %inc2 = add nsw i32 %6, 1, !dbg !45
  store i32 %inc2, i32* %i, align 4, !dbg !45
  br label %for.cond, !dbg !46, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !50
  call void @printIntLine(i32 %7), !dbg !51
  br label %if.end, !dbg !52

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_63b_goodG2BSink(i8** %dataPtr) #0 !dbg !54 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !59
  %1 = load i8*, i8** %0, align 8, !dbg !60
  store i8* %1, i8** %data, align 8, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %i, metadata !61, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %n, metadata !64, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !66, metadata !DIExpression()), !dbg !67
  %2 = load i8*, i8** %data, align 8, !dbg !68
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !70
  %cmp = icmp eq i32 %call, 1, !dbg !71
  br i1 %cmp, label %if.then, label %if.end, !dbg !72

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !73
  store i32 0, i32* %i, align 4, !dbg !75
  br label %for.cond, !dbg !77

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !78
  %4 = load i32, i32* %n, align 4, !dbg !80
  %cmp1 = icmp slt i32 %3, %4, !dbg !81
  br i1 %cmp1, label %for.body, label %for.end, !dbg !82

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !83
  %inc = add nsw i32 %5, 1, !dbg !83
  store i32 %inc, i32* %intVariable, align 4, !dbg !83
  br label %for.inc, !dbg !85

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !86
  %inc2 = add nsw i32 %6, 1, !dbg !86
  store i32 %inc2, i32* %i, align 4, !dbg !86
  br label %for.cond, !dbg !87, !llvm.loop !88

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !90
  call void @printIntLine(i32 %7), !dbg !91
  br label %if.end, !dbg !92

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !93
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_63b_goodB2GSink(i8** %dataPtr) #0 !dbg !94 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i8** %data, metadata !97, metadata !DIExpression()), !dbg !98
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !99
  %1 = load i8*, i8** %0, align 8, !dbg !100
  store i8* %1, i8** %data, align 8, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %i, metadata !101, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %n, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !106, metadata !DIExpression()), !dbg !107
  %2 = load i8*, i8** %data, align 8, !dbg !108
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !110
  %cmp = icmp eq i32 %call, 1, !dbg !111
  br i1 %cmp, label %if.then, label %if.end5, !dbg !112

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %n, align 4, !dbg !113
  %cmp1 = icmp slt i32 %3, 10000, !dbg !116
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !117

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !118
  store i32 0, i32* %i, align 4, !dbg !120
  br label %for.cond, !dbg !122

for.cond:                                         ; preds = %for.inc, %if.then2
  %4 = load i32, i32* %i, align 4, !dbg !123
  %5 = load i32, i32* %n, align 4, !dbg !125
  %cmp3 = icmp slt i32 %4, %5, !dbg !126
  br i1 %cmp3, label %for.body, label %for.end, !dbg !127

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !128
  %inc = add nsw i32 %6, 1, !dbg !128
  store i32 %inc, i32* %intVariable, align 4, !dbg !128
  br label %for.inc, !dbg !130

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !131
  %inc4 = add nsw i32 %7, 1, !dbg !131
  store i32 %inc4, i32* %i, align 4, !dbg !131
  br label %for.cond, !dbg !132, !llvm.loop !133

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %intVariable, align 4, !dbg !135
  call void @printIntLine(i32 %8), !dbg !136
  br label %if.end, !dbg !137

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !138

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !139
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_63b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_013/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_63b_badSink", scope: !1, file: !1, line: 28, type: !8, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !7, file: !1, line: 28, type: !10)
!14 = !DILocation(line: 28, column: 73, scope: !7)
!15 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 30, type: !11)
!16 = !DILocation(line: 30, column: 12, scope: !7)
!17 = !DILocation(line: 30, column: 20, scope: !7)
!18 = !DILocation(line: 30, column: 19, scope: !7)
!19 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 32, type: !21)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 31, column: 5)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DILocation(line: 32, column: 13, scope: !20)
!23 = !DILocalVariable(name: "n", scope: !20, file: !1, line: 32, type: !21)
!24 = !DILocation(line: 32, column: 16, scope: !20)
!25 = !DILocalVariable(name: "intVariable", scope: !20, file: !1, line: 32, type: !21)
!26 = !DILocation(line: 32, column: 19, scope: !20)
!27 = !DILocation(line: 33, column: 20, scope: !28)
!28 = distinct !DILexicalBlock(scope: !20, file: !1, line: 33, column: 13)
!29 = !DILocation(line: 33, column: 13, scope: !28)
!30 = !DILocation(line: 33, column: 36, scope: !28)
!31 = !DILocation(line: 33, column: 13, scope: !20)
!32 = !DILocation(line: 36, column: 25, scope: !33)
!33 = distinct !DILexicalBlock(scope: !28, file: !1, line: 34, column: 9)
!34 = !DILocation(line: 37, column: 20, scope: !35)
!35 = distinct !DILexicalBlock(scope: !33, file: !1, line: 37, column: 13)
!36 = !DILocation(line: 37, column: 18, scope: !35)
!37 = !DILocation(line: 37, column: 25, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 37, column: 13)
!39 = !DILocation(line: 37, column: 29, scope: !38)
!40 = !DILocation(line: 37, column: 27, scope: !38)
!41 = !DILocation(line: 37, column: 13, scope: !35)
!42 = !DILocation(line: 40, column: 28, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !1, line: 38, column: 13)
!44 = !DILocation(line: 41, column: 13, scope: !43)
!45 = !DILocation(line: 37, column: 33, scope: !38)
!46 = !DILocation(line: 37, column: 13, scope: !38)
!47 = distinct !{!47, !41, !48, !49}
!48 = !DILocation(line: 41, column: 13, scope: !35)
!49 = !{!"llvm.loop.mustprogress"}
!50 = !DILocation(line: 42, column: 26, scope: !33)
!51 = !DILocation(line: 42, column: 13, scope: !33)
!52 = !DILocation(line: 43, column: 9, scope: !33)
!53 = !DILocation(line: 45, column: 1, scope: !7)
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_63b_goodG2BSink", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!55 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !54, file: !1, line: 52, type: !10)
!56 = !DILocation(line: 52, column: 77, scope: !54)
!57 = !DILocalVariable(name: "data", scope: !54, file: !1, line: 54, type: !11)
!58 = !DILocation(line: 54, column: 12, scope: !54)
!59 = !DILocation(line: 54, column: 20, scope: !54)
!60 = !DILocation(line: 54, column: 19, scope: !54)
!61 = !DILocalVariable(name: "i", scope: !62, file: !1, line: 56, type: !21)
!62 = distinct !DILexicalBlock(scope: !54, file: !1, line: 55, column: 5)
!63 = !DILocation(line: 56, column: 13, scope: !62)
!64 = !DILocalVariable(name: "n", scope: !62, file: !1, line: 56, type: !21)
!65 = !DILocation(line: 56, column: 16, scope: !62)
!66 = !DILocalVariable(name: "intVariable", scope: !62, file: !1, line: 56, type: !21)
!67 = !DILocation(line: 56, column: 19, scope: !62)
!68 = !DILocation(line: 57, column: 20, scope: !69)
!69 = distinct !DILexicalBlock(scope: !62, file: !1, line: 57, column: 13)
!70 = !DILocation(line: 57, column: 13, scope: !69)
!71 = !DILocation(line: 57, column: 36, scope: !69)
!72 = !DILocation(line: 57, column: 13, scope: !62)
!73 = !DILocation(line: 60, column: 25, scope: !74)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 58, column: 9)
!75 = !DILocation(line: 61, column: 20, scope: !76)
!76 = distinct !DILexicalBlock(scope: !74, file: !1, line: 61, column: 13)
!77 = !DILocation(line: 61, column: 18, scope: !76)
!78 = !DILocation(line: 61, column: 25, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !1, line: 61, column: 13)
!80 = !DILocation(line: 61, column: 29, scope: !79)
!81 = !DILocation(line: 61, column: 27, scope: !79)
!82 = !DILocation(line: 61, column: 13, scope: !76)
!83 = !DILocation(line: 64, column: 28, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 62, column: 13)
!85 = !DILocation(line: 65, column: 13, scope: !84)
!86 = !DILocation(line: 61, column: 33, scope: !79)
!87 = !DILocation(line: 61, column: 13, scope: !79)
!88 = distinct !{!88, !82, !89, !49}
!89 = !DILocation(line: 65, column: 13, scope: !76)
!90 = !DILocation(line: 66, column: 26, scope: !74)
!91 = !DILocation(line: 66, column: 13, scope: !74)
!92 = !DILocation(line: 67, column: 9, scope: !74)
!93 = !DILocation(line: 69, column: 1, scope: !54)
!94 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_63b_goodB2GSink", scope: !1, file: !1, line: 72, type: !8, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!95 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !94, file: !1, line: 72, type: !10)
!96 = !DILocation(line: 72, column: 77, scope: !94)
!97 = !DILocalVariable(name: "data", scope: !94, file: !1, line: 74, type: !11)
!98 = !DILocation(line: 74, column: 12, scope: !94)
!99 = !DILocation(line: 74, column: 20, scope: !94)
!100 = !DILocation(line: 74, column: 19, scope: !94)
!101 = !DILocalVariable(name: "i", scope: !102, file: !1, line: 76, type: !21)
!102 = distinct !DILexicalBlock(scope: !94, file: !1, line: 75, column: 5)
!103 = !DILocation(line: 76, column: 13, scope: !102)
!104 = !DILocalVariable(name: "n", scope: !102, file: !1, line: 76, type: !21)
!105 = !DILocation(line: 76, column: 16, scope: !102)
!106 = !DILocalVariable(name: "intVariable", scope: !102, file: !1, line: 76, type: !21)
!107 = !DILocation(line: 76, column: 19, scope: !102)
!108 = !DILocation(line: 77, column: 20, scope: !109)
!109 = distinct !DILexicalBlock(scope: !102, file: !1, line: 77, column: 13)
!110 = !DILocation(line: 77, column: 13, scope: !109)
!111 = !DILocation(line: 77, column: 36, scope: !109)
!112 = !DILocation(line: 77, column: 13, scope: !102)
!113 = !DILocation(line: 80, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 80, column: 17)
!115 = distinct !DILexicalBlock(scope: !109, file: !1, line: 78, column: 9)
!116 = !DILocation(line: 80, column: 19, scope: !114)
!117 = !DILocation(line: 80, column: 17, scope: !115)
!118 = !DILocation(line: 82, column: 29, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !1, line: 81, column: 13)
!120 = !DILocation(line: 83, column: 24, scope: !121)
!121 = distinct !DILexicalBlock(scope: !119, file: !1, line: 83, column: 17)
!122 = !DILocation(line: 83, column: 22, scope: !121)
!123 = !DILocation(line: 83, column: 29, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 83, column: 17)
!125 = !DILocation(line: 83, column: 33, scope: !124)
!126 = !DILocation(line: 83, column: 31, scope: !124)
!127 = !DILocation(line: 83, column: 17, scope: !121)
!128 = !DILocation(line: 86, column: 32, scope: !129)
!129 = distinct !DILexicalBlock(scope: !124, file: !1, line: 84, column: 17)
!130 = !DILocation(line: 87, column: 17, scope: !129)
!131 = !DILocation(line: 83, column: 37, scope: !124)
!132 = !DILocation(line: 83, column: 17, scope: !124)
!133 = distinct !{!133, !127, !134, !49}
!134 = !DILocation(line: 87, column: 17, scope: !121)
!135 = !DILocation(line: 88, column: 30, scope: !119)
!136 = !DILocation(line: 88, column: 17, scope: !119)
!137 = !DILocation(line: 89, column: 13, scope: !119)
!138 = !DILocation(line: 90, column: 9, scope: !115)
!139 = !DILocation(line: 92, column: 1, scope: !94)
