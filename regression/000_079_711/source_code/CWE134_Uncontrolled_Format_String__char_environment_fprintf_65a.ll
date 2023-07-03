; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_fprintf_65a.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_fprintf_65a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65_bad() #0 !dbg !9 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !12, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !16, metadata !DIExpression()), !dbg !20
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_badSink, void (i8*)** %funcPtr, align 8, !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !21, metadata !DIExpression()), !dbg !25
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !25
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !25
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !26
  store i8* %arraydecay, i8** %data, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !28, metadata !DIExpression()), !dbg !33
  %1 = load i8*, i8** %data, align 8, !dbg !34
  %call = call i64 @strlen(i8* %1) #6, !dbg !35
  store i64 %call, i64* %dataLen, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !36, metadata !DIExpression()), !dbg !37
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !38
  store i8* %call1, i8** %environment, align 8, !dbg !37
  %2 = load i8*, i8** %environment, align 8, !dbg !39
  %cmp = icmp ne i8* %2, null, !dbg !41
  br i1 %cmp, label %if.then, label %if.end, !dbg !42

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !43
  %4 = load i64, i64* %dataLen, align 8, !dbg !45
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !46
  %5 = load i8*, i8** %environment, align 8, !dbg !47
  %6 = load i64, i64* %dataLen, align 8, !dbg !48
  %sub = sub i64 100, %6, !dbg !49
  %sub2 = sub i64 %sub, 1, !dbg !50
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !51
  br label %if.end, !dbg !52

if.end:                                           ; preds = %if.then, %entry
  %7 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !53
  %8 = load i8*, i8** %data, align 8, !dbg !54
  call void %7(i8* %8), !dbg !53
  ret void, !dbg !55
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_badSink(i8*) #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !56 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !59, metadata !DIExpression()), !dbg !60
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_goodG2BSink, void (i8*)** %funcPtr, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !61, metadata !DIExpression()), !dbg !62
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !62
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !62
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !63
  store i8* %arraydecay, i8** %data, align 8, !dbg !64
  %1 = load i8*, i8** %data, align 8, !dbg !65
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !66
  %2 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !67
  %3 = load i8*, i8** %data, align 8, !dbg !68
  call void %2(i8* %3), !dbg !67
  ret void, !dbg !69
}

declare dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_goodG2BSink(i8*) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !70 {
entry:
  %data = alloca i8*, align 8
  %funcPtr = alloca void (i8*)*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata void (i8*)** %funcPtr, metadata !73, metadata !DIExpression()), !dbg !74
  store void (i8*)* @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_goodB2GSink, void (i8*)** %funcPtr, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !75, metadata !DIExpression()), !dbg !76
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !76
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !76
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !77
  store i8* %arraydecay, i8** %data, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !79, metadata !DIExpression()), !dbg !81
  %1 = load i8*, i8** %data, align 8, !dbg !82
  %call = call i64 @strlen(i8* %1) #6, !dbg !83
  store i64 %call, i64* %dataLen, align 8, !dbg !81
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !84, metadata !DIExpression()), !dbg !85
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !86
  store i8* %call1, i8** %environment, align 8, !dbg !85
  %2 = load i8*, i8** %environment, align 8, !dbg !87
  %cmp = icmp ne i8* %2, null, !dbg !89
  br i1 %cmp, label %if.then, label %if.end, !dbg !90

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !91
  %4 = load i64, i64* %dataLen, align 8, !dbg !93
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !94
  %5 = load i8*, i8** %environment, align 8, !dbg !95
  %6 = load i64, i64* %dataLen, align 8, !dbg !96
  %sub = sub i64 100, %6, !dbg !97
  %sub2 = sub i64 %sub, 1, !dbg !98
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !99
  br label %if.end, !dbg !100

if.end:                                           ; preds = %if.then, %entry
  %7 = load void (i8*)*, void (i8*)** %funcPtr, align 8, !dbg !101
  %8 = load i8*, i8** %data, align 8, !dbg !102
  call void %7(i8* %8), !dbg !101
  ret void, !dbg !103
}

