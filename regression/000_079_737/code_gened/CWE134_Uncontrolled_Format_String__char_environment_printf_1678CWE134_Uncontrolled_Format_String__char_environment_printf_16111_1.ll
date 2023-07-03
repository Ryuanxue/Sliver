; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_1678CWE134_Uncontrolled_Format_String__char_environment_printf_16111_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_1678CWE134_Uncontrolled_Format_String__char_environment_printf_16111_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_1678CWE134_Uncontrolled_Format_String__char_environment_printf_16111_1(i8* %_goodB2G_environment_0, void (i8*)* %opsink) #0 !dbg !7 {
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
  br label %while.body, !dbg !29

while.body:                                       ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G_dataLen_0, metadata !30, metadata !DIExpression()), !dbg !36
  %1 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !37
  %call = call i64 @strlen(i8* %1) #6, !dbg !38
  store i64 %call, i64* %_goodB2G_dataLen_0, align 8, !dbg !36
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !39
  store i8* %call1, i8** %_goodB2G_environment_0.addr, align 8, !dbg !40
  %2 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !41
  %cmp = icmp ne i8* %2, null, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %while.body
  %3 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !45
  %4 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !47
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !48
  %5 = load i8*, i8** %_goodB2G_environment_0.addr, align 8, !dbg !49
  %6 = load i64, i64* %_goodB2G_dataLen_0, align 8, !dbg !50
  %sub = sub i64 100, %6, !dbg !51
  %sub2 = sub i64 %sub, 1, !dbg !52
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !53
  br label %if.end, !dbg !54

if.end:                                           ; preds = %if.then, %while.body
  br label %while.end, !dbg !55

while.end:                                        ; preds = %if.end
  br label %while.body4, !dbg !56

while.body4:                                      ; preds = %while.end
  %7 = load i8*, i8** %_goodB2G_data_0, align 8, !dbg !57
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7), !dbg !59
  br label %while.end6, !dbg !60

while.end6:                                       ; preds = %while.body4
  br label %goodB2G_label_, !dbg !56

goodB2G_label_:                                   ; preds = %while.end6
  call void @llvm.dbg.label(metadata !61), !dbg !62
  call void @llvm.dbg.declare(metadata i8** %_goodG2B_data_0, metadata !63, metadata !DIExpression()), !dbg !65
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B_dataBuffer_0, metadata !66, metadata !DIExpression()), !dbg !67
  %8 = bitcast [100 x i8]* %_goodG2B_dataBuffer_0 to i8*, !dbg !67
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 100, i1 false), !dbg !67
  %arraydecay7 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B_dataBuffer_0, i64 0, i64 0, !dbg !68
  store i8* %arraydecay7, i8** %_goodG2B_data_0, align 8, !dbg !69
  br label %while.body8, !dbg !70

while.body8:                                      ; preds = %goodB2G_label_
  %9 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !71
  %call9 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !73
  br label %while.end10, !dbg !74

while.end10:                                      ; preds = %while.body8
  br label %while.body11, !dbg !75

while.body11:                                     ; preds = %while.end10
  %10 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !76
  %11 = load i8*, i8** %_goodG2B_data_0, align 8, !dbg !78
  call void %10(i8* %11), !dbg !76
  br label %while.end12, !dbg !79

while.end12:                                      ; preds = %while.body11
  br label %goodG2B_label_, !dbg !75

goodG2B_label_:                                   ; preds = %while.end12
  call void @llvm.dbg.label(metadata !80), !dbg !81
  br label %CWE134_Uncontrolled_Format_String__char_environment_printf_16_good_label_, !dbg !82

