; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_1874CWE134_Uncontrolled_Format_String__char_environment_printf_18101_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_1874CWE134_Uncontrolled_Format_String__char_environment_printf_18101_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_1874CWE134_Uncontrolled_Format_String__char_environment_printf_18101_1(i8* %_goodB2G_environment_0, void (i8*)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G_data_0 = alloca i8*, align 8
  %_goodB2G_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G_dataLen_0 = alloca i64, align 8
  %_goodG2B_data_0 = alloca i8*, align 8
  %_goodG2B_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_goodB2G_environment_0, i8** %_goodB2G_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_environment_0.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i8** %_goodB2G_data_0, metadata !19, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G_dataBuffer_0, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G_data_0, align 8, !dbg !28
  br label %goodB2G_source, !dbg !29

goodB2G_source:                                   ; preds = %entry
  call void @llvm.dbg.label(metadata !30), !dbg !31
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !32, metadata !DIExpression()), !dbg !37
  %1 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !38
  %call = call i64 @strlen(i8* %1) #6, !dbg !39
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !37
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !40
  store i8* %call1, i8** %_goodB2G_environment_0.addr, align 8, !dbg !41
  %2 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !42
  %cmp = icmp ne i8* %2, null, !dbg !44
  br i1 %cmp, label %if.then, label %if.end, !dbg !45

if.then:                                          ; preds = %goodB2G_source
  %3 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !46
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !49
  %5 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !50
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !51
  %sub = sub i64 100, %6, !dbg !52
  %sub2 = sub i64 %sub, 1, !dbg !53
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !54
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then, %goodB2G_source
  br label %goodB2G_sink, !dbg !56

goodB2G_sink:                                     ; preds = %if.end
  call void @llvm.dbg.label(metadata !57), !dbg !58
  %7 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !59
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7), !dbg !61
  br label %goodB2G_label_, !dbg !62

goodB2G_label_:                                   ; preds = %goodB2G_sink
  call void @llvm.dbg.label(metadata !63), !dbg !64
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !65, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !68, metadata !DIExpression()), !dbg !69
  %8 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !69
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 100, i1 false), !dbg !69
  %arraydecay5 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !70
  store i8* %arraydecay5, i8** %_goodG2B_data_0, align 8, !dbg !71
  br label %goodG2B_source, !dbg !72

goodG2B_source:                                   ; preds = %goodB2G_label_
  call void @llvm.dbg.label(metadata !73), !dbg !74
  %9 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !75
  %call6 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !77
  br label %goodG2B_sink, !dbg !78

goodG2B_sink:                                     ; preds = %goodG2B_source
  call void @llvm.dbg.label(metadata !79), !dbg !80
  %10 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !81
  %11 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !83
  call void %10(i8* %11), !dbg !81
  br label %goodG2B_label_, !dbg !84

goodG2B_label_:                                   ; preds = %goodG2B_sink
  call void @llvm.dbg.label(metadata !85), !dbg !86
  br label %CWE134_Uncontrolled_Format_String__char_environment_printf_18_good_label_, !dbg !87

