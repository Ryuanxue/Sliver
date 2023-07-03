; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_12127CWE606_Unchecked_Loop_Condition__char_console_12184_1_0.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_12127CWE606_Unchecked_Loop_Condition__char_console_12184_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_console_12127CWE606_Unchecked_Loop_Condition__char_console_12184_1_0(i8* %_goodB2G_data_0, void (i32)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i32)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodB2G_i_0 = alloca i32, align 4
  %_goodB2G_n_0 = alloca i32, align 4
  %_goodB2G_intVariable_0 = alloca i32, align 4
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !28, metadata !DIExpression()), !dbg !35
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !36
  %call = call i64 @strlen(i8* %1) #6, !dbg !37
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !35
  %2 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !38
  %sub = sub i64 100, %2, !dbg !40
  %cmp = icmp ugt i64 %sub, 1, !dbg !41
  br i1 %cmp, label %if.then, label %if.end18, !dbg !42

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !43
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !46
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !47
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !48
  %sub1 = sub i64 100, %5, !dbg !49
  %conv = trunc i64 %sub1 to i32, !dbg !50
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !51
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !52
  %cmp3 = icmp ne i8* %call2, null, !dbg !53
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !54

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !55
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !57
  store i64 %call6, i64* %_goodB2G_dataLen_0, align 8, !dbg !58
  %8 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !59
  %cmp7 = icmp ugt i64 %8, 0, !dbg !61
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !62

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !63
  %10 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !64
  %sub9 = sub i64 %10, 1, !dbg !65
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !63
  %11 = load i8, i8* %arrayidx, align 1, !dbg !63
  %conv10 = sext i8 %11 to i32, !dbg !63
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !66
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !67

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !68
  %13 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !70
  %sub14 = sub i64 %13, 1, !dbg !71
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !68
  store i8 0, i8* %arrayidx15, align 1, !dbg !72
  br label %if.end, !dbg !73

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !74

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !75
  %14 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !77
  %15 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !78
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !77
  store i8 0, i8* %arrayidx16, align 1, !dbg !79
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !80

if.end18:                                         ; preds = %if.end17, %entry
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0, metadata !81, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_n_0, metadata !86, metadata !DIExpression()), !dbg !87
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_intVariable_0, metadata !88, metadata !DIExpression()), !dbg !89
  %16 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !90
  %call19 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %_goodB2G_n_0) #7, !dbg !92
  %cmp20 = icmp eq i32 %call19, 1, !dbg !93
  br i1 %cmp20, label %if.then22, label %if.end30, !dbg !94

if.then22:                                        ; preds = %if.end18
  %17 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !95
  %cmp23 = icmp slt i32 %17, 10000, !dbg !98
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !99

if.then25:                                        ; preds = %if.then22
  store i32 0, i32* %_goodB2G_intVariable_0, align 4, !dbg !100
  store i32 0, i32* %_goodB2G_i_0, align 4, !dbg !102
  br label %for.cond, !dbg !104

for.cond:                                         ; preds = %for.inc, %if.then25
  %18 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !105
  %19 = load i32, i32* %_goodB2G_n_0, align 4, !dbg !107
  %cmp26 = icmp slt i32 %18, %19, !dbg !108
  br i1 %cmp26, label %for.body, label %for.end, !dbg !109

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !110
  %inc = add nsw i32 %20, 1, !dbg !110
  store i32 %inc, i32* %_goodB2G_intVariable_0, align 4, !dbg !110
  br label %for.inc, !dbg !112

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %_goodB2G_i_0, align 4, !dbg !113
  %inc28 = add nsw i32 %21, 1, !dbg !113
  store i32 %inc28, i32* %_goodB2G_i_0, align 4, !dbg !113
  br label %for.cond, !dbg !114, !llvm.loop !115

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %_goodB2G_intVariable_0, align 4, !dbg !118
  call void @printIntLine(i32 %22), !dbg !119
  br label %if.end29, !dbg !120

if.end29:                                         ; preds = %for.end, %if.then22
  br label %if.end30, !dbg !121

if.end30:                                         ; preds = %if.end29, %if.end18
  br label %goodB2G_label_, !dbg !122

