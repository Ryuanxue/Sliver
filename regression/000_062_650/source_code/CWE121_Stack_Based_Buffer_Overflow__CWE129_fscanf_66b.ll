; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink(i32* %dataArray) #0 !dbg !7 {
entry:
  %dataArray.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataArray, i32** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataArray.addr, metadata !12, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %data, metadata !14, metadata !DIExpression()), !dbg !15
  %0 = load i32*, i32** %dataArray.addr, align 8, !dbg !16
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 2, !dbg !16
  %1 = load i32, i32* %arrayidx, align 4, !dbg !16
  store i32 %1, i32* %data, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !20, metadata !DIExpression()), !dbg !24
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !24
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !24
  %3 = load i32, i32* %data, align 4, !dbg !25
  %cmp = icmp sge i32 %3, 0, !dbg !27
  br i1 %cmp, label %if.then, label %if.else, !dbg !28

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !29
  %idxprom = sext i32 %4 to i64, !dbg !31
  %arrayidx1 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !31
  store i32 1, i32* %arrayidx1, align 4, !dbg !32
  store i32 0, i32* %i, align 4, !dbg !33
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !36
  %cmp2 = icmp slt i32 %5, 10, !dbg !38
  br i1 %cmp2, label %for.body, label %for.end, !dbg !39

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !40
  %idxprom3 = sext i32 %6 to i64, !dbg !42
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !42
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !42
  call void @printIntLine(i32 %7), !dbg !43
  br label %for.inc, !dbg !44

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !45
  %inc = add nsw i32 %8, 1, !dbg !45
  store i32 %inc, i32* %i, align 4, !dbg !45
  br label %for.cond, !dbg !46, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !50

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !51
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_goodG2BSink(i32* %dataArray) #0 !dbg !54 {
entry:
  %dataArray.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataArray, i32** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataArray.addr, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %data, metadata !57, metadata !DIExpression()), !dbg !58
  %0 = load i32*, i32** %dataArray.addr, align 8, !dbg !59
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 2, !dbg !59
  %1 = load i32, i32* %arrayidx, align 4, !dbg !59
  store i32 %1, i32* %data, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %i, metadata !60, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !63, metadata !DIExpression()), !dbg !64
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !64
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !64
  %3 = load i32, i32* %data, align 4, !dbg !65
  %cmp = icmp sge i32 %3, 0, !dbg !67
  br i1 %cmp, label %if.then, label %if.else, !dbg !68

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !69
  %idxprom = sext i32 %4 to i64, !dbg !71
  %arrayidx1 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !71
  store i32 1, i32* %arrayidx1, align 4, !dbg !72
  store i32 0, i32* %i, align 4, !dbg !73
  br label %for.cond, !dbg !75

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !76
  %cmp2 = icmp slt i32 %5, 10, !dbg !78
  br i1 %cmp2, label %for.body, label %for.end, !dbg !79

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !80
  %idxprom3 = sext i32 %6 to i64, !dbg !82
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !82
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !82
  call void @printIntLine(i32 %7), !dbg !83
  br label %for.inc, !dbg !84

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !85
  %inc = add nsw i32 %8, 1, !dbg !85
  store i32 %inc, i32* %i, align 4, !dbg !85
  br label %for.cond, !dbg !86, !llvm.loop !87

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !89

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !90
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !92
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_goodB2GSink(i32* %dataArray) #0 !dbg !93 {
entry:
  %dataArray.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataArray, i32** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataArray.addr, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %data, metadata !96, metadata !DIExpression()), !dbg !97
  %0 = load i32*, i32** %dataArray.addr, align 8, !dbg !98
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 2, !dbg !98
  %1 = load i32, i32* %arrayidx, align 4, !dbg !98
  store i32 %1, i32* %data, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %i, metadata !99, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !102, metadata !DIExpression()), !dbg !103
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !103
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !103
  %3 = load i32, i32* %data, align 4, !dbg !104
  %cmp = icmp sge i32 %3, 0, !dbg !106
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !107

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !108
  %cmp1 = icmp slt i32 %4, 10, !dbg !109
  br i1 %cmp1, label %if.then, label %if.else, !dbg !110

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !111
  %idxprom = sext i32 %5 to i64, !dbg !113
  %arrayidx2 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !113
  store i32 1, i32* %arrayidx2, align 4, !dbg !114
  store i32 0, i32* %i, align 4, !dbg !115
  br label %for.cond, !dbg !117

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !118
  %cmp3 = icmp slt i32 %6, 10, !dbg !120
  br i1 %cmp3, label %for.body, label %for.end, !dbg !121

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !122
  %idxprom4 = sext i32 %7 to i64, !dbg !124
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !124
  %8 = load i32, i32* %arrayidx5, align 4, !dbg !124
  call void @printIntLine(i32 %8), !dbg !125
  br label %for.inc, !dbg !126

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !127
  %inc = add nsw i32 %9, 1, !dbg !127
  store i32 %inc, i32* %i, align 4, !dbg !127
  br label %for.cond, !dbg !128, !llvm.loop !129

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !131

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !132
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !134
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_650/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink", scope: !1, file: !1, line: 22, type: !8, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "dataArray", arg: 1, scope: !7, file: !1, line: 22, type: !10)
!13 = !DILocation(line: 22, column: 72, scope: !7)
!14 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 25, type: !11)
!15 = !DILocation(line: 25, column: 9, scope: !7)
!16 = !DILocation(line: 25, column: 16, scope: !7)
!17 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 27, type: !11)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 26, column: 5)
!19 = !DILocation(line: 27, column: 13, scope: !18)
!20 = !DILocalVariable(name: "buffer", scope: !18, file: !1, line: 28, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 320, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 10)
!24 = !DILocation(line: 28, column: 13, scope: !18)
!25 = !DILocation(line: 31, column: 13, scope: !26)
!26 = distinct !DILexicalBlock(scope: !18, file: !1, line: 31, column: 13)
!27 = !DILocation(line: 31, column: 18, scope: !26)
!28 = !DILocation(line: 31, column: 13, scope: !18)
!29 = !DILocation(line: 33, column: 20, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 32, column: 9)
!31 = !DILocation(line: 33, column: 13, scope: !30)
!32 = !DILocation(line: 33, column: 26, scope: !30)
!33 = !DILocation(line: 35, column: 19, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 35, column: 13)
!35 = !DILocation(line: 35, column: 17, scope: !34)
!36 = !DILocation(line: 35, column: 24, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 35, column: 13)
!38 = !DILocation(line: 35, column: 26, scope: !37)
!39 = !DILocation(line: 35, column: 13, scope: !34)
!40 = !DILocation(line: 37, column: 37, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 36, column: 13)
!42 = !DILocation(line: 37, column: 30, scope: !41)
!43 = !DILocation(line: 37, column: 17, scope: !41)
!44 = !DILocation(line: 38, column: 13, scope: !41)
!45 = !DILocation(line: 35, column: 33, scope: !37)
!46 = !DILocation(line: 35, column: 13, scope: !37)
!47 = distinct !{!47, !39, !48, !49}
!48 = !DILocation(line: 38, column: 13, scope: !34)
!49 = !{!"llvm.loop.mustprogress"}
!50 = !DILocation(line: 39, column: 9, scope: !30)
!51 = !DILocation(line: 42, column: 13, scope: !52)
!52 = distinct !DILexicalBlock(scope: !26, file: !1, line: 41, column: 9)
!53 = !DILocation(line: 45, column: 1, scope: !7)
!54 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_goodG2BSink", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!55 = !DILocalVariable(name: "dataArray", arg: 1, scope: !54, file: !1, line: 52, type: !10)
!56 = !DILocation(line: 52, column: 76, scope: !54)
!57 = !DILocalVariable(name: "data", scope: !54, file: !1, line: 54, type: !11)
!58 = !DILocation(line: 54, column: 9, scope: !54)
!59 = !DILocation(line: 54, column: 16, scope: !54)
!60 = !DILocalVariable(name: "i", scope: !61, file: !1, line: 56, type: !11)
!61 = distinct !DILexicalBlock(scope: !54, file: !1, line: 55, column: 5)
!62 = !DILocation(line: 56, column: 13, scope: !61)
!63 = !DILocalVariable(name: "buffer", scope: !61, file: !1, line: 57, type: !21)
!64 = !DILocation(line: 57, column: 13, scope: !61)
!65 = !DILocation(line: 60, column: 13, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !1, line: 60, column: 13)
!67 = !DILocation(line: 60, column: 18, scope: !66)
!68 = !DILocation(line: 60, column: 13, scope: !61)
!69 = !DILocation(line: 62, column: 20, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 61, column: 9)
!71 = !DILocation(line: 62, column: 13, scope: !70)
!72 = !DILocation(line: 62, column: 26, scope: !70)
!73 = !DILocation(line: 64, column: 19, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 64, column: 13)
!75 = !DILocation(line: 64, column: 17, scope: !74)
!76 = !DILocation(line: 64, column: 24, scope: !77)
!77 = distinct !DILexicalBlock(scope: !74, file: !1, line: 64, column: 13)
!78 = !DILocation(line: 64, column: 26, scope: !77)
!79 = !DILocation(line: 64, column: 13, scope: !74)
!80 = !DILocation(line: 66, column: 37, scope: !81)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 65, column: 13)
!82 = !DILocation(line: 66, column: 30, scope: !81)
!83 = !DILocation(line: 66, column: 17, scope: !81)
!84 = !DILocation(line: 67, column: 13, scope: !81)
!85 = !DILocation(line: 64, column: 33, scope: !77)
!86 = !DILocation(line: 64, column: 13, scope: !77)
!87 = distinct !{!87, !79, !88, !49}
!88 = !DILocation(line: 67, column: 13, scope: !74)
!89 = !DILocation(line: 68, column: 9, scope: !70)
!90 = !DILocation(line: 71, column: 13, scope: !91)
!91 = distinct !DILexicalBlock(scope: !66, file: !1, line: 70, column: 9)
!92 = !DILocation(line: 74, column: 1, scope: !54)
!93 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_goodB2GSink", scope: !1, file: !1, line: 77, type: !8, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!94 = !DILocalVariable(name: "dataArray", arg: 1, scope: !93, file: !1, line: 77, type: !10)
!95 = !DILocation(line: 77, column: 76, scope: !93)
!96 = !DILocalVariable(name: "data", scope: !93, file: !1, line: 79, type: !11)
!97 = !DILocation(line: 79, column: 9, scope: !93)
!98 = !DILocation(line: 79, column: 16, scope: !93)
!99 = !DILocalVariable(name: "i", scope: !100, file: !1, line: 81, type: !11)
!100 = distinct !DILexicalBlock(scope: !93, file: !1, line: 80, column: 5)
!101 = !DILocation(line: 81, column: 13, scope: !100)
!102 = !DILocalVariable(name: "buffer", scope: !100, file: !1, line: 82, type: !21)
!103 = !DILocation(line: 82, column: 13, scope: !100)
!104 = !DILocation(line: 84, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !100, file: !1, line: 84, column: 13)
!106 = !DILocation(line: 84, column: 18, scope: !105)
!107 = !DILocation(line: 84, column: 23, scope: !105)
!108 = !DILocation(line: 84, column: 26, scope: !105)
!109 = !DILocation(line: 84, column: 31, scope: !105)
!110 = !DILocation(line: 84, column: 13, scope: !100)
!111 = !DILocation(line: 86, column: 20, scope: !112)
!112 = distinct !DILexicalBlock(scope: !105, file: !1, line: 85, column: 9)
!113 = !DILocation(line: 86, column: 13, scope: !112)
!114 = !DILocation(line: 86, column: 26, scope: !112)
!115 = !DILocation(line: 88, column: 19, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 88, column: 13)
!117 = !DILocation(line: 88, column: 17, scope: !116)
!118 = !DILocation(line: 88, column: 24, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 88, column: 13)
!120 = !DILocation(line: 88, column: 26, scope: !119)
!121 = !DILocation(line: 88, column: 13, scope: !116)
!122 = !DILocation(line: 90, column: 37, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 89, column: 13)
!124 = !DILocation(line: 90, column: 30, scope: !123)
!125 = !DILocation(line: 90, column: 17, scope: !123)
!126 = !DILocation(line: 91, column: 13, scope: !123)
!127 = !DILocation(line: 88, column: 33, scope: !119)
!128 = !DILocation(line: 88, column: 13, scope: !119)
!129 = distinct !{!129, !121, !130, !49}
!130 = !DILocation(line: 91, column: 13, scope: !116)
!131 = !DILocation(line: 92, column: 9, scope: !112)
!132 = !DILocation(line: 95, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !105, file: !1, line: 94, column: 9)
!134 = !DILocation(line: 98, column: 1, scope: !93)
