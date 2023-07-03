; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_1390CWE606_Unchecked_Loop_Condition__char_environment_13192_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_1390CWE606_Unchecked_Loop_Condition__char_environment_13192_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GLOBAL_CONST_FIVE = external dso_local global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_1390CWE606_Unchecked_Loop_Condition__char_environment_13192_1(i8* %_goodB2G1_environment_0, void (i32)* %opsink) #0 !dbg !7 {
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
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !30
  %cmp = icmp eq i32 %1, 5, !dbg !32
  br i1 %cmp, label %if.then, label %if.end6, !dbg !33

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !34, metadata !DIExpression()), !dbg !40
  %2 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !41
  %call = call i64 @strlen(i8* %2) #6, !dbg !42
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !40
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !43
  store i8* %call1, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !44
  %3 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !45
  %cmp2 = icmp ne i8* %3, null, !dbg !47
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !48

if.then3:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !49
  %5 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !51
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !52
  %6 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !53
  %7 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !54
  %sub = sub i64 100, %7, !dbg !55
  %sub4 = sub i64 %sub, 1, !dbg !56
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub4) #7, !dbg !57
  br label %if.end, !dbg !58

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !59

if.end6:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !60
  %cmp7 = icmp ne i32 %8, 5, !dbg !62
  br i1 %cmp7, label %if.then8, label %if.else, !dbg !63

if.then8:                                         ; preds = %if.end6
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !64
  br label %if.end18, !dbg !66

if.else:                                          ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_i_0, metadata !67, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_n_0, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %_goodB2G1_intVariable_0, metadata !73, metadata !DIExpression()), !dbg !74
  %9 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !75
  %call9 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodB2G1_n_0) #7, !dbg !77
  %cmp10 = icmp eq i32 %call9, 1, !dbg !78
  br i1 %cmp10, label %if.then11, label %if.end17, !dbg !79

if.then11:                                        ; preds = %if.else
  %10 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !80
  %cmp12 = icmp slt i32 %10, 10000, !dbg !83
  br i1 %cmp12, label %if.then13, label %if.end16, !dbg !84

if.then13:                                        ; preds = %if.then11
  store i32 0, i32* %_goodB2G1_intVariable_0, align 4, !dbg !85
  store i32 0, i32* %_goodB2G1_i_0, align 4, !dbg !87
  br label %for.cond, !dbg !89

for.cond:                                         ; preds = %for.inc, %if.then13
  %11 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !90
  %12 = load i32, i32* %_goodB2G1_n_0, align 4, !dbg !92
  %cmp14 = icmp slt i32 %11, %12, !dbg !93
  br i1 %cmp14, label %for.body, label %for.end, !dbg !94

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !95
  %inc = add nsw i32 %13, 1, !dbg !95
  store i32 %inc, i32* %_goodB2G1_intVariable_0, align 4, !dbg !95
  br label %for.inc, !dbg !97

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %_goodB2G1_i_0, align 4, !dbg !98
  %inc15 = add nsw i32 %14, 1, !dbg !98
  store i32 %inc15, i32* %_goodB2G1_i_0, align 4, !dbg !98
  br label %for.cond, !dbg !99, !llvm.loop !100

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %_goodB2G1_intVariable_0, align 4, !dbg !103
  call void @printIntLine(i32 %15), !dbg !104
  br label %if.end16, !dbg !105

if.end16:                                         ; preds = %for.end, %if.then11
  br label %if.end17, !dbg !106

if.end17:                                         ; preds = %if.end16, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then8
  br label %goodB2G1_label_, !dbg !107

goodB2G1_label_:                                  ; preds = %if.end18
  call void @llvm.dbg.label(metadata !108), !dbg !109
  call void (...) @goodB2G2(), !dbg !110
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !111, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !114, metadata !DIExpression()), !dbg !115
  %16 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !115
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 100, i1 false), !dbg !115
  %arraydecay19 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !116
  store i8* %arraydecay19, i8** %_goodG2B1_data_0, align 8, !dbg !117
  %17 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !118
  %cmp20 = icmp ne i32 %17, 5, !dbg !120
  br i1 %cmp20, label %if.then21, label %if.else22, !dbg !121

