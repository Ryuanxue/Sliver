; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52a35CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c33_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52a35CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c33_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52a35CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c33_1(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_data_0, align 4, !dbg !22
  %0 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_inputBuffer_0.addr, align 8, !dbg !23
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !26
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !27
  %cmp = icmp ne i8* %call, null, !dbg !28
  br i1 %cmp, label %if.then, label %if.else, !dbg !29

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_inputBuffer_0.addr, align 8, !dbg !30
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !32
  store i32 %call1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_data_0, align 4, !dbg !33
  br label %if.end, !dbg !34

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_i_0, metadata !37, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_buffer_0, metadata !42, metadata !DIExpression()), !dbg !46
  %3 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_buffer_0 to i8*, !dbg !46
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !46
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_data_0, align 4, !dbg !47
  %cmp2 = icmp sge i32 %4, 0, !dbg !49
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !50

if.then3:                                         ; preds = %if.end
  %5 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !51
  %6 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_data_0, align 4, !dbg !53
  call void %5(i32 %6), !dbg !51
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_i_0, align 4, !dbg !54
  br label %for.cond, !dbg !56

for.cond:                                         ; preds = %for.inc, %if.then3
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_i_0, align 4, !dbg !57
  %cmp4 = icmp slt i32 %7, 10, !dbg !59
  br i1 %cmp4, label %for.body, label %for.end, !dbg !60

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_i_0, align 4, !dbg !61
  %idxprom = sext i32 %8 to i64, !dbg !63
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_buffer_0, i64 0, i64 %idxprom, !dbg !63
  %9 = load i32, i32* %arrayidx, align 4, !dbg !63
  call void @printIntLine(i32 %9), !dbg !64
  br label %for.inc, !dbg !65

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_i_0, align 4, !dbg !66
  %inc = add nsw i32 %10, 1, !dbg !66
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_i_0, align 4, !dbg !66
  br label %for.cond, !dbg !67, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  br label %if.end6, !dbg !71

if.else5:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !72
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_label_, !dbg !74

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_label_: ; preds = %if.end6
  call void @llvm.dbg.label(metadata !75), !dbg !76
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52b_badSink_label_, !dbg !77

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52b_badSink_label_: ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_label_
  call void @llvm.dbg.label(metadata !78), !dbg !79
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_label_, !dbg !80

CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_label_: ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52b_badSink_label_
  call void @llvm.dbg.label(metadata !81), !dbg !82
  ret void, !dbg !83
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52a35CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c33_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_594/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52a35CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c33_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 123, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 202, scope: !7)
!20 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_data_0", scope: !7, file: !1, line: 5, type: !15)
!21 = !DILocation(line: 5, column: 7, scope: !7)
!22 = !DILocation(line: 6, column: 67, scope: !7)
!23 = !DILocation(line: 8, column: 15, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 8, column: 9)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 3)
!26 = !DILocation(line: 8, column: 172, scope: !24)
!27 = !DILocation(line: 8, column: 9, scope: !24)
!28 = !DILocation(line: 8, column: 179, scope: !24)
!29 = !DILocation(line: 8, column: 9, scope: !25)
!30 = !DILocation(line: 10, column: 78, scope: !31)
!31 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 5)
!32 = !DILocation(line: 10, column: 73, scope: !31)
!33 = !DILocation(line: 10, column: 71, scope: !31)
!34 = !DILocation(line: 11, column: 5, scope: !31)
!35 = !DILocation(line: 14, column: 7, scope: !36)
!36 = distinct !DILexicalBlock(scope: !24, file: !1, line: 13, column: 5)
!37 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_i_0", scope: !38, file: !1, line: 21, type: !15)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 20, column: 7)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 19, column: 5)
!40 = distinct !DILexicalBlock(scope: !7, file: !1, line: 18, column: 3)
!41 = !DILocation(line: 21, column: 13, scope: !38)
!42 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_buffer_0", scope: !38, file: !1, line: 22, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 10)
!46 = !DILocation(line: 22, column: 13, scope: !38)
!47 = !DILocation(line: 23, column: 13, scope: !48)
!48 = distinct !DILexicalBlock(scope: !38, file: !1, line: 23, column: 13)
!49 = !DILocation(line: 23, column: 77, scope: !48)
!50 = !DILocation(line: 23, column: 13, scope: !38)
!51 = !DILocation(line: 25, column: 11, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 24, column: 9)
!53 = !DILocation(line: 25, column: 18, scope: !52)
!54 = !DILocation(line: 26, column: 82, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 26, column: 11)
!56 = !DILocation(line: 26, column: 16, scope: !55)
!57 = !DILocation(line: 26, column: 87, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 26, column: 11)
!59 = !DILocation(line: 26, column: 153, scope: !58)
!60 = !DILocation(line: 26, column: 11, scope: !55)
!61 = !DILocation(line: 28, column: 97, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 27, column: 11)
!63 = !DILocation(line: 28, column: 26, scope: !62)
!64 = !DILocation(line: 28, column: 13, scope: !62)
!65 = !DILocation(line: 29, column: 11, scope: !62)
!66 = !DILocation(line: 26, column: 224, scope: !58)
!67 = !DILocation(line: 26, column: 11, scope: !58)
!68 = distinct !{!68, !60, !69, !70}
!69 = !DILocation(line: 29, column: 11, scope: !55)
!70 = !{!"llvm.loop.mustprogress"}
!71 = !DILocation(line: 31, column: 9, scope: !52)
!72 = !DILocation(line: 34, column: 11, scope: !73)
!73 = distinct !DILexicalBlock(scope: !48, file: !1, line: 33, column: 9)
!74 = !DILocation(line: 37, column: 7, scope: !38)
!75 = !DILabel(scope: !39, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52c_badSink_label_", file: !1, line: 38)
!76 = !DILocation(line: 38, column: 7, scope: !39)
!77 = !DILocation(line: 43, column: 5, scope: !39)
!78 = !DILabel(scope: !40, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52b_badSink_label_", file: !1, line: 44)
!79 = !DILocation(line: 44, column: 5, scope: !40)
!80 = !DILocation(line: 49, column: 3, scope: !40)
!81 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_52_bad_label_", file: !1, line: 50)
!82 = !DILocation(line: 50, column: 3, scope: !7)
!83 = !DILocation(line: 55, column: 1, scope: !7)
