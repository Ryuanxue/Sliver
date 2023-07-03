; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink(i8* %dataVoidPtr) #0 !dbg !10 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !14, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32** %dataPtr, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !18
  %1 = bitcast i8* %0 to i32*, !dbg !19
  store i32* %1, i32** %dataPtr, align 8, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %data, metadata !20, metadata !DIExpression()), !dbg !21
  %2 = load i32*, i32** %dataPtr, align 8, !dbg !22
  %3 = load i32, i32* %2, align 4, !dbg !23
  store i32 %3, i32* %data, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !27, metadata !DIExpression()), !dbg !31
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !31
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !31
  %5 = load i32, i32* %data, align 4, !dbg !32
  %cmp = icmp sge i32 %5, 0, !dbg !34
  br i1 %cmp, label %if.then, label %if.else, !dbg !35

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %data, align 4, !dbg !36
  %idxprom = sext i32 %6 to i64, !dbg !38
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !38
  store i32 1, i32* %arrayidx, align 4, !dbg !39
  store i32 0, i32* %i, align 4, !dbg !40
  br label %for.cond, !dbg !42

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4, !dbg !43
  %cmp1 = icmp slt i32 %7, 10, !dbg !45
  br i1 %cmp1, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !47
  %idxprom2 = sext i32 %8 to i64, !dbg !49
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !49
  %9 = load i32, i32* %arrayidx3, align 4, !dbg !49
  call void @printIntLine(i32 %9), !dbg !50
  br label %for.inc, !dbg !51

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !52
  %inc = add nsw i32 %10, 1, !dbg !52
  store i32 %inc, i32* %i, align 4, !dbg !52
  br label %for.cond, !dbg !53, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !57

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !58
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !60
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_goodG2BSink(i8* %dataVoidPtr) #0 !dbg !61 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32** %dataPtr, metadata !64, metadata !DIExpression()), !dbg !65
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !66
  %1 = bitcast i8* %0 to i32*, !dbg !67
  store i32* %1, i32** %dataPtr, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %data, metadata !68, metadata !DIExpression()), !dbg !69
  %2 = load i32*, i32** %dataPtr, align 8, !dbg !70
  %3 = load i32, i32* %2, align 4, !dbg !71
  store i32 %3, i32* %data, align 4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i, metadata !72, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !75, metadata !DIExpression()), !dbg !76
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !76
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !76
  %5 = load i32, i32* %data, align 4, !dbg !77
  %cmp = icmp sge i32 %5, 0, !dbg !79
  br i1 %cmp, label %if.then, label %if.else, !dbg !80

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %data, align 4, !dbg !81
  %idxprom = sext i32 %6 to i64, !dbg !83
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !83
  store i32 1, i32* %arrayidx, align 4, !dbg !84
  store i32 0, i32* %i, align 4, !dbg !85
  br label %for.cond, !dbg !87

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4, !dbg !88
  %cmp1 = icmp slt i32 %7, 10, !dbg !90
  br i1 %cmp1, label %for.body, label %for.end, !dbg !91

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !92
  %idxprom2 = sext i32 %8 to i64, !dbg !94
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !94
  %9 = load i32, i32* %arrayidx3, align 4, !dbg !94
  call void @printIntLine(i32 %9), !dbg !95
  br label %for.inc, !dbg !96

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !97
  %inc = add nsw i32 %10, 1, !dbg !97
  store i32 %inc, i32* %i, align 4, !dbg !97
  br label %for.cond, !dbg !98, !llvm.loop !99

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !101

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !102
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !104
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_goodB2GSink(i8* %dataVoidPtr) #0 !dbg !105 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i32*, align 8
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32** %dataPtr, metadata !108, metadata !DIExpression()), !dbg !109
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !110
  %1 = bitcast i8* %0 to i32*, !dbg !111
  store i32* %1, i32** %dataPtr, align 8, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %data, metadata !112, metadata !DIExpression()), !dbg !113
  %2 = load i32*, i32** %dataPtr, align 8, !dbg !114
  %3 = load i32, i32* %2, align 4, !dbg !115
  store i32 %3, i32* %data, align 4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %i, metadata !116, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !119, metadata !DIExpression()), !dbg !120
  %4 = bitcast [10 x i32]* %buffer to i8*, !dbg !120
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 40, i1 false), !dbg !120
  %5 = load i32, i32* %data, align 4, !dbg !121
  %cmp = icmp sge i32 %5, 0, !dbg !123
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !124

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %data, align 4, !dbg !125
  %cmp1 = icmp slt i32 %6, 10, !dbg !126
  br i1 %cmp1, label %if.then, label %if.else, !dbg !127

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %data, align 4, !dbg !128
  %idxprom = sext i32 %7 to i64, !dbg !130
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !130
  store i32 1, i32* %arrayidx, align 4, !dbg !131
  store i32 0, i32* %i, align 4, !dbg !132
  br label %for.cond, !dbg !134

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, i32* %i, align 4, !dbg !135
  %cmp2 = icmp slt i32 %8, 10, !dbg !137
  br i1 %cmp2, label %for.body, label %for.end, !dbg !138

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !139
  %idxprom3 = sext i32 %9 to i64, !dbg !141
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !141
  %10 = load i32, i32* %arrayidx4, align 4, !dbg !141
  call void @printIntLine(i32 %10), !dbg !142
  br label %for.inc, !dbg !143

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !144
  %inc = add nsw i32 %11, 1, !dbg !144
  store i32 %inc, i32* %i, align 4, !dbg !144
  br label %for.cond, !dbg !145, !llvm.loop !146

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !148

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @printLine(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0)), !dbg !149
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !151
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_744/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_badSink", scope: !1, file: !1, line: 44, type: !11, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{null, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !10, file: !1, line: 44, type: !13)
!15 = !DILocation(line: 44, column: 82, scope: !10)
!16 = !DILocalVariable(name: "dataPtr", scope: !10, file: !1, line: 47, type: !4)
!17 = !DILocation(line: 47, column: 11, scope: !10)
!18 = !DILocation(line: 47, column: 28, scope: !10)
!19 = !DILocation(line: 47, column: 21, scope: !10)
!20 = !DILocalVariable(name: "data", scope: !10, file: !1, line: 49, type: !5)
!21 = !DILocation(line: 49, column: 9, scope: !10)
!22 = !DILocation(line: 49, column: 18, scope: !10)
!23 = !DILocation(line: 49, column: 17, scope: !10)
!24 = !DILocalVariable(name: "i", scope: !25, file: !1, line: 51, type: !5)
!25 = distinct !DILexicalBlock(scope: !10, file: !1, line: 50, column: 5)
!26 = !DILocation(line: 51, column: 13, scope: !25)
!27 = !DILocalVariable(name: "buffer", scope: !25, file: !1, line: 52, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 320, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 10)
!31 = !DILocation(line: 52, column: 13, scope: !25)
!32 = !DILocation(line: 55, column: 13, scope: !33)
!33 = distinct !DILexicalBlock(scope: !25, file: !1, line: 55, column: 13)
!34 = !DILocation(line: 55, column: 18, scope: !33)
!35 = !DILocation(line: 55, column: 13, scope: !25)
!36 = !DILocation(line: 57, column: 20, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 56, column: 9)
!38 = !DILocation(line: 57, column: 13, scope: !37)
!39 = !DILocation(line: 57, column: 26, scope: !37)
!40 = !DILocation(line: 59, column: 19, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 59, column: 13)
!42 = !DILocation(line: 59, column: 17, scope: !41)
!43 = !DILocation(line: 59, column: 24, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 59, column: 13)
!45 = !DILocation(line: 59, column: 26, scope: !44)
!46 = !DILocation(line: 59, column: 13, scope: !41)
!47 = !DILocation(line: 61, column: 37, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 60, column: 13)
!49 = !DILocation(line: 61, column: 30, scope: !48)
!50 = !DILocation(line: 61, column: 17, scope: !48)
!51 = !DILocation(line: 62, column: 13, scope: !48)
!52 = !DILocation(line: 59, column: 33, scope: !44)
!53 = !DILocation(line: 59, column: 13, scope: !44)
!54 = distinct !{!54, !46, !55, !56}
!55 = !DILocation(line: 62, column: 13, scope: !41)
!56 = !{!"llvm.loop.mustprogress"}
!57 = !DILocation(line: 63, column: 9, scope: !37)
!58 = !DILocation(line: 66, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !33, file: !1, line: 65, column: 9)
!60 = !DILocation(line: 69, column: 1, scope: !10)
!61 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_goodG2BSink", scope: !1, file: !1, line: 76, type: !11, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!62 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !61, file: !1, line: 76, type: !13)
!63 = !DILocation(line: 76, column: 86, scope: !61)
!64 = !DILocalVariable(name: "dataPtr", scope: !61, file: !1, line: 79, type: !4)
!65 = !DILocation(line: 79, column: 11, scope: !61)
!66 = !DILocation(line: 79, column: 28, scope: !61)
!67 = !DILocation(line: 79, column: 21, scope: !61)
!68 = !DILocalVariable(name: "data", scope: !61, file: !1, line: 81, type: !5)
!69 = !DILocation(line: 81, column: 9, scope: !61)
!70 = !DILocation(line: 81, column: 18, scope: !61)
!71 = !DILocation(line: 81, column: 17, scope: !61)
!72 = !DILocalVariable(name: "i", scope: !73, file: !1, line: 83, type: !5)
!73 = distinct !DILexicalBlock(scope: !61, file: !1, line: 82, column: 5)
!74 = !DILocation(line: 83, column: 13, scope: !73)
!75 = !DILocalVariable(name: "buffer", scope: !73, file: !1, line: 84, type: !28)
!76 = !DILocation(line: 84, column: 13, scope: !73)
!77 = !DILocation(line: 87, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 87, column: 13)
!79 = !DILocation(line: 87, column: 18, scope: !78)
!80 = !DILocation(line: 87, column: 13, scope: !73)
!81 = !DILocation(line: 89, column: 20, scope: !82)
!82 = distinct !DILexicalBlock(scope: !78, file: !1, line: 88, column: 9)
!83 = !DILocation(line: 89, column: 13, scope: !82)
!84 = !DILocation(line: 89, column: 26, scope: !82)
!85 = !DILocation(line: 91, column: 19, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 91, column: 13)
!87 = !DILocation(line: 91, column: 17, scope: !86)
!88 = !DILocation(line: 91, column: 24, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 91, column: 13)
!90 = !DILocation(line: 91, column: 26, scope: !89)
!91 = !DILocation(line: 91, column: 13, scope: !86)
!92 = !DILocation(line: 93, column: 37, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 92, column: 13)
!94 = !DILocation(line: 93, column: 30, scope: !93)
!95 = !DILocation(line: 93, column: 17, scope: !93)
!96 = !DILocation(line: 94, column: 13, scope: !93)
!97 = !DILocation(line: 91, column: 33, scope: !89)
!98 = !DILocation(line: 91, column: 13, scope: !89)
!99 = distinct !{!99, !91, !100, !56}
!100 = !DILocation(line: 94, column: 13, scope: !86)
!101 = !DILocation(line: 95, column: 9, scope: !82)
!102 = !DILocation(line: 98, column: 13, scope: !103)
!103 = distinct !DILexicalBlock(scope: !78, file: !1, line: 97, column: 9)
!104 = !DILocation(line: 101, column: 1, scope: !61)
!105 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_listen_socket_64b_goodB2GSink", scope: !1, file: !1, line: 104, type: !11, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!106 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !105, file: !1, line: 104, type: !13)
!107 = !DILocation(line: 104, column: 86, scope: !105)
!108 = !DILocalVariable(name: "dataPtr", scope: !105, file: !1, line: 107, type: !4)
!109 = !DILocation(line: 107, column: 11, scope: !105)
!110 = !DILocation(line: 107, column: 28, scope: !105)
!111 = !DILocation(line: 107, column: 21, scope: !105)
!112 = !DILocalVariable(name: "data", scope: !105, file: !1, line: 109, type: !5)
!113 = !DILocation(line: 109, column: 9, scope: !105)
!114 = !DILocation(line: 109, column: 18, scope: !105)
!115 = !DILocation(line: 109, column: 17, scope: !105)
!116 = !DILocalVariable(name: "i", scope: !117, file: !1, line: 111, type: !5)
!117 = distinct !DILexicalBlock(scope: !105, file: !1, line: 110, column: 5)
!118 = !DILocation(line: 111, column: 13, scope: !117)
!119 = !DILocalVariable(name: "buffer", scope: !117, file: !1, line: 112, type: !28)
!120 = !DILocation(line: 112, column: 13, scope: !117)
!121 = !DILocation(line: 114, column: 13, scope: !122)
!122 = distinct !DILexicalBlock(scope: !117, file: !1, line: 114, column: 13)
!123 = !DILocation(line: 114, column: 18, scope: !122)
!124 = !DILocation(line: 114, column: 23, scope: !122)
!125 = !DILocation(line: 114, column: 26, scope: !122)
!126 = !DILocation(line: 114, column: 31, scope: !122)
!127 = !DILocation(line: 114, column: 13, scope: !117)
!128 = !DILocation(line: 116, column: 20, scope: !129)
!129 = distinct !DILexicalBlock(scope: !122, file: !1, line: 115, column: 9)
!130 = !DILocation(line: 116, column: 13, scope: !129)
!131 = !DILocation(line: 116, column: 26, scope: !129)
!132 = !DILocation(line: 118, column: 19, scope: !133)
!133 = distinct !DILexicalBlock(scope: !129, file: !1, line: 118, column: 13)
!134 = !DILocation(line: 118, column: 17, scope: !133)
!135 = !DILocation(line: 118, column: 24, scope: !136)
!136 = distinct !DILexicalBlock(scope: !133, file: !1, line: 118, column: 13)
!137 = !DILocation(line: 118, column: 26, scope: !136)
!138 = !DILocation(line: 118, column: 13, scope: !133)
!139 = !DILocation(line: 120, column: 37, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !1, line: 119, column: 13)
!141 = !DILocation(line: 120, column: 30, scope: !140)
!142 = !DILocation(line: 120, column: 17, scope: !140)
!143 = !DILocation(line: 121, column: 13, scope: !140)
!144 = !DILocation(line: 118, column: 33, scope: !136)
!145 = !DILocation(line: 118, column: 13, scope: !136)
!146 = distinct !{!146, !138, !147, !56}
!147 = !DILocation(line: 121, column: 13, scope: !133)
!148 = !DILocation(line: 122, column: 9, scope: !129)
!149 = !DILocation(line: 125, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !122, file: !1, line: 124, column: 9)
!151 = !DILocation(line: 128, column: 1, scope: !105)
