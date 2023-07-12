; ModuleID = 'wchar_t_env_fuzz.c'
source_filename = "wchar_t_env_fuzz.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@getenv.dataBuffer = internal global [100 x i32] zeroinitializer, align 16, !dbg !0
@stdin = external local_unnamed_addr global %struct._IO_FILE*, align 8
@__afl_area_ptr = external global i8*
@__afl_prev_loc = external thread_local global i32

; Function Attrs: nounwind uwtable
define i32* @getenv(i32* nocapture readnone) local_unnamed_addr #0 !dbg !2 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !14, metadata !DIExpression()), !dbg !23
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !24, !tbaa !26
  %3 = tail call i32 (i32*, i32, %struct._IO_FILE*, ...) bitcast (i32 (...)* @fgetws to i32 (i32*, i32, %struct._IO_FILE*, ...)*)(i32* getelementptr inbounds ([100 x i32], [100 x i32]* @getenv.dataBuffer, i64 0, i64 0), i32 100, %struct._IO_FILE* %2) #3, !dbg !30
  %4 = icmp eq i32 %3, 0, !dbg !31
  %5 = select i1 %4, i32* null, i32* getelementptr inbounds ([100 x i32], [100 x i32]* @getenv.dataBuffer, i64 0, i64 0), !dbg !32
  ret i32* %5, !dbg !33
}

declare i32 @fgetws(...) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!10}
!llvm.module.flags = !{!18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dataBuffer", scope: !2, file: !3, line: 5, type: !15, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "getenv", scope: !3, file: !3, line: 3, type: !4, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !10, retainedNodes: !13)
!3 = !DIFile(filename: "wchar_t_env_fuzz.c", directory: "/home/raoxue/Desktop/MemVerif/fuzzlib")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !8, line: 74, baseType: !9)
!8 = !DIFile(filename: "/usr/lib/llvm-9/lib/clang/9.0.1/include/stddef.h", directory: "")
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1-12 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !12, nameTableKind: None)
!11 = !{}
!12 = !{!0}
!13 = !{!14}
!14 = !DILocalVariable(name: "s", arg: 1, scope: !2, file: !3, line: 3, type: !6)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 100)
!18 = !{i32 2, !"Dwarf Version", i32 4}
!19 = !{i32 2, !"Debug Info Version", i32 3}
!20 = !{i32 1, !"wchar_size", i32 4}
!21 = !{i32 7, !"PIC Level", i32 2}
!22 = !{!"clang version 9.0.1-12 "}
!23 = !DILocation(line: 0, scope: !2)
!24 = !DILocation(line: 6, column: 32, scope: !25)
!25 = distinct !DILexicalBlock(scope: !2, file: !3, line: 6, column: 8)
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 6, column: 8, scope: !25)
!31 = !DILocation(line: 6, column: 39, scope: !25)
!32 = !DILocation(line: 0, scope: !25)
!33 = !DILocation(line: 14, column: 1, scope: !2)
