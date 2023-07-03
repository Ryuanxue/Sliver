; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_1692CWE606_Unchecked_Loop_Condition__char_environment_16145_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_1692CWE606_Unchecked_Loop_Condition__char_environment_16145_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_1692CWE606_Unchecked_Loop_Condition__char_environment_16145_1(i8* %_goodB2G_environment_0, void (i32)* %opsink) #0 !dbg !7 {
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
  br label %while.body, !dbg !30

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !31, metadata !DIExpression()), !dbg !37
  %1 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !38
  %call = call i64 @strlen(i8* %1) #6, !dbg !39
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !37
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !40
  store i8* %call1, i8** %_goodB2G_environment_0.addr, align 8, !dbg !41
  %2 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !42
  %cmp = icmp ne i8* %2, null, !dbg !44
  br i1 %cmp, label %if.then, label %if.end, !dbg !45

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !46
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !49
  %5 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !50
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !51
  %sub = sub i64 100, %6, !dbg !52
  %sub2 = sub i64 %sub, 1, !dbg !53
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !54
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then, %while.body
  br label %while.end, !dbg !56

while.end:                                        ; preds = %if.end
  br label %while.body4, !dbg !57

while.body4:                                      ; preds = %while.end
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !58, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !62, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !64, metadata !DIExpression()), !dbg !65
  %7 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !66
  %call5 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !68
  %cmp6 = icmp eq i32 %call5, 1, !dbg !69
  br i1 %cmp6, label %if.then7, label %if.end13, !dbg !70

if.then7:                                         ; preds = %while.body4
  %8 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !71
  %cmp8 = icmp slt i32 %8, 10000, !dbg !74
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !75

if.then9:                                         ; preds = %if.then7
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !76
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !78
  br label %for.cond, !dbg !80

for.cond:                                         ; preds = %for.inc, %if.then9
  %9 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !81
  %10 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !83
  %cmp10 = icmp slt i32 %9, %10, !dbg !84
  br i1 %cmp10, label %for.body, label %for.end, !dbg !85

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !86
  %inc = add nsw i32 %11, 1, !dbg !86
  store i32 %inc, i32* %_goodB2G_intVariable_0, align 4, !dbg !86
  br label %for.inc, !dbg !88

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !89
  %inc11 = add nsw i32 %12, 1, !dbg !89
  store i32 %inc11, i32* %_goodB2G_i_0, align 4, !dbg !89
  br label %for.cond, !dbg !90, !llvm.loop !91

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !94
  call void @printIntLine(i32 %13), !dbg !95
  br label %if.end12, !dbg !96

if.end12:                                         ; preds = %for.end, %if.then7
  br label %if.end13, !dbg !97

if.end13:                                         ; preds = %if.end12, %while.body4
  br label %while.end14, !dbg !98

while.end14:                                      ; preds = %if.end13
  br label %goodB2G_label_, !dbg !57

goodB2G_label_:                                   ; preds = %while.end14
  call void @llvm.dbg.label(metadata !99), !dbg !100
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !101, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !104, metadata !DIExpression()), !dbg !105
  %14 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !105
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 100, i1 false), !dbg !105
  %arraydecay15 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !106
  store i8* %arraydecay15, i8** %_goodG2B_data_0, align 8, !dbg !107
  br label %while.body16, !dbg !108

while.body16:                                     ; preds = %goodB2G_label_
  %15 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !109
  %call17 = call i8* @strcpy(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !111
  br label %while.end18, !dbg !112

while.end18:                                      ; preds = %while.body16
  br label %while.body19, !dbg !113

while.body19:                                     ; preds = %while.end18
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !114, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !120, metadata !DIExpression()), !dbg !121
  %16 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !122
  %call20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0) #7, !dbg !124
  %cmp21 = icmp eq i32 %call20, 1, !dbg !125
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !126

if.then22:                                        ; preds = %while.body19
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !127
  %17 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !129
  %18 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !130
  call void %17(i32 %18), !dbg !129
  %19 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !131
  call void @printIntLine(i32 %19), !dbg !132
  br label %if.end23, !dbg !133

