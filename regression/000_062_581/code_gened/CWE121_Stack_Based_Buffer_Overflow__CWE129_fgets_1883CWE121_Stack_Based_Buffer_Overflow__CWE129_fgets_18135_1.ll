; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1883CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18135_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1883CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18135_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1883CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18135_1(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B_data_0 = alloca i32, align 4
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G_inputBuffer_0, i8** %_goodB2G_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !23
  br label %goodB2G_source, !dbg !24

goodB2G_source:                                   ; preds = %entry
  call void @llvm.dbg.label(metadata !25), !dbg !26
  %0 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !27
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !30
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !31
  %cmp = icmp ne i8* %call, null, !dbg !32
  br i1 %cmp, label %if.then, label %if.else, !dbg !33

if.then:                                          ; preds = %goodB2G_source
  %2 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !34
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !36
  store i32 %call1, i32* %_goodB2G_data_0, align 4, !dbg !37
  br label %if.end, !dbg !38

if.else:                                          ; preds = %goodB2G_source
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !39
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %goodB2G_sink, !dbg !41

goodB2G_sink:                                     ; preds = %if.end
  call void @llvm.dbg.label(metadata !42), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !44, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G_buffer_0, metadata !47, metadata !DIExpression()), !dbg !51
  %3 = bitcast [10 x i32]* %_goodB2G_buffer_0 to i8*, !dbg !51
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !51
  %4 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !52
  %cmp2 = icmp sge i32 %4, 0, !dbg !54
  br i1 %cmp2, label %land.lhs.true, label %if.else8, !dbg !55

land.lhs.true:                                    ; preds = %goodB2G_sink
  %5 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !56
  %cmp3 = icmp slt i32 %5, 10, !dbg !57
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !58

if.then4:                                         ; preds = %land.lhs.true
  %6 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !59
  %idxprom = sext i32 %6 to i64, !dbg !61
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom, !dbg !61
  store i32 1, i32* %arrayidx, align 4, !dbg !62
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !63
  br label %for.cond, !dbg !65

for.cond:                                         ; preds = %for.inc, %if.then4
  %7 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !66
  %cmp5 = icmp slt i32 %7, 10, !dbg !68
  br i1 %cmp5, label %for.body, label %for.end, !dbg !69

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !70
  %idxprom6 = sext i32 %8 to i64, !dbg !72
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom6, !dbg !72
  %9 = load i32, i32* %arrayidx7, align 4, !dbg !72
  call void @printIntLine(i32 %9), !dbg !73
  br label %for.inc, !dbg !74

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !75
  %inc = add nsw i32 %10, 1, !dbg !75
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !75
  br label %for.cond, !dbg !76, !llvm.loop !77

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !80

if.else8:                                         ; preds = %land.lhs.true, %goodB2G_sink
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !81
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %goodB2G_label_, !dbg !83

goodB2G_label_:                                   ; preds = %if.end9
  call void @llvm.dbg.label(metadata !84), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_data_0, metadata !86, metadata !DIExpression()), !dbg !88
  store i32 -1, i32* %_goodG2B_data_0, align 4, !dbg !89
  br label %goodG2B_source, !dbg !90

goodG2B_source:                                   ; preds = %goodB2G_label_
  call void @llvm.dbg.label(metadata !91), !dbg !92
  store i32 7, i32* %_goodG2B_data_0, align 4, !dbg !93
  br label %goodG2B_sink, !dbg !95

goodG2B_sink:                                     ; preds = %goodG2B_source
  call void @llvm.dbg.label(metadata !96), !dbg !97
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !98, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B_buffer_0, metadata !101, metadata !DIExpression()), !dbg !102
  %11 = bitcast [10 x i32]* %_goodG2B_buffer_0 to i8*, !dbg !102
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 40, i1 false), !dbg !102
  %12 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !103
  %cmp10 = icmp sge i32 %12, 0, !dbg !105
  br i1 %cmp10, label %if.then11, label %if.else20, !dbg !106

if.then11:                                        ; preds = %goodG2B_sink
  %13 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !107
  %14 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !109
  call void %13(i32 %14), !dbg !107
  store i32 0, i32* %_goodG2B_i_0, align 4, !dbg !110
  br label %for.cond12, !dbg !112

for.cond12:                                       ; preds = %for.inc17, %if.then11
  %15 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !113
  %cmp13 = icmp slt i32 %15, 10, !dbg !115
  br i1 %cmp13, label %for.body14, label %for.end19, !dbg !116

