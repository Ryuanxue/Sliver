; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_68b.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_68b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CWE606_Unchecked_Loop_Condition__char_console_68_badData = external dso_local global i8*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@CWE606_Unchecked_Loop_Condition__char_console_68_goodG2BData = external dso_local global i8*, align 8
@CWE606_Unchecked_Loop_Condition__char_console_68_goodB2GData = external dso_local global i8*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_68b_badSink() #0 !dbg !7 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !10, metadata !DIExpression()), !dbg !13
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_console_68_badData, align 8, !dbg !14
  store i8* %0, i8** %data, align 8, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !15, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %n, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !21, metadata !DIExpression()), !dbg !22
  %1 = load i8*, i8** %data, align 8, !dbg !23
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !25
  %cmp = icmp eq i32 %call, 1, !dbg !26
  br i1 %cmp, label %if.then, label %if.end, !dbg !27

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !28
  store i32 0, i32* %i, align 4, !dbg !30
  br label %for.cond, !dbg !32

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !33
  %3 = load i32, i32* %n, align 4, !dbg !35
  %cmp1 = icmp slt i32 %2, %3, !dbg !36
  br i1 %cmp1, label %for.body, label %for.end, !dbg !37

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !38
  %inc = add nsw i32 %4, 1, !dbg !38
  store i32 %inc, i32* %intVariable, align 4, !dbg !38
  br label %for.inc, !dbg !40

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !41
  %inc2 = add nsw i32 %5, 1, !dbg !41
  store i32 %inc2, i32* %i, align 4, !dbg !41
  br label %for.cond, !dbg !42, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !46
  call void @printIntLine(i32 %6), !dbg !47
  br label %if.end, !dbg !48

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_68b_goodG2BSink() #0 !dbg !50 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !51, metadata !DIExpression()), !dbg !52
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_console_68_goodG2BData, align 8, !dbg !53
  store i8* %0, i8** %data, align 8, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %i, metadata !54, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %n, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !59, metadata !DIExpression()), !dbg !60
  %1 = load i8*, i8** %data, align 8, !dbg !61
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !63
  %cmp = icmp eq i32 %call, 1, !dbg !64
  br i1 %cmp, label %if.then, label %if.end, !dbg !65

if.then:                                          ; preds = %entry
  store i32 0, i32* %intVariable, align 4, !dbg !66
  store i32 0, i32* %i, align 4, !dbg !68
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4, !dbg !71
  %3 = load i32, i32* %n, align 4, !dbg !73
  %cmp1 = icmp slt i32 %2, %3, !dbg !74
  br i1 %cmp1, label %for.body, label %for.end, !dbg !75

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !76
  %inc = add nsw i32 %4, 1, !dbg !76
  store i32 %inc, i32* %intVariable, align 4, !dbg !76
  br label %for.inc, !dbg !78

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !79
  %inc2 = add nsw i32 %5, 1, !dbg !79
  store i32 %inc2, i32* %i, align 4, !dbg !79
  br label %for.cond, !dbg !80, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !83
  call void @printIntLine(i32 %6), !dbg !84
  br label %if.end, !dbg !85

if.end:                                           ; preds = %for.end, %entry
  ret void, !dbg !86
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_68b_goodB2GSink() #0 !dbg !87 {
entry:
  %data = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %data, metadata !88, metadata !DIExpression()), !dbg !89
  %0 = load i8*, i8** @CWE606_Unchecked_Loop_Condition__char_console_68_goodB2GData, align 8, !dbg !90
  store i8* %0, i8** %data, align 8, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %i, metadata !91, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %n, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !96, metadata !DIExpression()), !dbg !97
  %1 = load i8*, i8** %data, align 8, !dbg !98
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !100
  %cmp = icmp eq i32 %call, 1, !dbg !101
  br i1 %cmp, label %if.then, label %if.end5, !dbg !102

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %n, align 4, !dbg !103
  %cmp1 = icmp slt i32 %2, 10000, !dbg !106
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !107

if.then2:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !108
  store i32 0, i32* %i, align 4, !dbg !110
  br label %for.cond, !dbg !112

