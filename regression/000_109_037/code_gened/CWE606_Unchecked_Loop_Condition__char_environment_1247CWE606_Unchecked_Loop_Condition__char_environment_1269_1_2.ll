; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_1247CWE606_Unchecked_Loop_Condition__char_environment_1269_1_2.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_1247CWE606_Unchecked_Loop_Condition__char_environment_1269_1_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_1247CWE606_Unchecked_Loop_Condition__char_environment_1269_1_2(i8* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0 = alloca i8*, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataLen_0 = alloca i64, align 8
  %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0 = alloca i32, align 4
  %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0 = alloca i32, align 4
  store i8* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataBuffer_0, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataLen_0, metadata !29, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0, align 8, !dbg !37
  %call = call i64 @strlen(i8* %1) #6, !dbg !38
  store i64 %call, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataLen_0, align 8, !dbg !36
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !39
  store i8* %call1, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0.addr, align 8, !dbg !40
  %2 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0.addr, align 8, !dbg !41
  %cmp = icmp ne i8* %2, null, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0, align 8, !dbg !45
  %4 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataLen_0, align 8, !dbg !47
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !48
  %5 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0.addr, align 8, !dbg !49
  %6 = load i64, i64* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataLen_0, align 8, !dbg !50
  %sub = sub i64 100, %6, !dbg !51
  %sub2 = sub i64 %sub, 1, !dbg !52
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !53
  br label %if.end, !dbg !54

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0, metadata !55, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0, metadata !62, metadata !DIExpression()), !dbg !63
  %7 = load i8*, i8** %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0, align 8, !dbg !64
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0) #7, !dbg !66
  %cmp5 = icmp eq i32 %call4, 1, !dbg !67
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !68

if.then6:                                         ; preds = %if.end
  %8 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0, align 4, !dbg !69
  %cmp7 = icmp slt i32 %8, 10000, !dbg !72
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !73

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0, align 4, !dbg !74
  store i32 0, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0, align 4, !dbg !76
  br label %for.cond, !dbg !78

for.cond:                                         ; preds = %for.inc, %if.then8
  %9 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0, align 4, !dbg !79
  %10 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0, align 4, !dbg !81
  %cmp9 = icmp slt i32 %9, %10, !dbg !82
  br i1 %cmp9, label %for.body, label %for.end, !dbg !83

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0, align 4, !dbg !84
  %inc = add nsw i32 %11, 1, !dbg !84
  store i32 %inc, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0, align 4, !dbg !84
  br label %for.inc, !dbg !86

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0, align 4, !dbg !87
  %inc10 = add nsw i32 %12, 1, !dbg !87
  store i32 %inc10, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0, align 4, !dbg !87
  br label %for.cond, !dbg !88, !llvm.loop !89

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0, align 4, !dbg !92
  call void @printIntLine(i32 %13), !dbg !93
  br label %if.end11, !dbg !94

if.end11:                                         ; preds = %for.end, %if.then6
  br label %if.end12, !dbg !95

if.end12:                                         ; preds = %if.end11, %if.end
  br label %CWE606_Unchecked_Loop_Condition__char_environment_12_bad_label_, !dbg !96

