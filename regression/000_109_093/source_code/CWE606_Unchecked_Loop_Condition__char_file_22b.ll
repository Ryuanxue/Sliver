; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_22b.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_22b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CWE606_Unchecked_Loop_Condition__char_file_22_badGlobal = external dso_local global i32, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G1Global = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Global = external dso_local global i32, align 4
@CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BGlobal = external dso_local global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_22_badSink(i8* %data) #0 !dbg !7 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !12, metadata !DIExpression()), !dbg !13
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_file_22_badGlobal, align 4, !dbg !14
  %tobool = icmp ne i32 %0, 0, !dbg !14
  br i1 %tobool, label %if.then, label %if.end4, !dbg !16

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %n, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !24, metadata !DIExpression()), !dbg !25
  %1 = load i8*, i8** %data.addr, align 8, !dbg !26
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !28
  %cmp = icmp eq i32 %call, 1, !dbg !29
  br i1 %cmp, label %if.then1, label %if.end, !dbg !30

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !31
  store i32 0, i32* %i, align 4, !dbg !33
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !36
  %3 = load i32, i32* %n, align 4, !dbg !38
  %cmp2 = icmp slt i32 %2, %3, !dbg !39
  br i1 %cmp2, label %for.body, label %for.end, !dbg !40

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !41
  %inc = add nsw i32 %4, 1, !dbg !41
  store i32 %inc, i32* %intVariable, align 4, !dbg !41
  br label %for.inc, !dbg !43

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !44
  %inc3 = add nsw i32 %5, 1, !dbg !44
  store i32 %inc3, i32* %i, align 4, !dbg !44
  br label %for.cond, !dbg !45, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !49
  call void @printIntLine(i32 %6), !dbg !50
  br label %if.end, !dbg !51

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !52

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

declare dso_local void @printIntLine(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G1Sink(i8* %data) #0 !dbg !54 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !55, metadata !DIExpression()), !dbg !56
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G1Global, align 4, !dbg !57
  %tobool = icmp ne i32 %0, 0, !dbg !57
  br i1 %tobool, label %if.then, label %if.else, !dbg !59

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !60
  br label %if.end7, !dbg !62

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !63, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %n, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !69, metadata !DIExpression()), !dbg !70
  %1 = load i8*, i8** %data.addr, align 8, !dbg !71
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !73
  %cmp = icmp eq i32 %call, 1, !dbg !74
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !75

if.then1:                                         ; preds = %if.else
  %2 = load i32, i32* %n, align 4, !dbg !76
  %cmp2 = icmp slt i32 %2, 10000, !dbg !79
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !80

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !81
  store i32 0, i32* %i, align 4, !dbg !83
  br label %for.cond, !dbg !85

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !86
  %4 = load i32, i32* %n, align 4, !dbg !88
  %cmp4 = icmp slt i32 %3, %4, !dbg !89
  br i1 %cmp4, label %for.body, label %for.end, !dbg !90

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !91
  %inc = add nsw i32 %5, 1, !dbg !91
  store i32 %inc, i32* %intVariable, align 4, !dbg !91
  br label %for.inc, !dbg !93

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !94
  %inc5 = add nsw i32 %6, 1, !dbg !94
  store i32 %inc5, i32* %i, align 4, !dbg !94
  br label %for.cond, !dbg !95, !llvm.loop !96

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !98
  call void @printIntLine(i32 %7), !dbg !99
  br label %if.end, !dbg !100

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !101

if.end6:                                          ; preds = %if.end, %if.else
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.then
  ret void, !dbg !102
}

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Sink(i8* %data) #0 !dbg !103 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Global, align 4, !dbg !106
  %tobool = icmp ne i32 %0, 0, !dbg !106
  br i1 %tobool, label %if.then, label %if.end7, !dbg !108

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !109, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata i32* %n, metadata !113, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !115, metadata !DIExpression()), !dbg !116
  %1 = load i8*, i8** %data.addr, align 8, !dbg !117
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !119
  %cmp = icmp eq i32 %call, 1, !dbg !120
  br i1 %cmp, label %if.then1, label %if.end6, !dbg !121

