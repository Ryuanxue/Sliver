; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1598CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15228_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1598CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15228_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1598CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15228_1(i8* %_goodB2G1_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G1_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_data_0 = alloca i32, align 4
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B1_data_0 = alloca i32, align 4
  %_goodG2B1_i_0 = alloca i32, align 4
  %_goodG2B1_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G1_inputBuffer_0, i8** %_goodB2G1_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 -1, i32* %_goodB2G1_data_0, align 4, !dbg !23
  %0 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !24
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !26
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !27
  %cmp = icmp ne i8* %call, null, !dbg !28
  br i1 %cmp, label %if.then, label %if.else, !dbg !29

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !30
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !32
  store i32 %call1, i32* %_goodB2G1_data_0, align 4, !dbg !33
  br label %if.end, !dbg !34

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !37, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G1_buffer_0, metadata !40, metadata !DIExpression()), !dbg !44
  %3 = bitcast [10 x i32]* %_goodB2G1_buffer_0 to i8*, !dbg !44
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !44
  %4 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !45
  %cmp2 = icmp sge i32 %4, 0, !dbg !47
  br i1 %cmp2, label %land.lhs.true, label %if.else8, !dbg !48

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !49
  %cmp3 = icmp slt i32 %5, 10, !dbg !50
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !51

if.then4:                                         ; preds = %land.lhs.true
  %6 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !52
  %idxprom = sext i32 %6 to i64, !dbg !54
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom, !dbg !54
  store i32 1, i32* %arrayidx, align 4, !dbg !55
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !56
  br label %for.cond, !dbg !58

for.cond:                                         ; preds = %for.inc, %if.then4
  %7 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !59
  %cmp5 = icmp slt i32 %7, 10, !dbg !61
  br i1 %cmp5, label %for.body, label %for.end, !dbg !62

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !63
  %idxprom6 = sext i32 %8 to i64, !dbg !65
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom6, !dbg !65
  %9 = load i32, i32* %arrayidx7, align 4, !dbg !65
  call void @printIntLine(i32 %9), !dbg !66
  br label %for.inc, !dbg !67

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !68
  %inc = add nsw i32 %10, 1, !dbg !68
  store i32 %inc, i32* %_goodB2G1_i_0, align 4, !dbg !68
  br label %for.cond, !dbg !69, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !73

if.else8:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !74
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %goodB2G1_label_, !dbg !76

goodB2G1_label_:                                  ; preds = %if.end9
  call void @llvm.dbg.label(metadata !77), !dbg !78
  call void (...) @goodB2G2(), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_data_0, metadata !80, metadata !DIExpression()), !dbg !82
  store i32 -1, i32* %_goodG2B1_data_0, align 4, !dbg !83
  store i32 7, i32* %_goodG2B1_data_0, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !85, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B1_buffer_0, metadata !88, metadata !DIExpression()), !dbg !89
  %11 = bitcast [10 x i32]* %_goodG2B1_buffer_0 to i8*, !dbg !89
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 40, i1 false), !dbg !89
  %12 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !90
  %cmp10 = icmp sge i32 %12, 0, !dbg !92
  br i1 %cmp10, label %if.then11, label %if.else20, !dbg !93

if.then11:                                        ; preds = %goodB2G1_label_
  %13 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !94
  %14 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !96
  call void %13(i32 %14), !dbg !94
  store i32 0, i32* %_goodG2B1_i_0, align 4, !dbg !97
  br label %for.cond12, !dbg !99

for.cond12:                                       ; preds = %for.inc17, %if.then11
  %15 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !100
  %cmp13 = icmp slt i32 %15, 10, !dbg !102
  br i1 %cmp13, label %for.body14, label %for.end19, !dbg !103

for.body14:                                       ; preds = %for.cond12
  %16 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !104
  %idxprom15 = sext i32 %16 to i64, !dbg !106
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B1_buffer_0, i64 0, i64 %idxprom15, !dbg !106
  %17 = load i32, i32* %arrayidx16, align 4, !dbg !106
  call void @printIntLine(i32 %17), !dbg !107
  br label %for.inc17, !dbg !108

for.inc17:                                        ; preds = %for.body14
  %18 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !109
  %inc18 = add nsw i32 %18, 1, !dbg !109
  store i32 %inc18, i32* %_goodG2B1_i_0, align 4, !dbg !109
  br label %for.cond12, !dbg !110, !llvm.loop !111

for.end19:                                        ; preds = %for.cond12
  br label %if.end21, !dbg !113

if.else20:                                        ; preds = %goodB2G1_label_
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !114
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %for.end19
  br label %goodG2B1_label_, !dbg !116

goodG2B1_label_:                                  ; preds = %if.end21
  call void @llvm.dbg.label(metadata !117), !dbg !118
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_good_label_, !dbg !119

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !120), !dbg !121
  ret void, !dbg !122
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

