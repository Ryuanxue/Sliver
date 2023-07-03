; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21124CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21101_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21124CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21101_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@goodB2G1Static = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21124CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21101_1(i8* %_goodB2G1_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G1_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_data_0 = alloca i32, align 4
  %_goodB2G1Sink_i_0 = alloca i32, align 4
  %_goodB2G1Sink_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G1_inputBuffer_0, i8** %_goodB2G1_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 -1, i32* %_goodB2G1_data_0, align 4, !dbg !22
  %0 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !23
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
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !37
  %3 = load i32, i32* @goodB2G1Static, align 4, !dbg !38
  %tobool = icmp ne i32 %3, 0, !dbg !38
  br i1 %tobool, label %if.then2, label %if.else3, !dbg !41

if.then2:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !42
  br label %if.end10, !dbg !44

if.else3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1Sink_i_0, metadata !45, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G1Sink_buffer_0, metadata !49, metadata !DIExpression()), !dbg !53
  %4 = bitcast [10 x i32]* %_goodB2G1Sink_buffer_0 to i8*, !dbg !53
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !53
  %5 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !54
  %cmp4 = icmp sge i32 %5, 0, !dbg !56
  br i1 %cmp4, label %land.lhs.true, label %if.else8, !dbg !57

land.lhs.true:                                    ; preds = %if.else3
  %6 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !58
  %cmp5 = icmp slt i32 %6, 10, !dbg !59
  br i1 %cmp5, label %if.then6, label %if.else8, !dbg !60

if.then6:                                         ; preds = %land.lhs.true
  %7 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !61
  %8 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !63
  call void %7(i32 %8), !dbg !61
  store i32 0, i32* %_goodB2G1Sink_i_0, align 4, !dbg !64
  br label %for.cond, !dbg !66

for.cond:                                         ; preds = %for.inc, %if.then6
  %9 = load i32, i32* %_goodB2G1Sink_i_0, align 4, !dbg !67
  %cmp7 = icmp slt i32 %9, 10, !dbg !69
  br i1 %cmp7, label %for.body, label %for.end, !dbg !70

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %_goodB2G1Sink_i_0, align 4, !dbg !71
  %idxprom = sext i32 %10 to i64, !dbg !73
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1Sink_buffer_0, i64 0, i64 %idxprom, !dbg !73
  %11 = load i32, i32* %arrayidx, align 4, !dbg !73
  call void @printIntLine(i32 %11), !dbg !74
  br label %for.inc, !dbg !75

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_goodB2G1Sink_i_0, align 4, !dbg !76
  %inc = add nsw i32 %12, 1, !dbg !76
  store i32 %inc, i32* %_goodB2G1Sink_i_0, align 4, !dbg !76
  br label %for.cond, !dbg !77, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !81

if.else8:                                         ; preds = %land.lhs.true, %if.else3
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !82
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then2
  br label %goodB2G1Sink_label_, !dbg !38

goodB2G1Sink_label_:                              ; preds = %if.end10
  call void @llvm.dbg.label(metadata !84), !dbg !85
  br label %goodB2G1_label_, !dbg !86

