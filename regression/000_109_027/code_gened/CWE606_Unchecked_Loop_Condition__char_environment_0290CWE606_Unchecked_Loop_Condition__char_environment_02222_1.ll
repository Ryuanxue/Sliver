; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_0290CWE606_Unchecked_Loop_Condition__char_environment_02222_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_0290CWE606_Unchecked_Loop_Condition__char_environment_02222_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_0290CWE606_Unchecked_Loop_Condition__char_environment_02222_1(i8* %_goodB2G1_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G1_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_data_0 = alloca i8*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_n_0 = alloca i32, align 4
  %_goodB2G1_intVariable_0 = alloca i32, align 4
  %_goodG2B2_data_0 = alloca i8*, align 8
  %_goodG2B2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B2_i_0 = alloca i32, align 4
  %_goodG2B2_n_0 = alloca i32, align 4
  %_goodG2B2_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G1_environment_0, i8** %_goodB2G1_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !23, metadata !DIExpression()), !dbg !27
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !27
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !28
  store i8* %arraydecay, i8** %_goodB2G1_data_0, align 8, !dbg !29
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !30, metadata !DIExpression()), !dbg !37
  %1 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !38
  %call = call i64 @strlen(i8* %1) #6, !dbg !39
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !37
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !40
  store i8* %call1, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !41
  %2 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !42
  %cmp = icmp ne i8* %2, null, !dbg !44
  br i1 %cmp, label %if.then, label %if.end, !dbg !45

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !46
  %4 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !49
  %5 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !50
  %6 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !51
  %sub = sub i64 100, %6, !dbg !52
  %sub2 = sub i64 %sub, 1, !dbg !53
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !54
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !56, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !63, metadata !DIExpression()), !dbg !64
  %7 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !65
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G1_n_0) #7, !dbg !67
  %cmp5 = icmp eq i32 %call4, 1, !dbg !68
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !69

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !70
  %cmp7 = icmp slt i32 %8, 10000, !dbg !73
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !74

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !75
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !77
  br label %for.cond, !dbg !79

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !80
  %10 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !82
  %cmp9 = icmp slt i32 %9, %10, !dbg !83
  br i1 %cmp9, label %for.body, label %for.end, !dbg !84

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !85
  %inc = add nsw i32 %11, 1, !dbg !85
  store i32 %inc, i32* %_goodB2G1_intVariable_0, align 4, !dbg !85
  br label %for.inc, !dbg !87

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !88
  %inc10 = add nsw i32 %12, 1, !dbg !88
  store i32 %inc10, i32* %_goodB2G1_i_0, align 4, !dbg !88
  br label %for.cond, !dbg !89, !llvm.loop !90

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !93
  call void @printIntLine(i32 %13), !dbg !94
  br label %if.end11, !dbg !95

if.end11:                                         ; preds = %for.end, %if.then6
  br label %if.end12, !dbg !96

if.end12:                                         ; preds = %if.end11, %if.end
  br label %goodB2G1_label_, !dbg !97

goodB2G1_label_:                                  ; preds = %if.end12
  call void @llvm.dbg.label(metadata !98), !dbg !99
  call void (...) @goodB2G2(), !dbg !100
  call void (...) @goodG2B1(), !dbg !101
  call void @llvm.dbg.declare(metadata i8** %_goodG2B2_data_0, metadata !102, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B2_dataBuffer_0, metadata !105, metadata !DIExpression()), !dbg !106
  %14 = bitcast [100 x i8]* %_goodG2B2_dataBuffer_0 to i8*, !dbg !106
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 100, i1 false), !dbg !106
  %arraydecay13 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B2_dataBuffer_0, i64 0, i64 0, !dbg !107
  store i8* %arraydecay13, i8** %_goodG2B2_data_0, align 8, !dbg !108
  %15 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !109
  %call14 = call i8* @strcpy(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_i_0, metadata !113, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_n_0, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %_goodG2B2_intVariable_0, metadata !120, metadata !DIExpression()), !dbg !121
  %16 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !122
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B2_n_0) #7, !dbg !124
  %cmp16 = icmp eq i32 %call15, 1, !dbg !125
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !126

if.then17:                                        ; preds = %goodB2G1_label_
  store i32 0, i32* %_goodG2B2_intVariable_0, align 4, !dbg !127
  %17 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !129
  %18 = load i32, i32* %_goodG2B2_n_0, align 4, !dbg !130
  call void %17(i32 %18), !dbg !129
  %19 = load i32, i32* %_goodG2B2_intVariable_0, align 4, !dbg !131
  call void @printIntLine(i32 %19), !dbg !132
  br label %if.end18, !dbg !133

