; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_1778CWE134_Uncontrolled_Format_String__char_environment_printf_17109_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_1778CWE134_Uncontrolled_Format_String__char_environment_printf_17109_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_1778CWE134_Uncontrolled_Format_String__char_environment_printf_17109_1(i8* %_goodB2G_environment_0, void (i8*)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_k_0 = alloca i32, align 4
  %_goodB2G_data_0 = alloca i8*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodG2B_h_0 = alloca i32, align 4
  %_goodG2B_j_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_goodB2G_environment_0, i8** %_goodB2G_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_environment_0.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !19, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_k_0, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !27, metadata !DIExpression()), !dbg !31
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !31
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !31
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !32
  store i8* %arraydecay, i8** %_goodB2G_data_0, align 8, !dbg !33
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !34
  br label %for.cond, !dbg !36

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !37
  %cmp = icmp slt i32 %1, 1, !dbg !39
  br i1 %cmp, label %for.body, label %for.end, !dbg !40

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !41, metadata !DIExpression()), !dbg !47
  %2 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !48
  %call = call i64 @strlen(i8* %2) #6, !dbg !49
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !47
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !50
  store i8* %call1, i8** %_goodB2G_environment_0.addr, align 8, !dbg !51
  %3 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !52
  %cmp2 = icmp ne i8* %3, null, !dbg !54
  br i1 %cmp2, label %if.then, label %if.end, !dbg !55

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !56
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !58
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !59
  %6 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !60
  %7 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !61
  %sub = sub i64 100, %7, !dbg !62
  %sub3 = sub i64 %sub, 1, !dbg !63
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !64
  br label %if.end, !dbg !65

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !66

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !67
  %inc = add nsw i32 %8, 1, !dbg !67
  store i32 %inc, i32* %_goodB2G_i_0, align 4, !dbg !67
  br label %for.cond, !dbg !68, !llvm.loop !69

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %_goodB2G_k_0, align 4, !dbg !72
  br label %for.cond5, !dbg !74

for.cond5:                                        ; preds = %for.inc9, %for.end
  %9 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !75
  %cmp6 = icmp slt i32 %9, 1, !dbg !77
  br i1 %cmp6, label %for.body7, label %for.end11, !dbg !78

for.body7:                                        ; preds = %for.cond5
  %10 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !79
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %10), !dbg !81
  br label %for.inc9, !dbg !82

for.inc9:                                         ; preds = %for.body7
  %11 = load i32, i32* %_goodB2G_k_0, align 4, !dbg !83
  %inc10 = add nsw i32 %11, 1, !dbg !83
  store i32 %inc10, i32* %_goodB2G_k_0, align 4, !dbg !83
  br label %for.cond5, !dbg !84, !llvm.loop !85

for.end11:                                        ; preds = %for.cond5
  br label %goodB2G_label_, !dbg !86

goodB2G_label_:                                   ; preds = %for.end11
  call void @llvm.dbg.label(metadata !87), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_h_0, metadata !89, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_j_0, metadata !92, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !94, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !96, metadata !DIExpression()), !dbg !97
  %12 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !97
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 100, i1 false), !dbg !97
  %arraydecay12 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !98
  store i8* %arraydecay12, i8** %_goodG2B_data_0, align 8, !dbg !99
  store i32 0, i32* %_goodG2B_h_0, align 4, !dbg !100
  br label %for.cond13, !dbg !102

for.cond13:                                       ; preds = %for.inc17, %goodB2G_label_
  %13 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !103
  %cmp14 = icmp slt i32 %13, 1, !dbg !105
  br i1 %cmp14, label %for.body15, label %for.end19, !dbg !106

