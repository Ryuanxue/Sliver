; ModuleID = 'CWE134_Uncontrolled_Format_String__char_console_printf_1884CWE134_Uncontrolled_Format_String__char_console_printf_18105_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_console_printf_1884CWE134_Uncontrolled_Format_String__char_console_printf_18105_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_printf_1884CWE134_Uncontrolled_Format_String__char_console_printf_18105_1(i8* %_goodB2G_data_0, void (i8*)* %opsink) #0 !dbg !9 {
entry:
  %_goodB2G_data_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  store i8* %_goodB2G_data_0, i8** %_goodB2G_data_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0.addr, metadata !17, metadata !DIExpression()), !dbg !18
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_goodB2G_data_0.addr, align 8, !dbg !27
  br label %goodB2G_source, !dbg !28

goodB2G_source:                                   ; preds = %entry
  call void @llvm.dbg.label(metadata !29), !dbg !30
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !31, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !37
  %call = call i64 @strlen(i8* %1) #5, !dbg !38
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !36
  %2 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !39
  %sub = sub i64 100, %2, !dbg !41
  %cmp = icmp ugt i64 %sub, 1, !dbg !42
  br i1 %cmp, label %if.then, label %if.end18, !dbg !43

if.then:                                          ; preds = %goodB2G_source
  %3 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !44
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !47
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !48
  %5 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !49
  %sub1 = sub i64 100, %5, !dbg !50
  %conv = trunc i64 %sub1 to i32, !dbg !51
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !52
  %call2 = call i8* @fgets(i8* %add.ptr, i32 %conv, %struct._IO_FILE* %6), !dbg !53
  %cmp3 = icmp ne i8* %call2, null, !dbg !54
  br i1 %cmp3, label %if.then5, label %if.else, !dbg !55

if.then5:                                         ; preds = %if.then
  %7 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !56
  %call6 = call i64 @strlen(i8* %7) #5, !dbg !58
  store i64 %call6, i64* %_goodB2G_dataLen_0, align 8, !dbg !59
  %8 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !60
  %cmp7 = icmp ugt i64 %8, 0, !dbg !62
  br i1 %cmp7, label %land.lhs.true, label %if.end, !dbg !63

land.lhs.true:                                    ; preds = %if.then5
  %9 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !64
  %10 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !65
  %sub9 = sub i64 %10, 1, !dbg !66
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 %sub9, !dbg !64
  %11 = load i8, i8* %arrayidx, align 1, !dbg !64
  %conv10 = sext i8 %11 to i32, !dbg !64
  %cmp11 = icmp eq i32 %conv10, 10, !dbg !67
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !68

if.then13:                                        ; preds = %land.lhs.true
  %12 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !69
  %13 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !71
  %sub14 = sub i64 %13, 1, !dbg !72
  %arrayidx15 = getelementptr inbounds i8, i8* %12, i64 %sub14, !dbg !69
  store i8 0, i8* %arrayidx15, align 1, !dbg !73
  br label %if.end, !dbg !74

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.then5
  br label %if.end17, !dbg !75

