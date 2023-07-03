; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14195_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14195_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@globalFive = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14195_1(i8* %_goodB2G2_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G2_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_data_0 = alloca i32, align 4
  %_goodB2G2_i_0 = alloca i32, align 4
  %_goodB2G2_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B1_data_0 = alloca i32, align 4
  %_goodG2B1_i_0 = alloca i32, align 4
  %_goodG2B1_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G2_inputBuffer_0, i8** %_goodB2G2_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 -1, i32* %_goodB2G2_data_0, align 4, !dbg !23
  %0 = load i32, i32* @globalFive, align 4, !dbg !24
  %cmp = icmp eq i32 %0, 5, !dbg !26
  br i1 %cmp, label %if.then, label %if.end4, !dbg !27

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !28
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !32
  %call = call i8* @fgets(i8* %1, i32 14, %struct._IO_FILE* %2), !dbg !33
  %cmp1 = icmp ne i8* %call, null, !dbg !34
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !35

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G2_inputBuffer_0.addr, align 8, !dbg !36
  %call3 = call i32 @atoi(i8* %3) #5, !dbg !38
  store i32 %call3, i32* %_goodB2G2_data_0, align 4, !dbg !39
  br label %if.end, !dbg !40

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !41
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end4, !dbg !43

if.end4:                                          ; preds = %if.end, %entry
  %4 = load i32, i32* @globalFive, align 4, !dbg !44
  %cmp5 = icmp eq i32 %4, 5, !dbg !46
  br i1 %cmp5, label %if.then6, label %if.end15, !dbg !47

if.then6:                                         ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !48, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G2_buffer_0, metadata !52, metadata !DIExpression()), !dbg !56
  %5 = bitcast [10 x i32]* %_goodB2G2_buffer_0 to i8*, !dbg !56
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !56
  %6 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !57
  %cmp7 = icmp sge i32 %6, 0, !dbg !59
  br i1 %cmp7, label %land.lhs.true, label %if.else13, !dbg !60

land.lhs.true:                                    ; preds = %if.then6
  %7 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !61
  %cmp8 = icmp slt i32 %7, 10, !dbg !62
  br i1 %cmp8, label %if.then9, label %if.else13, !dbg !63

if.then9:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* %_goodB2G2_data_0, align 4, !dbg !64
  %idxprom = sext i32 %8 to i64, !dbg !66
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G2_buffer_0, i64 0, i64 %idxprom, !dbg !66
  store i32 1, i32* %arrayidx, align 4, !dbg !67
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !68
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc, %if.then9
  %9 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !71
  %cmp10 = icmp slt i32 %9, 10, !dbg !73
  br i1 %cmp10, label %for.body, label %for.end, !dbg !74

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !75
  %idxprom11 = sext i32 %10 to i64, !dbg !77
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G2_buffer_0, i64 0, i64 %idxprom11, !dbg !77
  %11 = load i32, i32* %arrayidx12, align 4, !dbg !77
  call void @printIntLine(i32 %11), !dbg !78
  br label %for.inc, !dbg !79

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !80
  %inc = add nsw i32 %12, 1, !dbg !80
  store i32 %inc, i32* %_goodB2G2_i_0, align 4, !dbg !80
  br label %for.cond, !dbg !81, !llvm.loop !82

for.end:                                          ; preds = %for.cond
  br label %if.end14, !dbg !85

if.else13:                                        ; preds = %land.lhs.true, %if.then6
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !86
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %for.end
  br label %if.end15, !dbg !88

if.end15:                                         ; preds = %if.end14, %if.end4
  br label %goodB2G2_label_, !dbg !89

goodB2G2_label_:                                  ; preds = %if.end15
  call void @llvm.dbg.label(metadata !90), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_data_0, metadata !92, metadata !DIExpression()), !dbg !94
  store i32 -1, i32* %_goodG2B1_data_0, align 4, !dbg !95
  %13 = load i32, i32* @globalFive, align 4, !dbg !96
  %cmp16 = icmp ne i32 %13, 5, !dbg !98
  br i1 %cmp16, label %if.then17, label %if.else18, !dbg !99

if.then17:                                        ; preds = %goodB2G2_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !100
  br label %if.end19, !dbg !102

if.else18:                                        ; preds = %goodB2G2_label_
  store i32 7, i32* %_goodG2B1_data_0, align 4, !dbg !103
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then17
  %14 = load i32, i32* @globalFive, align 4, !dbg !105
  %cmp20 = icmp eq i32 %14, 5, !dbg !107
  br i1 %cmp20, label %if.then21, label %if.end34, !dbg !108

if.then21:                                        ; preds = %if.end19
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !109, metadata !DIExpression()), !dbg !112
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B1_buffer_0, metadata !113, metadata !DIExpression()), !dbg !114
  %15 = bitcast [10 x i32]* %_goodG2B1_buffer_0 to i8*, !dbg !114
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 40, i1 false), !dbg !114
  %16 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !115
  %cmp22 = icmp sge i32 %16, 0, !dbg !117
  br i1 %cmp22, label %if.then23, label %if.else32, !dbg !118

