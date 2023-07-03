; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22b.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badGlobal = external dso_local global i32, align 4
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Global = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global = external dso_local global i32, align 4
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal = external dso_local global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badSink(i32 %data) #0 !dbg !7 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !11, metadata !DIExpression()), !dbg !12
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badGlobal, align 4, !dbg !13
  %tobool = icmp ne i32 %0, 0, !dbg !13
  br i1 %tobool, label %if.then, label %if.end5, !dbg !15

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !20, metadata !DIExpression()), !dbg !24
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !24
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !24
  %2 = load i32, i32* %data.addr, align 4, !dbg !25
  %cmp = icmp sge i32 %2, 0, !dbg !27
  br i1 %cmp, label %if.then1, label %if.else, !dbg !28

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !29
  %idxprom = sext i32 %3 to i64, !dbg !31
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !31
  store i32 1, i32* %arrayidx, align 4, !dbg !32
  store i32 0, i32* %i, align 4, !dbg !33
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %if.then1
  %4 = load i32, i32* %i, align 4, !dbg !36
  %cmp2 = icmp slt i32 %4, 10, !dbg !38
  br i1 %cmp2, label %for.body, label %for.end, !dbg !39

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !40
  %idxprom3 = sext i32 %5 to i64, !dbg !42
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !42
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !42
  call void @printIntLine(i32 %6), !dbg !43
  br label %for.inc, !dbg !44

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !45
  %inc = add nsw i32 %7, 1, !dbg !45
  store i32 %inc, i32* %i, align 4, !dbg !45
  br label %for.cond, !dbg !46, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !50

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !51
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end5, !dbg !53

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink(i32 %data) #0 !dbg !55 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !56, metadata !DIExpression()), !dbg !57
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Global, align 4, !dbg !58
  %tobool = icmp ne i32 %0, 0, !dbg !58
  br i1 %tobool, label %if.then, label %if.else, !dbg !60

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !61
  br label %if.end7, !dbg !63

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !64, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !68, metadata !DIExpression()), !dbg !69
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !69
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !69
  %2 = load i32, i32* %data.addr, align 4, !dbg !70
  %cmp = icmp sge i32 %2, 0, !dbg !72
  br i1 %cmp, label %land.lhs.true, label %if.else6, !dbg !73

land.lhs.true:                                    ; preds = %if.else
  %3 = load i32, i32* %data.addr, align 4, !dbg !74
  %cmp1 = icmp slt i32 %3, 10, !dbg !75
  br i1 %cmp1, label %if.then2, label %if.else6, !dbg !76

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %data.addr, align 4, !dbg !77
  %idxprom = sext i32 %4 to i64, !dbg !79
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !79
  store i32 1, i32* %arrayidx, align 4, !dbg !80
  store i32 0, i32* %i, align 4, !dbg !81
  br label %for.cond, !dbg !83

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !84
  %cmp3 = icmp slt i32 %5, 10, !dbg !86
  br i1 %cmp3, label %for.body, label %for.end, !dbg !87

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !88
  %idxprom4 = sext i32 %6 to i64, !dbg !90
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !90
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !90
  call void @printIntLine(i32 %7), !dbg !91
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !93
  %inc = add nsw i32 %8, 1, !dbg !93
  store i32 %inc, i32* %i, align 4, !dbg !93
  br label %for.cond, !dbg !94, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !97

if.else6:                                         ; preds = %land.lhs.true, %if.else
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !98
  br label %if.end

if.end:                                           ; preds = %if.else6, %for.end
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret void, !dbg !100
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Sink(i32 %data) #0 !dbg !101 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !102, metadata !DIExpression()), !dbg !103
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global, align 4, !dbg !104
  %tobool = icmp ne i32 %0, 0, !dbg !104
  br i1 %tobool, label %if.then, label %if.end6, !dbg !106

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !107, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !111, metadata !DIExpression()), !dbg !112
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !112
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !112
  %2 = load i32, i32* %data.addr, align 4, !dbg !113
  %cmp = icmp sge i32 %2, 0, !dbg !115
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !116

land.lhs.true:                                    ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !117
  %cmp1 = icmp slt i32 %3, 10, !dbg !118
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !119

