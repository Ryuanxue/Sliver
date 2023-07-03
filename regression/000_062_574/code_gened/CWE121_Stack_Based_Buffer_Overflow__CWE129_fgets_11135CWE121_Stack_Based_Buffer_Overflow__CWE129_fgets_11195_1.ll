; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11195_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11195_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11195_1(i8* %_goodB2G2_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G2_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_data_0 = alloca i32, align 4
  %_goodB2G2_i_0 = alloca i32, align 4
  %_goodB2G2_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B1_data_0 = alloca i32, align 4
  %_goodG2B1_i_0 = alloca i32, align 4
  %_goodG2B1_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G2_inputBuffer_0, i8** %_goodB2G2_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 -1, i32* %_goodB2G2_data_0, align 4, !dbg !23
  %call = call i32 (...) @globalReturnsTrue(), !dbg !24
  %tobool = icmp ne i32 %call, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.end4, !dbg !26

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !27
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !31
  %call1 = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !32
  %cmp = icmp ne i8* %call1, null, !dbg !33
  br i1 %cmp, label %if.then2, label %if.else, !dbg !34

if.then2:                                         ; preds = %if.then
  %2 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !35
  %call3 = call i32 @atoi(i8* %2) #5, !dbg !37
  store i32 %call3, i32* %_goodB2G2_data_0, align 4, !dbg !38
  br label %if.end, !dbg !39

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !40
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end4, !dbg !42

if.end4:                                          ; preds = %if.end, %entry
  %call5 = call i32 (...) @globalReturnsTrue(), !dbg !43
  %tobool6 = icmp ne i32 %call5, 0, !dbg !43
  br i1 %tobool6, label %if.then7, label %if.end16, !dbg !45

if.then7:                                         ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !46, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G2_buffer_0, metadata !50, metadata !DIExpression()), !dbg !54
  %3 = bitcast [10 x i32]* %_goodB2G2_buffer_0 to i8*, !dbg !54
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !54
  %4 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !55
  %cmp8 = icmp sge i32 %4, 0, !dbg !57
  br i1 %cmp8, label %land.lhs.true, label %if.else14, !dbg !58

land.lhs.true:                                    ; preds = %if.then7
  %5 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !59
  %cmp9 = icmp slt i32 %5, 10, !dbg !60
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !61

if.then10:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !62
  %idxprom = sext i32 %6 to i64, !dbg !64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G2_buffer_0, i64 0, i64 %idxprom, !dbg !64
  store i32 1, i32* %arrayidx, align 4, !dbg !65
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !66
  br label %for.cond, !dbg !68

for.cond:                                         ; preds = %for.inc, %if.then10
  %7 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !69
  %cmp11 = icmp slt i32 %7, 10, !dbg !71
  br i1 %cmp11, label %for.body, label %for.end, !dbg !72

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !73
  %idxprom12 = sext i32 %8 to i64, !dbg !75
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G2_buffer_0, i64 0, i64 %idxprom12, !dbg !75
  %9 = load i32, i32* %arrayidx13, align 4, !dbg !75
  call void @printIntLine(i32 %9), !dbg !76
  br label %for.inc, !dbg !77

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !78
  %inc = add nsw i32 %10, 1, !dbg !78
  store i32 %inc, i32* %_goodB2G2_i_0, align 4, !dbg !78
  br label %for.cond, !dbg !79, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  br label %if.end15, !dbg !83

if.else14:                                        ; preds = %land.lhs.true, %if.then7
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !84
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end
  br label %if.end16, !dbg !86

if.end16:                                         ; preds = %if.end15, %if.end4
  br label %goodB2G2_label_, !dbg !87

goodB2G2_label_:                                  ; preds = %if.end16
  call void @llvm.dbg.label(metadata !88), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_data_0, metadata !90, metadata !DIExpression()), !dbg !92
  store i32 -1, i32* %_goodG2B1_data_0, align 4, !dbg !93
  %call17 = call i32 (...) @globalReturnsFalse(), !dbg !94
  %tobool18 = icmp ne i32 %call17, 0, !dbg !94
  br i1 %tobool18, label %if.then19, label %if.else20, !dbg !96

if.then19:                                        ; preds = %goodB2G2_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !97
  br label %if.end21, !dbg !99

if.else20:                                        ; preds = %goodB2G2_label_
  store i32 7, i32* %_goodG2B1_data_0, align 4, !dbg !100
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.then19
  %call22 = call i32 (...) @globalReturnsTrue(), !dbg !102
  %tobool23 = icmp ne i32 %call22, 0, !dbg !102
  br i1 %tobool23, label %if.then24, label %if.end37, !dbg !104

if.then24:                                        ; preds = %if.end21
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !105, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B1_buffer_0, metadata !109, metadata !DIExpression()), !dbg !110
  %11 = bitcast [10 x i32]* %_goodG2B1_buffer_0 to i8*, !dbg !110
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 40, i1 false), !dbg !110
  %12 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !111
  %cmp25 = icmp sge i32 %12, 0, !dbg !113
  br i1 %cmp25, label %if.then26, label %if.else35, !dbg !114