goodB2G_label_:                                   ; preds = %if.end30
  call void @llvm.dbg.label(metadata !123), !dbg !124
  ret void, !dbg !125
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local void @printIntLine(i32) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_12127CWE606_Unchecked_Loop_Condition__char_console_12184_1_0.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_108_989/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_12127CWE606_Unchecked_Loop_Condition__char_console_12184_1_0", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !4}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 119, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 143, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !9, file: !1, line: 5, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 5, column: 8, scope: !9)
!26 = !DILocation(line: 6, column: 21, scope: !9)
!27 = !DILocation(line: 6, column: 19, scope: !9)
!28 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !29, file: !1, line: 35, type: !32)
!29 = distinct !DILexicalBlock(scope: !30, file: !1, line: 34, column: 5)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 33, column: 3)
!31 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 7)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 35, column: 14, scope: !29)
!36 = !DILocation(line: 35, column: 42, scope: !29)
!37 = !DILocation(line: 35, column: 35, scope: !29)
!38 = !DILocation(line: 36, column: 18, scope: !39)
!39 = distinct !DILexicalBlock(scope: !29, file: !1, line: 36, column: 11)
!40 = !DILocation(line: 36, column: 16, scope: !39)
!41 = !DILocation(line: 36, column: 38, scope: !39)
!42 = !DILocation(line: 36, column: 11, scope: !29)
!43 = !DILocation(line: 38, column: 19, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 38, column: 13)
!45 = distinct !DILexicalBlock(scope: !39, file: !1, line: 37, column: 7)
!46 = !DILocation(line: 38, column: 37, scope: !44)
!47 = !DILocation(line: 38, column: 35, scope: !44)
!48 = !DILocation(line: 38, column: 70, scope: !44)
!49 = !DILocation(line: 38, column: 68, scope: !44)
!50 = !DILocation(line: 38, column: 57, scope: !44)
!51 = !DILocation(line: 38, column: 91, scope: !44)
!52 = !DILocation(line: 38, column: 13, scope: !44)
!53 = !DILocation(line: 38, column: 98, scope: !44)
!54 = !DILocation(line: 38, column: 13, scope: !45)
!55 = !DILocation(line: 40, column: 39, scope: !56)
!56 = distinct !DILexicalBlock(scope: !44, file: !1, line: 39, column: 9)
!57 = !DILocation(line: 40, column: 32, scope: !56)
!58 = !DILocation(line: 40, column: 30, scope: !56)
!59 = !DILocation(line: 41, column: 16, scope: !60)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 41, column: 15)
!61 = !DILocation(line: 41, column: 35, scope: !60)
!62 = !DILocation(line: 41, column: 40, scope: !60)
!63 = !DILocation(line: 41, column: 44, scope: !60)
!64 = !DILocation(line: 41, column: 60, scope: !60)
!65 = !DILocation(line: 41, column: 79, scope: !60)
!66 = !DILocation(line: 41, column: 84, scope: !60)
!67 = !DILocation(line: 41, column: 15, scope: !56)
!68 = !DILocation(line: 43, column: 13, scope: !69)
!69 = distinct !DILexicalBlock(scope: !60, file: !1, line: 42, column: 11)
!70 = !DILocation(line: 43, column: 29, scope: !69)
!71 = !DILocation(line: 43, column: 48, scope: !69)
!72 = !DILocation(line: 43, column: 53, scope: !69)
!73 = !DILocation(line: 44, column: 11, scope: !69)
!74 = !DILocation(line: 46, column: 9, scope: !56)
!75 = !DILocation(line: 49, column: 11, scope: !76)
!76 = distinct !DILexicalBlock(scope: !44, file: !1, line: 48, column: 9)
!77 = !DILocation(line: 50, column: 11, scope: !76)
!78 = !DILocation(line: 50, column: 27, scope: !76)
!79 = !DILocation(line: 50, column: 47, scope: !76)
!80 = !DILocation(line: 53, column: 7, scope: !45)
!81 = !DILocalVariable(name: "_goodB2G_i_0", scope: !82, file: !1, line: 80, type: !4)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 79, column: 5)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 78, column: 3)
!84 = distinct !DILexicalBlock(scope: !9, file: !1, line: 58, column: 7)
!85 = !DILocation(line: 80, column: 11, scope: !82)
!86 = !DILocalVariable(name: "_goodB2G_n_0", scope: !82, file: !1, line: 81, type: !4)
!87 = !DILocation(line: 81, column: 11, scope: !82)
!88 = !DILocalVariable(name: "_goodB2G_intVariable_0", scope: !82, file: !1, line: 82, type: !4)
!89 = !DILocation(line: 82, column: 11, scope: !82)
!90 = !DILocation(line: 83, column: 18, scope: !91)
!91 = distinct !DILexicalBlock(scope: !82, file: !1, line: 83, column: 11)
!92 = !DILocation(line: 83, column: 11, scope: !91)
!93 = !DILocation(line: 83, column: 56, scope: !91)
!94 = !DILocation(line: 83, column: 11, scope: !82)
!95 = !DILocation(line: 85, column: 13, scope: !96)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 85, column: 13)
!97 = distinct !DILexicalBlock(scope: !91, file: !1, line: 84, column: 7)
!98 = !DILocation(line: 85, column: 26, scope: !96)
!99 = !DILocation(line: 85, column: 13, scope: !97)
!100 = !DILocation(line: 87, column: 34, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 86, column: 9)
!102 = !DILocation(line: 88, column: 29, scope: !103)
!103 = distinct !DILexicalBlock(scope: !101, file: !1, line: 88, column: 11)
!104 = !DILocation(line: 88, column: 16, scope: !103)
!105 = !DILocation(line: 88, column: 34, scope: !106)
!106 = distinct !DILexicalBlock(scope: !103, file: !1, line: 88, column: 11)
!107 = !DILocation(line: 88, column: 49, scope: !106)
!108 = !DILocation(line: 88, column: 47, scope: !106)
!109 = !DILocation(line: 88, column: 11, scope: !103)
!110 = !DILocation(line: 90, column: 35, scope: !111)
!111 = distinct !DILexicalBlock(scope: !106, file: !1, line: 89, column: 11)
!112 = !DILocation(line: 91, column: 11, scope: !111)
!113 = !DILocation(line: 88, column: 75, scope: !106)
!114 = !DILocation(line: 88, column: 11, scope: !106)
!115 = distinct !{!115, !109, !116, !117}
!116 = !DILocation(line: 91, column: 11, scope: !103)
!117 = !{!"llvm.loop.mustprogress"}
!118 = !DILocation(line: 93, column: 24, scope: !101)
!119 = !DILocation(line: 93, column: 11, scope: !101)
!120 = !DILocation(line: 94, column: 9, scope: !101)
!121 = !DILocation(line: 96, column: 7, scope: !97)
!122 = !DILocation(line: 58, column: 7, scope: !84)
!123 = !DILabel(scope: !9, name: "goodB2G_label_", file: !1, line: 101)
!124 = !DILocation(line: 101, column: 3, scope: !9)
!125 = !DILocation(line: 106, column: 1, scope: !9)
