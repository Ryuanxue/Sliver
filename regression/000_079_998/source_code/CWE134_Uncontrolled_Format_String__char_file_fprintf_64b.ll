; ModuleID = 'CWE134_Uncontrolled_Format_String__char_file_fprintf_64b.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_file_fprintf_64b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_badSink(i8* %dataVoidPtr) #0 !dbg !11 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !19
  %1 = bitcast i8* %0 to i8**, !dbg !20
  store i8** %1, i8*** %dataPtr, align 8, !dbg !18
  call void @llvm.dbg.declare(metadata i8** %data, metadata !21, metadata !DIExpression()), !dbg !22
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !23
  %3 = load i8*, i8** %2, align 8, !dbg !24
  store i8* %3, i8** %data, align 8, !dbg !22
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !25
  %5 = load i8*, i8** %data, align 8, !dbg !26
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %5), !dbg !27
  ret void, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_goodG2BSink(i8* %dataVoidPtr) #0 !dbg !29 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !32, metadata !DIExpression()), !dbg !33
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !34
  %1 = bitcast i8* %0 to i8**, !dbg !35
  store i8** %1, i8*** %dataPtr, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata i8** %data, metadata !36, metadata !DIExpression()), !dbg !37
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !38
  %3 = load i8*, i8** %2, align 8, !dbg !39
  store i8* %3, i8** %data, align 8, !dbg !37
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !40
  %5 = load i8*, i8** %data, align 8, !dbg !41
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* %5), !dbg !42
  ret void, !dbg !43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_goodB2GSink(i8* %dataVoidPtr) #0 !dbg !44 {
entry:
  %dataVoidPtr.addr = alloca i8*, align 8
  %dataPtr = alloca i8**, align 8
  %data = alloca i8*, align 8
  store i8* %dataVoidPtr, i8** %dataVoidPtr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dataVoidPtr.addr, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i8*** %dataPtr, metadata !47, metadata !DIExpression()), !dbg !48
  %0 = load i8*, i8** %dataVoidPtr.addr, align 8, !dbg !49
  %1 = bitcast i8* %0 to i8**, !dbg !50
  store i8** %1, i8*** %dataPtr, align 8, !dbg !48
  call void @llvm.dbg.declare(metadata i8** %data, metadata !51, metadata !DIExpression()), !dbg !52
  %2 = load i8**, i8*** %dataPtr, align 8, !dbg !53
  %3 = load i8*, i8** %2, align 8, !dbg !54
  store i8* %3, i8** %data, align 8, !dbg !52
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !55
  %5 = load i8*, i8** %data, align 8, !dbg !56
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %5), !dbg !57
  ret void, !dbg !58
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_file_fprintf_64b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_998/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 12.0.0"}
!11 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_badSink", scope: !1, file: !1, line: 32, type: !12, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14}
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !11, file: !1, line: 32, type: !14)
!16 = !DILocation(line: 32, column: 78, scope: !11)
!17 = !DILocalVariable(name: "dataPtr", scope: !11, file: !1, line: 35, type: !4)
!18 = !DILocation(line: 35, column: 14, scope: !11)
!19 = !DILocation(line: 35, column: 34, scope: !11)
!20 = !DILocation(line: 35, column: 24, scope: !11)
!21 = !DILocalVariable(name: "data", scope: !11, file: !1, line: 37, type: !5)
!22 = !DILocation(line: 37, column: 12, scope: !11)
!23 = !DILocation(line: 37, column: 21, scope: !11)
!24 = !DILocation(line: 37, column: 20, scope: !11)
!25 = !DILocation(line: 39, column: 13, scope: !11)
!26 = !DILocation(line: 39, column: 21, scope: !11)
!27 = !DILocation(line: 39, column: 5, scope: !11)
!28 = !DILocation(line: 40, column: 1, scope: !11)
!29 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_goodG2BSink", scope: !1, file: !1, line: 47, type: !12, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!30 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !29, file: !1, line: 47, type: !14)
!31 = !DILocation(line: 47, column: 82, scope: !29)
!32 = !DILocalVariable(name: "dataPtr", scope: !29, file: !1, line: 50, type: !4)
!33 = !DILocation(line: 50, column: 14, scope: !29)
!34 = !DILocation(line: 50, column: 34, scope: !29)
!35 = !DILocation(line: 50, column: 24, scope: !29)
!36 = !DILocalVariable(name: "data", scope: !29, file: !1, line: 52, type: !5)
!37 = !DILocation(line: 52, column: 12, scope: !29)
!38 = !DILocation(line: 52, column: 21, scope: !29)
!39 = !DILocation(line: 52, column: 20, scope: !29)
!40 = !DILocation(line: 54, column: 13, scope: !29)
!41 = !DILocation(line: 54, column: 21, scope: !29)
!42 = !DILocation(line: 54, column: 5, scope: !29)
!43 = !DILocation(line: 55, column: 1, scope: !29)
!44 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_file_fprintf_64b_goodB2GSink", scope: !1, file: !1, line: 58, type: !12, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!45 = !DILocalVariable(name: "dataVoidPtr", arg: 1, scope: !44, file: !1, line: 58, type: !14)
!46 = !DILocation(line: 58, column: 82, scope: !44)
!47 = !DILocalVariable(name: "dataPtr", scope: !44, file: !1, line: 61, type: !4)
!48 = !DILocation(line: 61, column: 14, scope: !44)
!49 = !DILocation(line: 61, column: 34, scope: !44)
!50 = !DILocation(line: 61, column: 24, scope: !44)
!51 = !DILocalVariable(name: "data", scope: !44, file: !1, line: 63, type: !5)
!52 = !DILocation(line: 63, column: 12, scope: !44)
!53 = !DILocation(line: 63, column: 21, scope: !44)
!54 = !DILocation(line: 63, column: 20, scope: !44)
!55 = !DILocation(line: 65, column: 13, scope: !44)
!56 = !DILocation(line: 65, column: 29, scope: !44)
!57 = !DILocation(line: 65, column: 5, scope: !44)
!58 = !DILocation(line: 66, column: 1, scope: !44)
