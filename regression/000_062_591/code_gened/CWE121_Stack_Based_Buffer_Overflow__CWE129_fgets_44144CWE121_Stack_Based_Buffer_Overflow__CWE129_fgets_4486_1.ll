; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44144CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4486_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44144CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4486_1.c"
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
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44144CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4486_1(i8* %_goodB2G_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i32, align 4
  %_goodB2G_funcPtr_0 = alloca void (i32)*, align 8
  %_goodG2BSink_i_0 = alloca i32, align 4
  %_goodG2BSink_buffer_0 = alloca [10 x i32], align 16
  store i8* %_goodB2G_inputBuffer_0, i8** %_goodB2G_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata void (i32)** %_goodB2G_funcPtr_0, metadata !22, metadata !DIExpression()), !dbg !23
  store void (i32)* @goodB2GSink, void (i32)** %_goodB2G_funcPtr_0, align 8, !dbg !23
  store i32 -1, i32* %_goodB2G_data_0, align 4, !dbg !24
  %0 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !25
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !28
  %call = call i8* @fgets(i8* %0, i32 14, %struct._IO_FILE* %1), !dbg !29
  %cmp = icmp ne i8* %call, null, !dbg !30
  br i1 %cmp, label %if.then, label %if.else, !dbg !31

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %_goodB2G_inputBuffer_0.addr, align 8, !dbg !32
  %call1 = call i32 @atoi(i8* %2) #5, !dbg !34
  store i32 %call1, i32* %_goodB2G_data_0, align 4, !dbg !35
  br label %if.end, !dbg !36

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !37
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.dbg.declare(metadata i32* %_goodG2BSink_i_0, metadata !39, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata [10 x i32]* %_goodG2BSink_buffer_0, metadata !43, metadata !DIExpression()), !dbg !47
  %3 = bitcast [10 x i32]* %_goodG2BSink_buffer_0 to i8*, !dbg !47
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !47
  %4 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !48
  %cmp2 = icmp sge i32 %4, 0, !dbg !50
  br i1 %cmp2, label %if.then3, label %if.else5, !dbg !51

if.then3:                                         ; preds = %if.end
  %5 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !52
  %6 = load i32, i32* %_goodB2G_data_0, align 4, !dbg !54
  call void %5(i32 %6), !dbg !52
  store i32 0, i32* %_goodG2BSink_i_0, align 4, !dbg !55
  br label %for.cond, !dbg !57

for.cond:                                         ; preds = %for.inc, %if.then3
  %7 = load i32, i32* %_goodG2BSink_i_0, align 4, !dbg !58
  %cmp4 = icmp slt i32 %7, 10, !dbg !60
  br i1 %cmp4, label %for.body, label %for.end, !dbg !61

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %_goodG2BSink_i_0, align 4, !dbg !62
  %idxprom = sext i32 %8 to i64, !dbg !64
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_goodG2BSink_buffer_0, i64 0, i64 %idxprom, !dbg !64
  %9 = load i32, i32* %arrayidx, align 4, !dbg !64
  call void @printIntLine(i32 %9), !dbg !65
  br label %for.inc, !dbg !66

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %_goodG2BSink_i_0, align 4, !dbg !67
  %inc = add nsw i32 %10, 1, !dbg !67
  store i32 %inc, i32* %_goodG2BSink_i_0, align 4, !dbg !67
  br label %for.cond, !dbg !68, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  br label %if.end6, !dbg !72

if.else5:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !73
  br label %if.end6

if.end6:                                          ; preds = %if.else5, %for.end
  br label %goodG2BSink_label_, !dbg !75

goodG2BSink_label_:                               ; preds = %if.end6
  call void @llvm.dbg.label(metadata !76), !dbg !77
  br label %goodB2G_label_, !dbg !78

