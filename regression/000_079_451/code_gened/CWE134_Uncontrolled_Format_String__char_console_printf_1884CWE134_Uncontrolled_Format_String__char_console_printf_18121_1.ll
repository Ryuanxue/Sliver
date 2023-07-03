; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_1884CWE134_Uncontrolled_Format_String__char_console_printf_18121_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_1884CWE134_Uncontrolled_Format_String__char_console_printf_18121_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_1884CWE134_Uncontrolled_Format_String__char_console_printf_18121_1(i8* %_goodB2G_data_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !28
  br label %goodB2G_source, !dbg !29

goodB2G_source:                                   ; preds = %entry
  call void @llvm.dbg.label(metadata !30), !dbg !31
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !37
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !38
  %call = call i64 @strlen(i8* %1) #6, !dbg !39
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !37
  %2 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !40
  %sub = sub i64 100, %2, !dbg !42
  %cmp = icmp ugt i64 %sub, 1, !dbg !43
  br i1 %cmp, label %if.then, label %if.end18, !dbg !44

if.then:                                          ; preds = %goodB2G_source
  %3 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !45
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !49
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !50
  %sub1 = sub i64 100, %5, !dbg !51
  %conv = trunc i64 %sub1 to i32, !dbg !52
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !53
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !54
  %cmp3 = icmp ne i8* %call2, null, !dbg !55
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !56

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !57
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !59
  store i64 %call6, i64* %_goodB2G_dataLen_0, align 8, !dbg !60
  %8 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !61
  %cmp7 = icmp ugt i64 %8, 0, !dbg !63
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !64

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !65
  %10 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !66
  %sub9 = sub i64 %10, 1, !dbg !67
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !65
  %11 = load i8, i8* %arrayidx, align 1, !dbg !65
  %conv10 = sext i8 %11 to i32, !dbg !65
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !68
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !69

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !70
  %13 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !72
  %sub14 = sub i64 %13, 1, !dbg !73
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !70
  store i8 0, i8* %arrayidx15, align 1, !dbg !74
  br label %if.end, !dbg !75

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !76

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !77
  %14 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !79
  %15 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !80
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !79
  store i8 0, i8* %arrayidx16, align 1, !dbg !81
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !82

if.end18:                                         ; preds = %if.end17, %goodB2G_source
  br label %goodB2G_sink, !dbg !83

goodB2G_sink:                                     ; preds = %if.end18
  call void @llvm.dbg.label(metadata !84), !dbg !85
  %16 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !86
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16), !dbg !88
  br label %goodB2G_label_, !dbg !89

goodB2G_label_:                                   ; preds = %goodB2G_sink
  call void @llvm.dbg.label(metadata !90), !dbg !91
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !92, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !95, metadata !DIExpression()), !dbg !96
  %17 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !96
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 100, i1 false), !dbg !96
  %arraydecay20 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !97
  store i8* %arraydecay20, i8** %_goodG2B_data_0, align 8, !dbg !98
  br label %goodG2B_source, !dbg !99

