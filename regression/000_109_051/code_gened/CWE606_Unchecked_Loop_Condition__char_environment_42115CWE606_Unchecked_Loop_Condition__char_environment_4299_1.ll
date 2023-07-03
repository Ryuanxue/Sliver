; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_environment_42115CWE606_Unchecked_Loop_Condition__char_environment_4299_1.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_environment_42115CWE606_Unchecked_Loop_Condition__char_environment_4299_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_environment_42115CWE606_Unchecked_Loop_Condition__char_environment_4299_1(i8* %_goodB2GSource_environment_0, i8** %goodB2GSource_return_, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2GSource_environment_0.addr = alloca i8*, align 8
  %goodB2GSource_return_.addr = alloca i8**, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_data_0 = alloca i8*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2GSource_dataLen_0 = alloca i64, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodG2B_i_0 = alloca i32, align 4
  %_goodG2B_n_0 = alloca i32, align 4
  %_goodG2B_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2GSource_environment_0, i8** %_goodB2GSource_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2GSource_environment_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store i8** %goodB2GSource_return_, i8*** %goodB2GSource_return_.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %goodB2GSource_return_.addr, metadata !19, metadata !DIExpression()), !dbg !20
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0, metadata !23, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !26, metadata !DIExpression()), !dbg !30
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !30
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !30
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !31
  store i8* %arraydecay, i8** %_goodB2G_data_0, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i64* %_goodB2GSource_dataLen_0, metadata !33, metadata !DIExpression()), !dbg !39
  %1 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !40
  %call = call i64 @strlen(i8* %1) #6, !dbg !41
  store i64 %call, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !39
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !42
  store i8* %call1, i8** %_goodB2GSource_environment_0.addr, align 8, !dbg !43
  %2 = load i8*, i8** %_goodB2GSource_environment_0.addr, align 8, !dbg !44
  %cmp = icmp ne i8* %2, null, !dbg !46
  br i1 %cmp, label %if.then, label %if.end, !dbg !47

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !48
  %4 = load i64, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !51
  %5 = load i8*, i8** %_goodB2GSource_environment_0.addr, align 8, !dbg !52
  %6 = load i64, i64* %_goodB2GSource_dataLen_0, align 8, !dbg !53
  %sub = sub i64 100, %6, !dbg !54
  %sub2 = sub i64 %sub, 1, !dbg !55
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !56
  br label %if.end, !dbg !57

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !58
  %8 = bitcast i8* %7 to i8**, !dbg !58
  store i8** %8, i8*** %goodB2GSource_return_.addr, align 8, !dbg !59
  br label %goodB2GSource_label_, !dbg !60

goodB2GSource_label_:                             ; preds = %if.end
  call void @llvm.dbg.label(metadata !61), !dbg !62
  %9 = load i8**, i8*** %goodB2GSource_return_.addr, align 8, !dbg !63
  %10 = bitcast i8** %9 to i8*, !dbg !63
  store i8* %10, i8** %_goodB2G_data_0, align 8, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !65, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !70, metadata !DIExpression()), !dbg !71
  %11 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !72
  %call4 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !74
  %cmp5 = icmp eq i32 %call4, 1, !dbg !75
  br i1 %cmp5, label %if.then6, label %if.end12, !dbg !76

if.then6:                                         ; preds = %goodB2GSource_label_
  %12 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !77
  %cmp7 = icmp slt i32 %12, 10000, !dbg !80
  br i1 %cmp7, label %if.then8, label %if.end11, !dbg !81

if.then8:                                         ; preds = %if.then6
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !82
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !84
  br label %for.cond, !dbg !86

