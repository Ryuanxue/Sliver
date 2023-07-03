; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1485CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14109_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1485CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14109_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@globalFive = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1485CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14109_1(i8* %_goodB2G1_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G1_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_data_0 = alloca i32, align 4
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G1_inputBuffer_0, i8** %_goodB2G1_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 -1, i32* %_goodB2G1_data_0, align 4, !dbg !22
  %0 = load i32, i32* @globalFive, align 4, !dbg !23
  %cmp = icmp eq i32 %0, 5, !dbg !25
  br i1 %cmp, label %if.then, label %if.end4, !dbg !26

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !27
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !31
  %call = call i8* @fgets(i8* %1, i32 14, %struct._IO_FILE* %2), !dbg !32
  %cmp1 = icmp ne i8* %call, null, !dbg !33
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !34

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !35
  %call3 = call i32 @atoi(i8* %3) #5, !dbg !37
  store i32 %call3, i32* %_goodB2G1_data_0, align 4, !dbg !38
  br label %if.end, !dbg !39

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !40
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end4, !dbg !42

if.end4:                                          ; preds = %if.end, %entry
  %4 = load i32, i32* @globalFive, align 4, !dbg !43
  %cmp5 = icmp ne i32 %4, 5, !dbg !45
  br i1 %cmp5, label %if.then6, label %if.else7, !dbg !46

if.then6:                                         ; preds = %if.end4
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !47
  br label %if.end14, !dbg !49

if.else7:                                         ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !50, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G1_buffer_0, metadata !54, metadata !DIExpression()), !dbg !58
  %5 = bitcast [10 x i32]* %_goodB2G1_buffer_0 to i8*, !dbg !58
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !58
  %6 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !59
  %cmp8 = icmp sge i32 %6, 0, !dbg !61
  br i1 %cmp8, label %land.lhs.true, label %if.else12, !dbg !62

land.lhs.true:                                    ; preds = %if.else7
  %7 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !63
  %cmp9 = icmp slt i32 %7, 10, !dbg !64
  br i1 %cmp9, label %if.then10, label %if.else12, !dbg !65

if.then10:                                        ; preds = %land.lhs.true
  %8 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !66
  %9 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !68
  call void %8(i32 %9), !dbg !66
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !69
  br label %for.cond, !dbg !71

for.cond:                                         ; preds = %for.inc, %if.then10
  %10 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !72
  %cmp11 = icmp slt i32 %10, 10, !dbg !74
  br i1 %cmp11, label %for.body, label %for.end, !dbg !75

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !76
  %idxprom = sext i32 %11 to i64, !dbg !78
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom, !dbg !78
  %12 = load i32, i32* %arrayidx, align 4, !dbg !78
  call void @printIntLine(i32 %12), !dbg !79
  br label %for.inc, !dbg !80

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !81
  %inc = add nsw i32 %13, 1, !dbg !81
  store i32 %inc, i32* %_goodB2G1_i_0, align 4, !dbg !81
  br label %for.cond, !dbg !82, !llvm.loop !83

for.end:                                          ; preds = %for.cond
  br label %if.end13, !dbg !86

if.else12:                                        ; preds = %land.lhs.true, %if.else7
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !87
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %for.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then6
  br label %goodB2G1_label_, !dbg !89

