; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_1788CWE134_Uncontrolled_Format_String__char_console_printf_17110_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_1788CWE134_Uncontrolled_Format_String__char_console_printf_17110_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_1788CWE134_Uncontrolled_Format_String__char_console_printf_17110_1(i8* %_goodB2G_data_0, i32 %_goodB2G_i_0, i32 %_goodB2G_k_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %_goodB2G_i_0.addr = alloca i32, align 4
  %_goodB2G_k_0.addr = alloca i32, align 4
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 %_goodB2G_i_0, i32* %_goodB2G_i_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_i_0.addr, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 %_goodB2G_k_0, i32* %_goodB2G_k_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_goodB2G_k_0.addr, metadata !21, metadata !DIExpression()), !dbg !22
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !25, metadata !DIExpression()), !dbg !29
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !29
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !29
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !30
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !31
  store i32 0, i32* %_goodB2G_i_0.addr, align 4, !dbg !32
  br label %for.cond, !dbg !34

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %_goodB2G_i_0.addr, align 4, !dbg !35
  %cmp = icmp slt i32 %1, 1, !dbg !37
  br i1 %cmp, label %for.body, label %for.end, !dbg !38

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !39, metadata !DIExpression()), !dbg !45
  %2 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !46
  %call = call i64 @strlen(i8* %2) #5, !dbg !47
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !45
  %3 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !48
  %sub = sub i64 100, %3, !dbg !50
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !51
  br i1 %cmp1, label %if.then, label %if.end19, !dbg !52

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !53
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !56
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !57
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !58
  %sub2 = sub i64 100, %6, !dbg !59
  %conv = trunc i64 %sub2 to i32, !dbg !60
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !61
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !62
  %cmp4 = icmp ne i8* %call3, null, !dbg !63
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !64

if.then6:                                         ; preds = %if.then
  %8 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !65
  %call7 = call i64 @strlen(i8* %8) #5, !dbg !67
  store i64 %call7, i64* %_goodB2G_dataLen_0, align 8, !dbg !68
  %9 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !69
  %cmp8 = icmp ugt i64 %9, 0, !dbg !71
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !72

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !73
  %11 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !74
  %sub10 = sub i64 %11, 1, !dbg !75
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !73
  %12 = load i8, i8* %arrayidx, align 1, !dbg !73
  %conv11 = sext i8 %12 to i32, !dbg !73
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !76
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !77

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !78
  %14 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !80
  %sub15 = sub i64 %14, 1, !dbg !81
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !78
  store i8 0, i8* %arrayidx16, align 1, !dbg !82
  br label %if.end, !dbg !83

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !84

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !85
  %15 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !87
  %16 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !88
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !87
  store i8 0, i8* %arrayidx17, align 1, !dbg !89
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !90

if.end19:                                         ; preds = %if.end18, %for.body
  br label %for.inc, !dbg !91

for.inc:                                          ; preds = %if.end19
  %17 = load i32, i32* %_goodB2G_i_0.addr, align 4, !dbg !92
  %inc = add nsw i32 %17, 1, !dbg !92
  store i32 %inc, i32* %_goodB2G_i_0.addr, align 4, !dbg !92
  br label %for.cond, !dbg !93, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %_goodB2G_k_0.addr, align 4, !dbg !97
  br label %for.cond20, !dbg !99

for.cond20:                                       ; preds = %for.inc24, %for.end
  %18 = load i32, i32* %_goodB2G_k_0.addr, align 4, !dbg !100
  %cmp21 = icmp slt i32 %18, 1, !dbg !102
  br i1 %cmp21, label %for.body23, label %for.end26, !dbg !103

for.body23:                                       ; preds = %for.cond20
  %19 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !104
  %20 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !106
  call void %19(i8* %20), !dbg !104
  br label %for.inc24, !dbg !107

for.inc24:                                        ; preds = %for.body23
  %21 = load i32, i32* %_goodB2G_k_0.addr, align 4, !dbg !108
  %inc25 = add nsw i32 %21, 1, !dbg !108
  store i32 %inc25, i32* %_goodB2G_k_0.addr, align 4, !dbg !108
  br label %for.cond20, !dbg !109, !llvm.loop !110

for.end26:                                        ; preds = %for.cond20
  br label %goodB2G_label_, !dbg !111

