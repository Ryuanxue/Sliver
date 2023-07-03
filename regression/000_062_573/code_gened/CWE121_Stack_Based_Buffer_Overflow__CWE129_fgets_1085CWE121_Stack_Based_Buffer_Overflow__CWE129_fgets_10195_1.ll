; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1085CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10195_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1085CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10195_1.c"
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
@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1085CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10195_1(i8* %_goodB2G1_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G1_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_data_0 = alloca i32, align 4
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_buffer_0 = alloca [10 x i32], align 16
  %_goodG2B1_data_0 = alloca i32, align 4
  %_goodG2B1_i_0 = alloca i32, align 4
  %_goodG2B1_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G1_inputBuffer_0, i8** %_goodB2G1_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  store i32 -1, i32* %_goodB2G1_data_0, align 4, !dbg !23
  %0 = load i32, i32* @globalTrue, align 4, !dbg !24
  %tobool = icmp ne i32 %0, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.end3, !dbg !26

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !27
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !31
  %call = call i8* @fgets(i8* %1, i32 14, %struct._IO_FILE* %2), !dbg !32
  %cmp = icmp ne i8* %call, null, !dbg !33
  br i1 %cmp, label %if.then1, label %if.else, !dbg !34

if.then1:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !35
  %call2 = call i32 @atoi(i8* %3) #5, !dbg !37
  store i32 %call2, i32* %_goodB2G1_data_0, align 4, !dbg !38
  br label %if.end, !dbg !39

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !40
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  br label %if.end3, !dbg !42

if.end3:                                          ; preds = %if.end, %entry
  %4 = load i32, i32* @globalFalse, align 4, !dbg !43
  %tobool4 = icmp ne i32 %4, 0, !dbg !43
  br i1 %tobool4, label %if.then5, label %if.else6, !dbg !45

if.then5:                                         ; preds = %if.end3
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !46
  br label %if.end15, !dbg !48

if.else6:                                         ; preds = %if.end3
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !49, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G1_buffer_0, metadata !53, metadata !DIExpression()), !dbg !57
  %5 = bitcast [10 x i32]* %_goodB2G1_buffer_0 to i8*, !dbg !57
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 40, i1 false), !dbg !57
  %6 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !58
  %cmp7 = icmp sge i32 %6, 0, !dbg !60
  br i1 %cmp7, label %land.lhs.true, label %if.else13, !dbg !61

land.lhs.true:                                    ; preds = %if.else6
  %7 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !62
  %cmp8 = icmp slt i32 %7, 10, !dbg !63
  br i1 %cmp8, label %if.then9, label %if.else13, !dbg !64

if.then9:                                         ; preds = %land.lhs.true
  %8 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !65
  %idxprom = sext i32 %8 to i64, !dbg !67
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom, !dbg !67
  store i32 1, i32* %arrayidx, align 4, !dbg !68
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !69
  br label %for.cond, !dbg !71

for.cond:                                         ; preds = %for.inc, %if.then9
  %9 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !72
  %cmp10 = icmp slt i32 %9, 10, !dbg !74
  br i1 %cmp10, label %for.body, label %for.end, !dbg !75

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !76
  %idxprom11 = sext i32 %10 to i64, !dbg !78
  %arrayidx12 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom11, !dbg !78
  %11 = load i32, i32* %arrayidx12, align 4, !dbg !78
  call void @printIntLine(i32 %11), !dbg !79
  br label %for.inc, !dbg !80

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !81
  %inc = add nsw i32 %12, 1, !dbg !81
  store i32 %inc, i32* %_goodB2G1_i_0, align 4, !dbg !81
  br label %for.cond, !dbg !82, !llvm.loop !83

for.end:                                          ; preds = %for.cond
  br label %if.end14, !dbg !86

if.else13:                                        ; preds = %land.lhs.true, %if.else6
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !87
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %for.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then5
  br label %goodB2G1_label_, !dbg !43

goodB2G1_label_:                                  ; preds = %if.end15
  call void @llvm.dbg.label(metadata !89), !dbg !90
  call void (...) @goodB2G2(), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_data_0, metadata !92, metadata !DIExpression()), !dbg !94
  store i32 -1, i32* %_goodG2B1_data_0, align 4, !dbg !95
  %13 = load i32, i32* @globalFalse, align 4, !dbg !96
  %tobool16 = icmp ne i32 %13, 0, !dbg !96
  br i1 %tobool16, label %if.then17, label %if.else18, !dbg !98

if.then17:                                        ; preds = %goodB2G1_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !99
  br label %if.end19, !dbg !101

if.else18:                                        ; preds = %goodB2G1_label_
  store i32 7, i32* %_goodG2B1_data_0, align 4, !dbg !102
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then17
  %14 = load i32, i32* @globalTrue, align 4, !dbg !104
  %tobool20 = icmp ne i32 %14, 0, !dbg !104
  br i1 %tobool20, label %if.then21, label %if.end34, !dbg !106

