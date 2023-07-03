; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1235CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1261_1_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1235CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1261_1_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1235CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1261_1_1(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0, align 4, !dbg !22
  store i32 7, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0, metadata !26, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_buffer_0, metadata !31, metadata !DIExpression()), !dbg !35
  %0 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_buffer_0 to i8*, !dbg !35
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !35
  %1 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0, align 4, !dbg !36
  %cmp = icmp sge i32 %1, 0, !dbg !38
  br i1 %cmp, label %if.then, label %if.else, !dbg !39

if.then:                                          ; preds = %entry
  %2 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !40
  %3 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0, align 4, !dbg !42
  call void %2(i32 %3), !dbg !40
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0, align 4, !dbg !43
  br label %for.cond, !dbg !45

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0, align 4, !dbg !46
  %cmp1 = icmp slt i32 %4, 10, !dbg !48
  br i1 %cmp1, label %for.body, label %for.end, !dbg !49

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0, align 4, !dbg !50
  %idxprom = sext i32 %5 to i64, !dbg !52
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_buffer_0, i64 0, i64 %idxprom, !dbg !52
  %6 = load i32, i32* %arrayidx, align 4, !dbg !52
  call void @printIntLine(i32 %6), !dbg !53
  br label %for.inc, !dbg !54

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0, align 4, !dbg !55
  %inc = add nsw i32 %7, 1, !dbg !55
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0, align 4, !dbg !55
  br label %for.cond, !dbg !56, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !60

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !61
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_label_, !dbg !63

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_label_: ; preds = %if.end
  call void @llvm.dbg.label(metadata !64), !dbg !65
  ret void, !dbg !66
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1235CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1261_1_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_575/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1235CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1261_1_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 123, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 202, scope: !7)
!20 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0", scope: !7, file: !1, line: 5, type: !15)
!21 = !DILocation(line: 5, column: 7, scope: !7)
!22 = !DILocation(line: 6, column: 67, scope: !7)
!23 = !DILocation(line: 23, column: 69, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 22, column: 3)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 7)
!26 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0", scope: !27, file: !1, line: 29, type: !15)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 28, column: 5)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 27, column: 3)
!29 = distinct !DILexicalBlock(scope: !7, file: !1, line: 26, column: 7)
!30 = !DILocation(line: 29, column: 11, scope: !27)
!31 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_buffer_0", scope: !27, file: !1, line: 30, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 10)
!35 = !DILocation(line: 30, column: 11, scope: !27)
!36 = !DILocation(line: 31, column: 11, scope: !37)
!37 = distinct !DILexicalBlock(scope: !27, file: !1, line: 31, column: 11)
!38 = !DILocation(line: 31, column: 75, scope: !37)
!39 = !DILocation(line: 31, column: 11, scope: !27)
!40 = !DILocation(line: 33, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 32, column: 7)
!42 = !DILocation(line: 33, column: 16, scope: !41)
!43 = !DILocation(line: 34, column: 75, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 34, column: 9)
!45 = !DILocation(line: 34, column: 14, scope: !44)
!46 = !DILocation(line: 34, column: 80, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 34, column: 9)
!48 = !DILocation(line: 34, column: 141, scope: !47)
!49 = !DILocation(line: 34, column: 9, scope: !44)
!50 = !DILocation(line: 36, column: 90, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 35, column: 9)
!52 = !DILocation(line: 36, column: 24, scope: !51)
!53 = !DILocation(line: 36, column: 11, scope: !51)
!54 = !DILocation(line: 37, column: 9, scope: !51)
!55 = !DILocation(line: 34, column: 207, scope: !47)
!56 = !DILocation(line: 34, column: 9, scope: !47)
!57 = distinct !{!57, !49, !58, !59}
!58 = !DILocation(line: 37, column: 9, scope: !44)
!59 = !{!"llvm.loop.mustprogress"}
!60 = !DILocation(line: 39, column: 7, scope: !41)
!61 = !DILocation(line: 42, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !37, file: !1, line: 41, column: 7)
!63 = !DILocation(line: 26, column: 7, scope: !29)
!64 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_label_", file: !1, line: 69)
!65 = !DILocation(line: 69, column: 3, scope: !7)
!66 = !DILocation(line: 74, column: 1, scope: !7)
