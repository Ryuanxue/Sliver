; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_41137CWE606_Unchecked_Loop_Condition__char_environment_4187_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_41137CWE606_Unchecked_Loop_Condition__char_environment_4187_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_41137CWE606_Unchecked_Loop_Condition__char_environment_4187_1(i8* %_goodB2G_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i8*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2BSink_i_0 = alloca i32, align 4
  %_goodG2BSink_n_0 = alloca i32, align 4
  %_goodG2BSink_intVariable_0 = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !30, metadata !DIExpression()), !dbg !35
  %1 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !36
  %call = call i64 @strlen(i8* %1) #6, !dbg !37
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !35
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !38
  store i8* %call1, i8** %_goodB2G_environment_0.addr, align 8, !dbg !39
  %2 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !40
  %cmp = icmp ne i8* %2, null, !dbg !42
  br i1 %cmp, label %if.then, label %if.end, !dbg !43

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !44
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !46
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !47
  %5 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !48
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !49
  %sub = sub i64 100, %6, !dbg !50
  %sub2 = sub i64 %sub, 1, !dbg !51
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !52
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !54
  call void @goodB2GSink(i8* %7), !dbg !55
  br label %goodB2G_label_, !dbg !55

goodB2G_label_:                                   ; preds = %if.end
  call void @llvm.dbg.label(metadata !56), !dbg !57
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !58, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !61, metadata !DIExpression()), !dbg !62
  %8 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !62
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 100, i1 false), !dbg !62
  %arraydecay4 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !63
  store i8* %arraydecay4, i8** %_goodG2B_data_0, align 8, !dbg !64
  %9 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !65
  %call5 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %_goodG2BSink_i_0, metadata !67, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %_goodG2BSink_n_0, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %_goodG2BSink_intVariable_0, metadata !73, metadata !DIExpression()), !dbg !74
  %10 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !75
  %call6 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodG2BSink_n_0) #7, !dbg !77
  %cmp7 = icmp eq i32 %call6, 1, !dbg !78
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !79

if.then8:                                         ; preds = %goodB2G_label_
  store i32 0, i32* %_goodG2BSink_intVariable_0, align 4, !dbg !80
  %11 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !82
  %12 = load i32, i32* %_goodG2BSink_n_0, align 4, !dbg !83
  call void %11(i32 %12), !dbg !82
  %13 = load i32, i32* %_goodG2BSink_intVariable_0, align 4, !dbg !84
  call void @printIntLine(i32 %13), !dbg !85
  br label %if.end9, !dbg !86

if.end9:                                          ; preds = %if.then8, %goodB2G_label_
  br label %goodG2BSink_label_, !dbg !87

goodG2BSink_label_:                               ; preds = %if.end9
  call void @llvm.dbg.label(metadata !88), !dbg !89
  br label %goodG2B_label_, !dbg !90

goodG2B_label_:                                   ; preds = %goodG2BSink_label_
  call void @llvm.dbg.label(metadata !91), !dbg !92
  br label %CWE606_Unchecked_Loop_Condition__char_environment_41_good_label_, !dbg !93

CWE606_Unchecked_Loop_Condition__char_environment_41_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !94), !dbg !95
  ret void, !dbg !96
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

