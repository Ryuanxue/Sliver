; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_09132CWE134_Uncontrolled_Format_String__char_console_printf_09177_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_09132CWE134_Uncontrolled_Format_String__char_console_printf_09177_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@GLOBAL_CONST_TRUE = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@GLOBAL_CONST_FALSE = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_09132CWE134_Uncontrolled_Format_String__char_console_printf_09177_1(i8* %_goodB2G2_data_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G2_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodG2B1_data_0 = alloca i8*, align 8
  %_goodG2B1_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_goodB2G2_data_0, i8** %_goodB2G2_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G2_data_0.addr, align 8, !dbg !28
  %1 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !29
  %tobool = icmp ne i32 %1, 0, !dbg !29
  br i1 %tobool, label %if.then, label %if.end20, !dbg !31

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !38
  %2 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !39
  %call = call i64 @strlen(i8* %2) #6, !dbg !40
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !38
  %3 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !41
  %sub = sub i64 100, %3, !dbg !43
  %cmp = icmp ugt i64 %sub, 1, !dbg !44
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !45

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !46
  %5 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !49
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !50
  %6 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !51
  %sub2 = sub i64 100, %6, !dbg !52
  %conv = trunc i64 %sub2 to i32, !dbg !53
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !54
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !55
  %cmp4 = icmp ne i8* %call3, null, !dbg !56
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !57

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !58
  %call7 = call i64 @strlen(i8* %8) #6, !dbg !60
  store i64 %call7, i64* %_goodB2G2_dataLen_0, align 8, !dbg !61
  %9 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !62
  %cmp8 = icmp ugt i64 %9, 0, !dbg !64
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !65

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !66
  %11 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !67
  %sub10 = sub i64 %11, 1, !dbg !68
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !66
  %12 = load i8, i8* %arrayidx, align 1, !dbg !66
  %conv11 = sext i8 %12 to i32, !dbg !66
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !69
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !70

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !71
  %14 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !73
  %sub15 = sub i64 %14, 1, !dbg !74
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !71
  store i8 0, i8* %arrayidx16, align 1, !dbg !75
  br label %if.end, !dbg !76

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !77

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !78
  %15 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !80
  %16 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !81
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !80
  store i8 0, i8* %arrayidx17, align 1, !dbg !82
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !83

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !84

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !85
  %tobool21 = icmp ne i32 %17, 0, !dbg !85
  br i1 %tobool21, label %if.then22, label %if.end24, !dbg !87

if.then22:                                        ; preds = %if.end20
  %18 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !88
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %18), !dbg !90
  br label %if.end24, !dbg !91

if.end24:                                         ; preds = %if.then22, %if.end20
  br label %goodB2G2_label_, !dbg !85

goodB2G2_label_:                                  ; preds = %if.end24
  call void @llvm.dbg.label(metadata !92), !dbg !93
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !94, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !97, metadata !DIExpression()), !dbg !98
  %19 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !98
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 100, i1 false), !dbg !98
  %arraydecay25 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !99
  store i8* %arraydecay25, i8** %_goodG2B1_data_0, align 8, !dbg !100
  %20 = load i32, i32* @GLOBAL_CONST_FALSE, align 4, !dbg !101
  %tobool26 = icmp ne i32 %20, 0, !dbg !101
  br i1 %tobool26, label %if.then27, label %if.else28, !dbg !103

if.then27:                                        ; preds = %goodB2G2_label_
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)), !dbg !104
  br label %if.end30, !dbg !106

