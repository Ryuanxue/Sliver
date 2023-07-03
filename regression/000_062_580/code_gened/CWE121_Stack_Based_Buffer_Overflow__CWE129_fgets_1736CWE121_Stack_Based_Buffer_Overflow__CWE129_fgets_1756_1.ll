; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1736CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1756_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1736CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1756_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1736CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1756_1(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_inputBuffer_0, i32 %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_0, i32 %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_j_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_inputBuffer_0.addr = alloca i8*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_0.addr = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_j_0.addr = alloca i32, align 4
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_1 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_0.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_j_0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_j_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_j_0.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_data_0, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_data_0, align 4, !dbg !26
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_0.addr, align 4, !dbg !27
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_0.addr, align 4, !dbg !30
  %cmp = icmp slt i32 %0, 1, !dbg !32
  br i1 %cmp, label %for.body, label %for.end, !dbg !33

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_inputBuffer_0.addr, align 8, !dbg !34
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !38
  %call = call i8* @fgets(i8* %1, i32 14, %struct._IO_FILE* %2), !dbg !39
  %cmp1 = icmp ne i8* %call, null, !dbg !40
  br i1 %cmp1, label %if.then, label %if.else, !dbg !41

if.then:                                          ; preds = %for.body
  %3 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_inputBuffer_0.addr, align 8, !dbg !42
  %call2 = call i32 @atoi(i8* %3) #5, !dbg !44
  store i32 %call2, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_data_0, align 4, !dbg !45
  br label %if.end, !dbg !46

if.else:                                          ; preds = %for.body
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !47
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !49

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_0.addr, align 4, !dbg !50
  %inc = add nsw i32 %4, 1, !dbg !50
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_0.addr, align 4, !dbg !50
  br label %for.cond, !dbg !51, !llvm.loop !52

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_j_0.addr, align 4, !dbg !55
  br label %for.cond3, !dbg !57

for.cond3:                                        ; preds = %for.inc16, %for.end
  %5 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_j_0.addr, align 4, !dbg !58
  %cmp4 = icmp slt i32 %5, 1, !dbg !60
  br i1 %cmp4, label %for.body5, label %for.end18, !dbg !61

for.body5:                                        ; preds = %for.cond3
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_1, metadata !62, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_buffer_0, metadata !66, metadata !DIExpression()), !dbg !70
  %6 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_buffer_0 to i8*, !dbg !70
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 40, i1 false), !dbg !70
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_data_0, align 4, !dbg !71
  %cmp6 = icmp sge i32 %7, 0, !dbg !73
  br i1 %cmp6, label %if.then7, label %if.else14, !dbg !74

if.then7:                                         ; preds = %for.body5
  %8 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !75
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_data_0, align 4, !dbg !77
  call void %8(i32 %9), !dbg !75
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_1, align 4, !dbg !78
  br label %for.cond8, !dbg !80

for.cond8:                                        ; preds = %for.inc11, %if.then7
  %10 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_1, align 4, !dbg !81
  %cmp9 = icmp slt i32 %10, 10, !dbg !83
  br i1 %cmp9, label %for.body10, label %for.end13, !dbg !84

for.body10:                                       ; preds = %for.cond8
  %11 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_1, align 4, !dbg !85
  %idxprom = sext i32 %11 to i64, !dbg !87
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_buffer_0, i64 0, i64 %idxprom, !dbg !87
  %12 = load i32, i32* %arrayidx, align 4, !dbg !87
  call void @printIntLine(i32 %12), !dbg !88
  br label %for.inc11, !dbg !89

for.inc11:                                        ; preds = %for.body10
  %13 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_1, align 4, !dbg !90
  %inc12 = add nsw i32 %13, 1, !dbg !90
  store i32 %inc12, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_1, align 4, !dbg !90
  br label %for.cond8, !dbg !91, !llvm.loop !92

for.end13:                                        ; preds = %for.cond8
  br label %if.end15, !dbg !94

if.else14:                                        ; preds = %for.body5
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !95
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end13
  br label %for.inc16, !dbg !97

for.inc16:                                        ; preds = %if.end15
  %14 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_j_0.addr, align 4, !dbg !98
  %inc17 = add nsw i32 %14, 1, !dbg !98
  store i32 %inc17, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_j_0.addr, align 4, !dbg !98
  br label %for.cond3, !dbg !99, !llvm.loop !100

