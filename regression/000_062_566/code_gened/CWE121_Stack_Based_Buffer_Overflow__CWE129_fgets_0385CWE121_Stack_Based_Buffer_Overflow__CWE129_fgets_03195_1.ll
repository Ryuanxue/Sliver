; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0385CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_03195_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0385CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_03195_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0385CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_03195_1(i8* %_goodB2G1_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
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
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !29
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !30
  %cmp = icmp ne i8* %call, null, !dbg !31
  br i1 %cmp, label %if.then, label %if.else, !dbg !32

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !33
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !35
  store i32 %call1, i32* %_goodB2G1_data_0, align 4, !dbg !36
  br label %if.end, !dbg !37

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !38
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !40, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G1_buffer_0, metadata !45, metadata !DIExpression()), !dbg !49
  %3 = bitcast [10 x i32]* %_goodB2G1_buffer_0 to i8*, !dbg !49
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !49
  %4 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !50
  %cmp2 = icmp sge i32 %4, 0, !dbg !52
  br i1 %cmp2, label %land.lhs.true, label %if.else8, !dbg !53

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !54
  %cmp3 = icmp slt i32 %5, 10, !dbg !55
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !56

if.then4:                                         ; preds = %land.lhs.true
  %6 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !57
  %idxprom = sext i32 %6 to i64, !dbg !59
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom, !dbg !59
  store i32 1, i32* %arrayidx, align 4, !dbg !60
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !61
  br label %for.cond, !dbg !63

for.cond:                                         ; preds = %for.inc, %if.then4
  %7 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !64
  %cmp5 = icmp slt i32 %7, 10, !dbg !66
  br i1 %cmp5, label %for.body, label %for.end, !dbg !67

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !68
  %idxprom6 = sext i32 %8 to i64, !dbg !70
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom6, !dbg !70
  %9 = load i32, i32* %arrayidx7, align 4, !dbg !70
  call void @printIntLine(i32 %9), !dbg !71
  br label %for.inc, !dbg !72

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !73
  %inc = add nsw i32 %10, 1, !dbg !73
  store i32 %inc, i32* %_goodB2G1_i_0, align 4, !dbg !73
  br label %for.cond, !dbg !74, !llvm.loop !75

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !78

if.else8:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !79
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %goodB2G1_label_, !dbg !81

goodB2G1_label_:                                  ; preds = %if.end9
  call void @llvm.dbg.label(metadata !82), !dbg !83
  call void (...) @goodB2G2(), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_data_0, metadata !85, metadata !DIExpression()), !dbg !87
  store i32 -1, i32* %_goodG2B1_data_0, align 4, !dbg !88
  store i32 7, i32* %_goodG2B1_data_0, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !92, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B1_buffer_0, metadata !97, metadata !DIExpression()), !dbg !98
  %11 = bitcast [10 x i32]* %_goodG2B1_buffer_0 to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 40, i1 false), !dbg !98
  %12 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !99
  %cmp10 = icmp sge i32 %12, 0, !dbg !101
  br i1 %cmp10, label %if.then11, label %if.else20, !dbg !102

if.then11:                                        ; preds = %goodB2G1_label_
  %13 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !103
  %14 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !105
  call void %13(i32 %14), !dbg !103
  store i32 0, i32* %_goodG2B1_i_0, align 4, !dbg !106
  br label %for.cond12, !dbg !108

for.cond12:                                       ; preds = %for.inc17, %if.then11
  %15 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !109
  %cmp13 = icmp slt i32 %15, 10, !dbg !111
  br i1 %cmp13, label %for.body14, label %for.end19, !dbg !112

for.body14:                                       ; preds = %for.cond12
  %16 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !113
  %idxprom15 = sext i32 %16 to i64, !dbg !115
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B1_buffer_0, i64 0, i64 %idxprom15, !dbg !115
  %17 = load i32, i32* %arrayidx16, align 4, !dbg !115
  call void @printIntLine(i32 %17), !dbg !116
  br label %for.inc17, !dbg !117

