; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_08145CWE134_Uncontrolled_Format_String__char_console_printf_08208_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_08145CWE134_Uncontrolled_Format_String__char_console_printf_08208_1.c"
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
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_08145CWE134_Uncontrolled_Format_String__char_console_printf_08208_1(i8* %_goodB2G2_data_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G2_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodG2B2_data_0 = alloca i8*, align 8
  %_goodG2B2_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_goodB2G2_data_0, i8** %_goodB2G2_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G2_data_0.addr, align 8, !dbg !28
  %call = call i32 (...) @staticReturnsTrue(), !dbg !29
  %tobool = icmp ne i32 %call, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end21, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %1 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !39
  %call1 = call i64 @strlen(i8* %1) #6, !dbg !40
  store i64 %call1, i64* %_goodB2G2_dataLen_0, align 8, !dbg !38
  %2 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !41
  %sub = sub i64 100, %2, !dbg !43
  %cmp = icmp ugt i64 %sub, 1, !dbg !44
  br i1 %cmp, label %if.then2, label %if.end20, !dbg !45

if.then2:                                         ; preds = %if.then
  %3 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !46
  %4 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !50
  %5 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !51
  %sub3 = sub i64 100, %5, !dbg !52
  %conv = trunc i64 %sub3 to i32, !dbg !53
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !55
  %cmp5 = icmp ne i8* %call4, null, !dbg !56
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !57

if.then7:                                         ; preds = %if.then2
  %7 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !58
  %call8 = call i64 @strlen(i8* %7) #6, !dbg !60
  store i64 %call8, i64* %_goodB2G2_dataLen_0, align 8, !dbg !61
  %8 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !62
  %cmp9 = icmp ugt i64 %8, 0, !dbg !64
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !65

land.lhs.true:                                    ; preds = %if.then7
  %9 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !66
  %10 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !67
  %sub11 = sub i64 %10, 1, !dbg !68
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub11, !dbg !66
  %11 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv12 = sext i8 %11 to i32, !dbg !66
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !69
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !70

if.then15:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !71
  %13 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !73
  %sub16 = sub i64 %13, 1, !dbg !74
  %arrayidx17 = getelementptr inbounds i8, i8* %12, i64 %sub16, !dbg !71
  store i8 0, i8* %arrayidx17, align 1, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !77

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %14 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !80
  %15 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !81
  %arrayidx18 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !80
  store i8 0, i8* %arrayidx18, align 1, !dbg !82
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !83

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !84

if.end21:                                         ; preds = %if.end20, %entry
  %call22 = call i32 (...) @staticReturnsTrue(), !dbg !85
  %tobool23 = icmp ne i32 %call22, 0, !dbg !85
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !87

if.then24:                                        ; preds = %if.end21
  %16 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !88
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16), !dbg !90
  br label %if.end26, !dbg !91

if.end26:                                         ; preds = %if.then24, %if.end21
  br label %goodB2G2_label_, !dbg !92

goodB2G2_label_:                                  ; preds = %if.end26
  call void @llvm.dbg.label(metadata !93), !dbg !94
  call void (...) @goodG2B1(), !dbg !95
  call void @llvm.dbg.declare(metadata i8** %_goodG2B2_data_0, metadata !96, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B2_dataBuffer_0, metadata !99, metadata !DIExpression()), !dbg !100
  %17 = bitcast [100 x i8]* %_goodG2B2_dataBuffer_0 to i8*, !dbg !100
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 100, i1 false), !dbg !100
  %arraydecay27 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B2_dataBuffer_0, i64 0, i64 0, !dbg !101
  store i8* %arraydecay27, i8** %_goodG2B2_data_0, align 8, !dbg !102
  %call28 = call i32 (...) @staticReturnsTrue(), !dbg !103
  %tobool29 = icmp ne i32 %call28, 0, !dbg !103
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !105

