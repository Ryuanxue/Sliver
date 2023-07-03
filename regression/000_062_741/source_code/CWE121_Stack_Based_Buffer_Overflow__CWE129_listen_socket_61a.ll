; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61a.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad() #0 !dbg !7 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !10, metadata !DIExpression()), !dbg !12
  store i32 -1, i32* %data, align 4, !dbg !13
  %0 = load i32, i32* %data, align 4, !dbg !14
  %call = call i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource(i32 %0), !dbg !15
  store i32 %call, i32* %data, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !20, metadata !DIExpression()), !dbg !24
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !24
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !24
  %2 = load i32, i32* %data, align 4, !dbg !25
  %cmp = icmp sge i32 %2, 0, !dbg !27
  br i1 %cmp, label %if.then, label %if.else, !dbg !28

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !29
  %idxprom = sext i32 %3 to i64, !dbg !31
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !31
  store i32 1, i32* %arrayidx, align 4, !dbg !32
  store i32 0, i32* %i, align 4, !dbg !33
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !36
  %cmp1 = icmp slt i32 %4, 10, !dbg !38
  br i1 %cmp1, label %for.body, label %for.end, !dbg !39

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !40
  %idxprom2 = sext i32 %5 to i64, !dbg !42
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !42
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !42
  call void @printIntLine(i32 %6), !dbg !43
  br label %for.inc, !dbg !44

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !45
  %inc = add nsw i32 %7, 1, !dbg !45
  store i32 %inc, i32* %i, align 4, !dbg !45
  br label %for.cond, !dbg !46, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !50

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !51
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_badSource(i32) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !54 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 -1, i32* %data, align 4, !dbg !57
  %0 = load i32, i32* %data, align 4, !dbg !58
  %call = call i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodG2BSource(i32 %0), !dbg !59
  store i32 %call, i32* %data, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %i, metadata !61, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !64, metadata !DIExpression()), !dbg !65
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !65
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !65
  %2 = load i32, i32* %data, align 4, !dbg !66
  %cmp = icmp sge i32 %2, 0, !dbg !68
  br i1 %cmp, label %if.then, label %if.else, !dbg !69

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !70
  %idxprom = sext i32 %3 to i64, !dbg !72
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !72
  store i32 1, i32* %arrayidx, align 4, !dbg !73
  store i32 0, i32* %i, align 4, !dbg !74
  br label %for.cond, !dbg !76

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !77
  %cmp1 = icmp slt i32 %4, 10, !dbg !79
  br i1 %cmp1, label %for.body, label %for.end, !dbg !80

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !81
  %idxprom2 = sext i32 %5 to i64, !dbg !83
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !83
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !83
  call void @printIntLine(i32 %6), !dbg !84
  br label %for.inc, !dbg !85

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !86
  %inc = add nsw i32 %7, 1, !dbg !86
  store i32 %inc, i32* %i, align 4, !dbg !86
  br label %for.cond, !dbg !87, !llvm.loop !88

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !90

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !91
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !93
}

declare dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodG2BSource(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !94 {
entry:
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !95, metadata !DIExpression()), !dbg !96
  store i32 -1, i32* %data, align 4, !dbg !97
  %0 = load i32, i32* %data, align 4, !dbg !98
  %call = call i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource(i32 %0), !dbg !99
  store i32 %call, i32* %data, align 4, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %i, metadata !101, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !104, metadata !DIExpression()), !dbg !105
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !105
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !105
  %2 = load i32, i32* %data, align 4, !dbg !106
  %cmp = icmp sge i32 %2, 0, !dbg !108
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !109

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !110
  %cmp1 = icmp slt i32 %3, 10, !dbg !111
  br i1 %cmp1, label %if.then, label %if.else, !dbg !112

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !113
  %idxprom = sext i32 %4 to i64, !dbg !115
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !115
  store i32 1, i32* %arrayidx, align 4, !dbg !116
  store i32 0, i32* %i, align 4, !dbg !117
  br label %for.cond, !dbg !119

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !120
  %cmp2 = icmp slt i32 %5, 10, !dbg !122
  br i1 %cmp2, label %for.body, label %for.end, !dbg !123

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !124
  %idxprom3 = sext i32 %6 to i64, !dbg !126
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !126
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !126
  call void @printIntLine(i32 %7), !dbg !127
  br label %for.inc, !dbg !128

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !129
  %inc = add nsw i32 %8, 1, !dbg !129
  store i32 %inc, i32* %i, align 4, !dbg !129
  br label %for.cond, !dbg !130, !llvm.loop !131

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !133

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !134
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !136
}

