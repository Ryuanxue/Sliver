; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11154_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11154_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11154_1(i8* %_goodB2G2_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G2_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_data_0 = alloca i32, align 4
  %_goodB2G2_i_0 = alloca i32, align 4
  %_goodB2G2_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G2_inputBuffer_0, i8** %_goodB2G2_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 -1, i32* %_goodB2G2_data_0, align 4, !dbg !22
  %call = call i32 (...) @globalReturnsTrue(), !dbg !23
  %tobool = icmp ne i32 %call, 0, !dbg !23
  br i1 %tobool, label %if.then, label %if.end4, !dbg !25

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !26
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !30
  %call1 = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !31
  %cmp = icmp ne i8* %call1, null, !dbg !32
  br i1 %cmp, label %if.then2, label %if.else, !dbg !33

if.then2:                                         ; preds = %if.then
  %2 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !34
  %call3 = call i32 @atoi(i8* %2) #5, !dbg !36
  store i32 %call3, i32* %_goodB2G2_data_0, align 4, !dbg !37
  br label %if.end, !dbg !38

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !39
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end4, !dbg !41

if.end4:                                          ; preds = %if.end, %entry
  %call5 = call i32 (...) @globalReturnsTrue(), !dbg !42
  %tobool6 = icmp ne i32 %call5, 0, !dbg !42
  br i1 %tobool6, label %if.then7, label %if.end14, !dbg !44

if.then7:                                         ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !45, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G2_buffer_0, metadata !49, metadata !DIExpression()), !dbg !53
  %3 = bitcast [10 x i32]* %_goodB2G2_buffer_0 to i8*, !dbg !53
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !53
  %4 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !54
  %cmp8 = icmp sge i32 %4, 0, !dbg !56
  br i1 %cmp8, label %land.lhs.true, label %if.else12, !dbg !57

land.lhs.true:                                    ; preds = %if.then7
  %5 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !58
  %cmp9 = icmp slt i32 %5, 10, !dbg !59
  br i1 %cmp9, label %if.then10, label %if.else12, !dbg !60

if.then10:                                        ; preds = %land.lhs.true
  %6 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !61
  %7 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !63
  call void %6(i32 %7), !dbg !61
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !64
  br label %for.cond, !dbg !66

for.cond:                                         ; preds = %for.inc, %if.then10
  %8 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !67
  %cmp11 = icmp slt i32 %8, 10, !dbg !69
  br i1 %cmp11, label %for.body, label %for.end, !dbg !70

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !71
  %idxprom = sext i32 %9 to i64, !dbg !73
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G2_buffer_0, i64 0, i64 %idxprom, !dbg !73
  %10 = load i32, i32* %arrayidx, align 4, !dbg !73
  call void @printIntLine(i32 %10), !dbg !74
  br label %for.inc, !dbg !75

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !76
  %inc = add nsw i32 %11, 1, !dbg !76
  store i32 %inc, i32* %_goodB2G2_i_0, align 4, !dbg !76
  br label %for.cond, !dbg !77, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  br label %if.end13, !dbg !81

if.else12:                                        ; preds = %land.lhs.true, %if.then7
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !82
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %for.end
  br label %if.end14, !dbg !84

if.end14:                                         ; preds = %if.end13, %if.end4
  br label %goodB2G2_label_, !dbg !85

goodB2G2_label_:                                  ; preds = %if.end14
  call void @llvm.dbg.label(metadata !86), !dbg !87
  ret void, !dbg !88
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11154_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_574/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_11154_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!20 = !DILocalVariable(name: "_goodB2G2_data_0", scope: !7, file: !1, line: 5, type: !15)
!21 = !DILocation(line: 5, column: 7, scope: !7)
!22 = !DILocation(line: 6, column: 20, scope: !7)
!23 = !DILocation(line: 7, column: 7, scope: !24)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 7)
!25 = !DILocation(line: 7, column: 7, scope: !7)
!26 = !DILocation(line: 10, column: 17, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 10, column: 11)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 5)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 8, column: 3)
!30 = !DILocation(line: 10, column: 80, scope: !27)
!31 = !DILocation(line: 10, column: 11, scope: !27)
!32 = !DILocation(line: 10, column: 87, scope: !27)
!33 = !DILocation(line: 10, column: 11, scope: !28)
!34 = !DILocation(line: 12, column: 33, scope: !35)
!35 = distinct !DILexicalBlock(scope: !27, file: !1, line: 11, column: 7)
!36 = !DILocation(line: 12, column: 28, scope: !35)
!37 = !DILocation(line: 12, column: 26, scope: !35)
!38 = !DILocation(line: 13, column: 7, scope: !35)
!39 = !DILocation(line: 16, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !27, file: !1, line: 15, column: 7)
!41 = !DILocation(line: 20, column: 3, scope: !29)
!42 = !DILocation(line: 22, column: 7, scope: !43)
!43 = distinct !DILexicalBlock(scope: !7, file: !1, line: 22, column: 7)
!44 = !DILocation(line: 22, column: 7, scope: !7)
!45 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !46, file: !1, line: 25, type: !15)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 24, column: 5)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 23, column: 3)
!48 = !DILocation(line: 25, column: 11, scope: !46)
!49 = !DILocalVariable(name: "_goodB2G2_buffer_0", scope: !46, file: !1, line: 26, type: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 10)
!53 = !DILocation(line: 26, column: 11, scope: !46)
!54 = !DILocation(line: 27, column: 12, scope: !55)
!55 = distinct !DILexicalBlock(scope: !46, file: !1, line: 27, column: 11)
!56 = !DILocation(line: 27, column: 29, scope: !55)
!57 = !DILocation(line: 27, column: 35, scope: !55)
!58 = !DILocation(line: 27, column: 39, scope: !55)
!59 = !DILocation(line: 27, column: 56, scope: !55)
!60 = !DILocation(line: 27, column: 11, scope: !46)
!61 = !DILocation(line: 29, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !55, file: !1, line: 28, column: 7)
!63 = !DILocation(line: 29, column: 16, scope: !62)
!64 = !DILocation(line: 30, column: 28, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 30, column: 9)
!66 = !DILocation(line: 30, column: 14, scope: !65)
!67 = !DILocation(line: 30, column: 33, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 30, column: 9)
!69 = !DILocation(line: 30, column: 47, scope: !68)
!70 = !DILocation(line: 30, column: 9, scope: !65)
!71 = !DILocation(line: 32, column: 43, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 31, column: 9)
!73 = !DILocation(line: 32, column: 24, scope: !72)
!74 = !DILocation(line: 32, column: 11, scope: !72)
!75 = !DILocation(line: 33, column: 9, scope: !72)
!76 = !DILocation(line: 30, column: 66, scope: !68)
!77 = !DILocation(line: 30, column: 9, scope: !68)
!78 = distinct !{!78, !70, !79, !80}
!79 = !DILocation(line: 33, column: 9, scope: !65)
!80 = !{!"llvm.loop.mustprogress"}
!81 = !DILocation(line: 35, column: 7, scope: !62)
!82 = !DILocation(line: 38, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !55, file: !1, line: 37, column: 7)
!84 = !DILocation(line: 42, column: 3, scope: !47)
!85 = !DILocation(line: 22, column: 25, scope: !43)
!86 = !DILabel(scope: !7, name: "goodB2G2_label_", file: !1, line: 44)
!87 = !DILocation(line: 44, column: 3, scope: !7)
!88 = !DILocation(line: 49, column: 1, scope: !7)
