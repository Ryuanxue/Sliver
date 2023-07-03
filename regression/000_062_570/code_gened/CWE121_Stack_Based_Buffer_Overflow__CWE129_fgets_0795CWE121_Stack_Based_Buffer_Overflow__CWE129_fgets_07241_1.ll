; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0795CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07241_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0795CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07241_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@staticFive = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0795CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07241_1(i8* %_goodB2G1_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G1_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_data_0 = alloca i32, align 4
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B2_data_0 = alloca i32, align 4
  %_goodG2B2_i_0 = alloca i32, align 4
  %_goodG2B2_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G1_inputBuffer_0, i8** %_goodB2G1_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 -1, i32* %_goodB2G1_data_0, align 4, !dbg !23
  %0 = load i32, i32* @staticFive, align 4, !dbg !24
  %cmp = icmp eq i32 %0, 5, !dbg !26
  br i1 %cmp, label %if.then, label %if.end4, !dbg !27

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !28
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !32
  %call = call i8* @fgets(i8* %1, i32 14, %struct._IO_FILE* %2), !dbg !33
  %cmp1 = icmp ne i8* %call, null, !dbg !34
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !35

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !36
  %call3 = call i32 @atoi(i8* %3) #5, !dbg !38
  store i32 %call3, i32* %_goodB2G1_data_0, align 4, !dbg !39
  br label %if.end, !dbg !40

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !41
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end4, !dbg !43

if.end4:                                          ; preds = %if.end, %entry
  %4 = load i32, i32* @staticFive, align 4, !dbg !44
  %cmp5 = icmp ne i32 %4, 5, !dbg !46
  br i1 %cmp5, label %if.then6, label %if.else7, !dbg !47

if.then6:                                         ; preds = %if.end4
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !48
  br label %if.end16, !dbg !50

if.else7:                                         ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !51, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G1_buffer_0, metadata !55, metadata !DIExpression()), !dbg !59
  %5 = bitcast [10 x i32]* %_goodB2G1_buffer_0 to i8*, !dbg !59
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !59
  %6 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !60
  %cmp8 = icmp sge i32 %6, 0, !dbg !62
  br i1 %cmp8, label %land.lhs.true, label %if.else14, !dbg !63

land.lhs.true:                                    ; preds = %if.else7
  %7 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !64
  %cmp9 = icmp slt i32 %7, 10, !dbg !65
  br i1 %cmp9, label %if.then10, label %if.else14, !dbg !66

if.then10:                                        ; preds = %land.lhs.true
  %8 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !67
  %idxprom = sext i32 %8 to i64, !dbg !69
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom, !dbg !69
  store i32 1, i32* %arrayidx, align 4, !dbg !70
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !71
  br label %for.cond, !dbg !73

for.cond:                                         ; preds = %for.inc, %if.then10
  %9 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !74
  %cmp11 = icmp slt i32 %9, 10, !dbg !76
  br i1 %cmp11, label %for.body, label %for.end, !dbg !77

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !78
  %idxprom12 = sext i32 %10 to i64, !dbg !80
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom12, !dbg !80
  %11 = load i32, i32* %arrayidx13, align 4, !dbg !80
  call void @printIntLine(i32 %11), !dbg !81
  br label %for.inc, !dbg !82

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !83
  %inc = add nsw i32 %12, 1, !dbg !83
  store i32 %inc, i32* %_goodB2G1_i_0, align 4, !dbg !83
  br label %for.cond, !dbg !84, !llvm.loop !85

for.end:                                          ; preds = %for.cond
  br label %if.end15, !dbg !88

if.else14:                                        ; preds = %land.lhs.true, %if.else7
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !89
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %for.end
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then6
  br label %goodB2G1_label_, !dbg !91

goodB2G1_label_:                                  ; preds = %if.end16
  call void @llvm.dbg.label(metadata !92), !dbg !93
  call void (...) @goodB2G2(), !dbg !94
  call void (...) @goodG2B1(), !dbg !95
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_data_0, metadata !96, metadata !DIExpression()), !dbg !98
  store i32 -1, i32* %_goodG2B2_data_0, align 4, !dbg !99
  %13 = load i32, i32* @staticFive, align 4, !dbg !100
  %cmp17 = icmp eq i32 %13, 5, !dbg !102
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !103

if.then18:                                        ; preds = %goodB2G1_label_
  store i32 7, i32* %_goodG2B2_data_0, align 4, !dbg !104
  br label %if.end19, !dbg !106

if.end19:                                         ; preds = %if.then18, %goodB2G1_label_
  %14 = load i32, i32* @staticFive, align 4, !dbg !107
  %cmp20 = icmp eq i32 %14, 5, !dbg !109
  br i1 %cmp20, label %if.then21, label %if.end34, !dbg !110

