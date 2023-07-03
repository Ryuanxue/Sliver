; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0898CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08208_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0898CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08208_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0898CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08208_1(i8* %_goodB2G1_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
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
  %call = call i32 (...) @staticReturnsTrue(), !dbg !24
  %tobool = icmp ne i32 %call, 0, !dbg !24
  br i1 %tobool, label %if.then, label %if.end4, !dbg !26

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !27
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !31
  %call1 = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !32
  %cmp = icmp ne i8* %call1, null, !dbg !33
  br i1 %cmp, label %if.then2, label %if.else, !dbg !34

if.then2:                                         ; preds = %if.then
  %2 = load i8*, i8** %_goodB2G1_inputBuffer_0.addr, align 8, !dbg !35
  %call3 = call i32 @atoi(i8* %2) #5, !dbg !37
  store i32 %call3, i32* %_goodB2G1_data_0, align 4, !dbg !38
  br label %if.end, !dbg !39

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !40
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end4, !dbg !42

if.end4:                                          ; preds = %if.end, %entry
  %call5 = call i32 (...) @staticReturnsFalse(), !dbg !43
  %tobool6 = icmp ne i32 %call5, 0, !dbg !43
  br i1 %tobool6, label %if.then7, label %if.else8, !dbg !45

if.then7:                                         ; preds = %if.end4
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !46
  br label %if.end17, !dbg !48

if.else8:                                         ; preds = %if.end4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !49, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodB2G1_buffer_0, metadata !53, metadata !DIExpression()), !dbg !57
  %3 = bitcast [10 x i32]* %_goodB2G1_buffer_0 to i8*, !dbg !57
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !57
  %4 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !58
  %cmp9 = icmp sge i32 %4, 0, !dbg !60
  br i1 %cmp9, label %land.lhs.true, label %if.else15, !dbg !61

land.lhs.true:                                    ; preds = %if.else8
  %5 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !62
  %cmp10 = icmp slt i32 %5, 10, !dbg !63
  br i1 %cmp10, label %if.then11, label %if.else15, !dbg !64

if.then11:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* %_goodB2G1_data_0, align 4, !dbg !65
  %idxprom = sext i32 %6 to i64, !dbg !67
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom, !dbg !67
  store i32 1, i32* %arrayidx, align 4, !dbg !68
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !69
  br label %for.cond, !dbg !71

for.cond:                                         ; preds = %for.inc, %if.then11
  %7 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !72
  %cmp12 = icmp slt i32 %7, 10, !dbg !74
  br i1 %cmp12, label %for.body, label %for.end, !dbg !75

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !76
  %idxprom13 = sext i32 %8 to i64, !dbg !78
  %arrayidx14 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodB2G1_buffer_0, i64 0, i64 %idxprom13, !dbg !78
  %9 = load i32, i32* %arrayidx14, align 4, !dbg !78
  call void @printIntLine(i32 %9), !dbg !79
  br label %for.inc, !dbg !80

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !81
  %inc = add nsw i32 %10, 1, !dbg !81
  store i32 %inc, i32* %_goodB2G1_i_0, align 4, !dbg !81
  br label %for.cond, !dbg !82, !llvm.loop !83

for.end:                                          ; preds = %for.cond
  br label %if.end16, !dbg !86

if.else15:                                        ; preds = %land.lhs.true, %if.else8
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0)), !dbg !87
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %for.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then7
  br label %goodB2G1_label_, !dbg !89

goodB2G1_label_:                                  ; preds = %if.end17
  call void @llvm.dbg.label(metadata !90), !dbg !91
  call void (...) @goodB2G2(), !dbg !92
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_data_0, metadata !93, metadata !DIExpression()), !dbg !95
  store i32 -1, i32* %_goodG2B1_data_0, align 4, !dbg !96
  %call18 = call i32 (...) @staticReturnsFalse(), !dbg !97
  %tobool19 = icmp ne i32 %call18, 0, !dbg !97
  br i1 %tobool19, label %if.then20, label %if.else21, !dbg !99