if.then26:                                        ; preds = %if.then24
  %13 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !115
  %14 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !117
  call void %13(i32 %14), !dbg !115
  store i32 0, i32* %_goodG2B1_i_0, align 4, !dbg !118
  br label %for.cond27, !dbg !120

for.cond27:                                       ; preds = %for.inc32, %if.then26
  %15 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !121
  %cmp28 = icmp slt i32 %15, 10, !dbg !123
  br i1 %cmp28, label %for.body29, label %for.end34, !dbg !124

for.body29:                                       ; preds = %for.cond27
  %16 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !125
  %idxprom30 = sext i32 %16 to i64, !dbg !127
  %arrayidx31 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B1_buffer_0, i64 0, i64 %idxprom30, !dbg !127
  %17 = load i32, i32* %arrayidx31, align 4, !dbg !127
  call void @printIntLine(i32 %17), !dbg !128
  br label %for.inc32, !dbg !129

for.inc32:                                        ; preds = %for.body29
  %18 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !130
  %inc33 = add nsw i32 %18, 1, !dbg !130
  store i32 %inc33, i32* %_goodG2B1_i_0, align 4, !dbg !130
  br label %for.cond27, !dbg !131, !llvm.loop !132

for.end34:                                        ; preds = %for.cond27
  br label %if.end36, !dbg !134

if.else35:                                        ; preds = %if.then24
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !135
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %for.end34
  br label %if.end37, !dbg !137

if.end37:                                         ; preds = %if.end36, %if.end21
  br label %goodG2B1_label_, !dbg !138

goodG2B1_label_:                                  ; preds = %if.end37
  call void @llvm.dbg.label(metadata !139), !dbg !140
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11_good_label_, !dbg !141

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !142), !dbg !143
  ret void, !dbg !144
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @globalReturnsTrue(...) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #3

