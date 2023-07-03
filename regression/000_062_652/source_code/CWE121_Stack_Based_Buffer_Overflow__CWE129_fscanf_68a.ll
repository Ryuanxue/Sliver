; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68a.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_badData = dso_local global i32 0, align 4, !dbg !0
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodG2BData = dso_local global i32 0, align 4, !dbg !6
@CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodB2GData = dso_local global i32 0, align 4, !dbg !9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_bad() #0 !dbg !15 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 -1, i32* %data, align 4, !dbg !20
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !21
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !22
  %1 = load i32, i32* %data, align 4, !dbg !23
  store i32 %1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_badData, align 4, !dbg !24
  call void (...) @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink(), !dbg !25
  ret void, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_badSink(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !27 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 -1, i32* %data, align 4, !dbg !30
  store i32 7, i32* %data, align 4, !dbg !31
  %0 = load i32, i32* %data, align 4, !dbg !32
  store i32 %0, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodG2BData, align 4, !dbg !33
  call void (...) @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodG2BSink(), !dbg !34
  ret void, !dbg !35
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodG2BSink(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !36 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !37, metadata !DIExpression()), !dbg !38
  store i32 -1, i32* %data, align 4, !dbg !39
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !40
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !41
  %1 = load i32, i32* %data, align 4, !dbg !42
  store i32 %1, i32* @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodB2GData, align 4, !dbg !43
  call void (...) @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink(), !dbg !44
  ret void, !dbg !45
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68b_goodB2GSink(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_good() #0 !dbg !46 {
entry:
  call void @goodG2B(), !dbg !47
  call void @goodB2G(), !dbg !48
  ret void, !dbg !49
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_badData", scope: !2, file: !3, line: 21, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_652/source_code")
!4 = !{}
!5 = !{!0, !6, !9}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodG2BData", scope: !2, file: !3, line: 22, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_goodB2GData", scope: !2, file: !3, line: 23, type: !8, isLocal: false, isDefinition: true)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 12.0.0"}
!15 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_bad", scope: !3, file: !3, line: 29, type: !16, scopeLine: 30, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!16 = !DISubroutineType(types: !17)
!17 = !{null}
!18 = !DILocalVariable(name: "data", scope: !15, file: !3, line: 31, type: !8)
!19 = !DILocation(line: 31, column: 9, scope: !15)
!20 = !DILocation(line: 33, column: 10, scope: !15)
!21 = !DILocation(line: 35, column: 12, scope: !15)
!22 = !DILocation(line: 35, column: 5, scope: !15)
!23 = !DILocation(line: 36, column: 68, scope: !15)
!24 = !DILocation(line: 36, column: 66, scope: !15)
!25 = !DILocation(line: 37, column: 5, scope: !15)
!26 = !DILocation(line: 38, column: 1, scope: !15)
!27 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 47, type: !16, scopeLine: 48, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DILocalVariable(name: "data", scope: !27, file: !3, line: 49, type: !8)
!29 = !DILocation(line: 49, column: 9, scope: !27)
!30 = !DILocation(line: 51, column: 10, scope: !27)
!31 = !DILocation(line: 54, column: 10, scope: !27)
!32 = !DILocation(line: 55, column: 72, scope: !27)
!33 = !DILocation(line: 55, column: 70, scope: !27)
!34 = !DILocation(line: 56, column: 5, scope: !27)
!35 = !DILocation(line: 57, column: 1, scope: !27)
!36 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 60, type: !16, scopeLine: 61, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!37 = !DILocalVariable(name: "data", scope: !36, file: !3, line: 62, type: !8)
!38 = !DILocation(line: 62, column: 9, scope: !36)
!39 = !DILocation(line: 64, column: 10, scope: !36)
!40 = !DILocation(line: 66, column: 12, scope: !36)
!41 = !DILocation(line: 66, column: 5, scope: !36)
!42 = !DILocation(line: 67, column: 72, scope: !36)
!43 = !DILocation(line: 67, column: 70, scope: !36)
!44 = !DILocation(line: 68, column: 5, scope: !36)
!45 = !DILocation(line: 69, column: 1, scope: !36)
!46 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_68_good", scope: !3, file: !3, line: 71, type: !16, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!47 = !DILocation(line: 73, column: 5, scope: !46)
!48 = !DILocation(line: 74, column: 5, scope: !46)
!49 = !DILocation(line: 75, column: 1, scope: !46)