if.then30:                                        ; preds = %goodB2G2_label_
  %18 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !106
  %call31 = call i8* @strcpy(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !108
  br label %if.end32, !dbg !109

if.end32:                                         ; preds = %if.then30, %goodB2G2_label_
  %call33 = call i32 (...) @staticReturnsTrue(), !dbg !110
  %tobool34 = icmp ne i32 %call33, 0, !dbg !110
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !112

if.then35:                                        ; preds = %if.end32
  %19 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !113
  %20 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !115
  call void %19(i8* %20), !dbg !113
  br label %if.end36, !dbg !116

if.end36:                                         ; preds = %if.then35, %if.end32
  br label %goodG2B2_label_, !dbg !117

goodG2B2_label_:                                  ; preds = %if.end36
  call void @llvm.dbg.label(metadata !118), !dbg !119
  br label %CWE134_Uncontrolled_Format_String__char_console_printf_08_good_label_, !dbg !120

CWE134_Uncontrolled_Format_String__char_console_printf_08_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !121), !dbg !122
  ret void, !dbg !123
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @staticReturnsTrue(...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodG2B1(...) #3

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
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_08145CWE134_Uncontrolled_Format_String__char_console_printf_08208_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_441/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_08145CWE134_Uncontrolled_Format_String__char_console_printf_08208_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 135, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 160, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !22, file: !1, line: 6, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 10, scope: !22)
!27 = !DILocation(line: 7, column: 24, scope: !22)
!28 = !DILocation(line: 7, column: 22, scope: !22)
!29 = !DILocation(line: 8, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !22, file: !1, line: 8, column: 9)
!31 = !DILocation(line: 8, column: 9, scope: !22)
!32 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !33, file: !1, line: 11, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 10, column: 7)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 9, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 11, column: 16, scope: !33)
!39 = !DILocation(line: 11, column: 45, scope: !33)
!40 = !DILocation(line: 11, column: 38, scope: !33)
!41 = !DILocation(line: 12, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !33, file: !1, line: 12, column: 13)
!43 = !DILocation(line: 12, column: 18, scope: !42)
!44 = !DILocation(line: 12, column: 41, scope: !42)
!45 = !DILocation(line: 12, column: 13, scope: !33)
!46 = !DILocation(line: 14, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 14, column: 15)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 9)
!49 = !DILocation(line: 14, column: 40, scope: !47)
!50 = !DILocation(line: 14, column: 38, scope: !47)
!51 = !DILocation(line: 14, column: 74, scope: !47)
!52 = !DILocation(line: 14, column: 72, scope: !47)
!53 = !DILocation(line: 14, column: 61, scope: !47)
!54 = !DILocation(line: 14, column: 96, scope: !47)
!55 = !DILocation(line: 14, column: 15, scope: !47)
!56 = !DILocation(line: 14, column: 103, scope: !47)
!57 = !DILocation(line: 14, column: 15, scope: !48)
!58 = !DILocation(line: 16, column: 42, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !1, line: 15, column: 11)
!60 = !DILocation(line: 16, column: 35, scope: !59)
!61 = !DILocation(line: 16, column: 33, scope: !59)
!62 = !DILocation(line: 17, column: 18, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 17, column: 17)
!64 = !DILocation(line: 17, column: 38, scope: !63)
!65 = !DILocation(line: 17, column: 43, scope: !63)
!66 = !DILocation(line: 17, column: 47, scope: !63)
!67 = !DILocation(line: 17, column: 64, scope: !63)
!68 = !DILocation(line: 17, column: 84, scope: !63)
!69 = !DILocation(line: 17, column: 89, scope: !63)
!70 = !DILocation(line: 17, column: 17, scope: !59)
!71 = !DILocation(line: 19, column: 15, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 18, column: 13)
!73 = !DILocation(line: 19, column: 32, scope: !72)
!74 = !DILocation(line: 19, column: 52, scope: !72)
!75 = !DILocation(line: 19, column: 57, scope: !72)
!76 = !DILocation(line: 20, column: 13, scope: !72)
!77 = !DILocation(line: 22, column: 11, scope: !59)
!78 = !DILocation(line: 25, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !47, file: !1, line: 24, column: 11)
!80 = !DILocation(line: 26, column: 13, scope: !79)
!81 = !DILocation(line: 26, column: 30, scope: !79)
!82 = !DILocation(line: 26, column: 51, scope: !79)
!83 = !DILocation(line: 29, column: 9, scope: !48)
!84 = !DILocation(line: 32, column: 5, scope: !34)
!85 = !DILocation(line: 34, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !22, file: !1, line: 34, column: 9)
!87 = !DILocation(line: 34, column: 9, scope: !22)
!88 = !DILocation(line: 36, column: 22, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 35, column: 5)
!90 = !DILocation(line: 36, column: 7, scope: !89)
!91 = !DILocation(line: 37, column: 5, scope: !89)
!92 = !DILocation(line: 34, column: 27, scope: !86)
!93 = !DILabel(scope: !22, name: "goodB2G2_label_", file: !1, line: 39)
!94 = !DILocation(line: 39, column: 5, scope: !22)
!95 = !DILocation(line: 45, column: 3, scope: !9)
!96 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !97, file: !1, line: 47, type: !12)
!97 = distinct !DILexicalBlock(scope: !9, file: !1, line: 46, column: 3)
!98 = !DILocation(line: 47, column: 11, scope: !97)
!99 = !DILocalVariable(name: "_goodG2B2_dataBuffer_0", scope: !97, file: !1, line: 48, type: !23)
!100 = !DILocation(line: 48, column: 10, scope: !97)
!101 = !DILocation(line: 49, column: 24, scope: !97)
!102 = !DILocation(line: 49, column: 22, scope: !97)
!103 = !DILocation(line: 50, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !97, file: !1, line: 50, column: 9)
!105 = !DILocation(line: 50, column: 9, scope: !97)
!106 = !DILocation(line: 52, column: 14, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !1, line: 51, column: 5)
!108 = !DILocation(line: 52, column: 7, scope: !107)
!109 = !DILocation(line: 53, column: 5, scope: !107)
!110 = !DILocation(line: 55, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !97, file: !1, line: 55, column: 9)
!112 = !DILocation(line: 55, column: 9, scope: !97)
!113 = !DILocation(line: 57, column: 7, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 56, column: 5)
!115 = !DILocation(line: 57, column: 14, scope: !114)
!116 = !DILocation(line: 58, column: 5, scope: !114)
!117 = !DILocation(line: 55, column: 27, scope: !111)
!118 = !DILabel(scope: !97, name: "goodG2B2_label_", file: !1, line: 60)
!119 = !DILocation(line: 60, column: 5, scope: !97)
!120 = !DILocation(line: 65, column: 3, scope: !97)
!121 = !DILabel(scope: !9, name: "CWE134_Uncontrolled_Format_String__char_console_printf_08_good_label_", file: !1, line: 66)
!122 = !DILocation(line: 66, column: 3, scope: !9)
!123 = !DILocation(line: 71, column: 1, scope: !9)
