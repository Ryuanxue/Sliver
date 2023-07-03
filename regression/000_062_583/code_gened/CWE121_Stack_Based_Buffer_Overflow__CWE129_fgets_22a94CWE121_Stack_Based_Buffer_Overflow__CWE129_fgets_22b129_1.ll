; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22a94CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22b129_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22a94CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22b129_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global = external dso_local global i32, align 4
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22a94CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22b129_1(i8* %_goodB2G2_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G2_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_data_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G2_inputBuffer_0, i8** %_goodB2G2_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 -1, i32* %_goodB2G2_data_0, align 4, !dbg !23
  %0 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !24
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !27
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !28
  %cmp = icmp ne i8* %call, null, !dbg !29
  br i1 %cmp, label %if.then, label %if.else, !dbg !30

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !31
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !33
  store i32 %call1, i32* %_goodB2G2_data_0, align 4, !dbg !34
  br label %if.end, !dbg !35

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !36
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global, align 4, !dbg !38
  %3 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !39
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Sink(i32 %3), !dbg !40
  br label %goodB2G2_label_, !dbg !40

goodB2G2_label_:                                  ; preds = %if.end
  call void @llvm.dbg.label(metadata !41), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_data_0, metadata !43, metadata !DIExpression()), !dbg !45
  store i32 -1, i32* %_goodG2B_data_0, align 4, !dbg !46
  store i32 7, i32* %_goodG2B_data_0, align 4, !dbg !47
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal, align 4, !dbg !48
  %4 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal, align 4, !dbg !49
  %tobool = icmp ne i32 %4, 0, !dbg !49
  br i1 %tobool, label %if.then2, label %if.end8, !dbg !52

if.then2:                                         ; preds = %goodB2G2_label_
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_i_0, metadata !53, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_buffer_0, metadata !57, metadata !DIExpression()), !dbg !61
  %5 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_buffer_0 to i8*, !dbg !61
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !61
  %6 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !62
  %cmp3 = icmp sge i32 %6, 0, !dbg !64
  br i1 %cmp3, label %if.then4, label %if.else6, !dbg !65

if.then4:                                         ; preds = %if.then2
  %7 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !66
  %8 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !68
  call void %7(i32 %8), !dbg !66
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_i_0, align 4, !dbg !69
  br label %for.cond, !dbg !71

for.cond:                                         ; preds = %for.inc, %if.then4
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_i_0, align 4, !dbg !72
  %cmp5 = icmp slt i32 %9, 10, !dbg !74
  br i1 %cmp5, label %for.body, label %for.end, !dbg !75

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_i_0, align 4, !dbg !76
  %idxprom = sext i32 %10 to i64, !dbg !78
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_buffer_0, i64 0, i64 %idxprom, !dbg !78
  %11 = load i32, i32* %arrayidx, align 4, !dbg !78
  call void @printIntLine(i32 %11), !dbg !79
  br label %for.inc, !dbg !80

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_i_0, align 4, !dbg !81
  %inc = add nsw i32 %12, 1, !dbg !81
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_i_0, align 4, !dbg !81
  br label %for.cond, !dbg !82, !llvm.loop !83

for.end:                                          ; preds = %for.cond
  br label %if.end7, !dbg !86

if.else6:                                         ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !87
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %for.end
  br label %if.end8, !dbg !89

if.end8:                                          ; preds = %if.end7, %goodB2G2_label_
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_label_, !dbg !49

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_label_: ; preds = %if.end8
  call void @llvm.dbg.label(metadata !90), !dbg !91
  br label %goodG2B_label_, !dbg !92

goodG2B_label_:                                   ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_label_
  call void @llvm.dbg.label(metadata !93), !dbg !94
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_good_label_, !dbg !95

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !96), !dbg !97
  ret void, !dbg !98
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #3

