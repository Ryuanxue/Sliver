; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53a75CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d84_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53a75CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d84_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53a75CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d84_1(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G_inputBuffer_0, i8** %_goodB2G_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !22
  %0 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !23
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !26
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !27
  %cmp = icmp ne i8* %call, null, !dbg !28
  br i1 %cmp, label %if.then, label %if.else, !dbg !29

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !30
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !32
  store i32 %call1, i32* %_goodB2G_data_0, align 4, !dbg !33
  br label %if.end, !dbg !34

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_i_0, metadata !37, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_buffer_0, metadata !43, metadata !DIExpression()), !dbg !47
  %3 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_buffer_0 to i8*, !dbg !47
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !47
  %4 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !48
  %cmp2 = icmp sge i32 %4, 0, !dbg !50
  br i1 %cmp2, label %land.lhs.true, label %if.else6, !dbg !51

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !52
  %cmp3 = icmp slt i32 %5, 10, !dbg !53
  br i1 %cmp3, label %if.then4, label %if.else6, !dbg !54

if.then4:                                         ; preds = %land.lhs.true
  %6 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !55
  %7 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !57
  call void %6(i32 %7), !dbg !55
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_i_0, align 4, !dbg !58
  br label %for.cond, !dbg !60

for.cond:                                         ; preds = %for.inc, %if.then4
  %8 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_i_0, align 4, !dbg !61
  %cmp5 = icmp slt i32 %8, 10, !dbg !63
  br i1 %cmp5, label %for.body, label %for.end, !dbg !64

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_i_0, align 4, !dbg !65
  %idxprom = sext i32 %9 to i64, !dbg !67
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_buffer_0, i64 0, i64 %idxprom, !dbg !67
  %10 = load i32, i32* %arrayidx, align 4, !dbg !67
  call void @printIntLine(i32 %10), !dbg !68
  br label %for.inc, !dbg !69

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_i_0, align 4, !dbg !70
  %inc = add nsw i32 %11, 1, !dbg !70
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_i_0, align 4, !dbg !70
  br label %for.cond, !dbg !71, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  br label %if.end7, !dbg !75

if.else6:                                         ; preds = %land.lhs.true, %if.end
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !76
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_label_, !dbg !78

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_label_: ; preds = %if.end7
  call void @llvm.dbg.label(metadata !79), !dbg !80
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c_goodB2GSink_label_, !dbg !81

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c_goodB2GSink_label_: ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_label_
  call void @llvm.dbg.label(metadata !82), !dbg !83
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodB2GSink_label_, !dbg !84

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodB2GSink_label_: ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c_goodB2GSink_label_
  call void @llvm.dbg.label(metadata !85), !dbg !86
  br label %goodB2G_label_, !dbg !87

goodB2G_label_:                                   ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodB2GSink_label_
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53a75CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d84_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_595/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53a75CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d84_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 123, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 154, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G_data_0", scope: !7, file: !1, line: 5, type: !15)
!21 = !DILocation(line: 5, column: 7, scope: !7)
!22 = !DILocation(line: 6, column: 19, scope: !7)
!23 = !DILocation(line: 8, column: 15, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 8, column: 9)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 3)
!26 = !DILocation(line: 8, column: 76, scope: !24)
!27 = !DILocation(line: 8, column: 9, scope: !24)
!28 = !DILocation(line: 8, column: 83, scope: !24)
!29 = !DILocation(line: 8, column: 9, scope: !25)
!30 = !DILocation(line: 10, column: 30, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 5)
!32 = !DILocation(line: 10, column: 25, scope: !31)
!33 = !DILocation(line: 10, column: 23, scope: !31)
!34 = !DILocation(line: 11, column: 5, scope: !31)
!35 = !DILocation(line: 14, column: 7, scope: !36)
!36 = distinct !DILexicalBlock(scope: !24, file: !1, line: 13, column: 5)
!37 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_i_0", scope: !38, file: !1, line: 22, type: !15)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 21, column: 9)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 20, column: 7)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 19, column: 5)
!41 = distinct !DILexicalBlock(scope: !7, file: !1, line: 18, column: 3)
!42 = !DILocation(line: 22, column: 15, scope: !38)
!43 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_buffer_0", scope: !38, file: !1, line: 23, type: !44)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 10)
!47 = !DILocation(line: 23, column: 15, scope: !38)
!48 = !DILocation(line: 24, column: 16, scope: !49)
!49 = distinct !DILexicalBlock(scope: !38, file: !1, line: 24, column: 15)
!50 = !DILocation(line: 24, column: 32, scope: !49)
!51 = !DILocation(line: 24, column: 38, scope: !49)
!52 = !DILocation(line: 24, column: 42, scope: !49)
!53 = !DILocation(line: 24, column: 58, scope: !49)
!54 = !DILocation(line: 24, column: 15, scope: !38)
!55 = !DILocation(line: 26, column: 13, scope: !56)
!56 = distinct !DILexicalBlock(scope: !49, file: !1, line: 25, column: 11)
!57 = !DILocation(line: 26, column: 20, scope: !56)
!58 = !DILocation(line: 27, column: 88, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !1, line: 27, column: 13)
!60 = !DILocation(line: 27, column: 18, scope: !59)
!61 = !DILocation(line: 27, column: 93, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 27, column: 13)
!63 = !DILocation(line: 27, column: 163, scope: !62)
!64 = !DILocation(line: 27, column: 13, scope: !59)
!65 = !DILocation(line: 29, column: 103, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 28, column: 13)
!67 = !DILocation(line: 29, column: 28, scope: !66)
!68 = !DILocation(line: 29, column: 15, scope: !66)
!69 = !DILocation(line: 30, column: 13, scope: !66)
!70 = !DILocation(line: 27, column: 238, scope: !62)
!71 = !DILocation(line: 27, column: 13, scope: !62)
!72 = distinct !{!72, !64, !73, !74}
!73 = !DILocation(line: 30, column: 13, scope: !59)
!74 = !{!"llvm.loop.mustprogress"}
!75 = !DILocation(line: 32, column: 11, scope: !56)
!76 = !DILocation(line: 35, column: 13, scope: !77)
!77 = distinct !DILexicalBlock(scope: !49, file: !1, line: 34, column: 11)
!78 = !DILocation(line: 38, column: 9, scope: !38)
!79 = !DILabel(scope: !39, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53d_goodB2GSink_label_", file: !1, line: 39)
!80 = !DILocation(line: 39, column: 9, scope: !39)
!81 = !DILocation(line: 44, column: 7, scope: !39)
!82 = !DILabel(scope: !40, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53c_goodB2GSink_label_", file: !1, line: 45)
!83 = !DILocation(line: 45, column: 7, scope: !40)
!84 = !DILocation(line: 50, column: 5, scope: !40)
!85 = !DILabel(scope: !41, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_53b_goodB2GSink_label_", file: !1, line: 51)
!86 = !DILocation(line: 51, column: 5, scope: !41)
!87 = !DILocation(line: 56, column: 3, scope: !41)
!88 = !DILabel(scope: !7, name: "goodB2G_label_", file: !1, line: 57)
!89 = !DILocation(line: 57, column: 3, scope: !7)
!90 = !DILocation(line: 62, column: 1, scope: !7)
