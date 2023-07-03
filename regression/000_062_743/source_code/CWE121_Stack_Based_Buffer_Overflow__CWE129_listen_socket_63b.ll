; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink(i32* %dataPtr) #0 !dbg !7 {
entry:
  %dataPtr.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataPtr, i32** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataPtr.addr, metadata !12, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata i32* %data, metadata !14, metadata !DIExpression()), !dbg !15
  %0 = load i32*, i32** %dataPtr.addr, align 8, !dbg !16
  %1 = load i32, i32* %0, align 4, !dbg !17
  store i32 %1, i32* %data, align 4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !21, metadata !DIExpression()), !dbg !25
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !25
  %3 = load i32, i32* %data, align 4, !dbg !26
  %cmp = icmp sge i32 %3, 0, !dbg !28
  br i1 %cmp, label %if.then, label %if.else, !dbg !29

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !30
  %idxprom = sext i32 %4 to i64, !dbg !32
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !32
  store i32 1, i32* %arrayidx, align 4, !dbg !33
  store i32 0, i32* %i, align 4, !dbg !34
  br label %for.cond, !dbg !36

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !37
  %cmp1 = icmp slt i32 %5, 10, !dbg !39
  br i1 %cmp1, label %for.body, label %for.end, !dbg !40

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !41
  %idxprom2 = sext i32 %6 to i64, !dbg !43
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !43
  %7 = load i32, i32* %arrayidx3, align 4, !dbg !43
  call void @printIntLine(i32 %7), !dbg !44
  br label %for.inc, !dbg !45

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !46
  %inc = add nsw i32 %8, 1, !dbg !46
  store i32 %inc, i32* %i, align 4, !dbg !46
  br label %for.cond, !dbg !47, !llvm.loop !48

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !51

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !52
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !54
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_goodG2BSink(i32* %dataPtr) #0 !dbg !55 {
entry:
  %dataPtr.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataPtr, i32** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataPtr.addr, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %data, metadata !58, metadata !DIExpression()), !dbg !59
  %0 = load i32*, i32** %dataPtr.addr, align 8, !dbg !60
  %1 = load i32, i32* %0, align 4, !dbg !61
  store i32 %1, i32* %data, align 4, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %i, metadata !62, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !65, metadata !DIExpression()), !dbg !66
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !66
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !66
  %3 = load i32, i32* %data, align 4, !dbg !67
  %cmp = icmp sge i32 %3, 0, !dbg !69
  br i1 %cmp, label %if.then, label %if.else, !dbg !70

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !71
  %idxprom = sext i32 %4 to i64, !dbg !73
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !73
  store i32 1, i32* %arrayidx, align 4, !dbg !74
  store i32 0, i32* %i, align 4, !dbg !75
  br label %for.cond, !dbg !77

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !78
  %cmp1 = icmp slt i32 %5, 10, !dbg !80
  br i1 %cmp1, label %for.body, label %for.end, !dbg !81

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !82
  %idxprom2 = sext i32 %6 to i64, !dbg !84
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !84
  %7 = load i32, i32* %arrayidx3, align 4, !dbg !84
  call void @printIntLine(i32 %7), !dbg !85
  br label %for.inc, !dbg !86

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !87
  %inc = add nsw i32 %8, 1, !dbg !87
  store i32 %inc, i32* %i, align 4, !dbg !87
  br label %for.cond, !dbg !88, !llvm.loop !89

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !91

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !92
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !94
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_goodB2GSink(i32* %dataPtr) #0 !dbg !95 {
entry:
  %dataPtr.addr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i32* %dataPtr, i32** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %dataPtr.addr, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata i32* %data, metadata !98, metadata !DIExpression()), !dbg !99
  %0 = load i32*, i32** %dataPtr.addr, align 8, !dbg !100
  %1 = load i32, i32* %0, align 4, !dbg !101
  store i32 %1, i32* %data, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %i, metadata !102, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !105, metadata !DIExpression()), !dbg !106
  %2 = bitcast [10 x i32]* %buffer to i8*, !dbg !106
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 40, i1 false), !dbg !106
  %3 = load i32, i32* %data, align 4, !dbg !107
  %cmp = icmp sge i32 %3, 0, !dbg !109
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !110

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %data, align 4, !dbg !111
  %cmp1 = icmp slt i32 %4, 10, !dbg !112
  br i1 %cmp1, label %if.then, label %if.else, !dbg !113

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %data, align 4, !dbg !114
  %idxprom = sext i32 %5 to i64, !dbg !116
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !116
  store i32 1, i32* %arrayidx, align 4, !dbg !117
  store i32 0, i32* %i, align 4, !dbg !118
  br label %for.cond, !dbg !120

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load i32, i32* %i, align 4, !dbg !121
  %cmp2 = icmp slt i32 %6, 10, !dbg !123
  br i1 %cmp2, label %for.body, label %for.end, !dbg !124

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !125
  %idxprom3 = sext i32 %7 to i64, !dbg !127
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !127
  %8 = load i32, i32* %arrayidx4, align 4, !dbg !127
  call void @printIntLine(i32 %8), !dbg !128
  br label %for.inc, !dbg !129

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !130
  %inc = add nsw i32 %9, 1, !dbg !130
  store i32 %inc, i32* %i, align 4, !dbg !130
  br label %for.cond, !dbg !131, !llvm.loop !132

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !134

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !135
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !137
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_743/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_badSink", scope: !1, file: !1, line: 44, type: !8, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !7, file: !1, line: 44, type: !10)
!13 = !DILocation(line: 44, column: 81, scope: !7)
!14 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 46, type: !11)
!15 = !DILocation(line: 46, column: 9, scope: !7)
!16 = !DILocation(line: 46, column: 17, scope: !7)
!17 = !DILocation(line: 46, column: 16, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 48, type: !11)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 47, column: 5)
!20 = !DILocation(line: 48, column: 13, scope: !19)
!21 = !DILocalVariable(name: "buffer", scope: !19, file: !1, line: 49, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 320, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 10)
!25 = !DILocation(line: 49, column: 13, scope: !19)
!26 = !DILocation(line: 52, column: 13, scope: !27)
!27 = distinct !DILexicalBlock(scope: !19, file: !1, line: 52, column: 13)
!28 = !DILocation(line: 52, column: 18, scope: !27)
!29 = !DILocation(line: 52, column: 13, scope: !19)
!30 = !DILocation(line: 54, column: 20, scope: !31)
!31 = distinct !DILexicalBlock(scope: !27, file: !1, line: 53, column: 9)
!32 = !DILocation(line: 54, column: 13, scope: !31)
!33 = !DILocation(line: 54, column: 26, scope: !31)
!34 = !DILocation(line: 56, column: 19, scope: !35)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 56, column: 13)
!36 = !DILocation(line: 56, column: 17, scope: !35)
!37 = !DILocation(line: 56, column: 24, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 56, column: 13)
!39 = !DILocation(line: 56, column: 26, scope: !38)
!40 = !DILocation(line: 56, column: 13, scope: !35)
!41 = !DILocation(line: 58, column: 37, scope: !42)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 57, column: 13)
!43 = !DILocation(line: 58, column: 30, scope: !42)
!44 = !DILocation(line: 58, column: 17, scope: !42)
!45 = !DILocation(line: 59, column: 13, scope: !42)
!46 = !DILocation(line: 56, column: 33, scope: !38)
!47 = !DILocation(line: 56, column: 13, scope: !38)
!48 = distinct !{!48, !40, !49, !50}
!49 = !DILocation(line: 59, column: 13, scope: !35)
!50 = !{!"llvm.loop.mustprogress"}
!51 = !DILocation(line: 60, column: 9, scope: !31)
!52 = !DILocation(line: 63, column: 13, scope: !53)
!53 = distinct !DILexicalBlock(scope: !27, file: !1, line: 62, column: 9)
!54 = !DILocation(line: 66, column: 1, scope: !7)
!55 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_goodG2BSink", scope: !1, file: !1, line: 73, type: !8, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!56 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !55, file: !1, line: 73, type: !10)
!57 = !DILocation(line: 73, column: 85, scope: !55)
!58 = !DILocalVariable(name: "data", scope: !55, file: !1, line: 75, type: !11)
!59 = !DILocation(line: 75, column: 9, scope: !55)
!60 = !DILocation(line: 75, column: 17, scope: !55)
!61 = !DILocation(line: 75, column: 16, scope: !55)
!62 = !DILocalVariable(name: "i", scope: !63, file: !1, line: 77, type: !11)
!63 = distinct !DILexicalBlock(scope: !55, file: !1, line: 76, column: 5)
!64 = !DILocation(line: 77, column: 13, scope: !63)
!65 = !DILocalVariable(name: "buffer", scope: !63, file: !1, line: 78, type: !22)
!66 = !DILocation(line: 78, column: 13, scope: !63)
!67 = !DILocation(line: 81, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !63, file: !1, line: 81, column: 13)
!69 = !DILocation(line: 81, column: 18, scope: !68)
!70 = !DILocation(line: 81, column: 13, scope: !63)
!71 = !DILocation(line: 83, column: 20, scope: !72)
!72 = distinct !DILexicalBlock(scope: !68, file: !1, line: 82, column: 9)
!73 = !DILocation(line: 83, column: 13, scope: !72)
!74 = !DILocation(line: 83, column: 26, scope: !72)
!75 = !DILocation(line: 85, column: 19, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !1, line: 85, column: 13)
!77 = !DILocation(line: 85, column: 17, scope: !76)
!78 = !DILocation(line: 85, column: 24, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !1, line: 85, column: 13)
!80 = !DILocation(line: 85, column: 26, scope: !79)
!81 = !DILocation(line: 85, column: 13, scope: !76)
!82 = !DILocation(line: 87, column: 37, scope: !83)
!83 = distinct !DILexicalBlock(scope: !79, file: !1, line: 86, column: 13)
!84 = !DILocation(line: 87, column: 30, scope: !83)
!85 = !DILocation(line: 87, column: 17, scope: !83)
!86 = !DILocation(line: 88, column: 13, scope: !83)
!87 = !DILocation(line: 85, column: 33, scope: !79)
!88 = !DILocation(line: 85, column: 13, scope: !79)
!89 = distinct !{!89, !81, !90, !50}
!90 = !DILocation(line: 88, column: 13, scope: !76)
!91 = !DILocation(line: 89, column: 9, scope: !72)
!92 = !DILocation(line: 92, column: 13, scope: !93)
!93 = distinct !DILexicalBlock(scope: !68, file: !1, line: 91, column: 9)
!94 = !DILocation(line: 95, column: 1, scope: !55)
!95 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_63b_goodB2GSink", scope: !1, file: !1, line: 98, type: !8, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!96 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !95, file: !1, line: 98, type: !10)
!97 = !DILocation(line: 98, column: 85, scope: !95)
!98 = !DILocalVariable(name: "data", scope: !95, file: !1, line: 100, type: !11)
!99 = !DILocation(line: 100, column: 9, scope: !95)
!100 = !DILocation(line: 100, column: 17, scope: !95)
!101 = !DILocation(line: 100, column: 16, scope: !95)
!102 = !DILocalVariable(name: "i", scope: !103, file: !1, line: 102, type: !11)
!103 = distinct !DILexicalBlock(scope: !95, file: !1, line: 101, column: 5)
!104 = !DILocation(line: 102, column: 13, scope: !103)
!105 = !DILocalVariable(name: "buffer", scope: !103, file: !1, line: 103, type: !22)
!106 = !DILocation(line: 103, column: 13, scope: !103)
!107 = !DILocation(line: 105, column: 13, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 105, column: 13)
!109 = !DILocation(line: 105, column: 18, scope: !108)
!110 = !DILocation(line: 105, column: 23, scope: !108)
!111 = !DILocation(line: 105, column: 26, scope: !108)
!112 = !DILocation(line: 105, column: 31, scope: !108)
!113 = !DILocation(line: 105, column: 13, scope: !103)
!114 = !DILocation(line: 107, column: 20, scope: !115)
!115 = distinct !DILexicalBlock(scope: !108, file: !1, line: 106, column: 9)
!116 = !DILocation(line: 107, column: 13, scope: !115)
!117 = !DILocation(line: 107, column: 26, scope: !115)
!118 = !DILocation(line: 109, column: 19, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 109, column: 13)
!120 = !DILocation(line: 109, column: 17, scope: !119)
!121 = !DILocation(line: 109, column: 24, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 109, column: 13)
!123 = !DILocation(line: 109, column: 26, scope: !122)
!124 = !DILocation(line: 109, column: 13, scope: !119)
!125 = !DILocation(line: 111, column: 37, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !1, line: 110, column: 13)
!127 = !DILocation(line: 111, column: 30, scope: !126)
!128 = !DILocation(line: 111, column: 17, scope: !126)
!129 = !DILocation(line: 112, column: 13, scope: !126)
!130 = !DILocation(line: 109, column: 33, scope: !122)
!131 = !DILocation(line: 109, column: 13, scope: !122)
!132 = distinct !{!132, !124, !133, !50}
!133 = !DILocation(line: 112, column: 13, scope: !119)
!134 = !DILocation(line: 113, column: 9, scope: !115)
!135 = !DILocation(line: 116, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !108, file: !1, line: 115, column: 9)
!137 = !DILocation(line: 119, column: 1, scope: !95)
