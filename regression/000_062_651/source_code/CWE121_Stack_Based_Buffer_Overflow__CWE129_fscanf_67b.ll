; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ERROR: Array index is out-of-bounds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink(i32 %myStruct.coerce) #0 !dbg !7 {
entry:
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, align 4
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, i32 0, i32 0
  store i32 %myStruct.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %data, metadata !17, metadata !DIExpression()), !dbg !18
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, i32 0, i32 0, !dbg !19
  %0 = load i32, i32* %structFirst, align 4, !dbg !19
  store i32 %0, i32* %data, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !23, metadata !DIExpression()), !dbg !27
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !27
  %2 = load i32, i32* %data, align 4, !dbg !28
  %cmp = icmp sge i32 %2, 0, !dbg !30
  br i1 %cmp, label %if.then, label %if.else, !dbg !31

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !32
  %idxprom = sext i32 %3 to i64, !dbg !34
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !34
  store i32 1, i32* %arrayidx, align 4, !dbg !35
  store i32 0, i32* %i, align 4, !dbg !36
  br label %for.cond, !dbg !38

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !39
  %cmp1 = icmp slt i32 %4, 10, !dbg !41
  br i1 %cmp1, label %for.body, label %for.end, !dbg !42

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !43
  %idxprom2 = sext i32 %5 to i64, !dbg !45
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !45
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !45
  call void @printIntLine(i32 %6), !dbg !46
  br label %for.inc, !dbg !47

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !48
  %inc = add nsw i32 %7, 1, !dbg !48
  store i32 %inc, i32* %i, align 4, !dbg !48
  br label %for.cond, !dbg !49, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !53

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !54
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !56
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodG2BSink(i32 %myStruct.coerce) #0 !dbg !57 {
entry:
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, align 4
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, i32 0, i32 0
  store i32 %myStruct.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %data, metadata !60, metadata !DIExpression()), !dbg !61
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, i32 0, i32 0, !dbg !62
  %0 = load i32, i32* %structFirst, align 4, !dbg !62
  store i32 %0, i32* %data, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i, metadata !63, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !66, metadata !DIExpression()), !dbg !67
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !67
  %2 = load i32, i32* %data, align 4, !dbg !68
  %cmp = icmp sge i32 %2, 0, !dbg !70
  br i1 %cmp, label %if.then, label %if.else, !dbg !71

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !72
  %idxprom = sext i32 %3 to i64, !dbg !74
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !74
  store i32 1, i32* %arrayidx, align 4, !dbg !75
  store i32 0, i32* %i, align 4, !dbg !76
  br label %for.cond, !dbg !78

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !79
  %cmp1 = icmp slt i32 %4, 10, !dbg !81
  br i1 %cmp1, label %for.body, label %for.end, !dbg !82

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !83
  %idxprom2 = sext i32 %5 to i64, !dbg !85
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom2, !dbg !85
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !85
  call void @printIntLine(i32 %6), !dbg !86
  br label %for.inc, !dbg !87

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !88
  %inc = add nsw i32 %7, 1, !dbg !88
  store i32 %inc, i32* %i, align 4, !dbg !88
  br label %for.cond, !dbg !89, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !92

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !93
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  ret void, !dbg !95
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink(i32 %myStruct.coerce) #0 !dbg !96 {
entry:
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, align 4
  %data = alloca i32, align 4
  %i = alloca i32, align 4
  %buffer = alloca [10 x i32], align 16
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, i32 0, i32 0
  store i32 %myStruct.coerce, i32* %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata i32* %data, metadata !99, metadata !DIExpression()), !dbg !100
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, i32 0, i32 0, !dbg !101
  %0 = load i32, i32* %structFirst, align 4, !dbg !101
  store i32 %0, i32* %data, align 4, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %i, metadata !102, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [10 x i32]* %buffer, metadata !105, metadata !DIExpression()), !dbg !106
  %1 = bitcast [10 x i32]* %buffer to i8*, !dbg !106
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !106
  %2 = load i32, i32* %data, align 4, !dbg !107
  %cmp = icmp sge i32 %2, 0, !dbg !109
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !110

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %data, align 4, !dbg !111
  %cmp1 = icmp slt i32 %3, 10, !dbg !112
  br i1 %cmp1, label %if.then, label %if.else, !dbg !113

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %data, align 4, !dbg !114
  %idxprom = sext i32 %4 to i64, !dbg !116
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom, !dbg !116
  store i32 1, i32* %arrayidx, align 4, !dbg !117
  store i32 0, i32* %i, align 4, !dbg !118
  br label %for.cond, !dbg !120

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4, !dbg !121
  %cmp2 = icmp slt i32 %5, 10, !dbg !123
  br i1 %cmp2, label %for.body, label %for.end, !dbg !124

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !125
  %idxprom3 = sext i32 %6 to i64, !dbg !127
  %arrayidx4 = getelementptr inbounds [10 x i32], [10 x i32]* %buffer, i64 0, i64 %idxprom3, !dbg !127
  %7 = load i32, i32* %arrayidx4, align 4, !dbg !127
  call void @printIntLine(i32 %7), !dbg !128
  br label %for.inc, !dbg !129

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !130
  %inc = add nsw i32 %8, 1, !dbg !130
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
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_651/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink", scope: !1, file: !1, line: 27, type: !8, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType", file: !1, line: 23, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType", file: !1, line: 20, size: 32, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !11, file: !1, line: 22, baseType: !14, size: 32)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "myStruct", arg: 1, scope: !7, file: !1, line: 27, type: !10)
!16 = !DILocation(line: 27, column: 132, scope: !7)
!17 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 29, type: !14)
!18 = !DILocation(line: 29, column: 9, scope: !7)
!19 = !DILocation(line: 29, column: 25, scope: !7)
!20 = !DILocalVariable(name: "i", scope: !21, file: !1, line: 31, type: !14)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 30, column: 5)
!22 = !DILocation(line: 31, column: 13, scope: !21)
!23 = !DILocalVariable(name: "buffer", scope: !21, file: !1, line: 32, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 320, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 10)
!27 = !DILocation(line: 32, column: 13, scope: !21)
!28 = !DILocation(line: 35, column: 13, scope: !29)
!29 = distinct !DILexicalBlock(scope: !21, file: !1, line: 35, column: 13)
!30 = !DILocation(line: 35, column: 18, scope: !29)
!31 = !DILocation(line: 35, column: 13, scope: !21)
!32 = !DILocation(line: 37, column: 20, scope: !33)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 36, column: 9)
!34 = !DILocation(line: 37, column: 13, scope: !33)
!35 = !DILocation(line: 37, column: 26, scope: !33)
!36 = !DILocation(line: 39, column: 19, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 39, column: 13)
!38 = !DILocation(line: 39, column: 17, scope: !37)
!39 = !DILocation(line: 39, column: 24, scope: !40)
!40 = distinct !DILexicalBlock(scope: !37, file: !1, line: 39, column: 13)
!41 = !DILocation(line: 39, column: 26, scope: !40)
!42 = !DILocation(line: 39, column: 13, scope: !37)
!43 = !DILocation(line: 41, column: 37, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 40, column: 13)
!45 = !DILocation(line: 41, column: 30, scope: !44)
!46 = !DILocation(line: 41, column: 17, scope: !44)
!47 = !DILocation(line: 42, column: 13, scope: !44)
!48 = !DILocation(line: 39, column: 33, scope: !40)
!49 = !DILocation(line: 39, column: 13, scope: !40)
!50 = distinct !{!50, !42, !51, !52}
!51 = !DILocation(line: 42, column: 13, scope: !37)
!52 = !{!"llvm.loop.mustprogress"}
!53 = !DILocation(line: 43, column: 9, scope: !33)
!54 = !DILocation(line: 46, column: 13, scope: !55)
!55 = distinct !DILexicalBlock(scope: !29, file: !1, line: 45, column: 9)
!56 = !DILocation(line: 49, column: 1, scope: !7)
!57 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodG2BSink", scope: !1, file: !1, line: 56, type: !8, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!58 = !DILocalVariable(name: "myStruct", arg: 1, scope: !57, file: !1, line: 56, type: !10)
!59 = !DILocation(line: 56, column: 136, scope: !57)
!60 = !DILocalVariable(name: "data", scope: !57, file: !1, line: 58, type: !14)
!61 = !DILocation(line: 58, column: 9, scope: !57)
!62 = !DILocation(line: 58, column: 25, scope: !57)
!63 = !DILocalVariable(name: "i", scope: !64, file: !1, line: 60, type: !14)
!64 = distinct !DILexicalBlock(scope: !57, file: !1, line: 59, column: 5)
!65 = !DILocation(line: 60, column: 13, scope: !64)
!66 = !DILocalVariable(name: "buffer", scope: !64, file: !1, line: 61, type: !24)
!67 = !DILocation(line: 61, column: 13, scope: !64)
!68 = !DILocation(line: 64, column: 13, scope: !69)
!69 = distinct !DILexicalBlock(scope: !64, file: !1, line: 64, column: 13)
!70 = !DILocation(line: 64, column: 18, scope: !69)
!71 = !DILocation(line: 64, column: 13, scope: !64)
!72 = !DILocation(line: 66, column: 20, scope: !73)
!73 = distinct !DILexicalBlock(scope: !69, file: !1, line: 65, column: 9)
!74 = !DILocation(line: 66, column: 13, scope: !73)
!75 = !DILocation(line: 66, column: 26, scope: !73)
!76 = !DILocation(line: 68, column: 19, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 68, column: 13)
!78 = !DILocation(line: 68, column: 17, scope: !77)
!79 = !DILocation(line: 68, column: 24, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !1, line: 68, column: 13)
!81 = !DILocation(line: 68, column: 26, scope: !80)
!82 = !DILocation(line: 68, column: 13, scope: !77)
!83 = !DILocation(line: 70, column: 37, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !1, line: 69, column: 13)
!85 = !DILocation(line: 70, column: 30, scope: !84)
!86 = !DILocation(line: 70, column: 17, scope: !84)
!87 = !DILocation(line: 71, column: 13, scope: !84)
!88 = !DILocation(line: 68, column: 33, scope: !80)
!89 = !DILocation(line: 68, column: 13, scope: !80)
!90 = distinct !{!90, !82, !91, !52}
!91 = !DILocation(line: 71, column: 13, scope: !77)
!92 = !DILocation(line: 72, column: 9, scope: !73)
!93 = !DILocation(line: 75, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !69, file: !1, line: 74, column: 9)
!95 = !DILocation(line: 78, column: 1, scope: !57)
!96 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink", scope: !1, file: !1, line: 81, type: !8, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!97 = !DILocalVariable(name: "myStruct", arg: 1, scope: !96, file: !1, line: 81, type: !10)
!98 = !DILocation(line: 81, column: 136, scope: !96)
!99 = !DILocalVariable(name: "data", scope: !96, file: !1, line: 83, type: !14)
!100 = !DILocation(line: 83, column: 9, scope: !96)
!101 = !DILocation(line: 83, column: 25, scope: !96)
!102 = !DILocalVariable(name: "i", scope: !103, file: !1, line: 85, type: !14)
!103 = distinct !DILexicalBlock(scope: !96, file: !1, line: 84, column: 5)
!104 = !DILocation(line: 85, column: 13, scope: !103)
!105 = !DILocalVariable(name: "buffer", scope: !103, file: !1, line: 86, type: !24)
!106 = !DILocation(line: 86, column: 13, scope: !103)
!107 = !DILocation(line: 88, column: 13, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !1, line: 88, column: 13)
!109 = !DILocation(line: 88, column: 18, scope: !108)
!110 = !DILocation(line: 88, column: 23, scope: !108)
!111 = !DILocation(line: 88, column: 26, scope: !108)
!112 = !DILocation(line: 88, column: 31, scope: !108)
!113 = !DILocation(line: 88, column: 13, scope: !103)
!114 = !DILocation(line: 90, column: 20, scope: !115)
!115 = distinct !DILexicalBlock(scope: !108, file: !1, line: 89, column: 9)
!116 = !DILocation(line: 90, column: 13, scope: !115)
!117 = !DILocation(line: 90, column: 26, scope: !115)
!118 = !DILocation(line: 92, column: 19, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 92, column: 13)
!120 = !DILocation(line: 92, column: 17, scope: !119)
!121 = !DILocation(line: 92, column: 24, scope: !122)
!122 = distinct !DILexicalBlock(scope: !119, file: !1, line: 92, column: 13)
!123 = !DILocation(line: 92, column: 26, scope: !122)
!124 = !DILocation(line: 92, column: 13, scope: !119)
!125 = !DILocation(line: 94, column: 37, scope: !126)
!126 = distinct !DILexicalBlock(scope: !122, file: !1, line: 93, column: 13)
!127 = !DILocation(line: 94, column: 30, scope: !126)
!128 = !DILocation(line: 94, column: 17, scope: !126)
!129 = !DILocation(line: 95, column: 13, scope: !126)
!130 = !DILocation(line: 92, column: 33, scope: !122)
!131 = !DILocation(line: 92, column: 13, scope: !122)
!132 = distinct !{!132, !124, !133, !52}
!133 = !DILocation(line: 95, column: 13, scope: !119)
!134 = !DILocation(line: 96, column: 9, scope: !115)
!135 = !DILocation(line: 99, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !108, file: !1, line: 98, column: 9)
!137 = !DILocation(line: 102, column: 1, scope: !96)
