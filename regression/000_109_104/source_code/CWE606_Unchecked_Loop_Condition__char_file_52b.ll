; ModuleID = 'CWE606_Unchecked_Loop_Condition__char_file_52b.c'
source_filename = "CWE606_Unchecked_Loop_Condition__char_file_52b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_52b_badSink(i8* %data) #0 !dbg !7 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !12, metadata !DIExpression()), !dbg !13
  %0 = load i8*, i8** %data.addr, align 8, !dbg !14
  call void @CWE606_Unchecked_Loop_Condition__char_file_52c_badSink(i8* %0), !dbg !15
  ret void, !dbg !16
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_file_52c_badSink(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_52b_goodG2BSink(i8* %data) #0 !dbg !17 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !18, metadata !DIExpression()), !dbg !19
  %0 = load i8*, i8** %data.addr, align 8, !dbg !20
  call void @CWE606_Unchecked_Loop_Condition__char_file_52c_goodG2BSink(i8* %0), !dbg !21
  ret void, !dbg !22
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_file_52c_goodG2BSink(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE606_Unchecked_Loop_Condition__char_file_52b_goodB2GSink(i8* %data) #0 !dbg !23 {
entry:
  %data.addr = alloca i8*, align 8
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !24, metadata !DIExpression()), !dbg !25
  %0 = load i8*, i8** %data.addr, align 8, !dbg !26
  call void @CWE606_Unchecked_Loop_Condition__char_file_52c_goodB2GSink(i8* %0), !dbg !27
  ret void, !dbg !28
}

declare dso_local void @CWE606_Unchecked_Loop_Condition__char_file_52c_goodB2GSink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE606_Unchecked_Loop_Condition__char_file_52b.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_109_104/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_52b_badSink", scope: !1, file: !1, line: 37, type: !8, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DILocalVariable(name: "data", arg: 1, scope: !7, file: !1, line: 37, type: !10)
!13 = !DILocation(line: 37, column: 68, scope: !7)
!14 = !DILocation(line: 39, column: 60, scope: !7)
!15 = !DILocation(line: 39, column: 5, scope: !7)
!16 = !DILocation(line: 40, column: 1, scope: !7)
!17 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_52b_goodG2BSink", scope: !1, file: !1, line: 49, type: !8, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!18 = !DILocalVariable(name: "data", arg: 1, scope: !17, file: !1, line: 49, type: !10)
!19 = !DILocation(line: 49, column: 72, scope: !17)
!20 = !DILocation(line: 51, column: 64, scope: !17)
!21 = !DILocation(line: 51, column: 5, scope: !17)
!22 = !DILocation(line: 52, column: 1, scope: !17)
!23 = distinct !DISubprogram(name: "CWE606_Unchecked_Loop_Condition__char_file_52b_goodB2GSink", scope: !1, file: !1, line: 57, type: !8, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!24 = !DILocalVariable(name: "data", arg: 1, scope: !23, file: !1, line: 57, type: !10)
!25 = !DILocation(line: 57, column: 72, scope: !23)
!26 = !DILocation(line: 59, column: 64, scope: !23)
!27 = !DILocation(line: 59, column: 5, scope: !23)
!28 = !DILocation(line: 60, column: 1, scope: !23)