if.then2:                                         ; preds = %land.lhs.true
  %4 = load i32, i32* %data.addr, align 4, !dbg !120
  %idxprom = sext i32 %4 to i64, !dbg !122
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !122
  store i32 1, i32* %arrayidx, align 4, !dbg !123
  store i32 0, i32* %i, align 4, !dbg !124
  br label %for.cond, !dbg !126

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, i32* %i, align 4, !dbg !127
  %cmp3 = icmp slt i32 %5, 10, !dbg !129
  br i1 %cmp3, label %for.body, label %for.end, !dbg !130

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !131
  %idxprom4 = sext i32 %6 to i64, !dbg !133
  %arrayidx5 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom4, !dbg !133
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !133
  call void @printIntLine(i32 %7), !dbg !134
  br label %for.inc, !dbg !135

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !136
  %inc = add nsw i32 %8, 1, !dbg !136
  store i32 %inc, i32* %i, align 4, !dbg !136
  br label %for.cond, !dbg !137, !llvm.loop !138

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !140

if.else:                                          ; preds = %land.lhs.true, %if.then
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !141
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end6, !dbg !143

if.end6:                                          ; preds = %if.end, %entry
  ret void, !dbg !144
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink(i32 %data) #0 !dbg !145 {
entry:
  %data.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal, align 4, !dbg !148
  %tobool = icmp ne i32 %0, 0, !dbg !148
  br i1 %tobool, label %if.then, label %if.end5, !dbg !150

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !151, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !155, metadata !DIExpression()), !dbg !156
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !156
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !156
  %2 = load i32, i32* %data.addr, align 4, !dbg !157
  %cmp = icmp sge i32 %2, 0, !dbg !159
  br i1 %cmp, label %if.then1, label %if.else, !dbg !160

if.then1:                                         ; preds = %if.then
  %3 = load i32, i32* %data.addr, align 4, !dbg !161
  %idxprom = sext i32 %3 to i64, !dbg !163
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !163
  store i32 1, i32* %arrayidx, align 4, !dbg !164
  store i32 0, i32* %i, align 4, !dbg !165
  br label %for.cond, !dbg !167

for.cond:                                         ; preds = %for.inc, %if.then1
  %4 = load i32, i32* %i, align 4, !dbg !168
  %cmp2 = icmp slt i32 %4, 10, !dbg !170
  br i1 %cmp2, label %for.body, label %for.end, !dbg !171

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !172
  %idxprom3 = sext i32 %5 to i64, !dbg !174
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !174
  %6 = load i32, i32* %arrayidx4, align 4, !dbg !174
  call void @printIntLine(i32 %6), !dbg !175
  br label %for.inc, !dbg !176

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !177
  %inc = add nsw i32 %7, 1, !dbg !177
  store i32 %inc, i32* %i, align 4, !dbg !177
  br label %for.cond, !dbg !178, !llvm.loop !179

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !181

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !182
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %if.end5, !dbg !184