CWE606_Unchecked_Loop_Condition__char_environment_12_bad_label_: ; preds = %if.end12
  call void @llvm.dbg.label(metadata !97), !dbg !98
  ret void, !dbg !99
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_1247CWE606_Unchecked_Loop_Condition__char_environment_1269_1_2.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_037/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_1247CWE606_Unchecked_Loop_Condition__char_environment_1269_1_2", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 125, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 205, scope: !7)
!20 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_data_0", scope: !7, file: !1, line: 5, type: !10)
!21 = !DILocation(line: 5, column: 9, scope: !7)
!22 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataBuffer_0", scope: !7, file: !1, line: 6, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 8, scope: !7)
!27 = !DILocation(line: 7, column: 70, scope: !7)
!28 = !DILocation(line: 7, column: 68, scope: !7)
!29 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_dataLen_0", scope: !30, file: !1, line: 11, type: !33)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 5)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 9, column: 3)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 8, column: 7)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 11, column: 14, scope: !30)
!37 = !DILocation(line: 11, column: 91, scope: !30)
!38 = !DILocation(line: 11, column: 84, scope: !30)
!39 = !DILocation(line: 12, column: 81, scope: !30)
!40 = !DILocation(line: 12, column: 79, scope: !30)
!41 = !DILocation(line: 13, column: 11, scope: !42)
!42 = distinct !DILexicalBlock(scope: !30, file: !1, line: 13, column: 11)
!43 = !DILocation(line: 13, column: 83, scope: !42)
!44 = !DILocation(line: 13, column: 11, scope: !30)
!45 = !DILocation(line: 15, column: 17, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 14, column: 7)
!47 = !DILocation(line: 15, column: 84, scope: !46)
!48 = !DILocation(line: 15, column: 82, scope: !46)
!49 = !DILocation(line: 15, column: 153, scope: !46)
!50 = !DILocation(line: 15, column: 233, scope: !46)
!51 = !DILocation(line: 15, column: 231, scope: !46)
!52 = !DILocation(line: 15, column: 302, scope: !46)
!53 = !DILocation(line: 15, column: 9, scope: !46)
!54 = !DILocation(line: 16, column: 7, scope: !46)
!55 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_i_0", scope: !56, file: !1, line: 43, type: !15)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 42, column: 5)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 41, column: 3)
!58 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 7)
!59 = !DILocation(line: 43, column: 11, scope: !56)
!60 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_n_0", scope: !56, file: !1, line: 44, type: !15)
!61 = !DILocation(line: 44, column: 11, scope: !56)
!62 = !DILocalVariable(name: "_CWE606_Unchecked_Loop_Condition__char_environment_12_bad_intVariable_0", scope: !56, file: !1, line: 45, type: !15)
!63 = !DILocation(line: 45, column: 11, scope: !56)
!64 = !DILocation(line: 46, column: 18, scope: !65)
!65 = distinct !DILexicalBlock(scope: !56, file: !1, line: 46, column: 11)
!66 = !DILocation(line: 46, column: 11, scope: !65)
!67 = !DILocation(line: 46, column: 154, scope: !65)
!68 = !DILocation(line: 46, column: 11, scope: !56)
!69 = !DILocation(line: 48, column: 13, scope: !70)
!70 = distinct !DILexicalBlock(scope: !71, file: !1, line: 48, column: 13)
!71 = distinct !DILexicalBlock(scope: !65, file: !1, line: 47, column: 7)
!72 = !DILocation(line: 48, column: 75, scope: !70)
!73 = !DILocation(line: 48, column: 13, scope: !71)
!74 = !DILocation(line: 50, column: 83, scope: !75)
!75 = distinct !DILexicalBlock(scope: !70, file: !1, line: 49, column: 9)
!76 = !DILocation(line: 51, column: 78, scope: !77)
!77 = distinct !DILexicalBlock(scope: !75, file: !1, line: 51, column: 11)
!78 = !DILocation(line: 51, column: 16, scope: !77)
!79 = !DILocation(line: 51, column: 83, scope: !80)
!80 = distinct !DILexicalBlock(scope: !77, file: !1, line: 51, column: 11)
!81 = !DILocation(line: 51, column: 147, scope: !80)
!82 = !DILocation(line: 51, column: 145, scope: !80)
!83 = !DILocation(line: 51, column: 11, scope: !77)
!84 = !DILocation(line: 53, column: 84, scope: !85)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 52, column: 11)
!86 = !DILocation(line: 54, column: 11, scope: !85)
!87 = !DILocation(line: 51, column: 271, scope: !80)
!88 = !DILocation(line: 51, column: 11, scope: !80)
!89 = distinct !{!89, !83, !90, !91}
!90 = !DILocation(line: 54, column: 11, scope: !77)
!91 = !{!"llvm.loop.mustprogress"}
!92 = !DILocation(line: 56, column: 24, scope: !75)
!93 = !DILocation(line: 56, column: 11, scope: !75)
!94 = !DILocation(line: 57, column: 9, scope: !75)
!95 = !DILocation(line: 59, column: 7, scope: !71)
!96 = !DILocation(line: 25, column: 7, scope: !58)
!97 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_12_bad_label_", file: !1, line: 64)
!98 = !DILocation(line: 64, column: 3, scope: !7)
!99 = !DILocation(line: 69, column: 1, scope: !7)
