; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1787CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17143_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1787CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17143_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1787CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17143_1(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_k_0 = alloca i32, align 4
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodB2G_i_1 = alloca i32, align 4
  %_goodB2G_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B_h_0 = alloca i32, align 4
  %_goodG2B_j_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i32, align 4
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G_inputBuffer_0, i8** %_goodB2G_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_k_0, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !27
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !28
  br label %for.cond, !dbg !30

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !31
  %cmp = icmp slt i32 %0, 1, !dbg !33
  br i1 %cmp, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !35
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !39
  %call = call i8* @fgets(i8* %1, i32 14, %struct._IO_FILE* %2), !dbg !40
  %cmp1 = icmp ne i8* %call, null, !dbg !41
  br i1 %cmp1, label %if.then, label %if.else, !dbg !42

if.then:                                          ; preds = %for.body
  %3 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !43
  %call2 = call i32 @atoi(i8* %3) #5, !dbg !45
  store i32 %call2, i32* %_goodB2G_data_0, align 4, !dbg !46
  br label %if.end, !dbg !47

if.else:                                          ; preds = %for.body
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !48
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !50

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !51
  %inc = add nsw i32 %4, 1, !dbg !51
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !51
  br label %for.cond, !dbg !52, !llvm.loop !53

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %_goodB2G_k_0, align 4, !dbg !56
  br label %for.cond3, !dbg !58

for.cond3:                                        ; preds = %for.inc19, %for.end
  %5 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !59
  %cmp4 = icmp slt i32 %5, 1, !dbg !61
  br i1 %cmp4, label %for.body5, label %for.end21, !dbg !62

for.body5:                                        ; preds = %for.cond3
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_1, metadata !63, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G_buffer_0, metadata !67, metadata !DIExpression()), !dbg !71
  %6 = bitcast [10 x i32]* %_goodB2G_buffer_0 to i8*, !dbg !71
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 40, i1 false), !dbg !71
  %7 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !72
  %cmp6 = icmp sge i32 %7, 0, !dbg !74
  br i1 %cmp6, label %land.lhs.true, label %if.else17, !dbg !75

land.lhs.true:                                    ; preds = %for.body5
  %8 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !76
  %cmp7 = icmp slt i32 %8, 10, !dbg !77
  br i1 %cmp7, label %if.then8, label %if.else17, !dbg !78

if.then8:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !79
  %idxprom = sext i32 %9 to i64, !dbg !81
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom, !dbg !81
  store i32 1, i32* %arrayidx, align 4, !dbg !82
  store i32 0, i32* %_goodB2G_i_1, align 4, !dbg !83
  br label %for.cond9, !dbg !85

for.cond9:                                        ; preds = %for.inc14, %if.then8
  %10 = load i32, i32* %_goodB2G_i_1, align 4, !dbg !86
  %cmp10 = icmp slt i32 %10, 10, !dbg !88
  br i1 %cmp10, label %for.body11, label %for.end16, !dbg !89

for.body11:                                       ; preds = %for.cond9
  %11 = load i32, i32* %_goodB2G_i_1, align 4, !dbg !90
  %idxprom12 = sext i32 %11 to i64, !dbg !92
  %arrayidx13 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G_buffer_0, i64 0, i64 %idxprom12, !dbg !92
  %12 = load i32, i32* %arrayidx13, align 4, !dbg !92
  call void @printIntLine(i32 %12), !dbg !93
  br label %for.inc14, !dbg !94

for.inc14:                                        ; preds = %for.body11
  %13 = load i32, i32* %_goodB2G_i_1, align 4, !dbg !95
  %inc15 = add nsw i32 %13, 1, !dbg !95
  store i32 %inc15, i32* %_goodB2G_i_1, align 4, !dbg !95
  br label %for.cond9, !dbg !96, !llvm.loop !97

for.end16:                                        ; preds = %for.cond9
  br label %if.end18, !dbg !99

if.else17:                                        ; preds = %land.lhs.true, %for.body5
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !100
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %for.end16
  br label %for.inc19, !dbg !102