for.cond:                                         ; preds = %for.inc, %if.then8
  %13 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !87
  %14 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !89
  %cmp9 = icmp slt i32 %13, %14, !dbg !90
  br i1 %cmp9, label %for.body, label %for.end, !dbg !91

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !92
  %inc = add nsw i32 %15, 1, !dbg !92
  store i32 %inc, i32* %_goodB2G_intVariable_0, align 4, !dbg !92
  br label %for.inc, !dbg !94

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !95
  %inc10 = add nsw i32 %16, 1, !dbg !95
  store i32 %inc10, i32* %_goodB2G_i_0, align 4, !dbg !95
  br label %for.cond, !dbg !96, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !100
  call void @printIntLine(i32 %17), !dbg !101
  br label %if.end11, !dbg !102

if.end11:                                         ; preds = %for.end, %if.then6
  br label %if.end12, !dbg !103

if.end12:                                         ; preds = %if.end11, %goodB2GSource_label_
  br label %goodB2G_label_, !dbg !104

goodB2G_label_:                                   ; preds = %if.end12
  call void @llvm.dbg.label(metadata !105), !dbg !106
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !107, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !110, metadata !DIExpression()), !dbg !111
  %18 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !111
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 100, i1 false), !dbg !111
  %arraydecay13 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !112
  store i8* %arraydecay13, i8** %_goodG2B_data_0, align 8, !dbg !113
  %19 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !114
  %call14 = call i8* @goodG2BSource(i8* %19), !dbg !115
  store i8* %call14, i8** %_goodG2B_data_0, align 8, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_i_0, metadata !117, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_n_0, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata i32* %_goodG2B_intVariable_0, metadata !122, metadata !DIExpression()), !dbg !123
  %20 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !124
  %call15 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodG2B_n_0) #7, !dbg !126
  %cmp16 = icmp eq i32 %call15, 1, !dbg !127
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !128

if.then17:                                        ; preds = %goodB2G_label_
  store i32 0, i32* %_goodG2B_intVariable_0, align 4, !dbg !129
  %21 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !131
  %22 = load i32, i32* %_goodG2B_n_0, align 4, !dbg !132
  call void %21(i32 %22), !dbg !131
  %23 = load i32, i32* %_goodG2B_intVariable_0, align 4, !dbg !133
  call void @printIntLine(i32 %23), !dbg !134
  br label %if.end18, !dbg !135

if.end18:                                         ; preds = %if.then17, %goodB2G_label_
  br label %goodG2B_label_, !dbg !136

goodG2B_label_:                                   ; preds = %if.end18
  call void @llvm.dbg.label(metadata !137), !dbg !138
  br label %CWE606_Unchecked_Loop_Condition__char_environment_42_good_label_, !dbg !139

CWE606_Unchecked_Loop_Condition__char_environment_42_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !140), !dbg !141
  ret void, !dbg !142
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

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local void @printIntLine(i32) #5

