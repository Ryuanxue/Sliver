; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3435CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3455_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3435CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3455_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType = type { i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3435CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3455_1(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_myUnion_0 = alloca %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_data_1 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_myUnion_0, metadata !22, metadata !DIExpression()), !dbg !29
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_data_0, align 4, !dbg !30
  %0 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_inputBuffer_0.addr, align 8, !dbg !31
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !34
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !35
  %cmp = icmp ne i8* %call, null, !dbg !36
  br i1 %cmp, label %if.then, label %if.else, !dbg !37

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_inputBuffer_0.addr, align 8, !dbg !38
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !40
  store i32 %call1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_data_0, align 4, !dbg !41
  br label %if.end, !dbg !42

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !43
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_data_0, align 4, !dbg !45
  %unionFirst = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_myUnion_0 to i32*, !dbg !46
  store i32 %3, i32* %unionFirst, align 4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_data_1, metadata !48, metadata !DIExpression()), !dbg !50
  %unionSecond = bitcast %union.CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_myUnion_0 to i32*, !dbg !51
  %4 = load i32, i32* %unionSecond, align 4, !dbg !51
  store i32 %4, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_data_1, align 4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_i_0, metadata !52, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_buffer_0, metadata !55, metadata !DIExpression()), !dbg !59
  %5 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_buffer_0 to i8*, !dbg !59
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !59
  %6 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_data_1, align 4, !dbg !60
  %cmp2 = icmp sge i32 %6, 0, !dbg !62
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !63

if.then3:                                         ; preds = %if.end
  %7 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !64
  %8 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_data_1, align 4, !dbg !66
  call void %7(i32 %8), !dbg !64
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_i_0, align 4, !dbg !67
  br label %for.cond, !dbg !69

for.cond:                                         ; preds = %for.inc, %if.then3
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_i_0, align 4, !dbg !70
  %cmp4 = icmp slt i32 %9, 10, !dbg !72
  br i1 %cmp4, label %for.body, label %for.end, !dbg !73

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_i_0, align 4, !dbg !74
  %idxprom = sext i32 %10 to i64, !dbg !76
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_buffer_0, i64 0, i64 %idxprom, !dbg !76
  %11 = load i32, i32* %arrayidx, align 4, !dbg !76
  call void @printIntLine(i32 %11), !dbg !77
  br label %for.inc, !dbg !78

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_i_0, align 4, !dbg !79
  %inc = add nsw i32 %12, 1, !dbg !79
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_i_0, align 4, !dbg !79
  br label %for.cond, !dbg !80, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  br label %if.end6, !dbg !84

if.else5:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !85
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_label_, !dbg !87

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_label_: ; preds = %if.end6
  call void @llvm.dbg.label(metadata !88), !dbg !89
  ret void, !dbg !90
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3435CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3455_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_587/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3435CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_3455_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 121, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 200, scope: !7)
!20 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_data_0", scope: !7, file: !1, line: 5, type: !15)
!21 = !DILocation(line: 5, column: 7, scope: !7)
!22 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_myUnion_0", scope: !7, file: !1, line: 6, type: !23)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_unionType", file: !24, line: 9, baseType: !25)
!24 = !DIFile(filename: "../source_code/_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_587/code_gened")
!25 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !24, line: 5, size: 32, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "unionFirst", scope: !25, file: !24, line: 7, baseType: !15, size: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "unionSecond", scope: !25, file: !24, line: 8, baseType: !15, size: 32)
!29 = !DILocation(line: 6, column: 65, scope: !7)
!30 = !DILocation(line: 7, column: 67, scope: !7)
!31 = !DILocation(line: 9, column: 15, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 9, column: 9)
!33 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 3)
!34 = !DILocation(line: 9, column: 172, scope: !32)
!35 = !DILocation(line: 9, column: 9, scope: !32)
!36 = !DILocation(line: 9, column: 179, scope: !32)
!37 = !DILocation(line: 9, column: 9, scope: !33)
!38 = !DILocation(line: 11, column: 78, scope: !39)
!39 = distinct !DILexicalBlock(scope: !32, file: !1, line: 10, column: 5)
!40 = !DILocation(line: 11, column: 73, scope: !39)
!41 = !DILocation(line: 11, column: 71, scope: !39)
!42 = !DILocation(line: 12, column: 5, scope: !39)
!43 = !DILocation(line: 15, column: 7, scope: !44)
!44 = distinct !DILexicalBlock(scope: !32, file: !1, line: 14, column: 5)
!45 = !DILocation(line: 19, column: 83, scope: !7)
!46 = !DILocation(line: 19, column: 70, scope: !7)
!47 = !DILocation(line: 19, column: 81, scope: !7)
!48 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_data_1", scope: !49, file: !1, line: 21, type: !15)
!49 = distinct !DILexicalBlock(scope: !7, file: !1, line: 20, column: 3)
!50 = !DILocation(line: 21, column: 9, scope: !49)
!51 = !DILocation(line: 21, column: 142, scope: !49)
!52 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_i_0", scope: !53, file: !1, line: 23, type: !15)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 22, column: 5)
!54 = !DILocation(line: 23, column: 11, scope: !53)
!55 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_buffer_0", scope: !53, file: !1, line: 24, type: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 10)
!59 = !DILocation(line: 24, column: 11, scope: !53)
!60 = !DILocation(line: 25, column: 11, scope: !61)
!61 = distinct !DILexicalBlock(scope: !53, file: !1, line: 25, column: 11)
!62 = !DILocation(line: 25, column: 75, scope: !61)
!63 = !DILocation(line: 25, column: 11, scope: !53)
!64 = !DILocation(line: 27, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 26, column: 7)
!66 = !DILocation(line: 27, column: 16, scope: !65)
!67 = !DILocation(line: 28, column: 75, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 28, column: 9)
!69 = !DILocation(line: 28, column: 14, scope: !68)
!70 = !DILocation(line: 28, column: 80, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 28, column: 9)
!72 = !DILocation(line: 28, column: 141, scope: !71)
!73 = !DILocation(line: 28, column: 9, scope: !68)
!74 = !DILocation(line: 30, column: 90, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 29, column: 9)
!76 = !DILocation(line: 30, column: 24, scope: !75)
!77 = !DILocation(line: 30, column: 11, scope: !75)
!78 = !DILocation(line: 31, column: 9, scope: !75)
!79 = !DILocation(line: 28, column: 207, scope: !71)
!80 = !DILocation(line: 28, column: 9, scope: !71)
!81 = distinct !{!81, !73, !82, !83}
!82 = !DILocation(line: 31, column: 9, scope: !68)
!83 = !{!"llvm.loop.mustprogress"}
!84 = !DILocation(line: 33, column: 7, scope: !65)
!85 = !DILocation(line: 36, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !61, file: !1, line: 35, column: 7)
!87 = !DILocation(line: 40, column: 3, scope: !49)
!88 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_34_bad_label_", file: !1, line: 41)
!89 = !DILocation(line: 41, column: 3, scope: !7)
!90 = !DILocation(line: 46, column: 1, scope: !7)