for.cond:                                         ; preds = %for.inc, %if.then2
  %3 = load i32, i32* %i, align 4, !dbg !113
  %4 = load i32, i32* %n, align 4, !dbg !115
  %cmp3 = icmp slt i32 %3, %4, !dbg !116
  br i1 %cmp3, label %for.body, label %for.end, !dbg !117

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !118
  %inc = add nsw i32 %5, 1, !dbg !118
  store i32 %inc, i32* %intVariable, align 4, !dbg !118
  br label %for.inc, !dbg !120

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !121
  %inc4 = add nsw i32 %6, 1, !dbg !121
  store i32 %inc4, i32* %i, align 4, !dbg !121
  br label %for.cond, !dbg !122, !llvm.loop !123

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !125
  call void @printIntLine(i32 %7), !dbg !126
  br label %if.end, !dbg !127

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end5, !dbg !128

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !129
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_68b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_018/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_68b_badSink", scope: !1, file: !1, line: 32, type: !8, scopeLine: 33, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 34, type: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocation(line: 34, column: 12, scope: !7)
!14 = !DILocation(line: 34, column: 19, scope: !7)
!15 = !DILocalVariable(name: "i", scope: !16, file: !1, line: 36, type: !17)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 5)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocation(line: 36, column: 13, scope: !16)
!19 = !DILocalVariable(name: "n", scope: !16, file: !1, line: 36, type: !17)
!20 = !DILocation(line: 36, column: 16, scope: !16)
!21 = !DILocalVariable(name: "intVariable", scope: !16, file: !1, line: 36, type: !17)
!22 = !DILocation(line: 36, column: 19, scope: !16)
!23 = !DILocation(line: 37, column: 20, scope: !24)
!24 = distinct !DILexicalBlock(scope: !16, file: !1, line: 37, column: 13)
!25 = !DILocation(line: 37, column: 13, scope: !24)
!26 = !DILocation(line: 37, column: 36, scope: !24)
!27 = !DILocation(line: 37, column: 13, scope: !16)
!28 = !DILocation(line: 40, column: 25, scope: !29)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 38, column: 9)
!30 = !DILocation(line: 41, column: 20, scope: !31)
!31 = distinct !DILexicalBlock(scope: !29, file: !1, line: 41, column: 13)
!32 = !DILocation(line: 41, column: 18, scope: !31)
!33 = !DILocation(line: 41, column: 25, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !1, line: 41, column: 13)
!35 = !DILocation(line: 41, column: 29, scope: !34)
!36 = !DILocation(line: 41, column: 27, scope: !34)
!37 = !DILocation(line: 41, column: 13, scope: !31)
!38 = !DILocation(line: 44, column: 28, scope: !39)
!39 = distinct !DILexicalBlock(scope: !34, file: !1, line: 42, column: 13)
!40 = !DILocation(line: 45, column: 13, scope: !39)
!41 = !DILocation(line: 41, column: 33, scope: !34)
!42 = !DILocation(line: 41, column: 13, scope: !34)
!43 = distinct !{!43, !37, !44, !45}
!44 = !DILocation(line: 45, column: 13, scope: !31)
!45 = !{!"llvm.loop.mustprogress"}
!46 = !DILocation(line: 46, column: 26, scope: !29)
!47 = !DILocation(line: 46, column: 13, scope: !29)
!48 = !DILocation(line: 47, column: 9, scope: !29)
!49 = !DILocation(line: 49, column: 1, scope: !7)
!50 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_68b_goodG2BSink", scope: !1, file: !1, line: 56, type: !8, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!51 = !DILocalVariable(name: "data", scope: !50, file: !1, line: 58, type: !11)
!52 = !DILocation(line: 58, column: 12, scope: !50)
!53 = !DILocation(line: 58, column: 19, scope: !50)
!54 = !DILocalVariable(name: "i", scope: !55, file: !1, line: 60, type: !17)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 59, column: 5)
!56 = !DILocation(line: 60, column: 13, scope: !55)
!57 = !DILocalVariable(name: "n", scope: !55, file: !1, line: 60, type: !17)
!58 = !DILocation(line: 60, column: 16, scope: !55)
!59 = !DILocalVariable(name: "intVariable", scope: !55, file: !1, line: 60, type: !17)
!60 = !DILocation(line: 60, column: 19, scope: !55)
!61 = !DILocation(line: 61, column: 20, scope: !62)
!62 = distinct !DILexicalBlock(scope: !55, file: !1, line: 61, column: 13)
!63 = !DILocation(line: 61, column: 13, scope: !62)
!64 = !DILocation(line: 61, column: 36, scope: !62)
!65 = !DILocation(line: 61, column: 13, scope: !55)
!66 = !DILocation(line: 64, column: 25, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !1, line: 62, column: 9)
!68 = !DILocation(line: 65, column: 20, scope: !69)
!69 = distinct !DILexicalBlock(scope: !67, file: !1, line: 65, column: 13)
!70 = !DILocation(line: 65, column: 18, scope: !69)
!71 = !DILocation(line: 65, column: 25, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 65, column: 13)
!73 = !DILocation(line: 65, column: 29, scope: !72)
!74 = !DILocation(line: 65, column: 27, scope: !72)
!75 = !DILocation(line: 65, column: 13, scope: !69)
!76 = !DILocation(line: 68, column: 28, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 66, column: 13)
!78 = !DILocation(line: 69, column: 13, scope: !77)
!79 = !DILocation(line: 65, column: 33, scope: !72)
!80 = !DILocation(line: 65, column: 13, scope: !72)
!81 = distinct !{!81, !75, !82, !45}
!82 = !DILocation(line: 69, column: 13, scope: !69)
!83 = !DILocation(line: 70, column: 26, scope: !67)
!84 = !DILocation(line: 70, column: 13, scope: !67)
!85 = !DILocation(line: 71, column: 9, scope: !67)
!86 = !DILocation(line: 73, column: 1, scope: !50)
!87 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_68b_goodB2GSink", scope: !1, file: !1, line: 76, type: !8, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!88 = !DILocalVariable(name: "data", scope: !87, file: !1, line: 78, type: !11)
!89 = !DILocation(line: 78, column: 12, scope: !87)
!90 = !DILocation(line: 78, column: 19, scope: !87)
!91 = !DILocalVariable(name: "i", scope: !92, file: !1, line: 80, type: !17)
!92 = distinct !DILexicalBlock(scope: !87, file: !1, line: 79, column: 5)
!93 = !DILocation(line: 80, column: 13, scope: !92)
!94 = !DILocalVariable(name: "n", scope: !92, file: !1, line: 80, type: !17)
!95 = !DILocation(line: 80, column: 16, scope: !92)
!96 = !DILocalVariable(name: "intVariable", scope: !92, file: !1, line: 80, type: !17)
!97 = !DILocation(line: 80, column: 19, scope: !92)
!98 = !DILocation(line: 81, column: 20, scope: !99)
!99 = distinct !DILexicalBlock(scope: !92, file: !1, line: 81, column: 13)
!100 = !DILocation(line: 81, column: 13, scope: !99)
!101 = !DILocation(line: 81, column: 36, scope: !99)
!102 = !DILocation(line: 81, column: 13, scope: !92)
!103 = !DILocation(line: 84, column: 17, scope: !104)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 84, column: 17)
!105 = distinct !DILexicalBlock(scope: !99, file: !1, line: 82, column: 9)
!106 = !DILocation(line: 84, column: 19, scope: !104)
!107 = !DILocation(line: 84, column: 17, scope: !105)
!108 = !DILocation(line: 86, column: 29, scope: !109)
!109 = distinct !DILexicalBlock(scope: !104, file: !1, line: 85, column: 13)
!110 = !DILocation(line: 87, column: 24, scope: !111)
!111 = distinct !DILexicalBlock(scope: !109, file: !1, line: 87, column: 17)
!112 = !DILocation(line: 87, column: 22, scope: !111)
!113 = !DILocation(line: 87, column: 29, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 87, column: 17)
!115 = !DILocation(line: 87, column: 33, scope: !114)
!116 = !DILocation(line: 87, column: 31, scope: !114)
!117 = !DILocation(line: 87, column: 17, scope: !111)
!118 = !DILocation(line: 90, column: 32, scope: !119)
!119 = distinct !DILexicalBlock(scope: !114, file: !1, line: 88, column: 17)
!120 = !DILocation(line: 91, column: 17, scope: !119)
!121 = !DILocation(line: 87, column: 37, scope: !114)
!122 = !DILocation(line: 87, column: 17, scope: !114)
!123 = distinct !{!123, !117, !124, !45}
!124 = !DILocation(line: 91, column: 17, scope: !111)
!125 = !DILocation(line: 92, column: 30, scope: !109)
!126 = !DILocation(line: 92, column: 17, scope: !109)
!127 = !DILocation(line: 93, column: 13, scope: !109)
!128 = !DILocation(line: 94, column: 9, scope: !105)
!129 = !DILocation(line: 96, column: 1, scope: !87)
