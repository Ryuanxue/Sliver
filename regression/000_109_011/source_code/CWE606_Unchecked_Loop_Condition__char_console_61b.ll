; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_console_61b.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_console_61b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_console_61b_badSource(i8* %data) #0 !dbg !10 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !17, metadata !DIExpression()), !dbg !22
  %0 = load i8*, i8** %data.addr, align 8, !dbg !23
  %call = call i64 @strlen(i8* %0) #5, !dbg !24
  store i64 %call, i64* %dataLen, align 8, !dbg !22
  %1 = load i64, i64* %dataLen, align 8, !dbg !25
  %sub = sub i64 100, %1, !dbg !27
  %cmp = icmp ugt i64 %sub, 1, !dbg !28
  br i1 %cmp, label %if.then, label %if.end18, !dbg !29

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !30
  %3 = load i64, i64* %dataLen, align 8, !dbg !33
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !34
  %4 = load i64, i64* %dataLen, align 8, !dbg !35
  %sub1 = sub i64 100, %4, !dbg !36
  %conv = trunc i64 %sub1 to i32, !dbg !37
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !38
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %5), !dbg !39
  %cmp3 = icmp ne i8* %call2, null, !dbg !40
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !41

if.then5:                                         ; preds = %if.then
  %6 = load i8*, i8** %data.addr, align 8, !dbg !42
  %call6 = call i64 @strlen(i8* %6) #5, !dbg !44
  store i64 %call6, i64* %dataLen, align 8, !dbg !45
  %7 = load i64, i64* %dataLen, align 8, !dbg !46
  %cmp7 = icmp ugt i64 %7, 0, !dbg !48
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !49

land.lhs.true:                                    ; preds = %if.then5
  %8 = load i8*, i8** %data.addr, align 8, !dbg !50
  %9 = load i64, i64* %dataLen, align 8, !dbg !51
  %sub9 = sub i64 %9, 1, !dbg !52
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %sub9, !dbg !50
  %10 = load i8, i8* %arrayidx, align 1, !dbg !50
  %conv10 = sext i8 %10 to i32, !dbg !50
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !53
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !54

if.then13:                                        ; preds = %land.lhs.true
  %11 = load i8*, i8** %data.addr, align 8, !dbg !55
  %12 = load i64, i64* %dataLen, align 8, !dbg !57
  %sub14 = sub i64 %12, 1, !dbg !58
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 %sub14, !dbg !55
  store i8 0, i8* %arrayidx15, align 1, !dbg !59
  br label %if.end, !dbg !60

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !61

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !62
  %13 = load i8*, i8** %data.addr, align 8, !dbg !64
  %14 = load i64, i64* %dataLen, align 8, !dbg !65
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !64
  store i8 0, i8* %arrayidx16, align 1, !dbg !66
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !67

if.end18:                                         ; preds = %if.end17, %entry
  %15 = load i8*, i8** %data.addr, align 8, !dbg !68
  ret i8* %15, !dbg !69
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #2

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare dso_local void @printLine(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_console_61b_goodG2BSource(i8* %data) #0 !dbg !70 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !71, metadata !DIExpression()), !dbg !72
  %0 = load i8*, i8** %data.addr, align 8, !dbg !73
  %call = call i8* @strcpy(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !74
  %1 = load i8*, i8** %data.addr, align 8, !dbg !75
  ret i8* %1, !dbg !76
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @CWE606_Unchecked_Loop_Condition__char_console_61b_goodB2GSource(i8* %data) #0 !dbg !77 {
entry:
  %data.addr = alloca i8*, align 8
  %dataLen = alloca i64, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !80, metadata !DIExpression()), !dbg !82
  %0 = load i8*, i8** %data.addr, align 8, !dbg !83
  %call = call i64 @strlen(i8* %0) #5, !dbg !84
  store i64 %call, i64* %dataLen, align 8, !dbg !82
  %1 = load i64, i64* %dataLen, align 8, !dbg !85
  %sub = sub i64 100, %1, !dbg !87
  %cmp = icmp ugt i64 %sub, 1, !dbg !88
  br i1 %cmp, label %if.then, label %if.end18, !dbg !89

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8, !dbg !90
  %3 = load i64, i64* %dataLen, align 8, !dbg !93
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %3, !dbg !94
  %4 = load i64, i64* %dataLen, align 8, !dbg !95
  %sub1 = sub i64 100, %4, !dbg !96
  %conv = trunc i64 %sub1 to i32, !dbg !97
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !98
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %5), !dbg !99
  %cmp3 = icmp ne i8* %call2, null, !dbg !100
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !101

if.then5:                                         ; preds = %if.then
  %6 = load i8*, i8** %data.addr, align 8, !dbg !102
  %call6 = call i64 @strlen(i8* %6) #5, !dbg !104
  store i64 %call6, i64* %dataLen, align 8, !dbg !105
  %7 = load i64, i64* %dataLen, align 8, !dbg !106
  %cmp7 = icmp ugt i64 %7, 0, !dbg !108
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !109

