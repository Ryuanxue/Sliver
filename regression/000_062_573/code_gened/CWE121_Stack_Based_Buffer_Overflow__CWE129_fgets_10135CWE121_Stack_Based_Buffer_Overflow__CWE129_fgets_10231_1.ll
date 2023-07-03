; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10231_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10231_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@globalTrue = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10231_1(i8* %_goodB2G2_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
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
  %0 = load i32, i32* @globalTrue, align 4, !dbg !24
  %tobool = icmp ne i32 %0, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.end3, !dbg !26

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !27
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !31
  %call = call i8* @fgets(i8* %1, i32 14, %struct._IO_FILE* %2), !dbg !32
  %cmp = icmp ne i8* %call, null, !dbg !33
  br i1 %cmp, label %if.then1, label %if.else, !dbg !34

if.then1:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !35
  %call2 = call i32 @atoi(i8* %3) #5, !dbg !37
  store i32 %call2, i32* %_goodB2G2_data_0, align 4, !dbg !38
  br label %if.end, !dbg !39

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !40
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end3, !dbg !42

if.end3:                                          ; preds = %if.end, %entry
  %4 = load i32, i32* @globalTrue, align 4, !dbg !43
  %tobool4 = icmp ne i32 %4, 0, !dbg !43
  br i1 %tobool4, label %if.then5, label %if.end14, !dbg !45

if.then5:                                         ; preds = %if.end3
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !46, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G2_buffer_0, metadata !50, metadata !DIExpression()), !dbg !54
  %5 = bitcast [10 x i32]* %_goodB2G2_buffer_0 to i8*, !dbg !54
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !54
  %6 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !55
  %cmp6 = icmp sge i32 %6, 0, !dbg !57
  br i1 %cmp6, label %land.lhs.true, label %if.else12, !dbg !58

land.lhs.true:                                    ; preds = %if.then5
  %7 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !59
  %cmp7 = icmp slt i32 %7, 10, !dbg !60
  br i1 %cmp7, label %if.then8, label %if.else12, !dbg !61

if.then8:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !62
  %idxprom = sext i32 %8 to i64, !dbg !64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G2_buffer_0, i64 0, i64 %idxprom, !dbg !64
  store i32 1, i32* %arrayidx, align 4, !dbg !65
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !66
  br label %for.cond, !dbg !68

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !69
  %cmp9 = icmp slt i32 %9, 10, !dbg !71
  br i1 %cmp9, label %for.body, label %for.end, !dbg !72

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !73
  %idxprom10 = sext i32 %10 to i64, !dbg !75
  %arrayidx11 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G2_buffer_0, i64 0, i64 %idxprom10, !dbg !75
  %11 = load i32, i32* %arrayidx11, align 4, !dbg !75
  call void @printIntLine(i32 %11), !dbg !76
  br label %for.inc, !dbg !77

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !78
  %inc = add nsw i32 %12, 1, !dbg !78
  store i32 %inc, i32* %_goodB2G2_i_0, align 4, !dbg !78
  br label %for.cond, !dbg !79, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  br label %if.end13, !dbg !83

if.else12:                                        ; preds = %land.lhs.true, %if.then5
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !84
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %for.end
  br label %if.end14, !dbg !86

if.end14:                                         ; preds = %if.end13, %if.end3
  br label %goodB2G2_label_, !dbg !43

goodB2G2_label_:                                  ; preds = %if.end14
  call void @llvm.dbg.label(metadata !87), !dbg !88
  call void (...) @goodG2B1(), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_data_0, metadata !90, metadata !DIExpression()), !dbg !92
  store i32 -1, i32* %_goodG2B2_data_0, align 4, !dbg !93
  %13 = load i32, i32* @globalTrue, align 4, !dbg !94
  %tobool15 = icmp ne i32 %13, 0, !dbg !94
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !96

if.then16:                                        ; preds = %goodB2G2_label_
  store i32 7, i32* %_goodG2B2_data_0, align 4, !dbg !97
  br label %if.end17, !dbg !99

if.end17:                                         ; preds = %if.then16, %goodB2G2_label_
  %14 = load i32, i32* @globalTrue, align 4, !dbg !100
  %tobool18 = icmp ne i32 %14, 0, !dbg !100
  br i1 %tobool18, label %if.then19, label %if.end32, !dbg !102

if.then19:                                        ; preds = %if.end17
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_i_0, metadata !103, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B2_buffer_0, metadata !107, metadata !DIExpression()), !dbg !108
  %15 = bitcast [10 x i32]* %_goodG2B2_buffer_0 to i8*, !dbg !108
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 40, i1 false), !dbg !108
  %16 = load i32, i32* %_goodG2B2_data_0, align 4, !dbg !109
  %cmp20 = icmp sge i32 %16, 0, !dbg !111
  br i1 %cmp20, label %if.then21, label %if.else30, !dbg !112

