; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64a60CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b94_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64a60CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b94_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64a60CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b94_1(i32 %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !10 {
entry:
  %_goodB2G_data_0.addr = alloca i32, align 4
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_dataPtr_0 = alloca i32*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_buffer_0 = alloca [10 x i32], align 16
  store i32 %_goodB2G_data_0, i32* %_goodB2G_data_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 -1, i32* %_goodB2G_data_0.addr, align 4, !dbg !20
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !21
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %_goodB2G_data_0.addr), !dbg !22
  call void @llvm.dbg.declare(metadata i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_dataPtr_0, metadata !23, metadata !DIExpression()), !dbg !25
  store i32* %_goodB2G_data_0.addr, i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_dataPtr_0, align 8, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_data_0, metadata !26, metadata !DIExpression()), !dbg !27
  %1 = load i32*, i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_dataPtr_0, align 8, !dbg !28
  %2 = load i32, i32* %1, align 4, !dbg !29
  store i32 %2, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_data_0, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_i_0, metadata !30, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_buffer_0, metadata !33, metadata !DIExpression()), !dbg !37
  %3 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_buffer_0 to i8*, !dbg !37
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !37
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_data_0, align 4, !dbg !38
  %cmp = icmp sge i32 %4, 0, !dbg !40
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !41

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_data_0, align 4, !dbg !42
  %cmp1 = icmp slt i32 %5, 10, !dbg !43
  br i1 %cmp1, label %if.then, label %if.else, !dbg !44

if.then:                                          ; preds = %land.lhs.true
  %6 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !45
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_data_0, align 4, !dbg !47
  call void %6(i32 %7), !dbg !45
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_i_0, align 4, !dbg !48
  br label %for.cond, !dbg !50

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_i_0, align 4, !dbg !51
  %cmp2 = icmp slt i32 %8, 10, !dbg !53
  br i1 %cmp2, label %for.body, label %for.end, !dbg !54

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_i_0, align 4, !dbg !55
  %idxprom = sext i32 %9 to i64, !dbg !57
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_buffer_0, i64 0, i64 %idxprom, !dbg !57
  %10 = load i32, i32* %arrayidx, align 4, !dbg !57
  call void @printIntLine(i32 %10), !dbg !58
  br label %for.inc, !dbg !59

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_i_0, align 4, !dbg !60
  %inc = add nsw i32 %11, 1, !dbg !60
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_i_0, align 4, !dbg !60
  br label %for.cond, !dbg !61, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !65

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !66
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_label_, !dbg !68

CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_label_: ; preds = %if.end
  call void @llvm.dbg.label(metadata !69), !dbg !70
  br label %goodB2G_label_, !dbg !71

goodB2G_label_:                                   ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_label_
  call void @llvm.dbg.label(metadata !72), !dbg !73
  ret void, !dbg !74
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64a60CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b94_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_648/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64a60CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b94_1", scope: !1, file: !1, line: 3, type: !11, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !5, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !5}
!16 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !10, file: !1, line: 3, type: !5)
!17 = !DILocation(line: 3, column: 123, scope: !10)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !10, file: !1, line: 3, type: !13)
!19 = !DILocation(line: 3, column: 147, scope: !10)
!20 = !DILocation(line: 5, column: 19, scope: !10)
!21 = !DILocation(line: 6, column: 10, scope: !10)
!22 = !DILocation(line: 6, column: 3, scope: !10)
!23 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_dataPtr_0", scope: !24, file: !1, line: 8, type: !4)
!24 = distinct !DILexicalBlock(scope: !10, file: !1, line: 7, column: 3)
!25 = !DILocation(line: 8, column: 10, scope: !24)
!26 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_data_0", scope: !24, file: !1, line: 9, type: !5)
!27 = !DILocation(line: 9, column: 9, scope: !24)
!28 = !DILocation(line: 9, column: 86, scope: !24)
!29 = !DILocation(line: 9, column: 85, scope: !24)
!30 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_i_0", scope: !31, file: !1, line: 11, type: !5)
!31 = distinct !DILexicalBlock(scope: !24, file: !1, line: 10, column: 5)
!32 = !DILocation(line: 11, column: 11, scope: !31)
!33 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_buffer_0", scope: !31, file: !1, line: 12, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 320, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 10)
!37 = !DILocation(line: 12, column: 11, scope: !31)
!38 = !DILocation(line: 13, column: 12, scope: !39)
!39 = distinct !DILexicalBlock(scope: !31, file: !1, line: 13, column: 11)
!40 = !DILocation(line: 13, column: 86, scope: !39)
!41 = !DILocation(line: 13, column: 92, scope: !39)
!42 = !DILocation(line: 13, column: 96, scope: !39)
!43 = !DILocation(line: 13, column: 170, scope: !39)
!44 = !DILocation(line: 13, column: 11, scope: !31)
!45 = !DILocation(line: 15, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !39, file: !1, line: 14, column: 7)
!47 = !DILocation(line: 15, column: 16, scope: !46)
!48 = !DILocation(line: 16, column: 85, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 16, column: 9)
!50 = !DILocation(line: 16, column: 14, scope: !49)
!51 = !DILocation(line: 16, column: 90, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 16, column: 9)
!53 = !DILocation(line: 16, column: 161, scope: !52)
!54 = !DILocation(line: 16, column: 9, scope: !49)
!55 = !DILocation(line: 18, column: 100, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !1, line: 17, column: 9)
!57 = !DILocation(line: 18, column: 24, scope: !56)
!58 = !DILocation(line: 18, column: 11, scope: !56)
!59 = !DILocation(line: 19, column: 9, scope: !56)
!60 = !DILocation(line: 16, column: 237, scope: !52)
!61 = !DILocation(line: 16, column: 9, scope: !52)
!62 = distinct !{!62, !54, !63, !64}
!63 = !DILocation(line: 19, column: 9, scope: !49)
!64 = !{!"llvm.loop.mustprogress"}
!65 = !DILocation(line: 21, column: 7, scope: !46)
!66 = !DILocation(line: 24, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !39, file: !1, line: 23, column: 7)
!68 = !DILocation(line: 27, column: 5, scope: !31)
!69 = !DILabel(scope: !24, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink_label_", file: !1, line: 28)
!70 = !DILocation(line: 28, column: 5, scope: !24)
!71 = !DILocation(line: 33, column: 3, scope: !24)
!72 = !DILabel(scope: !10, name: "goodB2G_label_", file: !1, line: 34)
!73 = !DILocation(line: 34, column: 3, scope: !10)
!74 = !DILocation(line: 39, column: 1, scope: !10)