if.else:                                          ; preds = %if.then
  call void @printLine(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !76
  %14 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !78
  %15 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !79
  %arrayidx16 = getelementptr inbounds i8, i8* %14, i64 %15, !dbg !78
  store i8 0, i8* %arrayidx16, align 1, !dbg !80
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.end
  br label %if.end18, !dbg !81

if.end18:                                         ; preds = %if.end17, %goodB2G_source
  br label %goodB2G_sink, !dbg !82

goodB2G_sink:                                     ; preds = %if.end18
  call void @llvm.dbg.label(metadata !83), !dbg !84
  %16 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !85
  %17 = load i8*, i8** %_goodB2G_data_0.addr, align 8, !dbg !87
  call void %16(i8* %17), !dbg !85
  br label %goodB2G_label_, !dbg !88

goodB2G_label_:                                   ; preds = %goodB2G_sink
  call void @llvm.dbg.label(metadata !89), !dbg !90
  ret void, !dbg !91
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #4

declare dso_local void @printLine(i8*) #4

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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_console_printf_1884CWE134_Uncontrolled_Format_String__char_console_printf_18105_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_451/code_gened")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_console_printf_1884CWE134_Uncontrolled_Format_String__char_console_printf_18105_1", scope: !1, file: !1, line: 3, type: !10, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !14}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !12}
!17 = !DILocalVariable(name: "_goodB2G_data_0", arg: 1, scope: !9, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 134, scope: !9)
!19 = !DILocalVariable(name: "opsink", arg: 2, scope: !9, file: !1, line: 3, type: !14)
!20 = !DILocation(line: 3, column: 158, scope: !9)
!21 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !9, file: !1, line: 5, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 5, column: 8, scope: !9)
!26 = !DILocation(line: 6, column: 21, scope: !9)
!27 = !DILocation(line: 6, column: 19, scope: !9)
!28 = !DILocation(line: 6, column: 3, scope: !9)
!29 = !DILabel(scope: !9, name: "goodB2G_source", file: !1, line: 7)
!30 = !DILocation(line: 7, column: 3, scope: !9)
!31 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !32, file: !1, line: 9, type: !33)
!32 = distinct !DILexicalBlock(scope: !9, file: !1, line: 8, column: 3)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 9, column: 12, scope: !32)
!37 = !DILocation(line: 9, column: 40, scope: !32)
!38 = !DILocation(line: 9, column: 33, scope: !32)
!39 = !DILocation(line: 10, column: 16, scope: !40)
!40 = distinct !DILexicalBlock(scope: !32, file: !1, line: 10, column: 9)
!41 = !DILocation(line: 10, column: 14, scope: !40)
!42 = !DILocation(line: 10, column: 36, scope: !40)
!43 = !DILocation(line: 10, column: 9, scope: !32)
!44 = !DILocation(line: 12, column: 17, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 12, column: 11)
!46 = distinct !DILexicalBlock(scope: !40, file: !1, line: 11, column: 5)
!47 = !DILocation(line: 12, column: 35, scope: !45)
!48 = !DILocation(line: 12, column: 33, scope: !45)
!49 = !DILocation(line: 12, column: 68, scope: !45)
!50 = !DILocation(line: 12, column: 66, scope: !45)
!51 = !DILocation(line: 12, column: 55, scope: !45)
!52 = !DILocation(line: 12, column: 89, scope: !45)
!53 = !DILocation(line: 12, column: 11, scope: !45)
!54 = !DILocation(line: 12, column: 96, scope: !45)
!55 = !DILocation(line: 12, column: 11, scope: !46)
!56 = !DILocation(line: 14, column: 37, scope: !57)
!57 = distinct !DILexicalBlock(scope: !45, file: !1, line: 13, column: 7)
!58 = !DILocation(line: 14, column: 30, scope: !57)
!59 = !DILocation(line: 14, column: 28, scope: !57)
!60 = !DILocation(line: 15, column: 14, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 15, column: 13)
!62 = !DILocation(line: 15, column: 33, scope: !61)
!63 = !DILocation(line: 15, column: 38, scope: !61)
!64 = !DILocation(line: 15, column: 42, scope: !61)
!65 = !DILocation(line: 15, column: 58, scope: !61)
!66 = !DILocation(line: 15, column: 77, scope: !61)
!67 = !DILocation(line: 15, column: 82, scope: !61)
!68 = !DILocation(line: 15, column: 13, scope: !57)
!69 = !DILocation(line: 17, column: 11, scope: !70)
!70 = distinct !DILexicalBlock(scope: !61, file: !1, line: 16, column: 9)
!71 = !DILocation(line: 17, column: 27, scope: !70)
!72 = !DILocation(line: 17, column: 46, scope: !70)
!73 = !DILocation(line: 17, column: 51, scope: !70)
!74 = !DILocation(line: 18, column: 9, scope: !70)
!75 = !DILocation(line: 20, column: 7, scope: !57)
!76 = !DILocation(line: 23, column: 9, scope: !77)
!77 = distinct !DILexicalBlock(scope: !45, file: !1, line: 22, column: 7)
!78 = !DILocation(line: 24, column: 9, scope: !77)
!79 = !DILocation(line: 24, column: 25, scope: !77)
!80 = !DILocation(line: 24, column: 45, scope: !77)
!81 = !DILocation(line: 27, column: 5, scope: !46)
!82 = !DILocation(line: 31, column: 3, scope: !9)
!83 = !DILabel(scope: !9, name: "goodB2G_sink", file: !1, line: 32)
!84 = !DILocation(line: 32, column: 3, scope: !9)
!85 = !DILocation(line: 34, column: 5, scope: !86)
!86 = distinct !DILexicalBlock(scope: !9, file: !1, line: 33, column: 3)
!87 = !DILocation(line: 34, column: 12, scope: !86)
!88 = !DILocation(line: 35, column: 3, scope: !86)
!89 = !DILabel(scope: !9, name: "goodB2G_label_", file: !1, line: 37)
!90 = !DILocation(line: 37, column: 3, scope: !9)
!91 = !DILocation(line: 42, column: 1, scope: !9)
