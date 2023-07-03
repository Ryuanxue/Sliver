; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_08150CWE606_Unchecked_Loop_Condition__char_environment_08205_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_08150CWE606_Unchecked_Loop_Condition__char_environment_08205_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_08150CWE606_Unchecked_Loop_Condition__char_environment_08205_1(i8* %_goodB2G2_environment_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G2_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G2_data_0 = alloca i8*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodB2G2_i_0 = alloca i32, align 4
  %_goodB2G2_n_0 = alloca i32, align 4
  %_goodB2G2_intVariable_0 = alloca i32, align 4
  %_goodG2B1_data_0 = alloca i8*, align 8
  %_goodG2B1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B1_i_0 = alloca i32, align 4
  %_goodG2B1_n_0 = alloca i32, align 4
  %_goodG2B1_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G2_environment_0, i8** %_goodB2G2_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_environment_0.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0, metadata !20, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !23, metadata !DIExpression()), !dbg !27
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !27
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !28
  store i8* %arraydecay, i8** %_goodB2G2_data_0, align 8, !dbg !29
  %call = call i32 (...) @staticReturnsTrue(), !dbg !30
  %tobool = icmp ne i32 %call, 0, !dbg !30
  br i1 %tobool, label %if.then, label %if.end6, !dbg !32

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !33, metadata !DIExpression()), !dbg !39
  %1 = load i8*, i8** %_goodB2G2_data_0, align 8, !dbg !40
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !41
  store i64 %call1, i64* %_goodB2G2_dataLen_0, align 8, !dbg !39
  %call2 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !42
  store i8* %call2, i8** %_goodB2G2_environment_0.addr, align 8, !dbg !43
  %2 = load i8*, i8** %_goodB2G2_environment_0.addr, align 8, !dbg !44
  %cmp = icmp ne i8* %2, null, !dbg !46
  br i1 %cmp, label %if.then3, label %if.end, !dbg !47

if.then3:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G2_data_0, align 8, !dbg !48
  %4 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !51
  %5 = load i8*, i8** %_goodB2G2_environment_0.addr, align 8, !dbg !52
  %6 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !53
  %sub = sub i64 100, %6, !dbg !54
  %sub4 = sub i64 %sub, 1, !dbg !55
  %call5 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub4) #7, !dbg !56
  br label %if.end, !dbg !57

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end6, !dbg !58

if.end6:                                          ; preds = %if.end, %entry
  %call7 = call i32 (...) @staticReturnsTrue(), !dbg !59
  %tobool8 = icmp ne i32 %call7, 0, !dbg !59
  br i1 %tobool8, label %if.then9, label %if.end19, !dbg !61

if.then9:                                         ; preds = %if.end6
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_i_0, metadata !62, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_n_0, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %_goodB2G2_intVariable_0, metadata !68, metadata !DIExpression()), !dbg !69
  %7 = load i8*, i8** %_goodB2G2_data_0, align 8, !dbg !70
  %call10 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G2_n_0) #7, !dbg !72
  %cmp11 = icmp eq i32 %call10, 1, !dbg !73
  br i1 %cmp11, label %if.then12, label %if.end18, !dbg !74

if.then12:                                        ; preds = %if.then9
  %8 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !75
  %cmp13 = icmp slt i32 %8, 10000, !dbg !78
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !79

if.then14:                                        ; preds = %if.then12
  store i32 0, i32* %_goodB2G2_intVariable_0, align 4, !dbg !80
  store i32 0, i32* %_goodB2G2_i_0, align 4, !dbg !82
  br label %for.cond, !dbg !84

for.cond:                                         ; preds = %for.inc, %if.then14
  %9 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !85
  %10 = load i32, i32* %_goodB2G2_n_0, align 4, !dbg !87
  %cmp15 = icmp slt i32 %9, %10, !dbg !88
  br i1 %cmp15, label %for.body, label %for.end, !dbg !89

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !90
  %inc = add nsw i32 %11, 1, !dbg !90
  store i32 %inc, i32* %_goodB2G2_intVariable_0, align 4, !dbg !90
  br label %for.inc, !dbg !92

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_goodB2G2_i_0, align 4, !dbg !93
  %inc16 = add nsw i32 %12, 1, !dbg !93
  store i32 %inc16, i32* %_goodB2G2_i_0, align 4, !dbg !93
  br label %for.cond, !dbg !94, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %_goodB2G2_intVariable_0, align 4, !dbg !98
  call void @printIntLine(i32 %13), !dbg !99
  br label %if.end17, !dbg !100

if.end17:                                         ; preds = %for.end, %if.then12
  br label %if.end18, !dbg !101

if.end18:                                         ; preds = %if.end17, %if.then9
  br label %if.end19, !dbg !102

if.end19:                                         ; preds = %if.end18, %if.end6
  br label %goodB2G2_label_, !dbg !103

