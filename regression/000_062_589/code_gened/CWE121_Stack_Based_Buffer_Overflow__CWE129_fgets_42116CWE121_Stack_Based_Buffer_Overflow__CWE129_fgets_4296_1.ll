; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42116CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4296_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42116CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4296_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42116CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4296_1(i8* %_goodB2GSource_inputBuffer_0, i32 %goodB2GSource_return_, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2GSource_inputBuffer_0.addr = alloca i8*, align 8
  %goodB2GSource_return_.addr = alloca i32, align 4
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B_data_0 = alloca i32, align 4
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2GSource_inputBuffer_0, i8** %_goodB2GSource_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2GSource_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 %goodB2GSource_return_, i32* %goodB2GSource_return_.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %goodB2GSource_return_.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !22, metadata !DIExpression()), !dbg !24
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !25
  %0 = load i8*, i8** %_goodB2GSource_inputBuffer_0.addr, align 8, !dbg !26
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !30
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !31
  %cmp = icmp ne i8* %call, null, !dbg !32
  br i1 %cmp, label %if.then, label %if.else, !dbg !33

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %_goodB2GSource_inputBuffer_0.addr, align 8, !dbg !34
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !36
  store i32 %call1, i32* %_goodB2G_data_0, align 4, !dbg !37
  br label %if.end, !dbg !38

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !39
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !41
  store i32 %3, i32* %goodB2GSource_return_.addr, align 4, !dbg !42
  br label %goodB2GSource_label_, !dbg !43

goodB2GSource_label_:                             ; preds = %if.end
  call void @llvm.dbg.label(metadata !44), !dbg !45
  %4 = load i32, i32* %goodB2GSource_return_.addr, align 4, !dbg !46
  store i32 %4, i32* %_goodB2G_data_0, align 4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !48, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G_buffer_0, metadata !51, metadata !DIExpression()), !dbg !55
  %5 = bitcast [10 x i32]* %_goodB2G_buffer_0 to i8*, !dbg !55
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !55
  %6 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !56
  %cmp2 = icmp sge i32 %6, 0, !dbg !58
  br i1 %cmp2, label %land.lhs.true, label %if.else8, !dbg !59

land.lhs.true:                                    ; preds = %goodB2GSource_label_
  %7 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !60
  %cmp3 = icmp slt i32 %7, 10, !dbg !61
  br i1 %cmp3, label %if.then4, label %if.else8, !dbg !62

if.then4:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !63
  %idxprom = sext i32 %8 to i64, !dbg !65
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom, !dbg !65
  store i32 1, i32* %arrayidx, align 4, !dbg !66
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !67
  br label %for.cond, !dbg !69

for.cond:                                         ; preds = %for.inc, %if.then4
  %9 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !70
  %cmp5 = icmp slt i32 %9, 10, !dbg !72
  br i1 %cmp5, label %for.body, label %for.end, !dbg !73

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !74
  %idxprom6 = sext i32 %10 to i64, !dbg !76
  %arrayidx7 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom6, !dbg !76
  %11 = load i32, i32* %arrayidx7, align 4, !dbg !76
  call void @printIntLine(i32 %11), !dbg !77
  br label %for.inc, !dbg !78

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !79
  %inc = add nsw i32 %12, 1, !dbg !79
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !79
  br label %for.cond, !dbg !80, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  br label %if.end9, !dbg !84

if.else8:                                         ; preds = %land.lhs.true, %goodB2GSource_label_
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !85
  br label %if.end9

if.end9:                                          ; preds = %if.else8, %for.end
  br label %goodB2G_label_, !dbg !87

goodB2G_label_:                                   ; preds = %if.end9
  call void @llvm.dbg.label(metadata !88), !dbg !89
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_data_0, metadata !90, metadata !DIExpression()), !dbg !92
  store i32 -1, i32* %_goodG2B_data_0, align 4, !dbg !93
  %13 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !94
  %call10 = call i32 @goodG2BSource(i32 %13), !dbg !95
  store i32 %call10, i32* %_goodG2B_data_0, align 4, !dbg !96
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !97, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B_buffer_0, metadata !100, metadata !DIExpression()), !dbg !101
  %14 = bitcast [10 x i32]* %_goodG2B_buffer_0 to i8*, !dbg !101
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 40, i1 false), !dbg !101
  %15 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !102
  %cmp11 = icmp sge i32 %15, 0, !dbg !104
  br i1 %cmp11, label %if.then12, label %if.else21, !dbg !105

if.then12:                                        ; preds = %goodB2G_label_
  %16 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !106
  %17 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !108
  call void %16(i32 %17), !dbg !106
  store i32 0, i32* %_goodG2B_i_0, align 4, !dbg !109
  br label %for.cond13, !dbg !111

