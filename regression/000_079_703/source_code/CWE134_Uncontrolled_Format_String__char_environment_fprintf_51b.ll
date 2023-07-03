; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_badSink(i8* %data) #0 !dbg !7 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !12, metadata !DIExpression()), !dbg !13
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !14
  %1 = load i8*, i8** %data.addr, align 8, !dbg !15
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !16
  ret void, !dbg !17
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_goodG2BSink(i8* %data) #0 !dbg !18 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !19, metadata !DIExpression()), !dbg !20
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !21
  %1 = load i8*, i8** %data.addr, align 8, !dbg !22
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1), !dbg !23
  ret void, !dbg !24
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_goodB2GSink(i8* %data) #0 !dbg !25 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !26, metadata !DIExpression()), !dbg !27
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !28
  %1 = load i8*, i8** %data.addr, align 8, !dbg !29
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %1), !dbg !30
  ret void, !dbg !31
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_703/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_badSink", scope: !1, file: !1, line: 34, type: !8, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DILocalVariable(name: "data", arg: 1, scope: !7, file: !1, line: 34, type: !10)
!13 = !DILocation(line: 34, column: 85, scope: !7)
!14 = !DILocation(line: 37, column: 13, scope: !7)
!15 = !DILocation(line: 37, column: 21, scope: !7)
!16 = !DILocation(line: 37, column: 5, scope: !7)
!17 = !DILocation(line: 38, column: 1, scope: !7)
!18 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_goodG2BSink", scope: !1, file: !1, line: 45, type: !8, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DILocalVariable(name: "data", arg: 1, scope: !18, file: !1, line: 45, type: !10)
!20 = !DILocation(line: 45, column: 89, scope: !18)
!21 = !DILocation(line: 48, column: 13, scope: !18)
!22 = !DILocation(line: 48, column: 21, scope: !18)
!23 = !DILocation(line: 48, column: 5, scope: !18)
!24 = !DILocation(line: 49, column: 1, scope: !18)
!25 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_51b_goodB2GSink", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!26 = !DILocalVariable(name: "data", arg: 1, scope: !25, file: !1, line: 52, type: !10)
!27 = !DILocation(line: 52, column: 89, scope: !25)
!28 = !DILocation(line: 55, column: 13, scope: !25)
!29 = !DILocation(line: 55, column: 29, scope: !25)
!30 = !DILocation(line: 55, column: 5, scope: !25)
!31 = !DILocation(line: 56, column: 1, scope: !25)