for.end18:                                        ; preds = %for.cond3
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_label_, !dbg !101

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_label_: ; preds = %for.end18
  call void @llvm.dbg.label(metadata !102), !dbg !103
  ret void, !dbg !104
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1736CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1756_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_580/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1736CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1756_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !12, !13}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !12}
!16 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 121, scope: !7)
!18 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_0", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 197, scope: !7)
!20 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_j_0", arg: 3, scope: !7, file: !1, line: 3, type: !12)
!21 = !DILocation(line: 3, column: 263, scope: !7)
!22 = !DILocalVariable(name: "opsink", arg: 4, scope: !7, file: !1, line: 3, type: !13)
!23 = !DILocation(line: 3, column: 332, scope: !7)
!24 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_data_0", scope: !7, file: !1, line: 5, type: !12)
!25 = !DILocation(line: 5, column: 7, scope: !7)
!26 = !DILocation(line: 6, column: 67, scope: !7)
!27 = !DILocation(line: 7, column: 69, scope: !28)
!28 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 3)
!29 = !DILocation(line: 7, column: 8, scope: !28)
!30 = !DILocation(line: 7, column: 74, scope: !31)
!31 = distinct !DILexicalBlock(scope: !28, file: !1, line: 7, column: 3)
!32 = !DILocation(line: 7, column: 135, scope: !31)
!33 = !DILocation(line: 7, column: 3, scope: !28)
!34 = !DILocation(line: 10, column: 17, scope: !35)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 10, column: 11)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 9, column: 5)
!37 = distinct !DILexicalBlock(scope: !31, file: !1, line: 8, column: 3)
!38 = !DILocation(line: 10, column: 174, scope: !35)
!39 = !DILocation(line: 10, column: 11, scope: !35)
!40 = !DILocation(line: 10, column: 181, scope: !35)
!41 = !DILocation(line: 10, column: 11, scope: !36)
!42 = !DILocation(line: 12, column: 80, scope: !43)
!43 = distinct !DILexicalBlock(scope: !35, file: !1, line: 11, column: 7)
!44 = !DILocation(line: 12, column: 75, scope: !43)
!45 = !DILocation(line: 12, column: 73, scope: !43)
!46 = !DILocation(line: 13, column: 7, scope: !43)
!47 = !DILocation(line: 16, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !35, file: !1, line: 15, column: 7)
!49 = !DILocation(line: 20, column: 3, scope: !37)
!50 = !DILocation(line: 7, column: 200, scope: !31)
!51 = !DILocation(line: 7, column: 3, scope: !31)
!52 = distinct !{!52, !33, !53, !54}
!53 = !DILocation(line: 20, column: 3, scope: !28)
!54 = !{!"llvm.loop.mustprogress"}
!55 = !DILocation(line: 22, column: 69, scope: !56)
!56 = distinct !DILexicalBlock(scope: !7, file: !1, line: 22, column: 3)
!57 = !DILocation(line: 22, column: 8, scope: !56)
!58 = !DILocation(line: 22, column: 74, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !1, line: 22, column: 3)
!60 = !DILocation(line: 22, column: 135, scope: !59)
!61 = !DILocation(line: 22, column: 3, scope: !56)
!62 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_i_1", scope: !63, file: !1, line: 25, type: !12)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 24, column: 5)
!64 = distinct !DILexicalBlock(scope: !59, file: !1, line: 23, column: 3)
!65 = !DILocation(line: 25, column: 11, scope: !63)
!66 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_buffer_0", scope: !63, file: !1, line: 26, type: !67)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 10)
!70 = !DILocation(line: 26, column: 11, scope: !63)
!71 = !DILocation(line: 27, column: 11, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 27, column: 11)
!73 = !DILocation(line: 27, column: 75, scope: !72)
!74 = !DILocation(line: 27, column: 11, scope: !63)
!75 = !DILocation(line: 29, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 28, column: 7)
!77 = !DILocation(line: 29, column: 16, scope: !76)
!78 = !DILocation(line: 30, column: 75, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !1, line: 30, column: 9)
!80 = !DILocation(line: 30, column: 14, scope: !79)
!81 = !DILocation(line: 30, column: 80, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 30, column: 9)
!83 = !DILocation(line: 30, column: 141, scope: !82)
!84 = !DILocation(line: 30, column: 9, scope: !79)
!85 = !DILocation(line: 32, column: 90, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 31, column: 9)
!87 = !DILocation(line: 32, column: 24, scope: !86)
!88 = !DILocation(line: 32, column: 11, scope: !86)
!89 = !DILocation(line: 33, column: 9, scope: !86)
!90 = !DILocation(line: 30, column: 207, scope: !82)
!91 = !DILocation(line: 30, column: 9, scope: !82)
!92 = distinct !{!92, !84, !93, !54}
!93 = !DILocation(line: 33, column: 9, scope: !79)
!94 = !DILocation(line: 35, column: 7, scope: !76)
!95 = !DILocation(line: 38, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !72, file: !1, line: 37, column: 7)
!97 = !DILocation(line: 42, column: 3, scope: !64)
!98 = !DILocation(line: 22, column: 200, scope: !59)
!99 = !DILocation(line: 22, column: 3, scope: !59)
!100 = distinct !{!100, !61, !101, !54}
!101 = !DILocation(line: 42, column: 3, scope: !56)
!102 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_bad_label_", file: !1, line: 44)
!103 = !DILocation(line: 44, column: 3, scope: !7)
!104 = !DILocation(line: 49, column: 1, scope: !7)