goodB2G2_label_:                                  ; preds = %if.end19
  call void @llvm.dbg.label(metadata !104), !dbg !105
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !106, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !109, metadata !DIExpression()), !dbg !110
  %14 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !110
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 100, i1 false), !dbg !110
  %arraydecay20 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !111
  store i8* %arraydecay20, i8** %_goodG2B1_data_0, align 8, !dbg !112
  %call21 = call i32 (...) @staticReturnsFalse(), !dbg !113
  %tobool22 = icmp ne i32 %call21, 0, !dbg !113
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !115

if.then23:                                        ; preds = %goodB2G2_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !116
  br label %if.end25, !dbg !118

if.else:                                          ; preds = %goodB2G2_label_
  %15 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !119
  %call24 = call i8* @strcpy(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !121
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then23
  %call26 = call i32 (...) @staticReturnsTrue(), !dbg !122
  %tobool27 = icmp ne i32 %call26, 0, !dbg !122
  br i1 %tobool27, label %if.then28, label %if.end33, !dbg !124

if.then28:                                        ; preds = %if.end25
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_i_0, metadata !125, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_n_0, metadata !129, metadata !DIExpression()), !dbg !130
  call void @llvm.dbg.declare(metadata i32* %_goodG2B1_intVariable_0, metadata !131, metadata !DIExpression()), !dbg !132
  %16 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !133
  %call29 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B1_n_0) #7, !dbg !135
  %cmp30 = icmp eq i32 %call29, 1, !dbg !136
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !137

if.then31:                                        ; preds = %if.then28
  store i32 0, i32* %_goodG2B1_intVariable_0, align 4, !dbg !138
  %17 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !140
  %18 = load i32, i32* %_goodG2B1_n_0, align 4, !dbg !141
  call void %17(i32 %18), !dbg !140
  %19 = load i32, i32* %_goodG2B1_intVariable_0, align 4, !dbg !142
  call void @printIntLine(i32 %19), !dbg !143
  br label %if.end32, !dbg !144

if.end32:                                         ; preds = %if.then31, %if.then28
  br label %if.end33, !dbg !145

if.end33:                                         ; preds = %if.end32, %if.end25
  br label %goodG2B1_label_, !dbg !146

goodG2B1_label_:                                  ; preds = %if.end33
  call void @llvm.dbg.label(metadata !147), !dbg !148
  br label %CWE606_Unchecked_Loop_Condition__char_environment_08_good_label_, !dbg !149

CWE606_Unchecked_Loop_Condition__char_environment_08_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !150), !dbg !151
  ret void, !dbg !152
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

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local i32 @staticReturnsFalse(...) #3

