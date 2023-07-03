; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_21128CWE606_Unchecked_Loop_Condition__char_environment_21108_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_21128CWE606_Unchecked_Loop_Condition__char_environment_21108_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@goodB2G1Static = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_21128CWE606_Unchecked_Loop_Condition__char_environment_21108_1(i8* %_goodB2G1_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G1_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_data_0 = alloca i8*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodB2G1Sink_i_0 = alloca i32, align 4
  %_goodB2G1Sink_n_0 = alloca i32, align 4
  %_goodB2G1Sink_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G1_environment_0, i8** %_goodB2G1_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G1_data_0, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !29, metadata !DIExpression()), !dbg !34
  %1 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !35
  %call = call i64 @strlen(i8* %1) #6, !dbg !36
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !34
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !37
  store i8* %call1, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !38
  %2 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !39
  %cmp = icmp ne i8* %2, null, !dbg !41
  br i1 %cmp, label %if.then, label %if.end, !dbg !42

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !43
  %4 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !45
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !46
  %5 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !47
  %6 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !48
  %sub = sub i64 100, %6, !dbg !49
  %sub2 = sub i64 %sub, 1, !dbg !50
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !51
  br label %if.end, !dbg !52

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @goodB2G1Static, align 4, !dbg !53
  %7 = load i32, i32* @goodB2G1Static, align 4, !dbg !54
  %tobool = icmp ne i32 %7, 0, !dbg !54
  br i1 %tobool, label %if.then4, label %if.else, !dbg !57

if.then4:                                         ; preds = %if.end
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !58
  br label %if.end12, !dbg !60

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1Sink_i_0, metadata !61, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1Sink_n_0, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1Sink_intVariable_0, metadata !67, metadata !DIExpression()), !dbg !68
  %8 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !69
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodB2G1Sink_n_0) #7, !dbg !71
  %cmp6 = icmp eq i32 %call5, 1, !dbg !72
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !73

if.then7:                                         ; preds = %if.else
  %9 = load i32, i32* %_goodB2G1Sink_n_0, align 4, !dbg !74
  %cmp8 = icmp slt i32 %9, 10000, !dbg !77
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !78

if.then9:                                         ; preds = %if.then7
  store i32 0, i32* %_goodB2G1Sink_intVariable_0, align 4, !dbg !79
  %10 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !81
  %11 = load i32, i32* %_goodB2G1Sink_n_0, align 4, !dbg !82
  call void %10(i32 %11), !dbg !81
  %12 = load i32, i32* %_goodB2G1Sink_intVariable_0, align 4, !dbg !83
  call void @printIntLine(i32 %12), !dbg !84
  br label %if.end10, !dbg !85

if.end10:                                         ; preds = %if.then9, %if.then7
  br label %if.end11, !dbg !86

if.end11:                                         ; preds = %if.end10, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then4
  br label %goodB2G1Sink_label_, !dbg !54

goodB2G1Sink_label_:                              ; preds = %if.end12
  call void @llvm.dbg.label(metadata !87), !dbg !88
  br label %goodB2G1_label_, !dbg !89

goodB2G1_label_:                                  ; preds = %goodB2G1Sink_label_
  call void @llvm.dbg.label(metadata !90), !dbg !91
  ret void, !dbg !92
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

