; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_0447CWE134_Uncontrolled_Format_String__char_console_printf_0469_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_0447CWE134_Uncontrolled_Format_String__char_console_printf_0469_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@STATIC_CONST_TRUE = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_0447CWE134_Uncontrolled_Format_String__char_console_printf_0469_1(i8* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_data_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataBuffer_0 = alloca [100 x i8], align 16
  %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataLen_0 = alloca i64, align 8
  store i8* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_data_0, i8** %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_data_0.addr, align 8, !dbg !27
  %1 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !28
  %tobool = icmp ne i32 %1, 0, !dbg !28
  br i1 %tobool, label %if.then, label %if.end20, !dbg !30

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataLen_0, metadata !31, metadata !DIExpression()), !dbg !37
  %2 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_data_0.addr, align 8, !dbg !38
  %call = call i64 @strlen(i8* %2) #5, !dbg !39
  store i64 %call, i64* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataLen_0, align 8, !dbg !37
  %3 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataLen_0, align 8, !dbg !40
  %sub = sub i64 100, %3, !dbg !42
  %cmp = icmp ugt i64 %sub, 1, !dbg !43
  br i1 %cmp, label %if.then1, label %if.end19, !dbg !44

if.then1:                                         ; preds = %if.then
  %4 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_data_0.addr, align 8, !dbg !45
  %5 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataLen_0, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !49
  %6 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataLen_0, align 8, !dbg !50
  %sub2 = sub i64 100, %6, !dbg !51
  %conv = trunc i64 %sub2 to i32, !dbg !52
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !53
  %call3 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %7), !dbg !54
  %cmp4 = icmp ne i8* %call3, null, !dbg !55
  br i1 %cmp4, label %if.then6, label %if.else, !dbg !56

if.then6:                                         ; preds = %if.then1
  %8 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_data_0.addr, align 8, !dbg !57
  %call7 = call i64 @strlen(i8* %8) #5, !dbg !59
  store i64 %call7, i64* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataLen_0, align 8, !dbg !60
  %9 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataLen_0, align 8, !dbg !61
  %cmp8 = icmp ugt i64 %9, 0, !dbg !63
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !64

land.lhs.true:                                    ; preds = %if.then6
  %10 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_data_0.addr, align 8, !dbg !65
  %11 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataLen_0, align 8, !dbg !66
  %sub10 = sub i64 %11, 1, !dbg !67
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %sub10, !dbg !65
  %12 = load i8, i8* %arrayidx, align 1, !dbg !65
  %conv11 = sext i8 %12 to i32, !dbg !65
  %cmp12 = icmp eq i32 %conv11, 10, !dbg !68
  br i1 %cmp12, label %if.then14, label %if.end, !dbg !69

if.then14:                                        ; preds = %land.lhs.true
  %13 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_data_0.addr, align 8, !dbg !70
  %14 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataLen_0, align 8, !dbg !72
  %sub15 = sub i64 %14, 1, !dbg !73
  %arrayidx16 = getelementptr inbounds i8, i8* %13, i64 %sub15, !dbg !70
  store i8 0, i8* %arrayidx16, align 1, !dbg !74
  br label %if.end, !dbg !75

if.end:                                           ; preds = %if.then14, %land.lhs.true, %if.then6
  br label %if.end18, !dbg !76

if.else:                                          ; preds = %if.then1
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !77
  %15 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_data_0.addr, align 8, !dbg !79
  %16 = load i64, i64* %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataLen_0, align 8, !dbg !80
  %arrayidx17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !79
  store i8 0, i8* %arrayidx17, align 1, !dbg !81
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end
  br label %if.end19, !dbg !82

if.end19:                                         ; preds = %if.end18, %if.then
  br label %if.end20, !dbg !83

if.end20:                                         ; preds = %if.end19, %entry
  %17 = load i32, i32* @STATIC_CONST_TRUE, align 4, !dbg !84
  %tobool21 = icmp ne i32 %17, 0, !dbg !84
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !86

if.then22:                                        ; preds = %if.end20
  %18 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !87
  %19 = load i8*, i8** %_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_data_0.addr, align 8, !dbg !89
  call void %18(i8* %19), !dbg !87
  br label %if.end23, !dbg !90

if.end23:                                         ; preds = %if.then22, %if.end20
  br label %CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_label_, !dbg !84

CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_label_: ; preds = %if.end23
  call void @llvm.dbg.label(metadata !91), !dbg !92
  ret void, !dbg !93
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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_0447CWE134_Uncontrolled_Format_String__char_console_printf_0469_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_437/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_0447CWE134_Uncontrolled_Format_String__char_console_printf_0469_1", scope: !1, file: !1, line: 4, type: !10, scopeLine: 5, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_data_0", arg: 1, scope: !9, file: !1, line: 4, type: !12)
!18 = !DILocation(line: 4, column: 133, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 4, type: !14)
!20 = !DILocation(line: 4, column: 211, scope: !9)
!21 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataBuffer_0", scope: !9, file: !1, line: 6, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 6, column: 8, scope: !9)
!26 = !DILocation(line: 7, column: 75, scope: !9)
!27 = !DILocation(line: 7, column: 73, scope: !9)
!28 = !DILocation(line: 8, column: 7, scope: !29)
!29 = distinct !DILexicalBlock(scope: !9, file: !1, line: 8, column: 7)
!30 = !DILocation(line: 8, column: 7, scope: !9)
!31 = !DILocalVariable(name: "_CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_dataLen_0", scope: !32, file: !1, line: 11, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 10, column: 5)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 9, column: 3)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 11, column: 14, scope: !32)
!38 = !DILocation(line: 11, column: 96, scope: !32)
!39 = !DILocation(line: 11, column: 89, scope: !32)
!40 = !DILocation(line: 12, column: 18, scope: !41)
!41 = distinct !DILexicalBlock(scope: !32, file: !1, line: 12, column: 11)
!42 = !DILocation(line: 12, column: 16, scope: !41)
!43 = !DILocation(line: 12, column: 92, scope: !41)
!44 = !DILocation(line: 12, column: 11, scope: !32)
!45 = !DILocation(line: 14, column: 19, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 14, column: 13)
!47 = distinct !DILexicalBlock(scope: !41, file: !1, line: 13, column: 7)
!48 = !DILocation(line: 14, column: 91, scope: !46)
!49 = !DILocation(line: 14, column: 89, scope: !46)
!50 = !DILocation(line: 14, column: 178, scope: !46)
!51 = !DILocation(line: 14, column: 176, scope: !46)
!52 = !DILocation(line: 14, column: 165, scope: !46)
!53 = !DILocation(line: 14, column: 253, scope: !46)
!54 = !DILocation(line: 14, column: 13, scope: !46)
!55 = !DILocation(line: 14, column: 260, scope: !46)
!56 = !DILocation(line: 14, column: 13, scope: !47)
!57 = !DILocation(line: 16, column: 93, scope: !58)
!58 = distinct !DILexicalBlock(scope: !46, file: !1, line: 15, column: 9)
!59 = !DILocation(line: 16, column: 86, scope: !58)
!60 = !DILocation(line: 16, column: 84, scope: !58)
!61 = !DILocation(line: 17, column: 16, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 17, column: 15)
!63 = !DILocation(line: 17, column: 89, scope: !62)
!64 = !DILocation(line: 17, column: 94, scope: !62)
!65 = !DILocation(line: 17, column: 98, scope: !62)
!66 = !DILocation(line: 17, column: 168, scope: !62)
!67 = !DILocation(line: 17, column: 241, scope: !62)
!68 = !DILocation(line: 17, column: 246, scope: !62)
!69 = !DILocation(line: 17, column: 15, scope: !58)
!70 = !DILocation(line: 19, column: 13, scope: !71)
!71 = distinct !DILexicalBlock(scope: !62, file: !1, line: 18, column: 11)
!72 = !DILocation(line: 19, column: 83, scope: !71)
!73 = !DILocation(line: 19, column: 156, scope: !71)
!74 = !DILocation(line: 19, column: 161, scope: !71)
!75 = !DILocation(line: 20, column: 11, scope: !71)
!76 = !DILocation(line: 22, column: 9, scope: !58)
!77 = !DILocation(line: 25, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !46, file: !1, line: 24, column: 9)
!79 = !DILocation(line: 26, column: 11, scope: !78)
!80 = !DILocation(line: 26, column: 81, scope: !78)
!81 = !DILocation(line: 26, column: 155, scope: !78)
!82 = !DILocation(line: 29, column: 7, scope: !47)
!83 = !DILocation(line: 32, column: 3, scope: !33)
!84 = !DILocation(line: 34, column: 7, scope: !85)
!85 = distinct !DILexicalBlock(scope: !9, file: !1, line: 34, column: 7)
!86 = !DILocation(line: 34, column: 7, scope: !9)
!87 = !DILocation(line: 36, column: 5, scope: !88)
!88 = distinct !DILexicalBlock(scope: !85, file: !1, line: 35, column: 3)
!89 = !DILocation(line: 36, column: 12, scope: !88)
!90 = !DILocation(line: 37, column: 3, scope: !88)
!91 = !DILabel(scope: !9, name: "CWE134_Uncontrolled_Format_String__char_console_printf_04_bad_label_", file: !1, line: 39)
!92 = !DILocation(line: 39, column: 3, scope: !9)
!93 = !DILocation(line: 44, column: 1, scope: !9)