declare dso_local void @printLine(i8*) #3

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_08150CWE606_Unchecked_Loop_Condition__char_environment_08205_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_033/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_08150CWE606_Unchecked_Loop_Condition__char_environment_08205_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DILocalVariable(name: "_goodB2G2_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!17 = !DILocation(line: 3, column: 125, scope: !7)
!18 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 157, scope: !7)
!20 = !DILocalVariable(name: "_goodB2G2_data_0", scope: !21, file: !1, line: 6, type: !10)
!21 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!22 = !DILocation(line: 6, column: 11, scope: !21)
!23 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !21, file: !1, line: 7, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 7, column: 10, scope: !21)
!28 = !DILocation(line: 8, column: 24, scope: !21)
!29 = !DILocation(line: 8, column: 22, scope: !21)
!30 = !DILocation(line: 9, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !21, file: !1, line: 9, column: 9)
!32 = !DILocation(line: 9, column: 9, scope: !21)
!33 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !34, file: !1, line: 12, type: !36)
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
!62 = !DILocalVariable(name: "_goodB2G2_i_0", scope: !63, file: !1, line: 25, type: !15)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 24, column: 7)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 23, column: 5)
!65 = !DILocation(line: 25, column: 13, scope: !63)
!66 = !DILocalVariable(name: "_goodB2G2_n_0", scope: !63, file: !1, line: 26, type: !15)
!67 = !DILocation(line: 26, column: 13, scope: !63)
!68 = !DILocalVariable(name: "_goodB2G2_intVariable_0", scope: !63, file: !1, line: 27, type: !15)
!69 = !DILocation(line: 27, column: 13, scope: !63)
!70 = !DILocation(line: 28, column: 20, scope: !71)
!71 = distinct !DILexicalBlock(scope: !63, file: !1, line: 28, column: 13)
!72 = !DILocation(line: 28, column: 13, scope: !71)
!73 = !DILocation(line: 28, column: 60, scope: !71)
!74 = !DILocation(line: 28, column: 13, scope: !63)
!75 = !DILocation(line: 30, column: 15, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 30, column: 15)
!77 = distinct !DILexicalBlock(scope: !71, file: !1, line: 29, column: 9)
!78 = !DILocation(line: 30, column: 29, scope: !76)
!79 = !DILocation(line: 30, column: 15, scope: !77)
!80 = !DILocation(line: 32, column: 37, scope: !81)
!81 = distinct !DILexicalBlock(scope: !76, file: !1, line: 31, column: 11)
!82 = !DILocation(line: 33, column: 32, scope: !83)
!83 = distinct !DILexicalBlock(scope: !81, file: !1, line: 33, column: 13)
!84 = !DILocation(line: 33, column: 18, scope: !83)
!85 = !DILocation(line: 33, column: 37, scope: !86)
!86 = distinct !DILexicalBlock(scope: !83, file: !1, line: 33, column: 13)
!87 = !DILocation(line: 33, column: 53, scope: !86)
!88 = !DILocation(line: 33, column: 51, scope: !86)
!89 = !DILocation(line: 33, column: 13, scope: !83)
!90 = !DILocation(line: 35, column: 38, scope: !91)
!91 = distinct !DILexicalBlock(scope: !86, file: !1, line: 34, column: 13)
!92 = !DILocation(line: 36, column: 13, scope: !91)
!93 = !DILocation(line: 33, column: 81, scope: !86)
!94 = !DILocation(line: 33, column: 13, scope: !86)
!95 = distinct !{!95, !89, !96, !97}
!96 = !DILocation(line: 36, column: 13, scope: !83)
!97 = !{!"llvm.loop.mustprogress"}
!98 = !DILocation(line: 38, column: 26, scope: !81)
!99 = !DILocation(line: 38, column: 13, scope: !81)
!100 = !DILocation(line: 39, column: 11, scope: !81)
!101 = !DILocation(line: 41, column: 9, scope: !77)
!102 = !DILocation(line: 44, column: 5, scope: !64)
!103 = !DILocation(line: 22, column: 27, scope: !60)
!104 = !DILabel(scope: !21, name: "goodB2G2_label_", file: !1, line: 46)
!105 = !DILocation(line: 46, column: 5, scope: !21)
!106 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !107, file: !1, line: 53, type: !10)
!107 = distinct !DILexicalBlock(scope: !7, file: !1, line: 52, column: 3)
!108 = !DILocation(line: 53, column: 11, scope: !107)
!109 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !107, file: !1, line: 54, type: !24)
!110 = !DILocation(line: 54, column: 10, scope: !107)
!111 = !DILocation(line: 55, column: 24, scope: !107)
!112 = !DILocation(line: 55, column: 22, scope: !107)
!113 = !DILocation(line: 56, column: 9, scope: !114)
!114 = distinct !DILexicalBlock(scope: !107, file: !1, line: 56, column: 9)
!115 = !DILocation(line: 56, column: 9, scope: !107)
!116 = !DILocation(line: 58, column: 7, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !1, line: 57, column: 5)
!118 = !DILocation(line: 59, column: 5, scope: !117)
!119 = !DILocation(line: 62, column: 14, scope: !120)
!120 = distinct !DILexicalBlock(scope: !114, file: !1, line: 61, column: 5)
!121 = !DILocation(line: 62, column: 7, scope: !120)
!122 = !DILocation(line: 65, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !107, file: !1, line: 65, column: 9)
!124 = !DILocation(line: 65, column: 9, scope: !107)
!125 = !DILocalVariable(name: "_goodG2B1_i_0", scope: !126, file: !1, line: 68, type: !15)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 67, column: 7)
!127 = distinct !DILexicalBlock(scope: !123, file: !1, line: 66, column: 5)
!128 = !DILocation(line: 68, column: 13, scope: !126)
!129 = !DILocalVariable(name: "_goodG2B1_n_0", scope: !126, file: !1, line: 69, type: !15)
!130 = !DILocation(line: 69, column: 13, scope: !126)
!131 = !DILocalVariable(name: "_goodG2B1_intVariable_0", scope: !126, file: !1, line: 70, type: !15)
!132 = !DILocation(line: 70, column: 13, scope: !126)
!133 = !DILocation(line: 71, column: 20, scope: !134)
!134 = distinct !DILexicalBlock(scope: !126, file: !1, line: 71, column: 13)
!135 = !DILocation(line: 71, column: 13, scope: !134)
!136 = !DILocation(line: 71, column: 60, scope: !134)
!137 = !DILocation(line: 71, column: 13, scope: !126)
!138 = !DILocation(line: 73, column: 35, scope: !139)
!139 = distinct !DILexicalBlock(scope: !134, file: !1, line: 72, column: 9)
!140 = !DILocation(line: 74, column: 11, scope: !139)
!141 = !DILocation(line: 74, column: 18, scope: !139)
!142 = !DILocation(line: 75, column: 24, scope: !139)
!143 = !DILocation(line: 75, column: 11, scope: !139)
!144 = !DILocation(line: 76, column: 9, scope: !139)
!145 = !DILocation(line: 79, column: 5, scope: !127)
!146 = !DILocation(line: 65, column: 27, scope: !123)
!147 = !DILabel(scope: !107, name: "goodG2B1_label_", file: !1, line: 81)
!148 = !DILocation(line: 81, column: 5, scope: !107)
!149 = !DILocation(line: 86, column: 3, scope: !107)
!150 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_08_good_label_", file: !1, line: 87)
!151 = !DILocation(line: 87, column: 3, scope: !7)
!152 = !DILocation(line: 92, column: 1, scope: !7)