CWE134_Uncontrolled_Format_String__char_environment_printf_18_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !88), !dbg !89
  ret void, !dbg !90
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_1874CWE134_Uncontrolled_Format_String__char_environment_printf_18101_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_739/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_1874CWE134_Uncontrolled_Format_String__char_environment_printf_18101_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !10}
!15 = !DILocalVariable(name: "_goodB2G_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!16 = !DILocation(line: 3, column: 142, scope: !7)
!17 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 173, scope: !7)
!19 = !DILocalVariable(name: "_goodB2G_data_0", scope: !20, file: !1, line: 6, type: !10)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!21 = !DILocation(line: 6, column: 11, scope: !20)
!22 = !DILocalVariable(name: "_goodB2G_dataBuffer_0", scope: !20, file: !1, line: 7, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 7, column: 10, scope: !20)
!27 = !DILocation(line: 8, column: 23, scope: !20)
!28 = !DILocation(line: 8, column: 21, scope: !20)
!29 = !DILocation(line: 9, column: 5, scope: !20)
!30 = !DILabel(scope: !20, name: "goodB2G_source", file: !1, line: 10)
!31 = !DILocation(line: 10, column: 5, scope: !20)
!32 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !33, file: !1, line: 12, type: !34)
!33 = distinct !DILexicalBlock(scope: !20, file: !1, line: 11, column: 5)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 12, column: 14, scope: !33)
!38 = !DILocation(line: 12, column: 42, scope: !33)
!39 = !DILocation(line: 12, column: 35, scope: !33)
!40 = !DILocation(line: 13, column: 32, scope: !33)
!41 = !DILocation(line: 13, column: 30, scope: !33)
!42 = !DILocation(line: 14, column: 11, scope: !43)
!43 = distinct !DILexicalBlock(scope: !33, file: !1, line: 14, column: 11)
!44 = !DILocation(line: 14, column: 34, scope: !43)
!45 = !DILocation(line: 14, column: 11, scope: !33)
!46 = !DILocation(line: 16, column: 17, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 15, column: 7)
!48 = !DILocation(line: 16, column: 35, scope: !47)
!49 = !DILocation(line: 16, column: 33, scope: !47)
!50 = !DILocation(line: 16, column: 55, scope: !47)
!51 = !DILocation(line: 16, column: 86, scope: !47)
!52 = !DILocation(line: 16, column: 84, scope: !47)
!53 = !DILocation(line: 16, column: 106, scope: !47)
!54 = !DILocation(line: 16, column: 9, scope: !47)
!55 = !DILocation(line: 17, column: 7, scope: !47)
!56 = !DILocation(line: 21, column: 5, scope: !20)
!57 = !DILabel(scope: !20, name: "goodB2G_sink", file: !1, line: 22)
!58 = !DILocation(line: 22, column: 5, scope: !20)
!59 = !DILocation(line: 24, column: 22, scope: !60)
!60 = distinct !DILexicalBlock(scope: !20, file: !1, line: 23, column: 5)
!61 = !DILocation(line: 24, column: 7, scope: !60)
!62 = !DILocation(line: 25, column: 5, scope: !60)
!63 = !DILabel(scope: !20, name: "goodB2G_label_", file: !1, line: 27)
!64 = !DILocation(line: 27, column: 5, scope: !20)
!65 = !DILocalVariable(name: "_goodG2B_data_0", scope: !66, file: !1, line: 34, type: !10)
!66 = distinct !DILexicalBlock(scope: !7, file: !1, line: 33, column: 3)
!67 = !DILocation(line: 34, column: 11, scope: !66)
!68 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !66, file: !1, line: 35, type: !23)
!69 = !DILocation(line: 35, column: 10, scope: !66)
!70 = !DILocation(line: 36, column: 23, scope: !66)
!71 = !DILocation(line: 36, column: 21, scope: !66)
!72 = !DILocation(line: 37, column: 5, scope: !66)
!73 = !DILabel(scope: !66, name: "goodG2B_source", file: !1, line: 38)
!74 = !DILocation(line: 38, column: 5, scope: !66)
!75 = !DILocation(line: 40, column: 14, scope: !76)
!76 = distinct !DILexicalBlock(scope: !66, file: !1, line: 39, column: 5)
!77 = !DILocation(line: 40, column: 7, scope: !76)
!78 = !DILocation(line: 43, column: 5, scope: !66)
!79 = !DILabel(scope: !66, name: "goodG2B_sink", file: !1, line: 44)
!80 = !DILocation(line: 44, column: 5, scope: !66)
!81 = !DILocation(line: 46, column: 7, scope: !82)
!82 = distinct !DILexicalBlock(scope: !66, file: !1, line: 45, column: 5)
!83 = !DILocation(line: 46, column: 14, scope: !82)
!84 = !DILocation(line: 47, column: 5, scope: !82)
!85 = !DILabel(scope: !66, name: "goodG2B_label_", file: !1, line: 49)
!86 = !DILocation(line: 49, column: 5, scope: !66)
!87 = !DILocation(line: 54, column: 3, scope: !66)
!88 = !DILabel(scope: !7, name: "CWE134_Uncontrolled_Format_String__char_environment_printf_18_good_label_", file: !1, line: 55)
!89 = !DILocation(line: 55, column: 3, scope: !7)
!90 = !DILocation(line: 60, column: 1, scope: !7)
