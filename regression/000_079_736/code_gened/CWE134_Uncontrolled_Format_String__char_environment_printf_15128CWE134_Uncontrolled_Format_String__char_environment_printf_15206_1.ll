; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_printf_15128CWE134_Uncontrolled_Format_String__char_environment_printf_15206_1.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_printf_15128CWE134_Uncontrolled_Format_String__char_environment_printf_15206_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_printf_15128CWE134_Uncontrolled_Format_String__char_environment_printf_15206_1(i8* %_goodB2G2_environment_0, void (i8*)* %opsink) #0 !dbg !7 {
entry:
  %_goodB2G2_environment_0.addr = alloca i8*, align 8
  %opsink.addr = alloca void (i8*)*, align 8
  %_goodB2G2_data_0 = alloca i8*, align 8
  %_goodB2G2_dataBuffer_0 = alloca [100 x i8], align 16
  %_goodB2G2_dataLen_0 = alloca i64, align 8
  %_goodG2B2_data_0 = alloca i8*, align 8
  %_goodG2B2_dataBuffer_0 = alloca [100 x i8], align 16
  store i8* %_goodB2G2_environment_0, i8** %_goodB2G2_environment_0.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_environment_0.addr, metadata !15, metadata !DIExpression()), !dbg !16
  store void (i8*)* %opsink, void (i8*)** %opsink.addr, align 8
  call void @llvm.dbg.declare(metadata void (i8*)** %opsink.addr, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i8** %_goodB2G2_data_0, metadata !19, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodB2G2_dataBuffer_0, metadata !22, metadata !DIExpression()), !dbg !26
  %0 = bitcast [100 x i8]* %_goodB2G2_dataBuffer_0 to i8*, !dbg !26
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !26
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %_goodB2G2_dataBuffer_0, i64 0, i64 0, !dbg !27
  store i8* %arraydecay, i8** %_goodB2G2_data_0, align 8, !dbg !28
  call void @llvm.dbg.declare(metadata i64* %_goodB2G2_dataLen_0, metadata !29, metadata !DIExpression()), !dbg !34
  %1 = load i8*, i8** %_goodB2G2_data_0, align 8, !dbg !35
  %call = call i64 @strlen(i8* %1) #6, !dbg !36
  store i64 %call, i64* %_goodB2G2_dataLen_0, align 8, !dbg !34
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !37
  store i8* %call1, i8** %_goodB2G2_environment_0.addr, align 8, !dbg !38
  %2 = load i8*, i8** %_goodB2G2_environment_0.addr, align 8, !dbg !39
  %cmp = icmp ne i8* %2, null, !dbg !41
  br i1 %cmp, label %if.then, label %if.end, !dbg !42

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %_goodB2G2_data_0, align 8, !dbg !43
  %4 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !45
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !46
  %5 = load i8*, i8** %_goodB2G2_environment_0.addr, align 8, !dbg !47
  %6 = load i64, i64* %_goodB2G2_dataLen_0, align 8, !dbg !48
  %sub = sub i64 100, %6, !dbg !49
  %sub2 = sub i64 %sub, 1, !dbg !50
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !51
  br label %if.end, !dbg !52

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %_goodB2G2_data_0, align 8, !dbg !53
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7), !dbg !54
  br label %goodB2G2_label_, !dbg !54

