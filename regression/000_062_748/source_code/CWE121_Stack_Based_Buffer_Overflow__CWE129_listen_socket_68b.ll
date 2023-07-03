; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_badData = external dso_local global i32, align 4
@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodG2BData = external dso_local global i32, align 4
@CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodB2GData = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_badSink() #0 !dbg !7 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !10, metadata !DIExpression()), !dbg !12
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_badData, align 4, !dbg !13
  store i32 %0, i32* %data, align 4, !dbg !12
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !17, metadata !DIExpression()), !dbg !21
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !21
  %2 = load i32, i32* %data, align 4, !dbg !22
  %cmp = icmp sge i32 %2, 0, !dbg !24
  br i1 %cmp, label %if.then, label %if.else, !dbg !25

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !26
  %idxprom = sext i32 %3 to i64, !dbg !28
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !28
  store i32 1, i32* %arrayidx, align 4, !dbg !29
  store i32 0, i32* %i, align 4, !dbg !30
  br label %for.cond, !dbg !32

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !33
  %cmp1 = icmp slt i32 %4, 10, !dbg !35
  br i1 %cmp1, label %for.body, label %for.end, !dbg !36

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !37
  %idxprom2 = sext i32 %5 to i64, !dbg !39
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !39
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !39
  call void @printIntLine(i32 %6), !dbg !40
  br label %for.inc, !dbg !41

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !42
  %inc = add nsw i32 %7, 1, !dbg !42
  store i32 %inc, i32* %i, align 4, !dbg !42
  br label %for.cond, !dbg !43, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !47

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !48
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !50
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_goodG2BSink() #0 !dbg !51 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !52, metadata !DIExpression()), !dbg !53
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodG2BData, align 4, !dbg !54
  store i32 %0, i32* %data, align 4, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %i, metadata !55, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !58, metadata !DIExpression()), !dbg !59
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !59
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !59
  %2 = load i32, i32* %data, align 4, !dbg !60
  %cmp = icmp sge i32 %2, 0, !dbg !62
  br i1 %cmp, label %if.then, label %if.else, !dbg !63

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !64
  %idxprom = sext i32 %3 to i64, !dbg !66
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !66
  store i32 1, i32* %arrayidx, align 4, !dbg !67
  store i32 0, i32* %i, align 4, !dbg !68
  br label %for.cond, !dbg !70

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !71
  %cmp1 = icmp slt i32 %4, 10, !dbg !73
  br i1 %cmp1, label %for.body, label %for.end, !dbg !74

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !75
  %idxprom2 = sext i32 %5 to i64, !dbg !77
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !77
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !77
  call void @printIntLine(i32 %6), !dbg !78
  br label %for.inc, !dbg !79

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !80
  %inc = add nsw i32 %7, 1, !dbg !80
  store i32 %inc, i32* %i, align 4, !dbg !80
  br label %for.cond, !dbg !81, !llvm.loop !82

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !84

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !85
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !87
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_goodB2GSink() #0 !dbg !88 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !89, metadata !DIExpression()), !dbg !90
  %0 = load i32, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68_goodB2GData, align 4, !dbg !91
  store i32 %0, i32* %data, align 4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %i, metadata !92, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !95, metadata !DIExpression()), !dbg !96
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !96
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !96
  %2 = load i32, i32* %data, align 4, !dbg !97
  %cmp = icmp sge i32 %2, 0, !dbg !99
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !100

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !101
  %cmp1 = icmp slt i32 %3, 10, !dbg !102
  br i1 %cmp1, label %if.then, label %if.else, !dbg !103

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !104
  %idxprom = sext i32 %4 to i64, !dbg !106
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !106
  store i32 1, i32* %arrayidx, align 4, !dbg !107
  store i32 0, i32* %i, align 4, !dbg !108
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !111
  %cmp2 = icmp slt i32 %5, 10, !dbg !113
  br i1 %cmp2, label %for.body, label %for.end, !dbg !114

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !115
  %idxprom3 = sext i32 %6 to i64, !dbg !117
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !117
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !117
  call void @printIntLine(i32 %7), !dbg !118
  br label %for.inc, !dbg !119

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !120
  %inc = add nsw i32 %8, 1, !dbg !120
  store i32 %inc, i32* %i, align 4, !dbg !120
  br label %for.cond, !dbg !121, !llvm.loop !122

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !124

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !125
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !127
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_748/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_badSink", scope: !1, file: !1, line: 48, type: !8, scopeLine: 49, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 50, type: !11)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocation(line: 50, column: 9, scope: !7)
!13 = !DILocation(line: 50, column: 16, scope: !7)
!14 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 52, type: !11)
!15 = distinct !DILexicalBlock(scope: !7, file: !1, line: 51, column: 5)
!16 = !DILocation(line: 52, column: 13, scope: !15)
!17 = !DILocalVariable(name: "buffer", scope: !15, file: !1, line: 53, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 320, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 10)
!21 = !DILocation(line: 53, column: 13, scope: !15)
!22 = !DILocation(line: 56, column: 13, scope: !23)
!23 = distinct !DILexicalBlock(scope: !15, file: !1, line: 56, column: 13)
!24 = !DILocation(line: 56, column: 18, scope: !23)
!25 = !DILocation(line: 56, column: 13, scope: !15)
!26 = !DILocation(line: 58, column: 20, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !1, line: 57, column: 9)
!28 = !DILocation(line: 58, column: 13, scope: !27)
!29 = !DILocation(line: 58, column: 26, scope: !27)
!30 = !DILocation(line: 60, column: 19, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !1, line: 60, column: 13)
!32 = !DILocation(line: 60, column: 17, scope: !31)
!33 = !DILocation(line: 60, column: 24, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !1, line: 60, column: 13)
!35 = !DILocation(line: 60, column: 26, scope: !34)
!36 = !DILocation(line: 60, column: 13, scope: !31)
!37 = !DILocation(line: 62, column: 37, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !1, line: 61, column: 13)
!39 = !DILocation(line: 62, column: 30, scope: !38)
!40 = !DILocation(line: 62, column: 17, scope: !38)
!41 = !DILocation(line: 63, column: 13, scope: !38)
!42 = !DILocation(line: 60, column: 33, scope: !34)
!43 = !DILocation(line: 60, column: 13, scope: !34)
!44 = distinct !{!44, !36, !45, !46}
!45 = !DILocation(line: 63, column: 13, scope: !31)
!46 = !{!"llvm.loop.mustprogress"}
!47 = !DILocation(line: 64, column: 9, scope: !27)
!48 = !DILocation(line: 67, column: 13, scope: !49)
!49 = distinct !DILexicalBlock(scope: !23, file: !1, line: 66, column: 9)
!50 = !DILocation(line: 70, column: 1, scope: !7)
!51 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_goodG2BSink", scope: !1, file: !1, line: 77, type: !8, scopeLine: 78, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!52 = !DILocalVariable(name: "data", scope: !51, file: !1, line: 79, type: !11)
!53 = !DILocation(line: 79, column: 9, scope: !51)
!54 = !DILocation(line: 79, column: 16, scope: !51)
!55 = !DILocalVariable(name: "i", scope: !56, file: !1, line: 81, type: !11)
!56 = distinct !DILexicalBlock(scope: !51, file: !1, line: 80, column: 5)
!57 = !DILocation(line: 81, column: 13, scope: !56)
!58 = !DILocalVariable(name: "buffer", scope: !56, file: !1, line: 82, type: !18)
!59 = !DILocation(line: 82, column: 13, scope: !56)
!60 = !DILocation(line: 85, column: 13, scope: !61)
!61 = distinct !DILexicalBlock(scope: !56, file: !1, line: 85, column: 13)
!62 = !DILocation(line: 85, column: 18, scope: !61)
!63 = !DILocation(line: 85, column: 13, scope: !56)
!64 = !DILocation(line: 87, column: 20, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 86, column: 9)
!66 = !DILocation(line: 87, column: 13, scope: !65)
!67 = !DILocation(line: 87, column: 26, scope: !65)
!68 = !DILocation(line: 89, column: 19, scope: !69)
!69 = distinct !DILexicalBlock(scope: !65, file: !1, line: 89, column: 13)
!70 = !DILocation(line: 89, column: 17, scope: !69)
!71 = !DILocation(line: 89, column: 24, scope: !72)
!72 = distinct !DILexicalBlock(scope: !69, file: !1, line: 89, column: 13)
!73 = !DILocation(line: 89, column: 26, scope: !72)
!74 = !DILocation(line: 89, column: 13, scope: !69)
!75 = !DILocation(line: 91, column: 37, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 90, column: 13)
!77 = !DILocation(line: 91, column: 30, scope: !76)
!78 = !DILocation(line: 91, column: 17, scope: !76)
!79 = !DILocation(line: 92, column: 13, scope: !76)
!80 = !DILocation(line: 89, column: 33, scope: !72)
!81 = !DILocation(line: 89, column: 13, scope: !72)
!82 = distinct !{!82, !74, !83, !46}
!83 = !DILocation(line: 92, column: 13, scope: !69)
!84 = !DILocation(line: 93, column: 9, scope: !65)
!85 = !DILocation(line: 96, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !61, file: !1, line: 95, column: 9)
!87 = !DILocation(line: 99, column: 1, scope: !51)
!88 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_68b_goodB2GSink", scope: !1, file: !1, line: 102, type: !8, scopeLine: 103, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!89 = !DILocalVariable(name: "data", scope: !88, file: !1, line: 104, type: !11)
!90 = !DILocation(line: 104, column: 9, scope: !88)
!91 = !DILocation(line: 104, column: 16, scope: !88)
!92 = !DILocalVariable(name: "i", scope: !93, file: !1, line: 106, type: !11)
!93 = distinct !DILexicalBlock(scope: !88, file: !1, line: 105, column: 5)
!94 = !DILocation(line: 106, column: 13, scope: !93)
!95 = !DILocalVariable(name: "buffer", scope: !93, file: !1, line: 107, type: !18)
!96 = !DILocation(line: 107, column: 13, scope: !93)
!97 = !DILocation(line: 109, column: 13, scope: !98)
!98 = distinct !DILexicalBlock(scope: !93, file: !1, line: 109, column: 13)
!99 = !DILocation(line: 109, column: 18, scope: !98)
!100 = !DILocation(line: 109, column: 23, scope: !98)
!101 = !DILocation(line: 109, column: 26, scope: !98)
!102 = !DILocation(line: 109, column: 31, scope: !98)
!103 = !DILocation(line: 109, column: 13, scope: !93)
!104 = !DILocation(line: 111, column: 20, scope: !105)
!105 = distinct !DILexicalBlock(scope: !98, file: !1, line: 110, column: 9)
!106 = !DILocation(line: 111, column: 13, scope: !105)
!107 = !DILocation(line: 111, column: 26, scope: !105)
!108 = !DILocation(line: 113, column: 19, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 113, column: 13)
!110 = !DILocation(line: 113, column: 17, scope: !109)
!111 = !DILocation(line: 113, column: 24, scope: !112)
!112 = distinct !DILexicalBlock(scope: !109, file: !1, line: 113, column: 13)
!113 = !DILocation(line: 113, column: 26, scope: !112)
!114 = !DILocation(line: 113, column: 13, scope: !109)
!115 = !DILocation(line: 115, column: 37, scope: !116)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 114, column: 13)
!117 = !DILocation(line: 115, column: 30, scope: !116)
!118 = !DILocation(line: 115, column: 17, scope: !116)
!119 = !DILocation(line: 116, column: 13, scope: !116)
!120 = !DILocation(line: 113, column: 33, scope: !112)
!121 = !DILocation(line: 113, column: 13, scope: !112)
!122 = distinct !{!122, !114, !123, !46}
!123 = !DILocation(line: 116, column: 13, scope: !109)
!124 = !DILocation(line: 117, column: 9, scope: !105)
!125 = !DILocation(line: 120, column: 13, scope: !126)
!126 = distinct !DILexicalBlock(scope: !98, file: !1, line: 119, column: 9)
!127 = !DILocation(line: 123, column: 1, scope: !88)
