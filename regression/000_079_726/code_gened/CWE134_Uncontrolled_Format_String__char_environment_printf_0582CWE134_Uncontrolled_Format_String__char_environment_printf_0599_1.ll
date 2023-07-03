; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_0582CWE134_Uncontrolled_Format_String__char_environment_printf_0599_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_0582CWE134_Uncontrolled_Format_String__char_environment_printf_0599_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@staticTrue = external dso_local global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@staticFalse = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_0582CWE134_Uncontrolled_Format_String__char_environment_printf_0599_1(i8* %_goodB2G1_environment_0, void (i8*)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G1_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G1_data_0 = alloca i8*, align 8
  %_goodB2G1_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G1_dataLen_0 = alloca i64, align 8
  store i8* %_goodB2G1_environment_0, i8** %_goodB2G1_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_environment_0.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i8** %_goodB2G1_data_0, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G1_dataBuffer_0, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %_goodB2G1_dataBuffer_0 to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G1_dataBuffer_0, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %_goodB2G1_data_0, align 8, !dbg !27
  %1 = load i32, i32* @staticTrue, align 4, !dbg !28
  %tobool = icmp ne i32 %1, 0, !dbg !28
  br i1 %tobool, label %if.then, label %if.end5, !dbg !30

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i64* %_goodB2G1_dataLen_0, metadata !31, metadata !DIExpression()), !dbg !37
  %2 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !38
  %call = call i64 @strlen(i8* %2) #6, !dbg !39
  store i64 %call, i64* %_goodB2G1_dataLen_0, align 8, !dbg !37
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !40
  store i8* %call1, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !41
  %3 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !42
  %cmp = icmp ne i8* %3, null, !dbg !44
  br i1 %cmp, label %if.then2, label %if.end, !dbg !45

if.then2:                                         ; preds = %if.then
  %4 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !46
  %5 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !48
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !49
  %6 = load i8*, i8** %_goodB2G1_environment_0.addr, align 8, !dbg !50
  %7 = load i64, i64* %_goodB2G1_dataLen_0, align 8, !dbg !51
  %sub = sub i64 100, %7, !dbg !52
  %sub3 = sub i64 %sub, 1, !dbg !53
  %call4 = call i8* @strncat(i8* %add.ptr, i8* %6, i64 %sub3) #7, !dbg !54
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end5, !dbg !56

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i32, i32* @staticFalse, align 4, !dbg !57
  %tobool6 = icmp ne i32 %8, 0, !dbg !57
  br i1 %tobool6, label %if.then7, label %if.else, !dbg !59

if.then7:                                         ; preds = %if.end5
  call void @printLine(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0)), !dbg !60
  br label %if.end8, !dbg !62

if.else:                                          ; preds = %if.end5
  %9 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !63
  %10 = load i8*, i8** %_goodB2G1_data_0, align 8, !dbg !65
  call void %9(i8* %10), !dbg !63
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  br label %goodB2G1_label_, !dbg !57

goodB2G1_label_:                                  ; preds = %if.end8
  call void @llvm.dbg.label(metadata !66), !dbg !67
  ret void, !dbg !68
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

declare dso_local void @printLine(i8*) #5

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_0582CWE134_Uncontrolled_Format_String__char_environment_printf_0599_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_726/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_0582CWE134_Uncontrolled_Format_String__char_environment_printf_0599_1", scope: !1, file: !1, line: 5, type: !8, scopeLine: 6, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !10}
!15 = !DILocalVariable(name: "_goodB2G1_environment_0", arg: 1, scope: !7, file: !1, line: 5, type: !10)
!16 = !DILocation(line: 5, column: 141, scope: !7)
!17 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 5, type: !12)
!18 = !DILocation(line: 5, column: 173, scope: !7)
!19 = !DILocalVariable(name: "_goodB2G1_data_0", scope: !7, file: !1, line: 7, type: !10)
!20 = !DILocation(line: 7, column: 9, scope: !7)
!21 = !DILocalVariable(name: "_goodB2G1_dataBuffer_0", scope: !7, file: !1, line: 8, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 8, column: 8, scope: !7)
!26 = !DILocation(line: 9, column: 22, scope: !7)
!27 = !DILocation(line: 9, column: 20, scope: !7)
!28 = !DILocation(line: 10, column: 7, scope: !29)
!29 = distinct !DILexicalBlock(scope: !7, file: !1, line: 10, column: 7)
!30 = !DILocation(line: 10, column: 7, scope: !7)
!31 = !DILocalVariable(name: "_goodB2G1_dataLen_0", scope: !32, file: !1, line: 13, type: !34)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 12, column: 5)
!33 = distinct !DILexicalBlock(scope: !29, file: !1, line: 11, column: 3)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !35, line: 46, baseType: !36)
!35 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!36 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!37 = !DILocation(line: 13, column: 14, scope: !32)
!38 = !DILocation(line: 13, column: 43, scope: !32)
!39 = !DILocation(line: 13, column: 36, scope: !32)
!40 = !DILocation(line: 14, column: 33, scope: !32)
!41 = !DILocation(line: 14, column: 31, scope: !32)
!42 = !DILocation(line: 15, column: 11, scope: !43)
!43 = distinct !DILexicalBlock(scope: !32, file: !1, line: 15, column: 11)
!44 = !DILocation(line: 15, column: 35, scope: !43)
!45 = !DILocation(line: 15, column: 11, scope: !32)
!46 = !DILocation(line: 17, column: 17, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 16, column: 7)
!48 = !DILocation(line: 17, column: 36, scope: !47)
!49 = !DILocation(line: 17, column: 34, scope: !47)
!50 = !DILocation(line: 17, column: 57, scope: !47)
!51 = !DILocation(line: 17, column: 89, scope: !47)
!52 = !DILocation(line: 17, column: 87, scope: !47)
!53 = !DILocation(line: 17, column: 110, scope: !47)
!54 = !DILocation(line: 17, column: 9, scope: !47)
!55 = !DILocation(line: 18, column: 7, scope: !47)
!56 = !DILocation(line: 21, column: 3, scope: !33)
!57 = !DILocation(line: 23, column: 7, scope: !58)
!58 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 7)
!59 = !DILocation(line: 23, column: 7, scope: !7)
!60 = !DILocation(line: 25, column: 5, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 24, column: 3)
!62 = !DILocation(line: 26, column: 3, scope: !61)
!63 = !DILocation(line: 29, column: 5, scope: !64)
!64 = distinct !DILexicalBlock(scope: !58, file: !1, line: 28, column: 3)
!65 = !DILocation(line: 29, column: 12, scope: !64)
!66 = !DILabel(scope: !7, name: "goodB2G1_label_", file: !1, line: 32)
!67 = !DILocation(line: 32, column: 3, scope: !7)
!68 = !DILocation(line: 37, column: 1, scope: !7)