if.then20:                                        ; preds = %goodB2G1_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !100
  br label %if.end22, !dbg !102

if.else21:                                        ; preds = %goodB2G1_label_
  store i32 7, i32* %_goodG2B1_data_0, align 4, !dbg !103
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then20
  %call23 = call i32 (...) @staticReturnsTrue(), !dbg !105
  %tobool24 = icmp ne i32 %call23, 0, !dbg !105
  br i1 %tobool24, label %if.then25, label %if.end38, !dbg !107

if.then25:                                        ; preds = %if.end22
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !108, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2B1_buffer_0, metadata !112, metadata !DIExpression()), !dbg !113
  %11 = bitcast [10 x i32]* %_goodG2B1_buffer_0 to i8*, !dbg !113
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 40, i1 false), !dbg !113
  %12 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !114
  %cmp26 = icmp sge i32 %12, 0, !dbg !116
  br i1 %cmp26, label %if.then27, label %if.else36, !dbg !117

if.then27:                                        ; preds = %if.then25
  %13 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !118
  %14 = load i32, i32* %_goodG2B1_data_0, align 4, !dbg !120
  call void %13(i32 %14), !dbg !118
  store i32 0, i32* %_goodG2B1_i_0, align 4, !dbg !121
  br label %for.cond28, !dbg !123

for.cond28:                                       ; preds = %for.inc33, %if.then27
  %15 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !124
  %cmp29 = icmp slt i32 %15, 10, !dbg !126
  br i1 %cmp29, label %for.body30, label %for.end35, !dbg !127

for.body30:                                       ; preds = %for.cond28
  %16 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !128
  %idxprom31 = sext i32 %16 to i64, !dbg !130
  %arrayidx32 = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2B1_buffer_0, i64 0, i64 %idxprom31, !dbg !130
  %17 = load i32, i32* %arrayidx32, align 4, !dbg !130
  call void @printIntLine(i32 %17), !dbg !131
  br label %for.inc33, !dbg !132

for.inc33:                                        ; preds = %for.body30
  %18 = load i32, i32* %_goodG2B1_i_0, align 4, !dbg !133
  %inc34 = add nsw i32 %18, 1, !dbg !133
  store i32 %inc34, i32* %_goodG2B1_i_0, align 4, !dbg !133
  br label %for.cond28, !dbg !134, !llvm.loop !135

for.end35:                                        ; preds = %for.cond28
  br label %if.end37, !dbg !137

if.else36:                                        ; preds = %if.then25
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0)), !dbg !138
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %for.end35
  br label %if.end38, !dbg !140

if.end38:                                         ; preds = %if.end37, %if.end22
  br label %goodG2B1_label_, !dbg !141

goodG2B1_label_:                                  ; preds = %if.end38
  call void @llvm.dbg.label(metadata !142), !dbg !143
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08_good_label_, !dbg !144

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !145), !dbg !146
  ret void, !dbg !147
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @staticReturnsTrue(...) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #3

declare dso_local void @printLine(i8*) #2