for.cond13:                                       ; preds = %for.inc18, %if.then12
  %18 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !112
  %cmp14 = icmp slt i32 %18, 10, !dbg !114
  br i1 %cmp14, label %for.body15, label %for.end20, !dbg !115

for.body15:                                       ; preds = %for.cond13
  %19 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !116
  %idxprom16 = sext i32 %19 to i64, !dbg !118
  %arrayidx17 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B_buffer_0, i64 0, i64 %idxprom16, !dbg !118
  %20 = load i32, i32* %arrayidx17, align 4, !dbg !118
  call void @printIntLine(i32 %20), !dbg !119
  br label %for.inc18, !dbg !120

for.inc18:                                        ; preds = %for.body15
  %21 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !121
  %inc19 = add nsw i32 %21, 1, !dbg !121
  store i32 %inc19, i32* %_goodG2B_i_0, align 4, !dbg !121
  br label %for.cond13, !dbg !122, !llvm.loop !123

for.end20:                                        ; preds = %for.cond13
  br label %if.end22, !dbg !125

if.else21:                                        ; preds = %goodB2G_label_
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !126
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %for.end20
  br label %goodG2B_label_, !dbg !128

goodG2B_label_:                                   ; preds = %if.end22
  call void @llvm.dbg.label(metadata !129), !dbg !130
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_good_label_, !dbg !131

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !132), !dbg !133
  ret void, !dbg !134
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

