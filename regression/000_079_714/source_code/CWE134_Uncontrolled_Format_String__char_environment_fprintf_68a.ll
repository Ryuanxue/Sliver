; ModuleID = 'CWE134_Uncontrolled_Format_String__char_environment_fprintf_68a.c'
source_filename = "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_badData = dso_local global i8* null, align 8, !dbg !0
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodG2BData = dso_local global i8* null, align 8, !dbg !8
@CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodB2GData = dso_local global i8* null, align 8, !dbg !12

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad() #0 !dbg !18 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !23, metadata !DIExpression()), !dbg !27
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !27
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !27
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !28
  store i8* %arraydecay, i8** %data, align 8, !dbg !29
  call void @llvm.dbg.declare(metadata i64* %dataLen, metadata !30, metadata !DIExpression()), !dbg !35
  %1 = load i8*, i8** %data, align 8, !dbg !36
  %call = call i64 @strlen(i8* %1) #6, !dbg !37
  store i64 %call, i64* %dataLen, align 8, !dbg !35
  call void @llvm.dbg.declare(metadata i8** %environment, metadata !38, metadata !DIExpression()), !dbg !39
  %call1 = call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #7, !dbg !40
  store i8* %call1, i8** %environment, align 8, !dbg !39
  %2 = load i8*, i8** %environment, align 8, !dbg !41
  %cmp = icmp ne i8* %2, null, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %data, align 8, !dbg !45
  %4 = load i64, i64* %dataLen, align 8, !dbg !47
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 %4, !dbg !48
  %5 = load i8*, i8** %environment, align 8, !dbg !49
  %6 = load i64, i64* %dataLen, align 8, !dbg !50
  %sub = sub i64 100, %6, !dbg !51
  %sub2 = sub i64 %sub, 1, !dbg !52
  %call3 = call i8* @strncat(i8* %add.ptr, i8* %5, i64 %sub2) #7, !dbg !53
  br label %if.end, !dbg !54

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %data, align 8, !dbg !55
  store i8* %7, i8** @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_badData, align 8, !dbg !56
  call void (...) @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_badSink(), !dbg !57
  ret void, !dbg !58
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

declare dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_badSink(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodG2B() #0 !dbg !59 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  call void @llvm.dbg.declare(metadata i8** %data, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata [100 x i8]* %dataBuffer, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = bitcast [100 x i8]* %dataBuffer to i8*, !dbg !63
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 100, i1 false), !dbg !63
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %dataBuffer, i64 0, i64 0, !dbg !64
  store i8* %arraydecay, i8** %data, align 8, !dbg !65
  %1 = load i8*, i8** %data, align 8, !dbg !66
  %call = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !67
  %2 = load i8*, i8** %data, align 8, !dbg !68
  store i8* %2, i8** @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodG2BData, align 8, !dbg !69
  call void (...) @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_goodG2BSink(), !dbg !70
  ret void, !dbg !71
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

declare dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_goodG2BSink(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goodB2G() #0 !dbg !72 {
entry:
  %data = alloca i8*, align 8
  %dataBuffer = alloca [100 x i8], align 16
  %dataLen = alloca i64, align 8
  %environment = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %data, metadata !73, metadata !DIExpression()), !dbg !74
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
  %7 = load i8*, i8** %data, align 8, !dbg !101
  store i8* %7, i8** @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodB2GData, align 8, !dbg !102
  call void (...) @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_goodB2GSink(), !dbg !103
  ret void, !dbg !104
}

declare dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68b_goodB2GSink(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_good() #0 !dbg !105 {
entry:
  call void @goodG2B(), !dbg !106
  call void @goodB2G(), !dbg !107
  ret void, !dbg !108
}

