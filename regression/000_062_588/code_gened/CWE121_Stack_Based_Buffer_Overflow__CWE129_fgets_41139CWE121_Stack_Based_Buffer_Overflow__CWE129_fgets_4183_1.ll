; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41139CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4183_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41139CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4183_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41139CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4183_1(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i32, align 4
  %_goodG2BSink_i_0 = alloca i32, align 4
  %_goodG2BSink_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G_inputBuffer_0, i8** %_goodB2G_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !23
  %0 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !24
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !27
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !28
  %cmp = icmp ne i8* %call, null, !dbg !29
  br i1 %cmp, label %if.then, label %if.else, !dbg !30

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !31
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !33
  store i32 %call1, i32* %_goodB2G_data_0, align 4, !dbg !34
  br label %if.end, !dbg !35

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !36
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !38
  call void @goodB2GSink(i32 %3), !dbg !39
  br label %goodB2G_label_, !dbg !39

goodB2G_label_:                                   ; preds = %if.end
  call void @llvm.dbg.label(metadata !40), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_data_0, metadata !42, metadata !DIExpression()), !dbg !44
  store i32 -1, i32* %_goodG2B_data_0, align 4, !dbg !45
  store i32 7, i32* %_goodG2B_data_0, align 4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %_goodG2BSink_i_0, metadata !47, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2BSink_buffer_0, metadata !51, metadata !DIExpression()), !dbg !55
  %4 = bitcast [10 x i32]* %_goodG2BSink_buffer_0 to i8*, !dbg !55
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !55
  %5 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !56
  %cmp2 = icmp sge i32 %5, 0, !dbg !58
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !59

if.then3:                                         ; preds = %goodB2G_label_
  %6 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !60
  %7 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !62
  call void %6(i32 %7), !dbg !60
  store i32 0, i32* %_goodG2BSink_i_0, align 4, !dbg !63
  br label %for.cond, !dbg !65

for.cond:                                         ; preds = %for.inc, %if.then3
  %8 = load i32, i32* %_goodG2BSink_i_0, align 4, !dbg !66
  %cmp4 = icmp slt i32 %8, 10, !dbg !68
  br i1 %cmp4, label %for.body, label %for.end, !dbg !69

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %_goodG2BSink_i_0, align 4, !dbg !70
  %idxprom = sext i32 %9 to i64, !dbg !72
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2BSink_buffer_0, i64 0, i64 %idxprom, !dbg !72
  %10 = load i32, i32* %arrayidx, align 4, !dbg !72
  call void @printIntLine(i32 %10), !dbg !73
  br label %for.inc, !dbg !74

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %_goodG2BSink_i_0, align 4, !dbg !75
  %inc = add nsw i32 %11, 1, !dbg !75
  store i32 %inc, i32* %_goodG2BSink_i_0, align 4, !dbg !75
  br label %for.cond, !dbg !76, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  br label %if.end6, !dbg !80

if.else5:                                         ; preds = %goodB2G_label_
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !81
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %for.end
  br label %goodG2BSink_label_, !dbg !83

goodG2BSink_label_:                               ; preds = %if.end6
  call void @llvm.dbg.label(metadata !84), !dbg !85
  br label %goodG2B_label_, !dbg !86

goodG2B_label_:                                   ; preds = %goodG2BSink_label_
  call void @llvm.dbg.label(metadata !87), !dbg !88
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41_good_label_, !dbg !89

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !90), !dbg !91
  ret void, !dbg !92
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #3

declare dso_local void @printLine(i8*) #2

