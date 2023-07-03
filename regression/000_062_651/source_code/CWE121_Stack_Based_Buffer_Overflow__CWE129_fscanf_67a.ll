; ModuleID = 'CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67a.c'
source_filename = "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType = type { i32 }

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad() #0 !dbg !7 {
entry:
  %data = alloca i32, align 4
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !10, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, metadata !13, metadata !DIExpression()), !dbg !19
  store i32 -1, i32* %data, align 4, !dbg !20
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !21
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !22
  %1 = load i32, i32* %data, align 4, !dbg !23
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, i32 0, i32 0, !dbg !24
  store i32 %1, i32* %structFirst, align 4, !dbg !25
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, i32 0, i32 0, !dbg !26
  %2 = load i32, i32* %coerce.dive, align 4, !dbg !26
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink(i32 %2), !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_badSink(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !28 {
entry:
  %data = alloca i32, align 4
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, metadata !31, metadata !DIExpression()), !dbg !32
  store i32 -1, i32* %data, align 4, !dbg !33
  store i32 7, i32* %data, align 4, !dbg !34
  %0 = load i32, i32* %data, align 4, !dbg !35
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, i32 0, i32 0, !dbg !36
  store i32 %0, i32* %structFirst, align 4, !dbg !37
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, i32 0, i32 0, !dbg !38
  %1 = load i32, i32* %coerce.dive, align 4, !dbg !38
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodG2BSink(i32 %1), !dbg !38
  ret void, !dbg !39
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodG2BSink(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !40 {
entry:
  %data = alloca i32, align 4
  %myStruct = alloca %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, align 4
  call void @llvm.dbg.declare(metadata i32* %data, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, metadata !43, metadata !DIExpression()), !dbg !44
  store i32 -1, i32* %data, align 4, !dbg !45
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !46
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %data), !dbg !47
  %1 = load i32, i32* %data, align 4, !dbg !48
  %structFirst = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, i32 0, i32 0, !dbg !49
  store i32 %1, i32* %structFirst, align 4, !dbg !50
  %coerce.dive = getelementptr inbounds %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType, %struct._CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType* %myStruct, i32 0, i32 0, !dbg !51
  %2 = load i32, i32* %coerce.dive, align 4, !dbg !51
  call void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink(i32 %2), !dbg !51
  ret void, !dbg !52
}

declare dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67b_goodB2GSink(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_good() #0 !dbg !53 {
entry:
  call void @goodG2B(), !dbg !54
  call void @goodB2G(), !dbg !55
  ret void, !dbg !56
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_651/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_bad", scope: !1, file: !1, line: 26, type: !8, scopeLine: 27, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 28, type: !11)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocation(line: 28, column: 9, scope: !7)
!13 = !DILocalVariable(name: "myStruct", scope: !7, file: !1, line: 29, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType", file: !15, line: 8, baseType: !16)
!15 = !DIFile(filename: "./_costom_header_.h", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_062_651/source_code")
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_structType", file: !15, line: 5, size: 32, elements: !17)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "structFirst", scope: !16, file: !15, line: 7, baseType: !11, size: 32)
!19 = !DILocation(line: 29, column: 69, scope: !7)
!20 = !DILocation(line: 31, column: 10, scope: !7)
!21 = !DILocation(line: 33, column: 12, scope: !7)
!22 = !DILocation(line: 33, column: 5, scope: !7)
!23 = !DILocation(line: 34, column: 28, scope: !7)
!24 = !DILocation(line: 34, column: 14, scope: !7)
!25 = !DILocation(line: 34, column: 26, scope: !7)
!26 = !DILocation(line: 35, column: 5, scope: !7)
!27 = !DILocation(line: 36, column: 1, scope: !7)
!28 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 44, type: !8, scopeLine: 45, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!29 = !DILocalVariable(name: "data", scope: !28, file: !1, line: 46, type: !11)
!30 = !DILocation(line: 46, column: 9, scope: !28)
!31 = !DILocalVariable(name: "myStruct", scope: !28, file: !1, line: 47, type: !14)
!32 = !DILocation(line: 47, column: 69, scope: !28)
!33 = !DILocation(line: 49, column: 10, scope: !28)
!34 = !DILocation(line: 52, column: 10, scope: !28)
!35 = !DILocation(line: 53, column: 28, scope: !28)
!36 = !DILocation(line: 53, column: 14, scope: !28)
!37 = !DILocation(line: 53, column: 26, scope: !28)
!38 = !DILocation(line: 54, column: 5, scope: !28)
!39 = !DILocation(line: 55, column: 1, scope: !28)
!40 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 59, type: !8, scopeLine: 60, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!41 = !DILocalVariable(name: "data", scope: !40, file: !1, line: 61, type: !11)
!42 = !DILocation(line: 61, column: 9, scope: !40)
!43 = !DILocalVariable(name: "myStruct", scope: !40, file: !1, line: 62, type: !14)
!44 = !DILocation(line: 62, column: 69, scope: !40)
!45 = !DILocation(line: 64, column: 10, scope: !40)
!46 = !DILocation(line: 66, column: 12, scope: !40)
!47 = !DILocation(line: 66, column: 5, scope: !40)
!48 = !DILocation(line: 67, column: 28, scope: !40)
!49 = !DILocation(line: 67, column: 14, scope: !40)
!50 = !DILocation(line: 67, column: 26, scope: !40)
!51 = !DILocation(line: 68, column: 5, scope: !40)
!52 = !DILocation(line: 69, column: 1, scope: !40)
!53 = distinct !DISubprogram(name: "CWE121_Stack_Based_Buffer_Overflow__CWE129_fscanf_67_good", scope: !1, file: !1, line: 71, type: !8, scopeLine: 72, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!54 = !DILocation(line: 73, column: 5, scope: !53)
!55 = !DILocation(line: 74, column: 5, scope: !53)
!56 = !DILocation(line: 75, column: 1, scope: !53)
