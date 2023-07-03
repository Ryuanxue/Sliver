; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22a.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badGlobal = dso_local global i32 0, align 4, !dbg !0
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgets() failed.\00", align 1
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Global = dso_local global i32 0, align 4, !dbg !8
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global = dso_local global i32 0, align 4, !dbg !11
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal = dso_local global i32 0, align 4, !dbg !13

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_bad() #0 !dbg !19 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 -1, i32* %data, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !25, metadata !DIExpression()), !dbg !31
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !31
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !31
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !32
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !34
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !35
  %cmp = icmp ne i8* %call, null, !dbg !36
  br i1 %cmp, label %if.then, label %if.else, !dbg !37

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !38
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !40
  store i32 %call2, i32* %data, align 4, !dbg !41
  br label %if.end, !dbg !42

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !43
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badGlobal, align 4, !dbg !45
  %2 = load i32, i32* %data, align 4, !dbg !46
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badSink(i32 %2), !dbg !47
  ret void, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #4

declare dso_local void @printLine(i8*) #3

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badSink(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G1() #0 !dbg !49 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !50, metadata !DIExpression()), !dbg !51
  store i32 -1, i32* %data, align 4, !dbg !52
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !53, metadata !DIExpression()), !dbg !55
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !55
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !55
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !56
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !58
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !59
  %cmp = icmp ne i8* %call, null, !dbg !60
  br i1 %cmp, label %if.then, label %if.else, !dbg !61

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !62
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !64
  store i32 %call2, i32* %data, align 4, !dbg !65
  br label %if.end, !dbg !66

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !67
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Global, align 4, !dbg !69
  %2 = load i32, i32* %data, align 4, !dbg !70
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink(i32 %2), !dbg !71
  ret void, !dbg !72
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Sink(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G2() #0 !dbg !73 {
entry:
  %data = alloca i32, align 4
  %inputBuffer = alloca [14 x i8], align 1
  call void @llvm.dbg.declare(metadata i32* %data, metadata !74, metadata !DIExpression()), !dbg !75
  store i32 -1, i32* %data, align 4, !dbg !76
  call void @llvm.dbg.declare(metadata [14 x i8]* %inputBuffer, metadata !77, metadata !DIExpression()), !dbg !79
  %0 = bitcast [14 x i8]* %inputBuffer to i8*, !dbg !79
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 14, i1 false), !dbg !79
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !80
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !82
  %call = call i8* @fgets(i8* %arraydecay, i32 14, %struct._IO_FILE* %1), !dbg !83
  %cmp = icmp ne i8* %call, null, !dbg !84
  br i1 %cmp, label %if.then, label %if.else, !dbg !85

