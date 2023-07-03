; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_15152CWE134_Uncontrolled_Format_String__char_console_printf_15210_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_15152CWE134_Uncontrolled_Format_String__char_console_printf_15210_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_15152CWE134_Uncontrolled_Format_String__char_console_printf_15210_1(i8* %_goodB2G2_data_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G2_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodG2B1_data_0 = alloca i8*, align 8
  %_goodG2B1_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_goodB2G2_data_0, i8** %_goodB2G2_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G2_data_0.addr, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !29, metadata !DIExpression()), !dbg !34
  %1 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !35
  %call = call i64 @strlen(i8* %1) #6, !dbg !36
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !34
  %2 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !37
  %sub = sub i64 100, %2, !dbg !39
  %cmp = icmp ugt i64 %sub, 1, !dbg !40
  br i1 %cmp, label %if.then, label %if.end18, !dbg !41

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !42
  %4 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !45
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !46
  %5 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !47
  %sub1 = sub i64 100, %5, !dbg !48
  %conv = trunc i64 %sub1 to i32, !dbg !49
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !50
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !51
  %cmp3 = icmp ne i8* %call2, null, !dbg !52
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !53

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !54
  %call6 = call i64 @strlen(i8* %7) #6, !dbg !56
  store i64 %call6, i64* %_goodB2G2_dataLen_0, align 8, !dbg !57
  %8 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !58
  %cmp7 = icmp ugt i64 %8, 0, !dbg !60
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !61

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !62
  %10 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !63
  %sub9 = sub i64 %10, 1, !dbg !64
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !62
  %11 = load i8, i8* %arrayidx, align 1, !dbg !62
  %conv10 = sext i8 %11 to i32, !dbg !62
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !65
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !66

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !67
  %13 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !69
  %sub14 = sub i64 %13, 1, !dbg !70
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !67
  store i8 0, i8* %arrayidx15, align 1, !dbg !71
  br label %if.end, !dbg !72

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !73

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !74
  %14 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !76
  %15 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !77
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !76
  store i8 0, i8* %arrayidx16, align 1, !dbg !78
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !79

if.end18:                                         ; preds = %if.end17, %entry
  %16 = load i8*, i8** %_goodB2G2_data_0.addr, align 8, !dbg !80
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %16), !dbg !81
  br label %goodB2G2_label_, !dbg !81

