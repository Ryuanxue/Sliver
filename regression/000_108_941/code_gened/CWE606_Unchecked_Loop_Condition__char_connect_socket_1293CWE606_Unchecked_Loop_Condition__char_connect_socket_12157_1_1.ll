; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_connect_socket_1293CWE606_Unchecked_Loop_Condition__char_connect_socket_12157_1_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_connect_socket_1293CWE606_Unchecked_Loop_Condition__char_connect_socket_12157_1_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_connect_socket_1293CWE606_Unchecked_Loop_Condition__char_connect_socket_12157_1_1(i8* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_dataBuffer_0, metadata !20, metadata !DIExpression()), !dbg !24
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_dataBuffer_0 to i8*, !dbg !24
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !24
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_dataBuffer_0, i64 0, i64 0, !dbg !25
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0.addr, align 8, !dbg !26
  %1 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0.addr, align 8, !dbg !27
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #5, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_i_0, metadata !31, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_n_0, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_intVariable_0, metadata !38, metadata !DIExpression()), !dbg !39
  %2 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0.addr, align 8, !dbg !40
  %call1 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_n_0) #5, !dbg !42
  %cmp = icmp eq i32 %call1, 1, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %entry
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_intVariable_0, align 4, !dbg !45
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_i_0, align 4, !dbg !47
  br label %for.cond, !dbg !49

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_i_0, align 4, !dbg !50
  %4 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_n_0, align 4, !dbg !52
  %cmp2 = icmp slt i32 %3, %4, !dbg !53
  br i1 %cmp2, label %for.body, label %for.end, !dbg !54

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_intVariable_0, align 4, !dbg !55
  %inc = add nsw i32 %5, 1, !dbg !55
  store i32 %inc, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_intVariable_0, align 4, !dbg !55
  br label %for.inc, !dbg !57

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_i_0, align 4, !dbg !58
  %inc3 = add nsw i32 %6, 1, !dbg !58
  store i32 %inc3, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_i_0, align 4, !dbg !58
  br label %for.cond, !dbg !59, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_intVariable_0, align 4, !dbg !63
  call void @printIntLine(i32 %7), !dbg !64
  br label %if.end, !dbg !65

if.end:                                           ; preds = %for.end, %entry
  br label %CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_label_, !dbg !66

CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_label_: ; preds = %if.end
  call void @llvm.dbg.label(metadata !67), !dbg !68
  ret void, !dbg !69
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_connect_socket_1293CWE606_Unchecked_Loop_Condition__char_connect_socket_12157_1_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_941/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_1293CWE606_Unchecked_Loop_Condition__char_connect_socket_12157_1_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_data_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 132, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 208, scope: !7)
!20 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_dataBuffer_0", scope: !7, file: !1, line: 5, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 100)
!24 = !DILocation(line: 5, column: 8, scope: !7)
!25 = !DILocation(line: 6, column: 73, scope: !7)
!26 = !DILocation(line: 6, column: 71, scope: !7)
!27 = !DILocation(line: 62, column: 12, scope: !28)
!28 = distinct !DILexicalBlock(scope: !29, file: !1, line: 61, column: 3)
!29 = distinct !DILexicalBlock(scope: !7, file: !1, line: 7, column: 7)
!30 = !DILocation(line: 62, column: 5, scope: !28)
!31 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_i_0", scope: !32, file: !1, line: 68, type: !15)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 67, column: 5)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 66, column: 3)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 65, column: 7)
!35 = !DILocation(line: 68, column: 11, scope: !32)
!36 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_n_0", scope: !32, file: !1, line: 69, type: !15)
!37 = !DILocation(line: 69, column: 11, scope: !32)
!38 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_intVariable_0", scope: !32, file: !1, line: 70, type: !15)
!39 = !DILocation(line: 70, column: 11, scope: !32)
!40 = !DILocation(line: 71, column: 18, scope: !41)
!41 = distinct !DILexicalBlock(scope: !32, file: !1, line: 71, column: 11)
!42 = !DILocation(line: 71, column: 11, scope: !41)
!43 = !DILocation(line: 71, column: 160, scope: !41)
!44 = !DILocation(line: 71, column: 11, scope: !32)
!45 = !DILocation(line: 73, column: 84, scope: !46)
!46 = distinct !DILexicalBlock(scope: !41, file: !1, line: 72, column: 7)
!47 = !DILocation(line: 74, column: 79, scope: !48)
!48 = distinct !DILexicalBlock(scope: !46, file: !1, line: 74, column: 9)
!49 = !DILocation(line: 74, column: 14, scope: !48)
!50 = !DILocation(line: 74, column: 84, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 74, column: 9)
!52 = !DILocation(line: 74, column: 151, scope: !51)
!53 = !DILocation(line: 74, column: 149, scope: !51)
!54 = !DILocation(line: 74, column: 9, scope: !48)
!55 = !DILocation(line: 76, column: 85, scope: !56)
!56 = distinct !DILexicalBlock(scope: !51, file: !1, line: 75, column: 9)
!57 = !DILocation(line: 77, column: 9, scope: !56)
!58 = !DILocation(line: 74, column: 281, scope: !51)
!59 = !DILocation(line: 74, column: 9, scope: !51)
!60 = distinct !{!60, !54, !61, !62}
!61 = !DILocation(line: 77, column: 9, scope: !48)
!62 = !{!"llvm.loop.mustprogress"}
!63 = !DILocation(line: 79, column: 22, scope: !46)
!64 = !DILocation(line: 79, column: 9, scope: !46)
!65 = !DILocation(line: 80, column: 7, scope: !46)
!66 = !DILocation(line: 65, column: 7, scope: !34)
!67 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_connect_socket_12_bad_label_", file: !1, line: 104)
!68 = !DILocation(line: 104, column: 3, scope: !7)
!69 = !DILocation(line: 109, column: 1, scope: !7)
