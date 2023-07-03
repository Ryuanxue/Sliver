; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51a75CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b84_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51a75CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b84_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51a75CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b84_1(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G_inputBuffer_0, i8** %_goodB2G_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !22
  %0 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !23
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !26
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !27
  %cmp = icmp ne i8* %call, null, !dbg !28
  br i1 %cmp, label %if.then, label %if.else, !dbg !29

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !30
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !32
  store i32 %call1, i32* %_goodB2G_data_0, align 4, !dbg !33
  br label %if.end, !dbg !34

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_i_0, metadata !37, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_buffer_0, metadata !41, metadata !DIExpression()), !dbg !45
  %3 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_buffer_0 to i8*, !dbg !45
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !45
  %4 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !46
  %cmp2 = icmp sge i32 %4, 0, !dbg !48
  br i1 %cmp2, label %land.lhs.true, label %if.else6, !dbg !49

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !50
  %cmp3 = icmp slt i32 %5, 10, !dbg !51
  br i1 %cmp3, label %if.then4, label %if.else6, !dbg !52

if.then4:                                         ; preds = %land.lhs.true
  %6 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !53
  %7 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !55
  call void %6(i32 %7), !dbg !53
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_i_0, align 4, !dbg !56
  br label %for.cond, !dbg !58

for.cond:                                         ; preds = %for.inc, %if.then4
  %8 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_i_0, align 4, !dbg !59
  %cmp5 = icmp slt i32 %8, 10, !dbg !61
  br i1 %cmp5, label %for.body, label %for.end, !dbg !62

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_i_0, align 4, !dbg !63
  %idxprom = sext i32 %9 to i64, !dbg !65
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_buffer_0, i64 0, i64 %idxprom, !dbg !65
  %10 = load i32, i32* %arrayidx, align 4, !dbg !65
  call void @printIntLine(i32 %10), !dbg !66
  br label %for.inc, !dbg !67

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_i_0, align 4, !dbg !68
  %inc = add nsw i32 %11, 1, !dbg !68
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_i_0, align 4, !dbg !68
  br label %for.cond, !dbg !69, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  br label %if.end7, !dbg !73

if.else6:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !74
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_label_, !dbg !76

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_label_: ; preds = %if.end7
  call void @llvm.dbg.label(metadata !77), !dbg !78
  br label %goodB2G_label_, !dbg !79

goodB2G_label_:                                   ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_label_
  call void @llvm.dbg.label(metadata !80), !dbg !81
  ret void, !dbg !82
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51a75CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b84_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_593/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51a75CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b84_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 123, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 154, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G_data_0", scope: !7, file: !1, line: 5, type: !15)
!21 = !DILocation(line: 5, column: 7, scope: !7)
!22 = !DILocation(line: 6, column: 19, scope: !7)
!23 = !DILocation(line: 8, column: 15, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 8, column: 9)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 3)
!26 = !DILocation(line: 8, column: 76, scope: !24)
!27 = !DILocation(line: 8, column: 9, scope: !24)
!28 = !DILocation(line: 8, column: 83, scope: !24)
!29 = !DILocation(line: 8, column: 9, scope: !25)
!30 = !DILocation(line: 10, column: 30, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 5)
!32 = !DILocation(line: 10, column: 25, scope: !31)
!33 = !DILocation(line: 10, column: 23, scope: !31)
!34 = !DILocation(line: 11, column: 5, scope: !31)
!35 = !DILocation(line: 14, column: 7, scope: !36)
!36 = distinct !DILexicalBlock(scope: !24, file: !1, line: 13, column: 5)
!37 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_i_0", scope: !38, file: !1, line: 20, type: !15)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 19, column: 5)
!39 = distinct !DILexicalBlock(scope: !7, file: !1, line: 18, column: 3)
!40 = !DILocation(line: 20, column: 11, scope: !38)
!41 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_buffer_0", scope: !38, file: !1, line: 21, type: !42)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 10)
!45 = !DILocation(line: 21, column: 11, scope: !38)
!46 = !DILocation(line: 22, column: 12, scope: !47)
!47 = distinct !DILexicalBlock(scope: !38, file: !1, line: 22, column: 11)
!48 = !DILocation(line: 22, column: 28, scope: !47)
!49 = !DILocation(line: 22, column: 34, scope: !47)
!50 = !DILocation(line: 22, column: 38, scope: !47)
!51 = !DILocation(line: 22, column: 54, scope: !47)
!52 = !DILocation(line: 22, column: 11, scope: !38)
!53 = !DILocation(line: 24, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !47, file: !1, line: 23, column: 7)
!55 = !DILocation(line: 24, column: 16, scope: !54)
!56 = !DILocation(line: 25, column: 84, scope: !57)
!57 = distinct !DILexicalBlock(scope: !54, file: !1, line: 25, column: 9)
!58 = !DILocation(line: 25, column: 14, scope: !57)
!59 = !DILocation(line: 25, column: 89, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 25, column: 9)
!61 = !DILocation(line: 25, column: 159, scope: !60)
!62 = !DILocation(line: 25, column: 9, scope: !57)
!63 = !DILocation(line: 27, column: 99, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 26, column: 9)
!65 = !DILocation(line: 27, column: 24, scope: !64)
!66 = !DILocation(line: 27, column: 11, scope: !64)
!67 = !DILocation(line: 28, column: 9, scope: !64)
!68 = !DILocation(line: 25, column: 234, scope: !60)
!69 = !DILocation(line: 25, column: 9, scope: !60)
!70 = distinct !{!70, !62, !71, !72}
!71 = !DILocation(line: 28, column: 9, scope: !57)
!72 = !{!"llvm.loop.mustprogress"}
!73 = !DILocation(line: 30, column: 7, scope: !54)
!74 = !DILocation(line: 33, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !47, file: !1, line: 32, column: 7)
!76 = !DILocation(line: 36, column: 5, scope: !38)
!77 = !DILabel(scope: !39, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_51b_goodB2GSink_label_", file: !1, line: 37)
!78 = !DILocation(line: 37, column: 5, scope: !39)
!79 = !DILocation(line: 42, column: 3, scope: !39)
!80 = !DILabel(scope: !7, name: "goodB2G_label_", file: !1, line: 43)
!81 = !DILocation(line: 43, column: 3, scope: !7)
!82 = !DILocation(line: 48, column: 1, scope: !7)
