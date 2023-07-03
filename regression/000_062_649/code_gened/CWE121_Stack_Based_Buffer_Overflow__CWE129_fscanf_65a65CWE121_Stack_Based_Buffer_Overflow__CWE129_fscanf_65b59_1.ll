; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65a65CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b59_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65a65CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b59_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65a65CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b59_1(i32 %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_data_0.addr = alloca i32, align 4
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_funcPtr_0 = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_buffer_0 = alloca [10 x i32], align 16
  store i32 %_goodB2G_data_0, i32* %_goodB2G_data_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata void (i32)** %_goodB2G_funcPtr_0, metadata !18, metadata !DIExpression()), !dbg !19
  store void (i32)* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodB2GSink, void (i32)** %_goodB2G_funcPtr_0, align 8, !dbg !19
  store i32 -1, i32* %_goodB2G_data_0.addr, align 4, !dbg !20
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !21
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %_goodB2G_data_0.addr), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_i_0, metadata !23, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_buffer_0, metadata !27, metadata !DIExpression()), !dbg !31
  %1 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_buffer_0 to i8*, !dbg !31
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !31
  %2 = load i32, i32* %_goodB2G_data_0.addr, align 4, !dbg !32
  %cmp = icmp sge i32 %2, 0, !dbg !34
  br i1 %cmp, label %if.then, label %if.else, !dbg !35

if.then:                                          ; preds = %entry
  %3 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !36
  %4 = load i32, i32* %_goodB2G_data_0.addr, align 4, !dbg !38
  call void %3(i32 %4), !dbg !36
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_i_0, align 4, !dbg !39
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_i_0, align 4, !dbg !42
  %cmp1 = icmp slt i32 %5, 10, !dbg !44
  br i1 %cmp1, label %for.body, label %for.end, !dbg !45

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_i_0, align 4, !dbg !46
  %idxprom = sext i32 %6 to i64, !dbg !48
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_buffer_0, i64 0, i64 %idxprom, !dbg !48
  %7 = load i32, i32* %arrayidx, align 4, !dbg !48
  call void @printIntLine(i32 %7), !dbg !49
  br label %for.inc, !dbg !50

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_i_0, align 4, !dbg !51
  %inc = add nsw i32 %8, 1, !dbg !51
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_i_0, align 4, !dbg !51
  br label %for.cond, !dbg !52, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !56

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !57
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_label_, !dbg !59

CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_label_: ; preds = %if.end
  call void @llvm.dbg.label(metadata !60), !dbg !61
  br label %goodB2G_label_, !dbg !62

goodB2G_label_:                                   ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_label_
  call void @llvm.dbg.label(metadata !63), !dbg !64
  ret void, !dbg !65
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodB2GSink(i32) #2

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
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65a65CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b59_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_649/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65a65CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b59_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !10}
!14 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!15 = !DILocation(line: 3, column: 123, scope: !7)
!16 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !11)
!17 = !DILocation(line: 3, column: 147, scope: !7)
!18 = !DILocalVariable(name: "_goodB2G_funcPtr_0", scope: !7, file: !1, line: 5, type: !11)
!19 = !DILocation(line: 5, column: 10, scope: !7)
!20 = !DILocation(line: 6, column: 19, scope: !7)
!21 = !DILocation(line: 7, column: 10, scope: !7)
!22 = !DILocation(line: 7, column: 3, scope: !7)
!23 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_i_0", scope: !24, file: !1, line: 10, type: !10)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 5)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 3)
!26 = !DILocation(line: 10, column: 11, scope: !24)
!27 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_buffer_0", scope: !24, file: !1, line: 11, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 10)
!31 = !DILocation(line: 11, column: 11, scope: !24)
!32 = !DILocation(line: 12, column: 11, scope: !33)
!33 = distinct !DILexicalBlock(scope: !24, file: !1, line: 12, column: 11)
!34 = !DILocation(line: 12, column: 27, scope: !33)
!35 = !DILocation(line: 12, column: 11, scope: !24)
!36 = !DILocation(line: 14, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 13, column: 7)
!38 = !DILocation(line: 14, column: 16, scope: !37)
!39 = !DILocation(line: 15, column: 85, scope: !40)
!40 = distinct !DILexicalBlock(scope: !37, file: !1, line: 15, column: 9)
!41 = !DILocation(line: 15, column: 14, scope: !40)
!42 = !DILocation(line: 15, column: 90, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 15, column: 9)
!44 = !DILocation(line: 15, column: 161, scope: !43)
!45 = !DILocation(line: 15, column: 9, scope: !40)
!46 = !DILocation(line: 17, column: 100, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 16, column: 9)
!48 = !DILocation(line: 17, column: 24, scope: !47)
!49 = !DILocation(line: 17, column: 11, scope: !47)
!50 = !DILocation(line: 18, column: 9, scope: !47)
!51 = !DILocation(line: 15, column: 237, scope: !43)
!52 = !DILocation(line: 15, column: 9, scope: !43)
!53 = distinct !{!53, !45, !54, !55}
!54 = !DILocation(line: 18, column: 9, scope: !40)
!55 = !{!"llvm.loop.mustprogress"}
!56 = !DILocation(line: 20, column: 7, scope: !37)
!57 = !DILocation(line: 23, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !33, file: !1, line: 22, column: 7)
!59 = !DILocation(line: 26, column: 5, scope: !24)
!60 = !DILabel(scope: !25, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink_label_", file: !1, line: 27)
!61 = !DILocation(line: 27, column: 5, scope: !25)
!62 = !DILocation(line: 32, column: 3, scope: !25)
!63 = !DILabel(scope: !7, name: "goodB2G_label_", file: !1, line: 33)
!64 = !DILocation(line: 33, column: 3, scope: !7)
!65 = !DILocation(line: 38, column: 1, scope: !7)