if.end18:                                         ; preds = %if.then17, %goodB2G1_label_
  br label %goodG2B2_label_, !dbg !134

goodG2B2_label_:                                  ; preds = %if.end18
  call void @llvm.dbg.label(metadata !135), !dbg !136
  br label %CWE606_Unchecked_Loop_Condition__char_environment_02_good_label_, !dbg !137

CWE606_Unchecked_Loop_Condition__char_environment_02_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !138), !dbg !139
  ret void, !dbg !140
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodB2G2(...) #5

declare dso_local void @goodG2B1(...) #5

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_0290CWE606_Unchecked_Loop_Condition__char_environment_02222_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_027/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_0290CWE606_Unchecked_Loop_Condition__char_environment_02222_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G1_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 124, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 156, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !21, file: !1, line: 6, type: !10)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!22 = !DILocation(line: 6, column: 11, scope: !21)
!23 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !21, file: !1, line: 7, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 7, column: 10, scope: !21)
!28 = !DILocation(line: 8, column: 24, scope: !21)
!29 = !DILocation(line: 8, column: 22, scope: !21)
!30 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !31, file: !1, line: 12, type: !34)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 11, column: 7)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 10, column: 5)
!33 = distinct !DILexicalBlock(scope: !21, file: !1, line: 9, column: 9)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 12, column: 16, scope: !31)
!38 = !DILocation(line: 12, column: 45, scope: !31)
!39 = !DILocation(line: 12, column: 38, scope: !31)
!40 = !DILocation(line: 13, column: 35, scope: !31)
!41 = !DILocation(line: 13, column: 33, scope: !31)
!42 = !DILocation(line: 14, column: 13, scope: !43)
!43 = distinct !DILexicalBlock(scope: !31, file: !1, line: 14, column: 13)
!44 = !DILocation(line: 14, column: 37, scope: !43)
!45 = !DILocation(line: 14, column: 13, scope: !31)
!46 = !DILocation(line: 16, column: 19, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 15, column: 9)
!48 = !DILocation(line: 16, column: 38, scope: !47)
!49 = !DILocation(line: 16, column: 36, scope: !47)
!50 = !DILocation(line: 16, column: 59, scope: !47)
!51 = !DILocation(line: 16, column: 91, scope: !47)
!52 = !DILocation(line: 16, column: 89, scope: !47)
!53 = !DILocation(line: 16, column: 112, scope: !47)
!54 = !DILocation(line: 16, column: 11, scope: !47)
!55 = !DILocation(line: 17, column: 9, scope: !47)
!56 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !57, file: !1, line: 29, type: !15)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 28, column: 7)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 27, column: 5)
!59 = distinct !DILexicalBlock(scope: !21, file: !1, line: 22, column: 9)
!60 = !DILocation(line: 29, column: 13, scope: !57)
!61 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !57, file: !1, line: 30, type: !15)
!62 = !DILocation(line: 30, column: 13, scope: !57)
!63 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !57, file: !1, line: 31, type: !15)
!64 = !DILocation(line: 31, column: 13, scope: !57)
!65 = !DILocation(line: 32, column: 20, scope: !66)
!66 = distinct !DILexicalBlock(scope: !57, file: !1, line: 32, column: 13)
!67 = !DILocation(line: 32, column: 13, scope: !66)
!68 = !DILocation(line: 32, column: 60, scope: !66)
!69 = !DILocation(line: 32, column: 13, scope: !57)
!70 = !DILocation(line: 34, column: 15, scope: !71)
!71 = distinct !DILexicalBlock(scope: !72, file: !1, line: 34, column: 15)
!72 = distinct !DILexicalBlock(scope: !66, file: !1, line: 33, column: 9)
!73 = !DILocation(line: 34, column: 29, scope: !71)
!74 = !DILocation(line: 34, column: 15, scope: !72)
!75 = !DILocation(line: 36, column: 37, scope: !76)
!76 = distinct !DILexicalBlock(scope: !71, file: !1, line: 35, column: 11)
!77 = !DILocation(line: 37, column: 32, scope: !78)
!78 = distinct !DILexicalBlock(scope: !76, file: !1, line: 37, column: 13)
!79 = !DILocation(line: 37, column: 18, scope: !78)
!80 = !DILocation(line: 37, column: 37, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 37, column: 13)
!82 = !DILocation(line: 37, column: 53, scope: !81)
!83 = !DILocation(line: 37, column: 51, scope: !81)
!84 = !DILocation(line: 37, column: 13, scope: !78)
!85 = !DILocation(line: 39, column: 38, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 38, column: 13)
!87 = !DILocation(line: 40, column: 13, scope: !86)
!88 = !DILocation(line: 37, column: 81, scope: !81)
!89 = !DILocation(line: 37, column: 13, scope: !81)
!90 = distinct !{!90, !84, !91, !92}
!91 = !DILocation(line: 40, column: 13, scope: !78)
!92 = !{!"llvm.loop.mustprogress"}
!93 = !DILocation(line: 42, column: 26, scope: !76)
!94 = !DILocation(line: 42, column: 13, scope: !76)
!95 = !DILocation(line: 43, column: 11, scope: !76)
!96 = !DILocation(line: 45, column: 9, scope: !72)
!97 = !DILocation(line: 22, column: 9, scope: !59)
!98 = !DILabel(scope: !21, name: "goodB2G1_label_", file: !1, line: 50)
!99 = !DILocation(line: 50, column: 5, scope: !21)
!100 = !DILocation(line: 56, column: 3, scope: !7)
!101 = !DILocation(line: 57, column: 3, scope: !7)
!102 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !103, file: !1, line: 59, type: !10)
!103 = distinct !DILexicalBlock(scope: !7, file: !1, line: 58, column: 3)
!104 = !DILocation(line: 59, column: 11, scope: !103)
!105 = !DILocalVariable(name: "_goodG2B2_dataBuffer_0", scope: !103, file: !1, line: 60, type: !24)
!106 = !DILocation(line: 60, column: 10, scope: !103)
!107 = !DILocation(line: 61, column: 24, scope: !103)
!108 = !DILocation(line: 61, column: 22, scope: !103)
!109 = !DILocation(line: 64, column: 14, scope: !110)
!110 = distinct !DILexicalBlock(scope: !111, file: !1, line: 63, column: 5)
!111 = distinct !DILexicalBlock(scope: !103, file: !1, line: 62, column: 9)
!112 = !DILocation(line: 64, column: 7, scope: !110)
!113 = !DILocalVariable(name: "_goodG2B2_i_0", scope: !114, file: !1, line: 70, type: !15)
!114 = distinct !DILexicalBlock(scope: !115, file: !1, line: 69, column: 7)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 68, column: 5)
!116 = distinct !DILexicalBlock(scope: !103, file: !1, line: 67, column: 9)
!117 = !DILocation(line: 70, column: 13, scope: !114)
!118 = !DILocalVariable(name: "_goodG2B2_n_0", scope: !114, file: !1, line: 71, type: !15)
!119 = !DILocation(line: 71, column: 13, scope: !114)
!120 = !DILocalVariable(name: "_goodG2B2_intVariable_0", scope: !114, file: !1, line: 72, type: !15)
!121 = !DILocation(line: 72, column: 13, scope: !114)
!122 = !DILocation(line: 73, column: 20, scope: !123)
!123 = distinct !DILexicalBlock(scope: !114, file: !1, line: 73, column: 13)
!124 = !DILocation(line: 73, column: 13, scope: !123)
!125 = !DILocation(line: 73, column: 60, scope: !123)
!126 = !DILocation(line: 73, column: 13, scope: !114)
!127 = !DILocation(line: 75, column: 35, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !1, line: 74, column: 9)
!129 = !DILocation(line: 76, column: 11, scope: !128)
!130 = !DILocation(line: 76, column: 18, scope: !128)
!131 = !DILocation(line: 77, column: 24, scope: !128)
!132 = !DILocation(line: 77, column: 11, scope: !128)
!133 = !DILocation(line: 78, column: 9, scope: !128)
!134 = !DILocation(line: 67, column: 9, scope: !116)
!135 = !DILabel(scope: !103, name: "goodG2B2_label_", file: !1, line: 83)
!136 = !DILocation(line: 83, column: 5, scope: !103)
!137 = !DILocation(line: 88, column: 3, scope: !103)
!138 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_02_good_label_", file: !1, line: 89)
!139 = !DILocation(line: 89, column: 3, scope: !7)
!140 = !DILocation(line: 94, column: 1, scope: !7)