for.inc17:                                        ; preds = %for.body14
  %18 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !118
  %inc18 = add nsw i32 %18, 1, !dbg !118
  store i32 %inc18, i32* %_goodG2B1_i_0, align 4, !dbg !118
  br label %for.cond12, !dbg !119, !llvm.loop !120

for.end19:                                        ; preds = %for.cond12
  br label %if.end21, !dbg !122

if.else20:                                        ; preds = %goodB2G1_label_
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !123
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %for.end19
  br label %goodG2B1_label_, !dbg !125

goodG2B1_label_:                                  ; preds = %if.end21
  call void @llvm.dbg.label(metadata !126), !dbg !127
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_03_good_label_, !dbg !128

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_03_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !129), !dbg !130
  ret void, !dbg !131
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0385CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_03195_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_566/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0385CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_03195_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILocation(line: 11, column: 19, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 11, column: 13)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 10, column: 7)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 9, column: 5)
!28 = distinct !DILexicalBlock(scope: !21, file: !1, line: 8, column: 9)
!29 = !DILocation(line: 11, column: 82, scope: !25)
!30 = !DILocation(line: 11, column: 13, scope: !25)
!31 = !DILocation(line: 11, column: 89, scope: !25)
!32 = !DILocation(line: 11, column: 13, scope: !26)
!33 = !DILocation(line: 13, column: 35, scope: !34)
!34 = distinct !DILexicalBlock(scope: !25, file: !1, line: 12, column: 9)
!35 = !DILocation(line: 13, column: 30, scope: !34)
!36 = !DILocation(line: 13, column: 28, scope: !34)
!37 = !DILocation(line: 14, column: 9, scope: !34)
!38 = !DILocation(line: 17, column: 11, scope: !39)
!39 = distinct !DILexicalBlock(scope: !25, file: !1, line: 16, column: 9)
!40 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !41, file: !1, line: 30, type: !15)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 29, column: 7)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 28, column: 5)
!43 = distinct !DILexicalBlock(scope: !21, file: !1, line: 23, column: 9)
!44 = !DILocation(line: 30, column: 13, scope: !41)
!45 = !DILocalVariable(name: "_goodB2G1_buffer_0", scope: !41, file: !1, line: 31, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 10)
!49 = !DILocation(line: 31, column: 13, scope: !41)
!50 = !DILocation(line: 32, column: 14, scope: !51)
!51 = distinct !DILexicalBlock(scope: !41, file: !1, line: 32, column: 13)
!52 = !DILocation(line: 32, column: 31, scope: !51)
!53 = !DILocation(line: 32, column: 37, scope: !51)
!54 = !DILocation(line: 32, column: 41, scope: !51)
!55 = !DILocation(line: 32, column: 58, scope: !51)
!56 = !DILocation(line: 32, column: 13, scope: !41)
!57 = !DILocation(line: 34, column: 30, scope: !58)
!58 = distinct !DILexicalBlock(scope: !51, file: !1, line: 33, column: 9)
!59 = !DILocation(line: 34, column: 11, scope: !58)
!60 = !DILocation(line: 34, column: 48, scope: !58)
!61 = !DILocation(line: 35, column: 30, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 35, column: 11)
!63 = !DILocation(line: 35, column: 16, scope: !62)
!64 = !DILocation(line: 35, column: 35, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 35, column: 11)
!66 = !DILocation(line: 35, column: 49, scope: !65)
!67 = !DILocation(line: 35, column: 11, scope: !62)
!68 = !DILocation(line: 37, column: 45, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 36, column: 11)
!70 = !DILocation(line: 37, column: 26, scope: !69)
!71 = !DILocation(line: 37, column: 13, scope: !69)
!72 = !DILocation(line: 38, column: 11, scope: !69)
!73 = !DILocation(line: 35, column: 68, scope: !65)
!74 = !DILocation(line: 35, column: 11, scope: !65)
!75 = distinct !{!75, !67, !76, !77}
!76 = !DILocation(line: 38, column: 11, scope: !62)
!77 = !{!"llvm.loop.mustprogress"}
!78 = !DILocation(line: 40, column: 9, scope: !58)
!79 = !DILocation(line: 43, column: 11, scope: !80)
!80 = distinct !DILexicalBlock(scope: !51, file: !1, line: 42, column: 9)
!81 = !DILocation(line: 23, column: 14, scope: !43)
!82 = !DILabel(scope: !21, name: "goodB2G1_label_", file: !1, line: 49)
!83 = !DILocation(line: 49, column: 5, scope: !21)
!84 = !DILocation(line: 55, column: 3, scope: !7)
!85 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !86, file: !1, line: 57, type: !15)
!86 = distinct !DILexicalBlock(scope: !7, file: !1, line: 56, column: 3)
!87 = !DILocation(line: 57, column: 9, scope: !86)
!88 = !DILocation(line: 58, column: 22, scope: !86)
!89 = !DILocation(line: 65, column: 24, scope: !90)
!90 = distinct !DILexicalBlock(scope: !91, file: !1, line: 64, column: 5)
!91 = distinct !DILexicalBlock(scope: !86, file: !1, line: 59, column: 9)
!92 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !93, file: !1, line: 71, type: !15)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 70, column: 7)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 69, column: 5)
!95 = distinct !DILexicalBlock(scope: !86, file: !1, line: 68, column: 9)
!96 = !DILocation(line: 71, column: 13, scope: !93)
!97 = !DILocalVariable(name: "_goodG2B1_buffer_0", scope: !93, file: !1, line: 72, type: !46)
!98 = !DILocation(line: 72, column: 13, scope: !93)
!99 = !DILocation(line: 73, column: 13, scope: !100)
!100 = distinct !DILexicalBlock(scope: !93, file: !1, line: 73, column: 13)
!101 = !DILocation(line: 73, column: 30, scope: !100)
!102 = !DILocation(line: 73, column: 13, scope: !93)
!103 = !DILocation(line: 75, column: 11, scope: !104)
!104 = distinct !DILexicalBlock(scope: !100, file: !1, line: 74, column: 9)
!105 = !DILocation(line: 75, column: 18, scope: !104)
!106 = !DILocation(line: 76, column: 30, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !1, line: 76, column: 11)
!108 = !DILocation(line: 76, column: 16, scope: !107)
!109 = !DILocation(line: 76, column: 35, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !1, line: 76, column: 11)
!111 = !DILocation(line: 76, column: 49, scope: !110)
!112 = !DILocation(line: 76, column: 11, scope: !107)
!113 = !DILocation(line: 78, column: 45, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 77, column: 11)
!115 = !DILocation(line: 78, column: 26, scope: !114)
!116 = !DILocation(line: 78, column: 13, scope: !114)
!117 = !DILocation(line: 79, column: 11, scope: !114)
!118 = !DILocation(line: 76, column: 68, scope: !110)
!119 = !DILocation(line: 76, column: 11, scope: !110)
!120 = distinct !{!120, !112, !121, !77}
!121 = !DILocation(line: 79, column: 11, scope: !107)
!122 = !DILocation(line: 81, column: 9, scope: !104)
!123 = !DILocation(line: 84, column: 11, scope: !124)
!124 = distinct !DILexicalBlock(scope: !100, file: !1, line: 83, column: 9)
!125 = !DILocation(line: 68, column: 14, scope: !95)
!126 = !DILabel(scope: !86, name: "goodG2B1_label_", file: !1, line: 90)
!127 = !DILocation(line: 90, column: 5, scope: !86)
!128 = !DILocation(line: 95, column: 3, scope: !86)
!129 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_03_good_label_", file: !1, line: 96)
!130 = !DILocation(line: 96, column: 3, scope: !7)
!131 = !DILocation(line: 101, column: 1, scope: !7)
