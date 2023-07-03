; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_1888CWE606_Unchecked_Loop_Condition__char_environment_18135_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_1888CWE606_Unchecked_Loop_Condition__char_environment_18135_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_1888CWE606_Unchecked_Loop_Condition__char_environment_18135_1(i8* %_goodB2G_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i8*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_n_0 = alloca i32, align 4
  %_goodG2B_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_environment_0, i8** %_goodB2G_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !23, metadata !DIExpression()), !dbg !27
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !27
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !28
  store i8* %arraydecay, i8** %_goodB2G_data_0, align 8, !dbg !29
  br label %goodB2G_source, !dbg !30

goodB2G_source:                                   ; preds = %entry
  call void @llvm.dbg.label(metadata !31), !dbg !32
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !33, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !39
  %call = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !38
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !41
  store i8* %call1, i8** %_goodB2G_environment_0.addr, align 8, !dbg !42
  %2 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !43
  %cmp = icmp ne i8* %2, null, !dbg !45
  br i1 %cmp, label %if.then, label %if.end, !dbg !46

if.then:                                          ; preds = %goodB2G_source
  %3 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !47
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !50
  %5 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !51
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !52
  %sub = sub i64 100, %6, !dbg !53
  %sub2 = sub i64 %sub, 1, !dbg !54
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !55
  br label %if.end, !dbg !56

if.end:                                           ; preds = %if.then, %goodB2G_source
  br label %goodB2G_sink, !dbg !57

goodB2G_sink:                                     ; preds = %if.end
  call void @llvm.dbg.label(metadata !58), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !60, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !63, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !65, metadata !DIExpression()), !dbg !66
  %7 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !67
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !69
  %cmp5 = icmp eq i32 %call4, 1, !dbg !70
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !71

if.then6:                                         ; preds = %goodB2G_sink
  %8 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !72
  %cmp7 = icmp slt i32 %8, 10000, !dbg !75
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !76

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !77
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !79
  br label %for.cond, !dbg !81

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !82
  %10 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !84
  %cmp9 = icmp slt i32 %9, %10, !dbg !85
  br i1 %cmp9, label %for.body, label %for.end, !dbg !86

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !87
  %inc = add nsw i32 %11, 1, !dbg !87
  store i32 %inc, i32* %_goodB2G_intVariable_0, align 4, !dbg !87
  br label %for.inc, !dbg !89

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !90
  %inc10 = add nsw i32 %12, 1, !dbg !90
  store i32 %inc10, i32* %_goodB2G_i_0, align 4, !dbg !90
  br label %for.cond, !dbg !91, !llvm.loop !92

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !95
  call void @printIntLine(i32 %13), !dbg !96
  br label %if.end11, !dbg !97

if.end11:                                         ; preds = %for.end, %if.then6
  br label %if.end12, !dbg !98

if.end12:                                         ; preds = %if.end11, %goodB2G_sink
  br label %goodB2G_label_, !dbg !99

goodB2G_label_:                                   ; preds = %if.end12
  call void @llvm.dbg.label(metadata !100), !dbg !101
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !102, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !105, metadata !DIExpression()), !dbg !106
  %14 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !106
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 100, i1 false), !dbg !106
  %arraydecay13 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !107
  store i8* %arraydecay13, i8** %_goodG2B_data_0, align 8, !dbg !108
  br label %goodG2B_source, !dbg !109

goodG2B_source:                                   ; preds = %goodB2G_label_
  call void @llvm.dbg.label(metadata !110), !dbg !111
  %15 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !112
  %call14 = call i8* @strcpy(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !114
  br label %goodG2B_sink, !dbg !115

goodG2B_sink:                                     ; preds = %goodG2B_source
  call void @llvm.dbg.label(metadata !116), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !118, metadata !DIExpression()), !dbg !120
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !121, metadata !DIExpression()), !dbg !122
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !123, metadata !DIExpression()), !dbg !124
  %16 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !125
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0) #7, !dbg !127
  %cmp16 = icmp eq i32 %call15, 1, !dbg !128
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !129

if.then17:                                        ; preds = %goodG2B_sink
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !130
  %17 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !132
  %18 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !133
  call void %17(i32 %18), !dbg !132
  %19 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !134
  call void @printIntLine(i32 %19), !dbg !135
  br label %if.end18, !dbg !136

if.end18:                                         ; preds = %if.then17, %goodG2B_sink
  br label %goodG2B_label_, !dbg !137

