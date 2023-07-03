; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_fprintf_22b.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_fprintf_22b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badGlobal = external dso_local global i32, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Global = external dso_local global i32, align 4
@.str = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Global = external dso_local global i32, align 4
@CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BGlobal = external dso_local global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badSink(i8* %data) #0 !dbg !7 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !12, metadata !DIExpression()), !dbg !13
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badGlobal, align 4, !dbg !14
  %tobool = icmp ne i32 %0, 0, !dbg !14
  br i1 %tobool, label %if.then, label %if.end, !dbg !16

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !17
  %2 = load i8*, i8** %data.addr, align 8, !dbg !19
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !20
  br label %if.end, !dbg !21

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Sink(i8* %data) #0 !dbg !23 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !24, metadata !DIExpression()), !dbg !25
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Global, align 4, !dbg !26
  %tobool = icmp ne i32 %0, 0, !dbg !26
  br i1 %tobool, label %if.then, label %if.else, !dbg !28

if.then:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0)), !dbg !29
  br label %if.end, !dbg !31

if.else:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !32
  %2 = load i8*, i8** %data.addr, align 8, !dbg !34
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %2), !dbg !35
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !36
}

declare dso_local void @printLine(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Sink(i8* %data) #0 !dbg !37 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !38, metadata !DIExpression()), !dbg !39
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Global, align 4, !dbg !40
  %tobool = icmp ne i32 %0, 0, !dbg !40
  br i1 %tobool, label %if.then, label %if.end, !dbg !42

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !43
  %2 = load i8*, i8** %data.addr, align 8, !dbg !45
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %2), !dbg !46
  br label %if.end, !dbg !47

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BSink(i8* %data) #0 !dbg !49 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !50, metadata !DIExpression()), !dbg !51
  %0 = load i32, i32* @CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BGlobal, align 4, !dbg !52
  %tobool = icmp ne i32 %0, 0, !dbg !52
  br i1 %tobool, label %if.then, label %if.end, !dbg !54

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !55
  %2 = load i8*, i8** %data.addr, align 8, !dbg !57
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !58
  br label %if.end, !dbg !59

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !60
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_981/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_badSink", scope: !1, file: !1, line: 29, type: !8, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DILocalVariable(name: "data", arg: 1, scope: !7, file: !1, line: 29, type: !10)
!13 = !DILocation(line: 29, column: 77, scope: !7)
!14 = !DILocation(line: 31, column: 8, scope: !15)
!15 = distinct !DILexicalBlock(scope: !7, file: !1, line: 31, column: 8)
!16 = !DILocation(line: 31, column: 8, scope: !7)
!17 = !DILocation(line: 34, column: 17, scope: !18)
!18 = distinct !DILexicalBlock(scope: !15, file: !1, line: 32, column: 5)
!19 = !DILocation(line: 34, column: 25, scope: !18)
!20 = !DILocation(line: 34, column: 9, scope: !18)
!21 = !DILocation(line: 35, column: 5, scope: !18)
!22 = !DILocation(line: 36, column: 1, scope: !7)
!23 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G1Sink", scope: !1, file: !1, line: 48, type: !8, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!24 = !DILocalVariable(name: "data", arg: 1, scope: !23, file: !1, line: 48, type: !10)
!25 = !DILocation(line: 48, column: 82, scope: !23)
!26 = !DILocation(line: 50, column: 8, scope: !27)
!27 = distinct !DILexicalBlock(scope: !23, file: !1, line: 50, column: 8)
!28 = !DILocation(line: 50, column: 8, scope: !23)
!29 = !DILocation(line: 53, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !27, file: !1, line: 51, column: 5)
!31 = !DILocation(line: 54, column: 5, scope: !30)
!32 = !DILocation(line: 58, column: 17, scope: !33)
!33 = distinct !DILexicalBlock(scope: !27, file: !1, line: 56, column: 5)
!34 = !DILocation(line: 58, column: 33, scope: !33)
!35 = !DILocation(line: 58, column: 9, scope: !33)
!36 = !DILocation(line: 60, column: 1, scope: !23)
!37 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodB2G2Sink", scope: !1, file: !1, line: 63, type: !8, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!38 = !DILocalVariable(name: "data", arg: 1, scope: !37, file: !1, line: 63, type: !10)
!39 = !DILocation(line: 63, column: 82, scope: !37)
!40 = !DILocation(line: 65, column: 8, scope: !41)
!41 = distinct !DILexicalBlock(scope: !37, file: !1, line: 65, column: 8)
!42 = !DILocation(line: 65, column: 8, scope: !37)
!43 = !DILocation(line: 68, column: 17, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 66, column: 5)
!45 = !DILocation(line: 68, column: 33, scope: !44)
!46 = !DILocation(line: 68, column: 9, scope: !44)
!47 = !DILocation(line: 69, column: 5, scope: !44)
!48 = !DILocation(line: 70, column: 1, scope: !37)
!49 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_22_goodG2BSink", scope: !1, file: !1, line: 73, type: !8, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!50 = !DILocalVariable(name: "data", arg: 1, scope: !49, file: !1, line: 73, type: !10)
!51 = !DILocation(line: 73, column: 81, scope: !49)
!52 = !DILocation(line: 75, column: 8, scope: !53)
!53 = distinct !DILexicalBlock(scope: !49, file: !1, line: 75, column: 8)
!54 = !DILocation(line: 75, column: 8, scope: !49)
!55 = !DILocation(line: 78, column: 17, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 76, column: 5)
!57 = !DILocation(line: 78, column: 25, scope: !56)
!58 = !DILocation(line: 78, column: 9, scope: !56)
!59 = !DILocation(line: 79, column: 5, scope: !56)
!60 = !DILocation(line: 80, column: 1, scope: !49)