goodB2G1_label_:                                  ; preds = %goodB2G1Sink_label_
  call void @llvm.dbg.label(metadata !87), !dbg !88
  ret void, !dbg !89
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21124CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21101_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_582/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21124CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_21101_1", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G1_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!17 = !DILocation(line: 4, column: 123, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 4, type: !12)
!19 = !DILocation(line: 4, column: 155, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !7, file: !1, line: 6, type: !15)
!21 = !DILocation(line: 6, column: 7, scope: !7)
!22 = !DILocation(line: 7, column: 20, scope: !7)
!23 = !DILocation(line: 9, column: 15, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 9)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 3)
!26 = !DILocation(line: 9, column: 78, scope: !24)
!27 = !DILocation(line: 9, column: 9, scope: !24)
!28 = !DILocation(line: 9, column: 85, scope: !24)
!29 = !DILocation(line: 9, column: 9, scope: !25)
!30 = !DILocation(line: 11, column: 31, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !1, line: 10, column: 5)
!32 = !DILocation(line: 11, column: 26, scope: !31)
!33 = !DILocation(line: 11, column: 24, scope: !31)
!34 = !DILocation(line: 12, column: 5, scope: !31)
!35 = !DILocation(line: 15, column: 7, scope: !36)
!36 = distinct !DILexicalBlock(scope: !24, file: !1, line: 14, column: 5)
!37 = !DILocation(line: 19, column: 18, scope: !7)
!38 = !DILocation(line: 21, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 21, column: 9)
!40 = distinct !DILexicalBlock(scope: !7, file: !1, line: 20, column: 3)
!41 = !DILocation(line: 21, column: 9, scope: !40)
!42 = !DILocation(line: 23, column: 7, scope: !43)
!43 = distinct !DILexicalBlock(scope: !39, file: !1, line: 22, column: 5)
!44 = !DILocation(line: 24, column: 5, scope: !43)
!45 = !DILocalVariable(name: "_goodB2G1Sink_i_0", scope: !46, file: !1, line: 28, type: !15)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 27, column: 7)
!47 = distinct !DILexicalBlock(scope: !39, file: !1, line: 26, column: 5)
!48 = !DILocation(line: 28, column: 13, scope: !46)
!49 = !DILocalVariable(name: "_goodB2G1Sink_buffer_0", scope: !46, file: !1, line: 29, type: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 10)
!53 = !DILocation(line: 29, column: 13, scope: !46)
!54 = !DILocation(line: 30, column: 14, scope: !55)
!55 = distinct !DILexicalBlock(scope: !46, file: !1, line: 30, column: 13)
!56 = !DILocation(line: 30, column: 31, scope: !55)
!57 = !DILocation(line: 30, column: 37, scope: !55)
!58 = !DILocation(line: 30, column: 41, scope: !55)
!59 = !DILocation(line: 30, column: 58, scope: !55)
!60 = !DILocation(line: 30, column: 13, scope: !46)
!61 = !DILocation(line: 32, column: 11, scope: !62)
!62 = distinct !DILexicalBlock(scope: !55, file: !1, line: 31, column: 9)
!63 = !DILocation(line: 32, column: 18, scope: !62)
!64 = !DILocation(line: 33, column: 34, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !1, line: 33, column: 11)
!66 = !DILocation(line: 33, column: 16, scope: !65)
!67 = !DILocation(line: 33, column: 39, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 33, column: 11)
!69 = !DILocation(line: 33, column: 57, scope: !68)
!70 = !DILocation(line: 33, column: 11, scope: !65)
!71 = !DILocation(line: 35, column: 49, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 34, column: 11)
!73 = !DILocation(line: 35, column: 26, scope: !72)
!74 = !DILocation(line: 35, column: 13, scope: !72)
!75 = !DILocation(line: 36, column: 11, scope: !72)
!76 = !DILocation(line: 33, column: 80, scope: !68)
!77 = !DILocation(line: 33, column: 11, scope: !68)
!78 = distinct !{!78, !70, !79, !80}
!79 = !DILocation(line: 36, column: 11, scope: !65)
!80 = !{!"llvm.loop.mustprogress"}
!81 = !DILocation(line: 38, column: 9, scope: !62)
!82 = !DILocation(line: 41, column: 11, scope: !83)
!83 = distinct !DILexicalBlock(scope: !55, file: !1, line: 40, column: 9)
!84 = !DILabel(scope: !40, name: "goodB2G1Sink_label_", file: !1, line: 47)
!85 = !DILocation(line: 47, column: 5, scope: !40)
!86 = !DILocation(line: 52, column: 3, scope: !40)
!87 = !DILabel(scope: !7, name: "goodB2G1_label_", file: !1, line: 53)
!88 = !DILocation(line: 53, column: 3, scope: !7)
!89 = !DILocation(line: 58, column: 1, scope: !7)