if.then21:                                        ; preds = %if.end19
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_i_0, metadata !111, metadata !DIExpression()), !dbg !114
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B2_buffer_0, metadata !115, metadata !DIExpression()), !dbg !116
  %15 = bitcast [10 x i32]* %_goodG2B2_buffer_0 to i8*, !dbg !116
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 40, i1 false), !dbg !116
  %16 = load i32, i32* %_goodG2B2_data_0, align 4, !dbg !117
  %cmp22 = icmp sge i32 %16, 0, !dbg !119
  br i1 %cmp22, label %if.then23, label %if.else32, !dbg !120

if.then23:                                        ; preds = %if.then21
  %17 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !121
  %18 = load i32, i32* %_goodG2B2_data_0, align 4, !dbg !123
  call void %17(i32 %18), !dbg !121
  store i32 0, i32* %_goodG2B2_i_0, align 4, !dbg !124
  br label %for.cond24, !dbg !126

for.cond24:                                       ; preds = %for.inc29, %if.then23
  %19 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !127
  %cmp25 = icmp slt i32 %19, 10, !dbg !129
  br i1 %cmp25, label %for.body26, label %for.end31, !dbg !130

for.body26:                                       ; preds = %for.cond24
  %20 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !131
  %idxprom27 = sext i32 %20 to i64, !dbg !133
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B2_buffer_0, i64 0, i64 %idxprom27, !dbg !133
  %21 = load i32, i32* %arrayidx28, align 4, !dbg !133
  call void @printIntLine(i32 %21), !dbg !134
  br label %for.inc29, !dbg !135

for.inc29:                                        ; preds = %for.body26
  %22 = load i32, i32* %_goodG2B2_i_0, align 4, !dbg !136
  %inc30 = add nsw i32 %22, 1, !dbg !136
  store i32 %inc30, i32* %_goodG2B2_i_0, align 4, !dbg !136
  br label %for.cond24, !dbg !137, !llvm.loop !138

for.end31:                                        ; preds = %for.cond24
  br label %if.end33, !dbg !140

if.else32:                                        ; preds = %if.then21
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !141
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %for.end31
  br label %if.end34, !dbg !143

if.end34:                                         ; preds = %if.end33, %if.end19
  br label %goodG2B2_label_, !dbg !144

goodG2B2_label_:                                  ; preds = %if.end34
  call void @llvm.dbg.label(metadata !145), !dbg !146
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07_good_label_, !dbg !147

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !148), !dbg !149
  ret void, !dbg !150
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

declare dso_local void @goodB2G2(...) #2