declare dso_local void @printLine(i8*) #2

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Sink(i32) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local void @printIntLine(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22a94CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22b129_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_583/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22a94CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22b129_1", scope: !1, file: !1, line: 5, type: !8, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G2_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 5, type: !10)
!17 = !DILocation(line: 5, column: 124, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 156, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G2_data_0", scope: !21, file: !1, line: 8, type: !15)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 3)
!22 = !DILocation(line: 8, column: 9, scope: !21)
!23 = !DILocation(line: 9, column: 22, scope: !21)
!24 = !DILocation(line: 11, column: 17, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 11, column: 11)
!26 = distinct !DILexicalBlock(scope: !21, file: !1, line: 10, column: 5)
!27 = !DILocation(line: 11, column: 80, scope: !25)
!28 = !DILocation(line: 11, column: 11, scope: !25)
!29 = !DILocation(line: 11, column: 87, scope: !25)
!30 = !DILocation(line: 11, column: 11, scope: !26)
!31 = !DILocation(line: 13, column: 33, scope: !32)
!32 = distinct !DILexicalBlock(scope: !25, file: !1, line: 12, column: 7)
!33 = !DILocation(line: 13, column: 28, scope: !32)
!34 = !DILocation(line: 13, column: 26, scope: !32)
!35 = !DILocation(line: 14, column: 7, scope: !32)
!36 = !DILocation(line: 17, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !25, file: !1, line: 16, column: 7)
!38 = !DILocation(line: 21, column: 72, scope: !21)
!39 = !DILocation(line: 22, column: 70, scope: !21)
!40 = !DILocation(line: 22, column: 5, scope: !21)
!41 = !DILabel(scope: !21, name: "goodB2G2_label_", file: !1, line: 23)
!42 = !DILocation(line: 23, column: 5, scope: !21)
!43 = !DILocalVariable(name: "_goodG2B_data_0", scope: !44, file: !1, line: 30, type: !15)
!44 = distinct !DILexicalBlock(scope: !7, file: !1, line: 29, column: 3)
!45 = !DILocation(line: 30, column: 9, scope: !44)
!46 = !DILocation(line: 31, column: 21, scope: !44)
!47 = !DILocation(line: 32, column: 21, scope: !44)
!48 = !DILocation(line: 33, column: 71, scope: !44)
!49 = !DILocation(line: 35, column: 11, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 35, column: 11)
!51 = distinct !DILexicalBlock(scope: !44, file: !1, line: 34, column: 5)
!52 = !DILocation(line: 35, column: 11, scope: !51)
!53 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_i_0", scope: !54, file: !1, line: 38, type: !15)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 37, column: 9)
!55 = distinct !DILexicalBlock(scope: !50, file: !1, line: 36, column: 7)
!56 = !DILocation(line: 38, column: 15, scope: !54)
!57 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_buffer_0", scope: !54, file: !1, line: 39, type: !58)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 10)
!61 = !DILocation(line: 39, column: 15, scope: !54)
!62 = !DILocation(line: 40, column: 15, scope: !63)
!63 = distinct !DILexicalBlock(scope: !54, file: !1, line: 40, column: 15)
!64 = !DILocation(line: 40, column: 31, scope: !63)
!65 = !DILocation(line: 40, column: 15, scope: !54)
!66 = !DILocation(line: 42, column: 13, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 41, column: 11)
!68 = !DILocation(line: 42, column: 20, scope: !67)
!69 = !DILocation(line: 43, column: 87, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 43, column: 13)
!71 = !DILocation(line: 43, column: 18, scope: !70)
!72 = !DILocation(line: 43, column: 92, scope: !73)
!73 = distinct !DILexicalBlock(scope: !70, file: !1, line: 43, column: 13)
!74 = !DILocation(line: 43, column: 161, scope: !73)
!75 = !DILocation(line: 43, column: 13, scope: !70)
!76 = !DILocation(line: 45, column: 102, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 44, column: 13)
!78 = !DILocation(line: 45, column: 28, scope: !77)
!79 = !DILocation(line: 45, column: 15, scope: !77)
!80 = !DILocation(line: 46, column: 13, scope: !77)
!81 = !DILocation(line: 43, column: 235, scope: !73)
!82 = !DILocation(line: 43, column: 13, scope: !73)
!83 = distinct !{!83, !75, !84, !85}
!84 = !DILocation(line: 46, column: 13, scope: !70)
!85 = !{!"llvm.loop.mustprogress"}
!86 = !DILocation(line: 48, column: 11, scope: !67)
!87 = !DILocation(line: 51, column: 13, scope: !88)
!88 = distinct !DILexicalBlock(scope: !63, file: !1, line: 50, column: 11)
!89 = !DILocation(line: 55, column: 7, scope: !55)
!90 = !DILabel(scope: !51, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink_label_", file: !1, line: 57)
!91 = !DILocation(line: 57, column: 7, scope: !51)
!92 = !DILocation(line: 62, column: 5, scope: !51)
!93 = !DILabel(scope: !44, name: "goodG2B_label_", file: !1, line: 63)
!94 = !DILocation(line: 63, column: 5, scope: !44)
!95 = !DILocation(line: 68, column: 3, scope: !44)
!96 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_good_label_", file: !1, line: 69)
!97 = !DILocation(line: 69, column: 3, scope: !7)
!98 = !DILocation(line: 74, column: 1, scope: !7)