goodB2G2_label_:                                  ; preds = %if.end
  call void @llvm.dbg.label(metadata !55), !dbg !56
  call void (...) @goodG2B1(), !dbg !57
  call void @llvm.dbg.declare(metadata i8** %_goodG2B2_data_0, metadata !58, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [100 x i8]* %_goodG2B2_dataBuffer_0, metadata !61, metadata !DIExpression()), !dbg !62
  %8 = bitcast [100 x i8]* %_goodG2B2_dataBuffer_0 to i8*, !dbg !62
  call void @llvm.memset.p0i8.i64(i8* align 16 %8, i8 0, i64 100, i1 false), !dbg !62
  %arraydecay5 = getelementptr inbounds [100 x i8], [100 x i8]* %_goodG2B2_dataBuffer_0, i64 0, i64 0, !dbg !63
  store i8* %arraydecay5, i8** %_goodG2B2_data_0, align 8, !dbg !64
  %9 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !65
  %call6 = call i8* @strcpy(i8* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !66
  %10 = load void (i8*)*, void (i8*)** %opsink.addr, align 8, !dbg !67
  %11 = load i8*, i8** %_goodG2B2_data_0, align 8, !dbg !68
  call void %10(i8* %11), !dbg !67
  br label %goodG2B2_label_, !dbg !67

goodG2B2_label_:                                  ; preds = %goodB2G2_label_
  call void @llvm.dbg.label(metadata !69), !dbg !70
  br label %CWE134_Uncontrolled_Format_String__char_environment_printf_15_good_label_, !dbg !71

CWE134_Uncontrolled_Format_String__char_environment_printf_15_good_label_: ; preds = %goodG2B2_label_
  call void @llvm.dbg.label(metadata !72), !dbg !73
  ret void, !dbg !74
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

declare dso_local void @goodG2B1(...) #5

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
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_printf_15128CWE134_Uncontrolled_Format_String__char_environment_printf_15206_1.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_736/code_gened")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 12.0.0"}
!7 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_printf_15128CWE134_Uncontrolled_Format_String__char_environment_printf_15206_1", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10, !12}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !10}
!15 = !DILocalVariable(name: "_goodB2G2_environment_0", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!16 = !DILocation(line: 3, column: 143, scope: !7)
!17 = !DILocalVariable(name: "opsink", arg: 2, scope: !7, file: !1, line: 3, type: !12)
!18 = !DILocation(line: 3, column: 175, scope: !7)
!19 = !DILocalVariable(name: "_goodB2G2_data_0", scope: !20, file: !1, line: 6, type: !10)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 5, column: 3)
!21 = !DILocation(line: 6, column: 11, scope: !20)
!22 = !DILocalVariable(name: "_goodB2G2_dataBuffer_0", scope: !20, file: !1, line: 7, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 7, column: 10, scope: !20)
!27 = !DILocation(line: 8, column: 24, scope: !20)
!28 = !DILocation(line: 8, column: 22, scope: !20)
!29 = !DILocalVariable(name: "_goodB2G2_dataLen_0", scope: !30, file: !1, line: 13, type: !31)
!30 = distinct !DILexicalBlock(scope: !20, file: !1, line: 12, column: 7)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 13, column: 16, scope: !30)
!35 = !DILocation(line: 13, column: 45, scope: !30)
!36 = !DILocation(line: 13, column: 38, scope: !30)
!37 = !DILocation(line: 14, column: 35, scope: !30)
!38 = !DILocation(line: 14, column: 33, scope: !30)
!39 = !DILocation(line: 15, column: 13, scope: !40)
!40 = distinct !DILexicalBlock(scope: !30, file: !1, line: 15, column: 13)
!41 = !DILocation(line: 15, column: 37, scope: !40)
!42 = !DILocation(line: 15, column: 13, scope: !30)
!43 = !DILocation(line: 17, column: 19, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 16, column: 9)
!45 = !DILocation(line: 17, column: 38, scope: !44)
!46 = !DILocation(line: 17, column: 36, scope: !44)
!47 = !DILocation(line: 17, column: 59, scope: !44)
!48 = !DILocation(line: 17, column: 91, scope: !44)
!49 = !DILocation(line: 17, column: 89, scope: !44)
!50 = !DILocation(line: 17, column: 112, scope: !44)
!51 = !DILocation(line: 17, column: 11, scope: !44)
!52 = !DILocation(line: 18, column: 9, scope: !44)
!53 = !DILocation(line: 32, column: 24, scope: !20)
!54 = !DILocation(line: 32, column: 9, scope: !20)
!55 = !DILabel(scope: !20, name: "goodB2G2_label_", file: !1, line: 41)
!56 = !DILocation(line: 41, column: 5, scope: !20)
!57 = !DILocation(line: 47, column: 3, scope: !7)
!58 = !DILocalVariable(name: "_goodG2B2_data_0", scope: !59, file: !1, line: 49, type: !10)
!59 = distinct !DILexicalBlock(scope: !7, file: !1, line: 48, column: 3)
!60 = !DILocation(line: 49, column: 11, scope: !59)
!61 = !DILocalVariable(name: "_goodG2B2_dataBuffer_0", scope: !59, file: !1, line: 50, type: !23)
!62 = !DILocation(line: 50, column: 10, scope: !59)
!63 = !DILocation(line: 51, column: 24, scope: !59)
!64 = !DILocation(line: 51, column: 22, scope: !59)
!65 = !DILocation(line: 55, column: 16, scope: !59)
!66 = !DILocation(line: 55, column: 9, scope: !59)
!67 = !DILocation(line: 67, column: 9, scope: !59)
!68 = !DILocation(line: 67, column: 16, scope: !59)
!69 = !DILabel(scope: !59, name: "goodG2B2_label_", file: !1, line: 76)
!70 = !DILocation(line: 76, column: 5, scope: !59)
!71 = !DILocation(line: 81, column: 3, scope: !59)
!72 = !DILabel(scope: !7, name: "CWE134_Uncontrolled_Format_String__char_environment_printf_15_good_label_", file: !1, line: 82)
!73 = !DILocation(line: 82, column: 3, scope: !7)
!74 = !DILocation(line: 87, column: 1, scope: !7)