if.then21:                                        ; preds = %if.then19
  %17 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !113
  %18 = load i32, i32* %_goodG2B2_data_0, align 4, !dbg !115
  call void %17(i32 %18), !dbg !113
  store i32 0, i32* %_goodG2B2_i_0, align 4, !dbg !116
  br label %for.cond22, !dbg !118

for.cond22:                                       ; preds = %for.inc27, %if.then21
  %19 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !119
  %cmp23 = icmp slt i32 %19, 10, !dbg !121
  br i1 %cmp23, label %for.body24, label %for.end29, !dbg !122

for.body24:                                       ; preds = %for.cond22
  %20 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !123
  %idxprom25 = sext i32 %20 to i64, !dbg !125
  %arrayidx26 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B2_buffer_0, i64 0, i64 %idxprom25, !dbg !125
  %21 = load i32, i32* %arrayidx26, align 4, !dbg !125
  call void @printIntLine(i32 %21), !dbg !126
  br label %for.inc27, !dbg !127

for.inc27:                                        ; preds = %for.body24
  %22 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !128
  %inc28 = add nsw i32 %22, 1, !dbg !128
  store i32 %inc28, i32* %_goodG2B2_i_0, align 4, !dbg !128
  br label %for.cond22, !dbg !129, !llvm.loop !130

for.end29:                                        ; preds = %for.cond22
  br label %if.end31, !dbg !132

if.else30:                                        ; preds = %if.then19
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !133
  br label %if.end31

if.end31:                                         ; preds = %if.else30, %for.end29
  br label %if.end32, !dbg !135

if.end32:                                         ; preds = %if.end31, %if.end17
  br label %goodG2B2_label_, !dbg !100