attributes #0 = { noinline nounwind optnone uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { nounwind readonly willreturn "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_badData", scope: !2, file: !3, line: 33, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 12.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68a.c", directory: "/home/raoxue/Desktop/MemVerif/workspace/000_079_714/source_code")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!0, !8, !12}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodG2BData", scope: !2, file: !3, line: 34, type: !10, isLocal: false, isDefinition: true)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_goodB2GData", scope: !2, file: !3, line: 35, type: !10, isLocal: false, isDefinition: true)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 12.0.0"}
!18 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_bad", scope: !3, file: !3, line: 41, type: !19, scopeLine: 42, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!19 = !DISubroutineType(types: !20)
!20 = !{null}
!21 = !DILocalVariable(name: "data", scope: !18, file: !3, line: 43, type: !10)
!22 = !DILocation(line: 43, column: 12, scope: !18)
!23 = !DILocalVariable(name: "dataBuffer", scope: !18, file: !3, line: 44, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 100)
!27 = !DILocation(line: 44, column: 10, scope: !18)
!28 = !DILocation(line: 45, column: 12, scope: !18)
!29 = !DILocation(line: 45, column: 10, scope: !18)
!30 = !DILocalVariable(name: "dataLen", scope: !31, file: !3, line: 48, type: !32)
!31 = distinct !DILexicalBlock(scope: !18, file: !3, line: 46, column: 5)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !33, line: 46, baseType: !34)
!33 = !DIFile(filename: "node_modules/llvm-12.0.0.obj/lib/clang/12.0.0/include/stddef.h", directory: "/home/raoxue")
!34 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!35 = !DILocation(line: 48, column: 16, scope: !31)
!36 = !DILocation(line: 48, column: 33, scope: !31)
!37 = !DILocation(line: 48, column: 26, scope: !31)
!38 = !DILocalVariable(name: "environment", scope: !31, file: !3, line: 49, type: !10)
!39 = !DILocation(line: 49, column: 16, scope: !31)
!40 = !DILocation(line: 49, column: 30, scope: !31)
!41 = !DILocation(line: 51, column: 13, scope: !42)
!42 = distinct !DILexicalBlock(scope: !31, file: !3, line: 51, column: 13)
!43 = !DILocation(line: 51, column: 25, scope: !42)
!44 = !DILocation(line: 51, column: 13, scope: !31)
!45 = !DILocation(line: 54, column: 21, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !3, line: 52, column: 9)
!47 = !DILocation(line: 54, column: 26, scope: !46)
!48 = !DILocation(line: 54, column: 25, scope: !46)
!49 = !DILocation(line: 54, column: 35, scope: !46)
!50 = !DILocation(line: 54, column: 52, scope: !46)
!51 = !DILocation(line: 54, column: 51, scope: !46)
!52 = !DILocation(line: 54, column: 59, scope: !46)
!53 = !DILocation(line: 54, column: 13, scope: !46)
!54 = !DILocation(line: 55, column: 9, scope: !46)
!55 = !DILocation(line: 57, column: 78, scope: !18)
!56 = !DILocation(line: 57, column: 76, scope: !18)
!57 = !DILocation(line: 58, column: 5, scope: !18)
!58 = !DILocation(line: 59, column: 1, scope: !18)
!59 = distinct !DISubprogram(name: "goodG2B", scope: !3, file: !3, line: 68, type: !19, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!60 = !DILocalVariable(name: "data", scope: !59, file: !3, line: 70, type: !10)
!61 = !DILocation(line: 70, column: 12, scope: !59)
!62 = !DILocalVariable(name: "dataBuffer", scope: !59, file: !3, line: 71, type: !24)
!63 = !DILocation(line: 71, column: 10, scope: !59)
!64 = !DILocation(line: 72, column: 12, scope: !59)
!65 = !DILocation(line: 72, column: 10, scope: !59)
!66 = !DILocation(line: 74, column: 12, scope: !59)
!67 = !DILocation(line: 74, column: 5, scope: !59)
!68 = !DILocation(line: 75, column: 82, scope: !59)
!69 = !DILocation(line: 75, column: 80, scope: !59)
!70 = !DILocation(line: 76, column: 5, scope: !59)
!71 = !DILocation(line: 77, column: 1, scope: !59)
!72 = distinct !DISubprogram(name: "goodB2G", scope: !3, file: !3, line: 80, type: !19, scopeLine: 81, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!73 = !DILocalVariable(name: "data", scope: !72, file: !3, line: 82, type: !10)
!74 = !DILocation(line: 82, column: 12, scope: !72)
!75 = !DILocalVariable(name: "dataBuffer", scope: !72, file: !3, line: 83, type: !24)
!76 = !DILocation(line: 83, column: 10, scope: !72)
!77 = !DILocation(line: 84, column: 12, scope: !72)
!78 = !DILocation(line: 84, column: 10, scope: !72)
!79 = !DILocalVariable(name: "dataLen", scope: !80, file: !3, line: 87, type: !32)
!80 = distinct !DILexicalBlock(scope: !72, file: !3, line: 85, column: 5)
!81 = !DILocation(line: 87, column: 16, scope: !80)
!82 = !DILocation(line: 87, column: 33, scope: !80)
!83 = !DILocation(line: 87, column: 26, scope: !80)
!84 = !DILocalVariable(name: "environment", scope: !80, file: !3, line: 88, type: !10)
!85 = !DILocation(line: 88, column: 16, scope: !80)
!86 = !DILocation(line: 88, column: 30, scope: !80)
!87 = !DILocation(line: 90, column: 13, scope: !88)
!88 = distinct !DILexicalBlock(scope: !80, file: !3, line: 90, column: 13)
!89 = !DILocation(line: 90, column: 25, scope: !88)
!90 = !DILocation(line: 90, column: 13, scope: !80)
!91 = !DILocation(line: 93, column: 21, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !3, line: 91, column: 9)
!93 = !DILocation(line: 93, column: 26, scope: !92)
!94 = !DILocation(line: 93, column: 25, scope: !92)
!95 = !DILocation(line: 93, column: 35, scope: !92)
!96 = !DILocation(line: 93, column: 52, scope: !92)
!97 = !DILocation(line: 93, column: 51, scope: !92)
!98 = !DILocation(line: 93, column: 59, scope: !92)
!99 = !DILocation(line: 93, column: 13, scope: !92)
!100 = !DILocation(line: 94, column: 9, scope: !92)
!101 = !DILocation(line: 96, column: 82, scope: !72)
!102 = !DILocation(line: 96, column: 80, scope: !72)
!103 = !DILocation(line: 97, column: 5, scope: !72)
!104 = !DILocation(line: 98, column: 1, scope: !72)
!105 = distinct !DISubprogram(name: "CWE134_Uncontrolled_Format_String__char_environment_fprintf_68_good", scope: !3, file: !3, line: 100, type: !19, scopeLine: 101, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!106 = !DILocation(line: 102, column: 5, scope: !105)
!107 = !DILocation(line: 103, column: 5, scope: !105)
!108 = !DILocation(line: 104, column: 1, scope: !105)