if.then23:                                        ; preds = %if.then21
  %17 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !119
  %18 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !121
  call void %17(i32 %18), !dbg !119
  store i32 0, i32* %_goodG2B1_i_0, align 4, !dbg !122
  br label %for.cond24, !dbg !124

for.cond24:                                       ; preds = %for.inc29, %if.then23
  %19 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !125
  %cmp25 = icmp slt i32 %19, 10, !dbg !127
  br i1 %cmp25, label %for.body26, label %for.end31, !dbg !128

for.body26:                                       ; preds = %for.cond24
  %20 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !129
  %idxprom27 = sext i32 %20 to i64, !dbg !131
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B1_buffer_0, i64 0, i64 %idxprom27, !dbg !131
  %21 = load i32, i32* %arrayidx28, align 4, !dbg !131
  call void @printIntLine(i32 %21), !dbg !132
  br label %for.inc29, !dbg !133

for.inc29:                                        ; preds = %for.body26
  %22 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !134
  %inc30 = add nsw i32 %22, 1, !dbg !134
  store i32 %inc30, i32* %_goodG2B1_i_0, align 4, !dbg !134
  br label %for.cond24, !dbg !135, !llvm.loop !136

for.end31:                                        ; preds = %for.cond24
  br label %if.end33, !dbg !138

if.else32:                                        ; preds = %if.then21
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !139
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %for.end31
  br label %if.end34, !dbg !141

if.end34:                                         ; preds = %if.end33, %if.end19
  br label %goodG2B1_label_, !dbg !142