if.else28:                                        ; preds = %goodB2G2_label_
  %21 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !107
  %call29 = call i8* @strcpy(i8* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !109
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then27
  %22 = load i32, i32* @GLOBAL_CONST_TRUE, align 4, !dbg !110
  %tobool31 = icmp ne i32 %22, 0, !dbg !110
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !112

if.then32:                                        ; preds = %if.end30
  %23 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !113
  %24 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !115
  call void %23(i8* %24), !dbg !113
  br label %if.end33, !dbg !116

if.end33:                                         ; preds = %if.then32, %if.end30
  br label %goodG2B1_label_, !dbg !110

goodG2B1_label_:                                  ; preds = %if.end33
  call void @llvm.dbg.label(metadata !117), !dbg !118
  br label %CWE134_Uncontrolled_Format_String__char_console_printf_09_good_label_, !dbg !119

CWE134_Uncontrolled_Format_String__char_console_printf_09_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !120), !dbg !121
  ret void, !dbg !122
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_09132CWE134_Uncontrolled_Format_String__char_console_printf_09177_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_442/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_09132CWE134_Uncontrolled_Format_String__char_console_printf_09177_1", scope: !1, file: !1, line: 5, type: !10, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !9, file: !1, line: 5, type: !12)
!18 = !DILocation(line: 5, column: 135, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 5, type: !14)
!20 = !DILocation(line: 5, column: 160, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !22, file: !1, line: 8, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 8, column: 10, scope: !22)
!27 = !DILocation(line: 9, column: 24, scope: !22)
!28 = !DILocation(line: 9, column: 22, scope: !22)
!29 = !DILocation(line: 10, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !22, file: !1, line: 10, column: 9)
!31 = !DILocation(line: 10, column: 9, scope: !22)
!32 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !33, file: !1, line: 13, type: !35)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 12, column: 7)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 11, column: 5)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocation(line: 13, column: 16, scope: !33)
!39 = !DILocation(line: 13, column: 45, scope: !33)
!40 = !DILocation(line: 13, column: 38, scope: !33)
!41 = !DILocation(line: 14, column: 20, scope: !42)
!42 = distinct !DILexicalBlock(scope: !33, file: !1, line: 14, column: 13)
!43 = !DILocation(line: 14, column: 18, scope: !42)
!44 = !DILocation(line: 14, column: 41, scope: !42)
!45 = !DILocation(line: 14, column: 13, scope: !33)
!46 = !DILocation(line: 16, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 16, column: 15)
!48 = distinct !DILexicalBlock(scope: !42, file: !1, line: 15, column: 9)
!49 = !DILocation(line: 16, column: 40, scope: !47)
!50 = !DILocation(line: 16, column: 38, scope: !47)
!51 = !DILocation(line: 16, column: 74, scope: !47)
!52 = !DILocation(line: 16, column: 72, scope: !47)
!53 = !DILocation(line: 16, column: 61, scope: !47)
!54 = !DILocation(line: 16, column: 96, scope: !47)
!55 = !DILocation(line: 16, column: 15, scope: !47)
!56 = !DILocation(line: 16, column: 103, scope: !47)
!57 = !DILocation(line: 16, column: 15, scope: !48)
!58 = !DILocation(line: 18, column: 42, scope: !59)
!59 = distinct !DILexicalBlock(scope: !47, file: !1, line: 17, column: 11)
!60 = !DILocation(line: 18, column: 35, scope: !59)
!61 = !DILocation(line: 18, column: 33, scope: !59)
!62 = !DILocation(line: 19, column: 18, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 19, column: 17)
!64 = !DILocation(line: 19, column: 38, scope: !63)
!65 = !DILocation(line: 19, column: 43, scope: !63)
!66 = !DILocation(line: 19, column: 47, scope: !63)
!67 = !DILocation(line: 19, column: 64, scope: !63)
!68 = !DILocation(line: 19, column: 84, scope: !63)
!69 = !DILocation(line: 19, column: 89, scope: !63)
!70 = !DILocation(line: 19, column: 17, scope: !59)
!71 = !DILocation(line: 21, column: 15, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 20, column: 13)
!73 = !DILocation(line: 21, column: 32, scope: !72)
!74 = !DILocation(line: 21, column: 52, scope: !72)
!75 = !DILocation(line: 21, column: 57, scope: !72)
!76 = !DILocation(line: 22, column: 13, scope: !72)
!77 = !DILocation(line: 24, column: 11, scope: !59)
!78 = !DILocation(line: 27, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !47, file: !1, line: 26, column: 11)
!80 = !DILocation(line: 28, column: 13, scope: !79)
!81 = !DILocation(line: 28, column: 30, scope: !79)
!82 = !DILocation(line: 28, column: 51, scope: !79)
!83 = !DILocation(line: 31, column: 9, scope: !48)
!84 = !DILocation(line: 34, column: 5, scope: !34)
!85 = !DILocation(line: 36, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !22, file: !1, line: 36, column: 9)
!87 = !DILocation(line: 36, column: 9, scope: !22)
!88 = !DILocation(line: 38, column: 22, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 37, column: 5)
!90 = !DILocation(line: 38, column: 7, scope: !89)
!91 = !DILocation(line: 39, column: 5, scope: !89)
!92 = !DILabel(scope: !22, name: "goodB2G2_label_", file: !1, line: 41)
!93 = !DILocation(line: 41, column: 5, scope: !22)
!94 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !95, file: !1, line: 48, type: !12)
!95 = distinct !DILexicalBlock(scope: !9, file: !1, line: 47, column: 3)
!96 = !DILocation(line: 48, column: 11, scope: !95)
!97 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !95, file: !1, line: 49, type: !23)
!98 = !DILocation(line: 49, column: 10, scope: !95)
!99 = !DILocation(line: 50, column: 24, scope: !95)
!100 = !DILocation(line: 50, column: 22, scope: !95)
!101 = !DILocation(line: 51, column: 9, scope: !102)
!102 = distinct !DILexicalBlock(scope: !95, file: !1, line: 51, column: 9)
!103 = !DILocation(line: 51, column: 9, scope: !95)
!104 = !DILocation(line: 53, column: 7, scope: !105)
!105 = distinct !DILexicalBlock(scope: !102, file: !1, line: 52, column: 5)
!106 = !DILocation(line: 54, column: 5, scope: !105)
!107 = !DILocation(line: 57, column: 14, scope: !108)
!108 = distinct !DILexicalBlock(scope: !102, file: !1, line: 56, column: 5)
!109 = !DILocation(line: 57, column: 7, scope: !108)
!110 = !DILocation(line: 60, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !95, file: !1, line: 60, column: 9)
!112 = !DILocation(line: 60, column: 9, scope: !95)
!113 = !DILocation(line: 62, column: 7, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 61, column: 5)
!115 = !DILocation(line: 62, column: 14, scope: !114)
!116 = !DILocation(line: 63, column: 5, scope: !114)
!117 = !DILabel(scope: !95, name: "goodG2B1_label_", file: !1, line: 65)
!118 = !DILocation(line: 65, column: 5, scope: !95)
!119 = !DILocation(line: 70, column: 3, scope: !95)
!120 = !DILabel(scope: !9, name: "CWE134_Uncontrolled_Format_String__char_console_printf_09_good_label_", file: !1, line: 71)
!121 = !DILocation(line: 71, column: 3, scope: !9)
!122 = !DILocation(line: 76, column: 1, scope: !9)
