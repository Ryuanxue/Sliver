; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_fprintf_63b.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_fprintf_63b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_badSink(i8** %dataPtr) #0 !dbg !7 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i8** %data, metadata !15, metadata !DIExpression()), !dbg !16
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !17
  %1 = load i8*, i8** %0, align 8, !dbg !18
  store i8* %1, i8** %data, align 8, !dbg !16
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !19
  %3 = load i8*, i8** %data, align 8, !dbg !20
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !21
  ret void, !dbg !22
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_goodG2BSink(i8** %dataPtr) #0 !dbg !23 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i8** %data, metadata !26, metadata !DIExpression()), !dbg !27
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !28
  %1 = load i8*, i8** %0, align 8, !dbg !29
  store i8* %1, i8** %data, align 8, !dbg !27
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !30
  %3 = load i8*, i8** %data, align 8, !dbg !31
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !32
  ret void, !dbg !33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_goodB2GSink(i8** %dataPtr) #0 !dbg !34 {
entry:
  %dataPtr.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataPtr, i8*** %dataPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataPtr.addr, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %data, metadata !37, metadata !DIExpression()), !dbg !38
  %0 = load i8**, i8*** %dataPtr.addr, align 8, !dbg !39
  %1 = load i8*, i8** %0, align 8, !dbg !40
  store i8* %1, i8** %data, align 8, !dbg !38
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !41
  %3 = load i8*, i8** %data, align 8, !dbg !42
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %3), !dbg !43
  ret void, !dbg !44
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_63b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_997/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_badSink", scope: !1, file: !1, line: 32, type: !8, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !7, file: !1, line: 32, type: !10)
!14 = !DILocation(line: 32, column: 80, scope: !7)
!15 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 34, type: !11)
!16 = !DILocation(line: 34, column: 12, scope: !7)
!17 = !DILocation(line: 34, column: 20, scope: !7)
!18 = !DILocation(line: 34, column: 19, scope: !7)
!19 = !DILocation(line: 36, column: 13, scope: !7)
!20 = !DILocation(line: 36, column: 21, scope: !7)
!21 = !DILocation(line: 36, column: 5, scope: !7)
!22 = !DILocation(line: 37, column: 1, scope: !7)
!23 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_goodG2BSink", scope: !1, file: !1, line: 44, type: !8, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!24 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !23, file: !1, line: 44, type: !10)
!25 = !DILocation(line: 44, column: 84, scope: !23)
!26 = !DILocalVariable(name: "data", scope: !23, file: !1, line: 46, type: !11)
!27 = !DILocation(line: 46, column: 12, scope: !23)
!28 = !DILocation(line: 46, column: 20, scope: !23)
!29 = !DILocation(line: 46, column: 19, scope: !23)
!30 = !DILocation(line: 48, column: 13, scope: !23)
!31 = !DILocation(line: 48, column: 21, scope: !23)
!32 = !DILocation(line: 48, column: 5, scope: !23)
!33 = !DILocation(line: 49, column: 1, scope: !23)
!34 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_63b_goodB2GSink", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!35 = !DILocalVariable(name: "dataPtr", arg: 1, scope: !34, file: !1, line: 52, type: !10)
!36 = !DILocation(line: 52, column: 84, scope: !34)
!37 = !DILocalVariable(name: "data", scope: !34, file: !1, line: 54, type: !11)
!38 = !DILocation(line: 54, column: 12, scope: !34)
!39 = !DILocation(line: 54, column: 20, scope: !34)
!40 = !DILocation(line: 54, column: 19, scope: !34)
!41 = !DILocation(line: 56, column: 13, scope: !34)
!42 = !DILocation(line: 56, column: 29, scope: !34)
!43 = !DILocation(line: 56, column: 5, scope: !34)
!44 = !DILocation(line: 57, column: 1, scope: !34)
