; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3237CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3258_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3237CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3258_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3237CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3258_1(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr1_0 = alloca i32*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr2_0 = alloca i32*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_1 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_2 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr1_0, metadata !22, metadata !DIExpression()), !dbg !24
  store i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_0, i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr1_0, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr2_0, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_0, i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr2_0, align 8, !dbg !26
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_0, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_1, metadata !28, metadata !DIExpression()), !dbg !30
  %0 = load i32*, i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr1_0, align 8, !dbg !31
  %1 = load i32, i32* %0, align 4, !dbg !32
  store i32 %1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_1, align 4, !dbg !30
  %2 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_inputBuffer_0.addr, align 8, !dbg !33
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !36
  %call = call i8* @fgets(i8* %2, i32 14, %struct._IO_FILE* %3), !dbg !37
  %cmp = icmp ne i8* %call, null, !dbg !38
  br i1 %cmp, label %if.then, label %if.else, !dbg !39

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_inputBuffer_0.addr, align 8, !dbg !40
  %call1 = call i32 @atoi(i8* %4) #5, !dbg !42
  store i32 %call1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_1, align 4, !dbg !43
  br label %if.end, !dbg !44

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !45
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_1, align 4, !dbg !47
  %6 = load i32*, i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr1_0, align 8, !dbg !48
  store i32 %5, i32* %6, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_2, metadata !50, metadata !DIExpression()), !dbg !52
  %7 = load i32*, i32** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr2_0, align 8, !dbg !53
  %8 = load i32, i32* %7, align 4, !dbg !54
  store i32 %8, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_2, align 4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_i_0, metadata !55, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_buffer_0, metadata !58, metadata !DIExpression()), !dbg !62
  %9 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_buffer_0 to i8*, !dbg !62
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 40, i1 false), !dbg !62
  %10 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_2, align 4, !dbg !63
  %cmp2 = icmp sge i32 %10, 0, !dbg !65
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !66

if.then3:                                         ; preds = %if.end
  %11 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !67
  %12 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_2, align 4, !dbg !69
  call void %11(i32 %12), !dbg !67
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_i_0, align 4, !dbg !70
  br label %for.cond, !dbg !72

for.cond:                                         ; preds = %for.inc, %if.then3
  %13 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_i_0, align 4, !dbg !73
  %cmp4 = icmp slt i32 %13, 10, !dbg !75
  br i1 %cmp4, label %for.body, label %for.end, !dbg !76

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_i_0, align 4, !dbg !77
  %idxprom = sext i32 %14 to i64, !dbg !79
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_buffer_0, i64 0, i64 %idxprom, !dbg !79
  %15 = load i32, i32* %arrayidx, align 4, !dbg !79
  call void @printIntLine(i32 %15), !dbg !80
  br label %for.inc, !dbg !81

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_i_0, align 4, !dbg !82
  %inc = add nsw i32 %16, 1, !dbg !82
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_i_0, align 4, !dbg !82
  br label %for.cond, !dbg !83, !llvm.loop !84

for.end:                                          ; preds = %for.cond
  br label %if.end6, !dbg !87