declare dso_local void @goodG2B1(...) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0795CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07241_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_570/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0795CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07241_1", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G1_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!17 = !DILocation(line: 4, column: 122, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 4, type: !12)
!19 = !DILocation(line: 4, column: 154, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !21, file: !1, line: 7, type: !15)
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
!48 = !DILocation(line: 26, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 25, column: 5)
!50 = !DILocation(line: 27, column: 5, scope: !49)
!51 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !52, file: !1, line: 31, type: !15)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 30, column: 7)
!53 = distinct !DILexicalBlock(scope: !45, file: !1, line: 29, column: 5)
!54 = !DILocation(line: 31, column: 13, scope: !52)
!55 = !DILocalVariable(name: "_goodB2G1_buffer_0", scope: !52, file: !1, line: 32, type: !56)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 10)
!59 = !DILocation(line: 32, column: 13, scope: !52)
!60 = !DILocation(line: 33, column: 14, scope: !61)
!61 = distinct !DILexicalBlock(scope: !52, file: !1, line: 33, column: 13)
!62 = !DILocation(line: 33, column: 31, scope: !61)
!63 = !DILocation(line: 33, column: 37, scope: !61)
!64 = !DILocation(line: 33, column: 41, scope: !61)
!65 = !DILocation(line: 33, column: 58, scope: !61)
!66 = !DILocation(line: 33, column: 13, scope: !52)
!67 = !DILocation(line: 35, column: 30, scope: !68)
!68 = distinct !DILexicalBlock(scope: !61, file: !1, line: 34, column: 9)
!69 = !DILocation(line: 35, column: 11, scope: !68)
!70 = !DILocation(line: 35, column: 48, scope: !68)
!71 = !DILocation(line: 36, column: 30, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 36, column: 11)
!73 = !DILocation(line: 36, column: 16, scope: !72)
!74 = !DILocation(line: 36, column: 35, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !1, line: 36, column: 11)
!76 = !DILocation(line: 36, column: 49, scope: !75)
!77 = !DILocation(line: 36, column: 11, scope: !72)
!78 = !DILocation(line: 38, column: 45, scope: !79)
!79 = distinct !DILexicalBlock(scope: !75, file: !1, line: 37, column: 11)
!80 = !DILocation(line: 38, column: 26, scope: !79)
!81 = !DILocation(line: 38, column: 13, scope: !79)
!82 = !DILocation(line: 39, column: 11, scope: !79)
!83 = !DILocation(line: 36, column: 68, scope: !75)
!84 = !DILocation(line: 36, column: 11, scope: !75)
!85 = distinct !{!85, !77, !86, !87}
!86 = !DILocation(line: 39, column: 11, scope: !72)
!87 = !{!"llvm.loop.mustprogress"}
!88 = !DILocation(line: 41, column: 9, scope: !68)
!89 = !DILocation(line: 44, column: 11, scope: !90)
!90 = distinct !DILexicalBlock(scope: !61, file: !1, line: 43, column: 9)
!91 = !DILocation(line: 24, column: 23, scope: !45)
!92 = !DILabel(scope: !21, name: "goodB2G1_label_", file: !1, line: 50)
!93 = !DILocation(line: 50, column: 5, scope: !21)
!94 = !DILocation(line: 56, column: 3, scope: !7)
!95 = !DILocation(line: 57, column: 3, scope: !7)
!96 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !97, file: !1, line: 59, type: !15)
!97 = distinct !DILexicalBlock(scope: !7, file: !1, line: 58, column: 3)
!98 = !DILocation(line: 59, column: 9, scope: !97)
!99 = !DILocation(line: 60, column: 22, scope: !97)
!100 = !DILocation(line: 61, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !97, file: !1, line: 61, column: 9)
!102 = !DILocation(line: 61, column: 20, scope: !101)
!103 = !DILocation(line: 61, column: 9, scope: !97)
!104 = !DILocation(line: 63, column: 24, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 62, column: 5)
!106 = !DILocation(line: 64, column: 5, scope: !105)
!107 = !DILocation(line: 66, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !97, file: !1, line: 66, column: 9)
!109 = !DILocation(line: 66, column: 20, scope: !108)
!110 = !DILocation(line: 66, column: 9, scope: !97)
!111 = !DILocalVariable(name: "_goodG2B2_i_0", scope: !112, file: !1, line: 69, type: !15)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 68, column: 7)
!113 = distinct !DILexicalBlock(scope: !108, file: !1, line: 67, column: 5)
!114 = !DILocation(line: 69, column: 13, scope: !112)
!115 = !DILocalVariable(name: "_goodG2B2_buffer_0", scope: !112, file: !1, line: 70, type: !56)
!116 = !DILocation(line: 70, column: 13, scope: !112)
!117 = !DILocation(line: 71, column: 13, scope: !118)
!118 = distinct !DILexicalBlock(scope: !112, file: !1, line: 71, column: 13)
!119 = !DILocation(line: 71, column: 30, scope: !118)
!120 = !DILocation(line: 71, column: 13, scope: !112)
!121 = !DILocation(line: 73, column: 11, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 72, column: 9)
!123 = !DILocation(line: 73, column: 18, scope: !122)
!124 = !DILocation(line: 74, column: 30, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 74, column: 11)
!126 = !DILocation(line: 74, column: 16, scope: !125)
!127 = !DILocation(line: 74, column: 35, scope: !128)
!128 = distinct !DILexicalBlock(scope: !125, file: !1, line: 74, column: 11)
!129 = !DILocation(line: 74, column: 49, scope: !128)
!130 = !DILocation(line: 74, column: 11, scope: !125)
!131 = !DILocation(line: 76, column: 45, scope: !132)
!132 = distinct !DILexicalBlock(scope: !128, file: !1, line: 75, column: 11)
!133 = !DILocation(line: 76, column: 26, scope: !132)
!134 = !DILocation(line: 76, column: 13, scope: !132)
!135 = !DILocation(line: 77, column: 11, scope: !132)
!136 = !DILocation(line: 74, column: 68, scope: !128)
!137 = !DILocation(line: 74, column: 11, scope: !128)
!138 = distinct !{!138, !130, !139, !87}
!139 = !DILocation(line: 77, column: 11, scope: !125)
!140 = !DILocation(line: 79, column: 9, scope: !122)
!141 = !DILocation(line: 82, column: 11, scope: !142)
!142 = distinct !DILexicalBlock(scope: !118, file: !1, line: 81, column: 9)
!143 = !DILocation(line: 86, column: 5, scope: !113)
!144 = !DILocation(line: 66, column: 23, scope: !108)
!145 = !DILabel(scope: !97, name: "goodG2B2_label_", file: !1, line: 88)
!146 = !DILocation(line: 88, column: 5, scope: !97)
!147 = !DILocation(line: 93, column: 3, scope: !97)
!148 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_07_good_label_", file: !1, line: 94)
!149 = !DILocation(line: 94, column: 3, scope: !7)
!150 = !DILocation(line: 99, column: 1, scope: !7)
