; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink(i32 %data) #0 !dbg !7 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !16, metadata !DIExpression()), !dbg !20
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !20
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !20
  %1 = load i32, i32* %data.addr, align 4, !dbg !21
  %cmp = icmp sge i32 %1, 0, !dbg !23
  br i1 %cmp, label %if.then, label %if.else, !dbg !24

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !25
  %idxprom = sext i32 %2 to i64, !dbg !27
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !27
  store i32 1, i32* %arrayidx, align 4, !dbg !28
  store i32 0, i32* %i, align 4, !dbg !29
  br label %for.cond, !dbg !31

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !32
  %cmp1 = icmp slt i32 %3, 10, !dbg !34
  br i1 %cmp1, label %for.body, label %for.end, !dbg !35

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !36
  %idxprom2 = sext i32 %4 to i64, !dbg !38
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !38
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !38
  call void @printIntLine(i32 %5), !dbg !39
  br label %for.inc, !dbg !40

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !41
  %inc = add nsw i32 %6, 1, !dbg !41
  store i32 %inc, i32* %i, align 4, !dbg !41
  br label %for.cond, !dbg !42, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !46

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !47
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink(i32 %data) #0 !dbg !50 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %i, metadata !53, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !56, metadata !DIExpression()), !dbg !57
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !57
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !57
  %1 = load i32, i32* %data.addr, align 4, !dbg !58
  %cmp = icmp sge i32 %1, 0, !dbg !60
  br i1 %cmp, label %if.then, label %if.else, !dbg !61

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !62
  %idxprom = sext i32 %2 to i64, !dbg !64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !64
  store i32 1, i32* %arrayidx, align 4, !dbg !65
  store i32 0, i32* %i, align 4, !dbg !66
  br label %for.cond, !dbg !68

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !69
  %cmp1 = icmp slt i32 %3, 10, !dbg !71
  br i1 %cmp1, label %for.body, label %for.end, !dbg !72

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !73
  %idxprom2 = sext i32 %4 to i64, !dbg !75
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !75
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !75
  call void @printIntLine(i32 %5), !dbg !76
  br label %for.inc, !dbg !77

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !78
  %inc = add nsw i32 %6, 1, !dbg !78
  store i32 %inc, i32* %i, align 4, !dbg !78
  br label %for.cond, !dbg !79, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !82

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !83
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !85
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodB2GSink(i32 %data) #0 !dbg !86 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %i, metadata !89, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !92, metadata !DIExpression()), !dbg !93
  %0 = bitcast [10 x i32]* %buffer to i8*, !dbg !93
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !93
  %1 = load i32, i32* %data.addr, align 4, !dbg !94
  %cmp = icmp sge i32 %1, 0, !dbg !96
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !97

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %data.addr, align 4, !dbg !98
  %cmp1 = icmp slt i32 %2, 10, !dbg !99
  br i1 %cmp1, label %if.then, label %if.else, !dbg !100

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %data.addr, align 4, !dbg !101
  %idxprom = sext i32 %3 to i64, !dbg !103
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !103
  store i32 1, i32* %arrayidx, align 4, !dbg !104
  store i32 0, i32* %i, align 4, !dbg !105
  br label %for.cond, !dbg !107

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !108
  %cmp2 = icmp slt i32 %4, 10, !dbg !110
  br i1 %cmp2, label %for.body, label %for.end, !dbg !111

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !112
  %idxprom3 = sext i32 %5 to i64, !dbg !114
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !114
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !114
  call void @printIntLine(i32 %6), !dbg !115
  br label %for.inc, !dbg !116

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !117
  %inc = add nsw i32 %7, 1, !dbg !117
  store i32 %inc, i32* %i, align 4, !dbg !117
  br label %for.cond, !dbg !118, !llvm.loop !119

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !121

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !122
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !124
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_649/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink", scope: !1, file: !1, line: 22, type: !8, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "data", arg: 1, scope: !7, file: !1, line: 22, type: !10)
!12 = !DILocation(line: 22, column: 72, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !14, file: !1, line: 25, type: !10)
!14 = distinct !DILexicalBlock(scope: !7, file: !1, line: 24, column: 5)
!15 = !DILocation(line: 25, column: 13, scope: !14)
!16 = !DILocalVariable(name: "buffer", scope: !14, file: !1, line: 26, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 10)
!20 = !DILocation(line: 26, column: 13, scope: !14)
!21 = !DILocation(line: 29, column: 13, scope: !22)
!22 = distinct !DILexicalBlock(scope: !14, file: !1, line: 29, column: 13)
!23 = !DILocation(line: 29, column: 18, scope: !22)
!24 = !DILocation(line: 29, column: 13, scope: !14)
!25 = !DILocation(line: 31, column: 20, scope: !26)
!26 = distinct !DILexicalBlock(scope: !22, file: !1, line: 30, column: 9)
!27 = !DILocation(line: 31, column: 13, scope: !26)
!28 = !DILocation(line: 31, column: 26, scope: !26)
!29 = !DILocation(line: 33, column: 19, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 33, column: 13)
!31 = !DILocation(line: 33, column: 17, scope: !30)
!32 = !DILocation(line: 33, column: 24, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 33, column: 13)
!34 = !DILocation(line: 33, column: 26, scope: !33)
!35 = !DILocation(line: 33, column: 13, scope: !30)
!36 = !DILocation(line: 35, column: 37, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 34, column: 13)
!38 = !DILocation(line: 35, column: 30, scope: !37)
!39 = !DILocation(line: 35, column: 17, scope: !37)
!40 = !DILocation(line: 36, column: 13, scope: !37)
!41 = !DILocation(line: 33, column: 33, scope: !33)
!42 = !DILocation(line: 33, column: 13, scope: !33)
!43 = distinct !{!43, !35, !44, !45}
!44 = !DILocation(line: 36, column: 13, scope: !30)
!45 = !{!"llvm.loop.mustprogress"}
!46 = !DILocation(line: 37, column: 9, scope: !26)
!47 = !DILocation(line: 40, column: 13, scope: !48)
!48 = distinct !DILexicalBlock(scope: !22, file: !1, line: 39, column: 9)
!49 = !DILocation(line: 43, column: 1, scope: !7)
!50 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink", scope: !1, file: !1, line: 50, type: !8, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!51 = !DILocalVariable(name: "data", arg: 1, scope: !50, file: !1, line: 50, type: !10)
!52 = !DILocation(line: 50, column: 76, scope: !50)
!53 = !DILocalVariable(name: "i", scope: !54, file: !1, line: 53, type: !10)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 52, column: 5)
!55 = !DILocation(line: 53, column: 13, scope: !54)
!56 = !DILocalVariable(name: "buffer", scope: !54, file: !1, line: 54, type: !17)
!57 = !DILocation(line: 54, column: 13, scope: !54)
!58 = !DILocation(line: 57, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 57, column: 13)
!60 = !DILocation(line: 57, column: 18, scope: !59)
!61 = !DILocation(line: 57, column: 13, scope: !54)
!62 = !DILocation(line: 59, column: 20, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 58, column: 9)
!64 = !DILocation(line: 59, column: 13, scope: !63)
!65 = !DILocation(line: 59, column: 26, scope: !63)
!66 = !DILocation(line: 61, column: 19, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 61, column: 13)
!68 = !DILocation(line: 61, column: 17, scope: !67)
!69 = !DILocation(line: 61, column: 24, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 61, column: 13)
!71 = !DILocation(line: 61, column: 26, scope: !70)
!72 = !DILocation(line: 61, column: 13, scope: !67)
!73 = !DILocation(line: 63, column: 37, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 62, column: 13)
!75 = !DILocation(line: 63, column: 30, scope: !74)
!76 = !DILocation(line: 63, column: 17, scope: !74)
!77 = !DILocation(line: 64, column: 13, scope: !74)
!78 = !DILocation(line: 61, column: 33, scope: !70)
!79 = !DILocation(line: 61, column: 13, scope: !70)
!80 = distinct !{!80, !72, !81, !45}
!81 = !DILocation(line: 64, column: 13, scope: !67)
!82 = !DILocation(line: 65, column: 9, scope: !63)
!83 = !DILocation(line: 68, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !59, file: !1, line: 67, column: 9)
!85 = !DILocation(line: 71, column: 1, scope: !50)
!86 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodB2GSink", scope: !1, file: !1, line: 74, type: !8, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!87 = !DILocalVariable(name: "data", arg: 1, scope: !86, file: !1, line: 74, type: !10)
!88 = !DILocation(line: 74, column: 76, scope: !86)
!89 = !DILocalVariable(name: "i", scope: !90, file: !1, line: 77, type: !10)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 76, column: 5)
!91 = !DILocation(line: 77, column: 13, scope: !90)
!92 = !DILocalVariable(name: "buffer", scope: !90, file: !1, line: 78, type: !17)
!93 = !DILocation(line: 78, column: 13, scope: !90)
!94 = !DILocation(line: 80, column: 13, scope: !95)
!95 = distinct !DILexicalBlock(scope: !90, file: !1, line: 80, column: 13)
!96 = !DILocation(line: 80, column: 18, scope: !95)
!97 = !DILocation(line: 80, column: 23, scope: !95)
!98 = !DILocation(line: 80, column: 26, scope: !95)
!99 = !DILocation(line: 80, column: 31, scope: !95)
!100 = !DILocation(line: 80, column: 13, scope: !90)
!101 = !DILocation(line: 82, column: 20, scope: !102)
!102 = distinct !DILexicalBlock(scope: !95, file: !1, line: 81, column: 9)
!103 = !DILocation(line: 82, column: 13, scope: !102)
!104 = !DILocation(line: 82, column: 26, scope: !102)
!105 = !DILocation(line: 84, column: 19, scope: !106)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 84, column: 13)
!107 = !DILocation(line: 84, column: 17, scope: !106)
!108 = !DILocation(line: 84, column: 24, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 84, column: 13)
!110 = !DILocation(line: 84, column: 26, scope: !109)
!111 = !DILocation(line: 84, column: 13, scope: !106)
!112 = !DILocation(line: 86, column: 37, scope: !113)
!113 = distinct !DILexicalBlock(scope: !109, file: !1, line: 85, column: 13)
!114 = !DILocation(line: 86, column: 30, scope: !113)
!115 = !DILocation(line: 86, column: 17, scope: !113)
!116 = !DILocation(line: 87, column: 13, scope: !113)
!117 = !DILocation(line: 84, column: 33, scope: !109)
!118 = !DILocation(line: 84, column: 13, scope: !109)
!119 = distinct !{!119, !111, !120, !45}
!120 = !DILocation(line: 87, column: 13, scope: !106)
!121 = !DILocation(line: 88, column: 9, scope: !102)
!122 = !DILocation(line: 91, column: 13, scope: !123)
!123 = distinct !DILexicalBlock(scope: !95, file: !1, line: 90, column: 9)
!124 = !DILocation(line: 94, column: 1, scope: !86)
