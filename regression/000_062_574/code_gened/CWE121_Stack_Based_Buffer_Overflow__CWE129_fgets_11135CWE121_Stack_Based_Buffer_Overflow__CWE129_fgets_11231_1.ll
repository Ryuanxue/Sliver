; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11231_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11231_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11231_1(i8* %_goodB2G2_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G2_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_data_0 = alloca i32, align 4
  %_goodB2G2_i_0 = alloca i32, align 4
  %_goodB2G2_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B2_data_0 = alloca i32, align 4
  %_goodG2B2_i_0 = alloca i32, align 4
  %_goodG2B2_buffer_0 = alloca [10 x i32], align 16
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
  call void (...) @goodG2B1(), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_data_0, metadata !91, metadata !DIExpression()), !dbg !93
  store i32 -1, i32* %_goodG2B2_data_0, align 4, !dbg !94
  %call17 = call i32 (...) @globalReturnsTrue(), !dbg !95
  %tobool18 = icmp ne i32 %call17, 0, !dbg !95
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !97

if.then19:                                        ; preds = %goodB2G2_label_
  store i32 7, i32* %_goodG2B2_data_0, align 4, !dbg !98
  br label %if.end20, !dbg !100

if.end20:                                         ; preds = %if.then19, %goodB2G2_label_
  %call21 = call i32 (...) @globalReturnsTrue(), !dbg !101
  %tobool22 = icmp ne i32 %call21, 0, !dbg !101
  br i1 %tobool22, label %if.then23, label %if.end36, !dbg !103

if.then23:                                        ; preds = %if.end20
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_i_0, metadata !104, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B2_buffer_0, metadata !108, metadata !DIExpression()), !dbg !109
  %11 = bitcast [10 x i32]* %_goodG2B2_buffer_0 to i8*, !dbg !109
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 40, i1 false), !dbg !109
  %12 = load i32, i32* %_goodG2B2_data_0, align 4, !dbg !110
  %cmp24 = icmp sge i32 %12, 0, !dbg !112
  br i1 %cmp24, label %if.then25, label %if.else34, !dbg !113

if.then25:                                        ; preds = %if.then23
  %13 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !114
  %14 = load i32, i32* %_goodG2B2_data_0, align 4, !dbg !116
  call void %13(i32 %14), !dbg !114
  store i32 0, i32* %_goodG2B2_i_0, align 4, !dbg !117
  br label %for.cond26, !dbg !119

for.cond26:                                       ; preds = %for.inc31, %if.then25
  %15 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !120
  %cmp27 = icmp slt i32 %15, 10, !dbg !122
  br i1 %cmp27, label %for.body28, label %for.end33, !dbg !123

for.body28:                                       ; preds = %for.cond26
  %16 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !124
  %idxprom29 = sext i32 %16 to i64, !dbg !126
  %arrayidx30 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B2_buffer_0, i64 0, i64 %idxprom29, !dbg !126
  %17 = load i32, i32* %arrayidx30, align 4, !dbg !126
  call void @printIntLine(i32 %17), !dbg !127
  br label %for.inc31, !dbg !128

for.inc31:                                        ; preds = %for.body28
  %18 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !129
  %inc32 = add nsw i32 %18, 1, !dbg !129
  store i32 %inc32, i32* %_goodG2B2_i_0, align 4, !dbg !129
  br label %for.cond26, !dbg !130, !llvm.loop !131

for.end33:                                        ; preds = %for.cond26
  br label %if.end35, !dbg !133

if.else34:                                        ; preds = %if.then23
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !134
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %for.end33
  br label %if.end36, !dbg !136

if.end36:                                         ; preds = %if.end35, %if.end20
  br label %goodG2B2_label_, !dbg !137

goodG2B2_label_:                                  ; preds = %if.end36
  call void @llvm.dbg.label(metadata !138), !dbg !139
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11_good_label_, !dbg !140

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !141), !dbg !142
  ret void, !dbg !143
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

declare dso_local void @goodG2B1(...) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11231_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_574/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11231_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!90 = !DILocation(line: 51, column: 3, scope: !7)
!91 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !92, file: !1, line: 53, type: !15)
!92 = distinct !DILexicalBlock(scope: !7, file: !1, line: 52, column: 3)
!93 = !DILocation(line: 53, column: 9, scope: !92)
!94 = !DILocation(line: 54, column: 22, scope: !92)
!95 = !DILocation(line: 55, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 55, column: 9)
!97 = !DILocation(line: 55, column: 9, scope: !92)
!98 = !DILocation(line: 57, column: 24, scope: !99)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 56, column: 5)
!100 = !DILocation(line: 58, column: 5, scope: !99)
!101 = !DILocation(line: 60, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !92, file: !1, line: 60, column: 9)
!103 = !DILocation(line: 60, column: 9, scope: !92)
!104 = !DILocalVariable(name: "_goodG2B2_i_0", scope: !105, file: !1, line: 63, type: !15)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 62, column: 7)
!106 = distinct !DILexicalBlock(scope: !102, file: !1, line: 61, column: 5)
!107 = !DILocation(line: 63, column: 13, scope: !105)
!108 = !DILocalVariable(name: "_goodG2B2_buffer_0", scope: !105, file: !1, line: 64, type: !51)
!109 = !DILocation(line: 64, column: 13, scope: !105)
!110 = !DILocation(line: 65, column: 13, scope: !111)
!111 = distinct !DILexicalBlock(scope: !105, file: !1, line: 65, column: 13)
!112 = !DILocation(line: 65, column: 30, scope: !111)
!113 = !DILocation(line: 65, column: 13, scope: !105)
!114 = !DILocation(line: 67, column: 11, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 66, column: 9)
!116 = !DILocation(line: 67, column: 18, scope: !115)
!117 = !DILocation(line: 68, column: 30, scope: !118)
!118 = distinct !DILexicalBlock(scope: !115, file: !1, line: 68, column: 11)
!119 = !DILocation(line: 68, column: 16, scope: !118)
!120 = !DILocation(line: 68, column: 35, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 68, column: 11)
!122 = !DILocation(line: 68, column: 49, scope: !121)
!123 = !DILocation(line: 68, column: 11, scope: !118)
!124 = !DILocation(line: 70, column: 45, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 69, column: 11)
!126 = !DILocation(line: 70, column: 26, scope: !125)
!127 = !DILocation(line: 70, column: 13, scope: !125)
!128 = !DILocation(line: 71, column: 11, scope: !125)
!129 = !DILocation(line: 68, column: 68, scope: !121)
!130 = !DILocation(line: 68, column: 11, scope: !121)
!131 = distinct !{!131, !123, !132, !82}
!132 = !DILocation(line: 71, column: 11, scope: !118)
!133 = !DILocation(line: 73, column: 9, scope: !115)
!134 = !DILocation(line: 76, column: 11, scope: !135)
!135 = distinct !DILexicalBlock(scope: !111, file: !1, line: 75, column: 9)
!136 = !DILocation(line: 80, column: 5, scope: !106)
!137 = !DILocation(line: 60, column: 27, scope: !102)
!138 = !DILabel(scope: !92, name: "goodG2B2_label_", file: !1, line: 82)
!139 = !DILocation(line: 82, column: 5, scope: !92)
!140 = !DILocation(line: 87, column: 3, scope: !92)
!141 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11_good_label_", file: !1, line: 88)
!142 = !DILocation(line: 88, column: 3, scope: !7)
!143 = !DILocation(line: 93, column: 1, scope: !7)