goodG2B_label_:                                   ; preds = %if.end18
  call void @llvm.dbg.label(metadata !138), !dbg !139
  br label %CWE606_Unchecked_Loop_Condition__char_environment_18_good_label_, !dbg !140

CWE606_Unchecked_Loop_Condition__char_environment_18_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !141), !dbg !142
  ret void, !dbg !143
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #5

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_1888CWE606_Unchecked_Loop_Condition__char_environment_18135_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_043/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_1888CWE606_Unchecked_Loop_Condition__char_environment_18135_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 124, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 155, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G_data_0", scope: !21, file: !1, line: 6, type: !10)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!22 = !DILocation(line: 6, column: 11, scope: !21)
!23 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !21, file: !1, line: 7, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 7, column: 10, scope: !21)
!28 = !DILocation(line: 8, column: 23, scope: !21)
!29 = !DILocation(line: 8, column: 21, scope: !21)
!30 = !DILocation(line: 9, column: 5, scope: !21)
!31 = !DILabel(scope: !21, name: "goodB2G_source", file: !1, line: 10)
!32 = !DILocation(line: 10, column: 5, scope: !21)
!33 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !34, file: !1, line: 12, type: !35)
!34 = distinct !DILexicalBlock(scope: !21, file: !1, line: 11, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 12, column: 14, scope: !34)
!39 = !DILocation(line: 12, column: 42, scope: !34)
!40 = !DILocation(line: 12, column: 35, scope: !34)
!41 = !DILocation(line: 13, column: 32, scope: !34)
!42 = !DILocation(line: 13, column: 30, scope: !34)
!43 = !DILocation(line: 14, column: 11, scope: !44)
!44 = distinct !DILexicalBlock(scope: !34, file: !1, line: 14, column: 11)
!45 = !DILocation(line: 14, column: 34, scope: !44)
!46 = !DILocation(line: 14, column: 11, scope: !34)
!47 = !DILocation(line: 16, column: 17, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 15, column: 7)
!49 = !DILocation(line: 16, column: 35, scope: !48)
!50 = !DILocation(line: 16, column: 33, scope: !48)
!51 = !DILocation(line: 16, column: 55, scope: !48)
!52 = !DILocation(line: 16, column: 86, scope: !48)
!53 = !DILocation(line: 16, column: 84, scope: !48)
!54 = !DILocation(line: 16, column: 106, scope: !48)
!55 = !DILocation(line: 16, column: 9, scope: !48)
!56 = !DILocation(line: 17, column: 7, scope: !48)
!57 = !DILocation(line: 21, column: 5, scope: !21)
!58 = !DILabel(scope: !21, name: "goodB2G_sink", file: !1, line: 22)
!59 = !DILocation(line: 22, column: 5, scope: !21)
!60 = !DILocalVariable(name: "_goodB2G_i_0", scope: !61, file: !1, line: 24, type: !15)
!61 = distinct !DILexicalBlock(scope: !21, file: !1, line: 23, column: 5)
!62 = !DILocation(line: 24, column: 11, scope: !61)
!63 = !DILocalVariable(name: "_goodB2G_n_0", scope: !61, file: !1, line: 25, type: !15)
!64 = !DILocation(line: 25, column: 11, scope: !61)
!65 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !61, file: !1, line: 26, type: !15)
!66 = !DILocation(line: 26, column: 11, scope: !61)
!67 = !DILocation(line: 27, column: 18, scope: !68)
!68 = distinct !DILexicalBlock(scope: !61, file: !1, line: 27, column: 11)
!69 = !DILocation(line: 27, column: 11, scope: !68)
!70 = !DILocation(line: 27, column: 56, scope: !68)
!71 = !DILocation(line: 27, column: 11, scope: !61)
!72 = !DILocation(line: 29, column: 13, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 29, column: 13)
!74 = distinct !DILexicalBlock(scope: !68, file: !1, line: 28, column: 7)
!75 = !DILocation(line: 29, column: 26, scope: !73)
!76 = !DILocation(line: 29, column: 13, scope: !74)
!77 = !DILocation(line: 31, column: 34, scope: !78)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 30, column: 9)
!79 = !DILocation(line: 32, column: 29, scope: !80)
!80 = distinct !DILexicalBlock(scope: !78, file: !1, line: 32, column: 11)
!81 = !DILocation(line: 32, column: 16, scope: !80)
!82 = !DILocation(line: 32, column: 34, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !1, line: 32, column: 11)
!84 = !DILocation(line: 32, column: 49, scope: !83)
!85 = !DILocation(line: 32, column: 47, scope: !83)
!86 = !DILocation(line: 32, column: 11, scope: !80)
!87 = !DILocation(line: 34, column: 35, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 33, column: 11)
!89 = !DILocation(line: 35, column: 11, scope: !88)
!90 = !DILocation(line: 32, column: 75, scope: !83)
!91 = !DILocation(line: 32, column: 11, scope: !83)
!92 = distinct !{!92, !86, !93, !94}
!93 = !DILocation(line: 35, column: 11, scope: !80)
!94 = !{!"llvm.loop.mustprogress"}
!95 = !DILocation(line: 37, column: 24, scope: !78)
!96 = !DILocation(line: 37, column: 11, scope: !78)
!97 = !DILocation(line: 38, column: 9, scope: !78)
!98 = !DILocation(line: 40, column: 7, scope: !74)
!99 = !DILocation(line: 42, column: 5, scope: !61)
!100 = !DILabel(scope: !21, name: "goodB2G_label_", file: !1, line: 44)
!101 = !DILocation(line: 44, column: 5, scope: !21)
!102 = !DILocalVariable(name: "_goodG2B_data_0", scope: !103, file: !1, line: 51, type: !10)
!103 = distinct !DILexicalBlock(scope: !7, file: !1, line: 50, column: 3)
!104 = !DILocation(line: 51, column: 11, scope: !103)
!105 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !103, file: !1, line: 52, type: !24)
!106 = !DILocation(line: 52, column: 10, scope: !103)
!107 = !DILocation(line: 53, column: 23, scope: !103)
!108 = !DILocation(line: 53, column: 21, scope: !103)
!109 = !DILocation(line: 54, column: 5, scope: !103)
!110 = !DILabel(scope: !103, name: "goodG2B_source", file: !1, line: 55)
!111 = !DILocation(line: 55, column: 5, scope: !103)
!112 = !DILocation(line: 57, column: 14, scope: !113)
!113 = distinct !DILexicalBlock(scope: !103, file: !1, line: 56, column: 5)
!114 = !DILocation(line: 57, column: 7, scope: !113)
!115 = !DILocation(line: 60, column: 5, scope: !103)
!116 = !DILabel(scope: !103, name: "goodG2B_sink", file: !1, line: 61)
!117 = !DILocation(line: 61, column: 5, scope: !103)
!118 = !DILocalVariable(name: "_goodG2B_i_0", scope: !119, file: !1, line: 63, type: !15)
!119 = distinct !DILexicalBlock(scope: !103, file: !1, line: 62, column: 5)
!120 = !DILocation(line: 63, column: 11, scope: !119)
!121 = !DILocalVariable(name: "_goodG2B_n_0", scope: !119, file: !1, line: 64, type: !15)
!122 = !DILocation(line: 64, column: 11, scope: !119)
!123 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !119, file: !1, line: 65, type: !15)
!124 = !DILocation(line: 65, column: 11, scope: !119)
!125 = !DILocation(line: 66, column: 18, scope: !126)
!126 = distinct !DILexicalBlock(scope: !119, file: !1, line: 66, column: 11)
!127 = !DILocation(line: 66, column: 11, scope: !126)
!128 = !DILocation(line: 66, column: 56, scope: !126)
!129 = !DILocation(line: 66, column: 11, scope: !119)
!130 = !DILocation(line: 68, column: 32, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !1, line: 67, column: 7)
!132 = !DILocation(line: 69, column: 9, scope: !131)
!133 = !DILocation(line: 69, column: 16, scope: !131)
!134 = !DILocation(line: 70, column: 22, scope: !131)
!135 = !DILocation(line: 70, column: 9, scope: !131)
!136 = !DILocation(line: 71, column: 7, scope: !131)
!137 = !DILocation(line: 73, column: 5, scope: !119)
!138 = !DILabel(scope: !103, name: "goodG2B_label_", file: !1, line: 75)
!139 = !DILocation(line: 75, column: 5, scope: !103)
!140 = !DILocation(line: 80, column: 3, scope: !103)
!141 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_18_good_label_", file: !1, line: 81)
!142 = !DILocation(line: 81, column: 3, scope: !7)
!143 = !DILocation(line: 86, column: 1, scope: !7)
