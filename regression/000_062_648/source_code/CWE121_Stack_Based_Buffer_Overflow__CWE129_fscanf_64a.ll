; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64a.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64_bad() #0 !dbg !7 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !10, metadata !DIExpression()), !dbg !12
  store i32 -1, i32* %data, align 4, !dbg !13
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !14
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !15
  %1 = bitcast i32* %data to i8*, !dbg !16
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_badSink(i8* %1), !dbg !17
  ret void, !dbg !18
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_badSink(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !19 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 -1, i32* %data, align 4, !dbg !22
  store i32 7, i32* %data, align 4, !dbg !23
  %0 = bitcast i32* %data to i8*, !dbg !24
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodG2BSink(i8* %0), !dbg !25
  ret void, !dbg !26
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodG2BSink(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !27 {
entry:
  %data = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 -1, i32* %data, align 4, !dbg !30
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !31
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !32
  %1 = bitcast i32* %data to i8*, !dbg !33
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink(i8* %1), !dbg !34
  ret void, !dbg !35
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64b_goodB2GSink(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64_good() #0 !dbg !36 {
entry:
  call void @goodG2B(), !dbg !37
  call void @goodB2G(), !dbg !38
  ret void, !dbg !39
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_648/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64_bad", scope: !1, file: !1, line: 25, type: !8, scopeLine: 26, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 27, type: !11)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocation(line: 27, column: 9, scope: !7)
!13 = !DILocation(line: 29, column: 10, scope: !7)
!14 = !DILocation(line: 31, column: 12, scope: !7)
!15 = !DILocation(line: 31, column: 5, scope: !7)
!16 = !DILocation(line: 32, column: 67, scope: !7)
!17 = !DILocation(line: 32, column: 5, scope: !7)
!18 = !DILocation(line: 33, column: 1, scope: !7)
!19 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 41, type: !8, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!20 = !DILocalVariable(name: "data", scope: !19, file: !1, line: 43, type: !11)
!21 = !DILocation(line: 43, column: 9, scope: !19)
!22 = !DILocation(line: 45, column: 10, scope: !19)
!23 = !DILocation(line: 48, column: 10, scope: !19)
!24 = !DILocation(line: 49, column: 71, scope: !19)
!25 = !DILocation(line: 49, column: 5, scope: !19)
!26 = !DILocation(line: 50, column: 1, scope: !19)
!27 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 54, type: !8, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!28 = !DILocalVariable(name: "data", scope: !27, file: !1, line: 56, type: !11)
!29 = !DILocation(line: 56, column: 9, scope: !27)
!30 = !DILocation(line: 58, column: 10, scope: !27)
!31 = !DILocation(line: 60, column: 12, scope: !27)
!32 = !DILocation(line: 60, column: 5, scope: !27)
!33 = !DILocation(line: 61, column: 71, scope: !27)
!34 = !DILocation(line: 61, column: 5, scope: !27)
!35 = !DILocation(line: 62, column: 1, scope: !27)
!36 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_64_good", scope: !1, file: !1, line: 64, type: !8, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!37 = !DILocation(line: 66, column: 5, scope: !36)
!38 = !DILocation(line: 67, column: 5, scope: !36)
!39 = !DILocation(line: 68, column: 1, scope: !36)