CWE134_Uncontrolled_Format_String__char_environment_printf_16_good_label_: ; preds = %goodG2B_label_
  call void @llvm.dbg.label(metadata !83), !dbg !84
  ret void, !dbg !85
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #4

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_1678CWE134_Uncontrolled_Format_String__char_environment_printf_16111_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_737/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_1678CWE134_Uncontrolled_Format_String__char_environment_printf_16111_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!30 = !DILocalVariable(name: "_goodB2G_dataLen_0", scope: !31, file: !1, line: 12, type: !33)
!31 = distinct !DILexicalBlock(scope: !32, file: !1, line: 11, column: 7)
!32 = distinct !DILexicalBlock(scope: !20, file: !1, line: 10, column: 5)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !34, line: 46, baseType: !35)
!34 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 12, column: 16, scope: !31)
!37 = !DILocation(line: 12, column: 44, scope: !31)
!38 = !DILocation(line: 12, column: 37, scope: !31)
!39 = !DILocation(line: 13, column: 34, scope: !31)
!40 = !DILocation(line: 13, column: 32, scope: !31)
!41 = !DILocation(line: 14, column: 13, scope: !42)
!42 = distinct !DILexicalBlock(scope: !31, file: !1, line: 14, column: 13)
!43 = !DILocation(line: 14, column: 36, scope: !42)
!44 = !DILocation(line: 14, column: 13, scope: !31)
!45 = !DILocation(line: 16, column: 19, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 15, column: 9)
!47 = !DILocation(line: 16, column: 37, scope: !46)
!48 = !DILocation(line: 16, column: 35, scope: !46)
!49 = !DILocation(line: 16, column: 57, scope: !46)
!50 = !DILocation(line: 16, column: 88, scope: !46)
!51 = !DILocation(line: 16, column: 86, scope: !46)
!52 = !DILocation(line: 16, column: 108, scope: !46)
!53 = !DILocation(line: 16, column: 11, scope: !46)
!54 = !DILocation(line: 17, column: 9, scope: !46)
!55 = !DILocation(line: 20, column: 7, scope: !32)
!56 = !DILocation(line: 23, column: 5, scope: !20)
!57 = !DILocation(line: 25, column: 22, scope: !58)
!58 = distinct !DILexicalBlock(scope: !20, file: !1, line: 24, column: 5)
!59 = !DILocation(line: 25, column: 7, scope: !58)
!60 = !DILocation(line: 26, column: 7, scope: !58)
!61 = !DILabel(scope: !20, name: "goodB2G_label_", file: !1, line: 29)
!62 = !DILocation(line: 29, column: 5, scope: !20)
!63 = !DILocalVariable(name: "_goodG2B_data_0", scope: !64, file: !1, line: 36, type: !10)
!64 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 3)
!65 = !DILocation(line: 36, column: 11, scope: !64)
!66 = !DILocalVariable(name: "_goodG2B_dataBuffer_0", scope: !64, file: !1, line: 37, type: !23)
!67 = !DILocation(line: 37, column: 10, scope: !64)
!68 = !DILocation(line: 38, column: 23, scope: !64)
!69 = !DILocation(line: 38, column: 21, scope: !64)
!70 = !DILocation(line: 39, column: 5, scope: !64)
!71 = !DILocation(line: 41, column: 14, scope: !72)
!72 = distinct !DILexicalBlock(scope: !64, file: !1, line: 40, column: 5)
!73 = !DILocation(line: 41, column: 7, scope: !72)
!74 = !DILocation(line: 42, column: 7, scope: !72)
!75 = !DILocation(line: 45, column: 5, scope: !64)
!76 = !DILocation(line: 47, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !64, file: !1, line: 46, column: 5)
!78 = !DILocation(line: 47, column: 14, scope: !77)
!79 = !DILocation(line: 48, column: 7, scope: !77)
!80 = !DILabel(scope: !64, name: "goodG2B_label_", file: !1, line: 51)
!81 = !DILocation(line: 51, column: 5, scope: !64)
!82 = !DILocation(line: 56, column: 3, scope: !64)
!83 = !DILabel(scope: !7, name: "CWE134_Uncontrolled_Format_String__char_environment_printf_16_good_label_", file: !1, line: 57)
!84 = !DILocation(line: 57, column: 3, scope: !7)
!85 = !DILocation(line: 62, column: 1, scope: !7)
