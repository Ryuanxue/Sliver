; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67a33CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b37_1.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67a33CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b37_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType = type { i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ERROR: Array index is negative.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67a33CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b37_1(i32 %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_data_0, void (i32)* %opsink) #0 !dbg !7 {
entry:
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_data_0.addr = alloca i32, align 4
  %opsink.addr = alloca void (i32)*, align 8
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_myStruct_0 = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_data_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_i_0 = alloca i32, align 4
  %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_buffer_0 = alloca [10 x i32], align 16
  store i32 %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_data_0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_data_0.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_data_0.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store void (i32)* %opsink, void (i32)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i32)** %opsink.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_myStruct_0, metadata !18, metadata !DIExpression()), !dbg !24
  store i32 -1, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_data_0.addr, align 4, !dbg !25
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !26
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_data_0.addr), !dbg !27
  %1 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_data_0.addr, align 4, !dbg !28
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_myStruct_0, i32 0, i32 0, !dbg !29
  store i32 %1, i32* %structFirst, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_data_0, metadata !31, metadata !DIExpression()), !dbg !33
  %structFirst1 = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_myStruct_0, i32 0, i32 0, !dbg !34
  %2 = load i32, i32* %structFirst1, align 4, !dbg !34
  store i32 %2, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_data_0, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_i_0, metadata !35, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_buffer_0, metadata !38, metadata !DIExpression()), !dbg !42
  %3 = bitcast [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_buffer_0 to i8*, !dbg !42
  call void @llvm.memset.p0i8.i64(i8* align 16 %3, i8 0, i64 40, i1 false), !dbg !42
  %4 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_data_0, align 4, !dbg !43
  %cmp = icmp sge i32 %4, 0, !dbg !45
  br i1 %cmp, label %if.then, label %if.else, !dbg !46

if.then:                                          ; preds = %entry
  %5 = load void (i32)*, void (i32)** %opsink.addr, align 8, !dbg !47
  %6 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_data_0, align 4, !dbg !49
  call void %5(i32 %6), !dbg !47
  store i32 0, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_i_0, align 4, !dbg !50
  br label %for.cond, !dbg !52

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_i_0, align 4, !dbg !53
  %cmp2 = icmp slt i32 %7, 10, !dbg !55
  br i1 %cmp2, label %for.body, label %for.end, !dbg !56

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_i_0, align 4, !dbg !57
  %idxprom = sext i32 %8 to i64, !dbg !59
  %arrayidx = getelementptr inbounds [10 x i32], [10 x i32]* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_buffer_0, i64 0, i64 %idxprom, !dbg !59
  %9 = load i32, i32* %arrayidx, align 4, !dbg !59
  call void @printIntLine(i32 %9), !dbg !60
  br label %for.inc, !dbg !61

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_i_0, align 4, !dbg !62
  %inc = add nsw i32 %10, 1, !dbg !62
  store i32 %inc, i32* %_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_i_0, align 4, !dbg !62
  br label %for.cond, !dbg !63, !llvm.loop !64

for.end:                                          ; preds = %for.cond
  br label %if.end, !dbg !67

if.else:                                          ; preds = %entry
  call void @printLine(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0)), !dbg !68
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_label_, !dbg !70

CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_label_: ; preds = %if.end
  call void @llvm.dbg.label(metadata !71), !dbg !72
  br label %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_label_, !dbg !73

CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_label_: ; preds = %CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_label_
  call void @llvm.dbg.label(metadata !74), !dbg !75
  ret void, !dbg !76
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local void @printIntLine(i32) #2

declare dso_local void @printLine(i8*) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67a33CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b37_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_651/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67a33CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b37_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DISubroutineType(types: !13)
!13 = !{null, !10}
!14 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_data_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!15 = !DILocation(line: 3, column: 123, scope: !7)
!16 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !11)
!17 = !DILocation(line: 3, column: 196, scope: !7)
!18 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_myStruct_0", scope: !7, file: !1, line: 5, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType", file: !20, line: 8, baseType: !21)
!20 = !DIFile(filename: "../source_code/_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_651/code_gened")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType", file: !20, line: 5, size: 32, elements: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !21, file: !20, line: 7, baseType: !10, size: 32)
!24 = !DILocation(line: 5, column: 67, scope: !7)
!25 = !DILocation(line: 6, column: 68, scope: !7)
!26 = !DILocation(line: 7, column: 10, scope: !7)
!27 = !DILocation(line: 7, column: 3, scope: !7)
!28 = !DILocation(line: 8, column: 86, scope: !7)
!29 = !DILocation(line: 8, column: 72, scope: !7)
!30 = !DILocation(line: 8, column: 84, scope: !7)
!31 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_data_0", scope: !32, file: !1, line: 10, type: !10)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 3)
!33 = !DILocation(line: 10, column: 9, scope: !32)
!34 = !DILocation(line: 10, column: 150, scope: !32)
!35 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_i_0", scope: !36, file: !1, line: 12, type: !10)
!36 = distinct !DILexicalBlock(scope: !32, file: !1, line: 11, column: 5)
!37 = !DILocation(line: 12, column: 11, scope: !36)
!38 = !DILocalVariable(name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_buffer_0", scope: !36, file: !1, line: 13, type: !39)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 320, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 10)
!42 = !DILocation(line: 13, column: 11, scope: !36)
!43 = !DILocation(line: 14, column: 11, scope: !44)
!44 = distinct !DILexicalBlock(scope: !36, file: !1, line: 14, column: 11)
!45 = !DILocation(line: 14, column: 81, scope: !44)
!46 = !DILocation(line: 14, column: 11, scope: !36)
!47 = !DILocation(line: 16, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 15, column: 7)
!49 = !DILocation(line: 16, column: 16, scope: !48)
!50 = !DILocation(line: 17, column: 81, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 17, column: 9)
!52 = !DILocation(line: 17, column: 14, scope: !51)
!53 = !DILocation(line: 17, column: 86, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 17, column: 9)
!55 = !DILocation(line: 17, column: 153, scope: !54)
!56 = !DILocation(line: 17, column: 9, scope: !51)
!57 = !DILocation(line: 19, column: 96, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 18, column: 9)
!59 = !DILocation(line: 19, column: 24, scope: !58)
!60 = !DILocation(line: 19, column: 11, scope: !58)
!61 = !DILocation(line: 20, column: 9, scope: !58)
!62 = !DILocation(line: 17, column: 225, scope: !54)
!63 = !DILocation(line: 17, column: 9, scope: !54)
!64 = distinct !{!64, !56, !65, !66}
!65 = !DILocation(line: 20, column: 9, scope: !51)
!66 = !{!"llvm.loop.mustprogress"}
!67 = !DILocation(line: 22, column: 7, scope: !48)
!68 = !DILocation(line: 25, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !44, file: !1, line: 24, column: 7)
!70 = !DILocation(line: 28, column: 5, scope: !36)
!71 = !DILabel(scope: !32, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink_label_", file: !1, line: 29)
!72 = !DILocation(line: 29, column: 5, scope: !32)
!73 = !DILocation(line: 34, column: 3, scope: !32)
!74 = !DILabel(scope: !7, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad_label_", file: !1, line: 35)
!75 = !DILocation(line: 35, column: 3, scope: !7)
!76 = !DILocation(line: 40, column: 1, scope: !7)
