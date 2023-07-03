; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_1386CWE134_Uncontrolled_Format_String__char_console_printf_13177_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_1386CWE134_Uncontrolled_Format_String__char_console_printf_13177_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@GLOBAL_CONST_FIVE = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_1386CWE134_Uncontrolled_Format_String__char_console_printf_13177_1(i8* %_goodB2G1_data_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G1_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  %_goodG2B1_data_0 = alloca i8*, align 8
  %_goodG2B1_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_goodB2G1_data_0, i8** %_goodB2G1_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G1_data_0.addr, align 8, !dbg !28
  %1 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !29
  %cmp = icmp eq i32 %1, 5, !dbg !31
  br i1 %cmp, label %if.then, label %if.end21, !dbg !32

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !33, metadata !DIExpression()), !dbg !39
  %2 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !40
  %call = call i64 @strlen(i8* %2) #6, !dbg !41
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !39
  %3 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !42
  %sub = sub i64 100, %3, !dbg !44
  %cmp1 = icmp ugt i64 %sub, 1, !dbg !45
  br i1 %cmp1, label %if.then2, label %if.end20, !dbg !46

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !47
  %5 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !50
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !51
  %6 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !52
  %sub3 = sub i64 100, %6, !dbg !53
  %conv = trunc i64 %sub3 to i32, !dbg !54
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !55
  %call4 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !56
  %cmp5 = icmp ne i8* %call4, null, !dbg !57
  br i1 %cmp5, label %if.then7, label %if.else, !dbg !58

if.then7:                                         ; preds = %if.then2
  %8 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !59
  %call8 = call i64 @strlen(i8* %8) #6, !dbg !61
  store i64 %call8, i64* %_goodB2G1_dataLen_0, align 8, !dbg !62
  %9 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !63
  %cmp9 = icmp ugt i64 %9, 0, !dbg !65
  br i1 %cmp9, label %land.lhs.true, label %if.end, !dbg !66

land.lhs.true:                                    ; preds = %if.then7
  %10 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !67
  %11 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !68
  %sub11 = sub i64 %11, 1, !dbg !69
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub11, !dbg !67
  %12 = load i8, i8* %arrayidx, align 1, !dbg !67
  %conv12 = sext i8 %12 to i32, !dbg !67
  %cmp13 = icmp eq i32 %conv12, 10, !dbg !70
  br i1 %cmp13, label %if.then15, label %if.end, !dbg !71

if.then15:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !72
  %14 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !74
  %sub16 = sub i64 %14, 1, !dbg !75
  %arrayidx17 = getelementptr inbounds i8, i8* %13, i64 %sub16, !dbg !72
  store i8 0, i8* %arrayidx17, align 1, !dbg !76
  br label %if.end, !dbg !77

if.end:                                           ; preds = %if.then15, %land.lhs.true, %if.then7
  br label %if.end19, !dbg !78

if.else:                                          ; preds = %if.then2
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !79
  %15 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !81
  %16 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !82
  %arrayidx18 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !81
  store i8 0, i8* %arrayidx18, align 1, !dbg !83
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end
  br label %if.end20, !dbg !84

if.end20:                                         ; preds = %if.end19, %if.then
  br label %if.end21, !dbg !85

if.end21:                                         ; preds = %if.end20, %entry
  %17 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !86
  %cmp22 = icmp ne i32 %17, 5, !dbg !88
  br i1 %cmp22, label %if.then24, label %if.else25, !dbg !89

if.then24:                                        ; preds = %if.end21
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !90
  br label %if.end27, !dbg !92

if.else25:                                        ; preds = %if.end21
  %18 = load i8*, i8** %_goodB2G1_data_0.addr, align 8, !dbg !93
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %18), !dbg !95
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then24
  br label %goodB2G1_label_, !dbg !96

goodB2G1_label_:                                  ; preds = %if.end27
  call void @llvm.dbg.label(metadata !97), !dbg !98
  call void (...) @goodB2G2(), !dbg !99
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !100, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !103, metadata !DIExpression()), !dbg !104
  %19 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !104
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 100, i1 false), !dbg !104
  %arraydecay28 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !105
  store i8* %arraydecay28, i8** %_goodG2B1_data_0, align 8, !dbg !106
  %20 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !107
  %cmp29 = icmp ne i32 %20, 5, !dbg !109
  br i1 %cmp29, label %if.then31, label %if.else32, !dbg !110