declare dso_local i32 @staticReturnsFalse(...) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0898CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08208_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_571/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_0898CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08208_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G1_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 122, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 154, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !21, file: !1, line: 6, type: !15)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!22 = !DILocation(line: 6, column: 9, scope: !21)
!23 = !DILocation(line: 7, column: 22, scope: !21)
!24 = !DILocation(line: 8, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 8, column: 9)
!26 = !DILocation(line: 8, column: 9, scope: !21)
!27 = !DILocation(line: 11, column: 19, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 11, column: 13)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 10, column: 7)
!30 = distinct !DILexicalBlock(scope: !25, file: !1, line: 9, column: 5)
!31 = !DILocation(line: 11, column: 82, scope: !28)
!32 = !DILocation(line: 11, column: 13, scope: !28)
!33 = !DILocation(line: 11, column: 89, scope: !28)
!34 = !DILocation(line: 11, column: 13, scope: !29)
!35 = !DILocation(line: 13, column: 35, scope: !36)
!36 = distinct !DILexicalBlock(scope: !28, file: !1, line: 12, column: 9)
!37 = !DILocation(line: 13, column: 30, scope: !36)
!38 = !DILocation(line: 13, column: 28, scope: !36)
!39 = !DILocation(line: 14, column: 9, scope: !36)
!40 = !DILocation(line: 17, column: 11, scope: !41)
!41 = distinct !DILexicalBlock(scope: !28, file: !1, line: 16, column: 9)
!42 = !DILocation(line: 21, column: 5, scope: !30)
!43 = !DILocation(line: 23, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !21, file: !1, line: 23, column: 9)
!45 = !DILocation(line: 23, column: 9, scope: !21)
!46 = !DILocation(line: 25, column: 7, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 24, column: 5)
!48 = !DILocation(line: 26, column: 5, scope: !47)
!49 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !50, file: !1, line: 30, type: !15)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 29, column: 7)
!51 = distinct !DILexicalBlock(scope: !44, file: !1, line: 28, column: 5)
!52 = !DILocation(line: 30, column: 13, scope: !50)
!53 = !DILocalVariable(name: "_goodB2G1_buffer_0", scope: !50, file: !1, line: 31, type: !54)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 10)
!57 = !DILocation(line: 31, column: 13, scope: !50)
!58 = !DILocation(line: 32, column: 14, scope: !59)
!59 = distinct !DILexicalBlock(scope: !50, file: !1, line: 32, column: 13)
!60 = !DILocation(line: 32, column: 31, scope: !59)
!61 = !DILocation(line: 32, column: 37, scope: !59)
!62 = !DILocation(line: 32, column: 41, scope: !59)
!63 = !DILocation(line: 32, column: 58, scope: !59)
!64 = !DILocation(line: 32, column: 13, scope: !50)
!65 = !DILocation(line: 34, column: 30, scope: !66)
!66 = distinct !DILexicalBlock(scope: !59, file: !1, line: 33, column: 9)
!67 = !DILocation(line: 34, column: 11, scope: !66)
!68 = !DILocation(line: 34, column: 48, scope: !66)
!69 = !DILocation(line: 35, column: 30, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 35, column: 11)
!71 = !DILocation(line: 35, column: 16, scope: !70)
!72 = !DILocation(line: 35, column: 35, scope: !73)
!73 = distinct !DILexicalBlock(scope: !70, file: !1, line: 35, column: 11)
!74 = !DILocation(line: 35, column: 49, scope: !73)
!75 = !DILocation(line: 35, column: 11, scope: !70)
!76 = !DILocation(line: 37, column: 45, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 36, column: 11)
!78 = !DILocation(line: 37, column: 26, scope: !77)
!79 = !DILocation(line: 37, column: 13, scope: !77)
!80 = !DILocation(line: 38, column: 11, scope: !77)
!81 = !DILocation(line: 35, column: 68, scope: !73)
!82 = !DILocation(line: 35, column: 11, scope: !73)
!83 = distinct !{!83, !75, !84, !85}
!84 = !DILocation(line: 38, column: 11, scope: !70)
!85 = !{!"llvm.loop.mustprogress"}
!86 = !DILocation(line: 40, column: 9, scope: !66)
!87 = !DILocation(line: 43, column: 11, scope: !88)
!88 = distinct !DILexicalBlock(scope: !59, file: !1, line: 42, column: 9)
!89 = !DILocation(line: 23, column: 28, scope: !44)
!90 = !DILabel(scope: !21, name: "goodB2G1_label_", file: !1, line: 49)
!91 = !DILocation(line: 49, column: 5, scope: !21)
!92 = !DILocation(line: 55, column: 3, scope: !7)
!93 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !94, file: !1, line: 57, type: !15)
!94 = distinct !DILexicalBlock(scope: !7, file: !1, line: 56, column: 3)
!95 = !DILocation(line: 57, column: 9, scope: !94)
!96 = !DILocation(line: 58, column: 22, scope: !94)
!97 = !DILocation(line: 59, column: 9, scope: !98)
!98 = distinct !DILexicalBlock(scope: !94, file: !1, line: 59, column: 9)
!99 = !DILocation(line: 59, column: 9, scope: !94)
!100 = !DILocation(line: 61, column: 7, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 60, column: 5)
!102 = !DILocation(line: 62, column: 5, scope: !101)
!103 = !DILocation(line: 65, column: 24, scope: !104)
!104 = distinct !DILexicalBlock(scope: !98, file: !1, line: 64, column: 5)
!105 = !DILocation(line: 68, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !94, file: !1, line: 68, column: 9)
!107 = !DILocation(line: 68, column: 9, scope: !94)
!108 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !109, file: !1, line: 71, type: !15)
!109 = distinct !DILexicalBlock(scope: !110, file: !1, line: 70, column: 7)
!110 = distinct !DILexicalBlock(scope: !106, file: !1, line: 69, column: 5)
!111 = !DILocation(line: 71, column: 13, scope: !109)
!112 = !DILocalVariable(name: "_goodG2B1_buffer_0", scope: !109, file: !1, line: 72, type: !54)
!113 = !DILocation(line: 72, column: 13, scope: !109)
!114 = !DILocation(line: 73, column: 13, scope: !115)
!115 = distinct !DILexicalBlock(scope: !109, file: !1, line: 73, column: 13)
!116 = !DILocation(line: 73, column: 30, scope: !115)
!117 = !DILocation(line: 73, column: 13, scope: !109)
!118 = !DILocation(line: 75, column: 11, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 74, column: 9)
!120 = !DILocation(line: 75, column: 18, scope: !119)
!121 = !DILocation(line: 76, column: 30, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 76, column: 11)
!123 = !DILocation(line: 76, column: 16, scope: !122)
!124 = !DILocation(line: 76, column: 35, scope: !125)
!125 = distinct !DILexicalBlock(scope: !122, file: !1, line: 76, column: 11)
!126 = !DILocation(line: 76, column: 49, scope: !125)
!127 = !DILocation(line: 76, column: 11, scope: !122)
!128 = !DILocation(line: 78, column: 45, scope: !129)
!129 = distinct !DILexicalBlock(scope: !125, file: !1, line: 77, column: 11)
!130 = !DILocation(line: 78, column: 26, scope: !129)
!131 = !DILocation(line: 78, column: 13, scope: !129)
!132 = !DILocation(line: 79, column: 11, scope: !129)
!133 = !DILocation(line: 76, column: 68, scope: !125)
!134 = !DILocation(line: 76, column: 11, scope: !125)
!135 = distinct !{!135, !127, !136, !85}
!136 = !DILocation(line: 79, column: 11, scope: !122)
!137 = !DILocation(line: 81, column: 9, scope: !119)
!138 = !DILocation(line: 84, column: 11, scope: !139)
!139 = distinct !DILexicalBlock(scope: !115, file: !1, line: 83, column: 9)
!140 = !DILocation(line: 88, column: 5, scope: !110)
!141 = !DILocation(line: 68, column: 27, scope: !106)
!142 = !DILabel(scope: !94, name: "goodG2B1_label_", file: !1, line: 90)
!143 = !DILocation(line: 90, column: 5, scope: !94)
!144 = !DILocation(line: 95, column: 3, scope: !94)
!145 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_08_good_label_", file: !1, line: 96)
!146 = !DILocation(line: 96, column: 3, scope: !7)
!147 = !DILocation(line: 101, column: 1, scope: !7)