goodG2B1_label_:                                  ; preds = %if.end34
  call void @llvm.dbg.label(metadata !143), !dbg !144
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14_good_label_, !dbg !145

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !146), !dbg !147
  ret void, !dbg !148
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14195_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_577/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14135CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14195_1", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G2_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!17 = !DILocation(line: 4, column: 123, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 4, type: !12)
!19 = !DILocation(line: 4, column: 155, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G2_data_0", scope: !21, file: !1, line: 7, type: !15)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 3)
!22 = !DILocation(line: 7, column: 9, scope: !21)
!23 = !DILocation(line: 8, column: 22, scope: !21)
!24 = !DILocation(line: 9, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 9, column: 9)
!26 = !DILocation(line: 9, column: 20, scope: !25)
!27 = !DILocation(line: 9, column: 9, scope: !21)
!28 = !DILocation(line: 12, column: 19, scope: !29)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 12, column: 13)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 11, column: 7)
!31 = distinct !DILexicalBlock(scope: !25, file: !1, line: 10, column: 5)
!32 = !DILocation(line: 12, column: 82, scope: !29)
!33 = !DILocation(line: 12, column: 13, scope: !29)
!34 = !DILocation(line: 12, column: 89, scope: !29)
!35 = !DILocation(line: 12, column: 13, scope: !30)
!36 = !DILocation(line: 14, column: 35, scope: !37)
!37 = distinct !DILexicalBlock(scope: !29, file: !1, line: 13, column: 9)
!38 = !DILocation(line: 14, column: 30, scope: !37)
!39 = !DILocation(line: 14, column: 28, scope: !37)
!40 = !DILocation(line: 15, column: 9, scope: !37)
!41 = !DILocation(line: 18, column: 11, scope: !42)
!42 = distinct !DILexicalBlock(scope: !29, file: !1, line: 17, column: 9)
!43 = !DILocation(line: 22, column: 5, scope: !31)
!44 = !DILocation(line: 24, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !21, file: !1, line: 24, column: 9)
!46 = !DILocation(line: 24, column: 20, scope: !45)
!47 = !DILocation(line: 24, column: 9, scope: !21)
!48 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !49, file: !1, line: 27, type: !15)
!49 = distinct !DILexicalBlock(scope: !50, file: !1, line: 26, column: 7)
!50 = distinct !DILexicalBlock(scope: !45, file: !1, line: 25, column: 5)
!51 = !DILocation(line: 27, column: 13, scope: !49)
!52 = !DILocalVariable(name: "_goodB2G2_buffer_0", scope: !49, file: !1, line: 28, type: !53)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 10)
!56 = !DILocation(line: 28, column: 13, scope: !49)
!57 = !DILocation(line: 29, column: 14, scope: !58)
!58 = distinct !DILexicalBlock(scope: !49, file: !1, line: 29, column: 13)
!59 = !DILocation(line: 29, column: 31, scope: !58)
!60 = !DILocation(line: 29, column: 37, scope: !58)
!61 = !DILocation(line: 29, column: 41, scope: !58)
!62 = !DILocation(line: 29, column: 58, scope: !58)
!63 = !DILocation(line: 29, column: 13, scope: !49)
!64 = !DILocation(line: 31, column: 30, scope: !65)
!65 = distinct !DILexicalBlock(scope: !58, file: !1, line: 30, column: 9)
!66 = !DILocation(line: 31, column: 11, scope: !65)
!67 = !DILocation(line: 31, column: 48, scope: !65)
!68 = !DILocation(line: 32, column: 30, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 32, column: 11)
!70 = !DILocation(line: 32, column: 16, scope: !69)
!71 = !DILocation(line: 32, column: 35, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 32, column: 11)
!73 = !DILocation(line: 32, column: 49, scope: !72)
!74 = !DILocation(line: 32, column: 11, scope: !69)
!75 = !DILocation(line: 34, column: 45, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 33, column: 11)
!77 = !DILocation(line: 34, column: 26, scope: !76)
!78 = !DILocation(line: 34, column: 13, scope: !76)
!79 = !DILocation(line: 35, column: 11, scope: !76)
!80 = !DILocation(line: 32, column: 68, scope: !72)
!81 = !DILocation(line: 32, column: 11, scope: !72)
!82 = distinct !{!82, !74, !83, !84}
!83 = !DILocation(line: 35, column: 11, scope: !69)
!84 = !{!"llvm.loop.mustprogress"}
!85 = !DILocation(line: 37, column: 9, scope: !65)
!86 = !DILocation(line: 40, column: 11, scope: !87)
!87 = distinct !DILexicalBlock(scope: !58, file: !1, line: 39, column: 9)
!88 = !DILocation(line: 44, column: 5, scope: !50)
!89 = !DILocation(line: 24, column: 23, scope: !45)
!90 = !DILabel(scope: !21, name: "goodB2G2_label_", file: !1, line: 46)
!91 = !DILocation(line: 46, column: 5, scope: !21)
!92 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !93, file: !1, line: 53, type: !15)
!93 = distinct !DILexicalBlock(scope: !7, file: !1, line: 52, column: 3)
!94 = !DILocation(line: 53, column: 9, scope: !93)
!95 = !DILocation(line: 54, column: 22, scope: !93)
!96 = !DILocation(line: 55, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !1, line: 55, column: 9)
!98 = !DILocation(line: 55, column: 20, scope: !97)
!99 = !DILocation(line: 55, column: 9, scope: !93)
!100 = !DILocation(line: 57, column: 7, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 56, column: 5)
!102 = !DILocation(line: 58, column: 5, scope: !101)
!103 = !DILocation(line: 61, column: 24, scope: !104)
!104 = distinct !DILexicalBlock(scope: !97, file: !1, line: 60, column: 5)
!105 = !DILocation(line: 64, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !93, file: !1, line: 64, column: 9)
!107 = !DILocation(line: 64, column: 20, scope: !106)
!108 = !DILocation(line: 64, column: 9, scope: !93)
!109 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !110, file: !1, line: 67, type: !15)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 66, column: 7)
!111 = distinct !DILexicalBlock(scope: !106, file: !1, line: 65, column: 5)
!112 = !DILocation(line: 67, column: 13, scope: !110)
!113 = !DILocalVariable(name: "_goodG2B1_buffer_0", scope: !110, file: !1, line: 68, type: !53)
!114 = !DILocation(line: 68, column: 13, scope: !110)
!115 = !DILocation(line: 69, column: 13, scope: !116)
!116 = distinct !DILexicalBlock(scope: !110, file: !1, line: 69, column: 13)
!117 = !DILocation(line: 69, column: 30, scope: !116)
!118 = !DILocation(line: 69, column: 13, scope: !110)
!119 = !DILocation(line: 71, column: 11, scope: !120)
!120 = distinct !DILexicalBlock(scope: !116, file: !1, line: 70, column: 9)
!121 = !DILocation(line: 71, column: 18, scope: !120)
!122 = !DILocation(line: 72, column: 30, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !1, line: 72, column: 11)
!124 = !DILocation(line: 72, column: 16, scope: !123)
!125 = !DILocation(line: 72, column: 35, scope: !126)
!126 = distinct !DILexicalBlock(scope: !123, file: !1, line: 72, column: 11)
!127 = !DILocation(line: 72, column: 49, scope: !126)
!128 = !DILocation(line: 72, column: 11, scope: !123)
!129 = !DILocation(line: 74, column: 45, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 73, column: 11)
!131 = !DILocation(line: 74, column: 26, scope: !130)
!132 = !DILocation(line: 74, column: 13, scope: !130)
!133 = !DILocation(line: 75, column: 11, scope: !130)
!134 = !DILocation(line: 72, column: 68, scope: !126)
!135 = !DILocation(line: 72, column: 11, scope: !126)
!136 = distinct !{!136, !128, !137, !84}
!137 = !DILocation(line: 75, column: 11, scope: !123)
!138 = !DILocation(line: 77, column: 9, scope: !120)
!139 = !DILocation(line: 80, column: 11, scope: !140)
!140 = distinct !DILexicalBlock(scope: !116, file: !1, line: 79, column: 9)
!141 = !DILocation(line: 84, column: 5, scope: !111)
!142 = !DILocation(line: 64, column: 23, scope: !106)
!143 = !DILabel(scope: !93, name: "goodG2B1_label_", file: !1, line: 86)
!144 = !DILocation(line: 86, column: 5, scope: !93)
!145 = !DILocation(line: 91, column: 3, scope: !93)
!146 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_14_good_label_", file: !1, line: 92)
!147 = !DILocation(line: 92, column: 3, scope: !7)
!148 = !DILocation(line: 97, column: 1, scope: !7)
