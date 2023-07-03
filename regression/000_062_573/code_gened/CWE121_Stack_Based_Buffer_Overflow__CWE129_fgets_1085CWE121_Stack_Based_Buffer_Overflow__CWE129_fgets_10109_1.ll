; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1085CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10109_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1085CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10109_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@globalTrue = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@globalFalse = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1085CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10109_1(i8* %_goodB2G1_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
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
  %0 = load i32, i32* @globalTrue, align 4, !dbg !23
  %tobool = icmp ne i32 %0, 0, !dbg !23
  br i1 %tobool, label %if.then, label %if.end3, !dbg !25

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !26
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !30
  %call = call i8* @fgets(i8* %1, i32 14, %struct._IO_FILE* %2), !dbg !31
  %cmp = icmp ne i8* %call, null, !dbg !32
  br i1 %cmp, label %if.then1, label %if.else, !dbg !33

if.then1:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !34
  %call2 = call i32 @atoi(i8* %3) #5, !dbg !36
  store i32 %call2, i32* %_goodB2G1_data_0, align 4, !dbg !37
  br label %if.end, !dbg !38

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !39
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end3, !dbg !41

if.end3:                                          ; preds = %if.end, %entry
  %4 = load i32, i32* @globalFalse, align 4, !dbg !42
  %tobool4 = icmp ne i32 %4, 0, !dbg !42
  br i1 %tobool4, label %if.then5, label %if.else6, !dbg !44

if.then5:                                         ; preds = %if.end3
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !45
  br label %if.end13, !dbg !47

if.else6:                                         ; preds = %if.end3
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !48, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G1_buffer_0, metadata !52, metadata !DIExpression()), !dbg !56
  %5 = bitcast [10 x i32]* %_goodB2G1_buffer_0 to i8*, !dbg !56
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !56
  %6 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !57
  %cmp7 = icmp sge i32 %6, 0, !dbg !59
  br i1 %cmp7, label %land.lhs.true, label %if.else11, !dbg !60

land.lhs.true:                                    ; preds = %if.else6
  %7 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !61
  %cmp8 = icmp slt i32 %7, 10, !dbg !62
  br i1 %cmp8, label %if.then9, label %if.else11, !dbg !63

if.then9:                                         ; preds = %land.lhs.true
  %8 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !64
  %9 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !66
  call void %8(i32 %9), !dbg !64
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !67
  br label %for.cond, !dbg !69

for.cond:                                         ; preds = %for.inc, %if.then9
  %10 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !70
  %cmp10 = icmp slt i32 %10, 10, !dbg !72
  br i1 %cmp10, label %for.body, label %for.end, !dbg !73

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !74
  %idxprom = sext i32 %11 to i64, !dbg !76
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom, !dbg !76
  %12 = load i32, i32* %arrayidx, align 4, !dbg !76
  call void @printIntLine(i32 %12), !dbg !77
  br label %for.inc, !dbg !78

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !79
  %inc = add nsw i32 %13, 1, !dbg !79
  store i32 %inc, i32* %_goodB2G1_i_0, align 4, !dbg !79
  br label %for.cond, !dbg !80, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  br label %if.end12, !dbg !84

if.else11:                                        ; preds = %land.lhs.true, %if.else6
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !85
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %for.end
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then5
  br label %goodB2G1_label_, !dbg !42