goodB2G_label_:                                   ; preds = %for.end26
  call void @llvm.dbg.label(metadata !112), !dbg !113
  ret void, !dbg !114
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_1788CWE134_Uncontrolled_Format_String__char_console_printf_17110_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_450/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_1788CWE134_Uncontrolled_Format_String__char_console_printf_17110_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !4, !4, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 134, scope: !9)
!19 = !DILocalVariable(name: "_goodB2G_i_0", arg: 2, scope: !9, file: !1, line: 3, type: !4)
!20 = !DILocation(line: 3, column: 155, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_k_0", arg: 3, scope: !9, file: !1, line: 3, type: !4)
!22 = !DILocation(line: 3, column: 173, scope: !9)
!23 = !DILocalVariable(name: "opsink", arg: 4, scope: !9, file: !1, line: 3, type: !14)
!24 = !DILocation(line: 3, column: 194, scope: !9)
!25 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !9, file: !1, line: 5, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 100)
!29 = !DILocation(line: 5, column: 8, scope: !9)
!30 = !DILocation(line: 6, column: 21, scope: !9)
!31 = !DILocation(line: 6, column: 19, scope: !9)
!32 = !DILocation(line: 7, column: 21, scope: !33)
!33 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 3)
!34 = !DILocation(line: 7, column: 8, scope: !33)
!35 = !DILocation(line: 7, column: 26, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !1, line: 7, column: 3)
!37 = !DILocation(line: 7, column: 39, scope: !36)
!38 = !DILocation(line: 7, column: 3, scope: !33)
!39 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !40, file: !1, line: 10, type: !42)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 9, column: 5)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 8, column: 3)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 46, baseType: !44)
!43 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!44 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!45 = !DILocation(line: 10, column: 14, scope: !40)
!46 = !DILocation(line: 10, column: 42, scope: !40)
!47 = !DILocation(line: 10, column: 35, scope: !40)
!48 = !DILocation(line: 11, column: 18, scope: !49)
!49 = distinct !DILexicalBlock(scope: !40, file: !1, line: 11, column: 11)
!50 = !DILocation(line: 11, column: 16, scope: !49)
!51 = !DILocation(line: 11, column: 38, scope: !49)
!52 = !DILocation(line: 11, column: 11, scope: !40)
!53 = !DILocation(line: 13, column: 19, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 13, column: 13)
!55 = distinct !DILexicalBlock(scope: !49, file: !1, line: 12, column: 7)
!56 = !DILocation(line: 13, column: 37, scope: !54)
!57 = !DILocation(line: 13, column: 35, scope: !54)
!58 = !DILocation(line: 13, column: 70, scope: !54)
!59 = !DILocation(line: 13, column: 68, scope: !54)
!60 = !DILocation(line: 13, column: 57, scope: !54)
!61 = !DILocation(line: 13, column: 91, scope: !54)
!62 = !DILocation(line: 13, column: 13, scope: !54)
!63 = !DILocation(line: 13, column: 98, scope: !54)
!64 = !DILocation(line: 13, column: 13, scope: !55)
!65 = !DILocation(line: 15, column: 39, scope: !66)
!66 = distinct !DILexicalBlock(scope: !54, file: !1, line: 14, column: 9)
!67 = !DILocation(line: 15, column: 32, scope: !66)
!68 = !DILocation(line: 15, column: 30, scope: !66)
!69 = !DILocation(line: 16, column: 16, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 16, column: 15)
!71 = !DILocation(line: 16, column: 35, scope: !70)
!72 = !DILocation(line: 16, column: 40, scope: !70)
!73 = !DILocation(line: 16, column: 44, scope: !70)
!74 = !DILocation(line: 16, column: 60, scope: !70)
!75 = !DILocation(line: 16, column: 79, scope: !70)
!76 = !DILocation(line: 16, column: 84, scope: !70)
!77 = !DILocation(line: 16, column: 15, scope: !66)
!78 = !DILocation(line: 18, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !70, file: !1, line: 17, column: 11)
!80 = !DILocation(line: 18, column: 29, scope: !79)
!81 = !DILocation(line: 18, column: 48, scope: !79)
!82 = !DILocation(line: 18, column: 53, scope: !79)
!83 = !DILocation(line: 19, column: 11, scope: !79)
!84 = !DILocation(line: 21, column: 9, scope: !66)
!85 = !DILocation(line: 24, column: 11, scope: !86)
!86 = distinct !DILexicalBlock(scope: !54, file: !1, line: 23, column: 9)
!87 = !DILocation(line: 25, column: 11, scope: !86)
!88 = !DILocation(line: 25, column: 27, scope: !86)
!89 = !DILocation(line: 25, column: 47, scope: !86)
!90 = !DILocation(line: 28, column: 7, scope: !55)
!91 = !DILocation(line: 31, column: 3, scope: !41)
!92 = !DILocation(line: 7, column: 56, scope: !36)
!93 = !DILocation(line: 7, column: 3, scope: !36)
!94 = distinct !{!94, !38, !95, !96}
!95 = !DILocation(line: 31, column: 3, scope: !33)
!96 = !{!"llvm.loop.mustprogress"}
!97 = !DILocation(line: 33, column: 21, scope: !98)
!98 = distinct !DILexicalBlock(scope: !9, file: !1, line: 33, column: 3)
!99 = !DILocation(line: 33, column: 8, scope: !98)
!100 = !DILocation(line: 33, column: 26, scope: !101)
!101 = distinct !DILexicalBlock(scope: !98, file: !1, line: 33, column: 3)
!102 = !DILocation(line: 33, column: 39, scope: !101)
!103 = !DILocation(line: 33, column: 3, scope: !98)
!104 = !DILocation(line: 35, column: 5, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !1, line: 34, column: 3)
!106 = !DILocation(line: 35, column: 12, scope: !105)
!107 = !DILocation(line: 36, column: 3, scope: !105)
!108 = !DILocation(line: 33, column: 56, scope: !101)
!109 = !DILocation(line: 33, column: 3, scope: !101)
!110 = distinct !{!110, !103, !111, !96}
!111 = !DILocation(line: 36, column: 3, scope: !98)
!112 = !DILabel(scope: !9, name: "goodB2G_label_", file: !1, line: 38)
!113 = !DILocation(line: 38, column: 3, scope: !9)
!114 = !DILocation(line: 43, column: 1, scope: !9)
