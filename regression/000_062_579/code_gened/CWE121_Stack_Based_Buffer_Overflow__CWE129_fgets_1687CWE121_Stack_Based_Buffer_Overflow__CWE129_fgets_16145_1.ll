; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1687CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16145_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1687CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16145_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1687CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16145_1(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B_data_0 = alloca i32, align 4
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G_inputBuffer_0, i8** %_goodB2G_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !23
  br label %while.body, !dbg !24

while.body:                                       ; preds = %entry
  %0 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !25
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !29
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !30
  %cmp = icmp ne i8* %call, null, !dbg !31
  br i1 %cmp, label %if.then, label %if.else, !dbg !32

if.then:                                          ; preds = %while.body
  %2 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !33
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !35
  store i32 %call1, i32* %_goodB2G_data_0, align 4, !dbg !36
  br label %if.end, !dbg !37

if.else:                                          ; preds = %while.body
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !38
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.end, !dbg !40

while.end:                                        ; preds = %if.end
  br label %while.body2, !dbg !41

while.body2:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !42, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G_buffer_0, metadata !46, metadata !DIExpression()), !dbg !50
  %3 = bitcast [10 x i32]* %_goodB2G_buffer_0 to i8*, !dbg !50
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !50
  %4 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !51
  %cmp3 = icmp sge i32 %4, 0, !dbg !53
  br i1 %cmp3, label %land.lhs.true, label %if.else9, !dbg !54

land.lhs.true:                                    ; preds = %while.body2
  %5 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !55
  %cmp4 = icmp slt i32 %5, 10, !dbg !56
  br i1 %cmp4, label %if.then5, label %if.else9, !dbg !57

if.then5:                                         ; preds = %land.lhs.true
  %6 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !58
  %idxprom = sext i32 %6 to i64, !dbg !60
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom, !dbg !60
  store i32 1, i32* %arrayidx, align 4, !dbg !61
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !62
  br label %for.cond, !dbg !64

for.cond:                                         ; preds = %for.inc, %if.then5
  %7 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !65
  %cmp6 = icmp slt i32 %7, 10, !dbg !67
  br i1 %cmp6, label %for.body, label %for.end, !dbg !68

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !69
  %idxprom7 = sext i32 %8 to i64, !dbg !71
  %arrayidx8 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom7, !dbg !71
  %9 = load i32, i32* %arrayidx8, align 4, !dbg !71
  call void @printIntLine(i32 %9), !dbg !72
  br label %for.inc, !dbg !73

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !74
  %inc = add nsw i32 %10, 1, !dbg !74
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !74
  br label %for.cond, !dbg !75, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  br label %if.end10, !dbg !79

if.else9:                                         ; preds = %land.lhs.true, %while.body2
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !80
  br label %if.end10

if.end10:                                         ; preds = %if.else9, %for.end
  br label %while.end11, !dbg !82

while.end11:                                      ; preds = %if.end10
  br label %goodB2G_label_, !dbg !41

goodB2G_label_:                                   ; preds = %while.end11
  call void @llvm.dbg.label(metadata !83), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_data_0, metadata !85, metadata !DIExpression()), !dbg !87
  store i32 -1, i32* %_goodG2B_data_0, align 4, !dbg !88
  br label %while.body12, !dbg !89

while.body12:                                     ; preds = %goodB2G_label_
  store i32 7, i32* %_goodG2B_data_0, align 4, !dbg !90
  br label %while.end13, !dbg !92

while.end13:                                      ; preds = %while.body12
  br label %while.body14, !dbg !93

while.body14:                                     ; preds = %while.end13
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !94, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B_buffer_0, metadata !98, metadata !DIExpression()), !dbg !99
  %11 = bitcast [10 x i32]* %_goodG2B_buffer_0 to i8*, !dbg !99
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 40, i1 false), !dbg !99
  %12 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !100
  %cmp15 = icmp sge i32 %12, 0, !dbg !102
  br i1 %cmp15, label %if.then16, label %if.else25, !dbg !103

if.then16:                                        ; preds = %while.body14
  %13 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !104
  %14 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !106
  call void %13(i32 %14), !dbg !104
  store i32 0, i32* %_goodG2B_i_0, align 4, !dbg !107
  br label %for.cond17, !dbg !109

for.cond17:                                       ; preds = %for.inc22, %if.then16
  %15 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !110
  %cmp18 = icmp slt i32 %15, 10, !dbg !112
  br i1 %cmp18, label %for.body19, label %for.end24, !dbg !113