goodB2G2_label_:                                  ; preds = %if.end18
  call void @llvm.dbg.label(metadata !82), !dbg !83
  call void @llvm.dbg.declare(metadata i8** %_goodG2B1_data_0, metadata !84, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B1_dataBuffer_0, metadata !87, metadata !DIExpression()), !dbg !88
  %17 = bitcast [100 x i8]* %_goodG2B1_dataBuffer_0 to i8*, !dbg !88
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 100, i1 false), !dbg !88
  %arraydecay20 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B1_dataBuffer_0, i64 0, i64 0, !dbg !89
  store i8* %arraydecay20, i8** %_goodG2B1_data_0, align 8, !dbg !90
  %18 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !91
  %call21 = call i8* @strcpy(i8* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !92
  %19 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !93
  %20 = load i8*, i8** %_goodG2B1_data_0, align 8, !dbg !94
  call void %19(i8* %20), !dbg !93
  br label %goodG2B1_label_, !dbg !93

goodG2B1_label_:                                  ; preds = %goodB2G2_label_
  call void @llvm.dbg.label(metadata !95), !dbg !96
  br label %CWE134_Uncontrolled_Format_String__char_console_printf_15_good_label_, !dbg !97

CWE134_Uncontrolled_Format_String__char_console_printf_15_good_label_: ; preds = %goodG2B1_label_
  call void @llvm.dbg.label(metadata !98), !dbg !99
  ret void, !dbg !100
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_15152CWE134_Uncontrolled_Format_String__char_console_printf_15210_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_448/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_15152CWE134_Uncontrolled_Format_String__char_console_printf_15210_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_goodB2G2_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 135, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 160, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !22, file: !1, line: 6, type: !23)
!22 = distinct !DILexicalBlock(scope: !9, file: !1, line: 5, column: 3)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 6, column: 10, scope: !22)
!27 = !DILocation(line: 7, column: 24, scope: !22)
!28 = !DILocation(line: 7, column: 22, scope: !22)
!29 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !30, file: !1, line: 12, type: !31)
!30 = distinct !DILexicalBlock(scope: !22, file: !1, line: 11, column: 7)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 12, column: 16, scope: !30)
!35 = !DILocation(line: 12, column: 45, scope: !30)
!36 = !DILocation(line: 12, column: 38, scope: !30)
!37 = !DILocation(line: 13, column: 20, scope: !38)
!38 = distinct !DILexicalBlock(scope: !30, file: !1, line: 13, column: 13)
!39 = !DILocation(line: 13, column: 18, scope: !38)
!40 = !DILocation(line: 13, column: 41, scope: !38)
!41 = !DILocation(line: 13, column: 13, scope: !30)
!42 = !DILocation(line: 15, column: 21, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 15, column: 15)
!44 = distinct !DILexicalBlock(scope: !38, file: !1, line: 14, column: 9)
!45 = !DILocation(line: 15, column: 40, scope: !43)
!46 = !DILocation(line: 15, column: 38, scope: !43)
!47 = !DILocation(line: 15, column: 74, scope: !43)
!48 = !DILocation(line: 15, column: 72, scope: !43)
!49 = !DILocation(line: 15, column: 61, scope: !43)
!50 = !DILocation(line: 15, column: 96, scope: !43)
!51 = !DILocation(line: 15, column: 15, scope: !43)
!52 = !DILocation(line: 15, column: 103, scope: !43)
!53 = !DILocation(line: 15, column: 15, scope: !44)
!54 = !DILocation(line: 17, column: 42, scope: !55)
!55 = distinct !DILexicalBlock(scope: !43, file: !1, line: 16, column: 11)
!56 = !DILocation(line: 17, column: 35, scope: !55)
!57 = !DILocation(line: 17, column: 33, scope: !55)
!58 = !DILocation(line: 18, column: 18, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !1, line: 18, column: 17)
!60 = !DILocation(line: 18, column: 38, scope: !59)
!61 = !DILocation(line: 18, column: 43, scope: !59)
!62 = !DILocation(line: 18, column: 47, scope: !59)
!63 = !DILocation(line: 18, column: 64, scope: !59)
!64 = !DILocation(line: 18, column: 84, scope: !59)
!65 = !DILocation(line: 18, column: 89, scope: !59)
!66 = !DILocation(line: 18, column: 17, scope: !55)
!67 = !DILocation(line: 20, column: 15, scope: !68)
!68 = distinct !DILexicalBlock(scope: !59, file: !1, line: 19, column: 13)
!69 = !DILocation(line: 20, column: 32, scope: !68)
!70 = !DILocation(line: 20, column: 52, scope: !68)
!71 = !DILocation(line: 20, column: 57, scope: !68)
!72 = !DILocation(line: 21, column: 13, scope: !68)
!73 = !DILocation(line: 23, column: 11, scope: !55)
!74 = !DILocation(line: 26, column: 13, scope: !75)
!75 = distinct !DILexicalBlock(scope: !43, file: !1, line: 25, column: 11)
!76 = !DILocation(line: 27, column: 13, scope: !75)
!77 = !DILocation(line: 27, column: 30, scope: !75)
!78 = !DILocation(line: 27, column: 51, scope: !75)
!79 = !DILocation(line: 30, column: 9, scope: !44)
!80 = !DILocation(line: 44, column: 24, scope: !22)
!81 = !DILocation(line: 44, column: 9, scope: !22)
!82 = !DILabel(scope: !22, name: "goodB2G2_label_", file: !1, line: 53)
!83 = !DILocation(line: 53, column: 5, scope: !22)
!84 = !DILocalVariable(name: "_goodG2B1_data_0", scope: !85, file: !1, line: 60, type: !12)
!85 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 3)
!86 = !DILocation(line: 60, column: 11, scope: !85)
!87 = !DILocalVariable(name: "_goodG2B1_dataBuffer_0", scope: !85, file: !1, line: 61, type: !23)
!88 = !DILocation(line: 61, column: 10, scope: !85)
!89 = !DILocation(line: 62, column: 24, scope: !85)
!90 = !DILocation(line: 62, column: 22, scope: !85)
!91 = !DILocation(line: 70, column: 16, scope: !85)
!92 = !DILocation(line: 70, column: 9, scope: !85)
!93 = !DILocation(line: 78, column: 9, scope: !85)
!94 = !DILocation(line: 78, column: 16, scope: !85)
!95 = !DILabel(scope: !85, name: "goodG2B1_label_", file: !1, line: 87)
!96 = !DILocation(line: 87, column: 5, scope: !85)
!97 = !DILocation(line: 92, column: 3, scope: !85)
!98 = !DILabel(scope: !9, name: "CWE134_Uncontrolled_Format_String__char_console_printf_15_good_label_", file: !1, line: 93)
!99 = !DILocation(line: 93, column: 3, scope: !9)
!100 = !DILocation(line: 98, column: 1, scope: !9)