goodB2G1_label_:                                  ; preds = %if.end13
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1085CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10109_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_573/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1085CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10109_1", scope: !1, file: !1, line: 5, type: !8, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G1_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 5, type: !10)
!17 = !DILocation(line: 5, column: 122, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 5, type: !12)
!19 = !DILocation(line: 5, column: 154, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !7, file: !1, line: 7, type: !15)
!21 = !DILocation(line: 7, column: 7, scope: !7)
!22 = !DILocation(line: 8, column: 20, scope: !7)
!23 = !DILocation(line: 9, column: 7, scope: !24)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 7)
!25 = !DILocation(line: 9, column: 7, scope: !7)
!26 = !DILocation(line: 12, column: 17, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 12, column: 11)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 11, column: 5)
!29 = distinct !DILexicalBlock(scope: !24, file: !1, line: 10, column: 3)
!30 = !DILocation(line: 12, column: 80, scope: !27)
!31 = !DILocation(line: 12, column: 11, scope: !27)
!32 = !DILocation(line: 12, column: 87, scope: !27)
!33 = !DILocation(line: 12, column: 11, scope: !28)
!34 = !DILocation(line: 14, column: 33, scope: !35)
!35 = distinct !DILexicalBlock(scope: !27, file: !1, line: 13, column: 7)
!36 = !DILocation(line: 14, column: 28, scope: !35)
!37 = !DILocation(line: 14, column: 26, scope: !35)
!38 = !DILocation(line: 15, column: 7, scope: !35)
!39 = !DILocation(line: 18, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !27, file: !1, line: 17, column: 7)
!41 = !DILocation(line: 22, column: 3, scope: !29)
!42 = !DILocation(line: 24, column: 7, scope: !43)
!43 = distinct !DILexicalBlock(scope: !7, file: !1, line: 24, column: 7)
!44 = !DILocation(line: 24, column: 7, scope: !7)
!45 = !DILocation(line: 26, column: 5, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 25, column: 3)
!47 = !DILocation(line: 27, column: 3, scope: !46)
!48 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !49, file: !1, line: 31, type: !15)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 30, column: 5)
!50 = distinct !DILexicalBlock(scope: !43, file: !1, line: 29, column: 3)
!51 = !DILocation(line: 31, column: 11, scope: !49)
!52 = !DILocalVariable(name: "_goodB2G1_buffer_0", scope: !49, file: !1, line: 32, type: !53)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 10)
!56 = !DILocation(line: 32, column: 11, scope: !49)
!57 = !DILocation(line: 33, column: 12, scope: !58)
!58 = distinct !DILexicalBlock(scope: !49, file: !1, line: 33, column: 11)
!59 = !DILocation(line: 33, column: 29, scope: !58)
!60 = !DILocation(line: 33, column: 35, scope: !58)
!61 = !DILocation(line: 33, column: 39, scope: !58)
!62 = !DILocation(line: 33, column: 56, scope: !58)
!63 = !DILocation(line: 33, column: 11, scope: !49)
!64 = !DILocation(line: 35, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !58, file: !1, line: 34, column: 7)
!66 = !DILocation(line: 35, column: 16, scope: !65)
!67 = !DILocation(line: 36, column: 28, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 36, column: 9)
!69 = !DILocation(line: 36, column: 14, scope: !68)
!70 = !DILocation(line: 36, column: 33, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 36, column: 9)
!72 = !DILocation(line: 36, column: 47, scope: !71)
!73 = !DILocation(line: 36, column: 9, scope: !68)
!74 = !DILocation(line: 38, column: 43, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 37, column: 9)
!76 = !DILocation(line: 38, column: 24, scope: !75)
!77 = !DILocation(line: 38, column: 11, scope: !75)
!78 = !DILocation(line: 39, column: 9, scope: !75)
!79 = !DILocation(line: 36, column: 66, scope: !71)
!80 = !DILocation(line: 36, column: 9, scope: !71)
!81 = distinct !{!81, !73, !82, !83}
!82 = !DILocation(line: 39, column: 9, scope: !68)
!83 = !{!"llvm.loop.mustprogress"}
!84 = !DILocation(line: 41, column: 7, scope: !65)
!85 = !DILocation(line: 44, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !58, file: !1, line: 43, column: 7)
!87 = !DILabel(scope: !7, name: "goodB2G1_label_", file: !1, line: 50)
!88 = !DILocation(line: 50, column: 3, scope: !7)
!89 = !DILocation(line: 55, column: 1, scope: !7)