if.then21:                                        ; preds = %goodB2G1_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !122
  br label %if.end24, !dbg !124

if.else22:                                        ; preds = %goodB2G1_label_
  %18 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !125
  %call23 = call i8* @strcpy(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !127
  br label %if.end24

if.end24:                                         ; preds = %if.else22, %if.then21
  %19 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !128
  %cmp25 = icmp eq i32 %19, 5, !dbg !130
  br i1 %cmp25, label %if.then26, label %if.end31, !dbg !131

if.then26:                                        ; preds = %if.end24
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !132, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_n_0, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_intVariable_0, metadata !138, metadata !DIExpression()), !dbg !139
  %20 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !140
  %call27 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %_goodG2B1_n_0) #7, !dbg !142
  %cmp28 = icmp eq i32 %call27, 1, !dbg !143
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !144

if.then29:                                        ; preds = %if.then26
  store i32 0, i32* %_goodG2B1_intVariable_0, align 4, !dbg !145
  %21 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !147
  %22 = load i32, i32* %_goodG2B1_n_0, align 4, !dbg !148
  call void %21(i32 %22), !dbg !147
  %23 = load i32, i32* %_goodG2B1_intVariable_0, align 4, !dbg !149
  call void @printIntLine(i32 %23), !dbg !150
  br label %if.end30, !dbg !151

if.end30:                                         ; preds = %if.then29, %if.then26
  br label %if.end31, !dbg !152

if.end31:                                         ; preds = %if.end30, %if.end24
  br label %goodG2B1_label_, !dbg !153

goodG2B1_label_:                                  ; preds = %if.end31
  call void @llvm.dbg.label(metadata !154), !dbg !155
  br label %CWE606_Unchecked_Loop_Condition__char_environment_13_good_label_, !dbg !156

CWE606_Unchecked_Loop_Condition__char_environment_13_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !157), !dbg !158
  ret void, !dbg !159
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