for.body19:                                       ; preds = %for.cond17
  %16 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !114
  %idxprom20 = sext i32 %16 to i64, !dbg !116
  %arrayidx21 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B_buffer_0, i64 0, i64 %idxprom20, !dbg !116
  %17 = load i32, i32* %arrayidx21, align 4, !dbg !116
  call void @printIntLine(i32 %17), !dbg !117
  br label %for.inc22, !dbg !118

for.inc22:                                        ; preds = %for.body19
  %18 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !119
  %inc23 = add nsw i32 %18, 1, !dbg !119
  store i32 %inc23, i32* %_goodG2B_i_0, align 4, !dbg !119
  br label %for.cond17, !dbg !120, !llvm.loop !121

for.end24:                                        ; preds = %for.cond17
  br label %if.end26, !dbg !123

if.else25:                                        ; preds = %while.body14
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !124
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %for.end24
  br label %while.end27, !dbg !126

while.end27:                                      ; preds = %if.end26
  br label %goodG2B_label_, !dbg !93

goodG2B_label_:                                   ; preds = %while.end27
  call void @llvm.dbg.label(metadata !127), !dbg !128
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_good_label_, !dbg !129

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !130), !dbg !131
  ret void, !dbg !132
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #3

declare dso_local void @printLine(i8*) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local void @printIntLine(i32) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1687CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16145_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_579/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1687CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16145_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 122, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 153, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G_data_0", scope: !21, file: !1, line: 6, type: !15)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!22 = !DILocation(line: 6, column: 9, scope: !21)
!23 = !DILocation(line: 7, column: 21, scope: !21)
!24 = !DILocation(line: 8, column: 5, scope: !21)
!25 = !DILocation(line: 11, column: 19, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 11, column: 13)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 10, column: 7)
!28 = distinct !DILexicalBlock(scope: !21, file: !1, line: 9, column: 5)
!29 = !DILocation(line: 11, column: 80, scope: !26)
!30 = !DILocation(line: 11, column: 13, scope: !26)
!31 = !DILocation(line: 11, column: 87, scope: !26)
!32 = !DILocation(line: 11, column: 13, scope: !27)
!33 = !DILocation(line: 13, column: 34, scope: !34)
!34 = distinct !DILexicalBlock(scope: !26, file: !1, line: 12, column: 9)
!35 = !DILocation(line: 13, column: 29, scope: !34)
!36 = !DILocation(line: 13, column: 27, scope: !34)
!37 = !DILocation(line: 14, column: 9, scope: !34)
!38 = !DILocation(line: 17, column: 11, scope: !39)
!39 = distinct !DILexicalBlock(scope: !26, file: !1, line: 16, column: 9)
!40 = !DILocation(line: 21, column: 7, scope: !28)
!41 = !DILocation(line: 24, column: 5, scope: !21)
!42 = !DILocalVariable(name: "_goodB2G_i_0", scope: !43, file: !1, line: 27, type: !15)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 26, column: 7)
!44 = distinct !DILexicalBlock(scope: !21, file: !1, line: 25, column: 5)
!45 = !DILocation(line: 27, column: 13, scope: !43)
!46 = !DILocalVariable(name: "_goodB2G_buffer_0", scope: !43, file: !1, line: 28, type: !47)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 10)
!50 = !DILocation(line: 28, column: 13, scope: !43)
!51 = !DILocation(line: 29, column: 14, scope: !52)
!52 = distinct !DILexicalBlock(scope: !43, file: !1, line: 29, column: 13)
!53 = !DILocation(line: 29, column: 30, scope: !52)
!54 = !DILocation(line: 29, column: 36, scope: !52)
!55 = !DILocation(line: 29, column: 40, scope: !52)
!56 = !DILocation(line: 29, column: 56, scope: !52)
!57 = !DILocation(line: 29, column: 13, scope: !43)
!58 = !DILocation(line: 31, column: 29, scope: !59)
!59 = distinct !DILexicalBlock(scope: !52, file: !1, line: 30, column: 9)
!60 = !DILocation(line: 31, column: 11, scope: !59)
!61 = !DILocation(line: 31, column: 46, scope: !59)
!62 = !DILocation(line: 32, column: 29, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 32, column: 11)
!64 = !DILocation(line: 32, column: 16, scope: !63)
!65 = !DILocation(line: 32, column: 34, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 32, column: 11)
!67 = !DILocation(line: 32, column: 47, scope: !66)
!68 = !DILocation(line: 32, column: 11, scope: !63)
!69 = !DILocation(line: 34, column: 44, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 33, column: 11)
!71 = !DILocation(line: 34, column: 26, scope: !70)
!72 = !DILocation(line: 34, column: 13, scope: !70)
!73 = !DILocation(line: 35, column: 11, scope: !70)
!74 = !DILocation(line: 32, column: 65, scope: !66)
!75 = !DILocation(line: 32, column: 11, scope: !66)
!76 = distinct !{!76, !68, !77, !78}
!77 = !DILocation(line: 35, column: 11, scope: !63)
!78 = !{!"llvm.loop.mustprogress"}
!79 = !DILocation(line: 37, column: 9, scope: !59)
!80 = !DILocation(line: 40, column: 11, scope: !81)
!81 = distinct !DILexicalBlock(scope: !52, file: !1, line: 39, column: 9)
!82 = !DILocation(line: 44, column: 7, scope: !44)
!83 = !DILabel(scope: !21, name: "goodB2G_label_", file: !1, line: 47)
!84 = !DILocation(line: 47, column: 5, scope: !21)
!85 = !DILocalVariable(name: "_goodG2B_data_0", scope: !86, file: !1, line: 54, type: !15)
!86 = distinct !DILexicalBlock(scope: !7, file: !1, line: 53, column: 3)
!87 = !DILocation(line: 54, column: 9, scope: !86)
!88 = !DILocation(line: 55, column: 21, scope: !86)
!89 = !DILocation(line: 56, column: 5, scope: !86)
!90 = !DILocation(line: 58, column: 23, scope: !91)
!91 = distinct !DILexicalBlock(scope: !86, file: !1, line: 57, column: 5)
!92 = !DILocation(line: 59, column: 7, scope: !91)
!93 = !DILocation(line: 62, column: 5, scope: !86)
!94 = !DILocalVariable(name: "_goodG2B_i_0", scope: !95, file: !1, line: 65, type: !15)
!95 = distinct !DILexicalBlock(scope: !96, file: !1, line: 64, column: 7)
!96 = distinct !DILexicalBlock(scope: !86, file: !1, line: 63, column: 5)
!97 = !DILocation(line: 65, column: 13, scope: !95)
!98 = !DILocalVariable(name: "_goodG2B_buffer_0", scope: !95, file: !1, line: 66, type: !47)
!99 = !DILocation(line: 66, column: 13, scope: !95)
!100 = !DILocation(line: 67, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !95, file: !1, line: 67, column: 13)
!102 = !DILocation(line: 67, column: 29, scope: !101)
!103 = !DILocation(line: 67, column: 13, scope: !95)
!104 = !DILocation(line: 69, column: 11, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 68, column: 9)
!106 = !DILocation(line: 69, column: 18, scope: !105)
!107 = !DILocation(line: 70, column: 29, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !1, line: 70, column: 11)
!109 = !DILocation(line: 70, column: 16, scope: !108)
!110 = !DILocation(line: 70, column: 34, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 70, column: 11)
!112 = !DILocation(line: 70, column: 47, scope: !111)
!113 = !DILocation(line: 70, column: 11, scope: !108)
!114 = !DILocation(line: 72, column: 44, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 71, column: 11)
!116 = !DILocation(line: 72, column: 26, scope: !115)
!117 = !DILocation(line: 72, column: 13, scope: !115)
!118 = !DILocation(line: 73, column: 11, scope: !115)
!119 = !DILocation(line: 70, column: 65, scope: !111)
!120 = !DILocation(line: 70, column: 11, scope: !111)
!121 = distinct !{!121, !113, !122, !78}
!122 = !DILocation(line: 73, column: 11, scope: !108)
!123 = !DILocation(line: 75, column: 9, scope: !105)
!124 = !DILocation(line: 78, column: 11, scope: !125)
!125 = distinct !DILexicalBlock(scope: !101, file: !1, line: 77, column: 9)
!126 = !DILocation(line: 82, column: 7, scope: !96)
!127 = !DILabel(scope: !86, name: "goodG2B_label_", file: !1, line: 85)
!128 = !DILocation(line: 85, column: 5, scope: !86)
!129 = !DILocation(line: 90, column: 3, scope: !86)
!130 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_good_label_", file: !1, line: 91)
!131 = !DILocation(line: 91, column: 3, scope: !7)
!132 = !DILocation(line: 96, column: 1, scope: !7)
