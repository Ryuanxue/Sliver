; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65a.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_bad() #0 !dbg !7 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  call void @llvm.dbg.declare(metadata i32* %data, metadata !10, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !13, metadata !DIExpression()), !dbg !17
  store void (i32)* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink, void (i32)** %funcPtr, align 8, !dbg !17
  store i32 -1, i32* %data, align 4, !dbg !18
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !19
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !20
  %1 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !21
  %2 = load i32, i32* %data, align 4, !dbg !22
  call void %1(i32 %2), !dbg !21
  ret void, !dbg !23
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_badSink(i32) #2

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !24 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  call void @llvm.dbg.declare(metadata i32* %data, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !27, metadata !DIExpression()), !dbg !28
  store void (i32)* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink, void (i32)** %funcPtr, align 8, !dbg !28
  store i32 -1, i32* %data, align 4, !dbg !29
  store i32 7, i32* %data, align 4, !dbg !30
  %0 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !31
  %1 = load i32, i32* %data, align 4, !dbg !32
  call void %0(i32 %1), !dbg !31
  ret void, !dbg !33
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodG2BSink(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !34 {
entry:
  %data = alloca i32, align 4
  %funcPtr = alloca void (i32)*, align 8
  call void @llvm.dbg.declare(metadata i32* %data, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata void (i32)** %funcPtr, metadata !37, metadata !DIExpression()), !dbg !38
  store void (i32)* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodB2GSink, void (i32)** %funcPtr, align 8, !dbg !38
  store i32 -1, i32* %data, align 4, !dbg !39
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !40
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !41
  %1 = load void (i32)*, void (i32)** %funcPtr, align 8, !dbg !42
  %2 = load i32, i32* %data, align 4, !dbg !43
  call void %1(i32 %2), !dbg !42
  ret void, !dbg !44
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65b_goodB2GSink(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_good() #0 !dbg !45 {
entry:
  call void @goodG2B(), !dbg !46
  call void @goodB2G(), !dbg !47
  ret void, !dbg !48
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_649/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_bad", scope: !1, file: !1, line: 25, type: !8, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 27, type: !11)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocation(line: 27, column: 9, scope: !7)
!13 = !DILocalVariable(name: "funcPtr", scope: !7, file: !1, line: 29, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !11}
!17 = !DILocation(line: 29, column: 12, scope: !7)
!18 = !DILocation(line: 31, column: 10, scope: !7)
!19 = !DILocation(line: 33, column: 12, scope: !7)
!20 = !DILocation(line: 33, column: 5, scope: !7)
!21 = !DILocation(line: 35, column: 5, scope: !7)
!22 = !DILocation(line: 35, column: 13, scope: !7)
!23 = !DILocation(line: 36, column: 1, scope: !7)
!24 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 44, type: !8, scopeLine: 45, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!25 = !DILocalVariable(name: "data", scope: !24, file: !1, line: 46, type: !11)
!26 = !DILocation(line: 46, column: 9, scope: !24)
!27 = !DILocalVariable(name: "funcPtr", scope: !24, file: !1, line: 47, type: !14)
!28 = !DILocation(line: 47, column: 12, scope: !24)
!29 = !DILocation(line: 49, column: 10, scope: !24)
!30 = !DILocation(line: 52, column: 10, scope: !24)
!31 = !DILocation(line: 53, column: 5, scope: !24)
!32 = !DILocation(line: 53, column: 13, scope: !24)
!33 = !DILocation(line: 54, column: 1, scope: !24)
!34 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 58, type: !8, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!35 = !DILocalVariable(name: "data", scope: !34, file: !1, line: 60, type: !11)
!36 = !DILocation(line: 60, column: 9, scope: !34)
!37 = !DILocalVariable(name: "funcPtr", scope: !34, file: !1, line: 61, type: !14)
!38 = !DILocation(line: 61, column: 12, scope: !34)
!39 = !DILocation(line: 63, column: 10, scope: !34)
!40 = !DILocation(line: 65, column: 12, scope: !34)
!41 = !DILocation(line: 65, column: 5, scope: !34)
!42 = !DILocation(line: 66, column: 5, scope: !34)
!43 = !DILocation(line: 66, column: 13, scope: !34)
!44 = !DILocation(line: 67, column: 1, scope: !34)
!45 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_65_good", scope: !1, file: !1, line: 69, type: !8, scopeLine: 70, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!46 = !DILocation(line: 71, column: 5, scope: !45)
!47 = !DILocation(line: 72, column: 5, scope: !45)
!48 = !DILocation(line: 73, column: 1, scope: !45)