declare dso_local i32 @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61b_goodB2GSource(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_good() #0 !dbg !137 {
entry:
  call void @goodG2B(), !dbg !138
  call void @goodB2G(), !dbg !139
  ret void, !dbg !140
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_741/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_bad", scope: !1, file: !1, line: 47, type: !8, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 49, type: !11)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocation(line: 49, column: 9, scope: !7)
!13 = !DILocation(line: 51, column: 10, scope: !7)
!14 = !DILocation(line: 52, column: 83, scope: !7)
!15 = !DILocation(line: 52, column: 12, scope: !7)
!16 = !DILocation(line: 52, column: 10, scope: !7)
!17 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 54, type: !11)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 53, column: 5)
!19 = !DILocation(line: 54, column: 13, scope: !18)
!20 = !DILocalVariable(name: "buffer", scope: !18, file: !1, line: 55, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 320, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 10)
!24 = !DILocation(line: 55, column: 13, scope: !18)
!25 = !DILocation(line: 58, column: 13, scope: !26)
!26 = distinct !DILexicalBlock(scope: !18, file: !1, line: 58, column: 13)
!27 = !DILocation(line: 58, column: 18, scope: !26)
!28 = !DILocation(line: 58, column: 13, scope: !18)
!29 = !DILocation(line: 60, column: 20, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 59, column: 9)
!31 = !DILocation(line: 60, column: 13, scope: !30)
!32 = !DILocation(line: 60, column: 26, scope: !30)
!33 = !DILocation(line: 62, column: 19, scope: !34)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 62, column: 13)
!35 = !DILocation(line: 62, column: 17, scope: !34)
!36 = !DILocation(line: 62, column: 24, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 62, column: 13)
!38 = !DILocation(line: 62, column: 26, scope: !37)
!39 = !DILocation(line: 62, column: 13, scope: !34)
!40 = !DILocation(line: 64, column: 37, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 63, column: 13)
!42 = !DILocation(line: 64, column: 30, scope: !41)
!43 = !DILocation(line: 64, column: 17, scope: !41)
!44 = !DILocation(line: 65, column: 13, scope: !41)
!45 = !DILocation(line: 62, column: 33, scope: !37)
!46 = !DILocation(line: 62, column: 13, scope: !37)
!47 = distinct !{!47, !39, !48, !49}
!48 = !DILocation(line: 65, column: 13, scope: !34)
!49 = !{!"llvm.loop.mustprogress"}
!50 = !DILocation(line: 66, column: 9, scope: !30)
!51 = !DILocation(line: 69, column: 13, scope: !52)
!52 = distinct !DILexicalBlock(scope: !26, file: !1, line: 68, column: 9)
!53 = !DILocation(line: 72, column: 1, scope: !7)
!54 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 80, type: !8, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!55 = !DILocalVariable(name: "data", scope: !54, file: !1, line: 82, type: !11)
!56 = !DILocation(line: 82, column: 9, scope: !54)
!57 = !DILocation(line: 84, column: 10, scope: !54)
!58 = !DILocation(line: 85, column: 87, scope: !54)
!59 = !DILocation(line: 85, column: 12, scope: !54)
!60 = !DILocation(line: 85, column: 10, scope: !54)
!61 = !DILocalVariable(name: "i", scope: !62, file: !1, line: 87, type: !11)
!62 = distinct !DILexicalBlock(scope: !54, file: !1, line: 86, column: 5)
!63 = !DILocation(line: 87, column: 13, scope: !62)
!64 = !DILocalVariable(name: "buffer", scope: !62, file: !1, line: 88, type: !21)
!65 = !DILocation(line: 88, column: 13, scope: !62)
!66 = !DILocation(line: 91, column: 13, scope: !67)
!67 = distinct !DILexicalBlock(scope: !62, file: !1, line: 91, column: 13)
!68 = !DILocation(line: 91, column: 18, scope: !67)
!69 = !DILocation(line: 91, column: 13, scope: !62)
!70 = !DILocation(line: 93, column: 20, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 92, column: 9)
!72 = !DILocation(line: 93, column: 13, scope: !71)
!73 = !DILocation(line: 93, column: 26, scope: !71)
!74 = !DILocation(line: 95, column: 19, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 95, column: 13)
!76 = !DILocation(line: 95, column: 17, scope: !75)
!77 = !DILocation(line: 95, column: 24, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !1, line: 95, column: 13)
!79 = !DILocation(line: 95, column: 26, scope: !78)
!80 = !DILocation(line: 95, column: 13, scope: !75)
!81 = !DILocation(line: 97, column: 37, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !1, line: 96, column: 13)
!83 = !DILocation(line: 97, column: 30, scope: !82)
!84 = !DILocation(line: 97, column: 17, scope: !82)
!85 = !DILocation(line: 98, column: 13, scope: !82)
!86 = !DILocation(line: 95, column: 33, scope: !78)
!87 = !DILocation(line: 95, column: 13, scope: !78)
!88 = distinct !{!88, !80, !89, !49}
!89 = !DILocation(line: 98, column: 13, scope: !75)
!90 = !DILocation(line: 99, column: 9, scope: !71)
!91 = !DILocation(line: 102, column: 13, scope: !92)
!92 = distinct !DILexicalBlock(scope: !67, file: !1, line: 101, column: 9)
!93 = !DILocation(line: 105, column: 1, scope: !54)
!94 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 109, type: !8, scopeLine: 110, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!95 = !DILocalVariable(name: "data", scope: !94, file: !1, line: 111, type: !11)
!96 = !DILocation(line: 111, column: 9, scope: !94)
!97 = !DILocation(line: 113, column: 10, scope: !94)
!98 = !DILocation(line: 114, column: 87, scope: !94)
!99 = !DILocation(line: 114, column: 12, scope: !94)
!100 = !DILocation(line: 114, column: 10, scope: !94)
!101 = !DILocalVariable(name: "i", scope: !102, file: !1, line: 116, type: !11)
!102 = distinct !DILexicalBlock(scope: !94, file: !1, line: 115, column: 5)
!103 = !DILocation(line: 116, column: 13, scope: !102)
!104 = !DILocalVariable(name: "buffer", scope: !102, file: !1, line: 117, type: !21)
!105 = !DILocation(line: 117, column: 13, scope: !102)
!106 = !DILocation(line: 119, column: 13, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 119, column: 13)
!108 = !DILocation(line: 119, column: 18, scope: !107)
!109 = !DILocation(line: 119, column: 23, scope: !107)
!110 = !DILocation(line: 119, column: 26, scope: !107)
!111 = !DILocation(line: 119, column: 31, scope: !107)
!112 = !DILocation(line: 119, column: 13, scope: !102)
!113 = !DILocation(line: 121, column: 20, scope: !114)
!114 = distinct !DILexicalBlock(scope: !107, file: !1, line: 120, column: 9)
!115 = !DILocation(line: 121, column: 13, scope: !114)
!116 = !DILocation(line: 121, column: 26, scope: !114)
!117 = !DILocation(line: 123, column: 19, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 123, column: 13)
!119 = !DILocation(line: 123, column: 17, scope: !118)
!120 = !DILocation(line: 123, column: 24, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 123, column: 13)
!122 = !DILocation(line: 123, column: 26, scope: !121)
!123 = !DILocation(line: 123, column: 13, scope: !118)
!124 = !DILocation(line: 125, column: 37, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 124, column: 13)
!126 = !DILocation(line: 125, column: 30, scope: !125)
!127 = !DILocation(line: 125, column: 17, scope: !125)
!128 = !DILocation(line: 126, column: 13, scope: !125)
!129 = !DILocation(line: 123, column: 33, scope: !121)
!130 = !DILocation(line: 123, column: 13, scope: !121)
!131 = distinct !{!131, !123, !132, !49}
!132 = !DILocation(line: 126, column: 13, scope: !118)
!133 = !DILocation(line: 127, column: 9, scope: !114)
!134 = !DILocation(line: 130, column: 13, scope: !135)
!135 = distinct !DILexicalBlock(scope: !107, file: !1, line: 129, column: 9)
!136 = !DILocation(line: 133, column: 1, scope: !94)
!137 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_61_good", scope: !1, file: !1, line: 135, type: !8, scopeLine: 136, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!138 = !DILocation(line: 137, column: 5, scope: !137)
!139 = !DILocation(line: 138, column: 5, scope: !137)
!140 = !DILocation(line: 139, column: 1, scope: !137)