if.then31:                                        ; preds = %goodB2G1_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !111
  br label %if.end34, !dbg !113

if.else32:                                        ; preds = %goodB2G1_label_
  %21 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !114
  %call33 = call i8* @strcpy(i8* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !116
  br label %if.end34

if.end34:                                         ; preds = %if.else32, %if.then31
  %22 = load i32, i32* @GLOBAL_CONST_FIVE, align 4, !dbg !117
  %cmp35 = icmp eq i32 %22, 5, !dbg !119
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !120

if.then37:                                        ; preds = %if.end34
  %23 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !121
  %24 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !123
  call void %23(i8* %24), !dbg !121
  br label %if.end38, !dbg !124

if.end38:                                         ; preds = %if.then37, %if.end34
  br label %goodG2B1_label_, !dbg !125

goodG2B1_label_:                                  ; preds = %if.end38
  call void @llvm.dbg.label(metadata !126), !dbg !127
  br label %CWE134_Uncontrolled_Format_String__char_console_printf_13_good_label_, !dbg !128

CWE134_Uncontrolled_Format_String__char_console_printf_13_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !129), !dbg !130
  ret void, !dbg !131
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @goodB2G2(...) #4

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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_1386CWE134_Uncontrolled_Format_String__char_console_printf_13177_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_446/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_1386CWE134_Uncontrolled_Format_String__char_console_printf_13177_1", scope: !1, file: !1, line: 4, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_goodB2G1_data_0", arg: 1, scope: !9, file: !1, line: 4, type: !12)
!18 = !DILocation(line: 4, column: 134, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 4, type: !14)
!20 = !DILocation(line: 4, column: 159, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !22, file: !1, line: 7, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 6, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 7, column: 10, scope: !22)
!27 = !DILocation(line: 8, column: 24, scope: !22)
!28 = !DILocation(line: 8, column: 22, scope: !22)
!29 = !DILocation(line: 9, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !22, file: !1, line: 9, column: 9)
!31 = !DILocation(line: 9, column: 27, scope: !30)
!32 = !DILocation(line: 9, column: 9, scope: !22)
!33 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !34, file: !1, line: 12, type: !36)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 11, column: 7)
!35 = distinct !DILexicalBlock(scope: !30, file: !1, line: 10, column: 5)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!38 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!39 = !DILocation(line: 12, column: 16, scope: !34)
!40 = !DILocation(line: 12, column: 45, scope: !34)
!41 = !DILocation(line: 12, column: 38, scope: !34)
!42 = !DILocation(line: 13, column: 20, scope: !43)
!43 = distinct !DILexicalBlock(scope: !34, file: !1, line: 13, column: 13)
!44 = !DILocation(line: 13, column: 18, scope: !43)
!45 = !DILocation(line: 13, column: 41, scope: !43)
!46 = !DILocation(line: 13, column: 13, scope: !34)
!47 = !DILocation(line: 15, column: 21, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 15, column: 15)
!49 = distinct !DILexicalBlock(scope: !43, file: !1, line: 14, column: 9)
!50 = !DILocation(line: 15, column: 40, scope: !48)
!51 = !DILocation(line: 15, column: 38, scope: !48)
!52 = !DILocation(line: 15, column: 74, scope: !48)
!53 = !DILocation(line: 15, column: 72, scope: !48)
!54 = !DILocation(line: 15, column: 61, scope: !48)
!55 = !DILocation(line: 15, column: 96, scope: !48)
!56 = !DILocation(line: 15, column: 15, scope: !48)
!57 = !DILocation(line: 15, column: 103, scope: !48)
!58 = !DILocation(line: 15, column: 15, scope: !49)
!59 = !DILocation(line: 17, column: 42, scope: !60)
!60 = distinct !DILexicalBlock(scope: !48, file: !1, line: 16, column: 11)
!61 = !DILocation(line: 17, column: 35, scope: !60)
!62 = !DILocation(line: 17, column: 33, scope: !60)
!63 = !DILocation(line: 18, column: 18, scope: !64)
!64 = distinct !DILexicalBlock(scope: !60, file: !1, line: 18, column: 17)
!65 = !DILocation(line: 18, column: 38, scope: !64)
!66 = !DILocation(line: 18, column: 43, scope: !64)
!67 = !DILocation(line: 18, column: 47, scope: !64)
!68 = !DILocation(line: 18, column: 64, scope: !64)
!69 = !DILocation(line: 18, column: 84, scope: !64)
!70 = !DILocation(line: 18, column: 89, scope: !64)
!71 = !DILocation(line: 18, column: 17, scope: !60)
!72 = !DILocation(line: 20, column: 15, scope: !73)
!73 = distinct !DILexicalBlock(scope: !64, file: !1, line: 19, column: 13)
!74 = !DILocation(line: 20, column: 32, scope: !73)
!75 = !DILocation(line: 20, column: 52, scope: !73)
!76 = !DILocation(line: 20, column: 57, scope: !73)
!77 = !DILocation(line: 21, column: 13, scope: !73)
!78 = !DILocation(line: 23, column: 11, scope: !60)
!79 = !DILocation(line: 26, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !48, file: !1, line: 25, column: 11)
!81 = !DILocation(line: 27, column: 13, scope: !80)
!82 = !DILocation(line: 27, column: 30, scope: !80)
!83 = !DILocation(line: 27, column: 51, scope: !80)
!84 = !DILocation(line: 30, column: 9, scope: !49)
!85 = !DILocation(line: 33, column: 5, scope: !35)
!86 = !DILocation(line: 35, column: 9, scope: !87)
!87 = distinct !DILexicalBlock(scope: !22, file: !1, line: 35, column: 9)
!88 = !DILocation(line: 35, column: 27, scope: !87)
!89 = !DILocation(line: 35, column: 9, scope: !22)
!90 = !DILocation(line: 37, column: 7, scope: !91)
!91 = distinct !DILexicalBlock(scope: !87, file: !1, line: 36, column: 5)
!92 = !DILocation(line: 38, column: 5, scope: !91)
!93 = !DILocation(line: 41, column: 22, scope: !94)
!94 = distinct !DILexicalBlock(scope: !87, file: !1, line: 40, column: 5)
!95 = !DILocation(line: 41, column: 7, scope: !94)
!96 = !DILocation(line: 35, column: 30, scope: !87)
!97 = !DILabel(scope: !22, name: "goodB2G1_label_", file: !1, line: 44)
!98 = !DILocation(line: 44, column: 5, scope: !22)
!99 = !DILocation(line: 50, column: 3, scope: !9)
!100 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !101, file: !1, line: 52, type: !12)
!101 = distinct !DILexicalBlock(scope: !9, file: !1, line: 51, column: 3)
!102 = !DILocation(line: 52, column: 11, scope: !101)
!103 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !101, file: !1, line: 53, type: !23)
!104 = !DILocation(line: 53, column: 10, scope: !101)
!105 = !DILocation(line: 54, column: 24, scope: !101)
!106 = !DILocation(line: 54, column: 22, scope: !101)
!107 = !DILocation(line: 55, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !101, file: !1, line: 55, column: 9)
!109 = !DILocation(line: 55, column: 27, scope: !108)
!110 = !DILocation(line: 55, column: 9, scope: !101)
!111 = !DILocation(line: 57, column: 7, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 56, column: 5)
!113 = !DILocation(line: 58, column: 5, scope: !112)
!114 = !DILocation(line: 61, column: 14, scope: !115)
!115 = distinct !DILexicalBlock(scope: !108, file: !1, line: 60, column: 5)
!116 = !DILocation(line: 61, column: 7, scope: !115)
!117 = !DILocation(line: 64, column: 9, scope: !118)
!118 = distinct !DILexicalBlock(scope: !101, file: !1, line: 64, column: 9)
!119 = !DILocation(line: 64, column: 27, scope: !118)
!120 = !DILocation(line: 64, column: 9, scope: !101)
!121 = !DILocation(line: 66, column: 7, scope: !122)
!122 = distinct !DILexicalBlock(scope: !118, file: !1, line: 65, column: 5)
!123 = !DILocation(line: 66, column: 14, scope: !122)
!124 = !DILocation(line: 67, column: 5, scope: !122)
!125 = !DILocation(line: 64, column: 30, scope: !118)
!126 = !DILabel(scope: !101, name: "goodG2B1_label_", file: !1, line: 69)
!127 = !DILocation(line: 69, column: 5, scope: !101)
!128 = !DILocation(line: 74, column: 3, scope: !101)
!129 = !DILabel(scope: !9, name: "CWE134_Uncontrolled_Format_String__char_console_printf_13_good_label_", file: !1, line: 75)
!130 = !DILocation(line: 75, column: 3, scope: !9)
!131 = !DILocation(line: 80, column: 1, scope: !9)