for.inc19:                                        ; preds = %if.end18
  %14 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !103
  %inc20 = add nsw i32 %14, 1, !dbg !103
  store i32 %inc20, i32* %_goodB2G_k_0, align 4, !dbg !103
  br label %for.cond3, !dbg !104, !llvm.loop !105

for.end21:                                        ; preds = %for.cond3
  br label %goodB2G_label_, !dbg !106

goodB2G_label_:                                   ; preds = %for.end21
  call void @llvm.dbg.label(metadata !107), !dbg !108
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_h_0, metadata !109, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_j_0, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_data_0, metadata !114, metadata !DIExpression()), !dbg !115
  store i32 -1, i32* %_goodG2B_data_0, align 4, !dbg !116
  store i32 0, i32* %_goodG2B_h_0, align 4, !dbg !117
  br label %for.cond22, !dbg !119

for.cond22:                                       ; preds = %for.inc25, %goodB2G_label_
  %15 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !120
  %cmp23 = icmp slt i32 %15, 1, !dbg !122
  br i1 %cmp23, label %for.body24, label %for.end27, !dbg !123

for.body24:                                       ; preds = %for.cond22
  store i32 7, i32* %_goodG2B_data_0, align 4, !dbg !124
  br label %for.inc25, !dbg !126

for.inc25:                                        ; preds = %for.body24
  %16 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !127
  %inc26 = add nsw i32 %16, 1, !dbg !127
  store i32 %inc26, i32* %_goodG2B_h_0, align 4, !dbg !127
  br label %for.cond22, !dbg !128, !llvm.loop !129

for.end27:                                        ; preds = %for.cond22
  store i32 0, i32* %_goodG2B_j_0, align 4, !dbg !131
  br label %for.cond28, !dbg !133

for.cond28:                                       ; preds = %for.inc43, %for.end27
  %17 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !134
  %cmp29 = icmp slt i32 %17, 1, !dbg !136
  br i1 %cmp29, label %for.body30, label %for.end45, !dbg !137

for.body30:                                       ; preds = %for.cond28
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !138, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B_buffer_0, metadata !142, metadata !DIExpression()), !dbg !143
  %18 = bitcast [10 x i32]* %_goodG2B_buffer_0 to i8*, !dbg !143
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 40, i1 false), !dbg !143
  %19 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !144
  %cmp31 = icmp sge i32 %19, 0, !dbg !146
  br i1 %cmp31, label %if.then32, label %if.else41, !dbg !147

if.then32:                                        ; preds = %for.body30
  %20 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !148
  %21 = load i32, i32* %_goodG2B_data_0, align 4, !dbg !150
  call void %20(i32 %21), !dbg !148
  store i32 0, i32* %_goodG2B_i_0, align 4, !dbg !151
  br label %for.cond33, !dbg !153

for.cond33:                                       ; preds = %for.inc38, %if.then32
  %22 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !154
  %cmp34 = icmp slt i32 %22, 10, !dbg !156
  br i1 %cmp34, label %for.body35, label %for.end40, !dbg !157

for.body35:                                       ; preds = %for.cond33
  %23 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !158
  %idxprom36 = sext i32 %23 to i64, !dbg !160
  %arrayidx37 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B_buffer_0, i64 0, i64 %idxprom36, !dbg !160
  %24 = load i32, i32* %arrayidx37, align 4, !dbg !160
  call void @printIntLine(i32 %24), !dbg !161
  br label %for.inc38, !dbg !162

for.inc38:                                        ; preds = %for.body35
  %25 = load i32, i32* %_goodG2B_i_0, align 4, !dbg !163
  %inc39 = add nsw i32 %25, 1, !dbg !163
  store i32 %inc39, i32* %_goodG2B_i_0, align 4, !dbg !163
  br label %for.cond33, !dbg !164, !llvm.loop !165

for.end40:                                        ; preds = %for.cond33
  br label %if.end42, !dbg !167

