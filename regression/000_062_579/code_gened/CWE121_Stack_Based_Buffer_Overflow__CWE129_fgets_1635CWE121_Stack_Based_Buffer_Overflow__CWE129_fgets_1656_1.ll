; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1635CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1656_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1635CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1656_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1635CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1656_1(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_data_0, align 4, !dbg !22
  br label %while.body, !dbg !23

while.body:                                       ; preds = %entry
  %0 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_inputBuffer_0.addr, align 8, !dbg !24
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !28
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !29
  %cmp = icmp ne i8* %call, null, !dbg !30
  br i1 %cmp, label %if.then, label %if.else, !dbg !31

if.then:                                          ; preds = %while.body
  %2 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_inputBuffer_0.addr, align 8, !dbg !32
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !34
  store i32 %call1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_data_0, align 4, !dbg !35
  br label %if.end, !dbg !36

if.else:                                          ; preds = %while.body
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.end, !dbg !39

while.end:                                        ; preds = %if.end
  br label %while.body2, !dbg !40

while.body2:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_i_0, metadata !41, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_buffer_0, metadata !45, metadata !DIExpression()), !dbg !49
  %3 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_buffer_0 to i8*, !dbg !49
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !49
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_data_0, align 4, !dbg !50
  %cmp3 = icmp sge i32 %4, 0, !dbg !52
  br i1 %cmp3, label %if.then4, label %if.else6, !dbg !53

if.then4:                                         ; preds = %while.body2
  %5 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !54
  %6 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_data_0, align 4, !dbg !56
  call void %5(i32 %6), !dbg !54
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_i_0, align 4, !dbg !57
  br label %for.cond, !dbg !59

for.cond:                                         ; preds = %for.inc, %if.then4
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_i_0, align 4, !dbg !60
  %cmp5 = icmp slt i32 %7, 10, !dbg !62
  br i1 %cmp5, label %for.body, label %for.end, !dbg !63

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_i_0, align 4, !dbg !64
  %idxprom = sext i32 %8 to i64, !dbg !66
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_buffer_0, i64 0, i64 %idxprom, !dbg !66
  %9 = load i32, i32* %arrayidx, align 4, !dbg !66
  call void @printIntLine(i32 %9), !dbg !67
  br label %for.inc, !dbg !68

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_i_0, align 4, !dbg !69
  %inc = add nsw i32 %10, 1, !dbg !69
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_i_0, align 4, !dbg !69
  br label %for.cond, !dbg !70, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  br label %if.end7, !dbg !74

if.else6:                                         ; preds = %while.body2
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !75
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %for.end
  br label %while.end8, !dbg !77

while.end8:                                       ; preds = %if.end7
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_label_, !dbg !40

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_label_: ; preds = %while.end8
  call void @llvm.dbg.label(metadata !78), !dbg !79
  ret void, !dbg !80
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1635CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1656_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_579/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1635CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1656_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 121, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 200, scope: !7)
!20 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_data_0", scope: !7, file: !1, line: 5, type: !15)
!21 = !DILocation(line: 5, column: 7, scope: !7)
!22 = !DILocation(line: 6, column: 67, scope: !7)
!23 = !DILocation(line: 7, column: 3, scope: !7)
!24 = !DILocation(line: 10, column: 17, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 10, column: 11)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 9, column: 5)
!27 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 3)
!28 = !DILocation(line: 10, column: 174, scope: !25)
!29 = !DILocation(line: 10, column: 11, scope: !25)
!30 = !DILocation(line: 10, column: 181, scope: !25)
!31 = !DILocation(line: 10, column: 11, scope: !26)
!32 = !DILocation(line: 12, column: 80, scope: !33)
!33 = distinct !DILexicalBlock(scope: !25, file: !1, line: 11, column: 7)
!34 = !DILocation(line: 12, column: 75, scope: !33)
!35 = !DILocation(line: 12, column: 73, scope: !33)
!36 = !DILocation(line: 13, column: 7, scope: !33)
!37 = !DILocation(line: 16, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !25, file: !1, line: 15, column: 7)
!39 = !DILocation(line: 20, column: 5, scope: !27)
!40 = !DILocation(line: 23, column: 3, scope: !7)
!41 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_i_0", scope: !42, file: !1, line: 26, type: !15)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 25, column: 5)
!43 = distinct !DILexicalBlock(scope: !7, file: !1, line: 24, column: 3)
!44 = !DILocation(line: 26, column: 11, scope: !42)
!45 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_buffer_0", scope: !42, file: !1, line: 27, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 10)
!49 = !DILocation(line: 27, column: 11, scope: !42)
!50 = !DILocation(line: 28, column: 11, scope: !51)
!51 = distinct !DILexicalBlock(scope: !42, file: !1, line: 28, column: 11)
!52 = !DILocation(line: 28, column: 75, scope: !51)
!53 = !DILocation(line: 28, column: 11, scope: !42)
!54 = !DILocation(line: 30, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 29, column: 7)
!56 = !DILocation(line: 30, column: 16, scope: !55)
!57 = !DILocation(line: 31, column: 75, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 31, column: 9)
!59 = !DILocation(line: 31, column: 14, scope: !58)
!60 = !DILocation(line: 31, column: 80, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 31, column: 9)
!62 = !DILocation(line: 31, column: 141, scope: !61)
!63 = !DILocation(line: 31, column: 9, scope: !58)
!64 = !DILocation(line: 33, column: 90, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 32, column: 9)
!66 = !DILocation(line: 33, column: 24, scope: !65)
!67 = !DILocation(line: 33, column: 11, scope: !65)
!68 = !DILocation(line: 34, column: 9, scope: !65)
!69 = !DILocation(line: 31, column: 207, scope: !61)
!70 = !DILocation(line: 31, column: 9, scope: !61)
!71 = distinct !{!71, !63, !72, !73}
!72 = !DILocation(line: 34, column: 9, scope: !58)
!73 = !{!"llvm.loop.mustprogress"}
!74 = !DILocation(line: 36, column: 7, scope: !55)
!75 = !DILocation(line: 39, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !51, file: !1, line: 38, column: 7)
!77 = !DILocation(line: 43, column: 5, scope: !43)
!78 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_16_bad_label_", file: !1, line: 46)
!79 = !DILocation(line: 46, column: 3, scope: !7)
!80 = !DILocation(line: 51, column: 1, scope: !7)