for.body15:                                       ; preds = %for.cond13
  %14 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !107
  %call16 = call i8* @strcpy(i8* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !109
  br label %for.inc17, !dbg !110

for.inc17:                                        ; preds = %for.body15
  %15 = load i32, i32* %_goodG2B_h_0, align 4, !dbg !111
  %inc18 = add nsw i32 %15, 1, !dbg !111
  store i32 %inc18, i32* %_goodG2B_h_0, align 4, !dbg !111
  br label %for.cond13, !dbg !112, !llvm.loop !113

for.end19:                                        ; preds = %for.cond13
  store i32 0, i32* %_goodG2B_j_0, align 4, !dbg !115
  br label %for.cond20, !dbg !117

for.cond20:                                       ; preds = %for.inc23, %for.end19
  %16 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !118
  %cmp21 = icmp slt i32 %16, 1, !dbg !120
  br i1 %cmp21, label %for.body22, label %for.end25, !dbg !121

for.body22:                                       ; preds = %for.cond20
  %17 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !122
  %18 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !124
  call void %17(i8* %18), !dbg !122
  br label %for.inc23, !dbg !125

for.inc23:                                        ; preds = %for.body22
  %19 = load i32, i32* %_goodG2B_j_0, align 4, !dbg !126
  %inc24 = add nsw i32 %19, 1, !dbg !126
  store i32 %inc24, i32* %_goodG2B_j_0, align 4, !dbg !126
  br label %for.cond20, !dbg !127, !llvm.loop !128

for.end25:                                        ; preds = %for.cond20
  br label %goodG2B_label_, !dbg !129

goodG2B_label_:                                   ; preds = %for.end25
  call void @llvm.dbg.label(metadata !130), !dbg !131
  br label %CWE134_Uncontrolled_Format_String__char_environment_printf_17_good_label_, !dbg !132

CWE134_Uncontrolled_Format_String__char_environment_printf_17_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !133), !dbg !134
  ret void, !dbg !135
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

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_1778CWE134_Uncontrolled_Format_String__char_environment_printf_17109_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_738/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_1778CWE134_Uncontrolled_Format_String__char_environment_printf_17109_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !10}
!15 = !DILocalVariable(name: "_goodB2G_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!16 = !DILocation(line: 3, column: 142, scope: !7)
!17 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 173, scope: !7)
!19 = !DILocalVariable(name: "_goodB2G_i_0", scope: !20, file: !1, line: 6, type: !21)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DILocation(line: 6, column: 9, scope: !20)
!23 = !DILocalVariable(name: "_goodB2G_k_0", scope: !20, file: !1, line: 7, type: !21)
!24 = !DILocation(line: 7, column: 9, scope: !20)
!25 = !DILocalVariable(name: "_goodB2G_data_0", scope: !20, file: !1, line: 8, type: !10)
!26 = !DILocation(line: 8, column: 11, scope: !20)
!27 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !20, file: !1, line: 9, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 100)
!31 = !DILocation(line: 9, column: 10, scope: !20)
!32 = !DILocation(line: 10, column: 23, scope: !20)
!33 = !DILocation(line: 10, column: 21, scope: !20)
!34 = !DILocation(line: 11, column: 23, scope: !35)
!35 = distinct !DILexicalBlock(scope: !20, file: !1, line: 11, column: 5)
!36 = !DILocation(line: 11, column: 10, scope: !35)
!37 = !DILocation(line: 11, column: 28, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 11, column: 5)
!39 = !DILocation(line: 11, column: 41, scope: !38)
!40 = !DILocation(line: 11, column: 5, scope: !35)
!41 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !42, file: !1, line: 14, type: !44)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 13, column: 7)
!43 = distinct !DILexicalBlock(scope: !38, file: !1, line: 12, column: 5)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 46, baseType: !46)
!45 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!46 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!47 = !DILocation(line: 14, column: 16, scope: !42)
!48 = !DILocation(line: 14, column: 44, scope: !42)
!49 = !DILocation(line: 14, column: 37, scope: !42)
!50 = !DILocation(line: 15, column: 34, scope: !42)
!51 = !DILocation(line: 15, column: 32, scope: !42)
!52 = !DILocation(line: 16, column: 13, scope: !53)
!53 = distinct !DILexicalBlock(scope: !42, file: !1, line: 16, column: 13)
!54 = !DILocation(line: 16, column: 36, scope: !53)
!55 = !DILocation(line: 16, column: 13, scope: !42)
!56 = !DILocation(line: 18, column: 19, scope: !57)
!57 = distinct !DILexicalBlock(scope: !53, file: !1, line: 17, column: 9)
!58 = !DILocation(line: 18, column: 37, scope: !57)
!59 = !DILocation(line: 18, column: 35, scope: !57)
!60 = !DILocation(line: 18, column: 57, scope: !57)
!61 = !DILocation(line: 18, column: 88, scope: !57)
!62 = !DILocation(line: 18, column: 86, scope: !57)
!63 = !DILocation(line: 18, column: 108, scope: !57)
!64 = !DILocation(line: 18, column: 11, scope: !57)
!65 = !DILocation(line: 19, column: 9, scope: !57)
!66 = !DILocation(line: 22, column: 5, scope: !43)
!67 = !DILocation(line: 11, column: 58, scope: !38)
!68 = !DILocation(line: 11, column: 5, scope: !38)
!69 = distinct !{!69, !40, !70, !71}
!70 = !DILocation(line: 22, column: 5, scope: !35)
!71 = !{!"llvm.loop.mustprogress"}
!72 = !DILocation(line: 24, column: 23, scope: !73)
!73 = distinct !DILexicalBlock(scope: !20, file: !1, line: 24, column: 5)
!74 = !DILocation(line: 24, column: 10, scope: !73)
!75 = !DILocation(line: 24, column: 28, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !1, line: 24, column: 5)
!77 = !DILocation(line: 24, column: 41, scope: !76)
!78 = !DILocation(line: 24, column: 5, scope: !73)
!79 = !DILocation(line: 26, column: 22, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !1, line: 25, column: 5)
!81 = !DILocation(line: 26, column: 7, scope: !80)
!82 = !DILocation(line: 27, column: 5, scope: !80)
!83 = !DILocation(line: 24, column: 58, scope: !76)
!84 = !DILocation(line: 24, column: 5, scope: !76)
!85 = distinct !{!85, !78, !86, !71}
!86 = !DILocation(line: 27, column: 5, scope: !73)
!87 = !DILabel(scope: !20, name: "goodB2G_label_", file: !1, line: 29)
!88 = !DILocation(line: 29, column: 5, scope: !20)
!89 = !DILocalVariable(name: "_goodG2B_h_0", scope: !90, file: !1, line: 36, type: !21)
!90 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 3)
!91 = !DILocation(line: 36, column: 9, scope: !90)
!92 = !DILocalVariable(name: "_goodG2B_j_0", scope: !90, file: !1, line: 37, type: !21)
!93 = !DILocation(line: 37, column: 9, scope: !90)
!94 = !DILocalVariable(name: "_goodG2B_data_0", scope: !90, file: !1, line: 38, type: !10)
!95 = !DILocation(line: 38, column: 11, scope: !90)
!96 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !90, file: !1, line: 39, type: !28)
!97 = !DILocation(line: 39, column: 10, scope: !90)
!98 = !DILocation(line: 40, column: 23, scope: !90)
!99 = !DILocation(line: 40, column: 21, scope: !90)
!100 = !DILocation(line: 41, column: 23, scope: !101)
!101 = distinct !DILexicalBlock(scope: !90, file: !1, line: 41, column: 5)
!102 = !DILocation(line: 41, column: 10, scope: !101)
!103 = !DILocation(line: 41, column: 28, scope: !104)
!104 = distinct !DILexicalBlock(scope: !101, file: !1, line: 41, column: 5)
!105 = !DILocation(line: 41, column: 41, scope: !104)
!106 = !DILocation(line: 41, column: 5, scope: !101)
!107 = !DILocation(line: 43, column: 14, scope: !108)
!108 = distinct !DILexicalBlock(scope: !104, file: !1, line: 42, column: 5)
!109 = !DILocation(line: 43, column: 7, scope: !108)
!110 = !DILocation(line: 44, column: 5, scope: !108)
!111 = !DILocation(line: 41, column: 58, scope: !104)
!112 = !DILocation(line: 41, column: 5, scope: !104)
!113 = distinct !{!113, !106, !114, !71}
!114 = !DILocation(line: 44, column: 5, scope: !101)
!115 = !DILocation(line: 46, column: 23, scope: !116)
!116 = distinct !DILexicalBlock(scope: !90, file: !1, line: 46, column: 5)
!117 = !DILocation(line: 46, column: 10, scope: !116)
!118 = !DILocation(line: 46, column: 28, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 46, column: 5)
!120 = !DILocation(line: 46, column: 41, scope: !119)
!121 = !DILocation(line: 46, column: 5, scope: !116)
!122 = !DILocation(line: 48, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 47, column: 5)
!124 = !DILocation(line: 48, column: 14, scope: !123)
!125 = !DILocation(line: 49, column: 5, scope: !123)
!126 = !DILocation(line: 46, column: 58, scope: !119)
!127 = !DILocation(line: 46, column: 5, scope: !119)
!128 = distinct !{!128, !121, !129, !71}
!129 = !DILocation(line: 49, column: 5, scope: !116)
!130 = !DILabel(scope: !90, name: "goodG2B_label_", file: !1, line: 51)
!131 = !DILocation(line: 51, column: 5, scope: !90)
!132 = !DILocation(line: 56, column: 3, scope: !90)
!133 = !DILabel(scope: !7, name: "CWE134_Uncontrolled_Format_String__char_environment_printf_17_good_label_", file: !1, line: 57)
!134 = !DILocation(line: 57, column: 3, scope: !7)
!135 = !DILocation(line: 62, column: 1, scope: !7)