declare dso_local void @printLine(i8*) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local void @printIntLine(i32) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local i32 @globalReturnsFalse(...) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11195_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_574/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11195_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G2_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 123, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 155, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G2_data_0", scope: !21, file: !1, line: 6, type: !15)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!22 = !DILocation(line: 6, column: 9, scope: !21)
!23 = !DILocation(line: 7, column: 22, scope: !21)
!24 = !DILocation(line: 8, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 8, column: 9)
!26 = !DILocation(line: 8, column: 9, scope: !21)
!27 = !DILocation(line: 11, column: 19, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 11, column: 13)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 10, column: 7)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 5)
!31 = !DILocation(line: 11, column: 82, scope: !28)
!32 = !DILocation(line: 11, column: 13, scope: !28)
!33 = !DILocation(line: 11, column: 89, scope: !28)
!34 = !DILocation(line: 11, column: 13, scope: !29)
!35 = !DILocation(line: 13, column: 35, scope: !36)
!36 = distinct !DILexicalBlock(scope: !28, file: !1, line: 12, column: 9)
!37 = !DILocation(line: 13, column: 30, scope: !36)
!38 = !DILocation(line: 13, column: 28, scope: !36)
!39 = !DILocation(line: 14, column: 9, scope: !36)
!40 = !DILocation(line: 17, column: 11, scope: !41)
!41 = distinct !DILexicalBlock(scope: !28, file: !1, line: 16, column: 9)
!42 = !DILocation(line: 21, column: 5, scope: !30)
!43 = !DILocation(line: 23, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !21, file: !1, line: 23, column: 9)
!45 = !DILocation(line: 23, column: 9, scope: !21)
!46 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !47, file: !1, line: 26, type: !15)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 25, column: 7)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 24, column: 5)
!49 = !DILocation(line: 26, column: 13, scope: !47)
!50 = !DILocalVariable(name: "_goodB2G2_buffer_0", scope: !47, file: !1, line: 27, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 10)
!54 = !DILocation(line: 27, column: 13, scope: !47)
!55 = !DILocation(line: 28, column: 14, scope: !56)
!56 = distinct !DILexicalBlock(scope: !47, file: !1, line: 28, column: 13)
!57 = !DILocation(line: 28, column: 31, scope: !56)
!58 = !DILocation(line: 28, column: 37, scope: !56)
!59 = !DILocation(line: 28, column: 41, scope: !56)
!60 = !DILocation(line: 28, column: 58, scope: !56)
!61 = !DILocation(line: 28, column: 13, scope: !47)
!62 = !DILocation(line: 30, column: 30, scope: !63)
!63 = distinct !DILexicalBlock(scope: !56, file: !1, line: 29, column: 9)
!64 = !DILocation(line: 30, column: 11, scope: !63)
!65 = !DILocation(line: 30, column: 48, scope: !63)
!66 = !DILocation(line: 31, column: 30, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 31, column: 11)
!68 = !DILocation(line: 31, column: 16, scope: !67)
!69 = !DILocation(line: 31, column: 35, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 31, column: 11)
!71 = !DILocation(line: 31, column: 49, scope: !70)
!72 = !DILocation(line: 31, column: 11, scope: !67)
!73 = !DILocation(line: 33, column: 45, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 32, column: 11)
!75 = !DILocation(line: 33, column: 26, scope: !74)
!76 = !DILocation(line: 33, column: 13, scope: !74)
!77 = !DILocation(line: 34, column: 11, scope: !74)
!78 = !DILocation(line: 31, column: 68, scope: !70)
!79 = !DILocation(line: 31, column: 11, scope: !70)
!80 = distinct !{!80, !72, !81, !82}
!81 = !DILocation(line: 34, column: 11, scope: !67)
!82 = !{!"llvm.loop.mustprogress"}
!83 = !DILocation(line: 36, column: 9, scope: !63)
!84 = !DILocation(line: 39, column: 11, scope: !85)
!85 = distinct !DILexicalBlock(scope: !56, file: !1, line: 38, column: 9)
!86 = !DILocation(line: 43, column: 5, scope: !48)
!87 = !DILocation(line: 23, column: 27, scope: !44)
!88 = !DILabel(scope: !21, name: "goodB2G2_label_", file: !1, line: 45)
!89 = !DILocation(line: 45, column: 5, scope: !21)
!90 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !91, file: !1, line: 52, type: !15)
!91 = distinct !DILexicalBlock(scope: !7, file: !1, line: 51, column: 3)
!92 = !DILocation(line: 52, column: 9, scope: !91)
!93 = !DILocation(line: 53, column: 22, scope: !91)
!94 = !DILocation(line: 54, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 54, column: 9)
!96 = !DILocation(line: 54, column: 9, scope: !91)
!97 = !DILocation(line: 56, column: 7, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 55, column: 5)
!99 = !DILocation(line: 57, column: 5, scope: !98)
!100 = !DILocation(line: 60, column: 24, scope: !101)
!101 = distinct !DILexicalBlock(scope: !95, file: !1, line: 59, column: 5)
!102 = !DILocation(line: 63, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !91, file: !1, line: 63, column: 9)
!104 = !DILocation(line: 63, column: 9, scope: !91)
!105 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !106, file: !1, line: 66, type: !15)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 65, column: 7)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 64, column: 5)
!108 = !DILocation(line: 66, column: 13, scope: !106)
!109 = !DILocalVariable(name: "_goodG2B1_buffer_0", scope: !106, file: !1, line: 67, type: !51)
!110 = !DILocation(line: 67, column: 13, scope: !106)
!111 = !DILocation(line: 68, column: 13, scope: !112)
!112 = distinct !DILexicalBlock(scope: !106, file: !1, line: 68, column: 13)
!113 = !DILocation(line: 68, column: 30, scope: !112)
!114 = !DILocation(line: 68, column: 13, scope: !106)
!115 = !DILocation(line: 70, column: 11, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 69, column: 9)
!117 = !DILocation(line: 70, column: 18, scope: !116)
!118 = !DILocation(line: 71, column: 30, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 71, column: 11)
!120 = !DILocation(line: 71, column: 16, scope: !119)
!121 = !DILocation(line: 71, column: 35, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 71, column: 11)
!123 = !DILocation(line: 71, column: 49, scope: !122)
!124 = !DILocation(line: 71, column: 11, scope: !119)
!125 = !DILocation(line: 73, column: 45, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !1, line: 72, column: 11)
!127 = !DILocation(line: 73, column: 26, scope: !126)
!128 = !DILocation(line: 73, column: 13, scope: !126)
!129 = !DILocation(line: 74, column: 11, scope: !126)
!130 = !DILocation(line: 71, column: 68, scope: !122)
!131 = !DILocation(line: 71, column: 11, scope: !122)
!132 = distinct !{!132, !124, !133, !82}
!133 = !DILocation(line: 74, column: 11, scope: !119)
!134 = !DILocation(line: 76, column: 9, scope: !116)
!135 = !DILocation(line: 79, column: 11, scope: !136)
!136 = distinct !DILexicalBlock(scope: !112, file: !1, line: 78, column: 9)
!137 = !DILocation(line: 83, column: 5, scope: !107)
!138 = !DILocation(line: 63, column: 27, scope: !103)
!139 = !DILabel(scope: !91, name: "goodG2B1_label_", file: !1, line: 85)
!140 = !DILocation(line: 85, column: 5, scope: !91)
!141 = !DILocation(line: 90, column: 3, scope: !91)
!142 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11_good_label_", file: !1, line: 91)
!143 = !DILocation(line: 91, column: 3, scope: !7)
!144 = !DILocation(line: 96, column: 1, scope: !7)