if.then1:                                         ; preds = %if.then
  %2 = load i32, i32* %n, align 4, !dbg !122
  %cmp2 = icmp slt i32 %2, 10000, !dbg !125
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !126

if.then3:                                         ; preds = %if.then1
  store i32 0, i32* %intVariable, align 4, !dbg !127
  store i32 0, i32* %i, align 4, !dbg !129
  br label %for.cond, !dbg !131

for.cond:                                         ; preds = %for.inc, %if.then3
  %3 = load i32, i32* %i, align 4, !dbg !132
  %4 = load i32, i32* %n, align 4, !dbg !134
  %cmp4 = icmp slt i32 %3, %4, !dbg !135
  br i1 %cmp4, label %for.body, label %for.end, !dbg !136

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %intVariable, align 4, !dbg !137
  %inc = add nsw i32 %5, 1, !dbg !137
  store i32 %inc, i32* %intVariable, align 4, !dbg !137
  br label %for.inc, !dbg !139

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !140
  %inc5 = add nsw i32 %6, 1, !dbg !140
  store i32 %inc5, i32* %i, align 4, !dbg !140
  br label %for.cond, !dbg !141, !llvm.loop !142

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %intVariable, align 4, !dbg !144
  call void @printIntLine(i32 %7), !dbg !145
  br label %if.end, !dbg !146

if.end:                                           ; preds = %for.end, %if.then1
  br label %if.end6, !dbg !147

if.end6:                                          ; preds = %if.end, %if.then
  br label %if.end7, !dbg !148

if.end7:                                          ; preds = %if.end6, %entry
  ret void, !dbg !149
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink(i8* %data) #0 !dbg !150 {
entry:
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %intVariable = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !151, metadata !DIExpression()), !dbg !152
  %0 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BGlobal, align 4, !dbg !153
  %tobool = icmp ne i32 %0, 0, !dbg !153
  br i1 %tobool, label %if.then, label %if.end4, !dbg !155

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !156, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata i32* %n, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata i32* %intVariable, metadata !162, metadata !DIExpression()), !dbg !163
  %1 = load i8*, i8** %data.addr, align 8, !dbg !164
  %call = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %n) #4, !dbg !166
  %cmp = icmp eq i32 %call, 1, !dbg !167
  br i1 %cmp, label %if.then1, label %if.end, !dbg !168

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %intVariable, align 4, !dbg !169
  store i32 0, i32* %i, align 4, !dbg !171
  br label %for.cond, !dbg !173

for.cond:                                         ; preds = %for.inc, %if.then1
  %2 = load i32, i32* %i, align 4, !dbg !174
  %3 = load i32, i32* %n, align 4, !dbg !176
  %cmp2 = icmp slt i32 %2, %3, !dbg !177
  br i1 %cmp2, label %for.body, label %for.end, !dbg !178

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %intVariable, align 4, !dbg !179
  %inc = add nsw i32 %4, 1, !dbg !179
  store i32 %inc, i32* %intVariable, align 4, !dbg !179
  br label %for.inc, !dbg !181

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !182
  %inc3 = add nsw i32 %5, 1, !dbg !182
  store i32 %inc3, i32* %i, align 4, !dbg !182
  br label %for.cond, !dbg !183, !llvm.loop !184

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %intVariable, align 4, !dbg !186
  call void @printIntLine(i32 %6), !dbg !187
  br label %if.end, !dbg !188

if.end:                                           ; preds = %for.end, %if.then
  br label %if.end4, !dbg !189

