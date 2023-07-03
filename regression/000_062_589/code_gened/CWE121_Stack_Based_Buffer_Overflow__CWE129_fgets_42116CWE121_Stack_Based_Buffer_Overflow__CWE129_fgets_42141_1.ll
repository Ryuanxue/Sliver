; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42116CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42141_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42116CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42141_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42116CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42141_1(i8* %_goodB2GSource_inputBuffer_0, i32 %goodB2GSource_return_, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2GSource_inputBuffer_0.addr = alloca i8*, align 8
  %goodB2GSource_return_.addr = alloca i32, align 4
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2GSource_inputBuffer_0, i8** %_goodB2GSource_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2GSource_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 %goodB2GSource_return_, i32* %goodB2GSource_return_.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %goodB2GSource_return_.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !24
  %0 = load i8*, i8** %_goodB2GSource_inputBuffer_0.addr, align 8, !dbg !25
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !29
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !30
  %cmp = icmp ne i8* %call, null, !dbg !31
  br i1 %cmp, label %if.then, label %if.else, !dbg !32

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %_goodB2GSource_inputBuffer_0.addr, align 8, !dbg !33
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !35
  store i32 %call1, i32* %_goodB2G_data_0, align 4, !dbg !36
  br label %if.end, !dbg !37

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !38
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !40
  store i32 %3, i32* %goodB2GSource_return_.addr, align 4, !dbg !41
  br label %goodB2GSource_label_, !dbg !42

goodB2GSource_label_:                             ; preds = %if.end
  call void @llvm.dbg.label(metadata !43), !dbg !44
  %4 = load i32, i32* %goodB2GSource_return_.addr, align 4, !dbg !45
  store i32 %4, i32* %_goodB2G_data_0, align 4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !47, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G_buffer_0, metadata !50, metadata !DIExpression()), !dbg !54
  %5 = bitcast [10 x i32]* %_goodB2G_buffer_0 to i8*, !dbg !54
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !54
  %6 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !55
  %cmp2 = icmp sge i32 %6, 0, !dbg !57
  br i1 %cmp2, label %land.lhs.true, label %if.else6, !dbg !58

land.lhs.true:                                    ; preds = %goodB2GSource_label_
  %7 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !59
  %cmp3 = icmp slt i32 %7, 10, !dbg !60
  br i1 %cmp3, label %if.then4, label %if.else6, !dbg !61

if.then4:                                         ; preds = %land.lhs.true
  %8 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !62
  %9 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !64
  call void %8(i32 %9), !dbg !62
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !65
  br label %for.cond, !dbg !67

for.cond:                                         ; preds = %for.inc, %if.then4
  %10 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !68
  %cmp5 = icmp slt i32 %10, 10, !dbg !70
  br i1 %cmp5, label %for.body, label %for.end, !dbg !71

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !72
  %idxprom = sext i32 %11 to i64, !dbg !74
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom, !dbg !74
  %12 = load i32, i32* %arrayidx, align 4, !dbg !74
  call void @printIntLine(i32 %12), !dbg !75
  br label %for.inc, !dbg !76

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !77
  %inc = add nsw i32 %13, 1, !dbg !77
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !77
  br label %for.cond, !dbg !78, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  br label %if.end7, !dbg !82

if.else6:                                         ; preds = %land.lhs.true, %goodB2GSource_label_
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !83
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %for.end
  br label %goodB2G_label_, !dbg !85

goodB2G_label_:                                   ; preds = %if.end7
  call void @llvm.dbg.label(metadata !86), !dbg !87
  ret void, !dbg !88
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #3

