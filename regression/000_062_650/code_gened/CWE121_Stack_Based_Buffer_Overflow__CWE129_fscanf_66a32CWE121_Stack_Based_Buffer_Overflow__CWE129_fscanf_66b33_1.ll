; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66a32CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b33_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66a32CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b33_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66a32CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b33_1(i32 %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_data_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_data_0.addr = alloca i32, align 4
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_dataArray_0 = alloca [5 x i32], align 16
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_buffer_0 = alloca [10 x i32], align 16
  store i32 %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_data_0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_data_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_data_0.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata [5 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_dataArray_0, metadata !18, metadata !DIExpression()), !dbg !22
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_data_0.addr, align 4, !dbg !23
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !24
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_data_0.addr), !dbg !25
  %1 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_data_0.addr, align 4, !dbg !26
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_dataArray_0, i64 0, i64 2, !dbg !27
  store i32 %1, i32* %arrayidx, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_data_0, metadata !29, metadata !DIExpression()), !dbg !31
  %arrayidx1 = getelementptr inbounds [5 x i32], [5 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_dataArray_0, i64 0, i64 2, !dbg !32
  %2 = load i32, i32* %arrayidx1, align 8, !dbg !32
  store i32 %2, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_data_0, align 4, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_i_0, metadata !33, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_buffer_0, metadata !36, metadata !DIExpression()), !dbg !40
  %3 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_buffer_0 to i8*, !dbg !40
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !40
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_data_0, align 4, !dbg !41
  %cmp = icmp sge i32 %4, 0, !dbg !43
  br i1 %cmp, label %if.then, label %if.else, !dbg !44

if.then:                                          ; preds = %entry
  %5 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !45
  %6 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_data_0, align 4, !dbg !47
  call void %5(i32 %6), !dbg !45
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_i_0, align 4, !dbg !48
  br label %for.cond, !dbg !50

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_i_0, align 4, !dbg !51
  %cmp2 = icmp slt i32 %7, 10, !dbg !53
  br i1 %cmp2, label %for.body, label %for.end, !dbg !54

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_i_0, align 4, !dbg !55
  %idxprom = sext i32 %8 to i64, !dbg !57
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_buffer_0, i64 0, i64 %idxprom, !dbg !57
  %9 = load i32, i32* %arrayidx3, align 4, !dbg !57
  call void @printIntLine(i32 %9), !dbg !58
  br label %for.inc, !dbg !59

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_i_0, align 4, !dbg !60
  %inc = add nsw i32 %10, 1, !dbg !60
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_i_0, align 4, !dbg !60
  br label %for.cond, !dbg !61, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !65

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !66
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_label_, !dbg !68

CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_label_: ; preds = %if.end
  call void @llvm.dbg.label(metadata !69), !dbg !70
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_label_, !dbg !71

CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_label_: ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_label_
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
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66a32CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b33_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_650/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66a32CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b33_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !10}
!14 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_data_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!15 = !DILocation(line: 3, column: 123, scope: !7)
!16 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !11)
!17 = !DILocation(line: 3, column: 196, scope: !7)
!18 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_dataArray_0", scope: !7, file: !1, line: 5, type: !19)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 5)
!22 = !DILocation(line: 5, column: 7, scope: !7)
!23 = !DILocation(line: 6, column: 68, scope: !7)
!24 = !DILocation(line: 7, column: 10, scope: !7)
!25 = !DILocation(line: 7, column: 3, scope: !7)
!26 = !DILocation(line: 8, column: 78, scope: !7)
!27 = !DILocation(line: 8, column: 3, scope: !7)
!28 = !DILocation(line: 8, column: 76, scope: !7)
!29 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_data_0", scope: !30, file: !1, line: 10, type: !10)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 3)
!31 = !DILocation(line: 10, column: 9, scope: !30)
!32 = !DILocation(line: 10, column: 81, scope: !30)
!33 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_i_0", scope: !34, file: !1, line: 12, type: !10)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 11, column: 5)
!35 = !DILocation(line: 12, column: 11, scope: !34)
!36 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_buffer_0", scope: !34, file: !1, line: 13, type: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 10)
!40 = !DILocation(line: 13, column: 11, scope: !34)
!41 = !DILocation(line: 14, column: 11, scope: !42)
!42 = distinct !DILexicalBlock(scope: !34, file: !1, line: 14, column: 11)
!43 = !DILocation(line: 14, column: 81, scope: !42)
!44 = !DILocation(line: 14, column: 11, scope: !34)
!45 = !DILocation(line: 16, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 15, column: 7)
!47 = !DILocation(line: 16, column: 16, scope: !46)
!48 = !DILocation(line: 17, column: 81, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 17, column: 9)
!50 = !DILocation(line: 17, column: 14, scope: !49)
!51 = !DILocation(line: 17, column: 86, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 17, column: 9)
!53 = !DILocation(line: 17, column: 153, scope: !52)
!54 = !DILocation(line: 17, column: 9, scope: !49)
!55 = !DILocation(line: 19, column: 96, scope: !56)
!56 = distinct !DILexicalBlock(scope: !52, file: !1, line: 18, column: 9)
!57 = !DILocation(line: 19, column: 24, scope: !56)
!58 = !DILocation(line: 19, column: 11, scope: !56)
!59 = !DILocation(line: 20, column: 9, scope: !56)
!60 = !DILocation(line: 17, column: 225, scope: !52)
!61 = !DILocation(line: 17, column: 9, scope: !52)
!62 = distinct !{!62, !54, !63, !64}
!63 = !DILocation(line: 20, column: 9, scope: !49)
!64 = !{!"llvm.loop.mustprogress"}
!65 = !DILocation(line: 22, column: 7, scope: !46)
!66 = !DILocation(line: 25, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !42, file: !1, line: 24, column: 7)
!68 = !DILocation(line: 28, column: 5, scope: !34)
!69 = !DILabel(scope: !30, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66b_badSink_label_", file: !1, line: 29)
!70 = !DILocation(line: 29, column: 5, scope: !30)
!71 = !DILocation(line: 34, column: 3, scope: !30)
!72 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_66_bad_label_", file: !1, line: 35)
!73 = !DILocation(line: 35, column: 3, scope: !7)
!74 = !DILocation(line: 40, column: 1, scope: !7)