land.lhs.true:                                    ; preds = %if.then5
  %8 = load i8*, i8** %data.addr, align 8, !dbg !110
  %9 = load i64, i64* %dataLen, align 8, !dbg !111
  %sub9 = sub i64 %9, 1, !dbg !112
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %sub9, !dbg !110
  %10 = load i8, i8* %arrayidx, align 1, !dbg !110
  %conv10 = sext i8 %10 to i32, !dbg !110
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !113
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !114

if.then13:                                        ; preds = %land.lhs.true
  %11 = load i8*, i8** %data.addr, align 8, !dbg !115
  %12 = load i64, i64* %dataLen, align 8, !dbg !117
  %sub14 = sub i64 %12, 1, !dbg !118
  %arrayidx15 = getelementptr inbounds i8, i8* %11, i64 %sub14, !dbg !115
  store i8 0, i8* %arrayidx15, align 1, !dbg !119
  br label %if.end, !dbg !120

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !121

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !122
  %13 = load i8*, i8** %data.addr, align 8, !dbg !124
  %14 = load i64, i64* %dataLen, align 8, !dbg !125
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %14, !dbg !124
  store i8 0, i8* %arrayidx16, align 1, !dbg !126
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !127

if.end18:                                         ; preds = %if.end17, %entry
  %15 = load i8*, i8** %data.addr, align 8, !dbg !128
  ret i8* %15, !dbg !129
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_console_61b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_011/source_code")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !{i32 7, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 12.0.0"}
!10 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_61b_badSource", scope: !1, file: !1, line: 28, type: !11, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocalVariable(name: "data", arg: 1, scope: !10, file: !1, line: 28, type: !13)
!16 = !DILocation(line: 28, column: 75, scope: !10)
!17 = !DILocalVariable(name: "dataLen", scope: !18, file: !1, line: 32, type: !19)
!18 = distinct !DILexicalBlock(scope: !10, file: !1, line: 30, column: 5)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DILocation(line: 32, column: 16, scope: !18)
!23 = !DILocation(line: 32, column: 33, scope: !18)
!24 = !DILocation(line: 32, column: 26, scope: !18)
!25 = !DILocation(line: 34, column: 17, scope: !26)
!26 = distinct !DILexicalBlock(scope: !18, file: !1, line: 34, column: 13)
!27 = !DILocation(line: 34, column: 16, scope: !26)
!28 = !DILocation(line: 34, column: 25, scope: !26)
!29 = !DILocation(line: 34, column: 13, scope: !18)
!30 = !DILocation(line: 37, column: 23, scope: !31)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 37, column: 17)
!32 = distinct !DILexicalBlock(scope: !26, file: !1, line: 35, column: 9)
!33 = !DILocation(line: 37, column: 28, scope: !31)
!34 = !DILocation(line: 37, column: 27, scope: !31)
!35 = !DILocation(line: 37, column: 47, scope: !31)
!36 = !DILocation(line: 37, column: 46, scope: !31)
!37 = !DILocation(line: 37, column: 37, scope: !31)
!38 = !DILocation(line: 37, column: 57, scope: !31)
!39 = !DILocation(line: 37, column: 17, scope: !31)
!40 = !DILocation(line: 37, column: 64, scope: !31)
!41 = !DILocation(line: 37, column: 17, scope: !32)
!42 = !DILocation(line: 41, column: 34, scope: !43)
!43 = distinct !DILexicalBlock(scope: !31, file: !1, line: 38, column: 13)
!44 = !DILocation(line: 41, column: 27, scope: !43)
!45 = !DILocation(line: 41, column: 25, scope: !43)
!46 = !DILocation(line: 42, column: 21, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 42, column: 21)
!48 = !DILocation(line: 42, column: 29, scope: !47)
!49 = !DILocation(line: 42, column: 33, scope: !47)
!50 = !DILocation(line: 42, column: 36, scope: !47)
!51 = !DILocation(line: 42, column: 41, scope: !47)
!52 = !DILocation(line: 42, column: 48, scope: !47)
!53 = !DILocation(line: 42, column: 52, scope: !47)
!54 = !DILocation(line: 42, column: 21, scope: !43)
!55 = !DILocation(line: 44, column: 21, scope: !56)
!56 = distinct !DILexicalBlock(scope: !47, file: !1, line: 43, column: 17)
!57 = !DILocation(line: 44, column: 26, scope: !56)
!58 = !DILocation(line: 44, column: 33, scope: !56)
!59 = !DILocation(line: 44, column: 37, scope: !56)
!60 = !DILocation(line: 45, column: 17, scope: !56)
!61 = !DILocation(line: 46, column: 13, scope: !43)
!62 = !DILocation(line: 49, column: 17, scope: !63)
!63 = distinct !DILexicalBlock(scope: !31, file: !1, line: 48, column: 13)
!64 = !DILocation(line: 51, column: 17, scope: !63)
!65 = !DILocation(line: 51, column: 22, scope: !63)
!66 = !DILocation(line: 51, column: 31, scope: !63)
!67 = !DILocation(line: 53, column: 9, scope: !32)
!68 = !DILocation(line: 55, column: 12, scope: !10)
!69 = !DILocation(line: 55, column: 5, scope: !10)
!70 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_61b_goodG2BSource", scope: !1, file: !1, line: 63, type: !11, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!71 = !DILocalVariable(name: "data", arg: 1, scope: !70, file: !1, line: 63, type: !13)
!72 = !DILocation(line: 63, column: 79, scope: !70)
!73 = !DILocation(line: 66, column: 12, scope: !70)
!74 = !DILocation(line: 66, column: 5, scope: !70)
!75 = !DILocation(line: 67, column: 12, scope: !70)
!76 = !DILocation(line: 67, column: 5, scope: !70)
!77 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_console_61b_goodB2GSource", scope: !1, file: !1, line: 71, type: !11, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!78 = !DILocalVariable(name: "data", arg: 1, scope: !77, file: !1, line: 71, type: !13)
!79 = !DILocation(line: 71, column: 79, scope: !77)
!80 = !DILocalVariable(name: "dataLen", scope: !81, file: !1, line: 75, type: !19)
!81 = distinct !DILexicalBlock(scope: !77, file: !1, line: 73, column: 5)
!82 = !DILocation(line: 75, column: 16, scope: !81)
!83 = !DILocation(line: 75, column: 33, scope: !81)
!84 = !DILocation(line: 75, column: 26, scope: !81)
!85 = !DILocation(line: 77, column: 17, scope: !86)
!86 = distinct !DILexicalBlock(scope: !81, file: !1, line: 77, column: 13)
!87 = !DILocation(line: 77, column: 16, scope: !86)
!88 = !DILocation(line: 77, column: 25, scope: !86)
!89 = !DILocation(line: 77, column: 13, scope: !81)
!90 = !DILocation(line: 80, column: 23, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 80, column: 17)
!92 = distinct !DILexicalBlock(scope: !86, file: !1, line: 78, column: 9)
!93 = !DILocation(line: 80, column: 28, scope: !91)
!94 = !DILocation(line: 80, column: 27, scope: !91)
!95 = !DILocation(line: 80, column: 47, scope: !91)
!96 = !DILocation(line: 80, column: 46, scope: !91)
!97 = !DILocation(line: 80, column: 37, scope: !91)
!98 = !DILocation(line: 80, column: 57, scope: !91)
!99 = !DILocation(line: 80, column: 17, scope: !91)
!100 = !DILocation(line: 80, column: 64, scope: !91)
!101 = !DILocation(line: 80, column: 17, scope: !92)
!102 = !DILocation(line: 84, column: 34, scope: !103)
!103 = distinct !DILexicalBlock(scope: !91, file: !1, line: 81, column: 13)
!104 = !DILocation(line: 84, column: 27, scope: !103)
!105 = !DILocation(line: 84, column: 25, scope: !103)
!106 = !DILocation(line: 85, column: 21, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !1, line: 85, column: 21)
!108 = !DILocation(line: 85, column: 29, scope: !107)
!109 = !DILocation(line: 85, column: 33, scope: !107)
!110 = !DILocation(line: 85, column: 36, scope: !107)
!111 = !DILocation(line: 85, column: 41, scope: !107)
!112 = !DILocation(line: 85, column: 48, scope: !107)
!113 = !DILocation(line: 85, column: 52, scope: !107)
!114 = !DILocation(line: 85, column: 21, scope: !103)
!115 = !DILocation(line: 87, column: 21, scope: !116)
!116 = distinct !DILexicalBlock(scope: !107, file: !1, line: 86, column: 17)
!117 = !DILocation(line: 87, column: 26, scope: !116)
!118 = !DILocation(line: 87, column: 33, scope: !116)
!119 = !DILocation(line: 87, column: 37, scope: !116)
!120 = !DILocation(line: 88, column: 17, scope: !116)
!121 = !DILocation(line: 89, column: 13, scope: !103)
!122 = !DILocation(line: 92, column: 17, scope: !123)
!123 = distinct !DILexicalBlock(scope: !91, file: !1, line: 91, column: 13)
!124 = !DILocation(line: 94, column: 17, scope: !123)
!125 = !DILocation(line: 94, column: 22, scope: !123)
!126 = !DILocation(line: 94, column: 31, scope: !123)
!127 = !DILocation(line: 96, column: 9, scope: !92)
!128 = !DILocation(line: 98, column: 12, scope: !77)
!129 = !DILocation(line: 98, column: 5, scope: !77)
