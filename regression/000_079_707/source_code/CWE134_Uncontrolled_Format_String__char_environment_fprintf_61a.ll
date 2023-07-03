; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_fprintf_61a.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad() #0 !dbg !7 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !10, metadata !DIExpression()), !dbg !13
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !14, metadata !DIExpression()), !dbg !18
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !18
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !18
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !19
  store i8* %arraydecay, i8** %data, align 8, !dbg !20
  %1 = load i8*, i8** %data, align 8, !dbg !21
  %call = call i8* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource(i8* %1), !dbg !22
  store i8* %call, i8** %data, align 8, !dbg !23
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !24
  %3 = load i8*, i8** %data, align 8, !dbg !25
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_badSource(i8*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !28 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !29, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !31, metadata !DIExpression()), !dbg !32
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !32
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !32
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !33
  store i8* %arraydecay, i8** %data, align 8, !dbg !34
  %1 = load i8*, i8** %data, align 8, !dbg !35
  %call = call i8* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodG2BSource(i8* %1), !dbg !36
  store i8* %call, i8** %data, align 8, !dbg !37
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !38
  %3 = load i8*, i8** %data, align 8, !dbg !39
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3), !dbg !40
  ret void, !dbg !41
}

declare dso_local i8* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodG2BSource(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !42 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !45, metadata !DIExpression()), !dbg !46
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !46
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !46
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !47
  store i8* %arraydecay, i8** %data, align 8, !dbg !48
  %1 = load i8*, i8** %data, align 8, !dbg !49
  %call = call i8* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource(i8* %1), !dbg !50
  store i8* %call, i8** %data, align 8, !dbg !51
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !52
  %3 = load i8*, i8** %data, align 8, !dbg !53
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %3), !dbg !54
  ret void, !dbg !55
}

declare dso_local i8* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61b_goodB2GSource(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_good() #0 !dbg !56 {
entry:
  call void @goodG2B(), !dbg !57
  call void @goodB2G(), !dbg !58
  ret void, !dbg !59
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_707/source_code")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_bad", scope: !1, file: !1, line: 37, type: !8, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocalVariable(name: "data", scope: !7, file: !1, line: 39, type: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DILocation(line: 39, column: 12, scope: !7)
!14 = !DILocalVariable(name: "dataBuffer", scope: !7, file: !1, line: 40, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 800, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 100)
!18 = !DILocation(line: 40, column: 10, scope: !7)
!19 = !DILocation(line: 41, column: 12, scope: !7)
!20 = !DILocation(line: 41, column: 10, scope: !7)
!21 = !DILocation(line: 42, column: 86, scope: !7)
!22 = !DILocation(line: 42, column: 12, scope: !7)
!23 = !DILocation(line: 42, column: 10, scope: !7)
!24 = !DILocation(line: 44, column: 13, scope: !7)
!25 = !DILocation(line: 44, column: 21, scope: !7)
!26 = !DILocation(line: 44, column: 5, scope: !7)
!27 = !DILocation(line: 45, column: 1, scope: !7)
!28 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 53, type: !8, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!29 = !DILocalVariable(name: "data", scope: !28, file: !1, line: 55, type: !11)
!30 = !DILocation(line: 55, column: 12, scope: !28)
!31 = !DILocalVariable(name: "dataBuffer", scope: !28, file: !1, line: 56, type: !15)
!32 = !DILocation(line: 56, column: 10, scope: !28)
!33 = !DILocation(line: 57, column: 12, scope: !28)
!34 = !DILocation(line: 57, column: 10, scope: !28)
!35 = !DILocation(line: 58, column: 90, scope: !28)
!36 = !DILocation(line: 58, column: 12, scope: !28)
!37 = !DILocation(line: 58, column: 10, scope: !28)
!38 = !DILocation(line: 60, column: 13, scope: !28)
!39 = !DILocation(line: 60, column: 21, scope: !28)
!40 = !DILocation(line: 60, column: 5, scope: !28)
!41 = !DILocation(line: 61, column: 1, scope: !28)
!42 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 65, type: !8, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!43 = !DILocalVariable(name: "data", scope: !42, file: !1, line: 67, type: !11)
!44 = !DILocation(line: 67, column: 12, scope: !42)
!45 = !DILocalVariable(name: "dataBuffer", scope: !42, file: !1, line: 68, type: !15)
!46 = !DILocation(line: 68, column: 10, scope: !42)
!47 = !DILocation(line: 69, column: 12, scope: !42)
!48 = !DILocation(line: 69, column: 10, scope: !42)
!49 = !DILocation(line: 70, column: 90, scope: !42)
!50 = !DILocation(line: 70, column: 12, scope: !42)
!51 = !DILocation(line: 70, column: 10, scope: !42)
!52 = !DILocation(line: 72, column: 13, scope: !42)
!53 = !DILocation(line: 72, column: 29, scope: !42)
!54 = !DILocation(line: 72, column: 5, scope: !42)
!55 = !DILocation(line: 73, column: 1, scope: !42)
!56 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_61_good", scope: !1, file: !1, line: 75, type: !8, scopeLine: 76, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!57 = !DILocation(line: 77, column: 5, scope: !56)
!58 = !DILocation(line: 78, column: 5, scope: !56)
!59 = !DILocation(line: 79, column: 1, scope: !56)