if.else41:                                        ; preds = %for.body30
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0)), !dbg !168
  br label %if.end42

if.end42:                                         ; preds = %if.else41, %for.end40
  br label %for.inc43, !dbg !170

for.inc43:                                        ; preds = %if.end42
  %26 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !171
  %inc44 = add nsw i32 %26, 1, !dbg !171
  store i32 %inc44, i32* %_goodG2B_j_0, align 4, !dbg !171
  br label %for.cond28, !dbg !172, !llvm.loop !173

for.end45:                                        ; preds = %for.cond28
  br label %goodG2B_label_, !dbg !174

goodG2B_label_:                                   ; preds = %for.end45
  call void @llvm.dbg.label(metadata !175), !dbg !176
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_good_label_, !dbg !177

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !178), !dbg !179
  ret void, !dbg !180
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1787CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17143_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_580/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1787CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17143_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!20 = !DILocalVariable(name: "_goodB2G_i_0", scope: !21, file: !1, line: 6, type: !15)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!22 = !DILocation(line: 6, column: 9, scope: !21)
!23 = !DILocalVariable(name: "_goodB2G_k_0", scope: !21, file: !1, line: 7, type: !15)
!24 = !DILocation(line: 7, column: 9, scope: !21)
!25 = !DILocalVariable(name: "_goodB2G_data_0", scope: !21, file: !1, line: 8, type: !15)
!26 = !DILocation(line: 8, column: 9, scope: !21)
!27 = !DILocation(line: 9, column: 21, scope: !21)
!28 = !DILocation(line: 10, column: 23, scope: !29)
!29 = distinct !DILexicalBlock(scope: !21, file: !1, line: 10, column: 5)
!30 = !DILocation(line: 10, column: 10, scope: !29)
!31 = !DILocation(line: 10, column: 28, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !1, line: 10, column: 5)
!33 = !DILocation(line: 10, column: 41, scope: !32)
!34 = !DILocation(line: 10, column: 5, scope: !29)
!35 = !DILocation(line: 13, column: 19, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 13, column: 13)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 12, column: 7)
!38 = distinct !DILexicalBlock(scope: !32, file: !1, line: 11, column: 5)
!39 = !DILocation(line: 13, column: 80, scope: !36)
!40 = !DILocation(line: 13, column: 13, scope: !36)
!41 = !DILocation(line: 13, column: 87, scope: !36)
!42 = !DILocation(line: 13, column: 13, scope: !37)
!43 = !DILocation(line: 15, column: 34, scope: !44)
!44 = distinct !DILexicalBlock(scope: !36, file: !1, line: 14, column: 9)
!45 = !DILocation(line: 15, column: 29, scope: !44)
!46 = !DILocation(line: 15, column: 27, scope: !44)
!47 = !DILocation(line: 16, column: 9, scope: !44)
!48 = !DILocation(line: 19, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !36, file: !1, line: 18, column: 9)
!50 = !DILocation(line: 23, column: 5, scope: !38)
!51 = !DILocation(line: 10, column: 58, scope: !32)
!52 = !DILocation(line: 10, column: 5, scope: !32)
!53 = distinct !{!53, !34, !54, !55}
!54 = !DILocation(line: 23, column: 5, scope: !29)
!55 = !{!"llvm.loop.mustprogress"}
!56 = !DILocation(line: 25, column: 23, scope: !57)
!57 = distinct !DILexicalBlock(scope: !21, file: !1, line: 25, column: 5)
!58 = !DILocation(line: 25, column: 10, scope: !57)
!59 = !DILocation(line: 25, column: 28, scope: !60)
!60 = distinct !DILexicalBlock(scope: !57, file: !1, line: 25, column: 5)
!61 = !DILocation(line: 25, column: 41, scope: !60)
!62 = !DILocation(line: 25, column: 5, scope: !57)
!63 = !DILocalVariable(name: "_goodB2G_i_1", scope: !64, file: !1, line: 28, type: !15)
!64 = distinct !DILexicalBlock(scope: !65, file: !1, line: 27, column: 7)
!65 = distinct !DILexicalBlock(scope: !60, file: !1, line: 26, column: 5)
!66 = !DILocation(line: 28, column: 13, scope: !64)
!67 = !DILocalVariable(name: "_goodB2G_buffer_0", scope: !64, file: !1, line: 29, type: !68)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 10)
!71 = !DILocation(line: 29, column: 13, scope: !64)
!72 = !DILocation(line: 30, column: 14, scope: !73)
!73 = distinct !DILexicalBlock(scope: !64, file: !1, line: 30, column: 13)
!74 = !DILocation(line: 30, column: 30, scope: !73)
!75 = !DILocation(line: 30, column: 36, scope: !73)
!76 = !DILocation(line: 30, column: 40, scope: !73)
!77 = !DILocation(line: 30, column: 56, scope: !73)
!78 = !DILocation(line: 30, column: 13, scope: !64)
!79 = !DILocation(line: 32, column: 29, scope: !80)
!80 = distinct !DILexicalBlock(scope: !73, file: !1, line: 31, column: 9)
!81 = !DILocation(line: 32, column: 11, scope: !80)
!82 = !DILocation(line: 32, column: 46, scope: !80)
!83 = !DILocation(line: 33, column: 29, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !1, line: 33, column: 11)
!85 = !DILocation(line: 33, column: 16, scope: !84)
!86 = !DILocation(line: 33, column: 34, scope: !87)
!87 = distinct !DILexicalBlock(scope: !84, file: !1, line: 33, column: 11)
!88 = !DILocation(line: 33, column: 47, scope: !87)
!89 = !DILocation(line: 33, column: 11, scope: !84)
!90 = !DILocation(line: 35, column: 44, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 34, column: 11)
!92 = !DILocation(line: 35, column: 26, scope: !91)
!93 = !DILocation(line: 35, column: 13, scope: !91)
!94 = !DILocation(line: 36, column: 11, scope: !91)
!95 = !DILocation(line: 33, column: 65, scope: !87)
!96 = !DILocation(line: 33, column: 11, scope: !87)
!97 = distinct !{!97, !89, !98, !55}
!98 = !DILocation(line: 36, column: 11, scope: !84)
!99 = !DILocation(line: 38, column: 9, scope: !80)
!100 = !DILocation(line: 41, column: 11, scope: !101)
!101 = distinct !DILexicalBlock(scope: !73, file: !1, line: 40, column: 9)
!102 = !DILocation(line: 45, column: 5, scope: !65)
!103 = !DILocation(line: 25, column: 58, scope: !60)
!104 = !DILocation(line: 25, column: 5, scope: !60)
!105 = distinct !{!105, !62, !106, !55}
!106 = !DILocation(line: 45, column: 5, scope: !57)
!107 = !DILabel(scope: !21, name: "goodB2G_label_", file: !1, line: 47)
!108 = !DILocation(line: 47, column: 5, scope: !21)
!109 = !DILocalVariable(name: "_goodG2B_h_0", scope: !110, file: !1, line: 54, type: !15)
!110 = distinct !DILexicalBlock(scope: !7, file: !1, line: 53, column: 3)
!111 = !DILocation(line: 54, column: 9, scope: !110)
!112 = !DILocalVariable(name: "_goodG2B_j_0", scope: !110, file: !1, line: 55, type: !15)
!113 = !DILocation(line: 55, column: 9, scope: !110)
!114 = !DILocalVariable(name: "_goodG2B_data_0", scope: !110, file: !1, line: 56, type: !15)
!115 = !DILocation(line: 56, column: 9, scope: !110)
!116 = !DILocation(line: 57, column: 21, scope: !110)
!117 = !DILocation(line: 58, column: 23, scope: !118)
!118 = distinct !DILexicalBlock(scope: !110, file: !1, line: 58, column: 5)
!119 = !DILocation(line: 58, column: 10, scope: !118)
!120 = !DILocation(line: 58, column: 28, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 58, column: 5)
!122 = !DILocation(line: 58, column: 41, scope: !121)
!123 = !DILocation(line: 58, column: 5, scope: !118)
!124 = !DILocation(line: 60, column: 23, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 59, column: 5)
!126 = !DILocation(line: 61, column: 5, scope: !125)
!127 = !DILocation(line: 58, column: 58, scope: !121)
!128 = !DILocation(line: 58, column: 5, scope: !121)
!129 = distinct !{!129, !123, !130, !55}
!130 = !DILocation(line: 61, column: 5, scope: !118)
!131 = !DILocation(line: 63, column: 23, scope: !132)
!132 = distinct !DILexicalBlock(scope: !110, file: !1, line: 63, column: 5)
!133 = !DILocation(line: 63, column: 10, scope: !132)
!134 = !DILocation(line: 63, column: 28, scope: !135)
!135 = distinct !DILexicalBlock(scope: !132, file: !1, line: 63, column: 5)
!136 = !DILocation(line: 63, column: 41, scope: !135)
!137 = !DILocation(line: 63, column: 5, scope: !132)
!138 = !DILocalVariable(name: "_goodG2B_i_0", scope: !139, file: !1, line: 66, type: !15)
!139 = distinct !DILexicalBlock(scope: !140, file: !1, line: 65, column: 7)
!140 = distinct !DILexicalBlock(scope: !135, file: !1, line: 64, column: 5)
!141 = !DILocation(line: 66, column: 13, scope: !139)
!142 = !DILocalVariable(name: "_goodG2B_buffer_0", scope: !139, file: !1, line: 67, type: !68)
!143 = !DILocation(line: 67, column: 13, scope: !139)
!144 = !DILocation(line: 68, column: 13, scope: !145)
!145 = distinct !DILexicalBlock(scope: !139, file: !1, line: 68, column: 13)
!146 = !DILocation(line: 68, column: 29, scope: !145)
!147 = !DILocation(line: 68, column: 13, scope: !139)
!148 = !DILocation(line: 70, column: 11, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 69, column: 9)
!150 = !DILocation(line: 70, column: 18, scope: !149)
!151 = !DILocation(line: 71, column: 29, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !1, line: 71, column: 11)
!153 = !DILocation(line: 71, column: 16, scope: !152)
!154 = !DILocation(line: 71, column: 34, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !1, line: 71, column: 11)
!156 = !DILocation(line: 71, column: 47, scope: !155)
!157 = !DILocation(line: 71, column: 11, scope: !152)
!158 = !DILocation(line: 73, column: 44, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !1, line: 72, column: 11)
!160 = !DILocation(line: 73, column: 26, scope: !159)
!161 = !DILocation(line: 73, column: 13, scope: !159)
!162 = !DILocation(line: 74, column: 11, scope: !159)
!163 = !DILocation(line: 71, column: 65, scope: !155)
!164 = !DILocation(line: 71, column: 11, scope: !155)
!165 = distinct !{!165, !157, !166, !55}
!166 = !DILocation(line: 74, column: 11, scope: !152)
!167 = !DILocation(line: 76, column: 9, scope: !149)
!168 = !DILocation(line: 79, column: 11, scope: !169)
!169 = distinct !DILexicalBlock(scope: !145, file: !1, line: 78, column: 9)
!170 = !DILocation(line: 83, column: 5, scope: !140)
!171 = !DILocation(line: 63, column: 58, scope: !135)
!172 = !DILocation(line: 63, column: 5, scope: !135)
!173 = distinct !{!173, !137, !174, !55}
!174 = !DILocation(line: 83, column: 5, scope: !132)
!175 = !DILabel(scope: !110, name: "goodG2B_label_", file: !1, line: 85)
!176 = !DILocation(line: 85, column: 5, scope: !110)
!177 = !DILocation(line: 90, column: 3, scope: !110)
!178 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_17_good_label_", file: !1, line: 91)
!179 = !DILocation(line: 91, column: 3, scope: !7)
!180 = !DILocation(line: 96, column: 1, scope: !7)