goodG2B_source:                                   ; preds = %goodB2G_label_
  call void @llvm.dbg.label(metadata !100), !dbg !101
  %18 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !102
  %call21 = call i8* @strcpy(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !104
  br label %goodG2B_sink, !dbg !105

goodG2B_sink:                                     ; preds = %goodG2B_source
  call void @llvm.dbg.label(metadata !106), !dbg !107
  %19 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !108
  %20 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !110
  call void %19(i8* %20), !dbg !108
  br label %goodG2B_label_, !dbg !111

goodG2B_label_:                                   ; preds = %goodG2B_sink
  call void @llvm.dbg.label(metadata !112), !dbg !113
  br label %CWE134_Uncontrolled_Format_String__char_console_printf_18_good_label_, !dbg !114

CWE134_Uncontrolled_Format_String__char_console_printf_18_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !115), !dbg !116
  ret void, !dbg !117
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_1884CWE134_Uncontrolled_Format_String__char_console_printf_18121_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_451/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_1884CWE134_Uncontrolled_Format_String__char_console_printf_18121_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 134, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 158, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !22, file: !1, line: 6, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 10, scope: !22)
!27 = !DILocation(line: 7, column: 23, scope: !22)
!28 = !DILocation(line: 7, column: 21, scope: !22)
!29 = !DILocation(line: 8, column: 5, scope: !22)
!30 = !DILabel(scope: !22, name: "goodB2G_source", file: !1, line: 9)
!31 = !DILocation(line: 9, column: 5, scope: !22)
!32 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !33, file: !1, line: 11, type: !34)
!33 = distinct !DILexicalBlock(scope: !22, file: !1, line: 10, column: 5)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 11, column: 14, scope: !33)
!38 = !DILocation(line: 11, column: 42, scope: !33)
!39 = !DILocation(line: 11, column: 35, scope: !33)
!40 = !DILocation(line: 12, column: 18, scope: !41)
!41 = distinct !DILexicalBlock(scope: !33, file: !1, line: 12, column: 11)
!42 = !DILocation(line: 12, column: 16, scope: !41)
!43 = !DILocation(line: 12, column: 38, scope: !41)
!44 = !DILocation(line: 12, column: 11, scope: !33)
!45 = !DILocation(line: 14, column: 19, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 14, column: 13)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 13, column: 7)
!48 = !DILocation(line: 14, column: 37, scope: !46)
!49 = !DILocation(line: 14, column: 35, scope: !46)
!50 = !DILocation(line: 14, column: 70, scope: !46)
!51 = !DILocation(line: 14, column: 68, scope: !46)
!52 = !DILocation(line: 14, column: 57, scope: !46)
!53 = !DILocation(line: 14, column: 91, scope: !46)
!54 = !DILocation(line: 14, column: 13, scope: !46)
!55 = !DILocation(line: 14, column: 98, scope: !46)
!56 = !DILocation(line: 14, column: 13, scope: !47)
!57 = !DILocation(line: 16, column: 39, scope: !58)
!58 = distinct !DILexicalBlock(scope: !46, file: !1, line: 15, column: 9)
!59 = !DILocation(line: 16, column: 32, scope: !58)
!60 = !DILocation(line: 16, column: 30, scope: !58)
!61 = !DILocation(line: 17, column: 16, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 17, column: 15)
!63 = !DILocation(line: 17, column: 35, scope: !62)
!64 = !DILocation(line: 17, column: 40, scope: !62)
!65 = !DILocation(line: 17, column: 44, scope: !62)
!66 = !DILocation(line: 17, column: 60, scope: !62)
!67 = !DILocation(line: 17, column: 79, scope: !62)
!68 = !DILocation(line: 17, column: 84, scope: !62)
!69 = !DILocation(line: 17, column: 15, scope: !58)
!70 = !DILocation(line: 19, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !62, file: !1, line: 18, column: 11)
!72 = !DILocation(line: 19, column: 29, scope: !71)
!73 = !DILocation(line: 19, column: 48, scope: !71)
!74 = !DILocation(line: 19, column: 53, scope: !71)
!75 = !DILocation(line: 20, column: 11, scope: !71)
!76 = !DILocation(line: 22, column: 9, scope: !58)
!77 = !DILocation(line: 25, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !46, file: !1, line: 24, column: 9)
!79 = !DILocation(line: 26, column: 11, scope: !78)
!80 = !DILocation(line: 26, column: 27, scope: !78)
!81 = !DILocation(line: 26, column: 47, scope: !78)
!82 = !DILocation(line: 29, column: 7, scope: !47)
!83 = !DILocation(line: 33, column: 5, scope: !22)
!84 = !DILabel(scope: !22, name: "goodB2G_sink", file: !1, line: 34)
!85 = !DILocation(line: 34, column: 5, scope: !22)
!86 = !DILocation(line: 36, column: 22, scope: !87)
!87 = distinct !DILexicalBlock(scope: !22, file: !1, line: 35, column: 5)
!88 = !DILocation(line: 36, column: 7, scope: !87)
!89 = !DILocation(line: 37, column: 5, scope: !87)
!90 = !DILabel(scope: !22, name: "goodB2G_label_", file: !1, line: 39)
!91 = !DILocation(line: 39, column: 5, scope: !22)
!92 = !DILocalVariable(name: "_goodG2B_data_0", scope: !93, file: !1, line: 46, type: !12)
!93 = distinct !DILexicalBlock(scope: !9, file: !1, line: 45, column: 3)
!94 = !DILocation(line: 46, column: 11, scope: !93)
!95 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !93, file: !1, line: 47, type: !23)
!96 = !DILocation(line: 47, column: 10, scope: !93)
!97 = !DILocation(line: 48, column: 23, scope: !93)
!98 = !DILocation(line: 48, column: 21, scope: !93)
!99 = !DILocation(line: 49, column: 5, scope: !93)
!100 = !DILabel(scope: !93, name: "goodG2B_source", file: !1, line: 50)
!101 = !DILocation(line: 50, column: 5, scope: !93)
!102 = !DILocation(line: 52, column: 14, scope: !103)
!103 = distinct !DILexicalBlock(scope: !93, file: !1, line: 51, column: 5)
!104 = !DILocation(line: 52, column: 7, scope: !103)
!105 = !DILocation(line: 55, column: 5, scope: !93)
!106 = !DILabel(scope: !93, name: "goodG2B_sink", file: !1, line: 56)
!107 = !DILocation(line: 56, column: 5, scope: !93)
!108 = !DILocation(line: 58, column: 7, scope: !109)
!109 = distinct !DILexicalBlock(scope: !93, file: !1, line: 57, column: 5)
!110 = !DILocation(line: 58, column: 14, scope: !109)
!111 = !DILocation(line: 59, column: 5, scope: !109)
!112 = !DILabel(scope: !93, name: "goodG2B_label_", file: !1, line: 61)
!113 = !DILocation(line: 61, column: 5, scope: !93)
!114 = !DILocation(line: 66, column: 3, scope: !93)
!115 = !DILabel(scope: !9, name: "CWE134_Uncontrolled_Format_String__char_console_printf_18_good_label_", file: !1, line: 67)
!116 = !DILocation(line: 67, column: 3, scope: !9)
!117 = !DILocation(line: 72, column: 1, scope: !9)