if.end4:                                          ; preds = %if.end, %entry
  ret void, !dbg !190
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_22b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_093/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_22_badSink", scope: !1, file: !1, line: 31, type: !8, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DILocalVariable(name: "data", arg: 1, scope: !7, file: !1, line: 31, type: !10)
!13 = !DILocation(line: 31, column: 67, scope: !7)
!14 = !DILocation(line: 33, column: 8, scope: !15)
!15 = distinct !DILexicalBlock(scope: !7, file: !1, line: 33, column: 8)
!16 = !DILocation(line: 33, column: 8, scope: !7)
!17 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 36, type: !20)
!18 = distinct !DILexicalBlock(scope: !19, file: !1, line: 35, column: 9)
!19 = distinct !DILexicalBlock(scope: !15, file: !1, line: 34, column: 5)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DILocation(line: 36, column: 17, scope: !18)
!22 = !DILocalVariable(name: "n", scope: !18, file: !1, line: 36, type: !20)
!23 = !DILocation(line: 36, column: 20, scope: !18)
!24 = !DILocalVariable(name: "intVariable", scope: !18, file: !1, line: 36, type: !20)
!25 = !DILocation(line: 36, column: 23, scope: !18)
!26 = !DILocation(line: 37, column: 24, scope: !27)
!27 = distinct !DILexicalBlock(scope: !18, file: !1, line: 37, column: 17)
!28 = !DILocation(line: 37, column: 17, scope: !27)
!29 = !DILocation(line: 37, column: 40, scope: !27)
!30 = !DILocation(line: 37, column: 17, scope: !18)
!31 = !DILocation(line: 40, column: 29, scope: !32)
!32 = distinct !DILexicalBlock(scope: !27, file: !1, line: 38, column: 13)
!33 = !DILocation(line: 41, column: 24, scope: !34)
!34 = distinct !DILexicalBlock(scope: !32, file: !1, line: 41, column: 17)
!35 = !DILocation(line: 41, column: 22, scope: !34)
!36 = !DILocation(line: 41, column: 29, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 41, column: 17)
!38 = !DILocation(line: 41, column: 33, scope: !37)
!39 = !DILocation(line: 41, column: 31, scope: !37)
!40 = !DILocation(line: 41, column: 17, scope: !34)
!41 = !DILocation(line: 44, column: 32, scope: !42)
!42 = distinct !DILexicalBlock(scope: !37, file: !1, line: 42, column: 17)
!43 = !DILocation(line: 45, column: 17, scope: !42)
!44 = !DILocation(line: 41, column: 37, scope: !37)
!45 = !DILocation(line: 41, column: 17, scope: !37)
!46 = distinct !{!46, !40, !47, !48}
!47 = !DILocation(line: 45, column: 17, scope: !34)
!48 = !{!"llvm.loop.mustprogress"}
!49 = !DILocation(line: 46, column: 30, scope: !32)
!50 = !DILocation(line: 46, column: 17, scope: !32)
!51 = !DILocation(line: 47, column: 13, scope: !32)
!52 = !DILocation(line: 49, column: 5, scope: !19)
!53 = !DILocation(line: 50, column: 1, scope: !7)
!54 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G1Sink", scope: !1, file: !1, line: 62, type: !8, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!55 = !DILocalVariable(name: "data", arg: 1, scope: !54, file: !1, line: 62, type: !10)
!56 = !DILocation(line: 62, column: 72, scope: !54)
!57 = !DILocation(line: 64, column: 8, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 64, column: 8)
!59 = !DILocation(line: 64, column: 8, scope: !54)
!60 = !DILocation(line: 67, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 65, column: 5)
!62 = !DILocation(line: 68, column: 5, scope: !61)
!63 = !DILocalVariable(name: "i", scope: !64, file: !1, line: 72, type: !20)
!64 = distinct !DILexicalBlock(scope: !65, file: !1, line: 71, column: 9)
!65 = distinct !DILexicalBlock(scope: !58, file: !1, line: 70, column: 5)
!66 = !DILocation(line: 72, column: 17, scope: !64)
!67 = !DILocalVariable(name: "n", scope: !64, file: !1, line: 72, type: !20)
!68 = !DILocation(line: 72, column: 20, scope: !64)
!69 = !DILocalVariable(name: "intVariable", scope: !64, file: !1, line: 72, type: !20)
!70 = !DILocation(line: 72, column: 23, scope: !64)
!71 = !DILocation(line: 73, column: 24, scope: !72)
!72 = distinct !DILexicalBlock(scope: !64, file: !1, line: 73, column: 17)
!73 = !DILocation(line: 73, column: 17, scope: !72)
!74 = !DILocation(line: 73, column: 40, scope: !72)
!75 = !DILocation(line: 73, column: 17, scope: !64)
!76 = !DILocation(line: 76, column: 21, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 76, column: 21)
!78 = distinct !DILexicalBlock(scope: !72, file: !1, line: 74, column: 13)
!79 = !DILocation(line: 76, column: 23, scope: !77)
!80 = !DILocation(line: 76, column: 21, scope: !78)
!81 = !DILocation(line: 78, column: 33, scope: !82)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 77, column: 17)
!83 = !DILocation(line: 79, column: 28, scope: !84)
!84 = distinct !DILexicalBlock(scope: !82, file: !1, line: 79, column: 21)
!85 = !DILocation(line: 79, column: 26, scope: !84)
!86 = !DILocation(line: 79, column: 33, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !1, line: 79, column: 21)
!88 = !DILocation(line: 79, column: 37, scope: !87)
!89 = !DILocation(line: 79, column: 35, scope: !87)
!90 = !DILocation(line: 79, column: 21, scope: !84)
!91 = !DILocation(line: 82, column: 36, scope: !92)
!92 = distinct !DILexicalBlock(scope: !87, file: !1, line: 80, column: 21)
!93 = !DILocation(line: 83, column: 21, scope: !92)
!94 = !DILocation(line: 79, column: 41, scope: !87)
!95 = !DILocation(line: 79, column: 21, scope: !87)
!96 = distinct !{!96, !90, !97, !48}
!97 = !DILocation(line: 83, column: 21, scope: !84)
!98 = !DILocation(line: 84, column: 34, scope: !82)
!99 = !DILocation(line: 84, column: 21, scope: !82)
!100 = !DILocation(line: 85, column: 17, scope: !82)
!101 = !DILocation(line: 86, column: 13, scope: !78)
!102 = !DILocation(line: 89, column: 1, scope: !54)
!103 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_22_goodB2G2Sink", scope: !1, file: !1, line: 92, type: !8, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!104 = !DILocalVariable(name: "data", arg: 1, scope: !103, file: !1, line: 92, type: !10)
!105 = !DILocation(line: 92, column: 72, scope: !103)
!106 = !DILocation(line: 94, column: 8, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 94, column: 8)
!108 = !DILocation(line: 94, column: 8, scope: !103)
!109 = !DILocalVariable(name: "i", scope: !110, file: !1, line: 97, type: !20)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 96, column: 9)
!111 = distinct !DILexicalBlock(scope: !107, file: !1, line: 95, column: 5)
!112 = !DILocation(line: 97, column: 17, scope: !110)
!113 = !DILocalVariable(name: "n", scope: !110, file: !1, line: 97, type: !20)
!114 = !DILocation(line: 97, column: 20, scope: !110)
!115 = !DILocalVariable(name: "intVariable", scope: !110, file: !1, line: 97, type: !20)
!116 = !DILocation(line: 97, column: 23, scope: !110)
!117 = !DILocation(line: 98, column: 24, scope: !118)
!118 = distinct !DILexicalBlock(scope: !110, file: !1, line: 98, column: 17)
!119 = !DILocation(line: 98, column: 17, scope: !118)
!120 = !DILocation(line: 98, column: 40, scope: !118)
!121 = !DILocation(line: 98, column: 17, scope: !110)
!122 = !DILocation(line: 101, column: 21, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 101, column: 21)
!124 = distinct !DILexicalBlock(scope: !118, file: !1, line: 99, column: 13)
!125 = !DILocation(line: 101, column: 23, scope: !123)
!126 = !DILocation(line: 101, column: 21, scope: !124)
!127 = !DILocation(line: 103, column: 33, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !1, line: 102, column: 17)
!129 = !DILocation(line: 104, column: 28, scope: !130)
!130 = distinct !DILexicalBlock(scope: !128, file: !1, line: 104, column: 21)
!131 = !DILocation(line: 104, column: 26, scope: !130)
!132 = !DILocation(line: 104, column: 33, scope: !133)
!133 = distinct !DILexicalBlock(scope: !130, file: !1, line: 104, column: 21)
!134 = !DILocation(line: 104, column: 37, scope: !133)
!135 = !DILocation(line: 104, column: 35, scope: !133)
!136 = !DILocation(line: 104, column: 21, scope: !130)
!137 = !DILocation(line: 107, column: 36, scope: !138)
!138 = distinct !DILexicalBlock(scope: !133, file: !1, line: 105, column: 21)
!139 = !DILocation(line: 108, column: 21, scope: !138)
!140 = !DILocation(line: 104, column: 41, scope: !133)
!141 = !DILocation(line: 104, column: 21, scope: !133)
!142 = distinct !{!142, !136, !143, !48}
!143 = !DILocation(line: 108, column: 21, scope: !130)
!144 = !DILocation(line: 109, column: 34, scope: !128)
!145 = !DILocation(line: 109, column: 21, scope: !128)
!146 = !DILocation(line: 110, column: 17, scope: !128)
!147 = !DILocation(line: 111, column: 13, scope: !124)
!148 = !DILocation(line: 113, column: 5, scope: !111)
!149 = !DILocation(line: 114, column: 1, scope: !103)
!150 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_22_goodG2BSink", scope: !1, file: !1, line: 117, type: !8, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!151 = !DILocalVariable(name: "data", arg: 1, scope: !150, file: !1, line: 117, type: !10)
!152 = !DILocation(line: 117, column: 71, scope: !150)
!153 = !DILocation(line: 119, column: 8, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !1, line: 119, column: 8)
!155 = !DILocation(line: 119, column: 8, scope: !150)
!156 = !DILocalVariable(name: "i", scope: !157, file: !1, line: 122, type: !20)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 121, column: 9)
!158 = distinct !DILexicalBlock(scope: !154, file: !1, line: 120, column: 5)
!159 = !DILocation(line: 122, column: 17, scope: !157)
!160 = !DILocalVariable(name: "n", scope: !157, file: !1, line: 122, type: !20)
!161 = !DILocation(line: 122, column: 20, scope: !157)
!162 = !DILocalVariable(name: "intVariable", scope: !157, file: !1, line: 122, type: !20)
!163 = !DILocation(line: 122, column: 23, scope: !157)
!164 = !DILocation(line: 123, column: 24, scope: !165)
!165 = distinct !DILexicalBlock(scope: !157, file: !1, line: 123, column: 17)
!166 = !DILocation(line: 123, column: 17, scope: !165)
!167 = !DILocation(line: 123, column: 40, scope: !165)
!168 = !DILocation(line: 123, column: 17, scope: !157)
!169 = !DILocation(line: 126, column: 29, scope: !170)
!170 = distinct !DILexicalBlock(scope: !165, file: !1, line: 124, column: 13)
!171 = !DILocation(line: 127, column: 24, scope: !172)
!172 = distinct !DILexicalBlock(scope: !170, file: !1, line: 127, column: 17)
!173 = !DILocation(line: 127, column: 22, scope: !172)
!174 = !DILocation(line: 127, column: 29, scope: !175)
!175 = distinct !DILexicalBlock(scope: !172, file: !1, line: 127, column: 17)
!176 = !DILocation(line: 127, column: 33, scope: !175)
!177 = !DILocation(line: 127, column: 31, scope: !175)
!178 = !DILocation(line: 127, column: 17, scope: !172)
!179 = !DILocation(line: 130, column: 32, scope: !180)
!180 = distinct !DILexicalBlock(scope: !175, file: !1, line: 128, column: 17)
!181 = !DILocation(line: 131, column: 17, scope: !180)
!182 = !DILocation(line: 127, column: 37, scope: !175)
!183 = !DILocation(line: 127, column: 17, scope: !175)
!184 = distinct !{!184, !178, !185, !48}
!185 = !DILocation(line: 131, column: 17, scope: !172)
!186 = !DILocation(line: 132, column: 30, scope: !170)
!187 = !DILocation(line: 132, column: 17, scope: !170)
!188 = !DILocation(line: 133, column: 13, scope: !170)
!189 = !DILocation(line: 135, column: 5, scope: !158)
!190 = !DILocation(line: 136, column: 1, scope: !150)