declare dso_local void @goodB2GSink(i8*) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #5

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_41137CWE606_Unchecked_Loop_Condition__char_environment_4187_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_050/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_41137CWE606_Unchecked_Loop_Condition__char_environment_4187_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!30 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !31, file: !1, line: 10, type: !32)
!31 = distinct !DILexicalBlock(scope: !21, file: !1, line: 9, column: 5)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 10, column: 14, scope: !31)
!36 = !DILocation(line: 10, column: 42, scope: !31)
!37 = !DILocation(line: 10, column: 35, scope: !31)
!38 = !DILocation(line: 11, column: 32, scope: !31)
!39 = !DILocation(line: 11, column: 30, scope: !31)
!40 = !DILocation(line: 12, column: 11, scope: !41)
!41 = distinct !DILexicalBlock(scope: !31, file: !1, line: 12, column: 11)
!42 = !DILocation(line: 12, column: 34, scope: !41)
!43 = !DILocation(line: 12, column: 11, scope: !31)
!44 = !DILocation(line: 14, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !41, file: !1, line: 13, column: 7)
!46 = !DILocation(line: 14, column: 35, scope: !45)
!47 = !DILocation(line: 14, column: 33, scope: !45)
!48 = !DILocation(line: 14, column: 55, scope: !45)
!49 = !DILocation(line: 14, column: 86, scope: !45)
!50 = !DILocation(line: 14, column: 84, scope: !45)
!51 = !DILocation(line: 14, column: 106, scope: !45)
!52 = !DILocation(line: 14, column: 9, scope: !45)
!53 = !DILocation(line: 15, column: 7, scope: !45)
!54 = !DILocation(line: 18, column: 17, scope: !21)
!55 = !DILocation(line: 18, column: 5, scope: !21)
!56 = !DILabel(scope: !21, name: "goodB2G_label_", file: !1, line: 19)
!57 = !DILocation(line: 19, column: 5, scope: !21)
!58 = !DILocalVariable(name: "_goodG2B_data_0", scope: !59, file: !1, line: 26, type: !10)
!59 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 3)
!60 = !DILocation(line: 26, column: 11, scope: !59)
!61 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !59, file: !1, line: 27, type: !24)
!62 = !DILocation(line: 27, column: 10, scope: !59)
!63 = !DILocation(line: 28, column: 23, scope: !59)
!64 = !DILocation(line: 28, column: 21, scope: !59)
!65 = !DILocation(line: 29, column: 12, scope: !59)
!66 = !DILocation(line: 29, column: 5, scope: !59)
!67 = !DILocalVariable(name: "_goodG2BSink_i_0", scope: !68, file: !1, line: 32, type: !15)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 31, column: 7)
!69 = distinct !DILexicalBlock(scope: !59, file: !1, line: 30, column: 5)
!70 = !DILocation(line: 32, column: 13, scope: !68)
!71 = !DILocalVariable(name: "_goodG2BSink_n_0", scope: !68, file: !1, line: 33, type: !15)
!72 = !DILocation(line: 33, column: 13, scope: !68)
!73 = !DILocalVariable(name: "_goodG2BSink_intVariable_0", scope: !68, file: !1, line: 34, type: !15)
!74 = !DILocation(line: 34, column: 13, scope: !68)
!75 = !DILocation(line: 35, column: 20, scope: !76)
!76 = distinct !DILexicalBlock(scope: !68, file: !1, line: 35, column: 13)
!77 = !DILocation(line: 35, column: 13, scope: !76)
!78 = !DILocation(line: 35, column: 62, scope: !76)
!79 = !DILocation(line: 35, column: 13, scope: !68)
!80 = !DILocation(line: 37, column: 38, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !1, line: 36, column: 9)
!82 = !DILocation(line: 38, column: 11, scope: !81)
!83 = !DILocation(line: 38, column: 18, scope: !81)
!84 = !DILocation(line: 39, column: 24, scope: !81)
!85 = !DILocation(line: 39, column: 11, scope: !81)
!86 = !DILocation(line: 40, column: 9, scope: !81)
!87 = !DILocation(line: 42, column: 7, scope: !68)
!88 = !DILabel(scope: !69, name: "goodG2BSink_label_", file: !1, line: 43)
!89 = !DILocation(line: 43, column: 7, scope: !69)
!90 = !DILocation(line: 48, column: 5, scope: !69)
!91 = !DILabel(scope: !59, name: "goodG2B_label_", file: !1, line: 49)
!92 = !DILocation(line: 49, column: 5, scope: !59)
!93 = !DILocation(line: 54, column: 3, scope: !59)
!94 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_41_good_label_", file: !1, line: 55)
!95 = !DILocation(line: 55, column: 3, scope: !7)
!96 = !DILocation(line: 60, column: 1, scope: !7)