declare dso_local i32 @goodG2BSource(i32) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42116CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4296_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_589/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42116CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4296_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !13}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !12}
!16 = !DILocalVariable(name: "_goodB2GSource_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 122, scope: !7)
!18 = !DILocalVariable(name: "goodB2GSource_return_", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 156, scope: !7)
!20 = !DILocalVariable(name: "opsink", arg: 3, scope: !7, file: !1, line: 3, type: !13)
!21 = !DILocation(line: 3, column: 186, scope: !7)
!22 = !DILocalVariable(name: "_goodB2G_data_0", scope: !23, file: !1, line: 6, type: !12)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!24 = !DILocation(line: 6, column: 9, scope: !23)
!25 = !DILocation(line: 7, column: 21, scope: !23)
!26 = !DILocation(line: 10, column: 19, scope: !27)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 10, column: 13)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 7)
!29 = distinct !DILexicalBlock(scope: !23, file: !1, line: 8, column: 5)
!30 = !DILocation(line: 10, column: 86, scope: !27)
!31 = !DILocation(line: 10, column: 13, scope: !27)
!32 = !DILocation(line: 10, column: 93, scope: !27)
!33 = !DILocation(line: 10, column: 13, scope: !28)
!34 = !DILocation(line: 12, column: 34, scope: !35)
!35 = distinct !DILexicalBlock(scope: !27, file: !1, line: 11, column: 9)
!36 = !DILocation(line: 12, column: 29, scope: !35)
!37 = !DILocation(line: 12, column: 27, scope: !35)
!38 = !DILocation(line: 13, column: 9, scope: !35)
!39 = !DILocation(line: 16, column: 11, scope: !40)
!40 = distinct !DILexicalBlock(scope: !27, file: !1, line: 15, column: 9)
!41 = !DILocation(line: 20, column: 31, scope: !29)
!42 = !DILocation(line: 20, column: 29, scope: !29)
!43 = !DILocation(line: 21, column: 7, scope: !29)
!44 = !DILabel(scope: !29, name: "goodB2GSource_label_", file: !1, line: 22)
!45 = !DILocation(line: 22, column: 7, scope: !29)
!46 = !DILocation(line: 28, column: 23, scope: !23)
!47 = !DILocation(line: 28, column: 21, scope: !23)
!48 = !DILocalVariable(name: "_goodB2G_i_0", scope: !49, file: !1, line: 30, type: !12)
!49 = distinct !DILexicalBlock(scope: !23, file: !1, line: 29, column: 5)
!50 = !DILocation(line: 30, column: 11, scope: !49)
!51 = !DILocalVariable(name: "_goodB2G_buffer_0", scope: !49, file: !1, line: 31, type: !52)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 320, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 10)
!55 = !DILocation(line: 31, column: 11, scope: !49)
!56 = !DILocation(line: 32, column: 12, scope: !57)
!57 = distinct !DILexicalBlock(scope: !49, file: !1, line: 32, column: 11)
!58 = !DILocation(line: 32, column: 28, scope: !57)
!59 = !DILocation(line: 32, column: 34, scope: !57)
!60 = !DILocation(line: 32, column: 38, scope: !57)
!61 = !DILocation(line: 32, column: 54, scope: !57)
!62 = !DILocation(line: 32, column: 11, scope: !49)
!63 = !DILocation(line: 34, column: 27, scope: !64)
!64 = distinct !DILexicalBlock(scope: !57, file: !1, line: 33, column: 7)
!65 = !DILocation(line: 34, column: 9, scope: !64)
!66 = !DILocation(line: 34, column: 44, scope: !64)
!67 = !DILocation(line: 35, column: 27, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 35, column: 9)
!69 = !DILocation(line: 35, column: 14, scope: !68)
!70 = !DILocation(line: 35, column: 32, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 35, column: 9)
!72 = !DILocation(line: 35, column: 45, scope: !71)
!73 = !DILocation(line: 35, column: 9, scope: !68)
!74 = !DILocation(line: 37, column: 42, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 36, column: 9)
!76 = !DILocation(line: 37, column: 24, scope: !75)
!77 = !DILocation(line: 37, column: 11, scope: !75)
!78 = !DILocation(line: 38, column: 9, scope: !75)
!79 = !DILocation(line: 35, column: 63, scope: !71)
!80 = !DILocation(line: 35, column: 9, scope: !71)
!81 = distinct !{!81, !73, !82, !83}
!82 = !DILocation(line: 38, column: 9, scope: !68)
!83 = !{!"llvm.loop.mustprogress"}
!84 = !DILocation(line: 40, column: 7, scope: !64)
!85 = !DILocation(line: 43, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !57, file: !1, line: 42, column: 7)
!87 = !DILocation(line: 46, column: 5, scope: !49)
!88 = !DILabel(scope: !23, name: "goodB2G_label_", file: !1, line: 47)
!89 = !DILocation(line: 47, column: 5, scope: !23)
!90 = !DILocalVariable(name: "_goodG2B_data_0", scope: !91, file: !1, line: 54, type: !12)
!91 = distinct !DILexicalBlock(scope: !7, file: !1, line: 53, column: 3)
!92 = !DILocation(line: 54, column: 9, scope: !91)
!93 = !DILocation(line: 55, column: 21, scope: !91)
!94 = !DILocation(line: 56, column: 37, scope: !91)
!95 = !DILocation(line: 56, column: 23, scope: !91)
!96 = !DILocation(line: 56, column: 21, scope: !91)
!97 = !DILocalVariable(name: "_goodG2B_i_0", scope: !98, file: !1, line: 58, type: !12)
!98 = distinct !DILexicalBlock(scope: !91, file: !1, line: 57, column: 5)
!99 = !DILocation(line: 58, column: 11, scope: !98)
!100 = !DILocalVariable(name: "_goodG2B_buffer_0", scope: !98, file: !1, line: 59, type: !52)
!101 = !DILocation(line: 59, column: 11, scope: !98)
!102 = !DILocation(line: 60, column: 11, scope: !103)
!103 = distinct !DILexicalBlock(scope: !98, file: !1, line: 60, column: 11)
!104 = !DILocation(line: 60, column: 27, scope: !103)
!105 = !DILocation(line: 60, column: 11, scope: !98)
!106 = !DILocation(line: 62, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 61, column: 7)
!108 = !DILocation(line: 62, column: 16, scope: !107)
!109 = !DILocation(line: 63, column: 27, scope: !110)
!110 = distinct !DILexicalBlock(scope: !107, file: !1, line: 63, column: 9)
!111 = !DILocation(line: 63, column: 14, scope: !110)
!112 = !DILocation(line: 63, column: 32, scope: !113)
!113 = distinct !DILexicalBlock(scope: !110, file: !1, line: 63, column: 9)
!114 = !DILocation(line: 63, column: 45, scope: !113)
!115 = !DILocation(line: 63, column: 9, scope: !110)
!116 = !DILocation(line: 65, column: 42, scope: !117)
!117 = distinct !DILexicalBlock(scope: !113, file: !1, line: 64, column: 9)
!118 = !DILocation(line: 65, column: 24, scope: !117)
!119 = !DILocation(line: 65, column: 11, scope: !117)
!120 = !DILocation(line: 66, column: 9, scope: !117)
!121 = !DILocation(line: 63, column: 63, scope: !113)
!122 = !DILocation(line: 63, column: 9, scope: !113)
!123 = distinct !{!123, !115, !124, !83}
!124 = !DILocation(line: 66, column: 9, scope: !110)
!125 = !DILocation(line: 68, column: 7, scope: !107)
!126 = !DILocation(line: 71, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !103, file: !1, line: 70, column: 7)
!128 = !DILocation(line: 74, column: 5, scope: !98)
!129 = !DILabel(scope: !91, name: "goodG2B_label_", file: !1, line: 75)
!130 = !DILocation(line: 75, column: 5, scope: !91)
!131 = !DILocation(line: 80, column: 3, scope: !91)
!132 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_42_good_label_", file: !1, line: 81)
!133 = !DILocation(line: 81, column: 3, scope: !7)
!134 = !DILocation(line: 86, column: 1, scope: !7)
