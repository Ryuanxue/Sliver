; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63a31CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b32_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63a31CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b32_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63a31CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b32_1(i32 %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63_bad_data_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63_bad_data_0.addr = alloca i32, align 4
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_buffer_0 = alloca [10 x i32], align 16
  store i32 %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63_bad_data_0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63_bad_data_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63_bad_data_0.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63_bad_data_0.addr, align 4, !dbg !18
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !19
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63_bad_data_0.addr), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_data_0, metadata !21, metadata !DIExpression()), !dbg !23
  %1 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63_bad_data_0.addr, align 4, !dbg !24
  store i32 %1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_data_0, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_i_0, metadata !25, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_buffer_0, metadata !28, metadata !DIExpression()), !dbg !32
  %2 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_buffer_0 to i8*, !dbg !32
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !32
  %3 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_data_0, align 4, !dbg !33
  %cmp = icmp sge i32 %3, 0, !dbg !35
  br i1 %cmp, label %if.then, label %if.else, !dbg !36

if.then:                                          ; preds = %entry
  %4 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !37
  %5 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_data_0, align 4, !dbg !39
  call void %4(i32 %5), !dbg !37
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_i_0, align 4, !dbg !40
  br label %for.cond, !dbg !42

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_i_0, align 4, !dbg !43
  %cmp1 = icmp slt i32 %6, 10, !dbg !45
  br i1 %cmp1, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_i_0, align 4, !dbg !47
  %idxprom = sext i32 %7 to i64, !dbg !49
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_buffer_0, i64 0, i64 %idxprom, !dbg !49
  %8 = load i32, i32* %arrayidx, align 4, !dbg !49
  call void @printIntLine(i32 %8), !dbg !50
  br label %for.inc, !dbg !51

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_i_0, align 4, !dbg !52
  %inc = add nsw i32 %9, 1, !dbg !52
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_i_0, align 4, !dbg !52
  br label %for.cond, !dbg !53, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !57

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !58
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_label_, !dbg !60

CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_label_: ; preds = %if.end
  call void @llvm.dbg.label(metadata !61), !dbg !62
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63_bad_label_, !dbg !63

CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63_bad_label_: ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_label_
  call void @llvm.dbg.label(metadata !64), !dbg !65
  ret void, !dbg !66
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
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63a31CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b32_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_647/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63a31CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b32_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !10}
!14 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63_bad_data_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!15 = !DILocation(line: 3, column: 123, scope: !7)
!16 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !11)
!17 = !DILocation(line: 3, column: 196, scope: !7)
!18 = !DILocation(line: 5, column: 68, scope: !7)
!19 = !DILocation(line: 6, column: 10, scope: !7)
!20 = !DILocation(line: 6, column: 3, scope: !7)
!21 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_data_0", scope: !22, file: !1, line: 8, type: !10)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 3)
!23 = !DILocation(line: 8, column: 9, scope: !22)
!24 = !DILocation(line: 8, column: 81, scope: !22)
!25 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_i_0", scope: !26, file: !1, line: 10, type: !10)
!26 = distinct !DILexicalBlock(scope: !22, file: !1, line: 9, column: 5)
!27 = !DILocation(line: 10, column: 11, scope: !26)
!28 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_buffer_0", scope: !26, file: !1, line: 11, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 10)
!32 = !DILocation(line: 11, column: 11, scope: !26)
!33 = !DILocation(line: 12, column: 11, scope: !34)
!34 = distinct !DILexicalBlock(scope: !26, file: !1, line: 12, column: 11)
!35 = !DILocation(line: 12, column: 81, scope: !34)
!36 = !DILocation(line: 12, column: 11, scope: !26)
!37 = !DILocation(line: 14, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !1, line: 13, column: 7)
!39 = !DILocation(line: 14, column: 16, scope: !38)
!40 = !DILocation(line: 15, column: 81, scope: !41)
!41 = distinct !DILexicalBlock(scope: !38, file: !1, line: 15, column: 9)
!42 = !DILocation(line: 15, column: 14, scope: !41)
!43 = !DILocation(line: 15, column: 86, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 15, column: 9)
!45 = !DILocation(line: 15, column: 153, scope: !44)
!46 = !DILocation(line: 15, column: 9, scope: !41)
!47 = !DILocation(line: 17, column: 96, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 16, column: 9)
!49 = !DILocation(line: 17, column: 24, scope: !48)
!50 = !DILocation(line: 17, column: 11, scope: !48)
!51 = !DILocation(line: 18, column: 9, scope: !48)
!52 = !DILocation(line: 15, column: 225, scope: !44)
!53 = !DILocation(line: 15, column: 9, scope: !44)
!54 = distinct !{!54, !46, !55, !56}
!55 = !DILocation(line: 18, column: 9, scope: !41)
!56 = !{!"llvm.loop.mustprogress"}
!57 = !DILocation(line: 20, column: 7, scope: !38)
!58 = !DILocation(line: 23, column: 9, scope: !59)
!59 = distinct !DILexicalBlock(scope: !34, file: !1, line: 22, column: 7)
!60 = !DILocation(line: 26, column: 5, scope: !26)
!61 = !DILabel(scope: !22, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63b_badSink_label_", file: !1, line: 27)
!62 = !DILocation(line: 27, column: 5, scope: !22)
!63 = !DILocation(line: 32, column: 3, scope: !22)
!64 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_63_bad_label_", file: !1, line: 33)
!65 = !DILocation(line: 33, column: 3, scope: !7)
!66 = !DILocation(line: 38, column: 1, scope: !7)