declare dso_local void @printLine(i8*) #5

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_21128CWE606_Unchecked_Loop_Condition__char_environment_21108_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_044/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_21128CWE606_Unchecked_Loop_Condition__char_environment_21108_1", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G1_environment_0", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!17 = !DILocation(line: 4, column: 125, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 4, type: !12)
!19 = !DILocation(line: 4, column: 157, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !7, file: !1, line: 6, type: !10)
!21 = !DILocation(line: 6, column: 9, scope: !7)
!22 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !7, file: !1, line: 7, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 7, column: 8, scope: !7)
!27 = !DILocation(line: 8, column: 22, scope: !7)
!28 = !DILocation(line: 8, column: 20, scope: !7)
!29 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !30, file: !1, line: 10, type: !31)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 3)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 10, column: 12, scope: !30)
!35 = !DILocation(line: 10, column: 41, scope: !30)
!36 = !DILocation(line: 10, column: 34, scope: !30)
!37 = !DILocation(line: 11, column: 31, scope: !30)
!38 = !DILocation(line: 11, column: 29, scope: !30)
!39 = !DILocation(line: 12, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !30, file: !1, line: 12, column: 9)
!41 = !DILocation(line: 12, column: 33, scope: !40)
!42 = !DILocation(line: 12, column: 9, scope: !30)
!43 = !DILocation(line: 14, column: 15, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 13, column: 5)
!45 = !DILocation(line: 14, column: 34, scope: !44)
!46 = !DILocation(line: 14, column: 32, scope: !44)
!47 = !DILocation(line: 14, column: 55, scope: !44)
!48 = !DILocation(line: 14, column: 87, scope: !44)
!49 = !DILocation(line: 14, column: 85, scope: !44)
!50 = !DILocation(line: 14, column: 108, scope: !44)
!51 = !DILocation(line: 14, column: 7, scope: !44)
!52 = !DILocation(line: 15, column: 5, scope: !44)
!53 = !DILocation(line: 18, column: 18, scope: !7)
!54 = !DILocation(line: 20, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 20, column: 9)
!56 = distinct !DILexicalBlock(scope: !7, file: !1, line: 19, column: 3)
!57 = !DILocation(line: 20, column: 9, scope: !56)
!58 = !DILocation(line: 22, column: 7, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 21, column: 5)
!60 = !DILocation(line: 23, column: 5, scope: !59)
!61 = !DILocalVariable(name: "_goodB2G1Sink_i_0", scope: !62, file: !1, line: 27, type: !15)
!62 = distinct !DILexicalBlock(scope: !63, file: !1, line: 26, column: 7)
!63 = distinct !DILexicalBlock(scope: !55, file: !1, line: 25, column: 5)
!64 = !DILocation(line: 27, column: 13, scope: !62)
!65 = !DILocalVariable(name: "_goodB2G1Sink_n_0", scope: !62, file: !1, line: 28, type: !15)
!66 = !DILocation(line: 28, column: 13, scope: !62)
!67 = !DILocalVariable(name: "_goodB2G1Sink_intVariable_0", scope: !62, file: !1, line: 29, type: !15)
!68 = !DILocation(line: 29, column: 13, scope: !62)
!69 = !DILocation(line: 30, column: 20, scope: !70)
!70 = distinct !DILexicalBlock(scope: !62, file: !1, line: 30, column: 13)
!71 = !DILocation(line: 30, column: 13, scope: !70)
!72 = !DILocation(line: 30, column: 64, scope: !70)
!73 = !DILocation(line: 30, column: 13, scope: !62)
!74 = !DILocation(line: 32, column: 15, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 32, column: 15)
!76 = distinct !DILexicalBlock(scope: !70, file: !1, line: 31, column: 9)
!77 = !DILocation(line: 32, column: 33, scope: !75)
!78 = !DILocation(line: 32, column: 15, scope: !76)
!79 = !DILocation(line: 34, column: 41, scope: !80)
!80 = distinct !DILexicalBlock(scope: !75, file: !1, line: 33, column: 11)
!81 = !DILocation(line: 35, column: 13, scope: !80)
!82 = !DILocation(line: 35, column: 20, scope: !80)
!83 = !DILocation(line: 36, column: 26, scope: !80)
!84 = !DILocation(line: 36, column: 13, scope: !80)
!85 = !DILocation(line: 37, column: 11, scope: !80)
!86 = !DILocation(line: 39, column: 9, scope: !76)
!87 = !DILabel(scope: !56, name: "goodB2G1Sink_label_", file: !1, line: 44)
!88 = !DILocation(line: 44, column: 5, scope: !56)
!89 = !DILocation(line: 49, column: 3, scope: !56)
!90 = !DILabel(scope: !7, name: "goodB2G1_label_", file: !1, line: 50)
!91 = !DILocation(line: 50, column: 3, scope: !7)
!92 = !DILocation(line: 55, column: 1, scope: !7)
