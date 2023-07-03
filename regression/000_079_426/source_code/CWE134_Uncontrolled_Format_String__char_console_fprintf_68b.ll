; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_fprintf_68b.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_fprintf_68b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@CWE134_Uncontrolled_Format_String__char_console_fprintf_68_badData = external dso_local global i8*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodG2BData = external dso_local global i8*, align 8
@CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodB2GData = external dso_local global i8*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_badSink() #0 !dbg !7 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !10, metadata !DIExpression()), !dbg !13
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_badData, align 8, !dbg !14
  store i8* %0, i8** %data, align 8, !dbg !13
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !15
  %2 = load i8*, i8** %data, align 8, !dbg !16
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !17
  ret void, !dbg !18
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_goodG2BSink() #0 !dbg !19 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !20, metadata !DIExpression()), !dbg !21
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodG2BData, align 8, !dbg !22
  store i8* %0, i8** %data, align 8, !dbg !21
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !23
  %2 = load i8*, i8** %data, align 8, !dbg !24
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !25
  ret void, !dbg !26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_goodB2GSink() #0 !dbg !27 {
entry:
  %data = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !28, metadata !DIExpression()), !dbg !29
  %0 = load i8*, i8** @CWE134_Uncontrolled_Format_String__char_console_fprintf_68_goodB2GData, align 8, !dbg !30
  store i8* %0, i8** %data, align 8, !dbg !29
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !31
  %2 = load i8*, i8** %data, align 8, !dbg !32
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %2), !dbg !33
  ret void, !dbg !34
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_426/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_badSink", scope: !1, file: !1, line: 30, type: !8, scopeLine: 31, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 32, type: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocation(line: 32, column: 12, scope: !7)
!14 = !DILocation(line: 32, column: 19, scope: !7)
!15 = !DILocation(line: 34, column: 13, scope: !7)
!16 = !DILocation(line: 34, column: 21, scope: !7)
!17 = !DILocation(line: 34, column: 5, scope: !7)
!18 = !DILocation(line: 35, column: 1, scope: !7)
!19 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_goodG2BSink", scope: !1, file: !1, line: 42, type: !8, scopeLine: 43, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!20 = !DILocalVariable(name: "data", scope: !19, file: !1, line: 44, type: !11)
!21 = !DILocation(line: 44, column: 12, scope: !19)
!22 = !DILocation(line: 44, column: 19, scope: !19)
!23 = !DILocation(line: 46, column: 13, scope: !19)
!24 = !DILocation(line: 46, column: 21, scope: !19)
!25 = !DILocation(line: 46, column: 5, scope: !19)
!26 = !DILocation(line: 47, column: 1, scope: !19)
!27 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_68b_goodB2GSink", scope: !1, file: !1, line: 50, type: !8, scopeLine: 51, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!28 = !DILocalVariable(name: "data", scope: !27, file: !1, line: 52, type: !11)
!29 = !DILocation(line: 52, column: 12, scope: !27)
!30 = !DILocation(line: 52, column: 19, scope: !27)
!31 = !DILocation(line: 54, column: 13, scope: !27)
!32 = !DILocation(line: 54, column: 29, scope: !27)
!33 = !DILocation(line: 54, column: 5, scope: !27)
!34 = !DILocation(line: 55, column: 1, scope: !27)
