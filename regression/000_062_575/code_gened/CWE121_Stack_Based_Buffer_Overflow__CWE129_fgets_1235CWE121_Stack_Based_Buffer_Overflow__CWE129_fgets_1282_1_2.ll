; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1235CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1282_1_2.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1235CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1282_1_2.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1235CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1282_1_2(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0, align 4, !dbg !22
  %0 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_inputBuffer_0.addr, align 8, !dbg !23
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !28
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !29
  %cmp = icmp ne i8* %call, null, !dbg !30
  br i1 %cmp, label %if.then, label %if.else, !dbg !31

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_inputBuffer_0.addr, align 8, !dbg !32
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !34
  store i32 %call1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0, align 4, !dbg !35
  br label %if.end, !dbg !36

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0, metadata !39, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_buffer_0, metadata !44, metadata !DIExpression()), !dbg !48
  %3 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_buffer_0 to i8*, !dbg !48
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !48
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0, align 4, !dbg !49
  %cmp2 = icmp sge i32 %4, 0, !dbg !51
  br i1 %cmp2, label %land.lhs.true, label %if.else6, !dbg !52

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0, align 4, !dbg !53
  %cmp3 = icmp slt i32 %5, 10, !dbg !54
  br i1 %cmp3, label %if.then4, label %if.else6, !dbg !55

if.then4:                                         ; preds = %land.lhs.true
  %6 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !56
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0, align 4, !dbg !58
  call void %6(i32 %7), !dbg !56
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0, align 4, !dbg !59
  br label %for.cond, !dbg !61

for.cond:                                         ; preds = %for.inc, %if.then4
  %8 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0, align 4, !dbg !62
  %cmp5 = icmp slt i32 %8, 10, !dbg !64
  br i1 %cmp5, label %for.body, label %for.end, !dbg !65

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0, align 4, !dbg !66
  %idxprom = sext i32 %9 to i64, !dbg !68
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_buffer_0, i64 0, i64 %idxprom, !dbg !68
  %10 = load i32, i32* %arrayidx, align 4, !dbg !68
  call void @printIntLine(i32 %10), !dbg !69
  br label %for.inc, !dbg !70

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0, align 4, !dbg !71
  %inc = add nsw i32 %11, 1, !dbg !71
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0, align 4, !dbg !71
  br label %for.cond, !dbg !72, !llvm.loop !73

for.end:                                          ; preds = %for.cond
  br label %if.end7, !dbg !76

if.else6:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !77
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_label_, !dbg !79

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_label_: ; preds = %if.end7
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1235CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1282_1_2.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_575/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1235CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1282_1_2", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 123, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 202, scope: !7)
!20 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_data_0", scope: !7, file: !1, line: 5, type: !15)
!21 = !DILocation(line: 5, column: 7, scope: !7)
!22 = !DILocation(line: 6, column: 67, scope: !7)
!23 = !DILocation(line: 10, column: 17, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 10, column: 11)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 9, column: 5)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 8, column: 3)
!27 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 7)
!28 = !DILocation(line: 10, column: 174, scope: !24)
!29 = !DILocation(line: 10, column: 11, scope: !24)
!30 = !DILocation(line: 10, column: 181, scope: !24)
!31 = !DILocation(line: 10, column: 11, scope: !25)
!32 = !DILocation(line: 12, column: 80, scope: !33)
!33 = distinct !DILexicalBlock(scope: !24, file: !1, line: 11, column: 7)
!34 = !DILocation(line: 12, column: 75, scope: !33)
!35 = !DILocation(line: 12, column: 73, scope: !33)
!36 = !DILocation(line: 13, column: 7, scope: !33)
!37 = !DILocation(line: 16, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !24, file: !1, line: 15, column: 7)
!39 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_i_0", scope: !40, file: !1, line: 50, type: !15)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 49, column: 5)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 48, column: 3)
!42 = distinct !DILexicalBlock(scope: !7, file: !1, line: 26, column: 7)
!43 = !DILocation(line: 50, column: 11, scope: !40)
!44 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_buffer_0", scope: !40, file: !1, line: 51, type: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 10)
!48 = !DILocation(line: 51, column: 11, scope: !40)
!49 = !DILocation(line: 52, column: 12, scope: !50)
!50 = distinct !DILexicalBlock(scope: !40, file: !1, line: 52, column: 11)
!51 = !DILocation(line: 52, column: 76, scope: !50)
!52 = !DILocation(line: 52, column: 82, scope: !50)
!53 = !DILocation(line: 52, column: 86, scope: !50)
!54 = !DILocation(line: 52, column: 150, scope: !50)
!55 = !DILocation(line: 52, column: 11, scope: !40)
!56 = !DILocation(line: 54, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !50, file: !1, line: 53, column: 7)
!58 = !DILocation(line: 54, column: 16, scope: !57)
!59 = !DILocation(line: 55, column: 75, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 55, column: 9)
!61 = !DILocation(line: 55, column: 14, scope: !60)
!62 = !DILocation(line: 55, column: 80, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 55, column: 9)
!64 = !DILocation(line: 55, column: 141, scope: !63)
!65 = !DILocation(line: 55, column: 9, scope: !60)
!66 = !DILocation(line: 57, column: 90, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 56, column: 9)
!68 = !DILocation(line: 57, column: 24, scope: !67)
!69 = !DILocation(line: 57, column: 11, scope: !67)
!70 = !DILocation(line: 58, column: 9, scope: !67)
!71 = !DILocation(line: 55, column: 207, scope: !63)
!72 = !DILocation(line: 55, column: 9, scope: !63)
!73 = distinct !{!73, !65, !74, !75}
!74 = !DILocation(line: 58, column: 9, scope: !60)
!75 = !{!"llvm.loop.mustprogress"}
!76 = !DILocation(line: 60, column: 7, scope: !57)
!77 = !DILocation(line: 63, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !50, file: !1, line: 62, column: 7)
!79 = !DILocation(line: 26, column: 7, scope: !42)
!80 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_12_bad_label_", file: !1, line: 69)
!81 = !DILocation(line: 69, column: 3, scope: !7)
!82 = !DILocation(line: 74, column: 1, scope: !7)