if.end5:                                          ; preds = %if.end, %entry
  ret void, !dbg !185
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_583/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badSink", scope: !1, file: !1, line: 25, type: !8, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "data", arg: 1, scope: !7, file: !1, line: 25, type: !10)
!12 = !DILocation(line: 25, column: 70, scope: !7)
!13 = !DILocation(line: 27, column: 8, scope: !14)
!14 = distinct !DILexicalBlock(scope: !7, file: !1, line: 27, column: 8)
!15 = !DILocation(line: 27, column: 8, scope: !7)
!16 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 30, type: !10)
!17 = distinct !DILexicalBlock(scope: !18, file: !1, line: 29, column: 9)
!18 = distinct !DILexicalBlock(scope: !14, file: !1, line: 28, column: 5)
!19 = !DILocation(line: 30, column: 17, scope: !17)
!20 = !DILocalVariable(name: "buffer", scope: !17, file: !1, line: 31, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 10)
!24 = !DILocation(line: 31, column: 17, scope: !17)
!25 = !DILocation(line: 34, column: 17, scope: !26)
!26 = distinct !DILexicalBlock(scope: !17, file: !1, line: 34, column: 17)
!27 = !DILocation(line: 34, column: 22, scope: !26)
!28 = !DILocation(line: 34, column: 17, scope: !17)
!29 = !DILocation(line: 36, column: 24, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 35, column: 13)
!31 = !DILocation(line: 36, column: 17, scope: !30)
!32 = !DILocation(line: 36, column: 30, scope: !30)
!33 = !DILocation(line: 38, column: 23, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 38, column: 17)
!35 = !DILocation(line: 38, column: 21, scope: !34)
!36 = !DILocation(line: 38, column: 28, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 38, column: 17)
!38 = !DILocation(line: 38, column: 30, scope: !37)
!39 = !DILocation(line: 38, column: 17, scope: !34)
!40 = !DILocation(line: 40, column: 41, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 39, column: 17)
!42 = !DILocation(line: 40, column: 34, scope: !41)
!43 = !DILocation(line: 40, column: 21, scope: !41)
!44 = !DILocation(line: 41, column: 17, scope: !41)
!45 = !DILocation(line: 38, column: 37, scope: !37)
!46 = !DILocation(line: 38, column: 17, scope: !37)
!47 = distinct !{!47, !39, !48, !49}
!48 = !DILocation(line: 41, column: 17, scope: !34)
!49 = !{!"llvm.loop.mustprogress"}
!50 = !DILocation(line: 42, column: 13, scope: !30)
!51 = !DILocation(line: 45, column: 17, scope: !52)
!52 = distinct !DILexicalBlock(scope: !26, file: !1, line: 44, column: 13)
!53 = !DILocation(line: 48, column: 5, scope: !18)
!54 = !DILocation(line: 49, column: 1, scope: !7)
!55 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink", scope: !1, file: !1, line: 61, type: !8, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!56 = !DILocalVariable(name: "data", arg: 1, scope: !55, file: !1, line: 61, type: !10)
!57 = !DILocation(line: 61, column: 75, scope: !55)
!58 = !DILocation(line: 63, column: 8, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 63, column: 8)
!60 = !DILocation(line: 63, column: 8, scope: !55)
!61 = !DILocation(line: 66, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 64, column: 5)
!63 = !DILocation(line: 67, column: 5, scope: !62)
!64 = !DILocalVariable(name: "i", scope: !65, file: !1, line: 71, type: !10)
!65 = distinct !DILexicalBlock(scope: !66, file: !1, line: 70, column: 9)
!66 = distinct !DILexicalBlock(scope: !59, file: !1, line: 69, column: 5)
!67 = !DILocation(line: 71, column: 17, scope: !65)
!68 = !DILocalVariable(name: "buffer", scope: !65, file: !1, line: 72, type: !21)
!69 = !DILocation(line: 72, column: 17, scope: !65)
!70 = !DILocation(line: 74, column: 17, scope: !71)
!71 = distinct !DILexicalBlock(scope: !65, file: !1, line: 74, column: 17)
!72 = !DILocation(line: 74, column: 22, scope: !71)
!73 = !DILocation(line: 74, column: 27, scope: !71)
!74 = !DILocation(line: 74, column: 30, scope: !71)
!75 = !DILocation(line: 74, column: 35, scope: !71)
!76 = !DILocation(line: 74, column: 17, scope: !65)
!77 = !DILocation(line: 76, column: 24, scope: !78)
!78 = distinct !DILexicalBlock(scope: !71, file: !1, line: 75, column: 13)
!79 = !DILocation(line: 76, column: 17, scope: !78)
!80 = !DILocation(line: 76, column: 30, scope: !78)
!81 = !DILocation(line: 78, column: 23, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !1, line: 78, column: 17)
!83 = !DILocation(line: 78, column: 21, scope: !82)
!84 = !DILocation(line: 78, column: 28, scope: !85)
!85 = distinct !DILexicalBlock(scope: !82, file: !1, line: 78, column: 17)
!86 = !DILocation(line: 78, column: 30, scope: !85)
!87 = !DILocation(line: 78, column: 17, scope: !82)
!88 = !DILocation(line: 80, column: 41, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 79, column: 17)
!90 = !DILocation(line: 80, column: 34, scope: !89)
!91 = !DILocation(line: 80, column: 21, scope: !89)
!92 = !DILocation(line: 81, column: 17, scope: !89)
!93 = !DILocation(line: 78, column: 37, scope: !85)
!94 = !DILocation(line: 78, column: 17, scope: !85)
!95 = distinct !{!95, !87, !96, !49}
!96 = !DILocation(line: 81, column: 17, scope: !82)
!97 = !DILocation(line: 82, column: 13, scope: !78)
!98 = !DILocation(line: 85, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !71, file: !1, line: 84, column: 13)
!100 = !DILocation(line: 89, column: 1, scope: !55)
!101 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Sink", scope: !1, file: !1, line: 92, type: !8, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!102 = !DILocalVariable(name: "data", arg: 1, scope: !101, file: !1, line: 92, type: !10)
!103 = !DILocation(line: 92, column: 75, scope: !101)
!104 = !DILocation(line: 94, column: 8, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 94, column: 8)
!106 = !DILocation(line: 94, column: 8, scope: !101)
!107 = !DILocalVariable(name: "i", scope: !108, file: !1, line: 97, type: !10)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 96, column: 9)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 95, column: 5)
!110 = !DILocation(line: 97, column: 17, scope: !108)
!111 = !DILocalVariable(name: "buffer", scope: !108, file: !1, line: 98, type: !21)
!112 = !DILocation(line: 98, column: 17, scope: !108)
!113 = !DILocation(line: 100, column: 17, scope: !114)
!114 = distinct !DILexicalBlock(scope: !108, file: !1, line: 100, column: 17)
!115 = !DILocation(line: 100, column: 22, scope: !114)
!116 = !DILocation(line: 100, column: 27, scope: !114)
!117 = !DILocation(line: 100, column: 30, scope: !114)
!118 = !DILocation(line: 100, column: 35, scope: !114)
!119 = !DILocation(line: 100, column: 17, scope: !108)
!120 = !DILocation(line: 102, column: 24, scope: !121)
!121 = distinct !DILexicalBlock(scope: !114, file: !1, line: 101, column: 13)
!122 = !DILocation(line: 102, column: 17, scope: !121)
!123 = !DILocation(line: 102, column: 30, scope: !121)
!124 = !DILocation(line: 104, column: 23, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 104, column: 17)
!126 = !DILocation(line: 104, column: 21, scope: !125)
!127 = !DILocation(line: 104, column: 28, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 104, column: 17)
!129 = !DILocation(line: 104, column: 30, scope: !128)
!130 = !DILocation(line: 104, column: 17, scope: !125)
!131 = !DILocation(line: 106, column: 41, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 105, column: 17)
!133 = !DILocation(line: 106, column: 34, scope: !132)
!134 = !DILocation(line: 106, column: 21, scope: !132)
!135 = !DILocation(line: 107, column: 17, scope: !132)
!136 = !DILocation(line: 104, column: 37, scope: !128)
!137 = !DILocation(line: 104, column: 17, scope: !128)
!138 = distinct !{!138, !130, !139, !49}
!139 = !DILocation(line: 107, column: 17, scope: !125)
!140 = !DILocation(line: 108, column: 13, scope: !121)
!141 = !DILocation(line: 111, column: 17, scope: !142)
!142 = distinct !DILexicalBlock(scope: !114, file: !1, line: 110, column: 13)
!143 = !DILocation(line: 114, column: 5, scope: !109)
!144 = !DILocation(line: 115, column: 1, scope: !101)
!145 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink", scope: !1, file: !1, line: 118, type: !8, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!146 = !DILocalVariable(name: "data", arg: 1, scope: !145, file: !1, line: 118, type: !10)
!147 = !DILocation(line: 118, column: 74, scope: !145)
!148 = !DILocation(line: 120, column: 8, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 120, column: 8)
!150 = !DILocation(line: 120, column: 8, scope: !145)
!151 = !DILocalVariable(name: "i", scope: !152, file: !1, line: 123, type: !10)
!152 = distinct !DILexicalBlock(scope: !153, file: !1, line: 122, column: 9)
!153 = distinct !DILexicalBlock(scope: !149, file: !1, line: 121, column: 5)
!154 = !DILocation(line: 123, column: 17, scope: !152)
!155 = !DILocalVariable(name: "buffer", scope: !152, file: !1, line: 124, type: !21)
!156 = !DILocation(line: 124, column: 17, scope: !152)
!157 = !DILocation(line: 127, column: 17, scope: !158)
!158 = distinct !DILexicalBlock(scope: !152, file: !1, line: 127, column: 17)
!159 = !DILocation(line: 127, column: 22, scope: !158)
!160 = !DILocation(line: 127, column: 17, scope: !152)
!161 = !DILocation(line: 129, column: 24, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !1, line: 128, column: 13)
!163 = !DILocation(line: 129, column: 17, scope: !162)
!164 = !DILocation(line: 129, column: 30, scope: !162)
!165 = !DILocation(line: 131, column: 23, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 131, column: 17)
!167 = !DILocation(line: 131, column: 21, scope: !166)
!168 = !DILocation(line: 131, column: 28, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 131, column: 17)
!170 = !DILocation(line: 131, column: 30, scope: !169)
!171 = !DILocation(line: 131, column: 17, scope: !166)
!172 = !DILocation(line: 133, column: 41, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 132, column: 17)
!174 = !DILocation(line: 133, column: 34, scope: !173)
!175 = !DILocation(line: 133, column: 21, scope: !173)
!176 = !DILocation(line: 134, column: 17, scope: !173)
!177 = !DILocation(line: 131, column: 37, scope: !169)
!178 = !DILocation(line: 131, column: 17, scope: !169)
!179 = distinct !{!179, !171, !180, !49}
!180 = !DILocation(line: 134, column: 17, scope: !166)
!181 = !DILocation(line: 135, column: 13, scope: !162)
!182 = !DILocation(line: 138, column: 17, scope: !183)
!183 = distinct !DILexicalBlock(scope: !158, file: !1, line: 137, column: 13)
!184 = !DILocation(line: 141, column: 5, scope: !153)
!185 = !DILocation(line: 142, column: 1, scope: !145)
