; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_fprintf_61b78CWE134_Uncontrolled_Format_String__char_console_fprintf_61a64_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_fprintf_61b78CWE134_Uncontrolled_Format_String__char_console_fprintf_61a64_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_fprintf_61b78CWE134_Uncontrolled_Format_String__char_console_fprintf_61a64_1(i8* %_goodB2G_data_0, i8** %CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_return_, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_return_.addr = alloca i8**, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_dataLen_0 = alloca i64, align 8
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !18, metadata !DIExpression()), !dbg !19
  store i8** %CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_return_, i8*** %CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_return_.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_return_.addr, metadata !20, metadata !DIExpression()), !dbg !21
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !24, metadata !DIExpression()), !dbg !28
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !28
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !28
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !29
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !30
  call void @llvm.dbg.declare(metadata i64* %_CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_dataLen_0, metadata !31, metadata !DIExpression()), !dbg !37
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !38
  %call = call i64 @strlen(i8* %1) #5, !dbg !39
  store i64 %call, i64* %_CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_dataLen_0, align 8, !dbg !37
  %2 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_dataLen_0, align 8, !dbg !40
  %sub = sub i64 100, %2, !dbg !42
  %cmp = icmp ugt i64 %sub, 1, !dbg !43
  br i1 %cmp, label %if.then, label %if.end18, !dbg !44

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !45
  %4 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_dataLen_0, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !49
  %5 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_dataLen_0, align 8, !dbg !50
  %sub1 = sub i64 100, %5, !dbg !51
  %conv = trunc i64 %sub1 to i32, !dbg !52
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !53
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !54
  %cmp3 = icmp ne i8* %call2, null, !dbg !55
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !56

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !57
  %call6 = call i64 @strlen(i8* %7) #5, !dbg !59
  store i64 %call6, i64* %_CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_dataLen_0, align 8, !dbg !60
  %8 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_dataLen_0, align 8, !dbg !61
  %cmp7 = icmp ugt i64 %8, 0, !dbg !63
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !64

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !65
  %10 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_dataLen_0, align 8, !dbg !66
  %sub9 = sub i64 %10, 1, !dbg !67
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !65
  %11 = load i8, i8* %arrayidx, align 1, !dbg !65
  %conv10 = sext i8 %11 to i32, !dbg !65
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !68
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !69

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !70
  %13 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_dataLen_0, align 8, !dbg !72
  %sub14 = sub i64 %13, 1, !dbg !73
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !70
  store i8 0, i8* %arrayidx15, align 1, !dbg !74
  br label %if.end, !dbg !75

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !76

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !77
  %14 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !79
  %15 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_dataLen_0, align 8, !dbg !80
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !79
  store i8 0, i8* %arrayidx16, align 1, !dbg !81
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !82

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !83
  %17 = bitcast i8* %16 to i8**, !dbg !83
  store i8** %17, i8*** %CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_return_.addr, align 8, !dbg !84
  br label %CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_label_, !dbg !85

CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_label_: ; preds = %if.end18
  call void @llvm.dbg.label(metadata !86), !dbg !87
  %18 = load i8**, i8*** %CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_return_.addr, align 8, !dbg !88
  %19 = bitcast i8** %18 to i8*, !dbg !88
  store i8* %19, i8** %_goodB2G_data_0.addr, align 8, !dbg !89
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !90
  %21 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !91
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %21), !dbg !92
  %22 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !93
  %23 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !94
  call void %22(i8* %23), !dbg !93
  ret void, !dbg !95
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_fprintf_61b78CWE134_Uncontrolled_Format_String__char_console_fprintf_61a64_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_419/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_61b78CWE134_Uncontrolled_Format_String__char_console_fprintf_61a64_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14, !15}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !12}
!18 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!19 = !DILocation(line: 3, column: 137, scope: !9)
!20 = !DILocalVariable(name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_return_", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!21 = !DILocation(line: 3, column: 162, scope: !9)
!22 = !DILocalVariable(name: "opsink", arg: 3, scope: !9, file: !1, line: 3, type: !15)
!23 = !DILocation(line: 3, column: 252, scope: !9)
!24 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !9, file: !1, line: 5, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 100)
!28 = !DILocation(line: 5, column: 8, scope: !9)
!29 = !DILocation(line: 6, column: 21, scope: !9)
!30 = !DILocation(line: 6, column: 19, scope: !9)
!31 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_dataLen_0", scope: !32, file: !1, line: 9, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 8, column: 5)
!33 = distinct !DILexicalBlock(scope: !9, file: !1, line: 7, column: 3)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 9, column: 14, scope: !32)
!38 = !DILocation(line: 9, column: 108, scope: !32)
!39 = !DILocation(line: 9, column: 101, scope: !32)
!40 = !DILocation(line: 10, column: 18, scope: !41)
!41 = distinct !DILexicalBlock(scope: !32, file: !1, line: 10, column: 11)
!42 = !DILocation(line: 10, column: 16, scope: !41)
!43 = !DILocation(line: 10, column: 104, scope: !41)
!44 = !DILocation(line: 10, column: 11, scope: !32)
!45 = !DILocation(line: 12, column: 19, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 12, column: 13)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 11, column: 7)
!48 = !DILocation(line: 12, column: 37, scope: !46)
!49 = !DILocation(line: 12, column: 35, scope: !46)
!50 = !DILocation(line: 12, column: 136, scope: !46)
!51 = !DILocation(line: 12, column: 134, scope: !46)
!52 = !DILocation(line: 12, column: 123, scope: !46)
!53 = !DILocation(line: 12, column: 223, scope: !46)
!54 = !DILocation(line: 12, column: 13, scope: !46)
!55 = !DILocation(line: 12, column: 230, scope: !46)
!56 = !DILocation(line: 12, column: 13, scope: !47)
!57 = !DILocation(line: 14, column: 105, scope: !58)
!58 = distinct !DILexicalBlock(scope: !46, file: !1, line: 13, column: 9)
!59 = !DILocation(line: 14, column: 98, scope: !58)
!60 = !DILocation(line: 14, column: 96, scope: !58)
!61 = !DILocation(line: 15, column: 16, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 15, column: 15)
!63 = !DILocation(line: 15, column: 101, scope: !62)
!64 = !DILocation(line: 15, column: 106, scope: !62)
!65 = !DILocation(line: 15, column: 110, scope: !62)
!66 = !DILocation(line: 15, column: 126, scope: !62)
!67 = !DILocation(line: 15, column: 211, scope: !62)
!68 = !DILocation(line: 15, column: 216, scope: !62)
!69 = !DILocation(line: 15, column: 15, scope: !58)
!70 = !DILocation(line: 17, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !62, file: !1, line: 16, column: 11)
!72 = !DILocation(line: 17, column: 29, scope: !71)
!73 = !DILocation(line: 17, column: 114, scope: !71)
!74 = !DILocation(line: 17, column: 119, scope: !71)
!75 = !DILocation(line: 18, column: 11, scope: !71)
!76 = !DILocation(line: 20, column: 9, scope: !58)
!77 = !DILocation(line: 23, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !46, file: !1, line: 22, column: 9)
!79 = !DILocation(line: 24, column: 11, scope: !78)
!80 = !DILocation(line: 24, column: 27, scope: !78)
!81 = !DILocation(line: 24, column: 113, scope: !78)
!82 = !DILocation(line: 27, column: 7, scope: !47)
!83 = !DILocation(line: 30, column: 89, scope: !33)
!84 = !DILocation(line: 30, column: 87, scope: !33)
!85 = !DILocation(line: 31, column: 5, scope: !33)
!86 = !DILabel(scope: !33, name: "CWE134_Uncontrolled_Format_String__char_console_fprintf_61b_goodB2GSource_label_", file: !1, line: 32)
!87 = !DILocation(line: 32, column: 5, scope: !33)
!88 = !DILocation(line: 38, column: 21, scope: !9)
!89 = !DILocation(line: 38, column: 19, scope: !9)
!90 = !DILocation(line: 39, column: 11, scope: !9)
!91 = !DILocation(line: 39, column: 27, scope: !9)
!92 = !DILocation(line: 39, column: 3, scope: !9)
!93 = !DILocation(line: 40, column: 3, scope: !9)
!94 = !DILocation(line: 40, column: 10, scope: !9)
!95 = !DILocation(line: 41, column: 1, scope: !9)
