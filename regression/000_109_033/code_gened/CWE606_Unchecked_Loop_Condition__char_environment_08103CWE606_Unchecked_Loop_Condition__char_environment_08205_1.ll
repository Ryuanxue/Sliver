; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_08103CWE606_Unchecked_Loop_Condition__char_environment_08205_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_08103CWE606_Unchecked_Loop_Condition__char_environment_08205_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_08103CWE606_Unchecked_Loop_Condition__char_environment_08205_1(i8* %_goodB2G1_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G1_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G1_data_0 = alloca i8*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodB2G1_i_0 = alloca i32, align 4
  %_goodB2G1_n_0 = alloca i32, align 4
  %_goodB2G1_intVariable_0 = alloca i32, align 4
  %_goodG2B1_data_0 = alloca i8*, align 8
  %_goodG2B1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B1_i_0 = alloca i32, align 4
  %_goodG2B1_n_0 = alloca i32, align 4
  %_goodG2B1_intVariable_0 = alloca i32, align 4
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
  %call = call i32 (...) @staticReturnsTrue(), !dbg !30
  %tobool = icmp ne i32 %call, 0, !dbg !30
  br i1 %tobool, label %if.then, label %if.end6, !dbg !32

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !33, metadata !DIExpression()), !dbg !39
  %1 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !40
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !41
  store i64 %call1, i64* %_goodB2G1_dataLen_0, align 8, !dbg !39
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !42
  store i8* %call2, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !43
  %2 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !44
  %cmp = icmp ne i8* %2, null, !dbg !46
  br i1 %cmp, label %if.then3, label %if.end, !dbg !47

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !48
  %4 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !51
  %5 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !52
  %6 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !53
  %sub = sub i64 100, %6, !dbg !54
  %sub4 = sub i64 %sub, 1, !dbg !55
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #7, !dbg !56
  br label %if.end, !dbg !57

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !58

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 (...) @staticReturnsFalse(), !dbg !59
  %tobool8 = icmp ne i32 %call7, 0, !dbg !59
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !61

if.then9:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !62
  br label %if.end19, !dbg !64

if.else:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !65, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !71, metadata !DIExpression()), !dbg !72
  %7 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !73
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodB2G1_n_0) #7, !dbg !75
  %cmp11 = icmp eq i32 %call10, 1, !dbg !76
  br i1 %cmp11, label %if.then12, label %if.end18, !dbg !77

if.then12:                                        ; preds = %if.else
  %8 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !78
  %cmp13 = icmp slt i32 %8, 10000, !dbg !81
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !82

if.then14:                                        ; preds = %if.then12
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !83
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !85
  br label %for.cond, !dbg !87

for.cond:                                         ; preds = %for.inc, %if.then14
  %9 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !88
  %10 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !90
  %cmp15 = icmp slt i32 %9, %10, !dbg !91
  br i1 %cmp15, label %for.body, label %for.end, !dbg !92

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !93
  %inc = add nsw i32 %11, 1, !dbg !93
  store i32 %inc, i32* %_goodB2G1_intVariable_0, align 4, !dbg !93
  br label %for.inc, !dbg !95

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !96
  %inc16 = add nsw i32 %12, 1, !dbg !96
  store i32 %inc16, i32* %_goodB2G1_i_0, align 4, !dbg !96
  br label %for.cond, !dbg !97, !llvm.loop !98

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !101
  call void @printIntLine(i32 %13), !dbg !102
  br label %if.end17, !dbg !103

if.end17:                                         ; preds = %for.end, %if.then12
  br label %if.end18, !dbg !104

if.end18:                                         ; preds = %if.end17, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then9
  br label %goodB2G1_label_, !dbg !105

goodB2G1_label_:                                  ; preds = %if.end19
  call void @llvm.dbg.label(metadata !106), !dbg !107
  call void (...) @goodB2G2(), !dbg !108
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !109, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !112, metadata !DIExpression()), !dbg !113
  %14 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !113
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 100, i1 false), !dbg !113
  %arraydecay20 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !114
  store i8* %arraydecay20, i8** %_goodG2B1_data_0, align 8, !dbg !115
  %call21 = call i32 (...) @staticReturnsFalse(), !dbg !116
  %tobool22 = icmp ne i32 %call21, 0, !dbg !116
  br i1 %tobool22, label %if.then23, label %if.else24, !dbg !118

if.then23:                                        ; preds = %goodB2G1_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !119
  br label %if.end26, !dbg !121

if.else24:                                        ; preds = %goodB2G1_label_
  %15 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !122
  %call25 = call i8* @strcpy(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !124
  br label %if.end26

if.end26:                                         ; preds = %if.else24, %if.then23
  %call27 = call i32 (...) @staticReturnsTrue(), !dbg !125
  %tobool28 = icmp ne i32 %call27, 0, !dbg !125
  br i1 %tobool28, label %if.then29, label %if.end34, !dbg !127

if.then29:                                        ; preds = %if.end26
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !128, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_n_0, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_intVariable_0, metadata !134, metadata !DIExpression()), !dbg !135
  %16 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !136
  %call30 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodG2B1_n_0) #7, !dbg !138
  %cmp31 = icmp eq i32 %call30, 1, !dbg !139
  br i1 %cmp31, label %if.then32, label %if.end33, !dbg !140