declare dso_local void @goodB2G2(...) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1598CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15228_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_578/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1598CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15228_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G1_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 122, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 154, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !21, file: !1, line: 6, type: !15)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!22 = !DILocation(line: 6, column: 9, scope: !21)
!23 = !DILocation(line: 7, column: 22, scope: !21)
!24 = !DILocation(line: 12, column: 19, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 12, column: 13)
!26 = !DILocation(line: 12, column: 82, scope: !25)
!27 = !DILocation(line: 12, column: 13, scope: !25)
!28 = !DILocation(line: 12, column: 89, scope: !25)
!29 = !DILocation(line: 12, column: 13, scope: !21)
!30 = !DILocation(line: 14, column: 35, scope: !31)
!31 = distinct !DILexicalBlock(scope: !25, file: !1, line: 13, column: 9)
!32 = !DILocation(line: 14, column: 30, scope: !31)
!33 = !DILocation(line: 14, column: 28, scope: !31)
!34 = !DILocation(line: 15, column: 9, scope: !31)
!35 = !DILocation(line: 18, column: 11, scope: !36)
!36 = distinct !DILexicalBlock(scope: !25, file: !1, line: 17, column: 9)
!37 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !38, file: !1, line: 38, type: !15)
!38 = distinct !DILexicalBlock(scope: !21, file: !1, line: 37, column: 7)
!39 = !DILocation(line: 38, column: 13, scope: !38)
!40 = !DILocalVariable(name: "_goodB2G1_buffer_0", scope: !38, file: !1, line: 39, type: !41)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 10)
!44 = !DILocation(line: 39, column: 13, scope: !38)
!45 = !DILocation(line: 40, column: 14, scope: !46)
!46 = distinct !DILexicalBlock(scope: !38, file: !1, line: 40, column: 13)
!47 = !DILocation(line: 40, column: 31, scope: !46)
!48 = !DILocation(line: 40, column: 37, scope: !46)
!49 = !DILocation(line: 40, column: 41, scope: !46)
!50 = !DILocation(line: 40, column: 58, scope: !46)
!51 = !DILocation(line: 40, column: 13, scope: !38)
!52 = !DILocation(line: 42, column: 30, scope: !53)
!53 = distinct !DILexicalBlock(scope: !46, file: !1, line: 41, column: 9)
!54 = !DILocation(line: 42, column: 11, scope: !53)
!55 = !DILocation(line: 42, column: 48, scope: !53)
!56 = !DILocation(line: 43, column: 30, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 43, column: 11)
!58 = !DILocation(line: 43, column: 16, scope: !57)
!59 = !DILocation(line: 43, column: 35, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 43, column: 11)
!61 = !DILocation(line: 43, column: 49, scope: !60)
!62 = !DILocation(line: 43, column: 11, scope: !57)
!63 = !DILocation(line: 45, column: 45, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 44, column: 11)
!65 = !DILocation(line: 45, column: 26, scope: !64)
!66 = !DILocation(line: 45, column: 13, scope: !64)
!67 = !DILocation(line: 46, column: 11, scope: !64)
!68 = !DILocation(line: 43, column: 68, scope: !60)
!69 = !DILocation(line: 43, column: 11, scope: !60)
!70 = distinct !{!70, !62, !71, !72}
!71 = !DILocation(line: 46, column: 11, scope: !57)
!72 = !{!"llvm.loop.mustprogress"}
!73 = !DILocation(line: 48, column: 9, scope: !53)
!74 = !DILocation(line: 51, column: 11, scope: !75)
!75 = distinct !DILexicalBlock(scope: !46, file: !1, line: 50, column: 9)
!76 = !DILocation(line: 54, column: 7, scope: !38)
!77 = !DILabel(scope: !21, name: "goodB2G1_label_", file: !1, line: 59)
!78 = !DILocation(line: 59, column: 5, scope: !21)
!79 = !DILocation(line: 65, column: 3, scope: !7)
!80 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !81, file: !1, line: 67, type: !15)
!81 = distinct !DILexicalBlock(scope: !7, file: !1, line: 66, column: 3)
!82 = !DILocation(line: 67, column: 9, scope: !81)
!83 = !DILocation(line: 68, column: 22, scope: !81)
!84 = !DILocation(line: 76, column: 26, scope: !81)
!85 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !86, file: !1, line: 85, type: !15)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 84, column: 7)
!87 = !DILocation(line: 85, column: 13, scope: !86)
!88 = !DILocalVariable(name: "_goodG2B1_buffer_0", scope: !86, file: !1, line: 86, type: !41)
!89 = !DILocation(line: 86, column: 13, scope: !86)
!90 = !DILocation(line: 87, column: 13, scope: !91)
!91 = distinct !DILexicalBlock(scope: !86, file: !1, line: 87, column: 13)
!92 = !DILocation(line: 87, column: 30, scope: !91)
!93 = !DILocation(line: 87, column: 13, scope: !86)
!94 = !DILocation(line: 89, column: 11, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 88, column: 9)
!96 = !DILocation(line: 89, column: 18, scope: !95)
!97 = !DILocation(line: 90, column: 30, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 90, column: 11)
!99 = !DILocation(line: 90, column: 16, scope: !98)
!100 = !DILocation(line: 90, column: 35, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 90, column: 11)
!102 = !DILocation(line: 90, column: 49, scope: !101)
!103 = !DILocation(line: 90, column: 11, scope: !98)
!104 = !DILocation(line: 92, column: 45, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 91, column: 11)
!106 = !DILocation(line: 92, column: 26, scope: !105)
!107 = !DILocation(line: 92, column: 13, scope: !105)
!108 = !DILocation(line: 93, column: 11, scope: !105)
!109 = !DILocation(line: 90, column: 68, scope: !101)
!110 = !DILocation(line: 90, column: 11, scope: !101)
!111 = distinct !{!111, !103, !112, !72}
!112 = !DILocation(line: 93, column: 11, scope: !98)
!113 = !DILocation(line: 95, column: 9, scope: !95)
!114 = !DILocation(line: 98, column: 11, scope: !115)
!115 = distinct !DILexicalBlock(scope: !91, file: !1, line: 97, column: 9)
!116 = !DILocation(line: 101, column: 7, scope: !86)
!117 = !DILabel(scope: !81, name: "goodG2B1_label_", file: !1, line: 110)
!118 = !DILocation(line: 110, column: 5, scope: !81)
!119 = !DILocation(line: 115, column: 3, scope: !81)
!120 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_15_good_label_", file: !1, line: 116)
!121 = !DILocation(line: 116, column: 3, scope: !7)
!122 = !DILocation(line: 121, column: 1, scope: !7)
