; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType = type { i8* }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_badSink(i8* %myStruct.coerce) #0 !dbg !7 {
entry:
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, align 8
  %data = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i8** %data, metadata !18, metadata !DIExpression()), !dbg !19
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !20
  %0 = load i8*, i8** %structFirst, align 8, !dbg !20
  store i8* %0, i8** %data, align 8, !dbg !19
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !21
  %2 = load i8*, i8** %data, align 8, !dbg !22
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !23
  ret void, !dbg !24
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodG2BSink(i8* %myStruct.coerce) #0 !dbg !25 {
entry:
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, align 8
  %data = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i8** %data, metadata !28, metadata !DIExpression()), !dbg !29
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !30
  %0 = load i8*, i8** %structFirst, align 8, !dbg !30
  store i8* %0, i8** %data, align 8, !dbg !29
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !31
  %2 = load i8*, i8** %data, align 8, !dbg !32
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* %2), !dbg !33
  ret void, !dbg !34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodB2GSink(i8* %myStruct.coerce) #0 !dbg !35 {
entry:
  %myStruct = alloca %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, align 8
  %data = alloca i8*, align 8
  %coerce.dive = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0
  store i8* %myStruct.coerce, i8** %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i8** %data, metadata !38, metadata !DIExpression()), !dbg !39
  %structFirst = getelementptr inbounds %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType, %struct._CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType* %myStruct, i32 0, i32 0, !dbg !40
  %0 = load i8*, i8** %structFirst, align 8, !dbg !40
  store i8* %0, i8** %data, align 8, !dbg !39
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !41
  %2 = load i8*, i8** %data, align 8, !dbg !42
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %2), !dbg !43
  ret void, !dbg !44
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_713/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_badSink", scope: !1, file: !1, line: 39, type: !8, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType", file: !1, line: 35, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE134_Uncontrolled_Format_String__char_environment_fprintf_67_structType", file: !1, line: 32, size: 64, elements: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !11, file: !1, line: 34, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocalVariable(name: "myStruct", arg: 1, scope: !7, file: !1, line: 39, type: !10)
!17 = !DILocation(line: 39, column: 152, scope: !7)
!18 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 41, type: !14)
!19 = !DILocation(line: 41, column: 12, scope: !7)
!20 = !DILocation(line: 41, column: 28, scope: !7)
!21 = !DILocation(line: 43, column: 13, scope: !7)
!22 = !DILocation(line: 43, column: 21, scope: !7)
!23 = !DILocation(line: 43, column: 5, scope: !7)
!24 = !DILocation(line: 44, column: 1, scope: !7)
!25 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodG2BSink", scope: !1, file: !1, line: 51, type: !8, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!26 = !DILocalVariable(name: "myStruct", arg: 1, scope: !25, file: !1, line: 51, type: !10)
!27 = !DILocation(line: 51, column: 156, scope: !25)
!28 = !DILocalVariable(name: "data", scope: !25, file: !1, line: 53, type: !14)
!29 = !DILocation(line: 53, column: 12, scope: !25)
!30 = !DILocation(line: 53, column: 28, scope: !25)
!31 = !DILocation(line: 55, column: 13, scope: !25)
!32 = !DILocation(line: 55, column: 21, scope: !25)
!33 = !DILocation(line: 55, column: 5, scope: !25)
!34 = !DILocation(line: 56, column: 1, scope: !25)
!35 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_67b_goodB2GSink", scope: !1, file: !1, line: 59, type: !8, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!36 = !DILocalVariable(name: "myStruct", arg: 1, scope: !35, file: !1, line: 59, type: !10)
!37 = !DILocation(line: 59, column: 156, scope: !35)
!38 = !DILocalVariable(name: "data", scope: !35, file: !1, line: 61, type: !14)
!39 = !DILocation(line: 61, column: 12, scope: !35)
!40 = !DILocation(line: 61, column: 28, scope: !35)
!41 = !DILocation(line: 63, column: 13, scope: !35)
!42 = !DILocation(line: 63, column: 29, scope: !35)
!43 = !DILocation(line: 63, column: 5, scope: !35)
!44 = !DILocation(line: 64, column: 1, scope: !35)