if.then21:                                        ; preds = %if.end19
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !107, metadata !DIExpression()), !dbg !110
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B1_buffer_0, metadata !111, metadata !DIExpression()), !dbg !112
  %15 = bitcast [10 x i32]* %_goodG2B1_buffer_0 to i8*, !dbg !112
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 40, i1 false), !dbg !112
  %16 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !113
  %cmp22 = icmp sge i32 %16, 0, !dbg !115
  br i1 %cmp22, label %if.then23, label %if.else32, !dbg !116

if.then23:                                        ; preds = %if.then21
  %17 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !117
  %18 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !119
  call void %17(i32 %18), !dbg !117
  store i32 0, i32* %_goodG2B1_i_0, align 4, !dbg !120
  br label %for.cond24, !dbg !122

for.cond24:                                       ; preds = %for.inc29, %if.then23
  %19 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !123
  %cmp25 = icmp slt i32 %19, 10, !dbg !125
  br i1 %cmp25, label %for.body26, label %for.end31, !dbg !126

for.body26:                                       ; preds = %for.cond24
  %20 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !127
  %idxprom27 = sext i32 %20 to i64, !dbg !129
  %arrayidx28 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B1_buffer_0, i64 0, i64 %idxprom27, !dbg !129
  %21 = load i32, i32* %arrayidx28, align 4, !dbg !129
  call void @printIntLine(i32 %21), !dbg !130
  br label %for.inc29, !dbg !131

for.inc29:                                        ; preds = %for.body26
  %22 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !132
  %inc30 = add nsw i32 %22, 1, !dbg !132
  store i32 %inc30, i32* %_goodG2B1_i_0, align 4, !dbg !132
  br label %for.cond24, !dbg !133, !llvm.loop !134

for.end31:                                        ; preds = %for.cond24
  br label %if.end33, !dbg !136

if.else32:                                        ; preds = %if.then21
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !137
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %for.end31
  br label %if.end34, !dbg !139

if.end34:                                         ; preds = %if.end33, %if.end19
  br label %goodG2B1_label_, !dbg !104