goodG2B2_label_:                                  ; preds = %if.end32
  call void @llvm.dbg.label(metadata !136), !dbg !137
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10_good_label_, !dbg !138

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !139), !dbg !140
  ret void, !dbg !141
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10231_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_573/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10231_1", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G2_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!17 = !DILocation(line: 4, column: 123, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 4, type: !12)
!19 = !DILocation(line: 4, column: 155, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G2_data_0", scope: !21, file: !1, line: 7, type: !15)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 3)
!22 = !DILocation(line: 7, column: 9, scope: !21)
!23 = !DILocation(line: 8, column: 22, scope: !21)
!24 = !DILocation(line: 9, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 9, column: 9)
!26 = !DILocation(line: 9, column: 9, scope: !21)
!27 = !DILocation(line: 12, column: 19, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 12, column: 13)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 11, column: 7)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 10, column: 5)
!31 = !DILocation(line: 12, column: 82, scope: !28)
!32 = !DILocation(line: 12, column: 13, scope: !28)
!33 = !DILocation(line: 12, column: 89, scope: !28)
!34 = !DILocation(line: 12, column: 13, scope: !29)
!35 = !DILocation(line: 14, column: 35, scope: !36)
!36 = distinct !DILexicalBlock(scope: !28, file: !1, line: 13, column: 9)
!37 = !DILocation(line: 14, column: 30, scope: !36)
!38 = !DILocation(line: 14, column: 28, scope: !36)
!39 = !DILocation(line: 15, column: 9, scope: !36)
!40 = !DILocation(line: 18, column: 11, scope: !41)
!41 = distinct !DILexicalBlock(scope: !28, file: !1, line: 17, column: 9)
!42 = !DILocation(line: 22, column: 5, scope: !30)
!43 = !DILocation(line: 24, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !21, file: !1, line: 24, column: 9)
!45 = !DILocation(line: 24, column: 9, scope: !21)
!46 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !47, file: !1, line: 27, type: !15)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 26, column: 7)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 25, column: 5)
!49 = !DILocation(line: 27, column: 13, scope: !47)
!50 = !DILocalVariable(name: "_goodB2G2_buffer_0", scope: !47, file: !1, line: 28, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 10)
!54 = !DILocation(line: 28, column: 13, scope: !47)
!55 = !DILocation(line: 29, column: 14, scope: !56)
!56 = distinct !DILexicalBlock(scope: !47, file: !1, line: 29, column: 13)
!57 = !DILocation(line: 29, column: 31, scope: !56)
!58 = !DILocation(line: 29, column: 37, scope: !56)
!59 = !DILocation(line: 29, column: 41, scope: !56)
!60 = !DILocation(line: 29, column: 58, scope: !56)
!61 = !DILocation(line: 29, column: 13, scope: !47)
!62 = !DILocation(line: 31, column: 30, scope: !63)
!63 = distinct !DILexicalBlock(scope: !56, file: !1, line: 30, column: 9)
!64 = !DILocation(line: 31, column: 11, scope: !63)
!65 = !DILocation(line: 31, column: 48, scope: !63)
!66 = !DILocation(line: 32, column: 30, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 32, column: 11)
!68 = !DILocation(line: 32, column: 16, scope: !67)
!69 = !DILocation(line: 32, column: 35, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 32, column: 11)
!71 = !DILocation(line: 32, column: 49, scope: !70)
!72 = !DILocation(line: 32, column: 11, scope: !67)
!73 = !DILocation(line: 34, column: 45, scope: !74)
!74 = distinct !DILexicalBlock(scope: !70, file: !1, line: 33, column: 11)
!75 = !DILocation(line: 34, column: 26, scope: !74)
!76 = !DILocation(line: 34, column: 13, scope: !74)
!77 = !DILocation(line: 35, column: 11, scope: !74)
!78 = !DILocation(line: 32, column: 68, scope: !70)
!79 = !DILocation(line: 32, column: 11, scope: !70)
!80 = distinct !{!80, !72, !81, !82}
!81 = !DILocation(line: 35, column: 11, scope: !67)
!82 = !{!"llvm.loop.mustprogress"}
!83 = !DILocation(line: 37, column: 9, scope: !63)
!84 = !DILocation(line: 40, column: 11, scope: !85)
!85 = distinct !DILexicalBlock(scope: !56, file: !1, line: 39, column: 9)
!86 = !DILocation(line: 44, column: 5, scope: !48)
!87 = !DILabel(scope: !21, name: "goodB2G2_label_", file: !1, line: 46)
!88 = !DILocation(line: 46, column: 5, scope: !21)
!89 = !DILocation(line: 52, column: 3, scope: !7)
!90 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !91, file: !1, line: 54, type: !15)
!91 = distinct !DILexicalBlock(scope: !7, file: !1, line: 53, column: 3)
!92 = !DILocation(line: 54, column: 9, scope: !91)
!93 = !DILocation(line: 55, column: 22, scope: !91)
!94 = !DILocation(line: 56, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 56, column: 9)
!96 = !DILocation(line: 56, column: 9, scope: !91)
!97 = !DILocation(line: 58, column: 24, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 57, column: 5)
!99 = !DILocation(line: 59, column: 5, scope: !98)
!100 = !DILocation(line: 61, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !91, file: !1, line: 61, column: 9)
!102 = !DILocation(line: 61, column: 9, scope: !91)
!103 = !DILocalVariable(name: "_goodG2B2_i_0", scope: !104, file: !1, line: 64, type: !15)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 63, column: 7)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 62, column: 5)
!106 = !DILocation(line: 64, column: 13, scope: !104)
!107 = !DILocalVariable(name: "_goodG2B2_buffer_0", scope: !104, file: !1, line: 65, type: !51)
!108 = !DILocation(line: 65, column: 13, scope: !104)
!109 = !DILocation(line: 66, column: 13, scope: !110)
!110 = distinct !DILexicalBlock(scope: !104, file: !1, line: 66, column: 13)
!111 = !DILocation(line: 66, column: 30, scope: !110)
!112 = !DILocation(line: 66, column: 13, scope: !104)
!113 = !DILocation(line: 68, column: 11, scope: !114)
!114 = distinct !DILexicalBlock(scope: !110, file: !1, line: 67, column: 9)
!115 = !DILocation(line: 68, column: 18, scope: !114)
!116 = !DILocation(line: 69, column: 30, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !1, line: 69, column: 11)
!118 = !DILocation(line: 69, column: 16, scope: !117)
!119 = !DILocation(line: 69, column: 35, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !1, line: 69, column: 11)
!121 = !DILocation(line: 69, column: 49, scope: !120)
!122 = !DILocation(line: 69, column: 11, scope: !117)
!123 = !DILocation(line: 71, column: 45, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 70, column: 11)
!125 = !DILocation(line: 71, column: 26, scope: !124)
!126 = !DILocation(line: 71, column: 13, scope: !124)
!127 = !DILocation(line: 72, column: 11, scope: !124)
!128 = !DILocation(line: 69, column: 68, scope: !120)
!129 = !DILocation(line: 69, column: 11, scope: !120)
!130 = distinct !{!130, !122, !131, !82}
!131 = !DILocation(line: 72, column: 11, scope: !117)
!132 = !DILocation(line: 74, column: 9, scope: !114)
!133 = !DILocation(line: 77, column: 11, scope: !134)
!134 = distinct !DILexicalBlock(scope: !110, file: !1, line: 76, column: 9)
!135 = !DILocation(line: 81, column: 5, scope: !105)
!136 = !DILabel(scope: !91, name: "goodG2B2_label_", file: !1, line: 83)
!137 = !DILocation(line: 83, column: 5, scope: !91)
!138 = !DILocation(line: 88, column: 3, scope: !91)
!139 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10_good_label_", file: !1, line: 89)
!140 = !DILocation(line: 89, column: 3, scope: !7)
!141 = !DILocation(line: 94, column: 1, scope: !7)