if.else5:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !88
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_label_, !dbg !90

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_label_: ; preds = %if.end6
  call void @llvm.dbg.label(metadata !91), !dbg !92
  ret void, !dbg !93
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3237CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3258_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_585/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3237CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3258_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 121, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 200, scope: !7)
!20 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_0", scope: !7, file: !1, line: 5, type: !15)
!21 = !DILocation(line: 5, column: 7, scope: !7)
!22 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr1_0", scope: !7, file: !1, line: 6, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!24 = !DILocation(line: 6, column: 8, scope: !7)
!25 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_dataPtr2_0", scope: !7, file: !1, line: 7, type: !23)
!26 = !DILocation(line: 7, column: 8, scope: !7)
!27 = !DILocation(line: 8, column: 67, scope: !7)
!28 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_1", scope: !29, file: !1, line: 10, type: !15)
!29 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 3)
!30 = !DILocation(line: 10, column: 9, scope: !29)
!31 = !DILocation(line: 10, column: 76, scope: !29)
!32 = !DILocation(line: 10, column: 75, scope: !29)
!33 = !DILocation(line: 12, column: 17, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 12, column: 11)
!35 = distinct !DILexicalBlock(scope: !29, file: !1, line: 11, column: 5)
!36 = !DILocation(line: 12, column: 174, scope: !34)
!37 = !DILocation(line: 12, column: 11, scope: !34)
!38 = !DILocation(line: 12, column: 181, scope: !34)
!39 = !DILocation(line: 12, column: 11, scope: !35)
!40 = !DILocation(line: 14, column: 80, scope: !41)
!41 = distinct !DILexicalBlock(scope: !34, file: !1, line: 13, column: 7)
!42 = !DILocation(line: 14, column: 75, scope: !41)
!43 = !DILocation(line: 14, column: 73, scope: !41)
!44 = !DILocation(line: 15, column: 7, scope: !41)
!45 = !DILocation(line: 18, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !34, file: !1, line: 17, column: 7)
!47 = !DILocation(line: 22, column: 76, scope: !29)
!48 = !DILocation(line: 22, column: 6, scope: !29)
!49 = !DILocation(line: 22, column: 74, scope: !29)
!50 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_data_2", scope: !51, file: !1, line: 25, type: !15)
!51 = distinct !DILexicalBlock(scope: !7, file: !1, line: 24, column: 3)
!52 = !DILocation(line: 25, column: 9, scope: !51)
!53 = !DILocation(line: 25, column: 76, scope: !51)
!54 = !DILocation(line: 25, column: 75, scope: !51)
!55 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_i_0", scope: !56, file: !1, line: 27, type: !15)
!56 = distinct !DILexicalBlock(scope: !51, file: !1, line: 26, column: 5)
!57 = !DILocation(line: 27, column: 11, scope: !56)
!58 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_buffer_0", scope: !56, file: !1, line: 28, type: !59)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 10)
!62 = !DILocation(line: 28, column: 11, scope: !56)
!63 = !DILocation(line: 29, column: 11, scope: !64)
!64 = distinct !DILexicalBlock(scope: !56, file: !1, line: 29, column: 11)
!65 = !DILocation(line: 29, column: 75, scope: !64)
!66 = !DILocation(line: 29, column: 11, scope: !56)
!67 = !DILocation(line: 31, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 30, column: 7)
!69 = !DILocation(line: 31, column: 16, scope: !68)
!70 = !DILocation(line: 32, column: 75, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 32, column: 9)
!72 = !DILocation(line: 32, column: 14, scope: !71)
!73 = !DILocation(line: 32, column: 80, scope: !74)
!74 = distinct !DILexicalBlock(scope: !71, file: !1, line: 32, column: 9)
!75 = !DILocation(line: 32, column: 141, scope: !74)
!76 = !DILocation(line: 32, column: 9, scope: !71)
!77 = !DILocation(line: 34, column: 90, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 33, column: 9)
!79 = !DILocation(line: 34, column: 24, scope: !78)
!80 = !DILocation(line: 34, column: 11, scope: !78)
!81 = !DILocation(line: 35, column: 9, scope: !78)
!82 = !DILocation(line: 32, column: 207, scope: !74)
!83 = !DILocation(line: 32, column: 9, scope: !74)
!84 = distinct !{!84, !76, !85, !86}
!85 = !DILocation(line: 35, column: 9, scope: !71)
!86 = !{!"llvm.loop.mustprogress"}
!87 = !DILocation(line: 37, column: 7, scope: !68)
!88 = !DILocation(line: 40, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !64, file: !1, line: 39, column: 7)
!90 = !DILocation(line: 44, column: 3, scope: !51)
!91 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_32_bad_label_", file: !1, line: 45)
!92 = !DILocation(line: 45, column: 3, scope: !7)
!93 = !DILocation(line: 50, column: 1, scope: !7)