declare dso_local void @goodB2G2(...) #5

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_1390CWE606_Unchecked_Loop_Condition__char_environment_13192_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_038/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_1390CWE606_Unchecked_Loop_Condition__char_environment_13192_1", scope: !1, file: !1, line: 4, type: !8, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G1_environment_0", arg: 1, scope: !7, file: !1, line: 4, type: !10)
!17 = !DILocation(line: 4, column: 124, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 4, type: !12)
!19 = !DILocation(line: 4, column: 156, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !21, file: !1, line: 7, type: !10)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 6, column: 3)
!22 = !DILocation(line: 7, column: 11, scope: !21)
!23 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !21, file: !1, line: 8, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 8, column: 10, scope: !21)
!28 = !DILocation(line: 9, column: 24, scope: !21)
!29 = !DILocation(line: 9, column: 22, scope: !21)
!30 = !DILocation(line: 10, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !21, file: !1, line: 10, column: 9)
!32 = !DILocation(line: 10, column: 27, scope: !31)
!33 = !DILocation(line: 10, column: 9, scope: !21)
!34 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !35, file: !1, line: 13, type: !37)
!35 = distinct !DILexicalBlock(scope: !36, file: !1, line: 12, column: 7)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 11, column: 5)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 46, baseType: !39)
!38 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!39 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!40 = !DILocation(line: 13, column: 16, scope: !35)
!41 = !DILocation(line: 13, column: 45, scope: !35)
!42 = !DILocation(line: 13, column: 38, scope: !35)
!43 = !DILocation(line: 14, column: 35, scope: !35)
!44 = !DILocation(line: 14, column: 33, scope: !35)
!45 = !DILocation(line: 15, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !35, file: !1, line: 15, column: 13)
!47 = !DILocation(line: 15, column: 37, scope: !46)
!48 = !DILocation(line: 15, column: 13, scope: !35)
!49 = !DILocation(line: 17, column: 19, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !1, line: 16, column: 9)
!51 = !DILocation(line: 17, column: 38, scope: !50)
!52 = !DILocation(line: 17, column: 36, scope: !50)
!53 = !DILocation(line: 17, column: 59, scope: !50)
!54 = !DILocation(line: 17, column: 91, scope: !50)
!55 = !DILocation(line: 17, column: 89, scope: !50)
!56 = !DILocation(line: 17, column: 112, scope: !50)
!57 = !DILocation(line: 17, column: 11, scope: !50)
!58 = !DILocation(line: 18, column: 9, scope: !50)
!59 = !DILocation(line: 21, column: 5, scope: !36)
!60 = !DILocation(line: 23, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !21, file: !1, line: 23, column: 9)
!62 = !DILocation(line: 23, column: 27, scope: !61)
!63 = !DILocation(line: 23, column: 9, scope: !21)
!64 = !DILocation(line: 25, column: 7, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 24, column: 5)
!66 = !DILocation(line: 26, column: 5, scope: !65)
!67 = !DILocalVariable(name: "_goodB2G1_i_0", scope: !68, file: !1, line: 30, type: !15)
!68 = distinct !DILexicalBlock(scope: !69, file: !1, line: 29, column: 7)
!69 = distinct !DILexicalBlock(scope: !61, file: !1, line: 28, column: 5)
!70 = !DILocation(line: 30, column: 13, scope: !68)
!71 = !DILocalVariable(name: "_goodB2G1_n_0", scope: !68, file: !1, line: 31, type: !15)
!72 = !DILocation(line: 31, column: 13, scope: !68)
!73 = !DILocalVariable(name: "_goodB2G1_intVariable_0", scope: !68, file: !1, line: 32, type: !15)
!74 = !DILocation(line: 32, column: 13, scope: !68)
!75 = !DILocation(line: 33, column: 20, scope: !76)
!76 = distinct !DILexicalBlock(scope: !68, file: !1, line: 33, column: 13)
!77 = !DILocation(line: 33, column: 13, scope: !76)
!78 = !DILocation(line: 33, column: 60, scope: !76)
!79 = !DILocation(line: 33, column: 13, scope: !68)
!80 = !DILocation(line: 35, column: 15, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 35, column: 15)
!82 = distinct !DILexicalBlock(scope: !76, file: !1, line: 34, column: 9)
!83 = !DILocation(line: 35, column: 29, scope: !81)
!84 = !DILocation(line: 35, column: 15, scope: !82)
!85 = !DILocation(line: 37, column: 37, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 36, column: 11)
!87 = !DILocation(line: 38, column: 32, scope: !88)
!88 = distinct !DILexicalBlock(scope: !86, file: !1, line: 38, column: 13)
!89 = !DILocation(line: 38, column: 18, scope: !88)
!90 = !DILocation(line: 38, column: 37, scope: !91)
!91 = distinct !DILexicalBlock(scope: !88, file: !1, line: 38, column: 13)
!92 = !DILocation(line: 38, column: 53, scope: !91)
!93 = !DILocation(line: 38, column: 51, scope: !91)
!94 = !DILocation(line: 38, column: 13, scope: !88)
!95 = !DILocation(line: 40, column: 38, scope: !96)
!96 = distinct !DILexicalBlock(scope: !91, file: !1, line: 39, column: 13)
!97 = !DILocation(line: 41, column: 13, scope: !96)
!98 = !DILocation(line: 38, column: 81, scope: !91)
!99 = !DILocation(line: 38, column: 13, scope: !91)
!100 = distinct !{!100, !94, !101, !102}
!101 = !DILocation(line: 41, column: 13, scope: !88)
!102 = !{!"llvm.loop.mustprogress"}
!103 = !DILocation(line: 43, column: 26, scope: !86)
!104 = !DILocation(line: 43, column: 13, scope: !86)
!105 = !DILocation(line: 44, column: 11, scope: !86)
!106 = !DILocation(line: 46, column: 9, scope: !82)
!107 = !DILocation(line: 23, column: 30, scope: !61)
!108 = !DILabel(scope: !21, name: "goodB2G1_label_", file: !1, line: 51)
!109 = !DILocation(line: 51, column: 5, scope: !21)
!110 = !DILocation(line: 57, column: 3, scope: !7)
!111 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !112, file: !1, line: 59, type: !10)
!112 = distinct !DILexicalBlock(scope: !7, file: !1, line: 58, column: 3)
!113 = !DILocation(line: 59, column: 11, scope: !112)
!114 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !112, file: !1, line: 60, type: !24)
!115 = !DILocation(line: 60, column: 10, scope: !112)
!116 = !DILocation(line: 61, column: 24, scope: !112)
!117 = !DILocation(line: 61, column: 22, scope: !112)
!118 = !DILocation(line: 62, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !112, file: !1, line: 62, column: 9)
!120 = !DILocation(line: 62, column: 27, scope: !119)
!121 = !DILocation(line: 62, column: 9, scope: !112)
!122 = !DILocation(line: 64, column: 7, scope: !123)
!123 = distinct !DILexicalBlock(scope: !119, file: !1, line: 63, column: 5)
!124 = !DILocation(line: 65, column: 5, scope: !123)
!125 = !DILocation(line: 68, column: 14, scope: !126)
!126 = distinct !DILexicalBlock(scope: !119, file: !1, line: 67, column: 5)
!127 = !DILocation(line: 68, column: 7, scope: !126)
!128 = !DILocation(line: 71, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !112, file: !1, line: 71, column: 9)
!130 = !DILocation(line: 71, column: 27, scope: !129)
!131 = !DILocation(line: 71, column: 9, scope: !112)
!132 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !133, file: !1, line: 74, type: !15)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 73, column: 7)
!134 = distinct !DILexicalBlock(scope: !129, file: !1, line: 72, column: 5)
!135 = !DILocation(line: 74, column: 13, scope: !133)
!136 = !DILocalVariable(name: "_goodG2B1_n_0", scope: !133, file: !1, line: 75, type: !15)
!137 = !DILocation(line: 75, column: 13, scope: !133)
!138 = !DILocalVariable(name: "_goodG2B1_intVariable_0", scope: !133, file: !1, line: 76, type: !15)
!139 = !DILocation(line: 76, column: 13, scope: !133)
!140 = !DILocation(line: 77, column: 20, scope: !141)
!141 = distinct !DILexicalBlock(scope: !133, file: !1, line: 77, column: 13)
!142 = !DILocation(line: 77, column: 13, scope: !141)
!143 = !DILocation(line: 77, column: 60, scope: !141)
!144 = !DILocation(line: 77, column: 13, scope: !133)
!145 = !DILocation(line: 79, column: 35, scope: !146)
!146 = distinct !DILexicalBlock(scope: !141, file: !1, line: 78, column: 9)
!147 = !DILocation(line: 80, column: 11, scope: !146)
!148 = !DILocation(line: 80, column: 18, scope: !146)
!149 = !DILocation(line: 81, column: 24, scope: !146)
!150 = !DILocation(line: 81, column: 11, scope: !146)
!151 = !DILocation(line: 82, column: 9, scope: !146)
!152 = !DILocation(line: 85, column: 5, scope: !134)
!153 = !DILocation(line: 71, column: 30, scope: !129)
!154 = !DILabel(scope: !112, name: "goodG2B1_label_", file: !1, line: 87)
!155 = !DILocation(line: 87, column: 5, scope: !112)
!156 = !DILocation(line: 92, column: 3, scope: !112)
!157 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_13_good_label_", file: !1, line: 93)
!158 = !DILocation(line: 93, column: 3, scope: !7)
!159 = !DILocation(line: 98, column: 1, scope: !7)