if.end23:                                         ; preds = %if.then22, %while.body19
  br label %while.end24, !dbg !134

while.end24:                                      ; preds = %if.end23
  br label %goodG2B_label_, !dbg !113

goodG2B_label_:                                   ; preds = %while.end24
  call void @llvm.dbg.label(metadata !135), !dbg !136
  br label %CWE606_Unchecked_Loop_Condition__char_environment_16_good_label_, !dbg !137

CWE606_Unchecked_Loop_Condition__char_environment_16_good_label_: ; preds = %goodG2B_label_
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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_1692CWE606_Unchecked_Loop_Condition__char_environment_16145_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_041/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_1692CWE606_Unchecked_Loop_Condition__char_environment_16145_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!31 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !32, file: !1, line: 12, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 11, column: 7)
!33 = distinct !DILexicalBlock(scope: !21, file: !1, line: 10, column: 5)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 12, column: 16, scope: !32)
!38 = !DILocation(line: 12, column: 44, scope: !32)
!39 = !DILocation(line: 12, column: 37, scope: !32)
!40 = !DILocation(line: 13, column: 34, scope: !32)
!41 = !DILocation(line: 13, column: 32, scope: !32)
!42 = !DILocation(line: 14, column: 13, scope: !43)
!43 = distinct !DILexicalBlock(scope: !32, file: !1, line: 14, column: 13)
!44 = !DILocation(line: 14, column: 36, scope: !43)
!45 = !DILocation(line: 14, column: 13, scope: !32)
!46 = !DILocation(line: 16, column: 19, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 15, column: 9)
!48 = !DILocation(line: 16, column: 37, scope: !47)
!49 = !DILocation(line: 16, column: 35, scope: !47)
!50 = !DILocation(line: 16, column: 57, scope: !47)
!51 = !DILocation(line: 16, column: 88, scope: !47)
!52 = !DILocation(line: 16, column: 86, scope: !47)
!53 = !DILocation(line: 16, column: 108, scope: !47)
!54 = !DILocation(line: 16, column: 11, scope: !47)
!55 = !DILocation(line: 17, column: 9, scope: !47)
!56 = !DILocation(line: 20, column: 7, scope: !33)
!57 = !DILocation(line: 23, column: 5, scope: !21)
!58 = !DILocalVariable(name: "_goodB2G_i_0", scope: !59, file: !1, line: 26, type: !15)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 25, column: 7)
!60 = distinct !DILexicalBlock(scope: !21, file: !1, line: 24, column: 5)
!61 = !DILocation(line: 26, column: 13, scope: !59)
!62 = !DILocalVariable(name: "_goodB2G_n_0", scope: !59, file: !1, line: 27, type: !15)
!63 = !DILocation(line: 27, column: 13, scope: !59)
!64 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !59, file: !1, line: 28, type: !15)
!65 = !DILocation(line: 28, column: 13, scope: !59)
!66 = !DILocation(line: 29, column: 20, scope: !67)
!67 = distinct !DILexicalBlock(scope: !59, file: !1, line: 29, column: 13)
!68 = !DILocation(line: 29, column: 13, scope: !67)
!69 = !DILocation(line: 29, column: 58, scope: !67)
!70 = !DILocation(line: 29, column: 13, scope: !59)
!71 = !DILocation(line: 31, column: 15, scope: !72)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 31, column: 15)
!73 = distinct !DILexicalBlock(scope: !67, file: !1, line: 30, column: 9)
!74 = !DILocation(line: 31, column: 28, scope: !72)
!75 = !DILocation(line: 31, column: 15, scope: !73)
!76 = !DILocation(line: 33, column: 36, scope: !77)
!77 = distinct !DILexicalBlock(scope: !72, file: !1, line: 32, column: 11)
!78 = !DILocation(line: 34, column: 31, scope: !79)
!79 = distinct !DILexicalBlock(scope: !77, file: !1, line: 34, column: 13)
!80 = !DILocation(line: 34, column: 18, scope: !79)
!81 = !DILocation(line: 34, column: 36, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 34, column: 13)
!83 = !DILocation(line: 34, column: 51, scope: !82)
!84 = !DILocation(line: 34, column: 49, scope: !82)
!85 = !DILocation(line: 34, column: 13, scope: !79)
!86 = !DILocation(line: 36, column: 37, scope: !87)
!87 = distinct !DILexicalBlock(scope: !82, file: !1, line: 35, column: 13)
!88 = !DILocation(line: 37, column: 13, scope: !87)
!89 = !DILocation(line: 34, column: 77, scope: !82)
!90 = !DILocation(line: 34, column: 13, scope: !82)
!91 = distinct !{!91, !85, !92, !93}
!92 = !DILocation(line: 37, column: 13, scope: !79)
!93 = !{!"llvm.loop.mustprogress"}
!94 = !DILocation(line: 39, column: 26, scope: !77)
!95 = !DILocation(line: 39, column: 13, scope: !77)
!96 = !DILocation(line: 40, column: 11, scope: !77)
!97 = !DILocation(line: 42, column: 9, scope: !73)
!98 = !DILocation(line: 45, column: 7, scope: !60)
!99 = !DILabel(scope: !21, name: "goodB2G_label_", file: !1, line: 48)
!100 = !DILocation(line: 48, column: 5, scope: !21)
!101 = !DILocalVariable(name: "_goodG2B_data_0", scope: !102, file: !1, line: 55, type: !10)
!102 = distinct !DILexicalBlock(scope: !7, file: !1, line: 54, column: 3)
!103 = !DILocation(line: 55, column: 11, scope: !102)
!104 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !102, file: !1, line: 56, type: !24)
!105 = !DILocation(line: 56, column: 10, scope: !102)
!106 = !DILocation(line: 57, column: 23, scope: !102)
!107 = !DILocation(line: 57, column: 21, scope: !102)
!108 = !DILocation(line: 58, column: 5, scope: !102)
!109 = !DILocation(line: 60, column: 14, scope: !110)
!110 = distinct !DILexicalBlock(scope: !102, file: !1, line: 59, column: 5)
!111 = !DILocation(line: 60, column: 7, scope: !110)
!112 = !DILocation(line: 61, column: 7, scope: !110)
!113 = !DILocation(line: 64, column: 5, scope: !102)
!114 = !DILocalVariable(name: "_goodG2B_i_0", scope: !115, file: !1, line: 67, type: !15)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 66, column: 7)
!116 = distinct !DILexicalBlock(scope: !102, file: !1, line: 65, column: 5)
!117 = !DILocation(line: 67, column: 13, scope: !115)
!118 = !DILocalVariable(name: "_goodG2B_n_0", scope: !115, file: !1, line: 68, type: !15)
!119 = !DILocation(line: 68, column: 13, scope: !115)
!120 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !115, file: !1, line: 69, type: !15)
!121 = !DILocation(line: 69, column: 13, scope: !115)
!122 = !DILocation(line: 70, column: 20, scope: !123)
!123 = distinct !DILexicalBlock(scope: !115, file: !1, line: 70, column: 13)
!124 = !DILocation(line: 70, column: 13, scope: !123)
!125 = !DILocation(line: 70, column: 58, scope: !123)
!126 = !DILocation(line: 70, column: 13, scope: !115)
!127 = !DILocation(line: 72, column: 34, scope: !128)
!128 = distinct !DILexicalBlock(scope: !123, file: !1, line: 71, column: 9)
!129 = !DILocation(line: 73, column: 11, scope: !128)
!130 = !DILocation(line: 73, column: 18, scope: !128)
!131 = !DILocation(line: 74, column: 24, scope: !128)
!132 = !DILocation(line: 74, column: 11, scope: !128)
!133 = !DILocation(line: 75, column: 9, scope: !128)
!134 = !DILocation(line: 78, column: 7, scope: !116)
!135 = !DILabel(scope: !102, name: "goodG2B_label_", file: !1, line: 81)
!136 = !DILocation(line: 81, column: 5, scope: !102)
!137 = !DILocation(line: 86, column: 3, scope: !102)
!138 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_16_good_label_", file: !1, line: 87)
!139 = !DILocation(line: 87, column: 3, scope: !7)
!140 = !DILocation(line: 92, column: 1, scope: !7)
