; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68a66CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b89_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68a66CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b89_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodB2GData = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68a66CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b89_1(i32 %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_data_0.addr = alloca i32, align 4
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_buffer_0 = alloca [10 x i32], align 16
  store i32 %_goodB2G_data_0, i32* %_goodB2G_data_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 -1, i32* %_goodB2G_data_0.addr, align 4, !dbg !18
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !19
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %_goodB2G_data_0.addr), !dbg !20
  %1 = load i32, i32* %_goodB2G_data_0.addr, align 4, !dbg !21
  store i32 %1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodB2GData, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_data_0, metadata !23, metadata !DIExpression()), !dbg !25
  %2 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodB2GData, align 4, !dbg !26
  store i32 %2, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_data_0, align 4, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_i_0, metadata !27, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_buffer_0, metadata !30, metadata !DIExpression()), !dbg !34
  %3 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_buffer_0 to i8*, !dbg !34
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !34
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_data_0, align 4, !dbg !35
  %cmp = icmp sge i32 %4, 0, !dbg !37
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !38

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_data_0, align 4, !dbg !39
  %cmp1 = icmp slt i32 %5, 10, !dbg !40
  br i1 %cmp1, label %if.then, label %if.else, !dbg !41

if.then:                                          ; preds = %land.lhs.true
  %6 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !42
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_data_0, align 4, !dbg !44
  call void %6(i32 %7), !dbg !42
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_i_0, align 4, !dbg !45
  br label %for.cond, !dbg !47

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_i_0, align 4, !dbg !48
  %cmp2 = icmp slt i32 %8, 10, !dbg !50
  br i1 %cmp2, label %for.body, label %for.end, !dbg !51

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_i_0, align 4, !dbg !52
  %idxprom = sext i32 %9 to i64, !dbg !54
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_buffer_0, i64 0, i64 %idxprom, !dbg !54
  %10 = load i32, i32* %arrayidx, align 4, !dbg !54
  call void @printIntLine(i32 %10), !dbg !55
  br label %for.inc, !dbg !56

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_i_0, align 4, !dbg !57
  %inc = add nsw i32 %11, 1, !dbg !57
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_i_0, align 4, !dbg !57
  br label %for.cond, !dbg !58, !llvm.loop !59

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !62

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !63
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_label_, !dbg !65

CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_label_: ; preds = %if.end
  call void @llvm.dbg.label(metadata !66), !dbg !67
  br label %goodB2G_label_, !dbg !68

goodB2G_label_:                                   ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_label_
  call void @llvm.dbg.label(metadata !69), !dbg !70
  ret void, !dbg !71
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68a66CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b89_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_652/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68a66CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b89_1", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !10}
!14 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!15 = !DILocation(line: 4, column: 123, scope: !7)
!16 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 4, type: !11)
!17 = !DILocation(line: 4, column: 147, scope: !7)
!18 = !DILocation(line: 6, column: 19, scope: !7)
!19 = !DILocation(line: 7, column: 10, scope: !7)
!20 = !DILocation(line: 7, column: 3, scope: !7)
!21 = !DILocation(line: 8, column: 70, scope: !7)
!22 = !DILocation(line: 8, column: 68, scope: !7)
!23 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_data_0", scope: !24, file: !1, line: 10, type: !10)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 3)
!25 = !DILocation(line: 10, column: 9, scope: !24)
!26 = !DILocation(line: 10, column: 85, scope: !24)
!27 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_i_0", scope: !28, file: !1, line: 12, type: !10)
!28 = distinct !DILexicalBlock(scope: !24, file: !1, line: 11, column: 5)
!29 = !DILocation(line: 12, column: 11, scope: !28)
!30 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_buffer_0", scope: !28, file: !1, line: 13, type: !31)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 10)
!34 = !DILocation(line: 13, column: 11, scope: !28)
!35 = !DILocation(line: 14, column: 12, scope: !36)
!36 = distinct !DILexicalBlock(scope: !28, file: !1, line: 14, column: 11)
!37 = !DILocation(line: 14, column: 86, scope: !36)
!38 = !DILocation(line: 14, column: 92, scope: !36)
!39 = !DILocation(line: 14, column: 96, scope: !36)
!40 = !DILocation(line: 14, column: 170, scope: !36)
!41 = !DILocation(line: 14, column: 11, scope: !28)
!42 = !DILocation(line: 16, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !36, file: !1, line: 15, column: 7)
!44 = !DILocation(line: 16, column: 16, scope: !43)
!45 = !DILocation(line: 17, column: 85, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 17, column: 9)
!47 = !DILocation(line: 17, column: 14, scope: !46)
!48 = !DILocation(line: 17, column: 90, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 17, column: 9)
!50 = !DILocation(line: 17, column: 161, scope: !49)
!51 = !DILocation(line: 17, column: 9, scope: !46)
!52 = !DILocation(line: 19, column: 100, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 18, column: 9)
!54 = !DILocation(line: 19, column: 24, scope: !53)
!55 = !DILocation(line: 19, column: 11, scope: !53)
!56 = !DILocation(line: 20, column: 9, scope: !53)
!57 = !DILocation(line: 17, column: 237, scope: !49)
!58 = !DILocation(line: 17, column: 9, scope: !49)
!59 = distinct !{!59, !51, !60, !61}
!60 = !DILocation(line: 20, column: 9, scope: !46)
!61 = !{!"llvm.loop.mustprogress"}
!62 = !DILocation(line: 22, column: 7, scope: !43)
!63 = !DILocation(line: 25, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !36, file: !1, line: 24, column: 7)
!65 = !DILocation(line: 28, column: 5, scope: !28)
!66 = !DILabel(scope: !24, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink_label_", file: !1, line: 29)
!67 = !DILocation(line: 29, column: 5, scope: !24)
!68 = !DILocation(line: 34, column: 3, scope: !24)
!69 = !DILabel(scope: !7, name: "goodB2G_label_", file: !1, line: 35)
!70 = !DILocation(line: 35, column: 3, scope: !7)
!71 = !DILocation(line: 40, column: 1, scope: !7)
