; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_22a102CWE606_Unchecked_Loop_Condition__char_environment_22b104_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_22a102CWE606_Unchecked_Loop_Condition__char_environment_22b104_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Global = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_22a102CWE606_Unchecked_Loop_Condition__char_environment_22b104_1(i8* %_goodB2G2_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G2_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_data_0 = alloca i8*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G2_environment_0, i8** %_goodB2G2_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G2_data_0, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !29, metadata !DIExpression()), !dbg !34
  %1 = load i8*, i8** %_goodB2G2_data_0, align 8, !dbg !35
  %call = call i64 @strlen(i8* %1) #6, !dbg !36
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !34
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !37
  store i8* %call1, i8** %_goodB2G2_environment_0.addr, align 8, !dbg !38
  %2 = load i8*, i8** %_goodB2G2_environment_0.addr, align 8, !dbg !39
  %cmp = icmp ne i8* %2, null, !dbg !41
  br i1 %cmp, label %if.then, label %if.end, !dbg !42

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G2_data_0, align 8, !dbg !43
  %4 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !45
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !46
  %5 = load i8*, i8** %_goodB2G2_environment_0.addr, align 8, !dbg !47
  %6 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !48
  %sub = sub i64 100, %6, !dbg !49
  %sub2 = sub i64 %sub, 1, !dbg !50
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !51
  br label %if.end, !dbg !52

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Global, align 4, !dbg !53
  %7 = load i32, i32* @CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Global, align 4, !dbg !54
  %tobool = icmp ne i32 %7, 0, !dbg !54
  br i1 %tobool, label %if.then4, label %if.end12, !dbg !57

if.then4:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_i_0, metadata !58, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_n_0, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_intVariable_0, metadata !64, metadata !DIExpression()), !dbg !65
  %8 = load i8*, i8** %_goodB2G2_data_0, align 8, !dbg !66
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_n_0) #7, !dbg !68
  %cmp6 = icmp eq i32 %call5, 1, !dbg !69
  br i1 %cmp6, label %if.then7, label %if.end11, !dbg !70

if.then7:                                         ; preds = %if.then4
  %9 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_n_0, align 4, !dbg !71
  %cmp8 = icmp slt i32 %9, 10000, !dbg !74
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !75

if.then9:                                         ; preds = %if.then7
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_intVariable_0, align 4, !dbg !76
  %10 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !78
  %11 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_n_0, align 4, !dbg !79
  call void %10(i32 %11), !dbg !78
  %12 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_intVariable_0, align 4, !dbg !80
  call void @printIntLine(i32 %12), !dbg !81
  br label %if.end10, !dbg !82

if.end10:                                         ; preds = %if.then9, %if.then7
  br label %if.end11, !dbg !83

if.end11:                                         ; preds = %if.end10, %if.then4
  br label %if.end12, !dbg !84

if.end12:                                         ; preds = %if.end11, %if.end
  br label %CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_label_, !dbg !54

CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_label_: ; preds = %if.end12
  call void @llvm.dbg.label(metadata !85), !dbg !86
  br label %goodB2G2_label_, !dbg !87

goodB2G2_label_:                                  ; preds = %CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_label_
  call void @llvm.dbg.label(metadata !88), !dbg !89
  ret void, !dbg !90
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_22a102CWE606_Unchecked_Loop_Condition__char_environment_22b104_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_045/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_22a102CWE606_Unchecked_Loop_Condition__char_environment_22b104_1", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G2_environment_0", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!17 = !DILocation(line: 4, column: 127, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 4, type: !12)
!19 = !DILocation(line: 4, column: 159, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G2_data_0", scope: !7, file: !1, line: 6, type: !10)
!21 = !DILocation(line: 6, column: 9, scope: !7)
!22 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !7, file: !1, line: 7, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 7, column: 8, scope: !7)
!27 = !DILocation(line: 8, column: 22, scope: !7)
!28 = !DILocation(line: 8, column: 20, scope: !7)
!29 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !30, file: !1, line: 10, type: !31)
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
!53 = !DILocation(line: 18, column: 71, scope: !7)
!54 = !DILocation(line: 20, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 20, column: 9)
!56 = distinct !DILexicalBlock(scope: !7, file: !1, line: 19, column: 3)
!57 = !DILocation(line: 20, column: 9, scope: !56)
!58 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_i_0", scope: !59, file: !1, line: 23, type: !15)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 22, column: 7)
!60 = distinct !DILexicalBlock(scope: !55, file: !1, line: 21, column: 5)
!61 = !DILocation(line: 23, column: 13, scope: !59)
!62 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_n_0", scope: !59, file: !1, line: 24, type: !15)
!63 = !DILocation(line: 24, column: 13, scope: !59)
!64 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_intVariable_0", scope: !59, file: !1, line: 25, type: !15)
!65 = !DILocation(line: 25, column: 13, scope: !59)
!66 = !DILocation(line: 26, column: 20, scope: !67)
!67 = distinct !DILexicalBlock(scope: !59, file: !1, line: 26, column: 13)
!68 = !DILocation(line: 26, column: 13, scope: !67)
!69 = !DILocation(line: 26, column: 117, scope: !67)
!70 = !DILocation(line: 26, column: 13, scope: !59)
!71 = !DILocation(line: 28, column: 15, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 28, column: 15)
!73 = distinct !DILexicalBlock(scope: !67, file: !1, line: 27, column: 9)
!74 = !DILocation(line: 28, column: 86, scope: !72)
!75 = !DILocation(line: 28, column: 15, scope: !73)
!76 = !DILocation(line: 30, column: 94, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 29, column: 11)
!78 = !DILocation(line: 31, column: 13, scope: !77)
!79 = !DILocation(line: 31, column: 20, scope: !77)
!80 = !DILocation(line: 32, column: 26, scope: !77)
!81 = !DILocation(line: 32, column: 13, scope: !77)
!82 = !DILocation(line: 33, column: 11, scope: !77)
!83 = !DILocation(line: 35, column: 9, scope: !73)
!84 = !DILocation(line: 38, column: 5, scope: !60)
!85 = !DILabel(scope: !56, name: "CWE606_Unchecked_Loop_Condition__char_environment_22_goodB2G2Sink_label_", file: !1, line: 40)
!86 = !DILocation(line: 40, column: 5, scope: !56)
!87 = !DILocation(line: 45, column: 3, scope: !56)
!88 = !DILabel(scope: !7, name: "goodB2G2_label_", file: !1, line: 46)
!89 = !DILocation(line: 46, column: 3, scope: !7)
!90 = !DILocation(line: 51, column: 1, scope: !7)