declare dso_local i8* @goodG2BSource(i8*) #5

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
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_environment_42115CWE606_Unchecked_Loop_Condition__char_environment_4299_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_051/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_environment_42115CWE606_Unchecked_Loop_Condition__char_environment_4299_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12, !13}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DILocalVariable(name: "_goodB2GSource_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!18 = !DILocation(line: 3, column: 124, scope: !7)
!19 = !DILocalVariable(name: "goodB2GSource_return_", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!20 = !DILocation(line: 3, column: 162, scope: !7)
!21 = !DILocalVariable(name: "opsink", arg: 3, scope: !7, file: !1, line: 3, type: !13)
!22 = !DILocation(line: 3, column: 192, scope: !7)
!23 = !DILocalVariable(name: "_goodB2G_data_0", scope: !24, file: !1, line: 6, type: !10)
!24 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!25 = !DILocation(line: 6, column: 11, scope: !24)
!26 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !24, file: !1, line: 7, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 100)
!30 = !DILocation(line: 7, column: 10, scope: !24)
!31 = !DILocation(line: 8, column: 23, scope: !24)
!32 = !DILocation(line: 8, column: 21, scope: !24)
!33 = !DILocalVariable(name: "_goodB2GSource_dataLen_0", scope: !34, file: !1, line: 11, type: !36)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 10, column: 7)
!35 = distinct !DILexicalBlock(scope: !24, file: !1, line: 9, column: 5)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 11, column: 16, scope: !34)
!40 = !DILocation(line: 11, column: 50, scope: !34)
!41 = !DILocation(line: 11, column: 43, scope: !34)
!42 = !DILocation(line: 12, column: 40, scope: !34)
!43 = !DILocation(line: 12, column: 38, scope: !34)
!44 = !DILocation(line: 13, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !34, file: !1, line: 13, column: 13)
!46 = !DILocation(line: 13, column: 42, scope: !45)
!47 = !DILocation(line: 13, column: 13, scope: !34)
!48 = !DILocation(line: 15, column: 19, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 14, column: 9)
!50 = !DILocation(line: 15, column: 37, scope: !49)
!51 = !DILocation(line: 15, column: 35, scope: !49)
!52 = !DILocation(line: 15, column: 63, scope: !49)
!53 = !DILocation(line: 15, column: 100, scope: !49)
!54 = !DILocation(line: 15, column: 98, scope: !49)
!55 = !DILocation(line: 15, column: 126, scope: !49)
!56 = !DILocation(line: 15, column: 11, scope: !49)
!57 = !DILocation(line: 16, column: 9, scope: !49)
!58 = !DILocation(line: 19, column: 31, scope: !35)
!59 = !DILocation(line: 19, column: 29, scope: !35)
!60 = !DILocation(line: 20, column: 7, scope: !35)
!61 = !DILabel(scope: !35, name: "goodB2GSource_label_", file: !1, line: 21)
!62 = !DILocation(line: 21, column: 7, scope: !35)
!63 = !DILocation(line: 27, column: 23, scope: !24)
!64 = !DILocation(line: 27, column: 21, scope: !24)
!65 = !DILocalVariable(name: "_goodB2G_i_0", scope: !66, file: !1, line: 29, type: !16)
!66 = distinct !DILexicalBlock(scope: !24, file: !1, line: 28, column: 5)
!67 = !DILocation(line: 29, column: 11, scope: !66)
!68 = !DILocalVariable(name: "_goodB2G_n_0", scope: !66, file: !1, line: 30, type: !16)
!69 = !DILocation(line: 30, column: 11, scope: !66)
!70 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !66, file: !1, line: 31, type: !16)
!71 = !DILocation(line: 31, column: 11, scope: !66)
!72 = !DILocation(line: 32, column: 18, scope: !73)
!73 = distinct !DILexicalBlock(scope: !66, file: !1, line: 32, column: 11)
!74 = !DILocation(line: 32, column: 11, scope: !73)
!75 = !DILocation(line: 32, column: 56, scope: !73)
!76 = !DILocation(line: 32, column: 11, scope: !66)
!77 = !DILocation(line: 34, column: 13, scope: !78)
!78 = distinct !DILexicalBlock(scope: !79, file: !1, line: 34, column: 13)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 33, column: 7)
!80 = !DILocation(line: 34, column: 26, scope: !78)
!81 = !DILocation(line: 34, column: 13, scope: !79)
!82 = !DILocation(line: 36, column: 34, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !1, line: 35, column: 9)
!84 = !DILocation(line: 37, column: 29, scope: !85)
!85 = distinct !DILexicalBlock(scope: !83, file: !1, line: 37, column: 11)
!86 = !DILocation(line: 37, column: 16, scope: !85)
!87 = !DILocation(line: 37, column: 34, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 37, column: 11)
!89 = !DILocation(line: 37, column: 49, scope: !88)
!90 = !DILocation(line: 37, column: 47, scope: !88)
!91 = !DILocation(line: 37, column: 11, scope: !85)
!92 = !DILocation(line: 39, column: 35, scope: !93)
!93 = distinct !DILexicalBlock(scope: !88, file: !1, line: 38, column: 11)
!94 = !DILocation(line: 40, column: 11, scope: !93)
!95 = !DILocation(line: 37, column: 75, scope: !88)
!96 = !DILocation(line: 37, column: 11, scope: !88)
!97 = distinct !{!97, !91, !98, !99}
!98 = !DILocation(line: 40, column: 11, scope: !85)
!99 = !{!"llvm.loop.mustprogress"}
!100 = !DILocation(line: 42, column: 24, scope: !83)
!101 = !DILocation(line: 42, column: 11, scope: !83)
!102 = !DILocation(line: 43, column: 9, scope: !83)
!103 = !DILocation(line: 45, column: 7, scope: !79)
!104 = !DILocation(line: 47, column: 5, scope: !66)
!105 = !DILabel(scope: !24, name: "goodB2G_label_", file: !1, line: 48)
!106 = !DILocation(line: 48, column: 5, scope: !24)
!107 = !DILocalVariable(name: "_goodG2B_data_0", scope: !108, file: !1, line: 55, type: !10)
!108 = distinct !DILexicalBlock(scope: !7, file: !1, line: 54, column: 3)
!109 = !DILocation(line: 55, column: 11, scope: !108)
!110 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !108, file: !1, line: 56, type: !27)
!111 = !DILocation(line: 56, column: 10, scope: !108)
!112 = !DILocation(line: 57, column: 23, scope: !108)
!113 = !DILocation(line: 57, column: 21, scope: !108)
!114 = !DILocation(line: 58, column: 37, scope: !108)
!115 = !DILocation(line: 58, column: 23, scope: !108)
!116 = !DILocation(line: 58, column: 21, scope: !108)
!117 = !DILocalVariable(name: "_goodG2B_i_0", scope: !118, file: !1, line: 60, type: !16)
!118 = distinct !DILexicalBlock(scope: !108, file: !1, line: 59, column: 5)
!119 = !DILocation(line: 60, column: 11, scope: !118)
!120 = !DILocalVariable(name: "_goodG2B_n_0", scope: !118, file: !1, line: 61, type: !16)
!121 = !DILocation(line: 61, column: 11, scope: !118)
!122 = !DILocalVariable(name: "_goodG2B_intVariable_0", scope: !118, file: !1, line: 62, type: !16)
!123 = !DILocation(line: 62, column: 11, scope: !118)
!124 = !DILocation(line: 63, column: 18, scope: !125)
!125 = distinct !DILexicalBlock(scope: !118, file: !1, line: 63, column: 11)
!126 = !DILocation(line: 63, column: 11, scope: !125)
!127 = !DILocation(line: 63, column: 56, scope: !125)
!128 = !DILocation(line: 63, column: 11, scope: !118)
!129 = !DILocation(line: 65, column: 32, scope: !130)
!130 = distinct !DILexicalBlock(scope: !125, file: !1, line: 64, column: 7)
!131 = !DILocation(line: 66, column: 9, scope: !130)
!132 = !DILocation(line: 66, column: 16, scope: !130)
!133 = !DILocation(line: 67, column: 22, scope: !130)
!134 = !DILocation(line: 67, column: 9, scope: !130)
!135 = !DILocation(line: 68, column: 7, scope: !130)
!136 = !DILocation(line: 70, column: 5, scope: !118)
!137 = !DILabel(scope: !108, name: "goodG2B_label_", file: !1, line: 71)
!138 = !DILocation(line: 71, column: 5, scope: !108)
!139 = !DILocation(line: 76, column: 3, scope: !108)
!140 = !DILabel(scope: !7, name: "CWE606_Unchecked_Loop_Condition__char_environment_42_good_label_", file: !1, line: 77)
!141 = !DILocation(line: 77, column: 3, scope: !7)
!142 = !DILocation(line: 82, column: 1, scope: !7)
