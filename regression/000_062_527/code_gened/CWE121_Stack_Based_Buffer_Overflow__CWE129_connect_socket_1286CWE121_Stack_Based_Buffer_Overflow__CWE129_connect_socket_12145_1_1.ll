; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1286CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12145_1_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1286CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12145_1_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1286CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12145_1_1(i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_inputBuffer_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_inputBuffer_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_buffer_0 = alloca [10 x i32], align 16
  store i8* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_inputBuffer_0, i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_inputBuffer_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_inputBuffer_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_data_0, align 4, !dbg !22
  store i32 7, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_data_0, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_i_0, metadata !26, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_buffer_0, metadata !31, metadata !DIExpression()), !dbg !35
  %0 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_buffer_0 to i8*, !dbg !35
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 40, i1 false), !dbg !35
  %1 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_data_0, align 4, !dbg !36
  %cmp = icmp sge i32 %1, 0, !dbg !38
  br i1 %cmp, label %if.then, label %if.else, !dbg !39

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_data_0, align 4, !dbg !40
  %idxprom = sext i32 %2 to i64, !dbg !42
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_buffer_0, i64 0, i64 %idxprom, !dbg !42
  store i32 1, i32* %arrayidx, align 4, !dbg !43
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_i_0, align 4, !dbg !44
  br label %for.cond, !dbg !46

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_i_0, align 4, !dbg !47
  %cmp1 = icmp slt i32 %3, 10, !dbg !49
  br i1 %cmp1, label %for.body, label %for.end, !dbg !50

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_i_0, align 4, !dbg !51
  %idxprom2 = sext i32 %4 to i64, !dbg !53
  %arrayidx3 = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_buffer_0, i64 0, i64 %idxprom2, !dbg !53
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !53
  call void @printIntLine(i32 %5), !dbg !54
  br label %for.inc, !dbg !55

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_i_0, align 4, !dbg !56
  %inc = add nsw i32 %6, 1, !dbg !56
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_i_0, align 4, !dbg !56
  br label %for.cond, !dbg !57, !llvm.loop !58

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !61

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0)), !dbg !62
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_label_, !dbg !64

CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_label_: ; preds = %if.end
  call void @llvm.dbg.label(metadata !65), !dbg !66
  ret void, !dbg !67
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @printIntLine(i32) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1286CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12145_1_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_527/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_1286CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12145_1_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_inputBuffer_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 142, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 230, scope: !7)
!20 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_data_0", scope: !7, file: !1, line: 5, type: !15)
!21 = !DILocation(line: 5, column: 7, scope: !7)
!22 = !DILocation(line: 6, column: 76, scope: !7)
!23 = !DILocation(line: 49, column: 78, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 48, column: 3)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 7)
!26 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_i_0", scope: !27, file: !1, line: 55, type: !15)
!27 = distinct !DILexicalBlock(scope: !28, file: !1, line: 54, column: 5)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 53, column: 3)
!29 = distinct !DILexicalBlock(scope: !7, file: !1, line: 52, column: 7)
!30 = !DILocation(line: 55, column: 11, scope: !27)
!31 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_buffer_0", scope: !27, file: !1, line: 56, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 10)
!35 = !DILocation(line: 56, column: 11, scope: !27)
!36 = !DILocation(line: 57, column: 11, scope: !37)
!37 = distinct !DILexicalBlock(scope: !27, file: !1, line: 57, column: 11)
!38 = !DILocation(line: 57, column: 84, scope: !37)
!39 = !DILocation(line: 57, column: 11, scope: !27)
!40 = !DILocation(line: 59, column: 84, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 58, column: 7)
!42 = !DILocation(line: 59, column: 9, scope: !41)
!43 = !DILocation(line: 59, column: 158, scope: !41)
!44 = !DILocation(line: 60, column: 84, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 60, column: 9)
!46 = !DILocation(line: 60, column: 14, scope: !45)
!47 = !DILocation(line: 60, column: 89, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !1, line: 60, column: 9)
!49 = !DILocation(line: 60, column: 159, scope: !48)
!50 = !DILocation(line: 60, column: 9, scope: !45)
!51 = !DILocation(line: 62, column: 99, scope: !52)
!52 = distinct !DILexicalBlock(scope: !48, file: !1, line: 61, column: 9)
!53 = !DILocation(line: 62, column: 24, scope: !52)
!54 = !DILocation(line: 62, column: 11, scope: !52)
!55 = !DILocation(line: 63, column: 9, scope: !52)
!56 = !DILocation(line: 60, column: 234, scope: !48)
!57 = !DILocation(line: 60, column: 9, scope: !48)
!58 = distinct !{!58, !50, !59, !60}
!59 = !DILocation(line: 63, column: 9, scope: !45)
!60 = !{!"llvm.loop.mustprogress"}
!61 = !DILocation(line: 65, column: 7, scope: !41)
!62 = !DILocation(line: 68, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !37, file: !1, line: 67, column: 7)
!64 = !DILocation(line: 52, column: 7, scope: !29)
!65 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_connect_socket_12_bad_label_", file: !1, line: 95)
!66 = !DILocation(line: 95, column: 3, scope: !7)
!67 = !DILocation(line: 100, column: 1, scope: !7)