declare dso_local void @printLine(i8*) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42116CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42141_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_589/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42116CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42141_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !13}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !12}
!16 = !DILocalVariable(name: "_goodB2GSource_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 123, scope: !7)
!18 = !DILocalVariable(name: "goodB2GSource_return_", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 157, scope: !7)
!20 = !DILocalVariable(name: "opsink", arg: 3, scope: !7, file: !1, line: 3, type: !13)
!21 = !DILocation(line: 3, column: 187, scope: !7)
!22 = !DILocalVariable(name: "_goodB2G_data_0", scope: !7, file: !1, line: 5, type: !12)
!23 = !DILocation(line: 5, column: 7, scope: !7)
!24 = !DILocation(line: 6, column: 19, scope: !7)
!25 = !DILocation(line: 9, column: 17, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 9, column: 11)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 8, column: 5)
!28 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 3)
!29 = !DILocation(line: 9, column: 84, scope: !26)
!30 = !DILocation(line: 9, column: 11, scope: !26)
!31 = !DILocation(line: 9, column: 91, scope: !26)
!32 = !DILocation(line: 9, column: 11, scope: !27)
!33 = !DILocation(line: 11, column: 32, scope: !34)
!34 = distinct !DILexicalBlock(scope: !26, file: !1, line: 10, column: 7)
!35 = !DILocation(line: 11, column: 27, scope: !34)
!36 = !DILocation(line: 11, column: 25, scope: !34)
!37 = !DILocation(line: 12, column: 7, scope: !34)
!38 = !DILocation(line: 15, column: 9, scope: !39)
!39 = distinct !DILexicalBlock(scope: !26, file: !1, line: 14, column: 7)
!40 = !DILocation(line: 19, column: 29, scope: !28)
!41 = !DILocation(line: 19, column: 27, scope: !28)
!42 = !DILocation(line: 20, column: 5, scope: !28)
!43 = !DILabel(scope: !28, name: "goodB2GSource_label_", file: !1, line: 21)
!44 = !DILocation(line: 21, column: 5, scope: !28)
!45 = !DILocation(line: 27, column: 21, scope: !7)
!46 = !DILocation(line: 27, column: 19, scope: !7)
!47 = !DILocalVariable(name: "_goodB2G_i_0", scope: !48, file: !1, line: 29, type: !12)
!48 = distinct !DILexicalBlock(scope: !7, file: !1, line: 28, column: 3)
!49 = !DILocation(line: 29, column: 9, scope: !48)
!50 = !DILocalVariable(name: "_goodB2G_buffer_0", scope: !48, file: !1, line: 30, type: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 10)
!54 = !DILocation(line: 30, column: 9, scope: !48)
!55 = !DILocation(line: 31, column: 10, scope: !56)
!56 = distinct !DILexicalBlock(scope: !48, file: !1, line: 31, column: 9)
!57 = !DILocation(line: 31, column: 26, scope: !56)
!58 = !DILocation(line: 31, column: 32, scope: !56)
!59 = !DILocation(line: 31, column: 36, scope: !56)
!60 = !DILocation(line: 31, column: 52, scope: !56)
!61 = !DILocation(line: 31, column: 9, scope: !48)
!62 = !DILocation(line: 33, column: 7, scope: !63)
!63 = distinct !DILexicalBlock(scope: !56, file: !1, line: 32, column: 5)
!64 = !DILocation(line: 33, column: 14, scope: !63)
!65 = !DILocation(line: 34, column: 25, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 34, column: 7)
!67 = !DILocation(line: 34, column: 12, scope: !66)
!68 = !DILocation(line: 34, column: 30, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !1, line: 34, column: 7)
!70 = !DILocation(line: 34, column: 43, scope: !69)
!71 = !DILocation(line: 34, column: 7, scope: !66)
!72 = !DILocation(line: 36, column: 40, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 35, column: 7)
!74 = !DILocation(line: 36, column: 22, scope: !73)
!75 = !DILocation(line: 36, column: 9, scope: !73)
!76 = !DILocation(line: 37, column: 7, scope: !73)
!77 = !DILocation(line: 34, column: 61, scope: !69)
!78 = !DILocation(line: 34, column: 7, scope: !69)
!79 = distinct !{!79, !71, !80, !81}
!80 = !DILocation(line: 37, column: 7, scope: !66)
!81 = !{!"llvm.loop.mustprogress"}
!82 = !DILocation(line: 39, column: 5, scope: !63)
!83 = !DILocation(line: 42, column: 7, scope: !84)
!84 = distinct !DILexicalBlock(scope: !56, file: !1, line: 41, column: 5)
!85 = !DILocation(line: 45, column: 3, scope: !48)
!86 = !DILabel(scope: !7, name: "goodB2G_label_", file: !1, line: 46)
!87 = !DILocation(line: 46, column: 3, scope: !7)
!88 = !DILocation(line: 51, column: 1, scope: !7)
