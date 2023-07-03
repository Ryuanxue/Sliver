; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_fprintf_66b.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_fprintf_66b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_badSink(i8** %dataArray) #0 !dbg !7 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i8** %data, metadata !15, metadata !DIExpression()), !dbg !16
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !17
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !17
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !17
  store i8* %1, i8** %data, align 8, !dbg !16
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !18
  %3 = load i8*, i8** %data, align 8, !dbg !19
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !20
  ret void, !dbg !21
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_goodG2BSink(i8** %dataArray) #0 !dbg !22 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i8** %data, metadata !25, metadata !DIExpression()), !dbg !26
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !27
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !27
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !27
  store i8* %1, i8** %data, align 8, !dbg !26
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !28
  %3 = load i8*, i8** %data, align 8, !dbg !29
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !30
  ret void, !dbg !31
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_goodB2GSink(i8** %dataArray) #0 !dbg !32 {
entry:
  %dataArray.addr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8** %dataArray, i8*** %dataArray.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %dataArray.addr, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i8** %data, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = load i8**, i8*** %dataArray.addr, align 8, !dbg !37
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 2, !dbg !37
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !37
  store i8* %1, i8** %data, align 8, !dbg !36
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !38
  %3 = load i8*, i8** %data, align 8, !dbg !39
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %3), !dbg !40
  ret void, !dbg !41
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_66b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_080_000/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_badSink", scope: !1, file: !1, line: 32, type: !8, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocalVariable(name: "dataArray", arg: 1, scope: !7, file: !1, line: 32, type: !10)
!14 = !DILocation(line: 32, column: 78, scope: !7)
!15 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 35, type: !11)
!16 = !DILocation(line: 35, column: 12, scope: !7)
!17 = !DILocation(line: 35, column: 19, scope: !7)
!18 = !DILocation(line: 37, column: 13, scope: !7)
!19 = !DILocation(line: 37, column: 21, scope: !7)
!20 = !DILocation(line: 37, column: 5, scope: !7)
!21 = !DILocation(line: 38, column: 1, scope: !7)
!22 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_goodG2BSink", scope: !1, file: !1, line: 45, type: !8, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!23 = !DILocalVariable(name: "dataArray", arg: 1, scope: !22, file: !1, line: 45, type: !10)
!24 = !DILocation(line: 45, column: 82, scope: !22)
!25 = !DILocalVariable(name: "data", scope: !22, file: !1, line: 47, type: !11)
!26 = !DILocation(line: 47, column: 12, scope: !22)
!27 = !DILocation(line: 47, column: 19, scope: !22)
!28 = !DILocation(line: 49, column: 13, scope: !22)
!29 = !DILocation(line: 49, column: 21, scope: !22)
!30 = !DILocation(line: 49, column: 5, scope: !22)
!31 = !DILocation(line: 50, column: 1, scope: !22)
!32 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_66b_goodB2GSink", scope: !1, file: !1, line: 53, type: !8, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!33 = !DILocalVariable(name: "dataArray", arg: 1, scope: !32, file: !1, line: 53, type: !10)
!34 = !DILocation(line: 53, column: 82, scope: !32)
!35 = !DILocalVariable(name: "data", scope: !32, file: !1, line: 55, type: !11)
!36 = !DILocation(line: 55, column: 12, scope: !32)
!37 = !DILocation(line: 55, column: 19, scope: !32)
!38 = !DILocation(line: 57, column: 13, scope: !32)
!39 = !DILocation(line: 57, column: 29, scope: !32)
!40 = !DILocation(line: 57, column: 5, scope: !32)
!41 = !DILocation(line: 58, column: 1, scope: !32)