if.then32:                                        ; preds = %if.then29
  store i32 0, i32* %_goodG2B1_intVariable_0, align 4, !dbg !141
  %17 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !143
  %18 = load i32, i32* %_goodG2B1_n_0, align 4, !dbg !144
  call void %17(i32 %18), !dbg !143
  %19 = load i32, i32* %_goodG2B1_intVariable_0, align 4, !dbg !145
  call void @printIntLine(i32 %19), !dbg !146
  br label %if.end33, !dbg !147

if.end33:                                         ; preds = %if.then32, %if.then29
  br label %if.end34, !dbg !148

if.end34:                                         ; preds = %if.end33, %if.end26
  br label %goodG2B1_label_, !dbg !149

goodG2B1_label_:                                  ; preds = %if.end34
  call void @llvm.dbg.label(metadata !150), !dbg !151
  br label %CWE606_Unchecked_Loop_Condition__char_environment_08_good_label_, !dbg !152

CWE606_Unchecked_Loop_Condition__char_environment_08_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !153), !dbg !154
  ret void, !dbg !155
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @staticReturnsTrue(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #5

declare dso_local i32 @staticReturnsFalse(...) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodB2G2(...) #3

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_08103CWE606_Unchecked_Loop_Condition__char_environment_08205_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_033/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_08103CWE606_Unchecked_Loop_Condition__char_environment_08205_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G1_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 125, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 157, scope: !7)
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
!30 = !DILocation(line: 9, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !21, file: !1, line: 9, column: 9)
!32 = !DILocation(line: 9, column: 9, scope: !21)
!33 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !34, file: !1, line: 12, type: !36)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 11, column: 7)
!35 = distinct !DILexicalBlock(scope: !31, file: !1, line: 10, column: 5)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 12, column: 16, scope: !34)
!40 = !DILocation(line: 12, column: 45, scope: !34)
!41 = !DILocation(line: 12, column: 38, scope: !34)
!42 = !DILocation(line: 13, column: 35, scope: !34)
!43 = !DILocation(line: 13, column: 33, scope: !34)
!44 = !DILocation(line: 14, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !34, file: !1, line: 14, column: 13)
!46 = !DILocation(line: 14, column: 37, scope: !45)
!47 = !DILocation(line: 14, column: 13, scope: !34)
!48 = !DILocation(line: 16, column: 19, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 15, column: 9)
!50 = !DILocation(line: 16, column: 38, scope: !49)
!51 = !DILocation(line: 16, column: 36, scope: !49)
!52 = !DILocation(line: 16, column: 59, scope: !49)
!53 = !DILocation(line: 16, column: 91, scope: !49)
!54 = !DILocation(line: 16, column: 89, scope: !49)
!55 = !DILocation(line: 16, column: 112, scope: !49)
!56 = !DILocation(line: 16, column: 11, scope: !49)
!57 = !DILocation(line: 17, column: 9, scope: !49)
!58 = !DILocation(line: 20, column: 5, scope: !35)
!59 = !DILocation(line: 22, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !21, file: !1, line: 22, column: 9)
!61 = !DILocation(line: 22, column: 9, scope: !21)
!62 = !DILocation(line: 24, column: 7, scope: !63)
!63 = distinct !DILexicalBlock(scope: !60, file: !1, line: 23, column: 5)
!64 = !DILocation(line: 25, column: 5, scope: !63)
!65 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !66, file: !1, line: 29, type: !15)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 28, column: 7)
!67 = distinct !DILexicalBlock(scope: !60, file: !1, line: 27, column: 5)
!68 = !DILocation(line: 29, column: 13, scope: !66)
!69 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !66, file: !1, line: 30, type: !15)
!70 = !DILocation(line: 30, column: 13, scope: !66)
!71 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !66, file: !1, line: 31, type: !15)
!72 = !DILocation(line: 31, column: 13, scope: !66)
!73 = !DILocation(line: 32, column: 20, scope: !74)
!74 = distinct !DILexicalBlock(scope: !66, file: !1, line: 32, column: 13)
!75 = !DILocation(line: 32, column: 13, scope: !74)
!76 = !DILocation(line: 32, column: 60, scope: !74)
!77 = !DILocation(line: 32, column: 13, scope: !66)
!78 = !DILocation(line: 34, column: 15, scope: !79)
!79 = distinct !DILexicalBlock(scope: !80, file: !1, line: 34, column: 15)
!80 = distinct !DILexicalBlock(scope: !74, file: !1, line: 33, column: 9)
!81 = !DILocation(line: 34, column: 29, scope: !79)
!82 = !DILocation(line: 34, column: 15, scope: !80)
!83 = !DILocation(line: 36, column: 37, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 35, column: 11)
!85 = !DILocation(line: 37, column: 32, scope: !86)
!86 = distinct !DILexicalBlock(scope: !84, file: !1, line: 37, column: 13)
!87 = !DILocation(line: 37, column: 18, scope: !86)
!88 = !DILocation(line: 37, column: 37, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 37, column: 13)
!90 = !DILocation(line: 37, column: 53, scope: !89)
!91 = !DILocation(line: 37, column: 51, scope: !89)
!92 = !DILocation(line: 37, column: 13, scope: !86)
!93 = !DILocation(line: 39, column: 38, scope: !94)
!94 = distinct !DILexicalBlock(scope: !89, file: !1, line: 38, column: 13)
!95 = !DILocation(line: 40, column: 13, scope: !94)
!96 = !DILocation(line: 37, column: 81, scope: !89)
!97 = !DILocation(line: 37, column: 13, scope: !89)
!98 = distinct !{!98, !92, !99, !100}
!99 = !DILocation(line: 40, column: 13, scope: !86)
!100 = !{!"llvm.loop.mustprogress"}
!101 = !DILocation(line: 42, column: 26, scope: !84)
!102 = !DILocation(line: 42, column: 13, scope: !84)
!103 = !DILocation(line: 43, column: 11, scope: !84)
!104 = !DILocation(line: 45, column: 9, scope: !80)
!105 = !DILocation(line: 22, column: 28, scope: !60)
!106 = !DILabel(scope: !21, name: "goodB2G1_label_", file: !1, line: 50)
!107 = !DILocation(line: 50, column: 5, scope: !21)
!108 = !DILocation(line: 56, column: 3, scope: !7)
!109 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !110, file: !1, line: 58, type: !10)
!110 = distinct !DILexicalBlock(scope: !7, file: !1, line: 57, column: 3)
!111 = !DILocation(line: 58, column: 11, scope: !110)
!112 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !110, file: !1, line: 59, type: !24)
!113 = !DILocation(line: 59, column: 10, scope: !110)
!114 = !DILocation(line: 60, column: 24, scope: !110)
!115 = !DILocation(line: 60, column: 22, scope: !110)
!116 = !DILocation(line: 61, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !110, file: !1, line: 61, column: 9)
!118 = !DILocation(line: 61, column: 9, scope: !110)
!119 = !DILocation(line: 63, column: 7, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !1, line: 62, column: 5)
!121 = !DILocation(line: 64, column: 5, scope: !120)
!122 = !DILocation(line: 67, column: 14, scope: !123)
!123 = distinct !DILexicalBlock(scope: !117, file: !1, line: 66, column: 5)
!124 = !DILocation(line: 67, column: 7, scope: !123)
!125 = !DILocation(line: 70, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !110, file: !1, line: 70, column: 9)
!127 = !DILocation(line: 70, column: 9, scope: !110)
!128 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !129, file: !1, line: 73, type: !15)
!129 = distinct !DILexicalBlock(scope: !130, file: !1, line: 72, column: 7)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 71, column: 5)
!131 = !DILocation(line: 73, column: 13, scope: !129)
!132 = !DILocalVariable(name: "_goodG2B1_n_0", scope: !129, file: !1, line: 74, type: !15)
!133 = !DILocation(line: 74, column: 13, scope: !129)
!134 = !DILocalVariable(name: "_goodG2B1_intVariable_0", scope: !129, file: !1, line: 75, type: !15)
!135 = !DILocation(line: 75, column: 13, scope: !129)
!136 = !DILocation(line: 76, column: 20, scope: !137)
!137 = distinct !DILexicalBlock(scope: !129, file: !1, line: 76, column: 13)
!138 = !DILocation(line: 76, column: 13, scope: !137)
!139 = !DILocation(line: 76, column: 60, scope: !137)
!140 = !DILocation(line: 76, column: 13, scope: !129)
!141 = !DILocation(line: 78, column: 35, scope: !142)
!142 = distinct !DILexicalBlock(scope: !137, file: !1, line: 77, column: 9)
!143 = !DILocation(line: 79, column: 11, scope: !142)
!144 = !DILocation(line: 79, column: 18, scope: !142)
!145 = !DILocation(line: 80, column: 24, scope: !142)
!146 = !DILocation(line: 80, column: 11, scope: !142)
!147 = !DILocation(line: 81, column: 9, scope: !142)
!148 = !DILocation(line: 84, column: 5, scope: !130)
!149 = !DILocation(line: 70, column: 27, scope: !126)
!150 = !DILabel(scope: !110, name: "goodG2B1_label_", file: !1, line: 86)
!151 = !DILocation(line: 86, column: 5, scope: !110)
!152 = !DILocation(line: 91, column: 3, scope: !110)
!153 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_08_good_label_", file: !1, line: 92)
!154 = !DILocation(line: 92, column: 3, scope: !7)
!155 = !DILocation(line: 97, column: 1, scope: !7)