declare dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65b_goodB2GSink(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_65_good() #0 !dbg !104 {
entry:
  call void @goodG2B(), !dbg !105
  call void @goodB2G(), !dbg !106
  ret void, !dbg !107
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #4 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_65a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_711/source_code")
!2 = !{}
!3 = !{!4}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 12.0.0"}
!9 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_65_bad", scope: !1, file: !1, line: 37, type: !10, scopeLine: 38, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null}
!12 = !DILocalVariable(name: "data", scope: !9, file: !1, line: 39, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DILocation(line: 39, column: 12, scope: !9)
!16 = !DILocalVariable(name: "funcPtr", scope: !9, file: !1, line: 41, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !13}
!20 = !DILocation(line: 41, column: 12, scope: !9)
!21 = !DILocalVariable(name: "dataBuffer", scope: !9, file: !1, line: 42, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !DILocation(line: 42, column: 10, scope: !9)
!26 = !DILocation(line: 43, column: 12, scope: !9)
!27 = !DILocation(line: 43, column: 10, scope: !9)
!28 = !DILocalVariable(name: "dataLen", scope: !29, file: !1, line: 46, type: !30)
!29 = distinct !DILexicalBlock(scope: !9, file: !1, line: 44, column: 5)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 46, baseType: !32)
!31 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DILocation(line: 46, column: 16, scope: !29)
!34 = !DILocation(line: 46, column: 33, scope: !29)
!35 = !DILocation(line: 46, column: 26, scope: !29)
!36 = !DILocalVariable(name: "environment", scope: !29, file: !1, line: 47, type: !13)
!37 = !DILocation(line: 47, column: 16, scope: !29)
!38 = !DILocation(line: 47, column: 30, scope: !29)
!39 = !DILocation(line: 49, column: 13, scope: !40)
!40 = distinct !DILexicalBlock(scope: !29, file: !1, line: 49, column: 13)
!41 = !DILocation(line: 49, column: 25, scope: !40)
!42 = !DILocation(line: 49, column: 13, scope: !29)
!43 = !DILocation(line: 52, column: 21, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 50, column: 9)
!45 = !DILocation(line: 52, column: 26, scope: !44)
!46 = !DILocation(line: 52, column: 25, scope: !44)
!47 = !DILocation(line: 52, column: 35, scope: !44)
!48 = !DILocation(line: 52, column: 52, scope: !44)
!49 = !DILocation(line: 52, column: 51, scope: !44)
!50 = !DILocation(line: 52, column: 59, scope: !44)
!51 = !DILocation(line: 52, column: 13, scope: !44)
!52 = !DILocation(line: 53, column: 9, scope: !44)
!53 = !DILocation(line: 56, column: 5, scope: !9)
!54 = !DILocation(line: 56, column: 13, scope: !9)
!55 = !DILocation(line: 57, column: 1, scope: !9)
!56 = distinct !DISubprogram(name: "goodG2B", scope: !1, file: !1, line: 65, type: !10, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!57 = !DILocalVariable(name: "data", scope: !56, file: !1, line: 67, type: !13)
!58 = !DILocation(line: 67, column: 12, scope: !56)
!59 = !DILocalVariable(name: "funcPtr", scope: !56, file: !1, line: 68, type: !17)
!60 = !DILocation(line: 68, column: 12, scope: !56)
!61 = !DILocalVariable(name: "dataBuffer", scope: !56, file: !1, line: 69, type: !22)
!62 = !DILocation(line: 69, column: 10, scope: !56)
!63 = !DILocation(line: 70, column: 12, scope: !56)
!64 = !DILocation(line: 70, column: 10, scope: !56)
!65 = !DILocation(line: 72, column: 12, scope: !56)
!66 = !DILocation(line: 72, column: 5, scope: !56)
!67 = !DILocation(line: 73, column: 5, scope: !56)
!68 = !DILocation(line: 73, column: 13, scope: !56)
!69 = !DILocation(line: 74, column: 1, scope: !56)
!70 = distinct !DISubprogram(name: "goodB2G", scope: !1, file: !1, line: 78, type: !10, scopeLine: 79, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!71 = !DILocalVariable(name: "data", scope: !70, file: !1, line: 80, type: !13)
!72 = !DILocation(line: 80, column: 12, scope: !70)
!73 = !DILocalVariable(name: "funcPtr", scope: !70, file: !1, line: 81, type: !17)
!74 = !DILocation(line: 81, column: 12, scope: !70)
!75 = !DILocalVariable(name: "dataBuffer", scope: !70, file: !1, line: 82, type: !22)
!76 = !DILocation(line: 82, column: 10, scope: !70)
!77 = !DILocation(line: 83, column: 12, scope: !70)
!78 = !DILocation(line: 83, column: 10, scope: !70)
!79 = !DILocalVariable(name: "dataLen", scope: !80, file: !1, line: 86, type: !30)
!80 = distinct !DILexicalBlock(scope: !70, file: !1, line: 84, column: 5)
!81 = !DILocation(line: 86, column: 16, scope: !80)
!82 = !DILocation(line: 86, column: 33, scope: !80)
!83 = !DILocation(line: 86, column: 26, scope: !80)
!84 = !DILocalVariable(name: "environment", scope: !80, file: !1, line: 87, type: !13)
!85 = !DILocation(line: 87, column: 16, scope: !80)
!86 = !DILocation(line: 87, column: 30, scope: !80)
!87 = !DILocation(line: 89, column: 13, scope: !88)
!88 = distinct !DILexicalBlock(scope: !80, file: !1, line: 89, column: 13)
!89 = !DILocation(line: 89, column: 25, scope: !88)
!90 = !DILocation(line: 89, column: 13, scope: !80)
!91 = !DILocation(line: 92, column: 21, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 90, column: 9)
!93 = !DILocation(line: 92, column: 26, scope: !92)
!94 = !DILocation(line: 92, column: 25, scope: !92)
!95 = !DILocation(line: 92, column: 35, scope: !92)
!96 = !DILocation(line: 92, column: 52, scope: !92)
!97 = !DILocation(line: 92, column: 51, scope: !92)
!98 = !DILocation(line: 92, column: 59, scope: !92)
!99 = !DILocation(line: 92, column: 13, scope: !92)
!100 = !DILocation(line: 93, column: 9, scope: !92)
!101 = !DILocation(line: 95, column: 5, scope: !70)
!102 = !DILocation(line: 95, column: 13, scope: !70)
!103 = !DILocation(line: 96, column: 1, scope: !70)
!104 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_65_good", scope: !1, file: !1, line: 98, type: !10, scopeLine: 99, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!105 = !DILocation(line: 100, column: 5, scope: !104)
!106 = !DILocation(line: 101, column: 5, scope: !104)
!107 = !DILocation(line: 102, column: 1, scope: !104)