goodG2B1_label_:                                  ; preds = %if.end34
  call void @llvm.dbg.label(metadata !140), !dbg !141
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10_good_label_, !dbg !142

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !143), !dbg !144
  ret void, !dbg !145
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1085CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10195_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_573/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_1085CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10195_1", scope: !1, file: !1, line: 5, type: !8, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!20 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !21, file: !1, line: 8, type: !15)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 3)
!22 = !DILocation(line: 8, column: 9, scope: !21)
!23 = !DILocation(line: 9, column: 22, scope: !21)
!24 = !DILocation(line: 10, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 10, column: 9)
!26 = !DILocation(line: 10, column: 9, scope: !21)
!27 = !DILocation(line: 13, column: 19, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 13, column: 13)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 12, column: 7)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 11, column: 5)
!31 = !DILocation(line: 13, column: 82, scope: !28)
!32 = !DILocation(line: 13, column: 13, scope: !28)
!33 = !DILocation(line: 13, column: 89, scope: !28)
!34 = !DILocation(line: 13, column: 13, scope: !29)
!35 = !DILocation(line: 15, column: 35, scope: !36)
!36 = distinct !DILexicalBlock(scope: !28, file: !1, line: 14, column: 9)
!37 = !DILocation(line: 15, column: 30, scope: !36)
!38 = !DILocation(line: 15, column: 28, scope: !36)
!39 = !DILocation(line: 16, column: 9, scope: !36)
!40 = !DILocation(line: 19, column: 11, scope: !41)
!41 = distinct !DILexicalBlock(scope: !28, file: !1, line: 18, column: 9)
!42 = !DILocation(line: 23, column: 5, scope: !30)
!43 = !DILocation(line: 25, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !21, file: !1, line: 25, column: 9)
!45 = !DILocation(line: 25, column: 9, scope: !21)
!46 = !DILocation(line: 27, column: 7, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 26, column: 5)
!48 = !DILocation(line: 28, column: 5, scope: !47)
!49 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !50, file: !1, line: 32, type: !15)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 31, column: 7)
!51 = distinct !DILexicalBlock(scope: !44, file: !1, line: 30, column: 5)
!52 = !DILocation(line: 32, column: 13, scope: !50)
!53 = !DILocalVariable(name: "_goodB2G1_buffer_0", scope: !50, file: !1, line: 33, type: !54)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 10)
!57 = !DILocation(line: 33, column: 13, scope: !50)
!58 = !DILocation(line: 34, column: 14, scope: !59)
!59 = distinct !DILexicalBlock(scope: !50, file: !1, line: 34, column: 13)
!60 = !DILocation(line: 34, column: 31, scope: !59)
!61 = !DILocation(line: 34, column: 37, scope: !59)
!62 = !DILocation(line: 34, column: 41, scope: !59)
!63 = !DILocation(line: 34, column: 58, scope: !59)
!64 = !DILocation(line: 34, column: 13, scope: !50)
!65 = !DILocation(line: 36, column: 30, scope: !66)
!66 = distinct !DILexicalBlock(scope: !59, file: !1, line: 35, column: 9)
!67 = !DILocation(line: 36, column: 11, scope: !66)
!68 = !DILocation(line: 36, column: 48, scope: !66)
!69 = !DILocation(line: 37, column: 30, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 37, column: 11)
!71 = !DILocation(line: 37, column: 16, scope: !70)
!72 = !DILocation(line: 37, column: 35, scope: !73)
!73 = distinct !DILexicalBlock(scope: !70, file: !1, line: 37, column: 11)
!74 = !DILocation(line: 37, column: 49, scope: !73)
!75 = !DILocation(line: 37, column: 11, scope: !70)
!76 = !DILocation(line: 39, column: 45, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 38, column: 11)
!78 = !DILocation(line: 39, column: 26, scope: !77)
!79 = !DILocation(line: 39, column: 13, scope: !77)
!80 = !DILocation(line: 40, column: 11, scope: !77)
!81 = !DILocation(line: 37, column: 68, scope: !73)
!82 = !DILocation(line: 37, column: 11, scope: !73)
!83 = distinct !{!83, !75, !84, !85}
!84 = !DILocation(line: 40, column: 11, scope: !70)
!85 = !{!"llvm.loop.mustprogress"}
!86 = !DILocation(line: 42, column: 9, scope: !66)
!87 = !DILocation(line: 45, column: 11, scope: !88)
!88 = distinct !DILexicalBlock(scope: !59, file: !1, line: 44, column: 9)
!89 = !DILabel(scope: !21, name: "goodB2G1_label_", file: !1, line: 51)
!90 = !DILocation(line: 51, column: 5, scope: !21)
!91 = !DILocation(line: 57, column: 3, scope: !7)
!92 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !93, file: !1, line: 59, type: !15)
!93 = distinct !DILexicalBlock(scope: !7, file: !1, line: 58, column: 3)
!94 = !DILocation(line: 59, column: 9, scope: !93)
!95 = !DILocation(line: 60, column: 22, scope: !93)
!96 = !DILocation(line: 61, column: 9, scope: !97)
!97 = distinct !DILexicalBlock(scope: !93, file: !1, line: 61, column: 9)
!98 = !DILocation(line: 61, column: 9, scope: !93)
!99 = !DILocation(line: 63, column: 7, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !1, line: 62, column: 5)
!101 = !DILocation(line: 64, column: 5, scope: !100)
!102 = !DILocation(line: 67, column: 24, scope: !103)
!103 = distinct !DILexicalBlock(scope: !97, file: !1, line: 66, column: 5)
!104 = !DILocation(line: 70, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !93, file: !1, line: 70, column: 9)
!106 = !DILocation(line: 70, column: 9, scope: !93)
!107 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !108, file: !1, line: 73, type: !15)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 72, column: 7)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 71, column: 5)
!110 = !DILocation(line: 73, column: 13, scope: !108)
!111 = !DILocalVariable(name: "_goodG2B1_buffer_0", scope: !108, file: !1, line: 74, type: !54)
!112 = !DILocation(line: 74, column: 13, scope: !108)
!113 = !DILocation(line: 75, column: 13, scope: !114)
!114 = distinct !DILexicalBlock(scope: !108, file: !1, line: 75, column: 13)
!115 = !DILocation(line: 75, column: 30, scope: !114)
!116 = !DILocation(line: 75, column: 13, scope: !108)
!117 = !DILocation(line: 77, column: 11, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 76, column: 9)
!119 = !DILocation(line: 77, column: 18, scope: !118)
!120 = !DILocation(line: 78, column: 30, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 78, column: 11)
!122 = !DILocation(line: 78, column: 16, scope: !121)
!123 = !DILocation(line: 78, column: 35, scope: !124)
!124 = distinct !DILexicalBlock(scope: !121, file: !1, line: 78, column: 11)
!125 = !DILocation(line: 78, column: 49, scope: !124)
!126 = !DILocation(line: 78, column: 11, scope: !121)
!127 = !DILocation(line: 80, column: 45, scope: !128)
!128 = distinct !DILexicalBlock(scope: !124, file: !1, line: 79, column: 11)
!129 = !DILocation(line: 80, column: 26, scope: !128)
!130 = !DILocation(line: 80, column: 13, scope: !128)
!131 = !DILocation(line: 81, column: 11, scope: !128)
!132 = !DILocation(line: 78, column: 68, scope: !124)
!133 = !DILocation(line: 78, column: 11, scope: !124)
!134 = distinct !{!134, !126, !135, !85}
!135 = !DILocation(line: 81, column: 11, scope: !121)
!136 = !DILocation(line: 83, column: 9, scope: !118)
!137 = !DILocation(line: 86, column: 11, scope: !138)
!138 = distinct !DILexicalBlock(scope: !114, file: !1, line: 85, column: 9)
!139 = !DILocation(line: 90, column: 5, scope: !109)
!140 = !DILabel(scope: !93, name: "goodG2B1_label_", file: !1, line: 92)
!141 = !DILocation(line: 92, column: 5, scope: !93)
!142 = !DILocation(line: 97, column: 3, scope: !93)
!143 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_10_good_label_", file: !1, line: 98)
!144 = !DILocation(line: 98, column: 3, scope: !7)
!145 = !DILocation(line: 103, column: 1, scope: !7)