if.then:                                          ; preds = %entry
  %arraydecay1 = getelementptr inbounds [14 x i8], [14 x i8]* %inputBuffer, i64 0, i64 0, !dbg !86
  %call2 = call i32 @atoi(i8* %arraydecay1) #5, !dbg !88
  store i32 %call2, i32* %data, align 4, !dbg !89
  br label %if.end, !dbg !90

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0)), !dbg !91
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global, align 4, !dbg !93
  %2 = load i32, i32* %data, align 4, !dbg !94
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Sink(i32 %2), !dbg !95
  ret void, !dbg !96
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Sink(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !97 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !98, metadata !DIExpression()), !dbg !99
  store i32 -1, i32* %data, align 4, !dbg !100
  store i32 7, i32* %data, align 4, !dbg !101
  store i32 1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal, align 4, !dbg !102
  %0 = load i32, i32* %data, align 4, !dbg !103
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink(i32 %0), !dbg !104
  ret void, !dbg !105
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BSink(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_good() #0 !dbg !106 {
entry:
  call void @goodB2G1(), !dbg !107
  call void @goodB2G2(), !dbg !108
  call void @goodG2B(), !dbg !109
  ret void, !dbg !110
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_badGlobal", scope: !2, file: !3, line: 26, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_583/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !11, !13}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G1Global", scope: !2, file: !3, line: 56, type: !10, isLocal: false, isDefinition: true)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodB2G2Global", scope: !2, file: !3, line: 57, type: !10, isLocal: false, isDefinition: true)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_goodG2BGlobal", scope: !2, file: !3, line: 58, type: !10, isLocal: false, isDefinition: true)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 12.0.0"}
!19 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_bad", scope: !3, file: !3, line: 29, type: !20, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !DILocalVariable(name: "data", scope: !19, file: !3, line: 31, type: !10)
!23 = !DILocation(line: 31, column: 9, scope: !19)
!24 = !DILocation(line: 33, column: 10, scope: !19)
!25 = !DILocalVariable(name: "inputBuffer", scope: !26, file: !3, line: 35, type: !27)
!26 = distinct !DILexicalBlock(scope: !19, file: !3, line: 34, column: 5)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 112, elements: !29)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{!30}
!30 = !DISubrange(count: 14)
!31 = !DILocation(line: 35, column: 14, scope: !26)
!32 = !DILocation(line: 37, column: 19, scope: !33)
!33 = distinct !DILexicalBlock(scope: !26, file: !3, line: 37, column: 13)
!34 = !DILocation(line: 37, column: 49, scope: !33)
!35 = !DILocation(line: 37, column: 13, scope: !33)
!36 = !DILocation(line: 37, column: 56, scope: !33)
!37 = !DILocation(line: 37, column: 13, scope: !26)
!38 = !DILocation(line: 40, column: 25, scope: !39)
!39 = distinct !DILexicalBlock(scope: !33, file: !3, line: 38, column: 9)
!40 = !DILocation(line: 40, column: 20, scope: !39)
!41 = !DILocation(line: 40, column: 18, scope: !39)
!42 = !DILocation(line: 41, column: 9, scope: !39)
!43 = !DILocation(line: 44, column: 13, scope: !44)
!44 = distinct !DILexicalBlock(scope: !33, file: !3, line: 43, column: 9)
!45 = !DILocation(line: 47, column: 67, scope: !19)
!46 = !DILocation(line: 48, column: 65, scope: !19)
!47 = !DILocation(line: 48, column: 5, scope: !19)
!48 = !DILocation(line: 49, column: 1, scope: !19)
!49 = distinct !DISubprogram(name: "goodB2G1", scope: !3, file: !3, line: 62, type: !20, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!50 = !DILocalVariable(name: "data", scope: !49, file: !3, line: 64, type: !10)
!51 = !DILocation(line: 64, column: 9, scope: !49)
!52 = !DILocation(line: 66, column: 10, scope: !49)
!53 = !DILocalVariable(name: "inputBuffer", scope: !54, file: !3, line: 68, type: !27)
!54 = distinct !DILexicalBlock(scope: !49, file: !3, line: 67, column: 5)
!55 = !DILocation(line: 68, column: 14, scope: !54)
!56 = !DILocation(line: 70, column: 19, scope: !57)
!57 = distinct !DILexicalBlock(scope: !54, file: !3, line: 70, column: 13)
!58 = !DILocation(line: 70, column: 49, scope: !57)
!59 = !DILocation(line: 70, column: 13, scope: !57)
!60 = !DILocation(line: 70, column: 56, scope: !57)
!61 = !DILocation(line: 70, column: 13, scope: !54)
!62 = !DILocation(line: 73, column: 25, scope: !63)
!63 = distinct !DILexicalBlock(scope: !57, file: !3, line: 71, column: 9)
!64 = !DILocation(line: 73, column: 20, scope: !63)
!65 = !DILocation(line: 73, column: 18, scope: !63)
!66 = !DILocation(line: 74, column: 9, scope: !63)
!67 = !DILocation(line: 77, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !57, file: !3, line: 76, column: 9)
!69 = !DILocation(line: 80, column: 72, scope: !49)
!70 = !DILocation(line: 81, column: 70, scope: !49)
!71 = !DILocation(line: 81, column: 5, scope: !49)
!72 = !DILocation(line: 82, column: 1, scope: !49)
!73 = distinct !DISubprogram(name: "goodB2G2", scope: !3, file: !3, line: 86, type: !20, scopeLine: 87, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!74 = !DILocalVariable(name: "data", scope: !73, file: !3, line: 88, type: !10)
!75 = !DILocation(line: 88, column: 9, scope: !73)
!76 = !DILocation(line: 90, column: 10, scope: !73)
!77 = !DILocalVariable(name: "inputBuffer", scope: !78, file: !3, line: 92, type: !27)
!78 = distinct !DILexicalBlock(scope: !73, file: !3, line: 91, column: 5)
!79 = !DILocation(line: 92, column: 14, scope: !78)
!80 = !DILocation(line: 94, column: 19, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !3, line: 94, column: 13)
!82 = !DILocation(line: 94, column: 49, scope: !81)
!83 = !DILocation(line: 94, column: 13, scope: !81)
!84 = !DILocation(line: 94, column: 56, scope: !81)
!85 = !DILocation(line: 94, column: 13, scope: !78)
!86 = !DILocation(line: 97, column: 25, scope: !87)
!87 = distinct !DILexicalBlock(scope: !81, file: !3, line: 95, column: 9)
!88 = !DILocation(line: 97, column: 20, scope: !87)
!89 = !DILocation(line: 97, column: 18, scope: !87)
!90 = !DILocation(line: 98, column: 9, scope: !87)
!91 = !DILocation(line: 101, column: 13, scope: !92)
!92 = distinct !DILexicalBlock(scope: !81, file: !3, line: 100, column: 9)
!93 = !DILocation(line: 104, column: 72, scope: !73)
!94 = !DILocation(line: 105, column: 70, scope: !73)
!95 = !DILocation(line: 105, column: 5, scope: !73)
!96 = !DILocation(line: 106, column: 1, scope: !73)
!97 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 110, type: !20, scopeLine: 111, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!98 = !DILocalVariable(name: "data", scope: !97, file: !3, line: 112, type: !10)
!99 = !DILocation(line: 112, column: 9, scope: !97)
!100 = !DILocation(line: 114, column: 10, scope: !97)
!101 = !DILocation(line: 117, column: 10, scope: !97)
!102 = !DILocation(line: 118, column: 71, scope: !97)
!103 = !DILocation(line: 119, column: 69, scope: !97)
!104 = !DILocation(line: 119, column: 5, scope: !97)
!105 = !DILocation(line: 120, column: 1, scope: !97)
!106 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_22_good", scope: !3, file: !3, line: 122, type: !20, scopeLine: 123, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!107 = !DILocation(line: 124, column: 5, scope: !106)
!108 = !DILocation(line: 125, column: 5, scope: !106)
!109 = !DILocation(line: 126, column: 5, scope: !106)
!110 = !DILocation(line: 127, column: 1, scope: !106)