goodB2G1_label_:                                  ; preds = %if.end14
  call void @llvm.dbg.label(metadata !90), !dbg !91
  ret void, !dbg !92
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1485CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14109_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_577/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1485CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14109_1", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G1_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!17 = !DILocation(line: 4, column: 122, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 4, type: !12)
!19 = !DILocation(line: 4, column: 154, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !7, file: !1, line: 6, type: !15)
!21 = !DILocation(line: 6, column: 7, scope: !7)
!22 = !DILocation(line: 7, column: 20, scope: !7)
!23 = !DILocation(line: 8, column: 7, scope: !24)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 7)
!25 = !DILocation(line: 8, column: 18, scope: !24)
!26 = !DILocation(line: 8, column: 7, scope: !7)
!27 = !DILocation(line: 11, column: 17, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 11, column: 11)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 10, column: 5)
!30 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 3)
!31 = !DILocation(line: 11, column: 80, scope: !28)
!32 = !DILocation(line: 11, column: 11, scope: !28)
!33 = !DILocation(line: 11, column: 87, scope: !28)
!34 = !DILocation(line: 11, column: 11, scope: !29)
!35 = !DILocation(line: 13, column: 33, scope: !36)
!36 = distinct !DILexicalBlock(scope: !28, file: !1, line: 12, column: 7)
!37 = !DILocation(line: 13, column: 28, scope: !36)
!38 = !DILocation(line: 13, column: 26, scope: !36)
!39 = !DILocation(line: 14, column: 7, scope: !36)
!40 = !DILocation(line: 17, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !28, file: !1, line: 16, column: 7)
!42 = !DILocation(line: 21, column: 3, scope: !30)
!43 = !DILocation(line: 23, column: 7, scope: !44)
!44 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 7)
!45 = !DILocation(line: 23, column: 18, scope: !44)
!46 = !DILocation(line: 23, column: 7, scope: !7)
!47 = !DILocation(line: 25, column: 5, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 24, column: 3)
!49 = !DILocation(line: 26, column: 3, scope: !48)
!50 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !51, file: !1, line: 30, type: !15)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 29, column: 5)
!52 = distinct !DILexicalBlock(scope: !44, file: !1, line: 28, column: 3)
!53 = !DILocation(line: 30, column: 11, scope: !51)
!54 = !DILocalVariable(name: "_goodB2G1_buffer_0", scope: !51, file: !1, line: 31, type: !55)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 10)
!58 = !DILocation(line: 31, column: 11, scope: !51)
!59 = !DILocation(line: 32, column: 12, scope: !60)
!60 = distinct !DILexicalBlock(scope: !51, file: !1, line: 32, column: 11)
!61 = !DILocation(line: 32, column: 29, scope: !60)
!62 = !DILocation(line: 32, column: 35, scope: !60)
!63 = !DILocation(line: 32, column: 39, scope: !60)
!64 = !DILocation(line: 32, column: 56, scope: !60)
!65 = !DILocation(line: 32, column: 11, scope: !51)
!66 = !DILocation(line: 34, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !60, file: !1, line: 33, column: 7)
!68 = !DILocation(line: 34, column: 16, scope: !67)
!69 = !DILocation(line: 35, column: 28, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 35, column: 9)
!71 = !DILocation(line: 35, column: 14, scope: !70)
!72 = !DILocation(line: 35, column: 33, scope: !73)
!73 = distinct !DILexicalBlock(scope: !70, file: !1, line: 35, column: 9)
!74 = !DILocation(line: 35, column: 47, scope: !73)
!75 = !DILocation(line: 35, column: 9, scope: !70)
!76 = !DILocation(line: 37, column: 43, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 36, column: 9)
!78 = !DILocation(line: 37, column: 24, scope: !77)
!79 = !DILocation(line: 37, column: 11, scope: !77)
!80 = !DILocation(line: 38, column: 9, scope: !77)
!81 = !DILocation(line: 35, column: 66, scope: !73)
!82 = !DILocation(line: 35, column: 9, scope: !73)
!83 = distinct !{!83, !75, !84, !85}
!84 = !DILocation(line: 38, column: 9, scope: !70)
!85 = !{!"llvm.loop.mustprogress"}
!86 = !DILocation(line: 40, column: 7, scope: !67)
!87 = !DILocation(line: 43, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !60, file: !1, line: 42, column: 7)
!89 = !DILocation(line: 23, column: 21, scope: !44)
!90 = !DILabel(scope: !7, name: "goodB2G1_label_", file: !1, line: 49)
!91 = !DILocation(line: 49, column: 3, scope: !7)
!92 = !DILocation(line: 54, column: 1, scope: !7)