declare dso_local void @goodB2GSink(i32) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local void @printIntLine(i32) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41139CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4183_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_588/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41139CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4183_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 122, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 153, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G_data_0", scope: !21, file: !1, line: 6, type: !15)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!22 = !DILocation(line: 6, column: 9, scope: !21)
!23 = !DILocation(line: 7, column: 21, scope: !21)
!24 = !DILocation(line: 9, column: 17, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 9, column: 11)
!26 = distinct !DILexicalBlock(scope: !21, file: !1, line: 8, column: 5)
!27 = !DILocation(line: 9, column: 78, scope: !25)
!28 = !DILocation(line: 9, column: 11, scope: !25)
!29 = !DILocation(line: 9, column: 85, scope: !25)
!30 = !DILocation(line: 9, column: 11, scope: !26)
!31 = !DILocation(line: 11, column: 32, scope: !32)
!32 = distinct !DILexicalBlock(scope: !25, file: !1, line: 10, column: 7)
!33 = !DILocation(line: 11, column: 27, scope: !32)
!34 = !DILocation(line: 11, column: 25, scope: !32)
!35 = !DILocation(line: 12, column: 7, scope: !32)
!36 = !DILocation(line: 15, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !25, file: !1, line: 14, column: 7)
!38 = !DILocation(line: 19, column: 17, scope: !21)
!39 = !DILocation(line: 19, column: 5, scope: !21)
!40 = !DILabel(scope: !21, name: "goodB2G_label_", file: !1, line: 20)
!41 = !DILocation(line: 20, column: 5, scope: !21)
!42 = !DILocalVariable(name: "_goodG2B_data_0", scope: !43, file: !1, line: 27, type: !15)
!43 = distinct !DILexicalBlock(scope: !7, file: !1, line: 26, column: 3)
!44 = !DILocation(line: 27, column: 9, scope: !43)
!45 = !DILocation(line: 28, column: 21, scope: !43)
!46 = !DILocation(line: 29, column: 21, scope: !43)
!47 = !DILocalVariable(name: "_goodG2BSink_i_0", scope: !48, file: !1, line: 32, type: !15)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 31, column: 7)
!49 = distinct !DILexicalBlock(scope: !43, file: !1, line: 30, column: 5)
!50 = !DILocation(line: 32, column: 13, scope: !48)
!51 = !DILocalVariable(name: "_goodG2BSink_buffer_0", scope: !48, file: !1, line: 33, type: !52)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 10)
!55 = !DILocation(line: 33, column: 13, scope: !48)
!56 = !DILocation(line: 34, column: 13, scope: !57)
!57 = distinct !DILexicalBlock(scope: !48, file: !1, line: 34, column: 13)
!58 = !DILocation(line: 34, column: 29, scope: !57)
!59 = !DILocation(line: 34, column: 13, scope: !48)
!60 = !DILocation(line: 36, column: 11, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 35, column: 9)
!62 = !DILocation(line: 36, column: 18, scope: !61)
!63 = !DILocation(line: 37, column: 33, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !1, line: 37, column: 11)
!65 = !DILocation(line: 37, column: 16, scope: !64)
!66 = !DILocation(line: 37, column: 38, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 37, column: 11)
!68 = !DILocation(line: 37, column: 55, scope: !67)
!69 = !DILocation(line: 37, column: 11, scope: !64)
!70 = !DILocation(line: 39, column: 48, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 38, column: 11)
!72 = !DILocation(line: 39, column: 26, scope: !71)
!73 = !DILocation(line: 39, column: 13, scope: !71)
!74 = !DILocation(line: 40, column: 11, scope: !71)
!75 = !DILocation(line: 37, column: 77, scope: !67)
!76 = !DILocation(line: 37, column: 11, scope: !67)
!77 = distinct !{!77, !69, !78, !79}
!78 = !DILocation(line: 40, column: 11, scope: !64)
!79 = !{!"llvm.loop.mustprogress"}
!80 = !DILocation(line: 42, column: 9, scope: !61)
!81 = !DILocation(line: 45, column: 11, scope: !82)
!82 = distinct !DILexicalBlock(scope: !57, file: !1, line: 44, column: 9)
!83 = !DILocation(line: 48, column: 7, scope: !48)
!84 = !DILabel(scope: !49, name: "goodG2BSink_label_", file: !1, line: 49)
!85 = !DILocation(line: 49, column: 7, scope: !49)
!86 = !DILocation(line: 54, column: 5, scope: !49)
!87 = !DILabel(scope: !43, name: "goodG2B_label_", file: !1, line: 55)
!88 = !DILocation(line: 55, column: 5, scope: !43)
!89 = !DILocation(line: 60, column: 3, scope: !43)
!90 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_41_good_label_", file: !1, line: 61)
!91 = !DILocation(line: 61, column: 3, scope: !7)
!92 = !DILocation(line: 66, column: 1, scope: !7)