for.body14:                                       ; preds = %for.cond12
  %16 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !117
  %idxprom15 = sext i32 %16 to i64, !dbg !119
  %arrayidx16 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B_buffer_0, i64 0, i64 %idxprom15, !dbg !119
  %17 = load i32, i32* %arrayidx16, align 4, !dbg !119
  call void @printIntLine(i32 %17), !dbg !120
  br label %for.inc17, !dbg !121

for.inc17:                                        ; preds = %for.body14
  %18 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !122
  %inc18 = add nsw i32 %18, 1, !dbg !122
  store i32 %inc18, i32* %_goodG2B_i_0, align 4, !dbg !122
  br label %for.cond12, !dbg !123, !llvm.loop !124

for.end19:                                        ; preds = %for.cond12
  br label %if.end21, !dbg !126

if.else20:                                        ; preds = %goodG2B_sink
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !127
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %for.end19
  br label %goodG2B_label_, !dbg !129

goodG2B_label_:                                   ; preds = %if.end21
  call void @llvm.dbg.label(metadata !130), !dbg !131
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18_good_label_, !dbg !132

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !133), !dbg !134
  ret void, !dbg !135
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #3

declare dso_local void @printLine(i8*) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1883CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18135_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_581/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1883CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18135_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!24 = !DILocation(line: 8, column: 5, scope: !21)
!25 = !DILabel(scope: !21, name: "goodB2G_source", file: !1, line: 9)
!26 = !DILocation(line: 9, column: 5, scope: !21)
!27 = !DILocation(line: 11, column: 17, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 11, column: 11)
!29 = distinct !DILexicalBlock(scope: !21, file: !1, line: 10, column: 5)
!30 = !DILocation(line: 11, column: 78, scope: !28)
!31 = !DILocation(line: 11, column: 11, scope: !28)
!32 = !DILocation(line: 11, column: 85, scope: !28)
!33 = !DILocation(line: 11, column: 11, scope: !29)
!34 = !DILocation(line: 13, column: 32, scope: !35)
!35 = distinct !DILexicalBlock(scope: !28, file: !1, line: 12, column: 7)
!36 = !DILocation(line: 13, column: 27, scope: !35)
!37 = !DILocation(line: 13, column: 25, scope: !35)
!38 = !DILocation(line: 14, column: 7, scope: !35)
!39 = !DILocation(line: 17, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !28, file: !1, line: 16, column: 7)
!41 = !DILocation(line: 22, column: 5, scope: !21)
!42 = !DILabel(scope: !21, name: "goodB2G_sink", file: !1, line: 23)
!43 = !DILocation(line: 23, column: 5, scope: !21)
!44 = !DILocalVariable(name: "_goodB2G_i_0", scope: !45, file: !1, line: 25, type: !15)
!45 = distinct !DILexicalBlock(scope: !21, file: !1, line: 24, column: 5)
!46 = !DILocation(line: 25, column: 11, scope: !45)
!47 = !DILocalVariable(name: "_goodB2G_buffer_0", scope: !45, file: !1, line: 26, type: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 10)
!51 = !DILocation(line: 26, column: 11, scope: !45)
!52 = !DILocation(line: 27, column: 12, scope: !53)
!53 = distinct !DILexicalBlock(scope: !45, file: !1, line: 27, column: 11)
!54 = !DILocation(line: 27, column: 28, scope: !53)
!55 = !DILocation(line: 27, column: 34, scope: !53)
!56 = !DILocation(line: 27, column: 38, scope: !53)
!57 = !DILocation(line: 27, column: 54, scope: !53)
!58 = !DILocation(line: 27, column: 11, scope: !45)
!59 = !DILocation(line: 29, column: 27, scope: !60)
!60 = distinct !DILexicalBlock(scope: !53, file: !1, line: 28, column: 7)
!61 = !DILocation(line: 29, column: 9, scope: !60)
!62 = !DILocation(line: 29, column: 44, scope: !60)
!63 = !DILocation(line: 30, column: 27, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 30, column: 9)
!65 = !DILocation(line: 30, column: 14, scope: !64)
!66 = !DILocation(line: 30, column: 32, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 30, column: 9)
!68 = !DILocation(line: 30, column: 45, scope: !67)
!69 = !DILocation(line: 30, column: 9, scope: !64)
!70 = !DILocation(line: 32, column: 42, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 31, column: 9)
!72 = !DILocation(line: 32, column: 24, scope: !71)
!73 = !DILocation(line: 32, column: 11, scope: !71)
!74 = !DILocation(line: 33, column: 9, scope: !71)
!75 = !DILocation(line: 30, column: 63, scope: !67)
!76 = !DILocation(line: 30, column: 9, scope: !67)
!77 = distinct !{!77, !69, !78, !79}
!78 = !DILocation(line: 33, column: 9, scope: !64)
!79 = !{!"llvm.loop.mustprogress"}
!80 = !DILocation(line: 35, column: 7, scope: !60)
!81 = !DILocation(line: 38, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !53, file: !1, line: 37, column: 7)
!83 = !DILocation(line: 41, column: 5, scope: !45)
!84 = !DILabel(scope: !21, name: "goodB2G_label_", file: !1, line: 43)
!85 = !DILocation(line: 43, column: 5, scope: !21)
!86 = !DILocalVariable(name: "_goodG2B_data_0", scope: !87, file: !1, line: 50, type: !15)
!87 = distinct !DILexicalBlock(scope: !7, file: !1, line: 49, column: 3)
!88 = !DILocation(line: 50, column: 9, scope: !87)
!89 = !DILocation(line: 51, column: 21, scope: !87)
!90 = !DILocation(line: 52, column: 5, scope: !87)
!91 = !DILabel(scope: !87, name: "goodG2B_source", file: !1, line: 53)
!92 = !DILocation(line: 53, column: 5, scope: !87)
!93 = !DILocation(line: 55, column: 23, scope: !94)
!94 = distinct !DILexicalBlock(scope: !87, file: !1, line: 54, column: 5)
!95 = !DILocation(line: 58, column: 5, scope: !87)
!96 = !DILabel(scope: !87, name: "goodG2B_sink", file: !1, line: 59)
!97 = !DILocation(line: 59, column: 5, scope: !87)
!98 = !DILocalVariable(name: "_goodG2B_i_0", scope: !99, file: !1, line: 61, type: !15)
!99 = distinct !DILexicalBlock(scope: !87, file: !1, line: 60, column: 5)
!100 = !DILocation(line: 61, column: 11, scope: !99)
!101 = !DILocalVariable(name: "_goodG2B_buffer_0", scope: !99, file: !1, line: 62, type: !48)
!102 = !DILocation(line: 62, column: 11, scope: !99)
!103 = !DILocation(line: 63, column: 11, scope: !104)
!104 = distinct !DILexicalBlock(scope: !99, file: !1, line: 63, column: 11)
!105 = !DILocation(line: 63, column: 27, scope: !104)
!106 = !DILocation(line: 63, column: 11, scope: !99)
!107 = !DILocation(line: 65, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 64, column: 7)
!109 = !DILocation(line: 65, column: 16, scope: !108)
!110 = !DILocation(line: 66, column: 27, scope: !111)
!111 = distinct !DILexicalBlock(scope: !108, file: !1, line: 66, column: 9)
!112 = !DILocation(line: 66, column: 14, scope: !111)
!113 = !DILocation(line: 66, column: 32, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 66, column: 9)
!115 = !DILocation(line: 66, column: 45, scope: !114)
!116 = !DILocation(line: 66, column: 9, scope: !111)
!117 = !DILocation(line: 68, column: 42, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 67, column: 9)
!119 = !DILocation(line: 68, column: 24, scope: !118)
!120 = !DILocation(line: 68, column: 11, scope: !118)
!121 = !DILocation(line: 69, column: 9, scope: !118)
!122 = !DILocation(line: 66, column: 63, scope: !114)
!123 = !DILocation(line: 66, column: 9, scope: !114)
!124 = distinct !{!124, !116, !125, !79}
!125 = !DILocation(line: 69, column: 9, scope: !111)
!126 = !DILocation(line: 71, column: 7, scope: !108)
!127 = !DILocation(line: 74, column: 9, scope: !128)
!128 = distinct !DILexicalBlock(scope: !104, file: !1, line: 73, column: 7)
!129 = !DILocation(line: 77, column: 5, scope: !99)
!130 = !DILabel(scope: !87, name: "goodG2B_label_", file: !1, line: 79)
!131 = !DILocation(line: 79, column: 5, scope: !87)
!132 = !DILocation(line: 84, column: 3, scope: !87)
!133 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_18_good_label_", file: !1, line: 85)
!134 = !DILocation(line: 85, column: 3, scope: !7)
!135 = !DILocation(line: 90, column: 1, scope: !7)