goodB2G_label_:                                   ; preds = %goodG2BSink_label_
  call void @llvm.dbg.label(metadata !79), !dbg !80
  ret void, !dbg !81
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @goodB2GSink(i32) #2

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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44144CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4486_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_591/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_44144CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_4486_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!20 = !DILocalVariable(name: "_goodB2G_data_0", scope: !7, file: !1, line: 5, type: !15)
!21 = !DILocation(line: 5, column: 7, scope: !7)
!22 = !DILocalVariable(name: "_goodB2G_funcPtr_0", scope: !7, file: !1, line: 6, type: !12)
!23 = !DILocation(line: 6, column: 10, scope: !7)
!24 = !DILocation(line: 7, column: 19, scope: !7)
!25 = !DILocation(line: 9, column: 15, scope: !26)
!26 = distinct !DILexicalBlock(scope: !27, file: !1, line: 9, column: 9)
!27 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 3)
!28 = !DILocation(line: 9, column: 76, scope: !26)
!29 = !DILocation(line: 9, column: 9, scope: !26)
!30 = !DILocation(line: 9, column: 83, scope: !26)
!31 = !DILocation(line: 9, column: 9, scope: !27)
!32 = !DILocation(line: 11, column: 30, scope: !33)
!33 = distinct !DILexicalBlock(scope: !26, file: !1, line: 10, column: 5)
!34 = !DILocation(line: 11, column: 25, scope: !33)
!35 = !DILocation(line: 11, column: 23, scope: !33)
!36 = !DILocation(line: 12, column: 5, scope: !33)
!37 = !DILocation(line: 15, column: 7, scope: !38)
!38 = distinct !DILexicalBlock(scope: !26, file: !1, line: 14, column: 5)
!39 = !DILocalVariable(name: "_goodG2BSink_i_0", scope: !40, file: !1, line: 21, type: !15)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 20, column: 5)
!41 = distinct !DILexicalBlock(scope: !7, file: !1, line: 19, column: 3)
!42 = !DILocation(line: 21, column: 11, scope: !40)
!43 = !DILocalVariable(name: "_goodG2BSink_buffer_0", scope: !40, file: !1, line: 22, type: !44)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 10)
!47 = !DILocation(line: 22, column: 11, scope: !40)
!48 = !DILocation(line: 23, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !40, file: !1, line: 23, column: 11)
!50 = !DILocation(line: 23, column: 27, scope: !49)
!51 = !DILocation(line: 23, column: 11, scope: !40)
!52 = !DILocation(line: 25, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 24, column: 7)
!54 = !DILocation(line: 25, column: 16, scope: !53)
!55 = !DILocation(line: 26, column: 31, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 26, column: 9)
!57 = !DILocation(line: 26, column: 14, scope: !56)
!58 = !DILocation(line: 26, column: 36, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !1, line: 26, column: 9)
!60 = !DILocation(line: 26, column: 53, scope: !59)
!61 = !DILocation(line: 26, column: 9, scope: !56)
!62 = !DILocation(line: 28, column: 46, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 27, column: 9)
!64 = !DILocation(line: 28, column: 24, scope: !63)
!65 = !DILocation(line: 28, column: 11, scope: !63)
!66 = !DILocation(line: 29, column: 9, scope: !63)
!67 = !DILocation(line: 26, column: 75, scope: !59)
!68 = !DILocation(line: 26, column: 9, scope: !59)
!69 = distinct !{!69, !61, !70, !71}
!70 = !DILocation(line: 29, column: 9, scope: !56)
!71 = !{!"llvm.loop.mustprogress"}
!72 = !DILocation(line: 31, column: 7, scope: !53)
!73 = !DILocation(line: 34, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !49, file: !1, line: 33, column: 7)
!75 = !DILocation(line: 37, column: 5, scope: !40)
!76 = !DILabel(scope: !41, name: "goodG2BSink_label_", file: !1, line: 38)
!77 = !DILocation(line: 38, column: 5, scope: !41)
!78 = !DILocation(line: 43, column: 3, scope: !41)
!79 = !DILabel(scope: !7, name: "goodB2G_label_", file: !1, line: 44)
!80 = !DILocation(line: 44, column: 3, scope: !7)
!81 = !DILocation(line: 49, column: 1, scope: !7)
