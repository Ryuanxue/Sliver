; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_badSink(i32 %data) #0 !dbg !7 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !11, metadata !DIExpression()), !dbg !12
  %0 = load i32, i32* %data.addr, align 4, !dbg !13
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_badSink(i32 %0), !dbg !14
  ret void, !dbg !15
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_badSink(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_goodG2BSink(i32 %data) #0 !dbg !16 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !17, metadata !DIExpression()), !dbg !18
  %0 = load i32, i32* %data.addr, align 4, !dbg !19
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_goodG2BSink(i32 %0), !dbg !20
  ret void, !dbg !21
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_goodG2BSink(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_goodB2GSink(i32 %data) #0 !dbg !22 {
entry:
  %data.addr = alloca i32, align 4
  store i32 %data, i32* %data.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data.addr, metadata !23, metadata !DIExpression()), !dbg !24
  %0 = load i32, i32* %data.addr, align 4, !dbg !25
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_goodB2GSink(i32 %0), !dbg !26
  ret void, !dbg !27
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54c_goodB2GSink(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_596/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_badSink", scope: !1, file: !1, line: 27, type: !8, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "data", arg: 1, scope: !7, file: !1, line: 27, type: !10)
!12 = !DILocation(line: 27, column: 71, scope: !7)
!13 = !DILocation(line: 29, column: 66, scope: !7)
!14 = !DILocation(line: 29, column: 5, scope: !7)
!15 = !DILocation(line: 30, column: 1, scope: !7)
!16 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_goodG2BSink", scope: !1, file: !1, line: 39, type: !8, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!17 = !DILocalVariable(name: "data", arg: 1, scope: !16, file: !1, line: 39, type: !10)
!18 = !DILocation(line: 39, column: 75, scope: !16)
!19 = !DILocation(line: 41, column: 70, scope: !16)
!20 = !DILocation(line: 41, column: 5, scope: !16)
!21 = !DILocation(line: 42, column: 1, scope: !16)
!22 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fgets_54b_goodB2GSink", scope: !1, file: !1, line: 47, type: !8, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!23 = !DILocalVariable(name: "data", arg: 1, scope: !22, file: !1, line: 47, type: !10)
!24 = !DILocation(line: 47, column: 75, scope: !22)
!25 = !DILocation(line: 49, column: 70, scope: !22)
!26 = !DILocation(line: 49, column: 5, scope: !22)
!27 = !DILocation(line: 50, column: 1, scope: !22)
